`timescale 1ns / 1ps
`default_nettype none

module lfsr_4_tb;

  //make logics for inputs and outputs!
  logic clk_in;
  logic rst_in;
  logic [3:0] seed_in;
  logic [3:0] q_out;

  lfsr_4 uut (.clk_in(clk_in),
            .rst_in(rst_in),
            .seed_in(seed_in),
            .q_out(q_out));

  always begin
    #5;  //every 5 ns switch...so period of clock is 10 ns...100 MHz clock
    clk_in = !clk_in;
  end

  //initial block...this is our test simulation
  initial begin
    $dumpfile("lfsr_4.vcd"); //file to store value change dump (vcd)
    $dumpvars(0,lfsr_4_tb); //store everything at the current level and below
    $display("Starting Sim"); //print nice message
    clk_in = 0; //initialize clk (super important)
    rst_in = 0; //initialize rst (super important)
    seed_in = 4'b0101;
    #10  //wait a little bit of time at beginning
    rst_in = 1; //reset system
    #10; //hold high for a few clock cycles
    rst_in=0;
    for (int i = 0; i<30; i= i+1)begin
      $display("%4b",q_out);
      #10;
    end
    $finish;

  end
endmodule //counter_tb

`default_nettype wire
