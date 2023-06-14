`timescale 1ns / 1ps
`default_nettype none

module scale(
  input wire [1:0] scale_in,
  input wire [10:0] hcount_in,
  input wire [9:0] vcount_in,
  input wire [15:0] frame_buff_in,
  output logic [15:0] cam_out
);
  //YOUR DESIGN HERE!
  assign cam_out = 16'b0; //REMOVE ME!

  // always_comb begin 
  //   case scale_in:
  //     2'b00: ;
  //     2'b01: ;
  //     2'b10: ;
  //     default: 
  //   endcase 
  // end
endmodule


`default_nettype wire
