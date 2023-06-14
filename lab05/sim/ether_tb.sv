`default_nettype none
`timescale 1ns / 1ps

module ether_tb;
    logic clk;
    logic rst;
    logic [1:0] rxd;
    logic crsdv;
    logic axiov;
    logic [1:0] axiod;
    ether my_ether(.clk(clk), .rst(rst), .rxd(rxd), .crsdv(crsdv), .axiov(axiov), .axiod(axiod));

    // Variables for Tests
    logic [47:0] data_address = 48'h692C083075FD;
    logic [47:0] src_address = 48'hABCDEF987654;
    logic [15:0] len = 16'h20;
    logic [31:0] message = 16'h1234;
    logic [31:0] fcs = 32'hCBF43926;

    logic [63:0] validation = 64'b0101010101010101010101010101010101010101010101010101010111010101;
    logic [4:0] cot = 3;

    logic [7:0] segment;

    always begin
        #10;
        clk = !clk;
    end

    initial begin
        $dumpfile("ether.vcd");
        $dumpvars(0, ether_tb);
        $display("Starting Sim");
        clk = 0;
        rst = 0;
        #20;
        rst = 1;
        #20;
        rst = 0;
        #10;

        // --------------------------------------------------------------------------------------------------
        // TEST 1: Check that it waits for the preamble and does not immediately move into a different state 
        // --------------------------------------------------------------------------------------------------
        #20;
        crsdv = 1'b1;
        #40;
        rxd = 2'b01;
        #60;
        rxd = 2'b10;
        #20;
        rxd = 2'b11; // Kills the simulation and should send into false carrier state
        #20;
        crsdv = 1'b0;
        #400;
        // --------------------------------------------------------------------------------------------------
        // TEST 1: Check that it waits for the preamble and does not immediately move into a different state 
        // --------------------------------------------------------------------------------------------------

        // --------------------------------------------------------------------------------------------------
        // TEST 2: Check for FALSE_CARRIER
        // --------------------------------------------------------------------------------------------------
        #20;
        crsdv = 1'b1;
        rxd = 2'b01;
        #20;  // It should go into VALIDATION state
        rxd = 2'b01;
        #20;
        rxd = 2'b01;
        #20;
        rxd = 2'b01;
        #20;  // The internal validation state should go to SFD
        rxd = 2'b11;
        #20;
        rxd = 2'b01;
        #20;
        rxd = 2'b00;  // Kills the simulation and should send into false carrier state
        #60; // Wait for crsdv to go down
        crsdv = 1'b0;
        #400;
        // --------------------------------------------------------------------------------------------------
        // TEST 2: Check for FALSE_CARRIER
        // --------------------------------------------------------------------------------------------------

        // --------------------------------------------------------------------------------------------------
        // TEST 3: Check TRANSMISSION scheme
        // --------------------------------------------------------------------------------------------------
        #20;
        crsdv = 1'b1;
        for (int i = 63; i > 0; i = i - 8) begin
            segment = validation[i -: 8];
            for (int j = 0; j < 7; j = j + 2) begin
                case(j) 
                    0: rxd = segment[1:0];
                    2: rxd = segment[3:2];
                    4: rxd = segment[5:4];
                    6: rxd = segment[7:6];
                    default: begin
                    end
                endcase
                $display("%b", rxd);
                #20;
            end
        end
        for (int i = 47; i > 0; i = i - 8) begin
            segment = data_address[i -: 8];
            for (int j = 0; j < 7; j = j + 2) begin
                case(j) 
                    0: rxd = segment[1:0];
                    2: rxd = segment[3:2];
                    4: rxd = segment[5:4];
                    6: rxd = segment[7:6];
                    default: begin
                    end
                endcase
                #20;
            end
        end
        for (int i = 47; i > 0; i = i - 8) begin
            segment = src_address[i -: 8];
            for (int j = 0; j < 7; j = j + 2) begin
                case(j) 
                    0: rxd = segment[1:0];
                    2: rxd = segment[3:2];
                    4: rxd = segment[5:4];
                    6: rxd = segment[7:6];
                    default: begin
                    end
                endcase
                #20;
            end
        end
        for (int i = 15; i > 0; i = i - 8) begin
            segment = len[i -: 8];
            for (int j = 0; j < 7; j = j + 2) begin
                case(j) 
                    0: rxd = segment[1:0];
                    2: rxd = segment[3:2];
                    4: rxd = segment[5:4];
                    6: rxd = segment[7:6];
                    default: begin
                    end
                endcase
                #20;
            end
        end
        // This should send the TRANSMISSION into DATA
        // LENGTH should be stored at this point (length = 32)
        for (int i = 31; i > 0; i = i - 8) begin
            segment = message[i -: 8];
            for (int j = 0; j < 7; j = j + 2) begin
                case(j) 
                    0: rxd = segment[1:0];
                    2: rxd = segment[3:2];
                    4: rxd = segment[5:4];
                    6: rxd = segment[7:6];
                    default: begin
                    end
                endcase
                #20;
            end
        end
        // MINI-TEST : Uncomment this line and check that the trans_state has switched to FCS
        // It's just junk data, but it has to be checked
        for (int i = 31; i > 0; i = i - 8) begin
            segment = fcs[i -: 8];
            for (int j = 0; j < 7; j = j + 2) begin
                case(j) 
                    0: rxd = segment[1:0];
                    2: rxd = segment[3:2];
                    4: rxd = segment[5:4];
                    6: rxd = segment[7:6];
                    default: begin
                    end
                endcase
                #20;
            end
        end
        #60;
        crsdv = 1'b0;
        #400;
        // --------------------------------------------------------------------------------------------------
        // TEST 3: Check TRANSMISSION scheme
        // --------------------------------------------------------------------------------------------------

        // --------------------------------------------------------------------------------------------------
        // TEST 4: PLUG OUT
        // --------------------------------------------------------------------------------------------------
        #20;
        crsdv = 1'b1;
        for (int i = 63; i > 0; i = i - 8) begin
            segment = validation[i -: 8];
            for (int j = 0; j < 7; j = j + 2) begin
                case(j) 
                    0: rxd = segment[1:0];
                    2: rxd = segment[3:2];
                    4: rxd = segment[5:4];
                    6: rxd = segment[7:6];
                    default: begin
                    end
                endcase
                $display("%b", rxd);
                #20;
            end
        end
        rxd = 2'b01;
        #20;
        crsdv = 1'b0;
        if (axiov != 1) begin
            $display("FAIL: message: axiov != 1");
        end
        #400;
        // --------------------------------------------------------------------------------------------------
        // TEST 4: PLUG OUT
        // --------------------------------------------------------------------------------------------------

        $display("Finishing Sim");
        $finish;
    end

endmodule

`default_nettype wire