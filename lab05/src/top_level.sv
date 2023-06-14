`timescale 1ns / 1ps
`default_nettype none

module top_level(
  input wire clk, //clock @ 100 mhz
  input wire btnc, //btnc (used for reset)
  input wire eth_crsdv,
  input wire [1:0] eth_rxd,

  output logic [15:0] led, 
  output logic eth_refclk,
  output logic eth_rstn,
  output logic [7:0] an,
  output logic ca,cb,cc,cd,ce,cf,cg
  );
    logic [13:0] counter;
    logic axiov;
    logic [1:0] axiod;

    // Global system reset
    assign eth_rstn = !btnc; 

    // Generate 50mhz clock
    divider clk_div (
        .clk(clk), 
        .ethclk(eth_refclk));

    // Ethernet module
    ether eth (
        .clk(eth_refclk),
        .rst(btnc),
        .rxd(eth_rxd),
        .crsdv(eth_crsdv),
        .axiov(axiov),
        .axiod(axiod));

    // Bitorder module
    logic bit_axiov;
    logic [1:0] bit_axiod;
    bitorder my_bit (
        .clk(eth_refclk),
        .rst(btnc),
        .axiiv(axiov),
        .axiid(axiod),
        .axiov(bit_axiov),
        .axiod(bit_axiod));

    // Firewall module
    logic fw_axiov;
    logic [1:0] fw_axiod;
    firewall my_fw (
        .clk(eth_refclk),
        .rst(btnc),
        .axiiv(bit_axiov),
        .axiid(bit_axiod),
        .axiov(fw_axiov),
        .axiod(fw_axiod));

    // FCS module
    logic done;
    logic kill;
    cksum my_cksum (
        .clk(eth_refclk),
        .rst(btnc),
        .axiiv(axiov),
        .axiid(axiod),
        .done(done),
        .kill(kill));

    assign led[15] = kill;
    assign led[14] = done;

    // Aggregate module
    logic [31:0] agg_axiod;
    logic agg_axiov;
    aggregate my_aggregate (
        .clk(eth_refclk),
        .rst(btnc),
        .axiiv(fw_axiov),
        .axiid(fw_axiod),
        .axiov(agg_axiov),
        .axiod(agg_axiod));

    // Seven segment
    logic [6:0] cat_out;
    logic [7:0] an_out;
    logic [31:0] val_in;
    always_ff @(posedge eth_refclk) begin
        if (btnc) begin
            val_in <= 32'b0;
        end else begin
            if (agg_axiov) begin
                val_in <= agg_axiod;
            end
        end
    end
    seven_segment_controller #(.COUNT_TO('d100_000)) my_counter (
        .clk_in(eth_refclk),
        .rst_in(btnc),
        .val_in(val_in),
        .cat_out(cat_out),
        .an_out(an_out));
    assign {cg,cf,ce,cd,cc,cb,ca} = cat_out;
    assign an = an_out;

    // LEDs count the number of dibits received from the Ethernet cable
    logic old_done;
    always_ff @(posedge eth_refclk) begin
        if (btnc) begin
            counter <= 0;
            old_done <= 0;
        end else begin
            if (done && !old_done) begin
                old_done <= 1'b1;
                if (fw_axiov) begin  
                    counter <= counter + 1;
                end
            end else if (!done && old_done) begin
                old_done <= 1'b0;
            end
        end
    end
    assign led[13:0] = counter;

endmodule

`default_nettype wire