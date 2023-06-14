/* hack to make catsoop happy ... */
`ifndef CATSOOP
`default_nettype none
`endif /* ! CATSOOP */

`timescale 1ns / 1ps

/* this module implements CRC32-MPEG2:
 *	- poly 0x04C11DB7
 *	- init 0xFFFFFFFF
 *	- no i/o reflection
 *	- no XOR out
 *
 *	== check 0x0376E6E7 ==
 */

module crc(clk, rst, axiiv, axiid, axiov, axiod);

	/* old style i/o declaration, for clarity.
	 * easier on 80-char line limits...
	 * use this if you want, we don't care - it
	 * does the same thing as the inline input/output
	 * declarations we've been using for most of the
	 * term
	 */
	input logic clk, rst;
	input logic axiiv, axiid;

	output logic axiov;
	output logic[31:0] axiod;

    logic flag;
    assign axiov = 1;

	/* your lfsr here... */
    always_ff @(posedge clk) begin
        if (rst) begin
            axiod <= 32'hFFFF_FFFF;
            flag <= 0;
        end else begin
            // x^32 + x^26 + x^23 + x^22 + x^16 + x^12 + x^11 + x^10 + x^8 + x^7 + x^5 + x^4 + x^2 + x + 1
            if (axiid) begin
                axiod[31] <= axiod[30]; 
                axiod[30] <= axiod[29]; 
                axiod[29] <= axiod[28]; 
                axiod[28] <= axiod[27];
                axiod[27] <= axiod[26]; 
                axiod[26] <= axiod[25] ^ (axiod[31] ^ axiiv); 
                axiod[25] <= axiod[24];
                axiod[24] <= axiod[23]; 
                axiod[23] <= axiod[22] ^ (axiod[31] ^ axiiv); 
                axiod[22] <= axiod[21] ^ (axiod[31] ^ axiiv);
                axiod[21] <= axiod[20]; 
                axiod[20] <= axiod[19]; 
                axiod[19] <= axiod[18]; 
                axiod[18] <= axiod[17]; 
                axiod[17] <= axiod[16];
                axiod[16] <= axiod[15] ^ (axiod[31] ^ axiiv); 
                axiod[15] <= axiod[14]; 
                axiod[14] <= axiod[13]; 
                axiod[13] <= axiod[12];
                axiod[12] <= axiod[11] ^ (axiod[31] ^ axiiv); 
                axiod[11] <= axiod[10] ^ (axiod[31] ^ axiiv); 
                axiod[10] <= axiod[9] ^ (axiod[31] ^ axiiv);
                axiod[9] <= axiod[8]; 
                axiod[8] <= axiod[7] ^ (axiod[31] ^ axiiv); 
                axiod[7] <= axiod[6] ^ (axiod[31] ^ axiiv); 
                axiod[6] <= axiod[5];
                axiod[5] <= axiod[4] ^ (axiod[31] ^ axiiv); 
                axiod[4] <= axiod[3] ^ (axiod[31] ^ axiiv); 
                axiod[3] <= axiod[2]; 
                axiod[2] <= axiod[1] ^ (axiod[31] ^ axiiv); 
                axiod[1] <= axiod[0] ^ (axiod[31] ^ axiiv); 
                axiod[0] <= axiod[31] ^ axiiv;
                flag <= 1;
            end 
            else if (flag && axiiv != 0) begin
                axiod[31] <= axiod[30]; axiod[30] <= axiod[29]; axiod[29] <= axiod[28]; axiod[28] <= axiod[27];
                axiod[27] <= axiod[26]; axiod[26] <= axiod[25] ^ (axiod[31]); axiod[25] <= axiod[24];
                axiod[24] <= axiod[23]; axiod[23] <= axiod[22] ^ (axiod[31]); axiod[22] <= axiod[21] ^ (axiod[31]);
                axiod[21] <= axiod[20]; axiod[20] <= axiod[19]; axiod[19] <= axiod[18]; axiod[18] <= axiod[17]; axiod[17] <= axiod[16];
                axiod[16] <= axiod[15] ^ (axiod[31]); axiod[15] <= axiod[14]; axiod[14] <= axiod[13]; axiod[13] <= axiod[12];
                axiod[12] <= axiod[11] ^ (axiod[31]); axiod[11] <= axiod[10] ^ (axiod[31]); axiod[10] <= axiod[9] ^ (axiod[31]);
                axiod[9] <= axiod[8]; axiod[8] <= axiod[7] ^ (axiod[31]); axiod[7] <= axiod[6] ^ (axiod[31]); axiod[6] <= axiod[5];
                axiod[5] <= axiod[4] ^ (axiod[31]); axiod[4] <= axiod[3] ^ (axiod[31]); axiod[3] <= axiod[2]; 
                axiod[2] <= axiod[1] ^ (axiod[31]); axiod[1] <= axiod[0] ^ (axiod[31]); axiod[0] <= axiod[31];
            end
        end
    end

endmodule

`ifndef CATSOOP
`default_nettype wire
`endif /* ! CATSOOP */