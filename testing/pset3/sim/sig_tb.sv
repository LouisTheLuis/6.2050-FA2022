`timescale 1ns / 1ps
`default_nettype none

module sig_tb();
  logic clk_in, rst_in;
  logic [15:0] msg_in;
  logic trigger_in;
  logic data_out, status_out;

  /* change this instance for test cases with different message widths */
  sig_gen #(.MESSAGE_WIDTH(16)) uut
                  ( .clk_in(clk_in), .rst_in(rst_in),
                    .msg_in(msg_in),
                    .trigger_in(trigger_in),
                    .data_out(data_out),
                    .status_out(status_out));

  always begin
      #5;  //every 5 ns switch...so period of clock is 10 ns...100 MHz clock
      clk_in = !clk_in;
  end

  initial begin
    /* make file to store Value Change Dump file (.vcd)
     * and dump the whole testbench into it.
     * you can also dump individual signals like so!

     * $dumpvars(0, rst_in);
     * $dumpvars(0, msg_in);
     * $dumpvars(0, trigger_in);
     * $dumpvars(0, data_out);
     * $dumpvars(0, status_out); 
     */

    $dumpfile("sig.vcd");
    $dumpvars(0, sig_tb);
    
    $display("Starting Sim");
    clk_in = 0;
    rst_in = 0;
    trigger_in = 0;
    msg_in = 16'b1011111011101111; //16-bit long message
    #10;
    rst_in = 1;
    #10;
    rst_in = 0;
    #50;
    trigger_in = 1;
    #10;
    trigger_in = 0;
    
    $display("msg_in = %8b ", msg_in);
    $display("trigger_in  sig_out  data_out");
    for(int i=0; i<100; i=i+1)begin
      $display("      %b           %b        %b", trigger_in, data_out, status_out);
      #10;
    end

    /* print nice message at the end */
    $display("Finishing Sim"); 
    $finish;
  end
endmodule
`default_nettype wire
