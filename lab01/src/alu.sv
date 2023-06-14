module alu(input wire [7:0] d0_in,
                            input wire [7:0] d1_in,
                            input wire [2:0] sel_in,
                            output logic [15:0] res_out,
                            output logic  gt_out,
                            output logic eq_out);

   //  YOUR CODE HERE
   assign eq_out = d0_in == d1_in;   // output corresponding to led16_b
   assign gt_out = d1_in > d0_in;    //	output corresponding to led17_r
   always_comb begin
   	case(sel_in)
	   3'b000   :   res_out = d0_in + d1_in;
	   3'b001   :   res_out = d1_in - d0_in;
	   3'b010   :   res_out = d1_in * d0_in;
	   3'b011   :   res_out = d1_in / d0_in;
	   3'b100   :   res_out = d1_in % d0_in;
	   3'b101   :   res_out = d1_in & d0_in;
	   3'b110   :   res_out = d1_in | d0_in;
	   3'b111   :   res_out = d1_in ^ d0_in;
	   default  :   res_out = 16'b0;
   	endcase
    end
endmodule

