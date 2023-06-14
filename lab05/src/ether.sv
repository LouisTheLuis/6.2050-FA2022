`default_nettype none
`timescale 1ns / 1ps

module ether(
    input wire clk,
    input wire rst,
    input wire [1:0] rxd,
    input wire crsdv,

    output logic axiov,
    output logic [1:0] axiod
);

    // FSM LOGIC STATES
    logic [1:0] state;
    localparam REST  = 2'b00; 
    localparam VALIDATION = 2'b01;
    localparam FALSE_CARRIER = 2'b10;
    localparam TRANSMISSION = 2'b11; 
    // Sub-states for the TRANSMISSION stage
    localparam HEADER = 2'b00;
    localparam DATA = 2'b01;
    localparam FCS = 2'b10;

    // ----------------------
    //  VARIABLES GO HERE
    // ----------------------
    // REST
    logic crs_true;
    // VALIDATION
    logic [6:0] val_ct;
    logic [63:0] validation = 64'b0101010101010101010101010101010101010101010101010101010101010111;
    // TRANSMISSION
    logic [1:0] trans_state;
    logic [6:0] hdr_cnt;
    logic [15:0] length;
    logic [12:0] data_cnt;
    logic [16:0] fcs_cnt;
    logic fcs_flag;

    logic [1:0] something;
    assign something = validation[63 - val_ct -: 2];

    always_ff @(posedge clk) begin
        if (rst) begin
            state <= REST;
            crs_true <= 1'b0;  // Flag; checks if crsdv has been high
            axiov <= 1'b0;

            length <= 0;
            val_ct <= 0;
        end else begin
            case(state)
                // We check if crsdv is 1 and rxd == 01
                REST : begin
                    axiov <= 1'b0;
                    if (crsdv && rxd == 2'b01) begin
                        crs_true <= crsdv;
                        state <= VALIDATION;
                    end else if (crsdv) begin
                        crs_true <= crsdv;
                    end else if (rxd == 2'b01 && crs_true) begin
                        state <= VALIDATION;
                    end
                end

                // Iterates for 7 cycles checking if rxd == preamble/sfd, sending into FALSE_CARRIER otherwise
                VALIDATION : begin
                    if (crsdv) begin
                        val_ct <= val_ct + 2; 
                        if (rxd != validation[61 - val_ct -: 2]) begin
                            state <= FALSE_CARRIER;
                            val_ct <= 0;
                        end else begin
                            if (val_ct == 60) begin
                                state <= TRANSMISSION;
                                trans_state <= HEADER;
                                hdr_cnt <= 0;
                                val_ct <= 0;
                            end
                        end
                    end
                end

                // Restarts all the variables 
                FALSE_CARRIER : begin
                    if (!crsdv) begin
                        crs_true <= 1'b0;
                        state <= REST;
                    end
                end

                // Mini state machine with 3 stages
                TRANSMISSION : begin
                    if (crsdv) begin
                        axiov <= 1'b1;
                        case(trans_state)
                            HEADER : begin
                                axiod <= rxd;
                                hdr_cnt <= hdr_cnt + 1;
                                if (hdr_cnt >= 48) begin
                                    length <= {rxd, length[15:2]};
                                    if (hdr_cnt == 56) begin
                                        length <= {length[7:0], length[15:8]};
                                        trans_state <= DATA;
                                        data_cnt <= 0;
                                    end 
                                end
                            end
                            DATA : begin
                                hdr_cnt <= 0;
                                data_cnt <= data_cnt + 1;
                                axiod <= rxd;
                                axiov <= 1'b1;
                                if (data_cnt == (length >> 1) - 1) begin
                                    trans_state <= FCS;
                                    fcs_cnt <= 0;
                                end
                            end
                            FCS : begin
                                if (fcs_flag) begin
                                    if (!crsdv) begin
                                        axiov <= 1'b0;
                                        axiod <= 2'b0;
                                        fcs_flag <= 1'b0;
                                        fcs_cnt <= 0;
                                        state <= REST;
                                        trans_state <= HEADER;
                                        crs_true <= 1'b0;
                                    end
                                end else begin
                                    data_cnt <= 0;
                                    fcs_cnt <= fcs_cnt + 1;
                                    axiod <= rxd;
                                    axiov <= 1'b1;
                                    if (fcs_cnt == 15) begin
                                        fcs_flag <= 1'b1;
                                    end
                                end
                            end
                            default : begin end
                        endcase
                    end else begin
                        crs_true <= 1'b0;
                        state <= REST;
                        axiov <= 1'b0;                   
                    end
                end
                default : begin end
            endcase
        end
    end

endmodule

`default_nettype wire