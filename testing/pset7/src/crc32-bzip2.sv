`ifndef CATSOOP
`default_nettype none
`endif /* ! CATSOOP */

`timescale 1ns / 1ps

/* TODO: read this module and then have it bitwise-complement
 * its output, without borking the CRC32 calculation happening
 * on the inside.
 */

/* this is a verilog pre-processor macro. you'll start to
 * see more of these as the labs go on. these basically cut
 * and paste across your code - for example, anywhere I type
 * `LAGGING_TAPS (watch the backtick there in front of it!),
 * that's gonna get replaced with 4, 7, 10, 16, 22, 26 word for
 * word in your source code.
 *
 * Use these carefully! don't create macros that are unintuitive
 * or difficult to understand - use them to nuke off repetition
 * of constants throughout your code.
 */
`define LAGGING_TAPS 4, 7, 10, 16, 22, 26
`define DOUBLED_TAPS 2, 5, 8, 11, 12, 23
`define LEADING_TAPS 3, 6, 9, 13, 17, 24, 27

/* You don't have to worry about how this works too much.
 * If you're curious, draw out the circuit and convince
 * yourself it's functionally equivalent to the one-bit-
 * at-a-time version. We have to do some extra math to
 * compensate that we've now got multiple bits at each
 * 'slot' in the LFSR...defining stuff in macros makes
 * it a bit easier to comprehend.
 */
`define LAGGING_SHIFT_IN (taxiod[30] ^ axiid[0])
`define LEADING_SHIFT_IN (taxiod[31] ^ axiid[1])
`define DOUBLED_SHIFT_IN (`LEADING_SHIFT_IN ^ `LAGGING_SHIFT_IN)


/* this module [should] implement CRC32-BZIP2, with a two bit input:
 *	- poly 0x04C11DB7
 *	- init 0xFFFFFFFF
 *	- NEW: XOR outputs
 *
 *	== check: 0xfc891918 ==
 *
 * this will be the ethernet checksum when you're done!
 */

module crc(clk, rst, axiiv, axiid, axiov, axiod);

	/* old style i/o declaration, for clarity.
	 * easier on 80-char line limits...
	 * use this if you want, we don't care
	 */
	input logic clk, rst;

	input logic axiiv;
	input logic[1:0] axiid;

	output logic axiov;
	output logic[31:0] axiod;

	logic[31:0] saxiod;
    logic[31:0] taxiod;
	integer i;
    logic flag;

	/* our outputs are always valid */
	assign axiov = 1;

	always_comb begin
		/* for every register in the lfsr, implement
		 * the schematic (giant case statement gets
		 * much smaller with macros, tastefully applied)
		 *
		 * this for loop is similar to the LFSRs you've
		 * seen before - it's just two bits at a time, so
	 	 * some of the math is screwed with a bit.
		 *
		 * you'll notice the cases are sometimes macros -
		 * defined as constant lists of numbers. you can
		 * have multiple numbers per 'arm' of the case
		 * statement - this serves to make things shorter!
		 */
		for (i = 0; i < 32; i = i + 1) begin
			case (i)
			0: saxiod[i] = `LAGGING_SHIFT_IN;
			1: saxiod[i] = `DOUBLED_SHIFT_IN;

			`LAGGING_TAPS:
				saxiod[i] = taxiod[i - 2] ^ `LAGGING_SHIFT_IN;
			`DOUBLED_TAPS:
				saxiod[i] = taxiod[i - 2] ^ `DOUBLED_SHIFT_IN;
			`LEADING_TAPS:
				saxiod[i] = taxiod[i - 2] ^ `LEADING_SHIFT_IN;

			default: saxiod[i] = taxiod[i - 2];
			endcase
		end
	end

    assign axiod = taxiod ^ 32'hFFFF_FFFF;
	always_ff @(posedge clk) begin
		/* init 0xFFFFFFFF */
		if (rst) begin
            taxiod <= 32'hFFFF_FFFF;
        end 
		/* our output validity hinges on whether
		 * we are calculating anything or not
		 * on this clock cycle. if there is no
		 * valid input for us, don't do a shift
	 	 * this cycle
		 */
		else taxiod <= (axiiv) ? saxiod : taxiod;
	end

endmodule

`ifndef CATSOOP
`default_nettype wire
`endif /* ! CATSOOP */
