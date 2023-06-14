`default_nettype none
`timescale 1ns / 1ps

module aggregate(
    input wire clk,
    input wire rst,
    input wire axiiv,
    input wire [1:0] axiid,

    output logic axiov,
    output logic [31:0] axiod
);

    logic [31:0] address = 32'h0;
    logic [31:0] counter;
    logic flag;

    assign axiov = (counter >= 32 && !flag) ? axiiv : 1'b0;
    assign axiod = (counter >= 32) ? address : 2'b0;

    always_ff @(posedge clk) begin
        if (rst) begin
            counter <= 0;
            flag <= 1'b0;
        end else begin
            if (axiiv) begin
                counter <= counter + 1;
                if (counter < 16) begin
                    address <= {address[29:0], axiid};
                end else if (counter >= 32) begin
                    flag <= 1'b1;
                end
            end else begin
                flag <= 1'b0;
                address <= 0;
                counter <= 0;
            end
        end
    end
endmodule

`default_nettype wire