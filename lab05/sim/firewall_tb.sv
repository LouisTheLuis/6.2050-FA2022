`default_nettype none
`timescale 1ns / 1ps

module firewall_tb;
    logic clk;
    logic rst;
    logic axiiv;
    logic [1:0] axiid;
    logic axiov;
    logic [1:0] axiod;

    firewall my_fw(.clk(clk), .rst(rst), .axiiv(axiiv), .axiid(axiid), .axiov(axiov), .axiod(axiod));

    // Variables for Tests
    logic [47:0] data_address1 = 48'h298D839A21A2;
    logic [47:0] data_address2 = 48'h69695A065490;
    logic [47:0] data_address3 = 48'h69695A165491;
    logic [47:0] data_address4 = 48'h69695A065491;
    logic [47:0] src_address = 48'hFFFFFFFFFFFF;
    logic [15:0] len = 16'h20;
    logic [31:0] message = 32'h1234;
    logic [31:0] fcs = 32'hCBF43926;
    logic [7:0] segment;

    always begin
        #10;
        clk = !clk;
    end

    initial begin
        $dumpfile("firewall.vcd");
        $dumpvars(0, firewall_tb);
        $display("Starting Sim");
        clk = 0;
        rst = 0;
        #20;
        rst = 1;
        #20;
        rst = 0;

        // --------------------------------------------------------------------------------------------------
        // TEST 1: Garbage MAC Address
        // --------------------------------------------------------------------------------------------------
        #20;
        axiiv = 1'b1;
        for (int i = 47; i > 0; i = i - 8) begin
            segment = data_address1[i -: 8];
            for (int j = 7; j > 0; j = j - 2) begin
                case(j)
                    7: axiid = segment[7:6];
                    5: axiid = segment[5:4];
                    3: axiid = segment[3:2];
                    1: axiid = segment[1:0];
                    default: begin end
                endcase
                if (axiov == 1'b1) begin
                    $display("axiov != 0");
                end
                #20;
            end
        end
        for (int i = 47; i > 0; i = i - 8) begin
            segment = src_address[i -: 8];
            for (int j = 7; j > 0; j = j - 2) begin
                case(j)
                    7: axiid = segment[7:6];
                    5: axiid = segment[5:4];
                    3: axiid = segment[3:2];
                    1: axiid = segment[1:0];
                    default: begin end
                endcase
                if (axiov == 1'b1) begin
                    $display("axiov != 0");
                end
                #20;
            end
        end
        for (int i = 15; i > 0; i = i - 8) begin
            segment = len[i -: 8];
            for (int j = 7; j > 0; j = j - 2) begin
                case(j)
                    7: axiid = segment[7:6];
                    5: axiid = segment[5:4];
                    3: axiid = segment[3:2];
                    1: axiid = segment[1:0];
                    default: begin end
                endcase
                if (axiov == 1'b1) begin
                    $display("axiov != 0");
                end
                #20;
            end
        end
        for (int i = 31; i > 0; i = i - 8) begin
            segment = message[i -: 8];
            for (int j = 7; j > 0; j = j - 2) begin
                case(j)
                    7: axiid = segment[7:6];
                    5: axiid = segment[5:4];
                    3: axiid = segment[3:2];
                    1: axiid = segment[1:0];
                    default: begin end
                endcase
                if (axiov == 1'b1) begin
                    $display("axiov != 0");
                end
                #20;
            end
        end
        for (int i = 31; i > 0; i = i - 8) begin
            segment = fcs[i -: 8];
            for (int j = 7; j > 0; j = j - 2) begin
                case(j)
                    7: axiid = segment[7:6];
                    5: axiid = segment[5:4];
                    3: axiid = segment[3:2];
                    1: axiid = segment[1:0];
                    default: begin end
                endcase
                if (axiov == 1'b1) begin
                    $display("axiov != 0");
                end
                #20;
            end
        end
        axiiv = 1'b0;
        $display("PASSED TEST 1!");
        #400;
        // --------------------------------------------------------------------------------------------------
        // TEST 1: Garbage MAC Address
        // --------------------------------------------------------------------------------------------------

        // --------------------------------------------------------------------------------------------------
        // TEST 2: Off-by-one MAC Address
        // --------------------------------------------------------------------------------------------------
        #20;
        axiiv = 1'b1;
        for (int i = 47; i > 0; i = i - 8) begin
            segment = data_address2[i -: 8];
            for (int j = 7; j > 0; j = j - 2) begin
                case(j)
                    7: axiid = segment[7:6];
                    5: axiid = segment[5:4];
                    3: axiid = segment[3:2];
                    1: axiid = segment[1:0];
                    default: begin end
                endcase
                if (axiov == 1'b1) begin
                    $display("axiov != 0");
                end
                #20;
            end
        end
        for (int i = 47; i > 0; i = i - 8) begin
            segment = src_address[i -: 8];
            for (int j = 7; j > 0; j = j - 2) begin
                case(j)
                    7: axiid = segment[7:6];
                    5: axiid = segment[5:4];
                    3: axiid = segment[3:2];
                    1: axiid = segment[1:0];
                    default: begin end
                endcase
                if (axiov == 1'b1) begin
                    $display("axiov != 0");
                end
                #20;
            end
        end
        for (int i = 15; i > 0; i = i - 8) begin
            segment = len[i -: 8];
            for (int j = 7; j > 0; j = j - 2) begin
                case(j)
                    7: axiid = segment[7:6];
                    5: axiid = segment[5:4];
                    3: axiid = segment[3:2];
                    1: axiid = segment[1:0];
                    default: begin end
                endcase
                if (axiov == 1'b1) begin
                    $display("axiov != 0");
                end
                #20;
            end
        end
        for (int i = 31; i > 0; i = i - 8) begin
            segment = message[i -: 8];
            for (int j = 7; j > 0; j = j - 2) begin
                case(j)
                    7: axiid = segment[7:6];
                    5: axiid = segment[5:4];
                    3: axiid = segment[3:2];
                    1: axiid = segment[1:0];
                    default: begin end
                endcase
                if (axiov == 1'b1) begin
                    $display("axiov != 0");
                end
                #20;
            end
        end
        for (int i = 31; i > 0; i = i - 8) begin
            segment = fcs[i -: 8];
            for (int j = 7; j > 0; j = j - 2) begin
                case(j)
                    7: axiid = segment[7:6];
                    5: axiid = segment[5:4];
                    3: axiid = segment[3:2];
                    1: axiid = segment[1:0];
                    default: begin end
                endcase
                if (axiov == 1'b1) begin
                    $display("axiov != 0");
                end
                #20;
            end
        end
        axiiv = 1'b0;
        $display("PASSED TEST 2!");
        #400;
        // --------------------------------------------------------------------------------------------------
        // TEST 2: Off-by-one MAC Address
        // --------------------------------------------------------------------------------------------------

        // --------------------------------------------------------------------------------------------------
        // TEST 3: Another off-by-one MAC Address
        // --------------------------------------------------------------------------------------------------
        axiiv = 1'b1;
        for (int i = 47; i > 0; i = i - 8) begin
            segment = data_address3[i -: 8];
            for (int j = 7; j > 0; j = j - 2) begin
                case(j)
                    7: axiid = segment[7:6];
                    5: axiid = segment[5:4];
                    3: axiid = segment[3:2];
                    1: axiid = segment[1:0];
                    default: begin end
                endcase
                if (axiov == 1'b1) begin
                    $display("axiov != 0");
                end
                #20;
            end
        end
        for (int i = 47; i > 0; i = i - 8) begin
            segment = src_address[i -: 8];
            for (int j = 7; j > 0; j = j - 2) begin
                case(j)
                    7: axiid = segment[7:6];
                    5: axiid = segment[5:4];
                    3: axiid = segment[3:2];
                    1: axiid = segment[1:0];
                    default: begin end
                endcase
                if (axiov == 1'b1) begin
                    $display("axiov != 0");
                end
                #20;
            end
        end
        for (int i = 15; i > 0; i = i - 8) begin
            segment = len[i -: 8];
            for (int j = 7; j > 0; j = j - 2) begin
                case(j)
                    7: axiid = segment[7:6];
                    5: axiid = segment[5:4];
                    3: axiid = segment[3:2];
                    1: axiid = segment[1:0];
                    default: begin end
                endcase
                if (axiov == 1'b1) begin
                    $display("axiov != 0");
                end
                #20;
            end
        end
        for (int i = 31; i > 0; i = i - 8) begin
            segment = message[i -: 8];
            for (int j = 7; j > 0; j = j - 2) begin
                case(j)
                    7: axiid = segment[7:6];
                    5: axiid = segment[5:4];
                    3: axiid = segment[3:2];
                    1: axiid = segment[1:0];
                    default: begin end
                endcase
                if (axiov == 1'b1) begin
                    $display("axiov != 0");
                end
                #20;
            end
        end
        for (int i = 31; i > 0; i = i - 8) begin
            segment = fcs[i -: 8];
            for (int j = 7; j > 0; j = j - 2) begin
                case(j)
                    7: axiid = segment[7:6];
                    5: axiid = segment[5:4];
                    3: axiid = segment[3:2];
                    1: axiid = segment[1:0];
                    default: begin end
                endcase
                if (axiov == 1'b1) begin
                    $display("axiov != 0");
                end
                #20;
            end
        end
        axiiv = 1'b0;
        $display("PASSED TEST 3!");
        #400;
        // --------------------------------------------------------------------------------------------------
        // TEST 3: Another off-by-one MAC Address
        // --------------------------------------------------------------------------------------------------

        // --------------------------------------------------------------------------------------------------
        // TEST 4: Correct MAC Address
        // --------------------------------------------------------------------------------------------------
        axiiv = 1'b1;
        for (int i = 47; i > 0; i = i - 8) begin
            segment = data_address4[i -: 8];
            for (int j = 7; j > 0; j = j - 2) begin
                case(j)
                    7: axiid = segment[7:6];
                    5: axiid = segment[5:4];
                    3: axiid = segment[3:2];
                    1: axiid = segment[1:0];
                    default: begin end
                endcase
                if (axiov == 1'b1) begin
                    $display("axiov != 0");
                end
                #20;
            end
        end
        for (int i = 47; i > 0; i = i - 8) begin
            segment = src_address[i -: 8];
            for (int j = 7; j > 0; j = j - 2) begin
                case(j)
                    7: axiid = segment[7:6];
                    5: axiid = segment[5:4];
                    3: axiid = segment[3:2];
                    1: axiid = segment[1:0];
                    default: begin end
                endcase
                if (axiov == 1'b1) begin
                    $display("axiov != 0");
                end
                #20;
            end
        end
        for (int i = 15; i > 0; i = i - 8) begin
            segment = len[i -: 8];
            for (int j = 7; j > 0; j = j - 2) begin
                case(j)
                    7: axiid = segment[7:6];
                    5: axiid = segment[5:4];
                    3: axiid = segment[3:2];
                    1: axiid = segment[1:0];
                    default: begin end
                endcase
                #20;
                if (axiov == 1'b1) begin
                    $display("axiov != 0");
                end
            end
        end
        for (int i = 31; i > 0; i = i - 8) begin
            segment = message[i -: 8];
            for (int j = 7; j > 0; j = j - 2) begin
                case(j)
                    7: axiid = segment[7:6];
                    5: axiid = segment[5:4];
                    3: axiid = segment[3:2];
                    1: axiid = segment[1:0];
                    default: begin end
                endcase
                #20;
                if (!axiov) begin
                    $display("axiov != 1");
                end
                if (axiod != axiid) begin
                    $display("axiod is wrong");
                end
            end
        end
        for (int i = 31; i > 0; i = i - 8) begin
            segment = fcs[i -: 8];
            for (int j = 7; j > 0; j = j - 2) begin
                case(j)
                    7: axiid = segment[7:6];
                    5: axiid = segment[5:4];
                    3: axiid = segment[3:2];
                    1: axiid = segment[1:0];
                    default: begin end
                endcase
                #20;
                if (!axiov) begin
                    $display("axiov != 1");
                end
                if (axiod != axiid) begin
                    $display("axiod is wrong");
                end
            end
        end
        axiiv = 1'b0;
        $display("PASSED TEST 4!");
        #400;
        // --------------------------------------------------------------------------------------------------
        // TEST 4: Correct MAC Address
        // --------------------------------------------------------------------------------------------------

        $display("Finishing Sim");
        $finish;
    end

endmodule

`default_nettype wire