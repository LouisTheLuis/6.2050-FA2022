// prevents system from inferring an undeclared logic (good practice)
`default_nettype none

module top_level(
        input wire [15:0]     sw,
        input wire            btnl,
        input wire            btnu,
        input wire            btnr,

        output logic[15:0]    led,
        output logic          led17_r,
        output logic          led16_b,
        output logic [7:0]    an,
        output logic          ca,cb,cc,cd,ce,cf,cg);

  //logic [6:0] cat_segs;

  // instantiate a bto7s module called 'converter'
  //bto7s converter(.x_in(sw[3:0]), .s_out(cat_segs));
  alu changes(.d0_in(sw[7:0]), .d1_in(sw[15:8]), .sel_in({btnl, btnu, btnr}));

  // a typo...keep this here for moment
  //assign {cg,cf,ce,cd,cc,cb,ca} = ~cat_segs;
  assign an = 8'b11111111;

  /* we'll use the LEDs later...for now, just link them to the switches
   * and force some lights on
   */
  
  assign led = changes.res_out;
  assign led17_r = changes.gt_out;
  assign led16_b = changes.eq_out;

endmodule // top_level
/* I usually add a comment to associate my endmodule line with the module name
 * this helps when if you have multiple module definitions in a file
 */

// reset the default net type to wire, sometimes other code expects this.
`default_nettype wire
