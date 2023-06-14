`default_nettype none
`timescale 1ns / 1ps

module bitorder(
    input wire clk,
    input wire rst,
    input wire axiiv,
    input wire [1:0] axiid,

    output logic axiov,
    output logic [1:0] axiod
);

    logic [7:0] buffer_in;
    logic [7:0] buffer_out;
    logic [1:0] out_counter;
    logic [1:0] in_counter;
    
    logic [1:0] state;
    localparam REST = 2'b00;
    localparam EMITTING = 2'b01;

    always_ff@(posedge clk) begin
        if (rst) begin
            buffer_in <= 0;
            buffer_out <= 0;
            in_counter <= 0;
            out_counter <= 0;
            axiov <= 1'b0;
            state <= REST;
        end else begin
            case(state)
                REST : begin
                    axiov <= 1'b0;
                    if (axiiv) begin  
                        if (in_counter != 3) begin 
                            buffer_in <= {axiid, buffer_in[7:2]};
                            in_counter <= in_counter + 1;
                        end else begin
                            buffer_out <= {axiid, buffer_in[7:2]};
                            buffer_in <= 0;
                            in_counter <= 0;
                            state <= EMITTING;
                        end
                    end
                end

                EMITTING : begin
                    axiov <= 1'b1;
                    if (axiiv) begin
                        // MODULAR CODE THAT ALLOWS FOR THIS TO BE DONE BETTER
                        if (in_counter != 3) begin
                            buffer_in <= {axiid, buffer_in[7:2]};
                            in_counter <= in_counter + 1;
                            out_counter <= out_counter + 1;
                            axiod <= buffer_out[7 - (out_counter*2) -: 2];
                        end else begin
                            axiod <= buffer_out[1:0];
                            buffer_out <= {axiid, buffer_in[7:2]};
                            buffer_in <= 0;
                            out_counter <= 0;
                            in_counter <= 0;
                        end
                    end else begin
                        if (out_counter != 3) begin
                            axiod <= buffer_out[7 - (out_counter*2) -: 2];
                            out_counter <= out_counter + 1;
                        end else begin
                            axiod <= buffer_out[1:0];
                            state <= REST;
                            buffer_in <= 0;
                            in_counter <= 0;
                            out_counter <= 0;
                        end
                    end
                end
                default : begin end
            endcase
        end
    end
endmodule

`default_nettype wire