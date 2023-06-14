`timescale 1ns / 1ps
`default_nettype none

module top_level( input wire clk_100mhz,
                  input wire btnd,btnc,
                  input wire ps2_clk,
                  input wire ps2_data,
                  output logic [15:0] led,
                  output logic ca, cb, cc, cd, ce, cf, cg,
                  output logic [7:0] an
                );

  /* have btnd control system reset */
  logic sys_rst;
  assign sys_rst = btnd;

  /* how many button presses have we seen so far?
   * wire this up to the LED display
   */
  logic [15:0] btn_count;
  assign led = btn_count;

  /* this should go high for one cycle on the
   * rising edge of the (debounced) button output
   */
  logic btn_pulse;

  /* debouncer for the button. we wrote this
   * in lecture together.
   * TODO: make a variable for the debounced
   * button output, and feed it into your edge
   * detector
   */
  logic level_in;

  debouncer btnc_db(.clk_in(clk_100mhz),
                  .rst_in(sys_rst),
                  .dirty_in(btnc),
                  .clean_out(level_in));

  /* TODO: write your edge detector for part 1 of the
   * lab here!
   */
  logic old_lv;
  always_ff @(posedge clk_100mhz) begin
	 if (sys_rst) begin
		old_lv <= 0;
	 end else begin
		if (level_in && level_in != old_lv) begin
			btn_pulse <= 1;
			old_lv <= 1;
		end else if (!level_in && level_in != old_lv) begin
			old_lv <= 0;
		end else begin
			btn_pulse <= 0;
		end
	 end
  end

  /* the button-press counter.
   * TODO: finish this during part 1 of the lab
   */
  simple_counter msc( .clk_in(clk_100mhz),
                      .rst_in(sys_rst),
                      .evt_in(btn_pulse),
                      .count_out(btn_count));

  /* TODO: you'll finish this in part 2 of the lab. this will
   * render the button count and the four PS/2 buffer
   * values in parts 2 and 3 respectively
   */

  /* For part 1 of the lab, you won't use this yet! So leave
   * this commented out unless you want errors hehe
   */

   seven_segment_controller mssc(.clk_in(clk_100mhz),
                                 .rst_in(sys_rst),
                                 .val_in({ps2_buffer[3], ps2_buffer[2], ps2_buffer[1], ps2_buffer[0]}),
                                 //.val_in(btn_count),
                                 .cat_out({cg, cf, ce, cd, cc, cb, ca}),
                                 .an_out(an));
 

  /* Delete this once you're done with part 2 of the lab */
  //assign {cg, cf, ce, cd, cc, cb, ca} = 8'b0;
  //assign an = 8'b1111_1111;

  /* pull inputs from the ~15KHz PS/2 domain
   * our FPGA's 100 MHz clock domain. this code
   * acts as a 'synchronizer' - we will talk more
   * about this later. for now, don't change it
   */
  logic [1:0] ps2b_c;
  logic [1:0] ps2b_d;

  always_ff @(posedge clk_100mhz)begin
    ps2b_c[0] <= ps2_clk;
    ps2b_d[0] <= ps2_data;
    ps2b_c[1] <= ps2b_c[0];
    ps2b_d[1] <= ps2b_d[0];
  end

  /* TODO: you will write this in
   * part 3 of the lab from scratch@
   */
  logic [7:0] ps2_buffer [3:0];
  logic [7:0] ps2_code;
  logic ps2_valid;

  always_ff @(posedge clk_100mhz) begin
	  if (sys_rst) begin
		  ps2_buffer <= {8'b0, 8'b0, 8'b0, 8'b0};
	  end else begin
		  if (ps2_valid) begin
			  ps2_buffer = {ps2_buffer[2], ps2_buffer[1], ps2_buffer[0], ps2_code};
		  end
	  end
  end

  /* Leave this commented out until you get to part 3
   * unless you would like to see more errors...
   */

   ps2_decoder mpd (.clk_in(clk_100mhz),.rst_in(sys_rst),
                  .ps_data_in(ps2b_d[1]),
                  .ps_clk_in(ps2b_c[1]),
                  .code_out(ps2_code),
                  .code_valid_out(ps2_valid));

endmodule

`default_nettype none
