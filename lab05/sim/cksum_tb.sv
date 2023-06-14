`default_nettype none
`timescale 1ns / 1ps

module cksum_tb;
    logic clk;
    logic rst;
    logic axiiv;
    logic [1:0] axiid;
    logic done;
    logic kill;

    cksum my_cksum(.clk(clk), .rst(rst), .axiiv(axiiv), .axiid(axiid), .kill(kill), .done(done));

    logic [95:0] msg = 96'h67_69_60_D1_9D_78_5A_5B96CB5E37;
    logic [167:0] message = 168'h4261_7272_7921_2042_7265_616b_6661_7374_2074_696d65;
    logic [31:0] cksum = 32'h1a3a_ccb2;
    logic [199:0] total1 = 200'h4261_7272_7921_2042_7265_616b_6661_7374_2074_696d65_1a3a_ccb2;
    logic [199:0] total2 = 200'h4261_7272_7921_2042_7265_616b_6661_7374_2074_696d65_0000_0000;
    logic [7:0] segment;

    always begin
        #10;
        clk = !clk;
    end

    initial begin
        $dumpfile("cksum.vcd");
        $dumpvars(0, cksum_tb);
        $display("Starting Sim");
        clk = 0;
        rst = 0;
        #20;
        rst = 1;
        #20;
        rst = 0;
        #20;
        // --------------------------------------------------------------------------------------------------
        // TEST 1: Unreasonably short message with no CRC
        // --------------------------------------------------------------------------------------------------
        // #20;
        // axiiv = 1'b1;
        // axiid = 2'b01;
        // #20;
        // axiiv = 1'b0;
        // #20;
        // --------------------------------------------------------------------------------------------------
        // TEST 1: Unreasonably short message with no CRC
        // --------------------------------------------------------------------------------------------------

        // --------------------------------------------------------------------------------------------------
        // TEST 2: Full message  
        // --------------------------------------------------------------------------------------------------
        #20;
        axiiv = 1'b1;
        #20;
        axiiv = 1'b0;
        #20;
        axiiv = 1'b1;
        // for (int i = 95; i > 0; i = i - 8) begin
        //     segment = msg[i -: 8];
        //     for (int j = 7; j > 0; j = j - 2) begin
        //         case(j) 
        //             7: axiid = segment[7:6];
        //             5: axiid = segment[5:4];
        //             3: axiid = segment[3:2];
        //             1: axiid = segment[1:0];
        //             default: begin end
        //         endcase
        //         #20;
        //     end
        // end
                    // 7: axiid = segment[7:6];
                    // 5: axiid = segment[5:4];
                    // 3: axiid = segment[3:2];
                    // 1: axiid = segment[1:0];
        // axiiv = 1'b0;
        for (int i = 199; i > 0; i = i - 8) begin
            segment = total1[i -: 8];
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
        // TEST 2: Full message  
        // --------------------------------------------------------------------------------------------------

        // --------------------------------------------------------------------------------------------------
        // TEST 3: Zero CRC 
        // --------------------------------------------------------------------------------------------------
        // axiiv = 1'b1;
        // for (int i = 199; i > 0; i = i - 8) begin
        //     segment = total2[i -: 8];
        //     for (int j = 0; j < 7; j = j + 2) begin
        //         case(j) 
        //             0: axiid = segment[1:0];
        //             2: axiid = segment[3:2];
        //             4: axiid = segment[5:4];
        //             6: axiid = segment[7:6];
        //             default: begin end
        //         endcase
        //         #20;
        //     end
        // end
        // axiiv = 1'b0;
        // #400;
        // --------------------------------------------------------------------------------------------------
        // TEST 3: Zero CRC 
        // --------------------------------------------------------------------------------------------------

        $display("Finishing Sim");
        $finish;
    end

endmodule

`default_nettype wire