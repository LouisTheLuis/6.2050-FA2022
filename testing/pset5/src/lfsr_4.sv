module lfsr_4 ( input wire clk_in, input wire rst_in,
                    input wire [3:0] seed_in,
                    output logic [3:0] q_out);

logic q1, q2, q3, q4; // Initialize the registers

always_ff@(posedge clk_in) begin
	if (rst_in) begin
		q1 <= seed_in[0];
		q2 <= seed_in[1];
		q3 <= seed_in[2];
		q4 <= seed_in[3];
		q_out <= seed_in;
	end else begin
		q_out <= {q3, q2, q1 ^ q4, q4};
		q1 <= q4;
		q2 <= q1 ^ q4;
		q3 <= q2;
		q4 <= q3;
	end
end

endmodule
