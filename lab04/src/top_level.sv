`timescale 1ns / 1ps
`default_nettype none

module top_level(
  input wire clk_100mhz, //clock @ 100 mhz
  input wire [15:0] sw, //switches
  input wire btnc, //btnc (used for reset)

  input wire [7:0] ja, //lower 8 bits of data from camera
  input wire [2:0] jb, //upper three bits from camera (return clock, vsync, hsync)
  output logic jbclk,  //signal we provide to camera
  output logic jblock, //signal for resetting camera

  output logic [15:0] led, //just here for the funs

  output logic [3:0] vga_r, vga_g, vga_b,
  output logic vga_hs, vga_vs,
  output logic [7:0] an,
  output logic caa,cab,cac,cad,cae,caf,cag

  );

  //system reset switch linking
  logic sys_rst; //global system reset
  assign sys_rst = btnc; //just done to make sys_rst more obvious
  assign led = sw; //switches drive LED (change if you want)

  /* Video Pipeline */
  logic clk_65mhz; //65 MHz clock line

  //vga module generation signals:
  logic [10:0] hcount;    // pixel on current line
  logic [9:0] vcount;     // line number
  logic hsync, vsync, blank; //control signals for vga
  logic hsync_t, vsync_t, blank_t; //control signals out of transform


  //camera module: (see datasheet)
  logic cam_clk_buff, cam_clk_in; //returning camera clock
  logic vsync_buff, vsync_in; //vsync signals from camera
  logic href_buff, href_in; //href signals from camera
  logic [7:0] pixel_buff, pixel_in; //pixel lines from camera
  logic [15:0] cam_pixel; //16 bit 565 RGB image from camera
  logic valid_pixel; //indicates valid pixel from camera
  logic frame_done; //indicates completion of frame from camera

  //rotate module:
  logic valid_pixel_rotate;  //indicates valid rotated pixel
  logic [15:0] pixel_rotate; //rotated 565 rotate pixel
  logic [16:0] pixel_addr_in; //address of rotated pixel in 240X320 memory

  //values  of frame buffer:
  logic [16:0] pixel_addr_out; //
  logic [15:0] frame_buff; //output of scale module

  // output of scale module
  logic [15:0] full_pixel;//mirrored and scaled 565 pixel

  //output of rgb to ycrcb conversion:
  logic [9:0] y, cr, cb; //ycrcb conversion of full pixel

  //output of threshold module:
  logic mask; //Whether or not thresholded pixel is 1 or 0
  logic [3:0] sel_channel; //selected channels four bit information intensity
  //sel_channel could contain any of the six color channels depend on selection

  //Center of Mass variables
  logic [10:0] x_com, x_com_calc; //long term x_com and output from module, resp
  logic [9:0] y_com, y_com_calc; //long term y_com and output from module, resp
  logic new_com; //used to know when to update x_com and y_com ...
  //using x_com_calc and y_com_calc values

  //output of image sprite
  //Output of sprite that should be centered on Center of Mass (x_com, y_com):
  logic [11:0] com_sprite_pixel;

  //Crosshair value hot when hcount,vcount== (x_com, y_com)
  logic crosshair;

  //vga_mux output:
  logic [11:0] mux_pixel; //final 12 bit information from vga multiplexer
  //goes right into RGB of output for video render

  //Generate 65 MHz:
  clk_wiz_lab3 clk_gen(
    .clk_in1(clk_100mhz),
    .clk_out1(clk_65mhz)); //after frame buffer everything on clk_65mhz

  //Generate VGA timing signals:
  vga vga_gen(
    .pixel_clk_in(clk_65mhz),
    .hcount_out(hcount),
    .vcount_out(vcount),
    .hsync_out(hsync),
    .vsync_out(vsync),
    .blank_out(blank));


  //Clock domain crossing to synchronize the camera's clock
  //to be back on the 65MHz system clock, delayed by a clock cycle.
  always_ff @(posedge clk_65mhz) begin
    cam_clk_buff <= jb[0]; //sync camera
    cam_clk_in <= cam_clk_buff;
    vsync_buff <= jb[1]; //sync vsync signal
    vsync_in <= vsync_buff;
    href_buff <= jb[2]; //sync href signal
    href_in <= href_buff;
    pixel_buff <= ja; //sync pixels
    pixel_in <= pixel_buff;
  end

  //Controls and Processes Camera information
  camera camera_m(
    //signal generate to camera:
    .clk_65mhz(clk_65mhz),
    .jbclk(jbclk),
    .jblock(jblock),
    //returned information from camera:
    .cam_clk_in(cam_clk_in),
    .vsync_in(vsync_in),
    .href_in(href_in),
    .pixel_in(pixel_in),
    //output framed info from camera for processing:
    .pixel_out(cam_pixel),
    .pixel_valid_out(valid_pixel),
    .frame_done_out(frame_done));

  //Rotates Image to render correctly (pi/2 CCW rotate):
  rotate rotate_m (
    .cam_clk_in(cam_clk_in),
    .valid_pixel_in(valid_pixel),
    .pixel_in(cam_pixel),
    .valid_pixel_out(valid_pixel_rotate),
    .pixel_out(pixel_rotate),
    .frame_done_in(frame_done),
    .pixel_addr_in(pixel_addr_in));

  //Two Clock Frame Buffer:
  //Data written on 16.67 MHz (From camera)
  //Data read on 65 MHz (start of video pipeline information)
  //Latency is 2 cycles.
  xilinx_true_dual_port_read_first_2_clock_ram #(
    .RAM_WIDTH(16),
    .RAM_DEPTH(320*240))
    frame_buffer (
    //Write Side (16.67MHz)
    .addra(pixel_addr_in),
    .clka(cam_clk_in),
    .wea(valid_pixel_rotate),
    .dina(pixel_rotate),
    .ena(1'b1),
    .regcea(1'b1),
    .rsta(sys_rst),
    .douta(),
    //Read Side (65 MHz)
    .addrb(pixel_addr_out),
    .dinb(16'b0),
    .clkb(clk_65mhz),
    .web(1'b0),
    .enb(1'b1),
    .rstb(sys_rst),
    .regceb(1'b1),
    .doutb(frame_buff)
  );

  //Based on current hcount and vcount as well as
  //scaling and mirror information requests correct pixel
  //from BRAM (on 65 MHz side).
  //latency: 2 cycles
  //IMPORTANT: this module is "start" of Output pipeline
  //hcount and vcount are fine here.
  //however latency in the image information starts to build up starting here
  //and we need to make sure to continue to use screen location information
  //that is "delayed" the right amount of cycles!
  //AS A RESULT, most downstream modules after this will need to use appropriately
  //pipelined versions of hcount, vcount, hsync, vsync, blank as needed
  //these The pipelining of these stages will need to be determined
  //for CHECKOFF 3!
  mirror mirror_m(
    .clk_in(clk_65mhz),
    .mirror_in(sw[2]),
    .scale_in(sw[1:0]),
    .hcount_in(hcount), //
    .vcount_in(vcount),
    .pixel_addr_out(pixel_addr_out)
  );

  //Based on hcount and vcount as well as scaling
  //gate the release of frame buffer information
  //Latency: 0
  scale scale_m(
    .scale_in(sw[1:0]),
    .hcount_in(hcount), //TODO: needs to use pipelined signal (PS2)
    .vcount_in(vcount), //TODO: needs to use pipelined signal (PS2)
    .frame_buff_in(frame_buff),
    .cam_out(full_pixel)
    );

  //Convert RGB of full pixel to YCrCb
  //See lecture 04 for YCrCb discussion.
  //Module has a 3 cycle latency
  rgb_to_ycrcb rgbtoycrcb_m(
    .clk_in(clk_65mhz),
    .r_in({full_pixel[15:11], 5'b0}), //all five of red
    .g_in({full_pixel[10:5],4'b0}), //all six of green
    .b_in({full_pixel[4:0], 5'b0}), //all five of blue
    .y_out(y),
    .cr_out(cr),
    .cb_out(cb));

  //LED Display controller
  //module not in video pipeline, provides diagnostic information
  //about high/low mask state as well as what channel is selected:
  //: "r:red, g:green, b:blue, y: luminance, Cr: Red Chrom, Cb: Blue Chrom
  lab04_ssc mssc(.clk_in(clk_65mhz),
                 .rst_in(btnc),
                 .val_in({sw[15:10],sw[5:3]}),
                 .cat_out({cag, caf, cae, cad, cac, cab, caa}),
                 .an_out(an));

  //Thresholder: Takes in the full RGB and YCrCb information and
  //based on upper and lower bounds masks
  //module has 0 cycle latency
  threshold( .sel_in(sw[5:3]),
     .r_in(full_pixel[15:12]), //TODO: needs to use pipelined signal (PS5)
     .g_in(full_pixel[10:7]),  //TODO: needs to use pipelined signal (PS5)
     .b_in(full_pixel[4:1]),   //TODO: needs to use pipelined signal (PS5)
     .y_in(y[9:6]),
     .cr_in(cr[9:6]),
     .cb_in(cb[9:6]),
     .lower_bound_in(sw[12:10]),
     .upper_bound_in(sw[15:13]),
     .mask_out(mask),
     .channel_out(sel_channel)
     );

  //Center of Mass:
  center_of_mass com_m(
    .clk_in(clk_65mhz),
    .rst_in(sys_rst),
    .x_in(hcount),  //TODO: needs to use pipelined signal! (PS3)
    .y_in(vcount), //TODO: needs to use pipelined signal! (PS3)
    .valid_in(mask),
    .tabulate_in((hcount==0 && vcount==0)),
    .x_out(x_com_calc),
    .y_out(y_com_calc),
    .valid_out(new_com));

  //update center of mass x_com, y_com based on new_com signal
  always_ff @(posedge clk_65mhz)begin
    if (sys_rst)begin
      x_com <= 0;
      y_com <= 0;
    end if(new_com)begin
      x_com <= x_com_calc;
      y_com <= y_com_calc;
    end
  end

  //Image Sprite (your implementation from Lab03):
  //Latency 4 cycle
  image_sprite #(
    .WIDTH(256),
    .HEIGHT(256))
    com_sprite_m (
    .pixel_clk_in(clk_65mhz),
    .rst_in(sys_rst),
    .hcount_in(hcount),   //TODO: needs to use pipelined signal (PS1)
    .vcount_in(vcount),   //TODO: needs to use pipelined signal (PS1)
    .x_in(x_com>128 ? x_com-128 : 0),
    .y_in(y_com>128 ? y_com-128 : 0),
    .pixel_out(com_sprite_pixel));

  //Create Crosshair patter on center of mass:
  //0 cycle latency
  assign crosshair = ((vcount==y_com)||(hcount==x_com));;

  //VGA MUX:
  //latency 0 cycles (combinational-only module)
  //module decides what to draw on the screen:
  // sw[7:6]:
  //    00: 444 RGB image
  //    01: GrayScale of Selected Channel (Y, R, etc...)
  //    10: Masked Version of Selected Channel
  //    11: Chroma Image with Mask in 6.205 Pink
  // sw[9:8]:
  //    00: Nothing
  //    01: green crosshair on center of mass
  //    10: image sprite on top of center of mass
  //    11: all pink screen (for VGA functionality testing)
  vga_mux (.sel_in(sw[9:6]),
  .camera_pixel_in({full_pixel[15:12],full_pixel[10:7],full_pixel[4:1]}), //TODO: needs to use pipelined signal(PS5)
  .camera_y_in(y[9:6]),
  .channel_in(sel_channel),
  .thresholded_pixel_in(mask),
  .crosshair_in(crosshair), //TODO: needs to use pipelined signal (PS4)
  .com_sprite_pixel_in(com_sprite_pixel),
  .pixel_out(mux_pixel)
  );

  //blankig logic.
  //latency 1 cycle
  always_ff @(posedge clk_65mhz)begin
    vga_r <= ~blank?mux_pixel[11:8]:0; //TODO: needs to use pipelined signal (PS6)
    vga_g <= ~blank?mux_pixel[7:4]:0;  //TODO: needs to use pipelined signal (PS6)
    vga_b <= ~blank?mux_pixel[3:0]:0;  //TODO: needs to use pipelined signal (PS6)
  end

  assign vga_hs = ~hsync;  //TODO: needs to use pipelined signal (PS7)
  assign vga_vs = ~vsync;  //TODO: needs to use pipelined signal (PS7)

endmodule




`default_nettype wire
