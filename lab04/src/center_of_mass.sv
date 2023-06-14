`timescale 1ns / 1ps
`default_nettype none

module center_of_mass (
                         input wire clk_in,
                         input wire rst_in,
                         input wire [10:0] x_in,
                         input wire [9:0]  y_in,
                         input wire valid_in,
                         input wire tabulate_in,
                         output logic [10:0] x_out,
                         output logic [9:0] y_out,
                         output logic valid_out);

  //your design here!

  assign x_out = 11'b0; //REMOVE ME
  assign y_out = 10'b0; //REMOVE ME
  assign valid_out = 1'b0; //REMOVE ME

endmodule

`default_nettype wire
