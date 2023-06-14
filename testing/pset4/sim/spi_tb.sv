`timescale 1ns / 1ps
`default_nettype none

//tests the big_padder

module spi_tb();
  logic clk_in, rst_in;
  logic [15:0] msg_in;
  logic trigger_in;
  logic data_out, sel_out, clk_out;

  spi_gen #(.MESSAGE_WIDTH(16), .BIT_DUR(3)) uut
                  ( .clk_in(clk_in), .rst_in(rst_in),
                    .msg_in(msg_in),
                    .trigger_in(trigger_in),
                    .data_out(data_out),
                    .clk_out(clk_out),
                    .sel_out(sel_out));

  always begin
      #5;  //every 5 ns switch...so period of clock is 10 ns...100 MHz clock
      clk_in = !clk_in;
  end
  //initial block...this is our test simulation
  initial begin
    $dumpfile("spi.vcd"); //file to store value change dump (vcd)
    $dumpvars(0,spi_tb);
    $display("Starting Sim"); //print nice message at start
    clk_in = 0;
    rst_in = 0;
    trigger_in = 0;
    msg_in = 16'hBEEF; //16 long message, 2-wide bit duration
    #10;
    rst_in = 1;
    #10;
    rst_in = 0;
    #50;
    trigger_in = 1;
    #10;
    trigger_in = 0;
    $display("msg_in = %16b ",msg_in);
    $display("trig sel data clk");
    for(int i=0; i<300; i=i+1)begin
      $display("%b    %b   %b    %b",trigger_in, data_out, sel_out, clk_out);
      #10;
    end
    $display("Finishing Sim"); //print nice message at end
    $finish;
  end
endmodule
`default_nettype wire
