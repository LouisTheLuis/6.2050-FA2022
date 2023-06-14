module vga_mux (
  input wire [1:0] sel_in,
  input wire [10:0] hcount_in, 
  input wire [9:0] vcount_in,
  input wire [11:0] pong_color_in,
  output logic [11:0] color_out
);

  /* Combinations:
   * 00: Pong Game
   * 01: One-pixel-wide white border of the screen + crosshair
   * 10: Color bars
   * 11: Checkerboard
   * default: Pong Game
  */

  logic border;
  assign border = (hcount_in==0 | hcount_in==1023 | vcount_in==0 | vcount_in==767 | 
                    hcount_in == 512 | vcount_in == 384);
  
  logic [2:0] chkrbrd;
  assign chkrbrd = hcount_in[8:6] + vcount_in[8:6];

  always_comb begin
    case (sel_in)
      2'b01: color_out = {12{border}};
      2'b10: color_out = {{4{hcount_in[8]}}, {4{hcount_in[7]}}, {4{hcount_in[6]}}};
      2'b11: color_out = {{4{chkrbrd[2]}}, {4{chkrbrd[1]}}, {4{chkrbrd[0]}}};
      default: color_out = pong_color_in;
    endcase
  end  
endmodule