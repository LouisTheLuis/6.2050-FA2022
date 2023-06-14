`timescale 1ns / 1ps

module simple_counter_tb;

  /* logics for inputs and outputs */
  logic clk_in;
  logic rst_in;
  logic evt_in;
  logic[15:0] count_out;  /* be sure this is the right bit width! */

  simple_counter my_counter(  .clk_in(clk_in),
                              .rst_in(rst_in),
                              .evt_in(evt_in),
                              .count_out(count_out));

  /* An always block in simulation **always** runs in the background.
   * This is useful to simulate a clock for sequential testbenches:
   *	- every 5ns, make clk be !clk
   */
  always begin
  	#5
  	clk_in = !clk_in;
  end

  /* Make sure to initialize the clock as well! */
  initial begin
  	clk_in = 0;
  end

  /* Finally, the actual test */
  initial begin

    /* Set up GTKWave output
     *
     * We would like to dump the results of this simulation
     * to the waveform file "counter.vcd" - change this if you
     * would like.
     *
     * We would like to show variables from the module
     * 'simple_counter_tb'. If you are dumping variables from
     * a different module, be sure to change this to the name
     * of the module you're trying to examine.
     *
     * That zero there means "dump all the variables from this
     * module plus anything it instantiates"
     */
    $dumpfile("counter.vcd");
    $dumpvars(0, simple_counter_tb);

    /* Initialize inputs, say hi (super important)
     * Then wait for things to settle down
     */
    $display("Starting Sim");
    rst_in = 0;
    evt_in = 0;
    #20

    /* Reset... */
    rst_in = 1; //reset system
    #20;
    rst_in=0; //pull low
    #20;


    /* Make something happen - pulse evt for a clock cycle */
    evt_in = 1;
    #10
    evt_in = 0;

    /* Make another thing happen several clock cycles later
     * then let it run for a bit (:
     */
    #50

    evt_in = 1;
    #200
    evt_in = 0;

    /* One more time - this time we reset while evt_in is high
     * Ensure that count_out is zero after we assert rst_in!
     */
    #200

    evt_in = 1;
    #50
    rst_in = 1;

    #50
    $finish;
  end
endmodule /* simple_counter_tb */
