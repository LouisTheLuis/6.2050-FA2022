`default_nettype none
`timescale 1ns / 1ps

module aggregate_tb;
    logic clk;
    logic rst;
    logic axiiv;
    logic [1:0] axiid;
    logic axiov;
    logic [31:0] axiod;

    aggregate my_aggregate(.clk(clk), .rst(rst), .axiiv(axiiv), .axiid(axiid), .axiov(axiov), .axiod(axiod));

    logic [63:0] placeholder = 64'h0000_0000_0000_0000;
    logic [31:0] test2 = 32'h4353f92c;
    logic [63:0] test3 = 64'h12345678_00000000;
    logic [7:0] segment;

    always begin
        #10;
        clk = !clk;
    end

    initial begin
        $dumpfile("aggregate.vcd");
        $dumpvars(0, aggregate_tb);
        $display("Starting Sim");
        clk = 0;
        rst = 0;
        #20;
        rst = 1;
        #20;
        rst = 0;
        #20;
        // --------------------------------------------------------------------------------------------------
        // TEST 1: tiny 1-bit message
        // --------------------------------------------------------------------------------------------------
        // #20;
        // axiiv = 1'b1;
        // axiid = 2'b10;
        // #20;
        // axiiv = 1'b0;
        // #20;
        // for (int i = 63; i > 0; i = i - 8) begin
        //     segment = test1[i -: 8];
        //     for (int j = 7; j > 0; j = j - 2) begin
        //         case(j) 
        //             7: axiid = {segment[6], segment[7]};
        //             5: axiid = {segment[4], segment[5]};
        //             3: axiid = {segment[2], segment[3]};
        //             1: axiid = {segment[0], segment[1]};
        //             default: begin end
        //         endcase
        //         #20;
        //     end
        // end
        // axiiv = 1'b0;
        // #400;
        // --------------------------------------------------------------------------------------------------
        // TEST 1: tiny 1-bit message
        // --------------------------------------------------------------------------------------------------

        // --------------------------------------------------------------------------------------------------
        // TEST 2: 32-bit message (no FCS)  
        // --------------------------------------------------------------------------------------------------
        // #20;
        // axiiv = 1'b1;
        // for (int i = 31; i > 0; i = i - 8) begin
        //     segment = test2[i -: 8];
        //     for (int j = 7; j > 0; j = j - 2) begin
        //         case(j) 
        //             7: axiid = {segment[6], segment[7]};
        //             5: axiid = {segment[4], segment[5]};
        //             3: axiid = {segment[2], segment[3]};
        //             1: axiid = {segment[0], segment[1]};
        //             default: begin end
        //         endcase
        //         #20;
        //     end
        // end
        // axiiv = 1'b0;
        // #400;
        // --------------------------------------------------------------------------------------------------
        // TEST 2: 32-bit message (no FCS)  
        // --------------------------------------------------------------------------------------------------

        // --------------------------------------------------------------------------------------------------
        // TEST 3: 32-bit message (with FCS) 
        // --------------------------------------------------------------------------------------------------
        #20;
        axiiv = 1'b1;
        for (int i = 63; i > 0; i = i - 8) begin
            segment = test3[i -: 8];
            for (int j = 7; j > 0; j = j - 2) begin
                case(j) 
                    7: axiid = {segment[6], segment[7]};
                    5: axiid = {segment[4], segment[5]};
                    3: axiid = {segment[2], segment[3]};
                    1: axiid = {segment[0], segment[1]};
                    default: begin end
                endcase
                #20;
            end
        end
        axiiv = 1'b0;
        #400;
        // --------------------------------------------------------------------------------------------------
        // TEST 3: 32-bit message (with FCS) 
        // --------------------------------------------------------------------------------------------------

        $display("Finishing Sim");
        $finish;
    end

endmodule

`default_nettype wire