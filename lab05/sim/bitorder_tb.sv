`default_nettype none
`timescale 1ns / 1ps

module bitorder_tb;
    logic clk;
    logic rst;
    logic axiiv;
    logic [1:0] axiid;
    logic axiov;
    logic [1:0] axiod;

    bitorder my_bit(.clk(clk), .rst(rst), .axiiv(axiiv), .axiid(axiid), .axiov(axiov), .axiod(axiod));

    // Variables for Tests
    // logic [47:0] data_address = 48'h692C083075FD;
    // logic [47:0] src_address = 48'hABCDEF987654;
    // logic [15:0] len = 16'h20;
    // logic [31:0] message = 16'h1234;
    // logic [31:0] fcs = 32'hCBF43926;

    logic [63:0] validation = 64'b0101010101010101010101010101010101010101010101010101010111010101;
    logic [11:0] onehalf = 12'b111111110000;
    logic [23:0] threebyte = 24'hAABBCC;
    logic [7:0] segment;

    always begin
        #10;
        clk = !clk;
    end

    initial begin
        $dumpfile("bitorder.vcd");
        $dumpvars(0, bitorder_tb);
        $display("Starting Sim");
        clk = 0;
        rst = 0;
        #20;
        rst = 1;
        #20;
        rst = 0;
        #10;

        // --------------------------------------------------------------------------------------------------
        // TEST 1: Check the sending of bits for validation
        // --------------------------------------------------------------------------------------------------
        #20;
        axiiv = 1'b1;
        for (int i = 63; i > 0; i = i - 8) begin
            segment = validation[i -: 8];
            for (int j = 0; j < 7; j = j + 2) begin
                case(j) 
                    0: axiid = segment[1:0];
                    2: axiid = segment[3:2];
                    4: axiid = segment[5:4];
                    6: axiid = segment[7:6];
                    default: begin
                    end
                endcase
                $display("%b", axiid);
                #20;
            end
        end
        axiiv = 1'b0;
        #400;
        // --------------------------------------------------------------------------------------------------
        // TEST 1: Check the sending of bits for validation
        // --------------------------------------------------------------------------------------------------

        // --------------------------------------------------------------------------------------------------
        // TEST 2: Checking for 1.5 bytes
        // --------------------------------------------------------------------------------------------------
        #20;
        axiiv = 1'b1;
        segment = onehalf[11:4];
        for (int j = 0; j < 7; j = j + 2) begin
            case(j) 
                0: axiid = segment[1:0];
                2: axiid = segment[3:2];
                4: axiid = segment[5:4];
                6: axiid = segment[7:6];
                default: begin
                end
            endcase
            $display("%b", axiid);
            #20;
        end
        axiid = onehalf[3:2];
        #20;
        axiid = onehalf[1:0];
        #20;
        axiiv = 1'b0;
        #400;
        // --------------------------------------------------------------------------------------------------
        // TEST 2: Checking for 1.5 bytes
        // --------------------------------------------------------------------------------------------------

        // --------------------------------------------------------------------------------------------------
        // TEST 3: Checking for 3 bytes
        // --------------------------------------------------------------------------------------------------
        #20;
        axiiv = 1'b1;
        for (int i = 23; i > 0; i = i - 8) begin
            segment = threebyte[i -: 8];
            for (int j = 0; j < 7; j = j + 2) begin
                case(j) 
                    0: axiid = segment[1:0];
                    2: axiid = segment[3:2];
                    4: axiid = segment[5:4];
                    6: axiid = segment[7:6];
                    default: begin
                    end
                endcase
                $display("%b", axiid);
                #20;
            end
        end
        axiiv = 1'b0;
        #400;
        // --------------------------------------------------------------------------------------------------
        // TEST 3: Checking for 3 bytes
        // --------------------------------------------------------------------------------------------------


        $display("Finishing Sim");
        $finish;
    end

endmodule

`default_nettype wire