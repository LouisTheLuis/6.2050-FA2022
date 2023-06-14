// set the timestep on the internal simulation clock
`timescale 1ns / 1ps
`default_nettype none

//The timescale specifies the timestep size (1ns) and time resolution of rounding (1ps)
//we'll usually use 1ns/1ps in our class

module alu_tb();

  //make inputs and outputs of appropriate size for the module testing:
  logic [7:0] d0_in;
  logic [7:0] d1_in;
  logic [2:0] sel_in;
  logic [15:0] res_out;
  logic gt_out;
  logic eq_out;

  //create an instance of the module. UUT= unit under test, but call it whatever:
  //always use named port convention when declaring (it is much easier to protect from bugs)
  alu uut(.d0_in(d0_in), .d1_in(d1_in), .sel_in(sel_in),
      .res_out(res_out), .gt_out(gt_out), .eq_out(eq_out));
  //All simulations start with the the "initial block's top
  // They then run forward in order like regular code.
  //lines that are one after the other happen "instaneously together"
  //Time passes using the # notation. (#10 is 10 nanoseconds)
  // set the initial values of the module inputs
  initial begin
    d0_in = 0; //set d0_in to 0
    d1_in = 0; //same for d1_in
    sel_in = 0; //same for sel_in

    // Extremely Important!
    // Even though the system is combinatorial-only, make sure some simulation time runs before analyzing outputs
    #10; //wait 10 ns
    //now print something:
    $display("\n---------\nStarting Simulation!");
    d0_in = 0;
    d1_in = 10;

    // run through all operations and monitor outputs
    $display("d1_in      d0_in     sel_in  res_out           eq_out  gt_out");
    for(integer i = 0; i < 8; i = i + 1) begin
        sel_in = i; //set sel_in
        #10; //wait for a bit of time (10 ns)
        //then evaluate outputs:
        $display("%8b   %8b  %3b     %15b  %b       %b", d1_in, d0_in, sel_in, res_out, eq_out, gt_out);
    end

    #10;
    d0_in = 100;
    d1_in = 10;
    $display("d1_in      d0_in     sel_in  res_out           eq_out  gt_out");
    for(integer i = 0; i < 8; i = i + 1) begin
        sel_in = i; //set sel_in
        #10; //wait for a bit of time (10 ns)
        //then evaluate outputs:
        $display("%8b   %8b  %3b     %15b  %b       %b", d1_in, d0_in, sel_in, res_out, eq_out, gt_out);
    end

    #10;
    d0_in = 10;
    d1_in = 100;
    $display("d1_in      d0_in     sel_in  res_out           eq_out  gt_out");
    for(integer i = 0; i < 8; i = i + 1) begin
        sel_in = i; //set sel_in
        #10; //wait for a bit of time (10 ns)
        //then evaluate outputs:
        $display("%8b   %8b  %3b     %15b  %b       %b", d1_in, d0_in, sel_in, res_out, eq_out, gt_out);
    end

    #10;
    d0_in = 42;
    d1_in = 42;
    $display("d1_in      d0_in     sel_in  res_out           eq_out  gt_out");
    for(integer i = 0; i < 8; i = i + 1) begin
        sel_in = i; //set sel_in
        #10; //wait for a bit of time (10 ns)
        //then evaluate outputs:
        $display("%8b   %8b  %3b     %15b  %b       %b", d1_in, d0_in, sel_in, res_out, eq_out, gt_out);
    end

    #10;
    d0_in = 7;
    d1_in = 42;
    $display("d1_in      d0_in     sel_in  res_out           eq_out  gt_out");
    for(integer i = 0; i < 8; i = i + 1) begin
        sel_in = i; //set sel_in
        #10; //wait for a bit of time (10 ns)
        //then evaluate outputs:
        $display("%8b   %8b  %3b     %15b  %b       %b", d1_in, d0_in, sel_in, res_out, eq_out, gt_out);
    end
 
    $display("\n---------\nFinishing Simulation!");
    $finish; //finish simulation.
  end
endmodule // alu_tb
