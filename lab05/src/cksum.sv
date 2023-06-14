`default_nettype none
`timescale 1ns / 1ps

module cksum(
    input wire clk,
    input wire rst,
    input wire axiiv,
    input wire [1:0] axiid,

    output logic done,
    output logic kill
);

    logic [31:0] axiod;
    logic axiov;
    logic first_axiiv;
    logic crc_rst; 
    logic lock;
    assign crc_rst = (axiiv == 1'b1) ? 1'b0 : 1'b1;
    crc32 mycrc(.clk(clk), .rst(crc_rst), .axiiv(axiiv), .axiid(axiid), .axiov(axiov), .axiod(axiod));

    always_ff @(posedge clk) begin
        if (rst) begin
            done <= 1'b0;
            kill <= 1'b0;
            first_axiiv <= 1'b0;
            lock <= 1'b1;
        end else begin
            if (axiiv) begin
                if (lock) lock <= 1'b0;
                if (!first_axiiv) first_axiiv <= 1'b1;
                done <= 1'b0;
                kill <= 1'b0;
            end else begin
                if (first_axiiv && !lock) begin
                    if (32'h38_fb_22_84 == axiod) begin
                        done <= 1'b1;
                        kill <= 1'b0;
                        lock <= 1'b1;
                    end else begin
                        done <= 1'b1;
                        kill <= 1'b1;
                    end
                end
            end
        end
    end

endmodule

`default_nettype wire