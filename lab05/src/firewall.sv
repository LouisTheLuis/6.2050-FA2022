`default_nettype none
`timescale 1ns / 1ps

module firewall(
    input wire clk,
    input wire rst,
    input wire axiiv,
    input wire [1:0] axiid,

    output logic axiov,
    output logic [1:0] axiod
);

    logic [47:0] MAC_ADDRESS1 = 48'h69695A065491;
    logic [47:0] MAC_ADDRESS2 = 48'hFFFFFFFFFFFF;
    logic [47:0] address = 48'h0;
    logic [31:0] counter;
    logic flag;

    assign axiov = (flag && counter >= 56) ? axiiv : 1'b0;
    assign axiod = (flag && counter >= 56) ? axiid : 2'b0;

    always_ff @(posedge clk) begin
        if (rst) begin
            counter <= 0;
            flag <= 1'b0;
        end else begin
            if (axiiv) begin
                counter <= counter + 1;
                if (counter < 23) begin
                    address <= {address[45:0], axiid};
                end else if (counter < 48) begin
                    if (counter == 23) begin
                        if ({address[45:0], axiid} == MAC_ADDRESS1 || {address[45:0], axiid} == MAC_ADDRESS2) begin
                            flag <= 1'b1;
                        end
                    end    
                    if (counter == 24) begin
                        if (address == MAC_ADDRESS1 || address == MAC_ADDRESS2) begin
                            flag <= 1'b1;
                        end
                    end                  
                end 
            end else begin
                address <= 0;
                flag <= 1'b0;
                counter <= 0;
            end
        end
    end
endmodule

`default_nettype wire