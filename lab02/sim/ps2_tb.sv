`timescale 1ns / 1ps
`default_nettype none

module ps2_tb;

  //make logics for inputs and outputs!
  logic clk_in;
  logic rst_in;
  logic ps_data_in;
  logic ps_clk_in;
  logic [7:0] code_out;
  logic code_valid_out;

  logic [10:0] frame = 11'b01011001011;
  ps2_decoder uut(.clk_in(clk_in),
                  .rst_in(rst_in),
                  .ps_data_in(ps_data_in),
                  .ps_clk_in(ps_clk_in),
                  .code_out(code_out),
                  .code_valid_out(code_valid_out)
                );
  always begin
    #5;  //every 5 ns switch...so period of clock is 10 ns...100 MHz clock
    clk_in = !clk_in;
  end

  //initial block...this is our test simulation
  initial begin
    $dumpfile("ps2.vcd"); //file to store value change dump (vcd)
    $dumpvars(0,ps2_tb); //store everything at the current level and below
    $display("Starting Sim"); //print nice message
    clk_in = 0;
    rst_in = 0;
    ps_data_in =1;
    ps_clk_in = 1;
    #20  //wait
    rst_in = 1;
    #20; //hold
    rst_in=0;
    #20;
    $display("PROGRESS");
    for(int i=0; i<11; i=i+1)begin
      ps_clk_in = 1;
      ps_data_in = frame[10-i];
      #100;
      ps_clk_in = 0;
      #100;
      $display("%b", code_out);
    end
    $display("RESULT");
    $display("%h", code_out);
    #600
    $display("PROGRESS");
    for(int i=0; i<11; i=i+1)begin
      ps_clk_in = 1;
      ps_data_in = frame[10-i];
      #100;
      ps_clk_in = 0;
      #100;
      $display("%b", code_out);
    end
    $display("RESULT");
    $display("%h", code_out);
    $finish;

  end
endmodule //counter_tb

`default_nettype wire
