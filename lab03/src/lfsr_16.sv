module lfsr_16 ( input wire clk_in,
                    output logic [15:0] q_out);

logic q1, q2, q3, q4, q5, q6, q7, q8, q9, q10, q11, q12, q13, q14, q15, q16;

logic [15:0] q = 16'b0100010101110101;
always_ff@(posedge clk_in) begin
		q <= {q[15] ^ q[14], q[13], q[12], q[11], q[10], q[9], q[8], q[7], q[6], q[5], q[4], q[3], q[2], q[1] ^ q[15], q[0], q[15]};
      	q_out <= q;
		q1 <= q16; q2 <= q1; q3 <= q2 ^  q16; q4 <= q3;
		q5 <= q4; q6 <= q5; q7 <= q6; q8 <= q7; 
		q9 <= q8; q10 <= q9; q11 <= q10; q12 <= q11;
		q13 <= q12; q14 <= q13; q15 <= q14; q16 <= q16 ^ q15;
end
endmodule