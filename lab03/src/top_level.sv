`timescale 1ns / 1ps
`default_nettype none

module top_level(
  input wire clk_100mhz,
  input wire [15:0] sw,
  input wire btnc, btnu, btnl, btnr, btnd,

  output logic [15:0] led,

  output logic [3:0] vga_r, vga_g, vga_b,
  output logic vga_hs, vga_vs
  );

  assign led = sw;

  /* Up and Down buttons for the paddle */
  logic up, down;
  debouncer db2(
    .rst_in(btnc),
    .clk_in(clk_65mhz),
    .dirty_in(btnu),
    .clean_out(up));

  debouncer db3(
    .rst_in(btnc),
    .clk_in(clk_65mhz),
    .dirty_in(btnd),
    .clean_out(down));


  /* Video Pipeline */
  logic clk_65mhz;

  clk_wiz_lab3 clk_gen(
    .clk_in1(clk_100mhz),
    .clk_out1(clk_65mhz));

  logic [10:0] hcount;    // pixel on current line
  logic [9:0] vcount;     // line number
  logic hsync, vsync, blank; //control signals for vga

  vga vga_gen(
    .pixel_clk_in(clk_65mhz),
    .hcount_out(hcount),
    .vcount_out(vcount),
    .hsync_out(hsync),
    .vsync_out(vsync),
    .blank_out(blank));

  logic [11:0] pong_color;

  pong_game pg(
    .pixel_clk_in(clk_65mhz),
    .rst_in(btnc),
    .up_in(up),
    .down_in(down),
    .pspeed_in(sw[15:12]),
    .hcount_in(hcount),
    .vcount_in(vcount),
    .alpha_in(sw[11:9]),
    .image_set_in(sw[8]),
    .pixel_out(pong_color));

  logic [11:0] color;

  vga_mux vgam(
    .sel_in(sw[1:0]),
    .hcount_in(hcount),
    .vcount_in(vcount),
    .pong_color_in(pong_color),
    .color_out(color)
  );

  // the following lines are required for the Nexys4 VGA circuit - do not change
  assign vga_r = ~blank ? color[11:8]: 0;
  assign vga_g = ~blank ? color[7:4] : 0;
  assign vga_b = ~blank ? color[3:0] : 0;

  assign vga_hs = ~hsync;
  assign vga_vs = ~vsync;
endmodule

`default_nettype wire
