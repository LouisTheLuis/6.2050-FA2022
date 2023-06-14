/* hacks to make catsoop happy */
`ifndef CATSOOP
`default_nettype none
`endif /* ! CATSOOP */

`timescale 1ns / 1ps

/* this testbench might be slightly different than the
 * other ones you've seen before! that's because it uses
 * _macros_ - these little `define statements you see below
 *
 * macros eliminate repetition for _simple_ constants and
 * such you're interested in. it's like a parameter for
 * things you won't change and don't want to export to
 * others. to use a macro, `define it like we do below, and
 * then when you type e.g. `CP (note the backtick!) somewhere
 * `CP will get replaced with what you defined CP to.
 *
 * to run this testbench on the command line, do
 * `iverilog -g2012 -Wall -o obj/crc.out crc32-mpeg2.sv <your source file>.sv
 *
 * to run this testbench on the command line AND make a waveform, add
 * the -DMKWAVEFORM flag before the -o flag to the invocation above.
 * this will define the MKWAVEFORM macro, which allows the `ifdef
 * below in the testbench to pass. otherwise, the code in the `ifdef
 * will not be compiled into your simulation so it won't run.
 */

`define CP	10
`define HCP	(`CP / 2)

`define MSG	64'hce_2e_88_d9_b8_bc_75_de
`define CRC	32'h0d_a2_57_ed

module crcsim;

	logic clk;
	logic rst;
	logic axiiv;
	logic axiid;
	logic axiov;
	logic [31:0] axiod;

	logic [0:63] msg;
	logic [0:31] rcrc;
	logic testok;

	integer i;

	/* instantiate your uut */
	crc uut(.clk(clk), .rst(rst), .axiiv(axiiv), .axiid(axiid), .axiov(axiov), .axiod(axiod));

	/* cycle the clock forever...
	 * the CLK thing is a _label_
	 * not useful for much right now,
	 * but nice so i can quickly identify
	 * what this chunk of begin/end code does
	 */
	initial begin: CLK
		clk = 0;
		forever #`HCP clk = ~clk;
	end

	/* Another label: _MAIN_ */
	initial begin: MAIN
		/* if the MKWAVEFORM macro is defined, create a
		 * waveform and shove it into obj. otherwise, don't.
		 * this allows us control over whether a waveform
		 * gets generated without having to actually change
		 * our code, since we can force iverilog to `define
		 * MKWAVEFORM from the command line with -DMKWAVEFORM
		 * Neat!
		 *
		 * Again, don't overuse this feature! It's cool for this
		 * sort of hack, but don't overlitter your code with macros (:
	 	 */
`define MKWAVEFORM 1
`ifdef MKWAVEFORM
		$dumpfile("obj/crc32-mpeg2.vcd");
		$dumpvars(0, crcsim);
`endif /* MKWAVEFORM */

		/* spin up the test */
		testok = 1;

		/* set msg to what MSG is defined to, by writing
		 * `MSG i.e. using the macro definition we set up
		 * previously. this way we only have to change MSG
		 * at the top of the file instead of everywhere
		 * which is nice if we wanna switch up the test...
		 */
		msg = `MSG;

		/* here's an example of a code block we see
		 * run twice, but that would make a bad macro
		 * why? because what a reset is doing should be
		 * transparent to somebody reading your code. this
		 * process is unwieldly, yes, but i don't want to
		 * have to scroll to figure out what `RESET means.
		 */
		rst = 1;
		axiiv = 0;
		axiid = 0;

		#`CP;

		rst = 0;
		#`CP;

		$display("== test one: correct CRC generation ==");

		/* feed our message into the module, so that
		 * we can compute its crc and verify its integrity
		 * do this by setting valid -> 1, and shoving in
		 * message bits one at a time...
	 	 */
		for (i = 0; i < 64; i = i + 1) begin
			axiiv = 1;
			axiid = msg[i];

			/* fail the test if your module says
			 * we have invalid output at any time
			 */
			if (!axiov) testok = 0;

			/* delay by whatever CP is defined to */
			#`CP;
		end

		/* no more valid input data */
		axiid = 0;
		axiiv = 0;

		for (i = 0; i < 2; i = i + 1) begin
			/* make sure your module still has
			 * a valid output CRC in there: axiov should
			 * indicate valid data, and the data line axiod
			 * should show the correct crc
			 */
			if (!axiov) testok = 0;
			else if (axiod != `CRC) testok = 0;
			#`CP;
		end

		/* If you've got X's, fail the test! */
		if (^axiod === 1'bX) testok = 0;
		else if (^axiov === 1'bX) testok = 0;

		/* If we fail the test, jump out early */
		$display("== test one result: %s", (testok) ? "OK" : "FAIL");
		if (!testok) $finish;

		rst = 1;
		axiiv = 0;
		axiid = 0;
		#`CP;

		rst = 0;
		#`CP;

		/* Another test. Same as above. This one runs CRC over
		 * your entire message PLUS the CRC your module generates
		 * Because of magic division math, this should always produce
		 * zero !
		 */
		$display("== test two: correct residue generation ==");

		for (i = 0; i < 64; i = i + 1) begin
			axiiv = 1;
			axiid = msg[i];

			if (!axiov) testok = 0;
			#`CP;
		end
		
		rcrc = axiod;

		for (i = 0; i < 32; i = i + 1) begin
			axiiv = 1;
			axiid = rcrc[i];

			if (!axiov) testok = 0;
			#`CP;
		end

		axiid = 0;
		axiiv = 0;

		for (i = 0; i < 2; i = i + 1) begin
			if (!axiov) testok = 0;
			else if (axiod != 0) testok = 0;
			#`CP;
		end

		if (^axiod === 1'bX) testok = 0;
		else if (^axiov === 1'bX) testok = 0;

		$display("== test two result: %s", (testok) ? "OK" : "FAIL");
		$finish;
	end
endmodule

`ifndef CATSOOP
`default_nettype wire
`endif /* ! CATSOOP */