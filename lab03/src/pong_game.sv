`timescale 1ns / 1ps
`default_nettype none

module pong_game (
  input wire pixel_clk_in,
  input wire rst_in,
  input wire up_in,
  input wire down_in,
  input wire [3:0] pspeed_in,

  input wire [10:0] hcount_in,
  input wire [9:0]  vcount_in,
  input wire [2:0] alpha_in,
  input wire image_set_in,

  output logic [11:0] pixel_out
  );

  // Here we will contain the sprites for the paddle, the puck, and the white
  // background
  logic [11:0] paddlesp, pucksp, whitesp, puckbp;

  logic [11:0] bpuck, rpuck, gpuck;
  logic [11:0] brpuck, rrpuck, grpuck;
  assign bpuck = pucksp[3:0];
  assign gpuck = pucksp[7:4];
  assign rpuck = pucksp[11:8];
  assign brpuck = puckbp[3:0];
  assign grpuck = puckbp[7:4];
  assign rrpuck = puckbp[11:8];

  // Initial positions
  logic [10:0] paddle_ix = 0; logic [9:0] paddle_iy = 0;
  logic [10:0] puck_ix = 300; logic [9:0] puck_iy = 300;
  logic [10:0] white_ix = 447; logic [9:0] white_iy = 319;

  // Actual positions
  logic [10:0] paddle_x; logic [9:0] paddle_y;
  logic [10:0] puck_x; logic [9:0] puck_y;
  logic [10:0] white_x; logic [9:0] white_y;
  // Direction vector for puck
  logic [1:0] puck_dir;

  // Limits
  logic [9:0] y_min = 0;
  logic [9:0] y_max = 767 - h;
  logic [10:0] x_min = 0;
  logic [10:0] x_max = 1023 - w;

  // Initial
  logic [10:0] w = 256;
  logic [11:0] h = 256;
  logic [15:0] q_out;

  // Sprites
  lfsr_16 random (.clk_in(pixel_clk_in), .q_out(q_out));
  block_sprite #(.WIDTH(128), .HEIGHT(128), .COLOR(12'h0F0)) block_puck (.x_in(puck_x), .hcount_in(hcount_in), .y_in(puck_y), .vcount_in(vcount_in), .pixel_out(puckbp));
  block_sprite #(.WIDTH(16), .HEIGHT(128), .COLOR(12'hF00)) paddle (.x_in(paddle_x), .hcount_in(hcount_in), .y_in(paddle_y), .vcount_in(vcount_in), .pixel_out(paddlesp));
  image_sprite #(.WIDTH(256), .HEIGHT(256)) puck (.x_in(puck_x), .hcount_in(hcount_in), .y_in(puck_y), .vcount_in(vcount_in), .pixel_out(pucksp), .pixel_clk_in(pixel_clk_in));
  block_sprite #(.WIDTH(128), .HEIGHT(128), .COLOR(12'hFFF)) white (.x_in(white_x), .hcount_in(hcount_in), .y_in(white_y), .vcount_in(vcount_in), .pixel_out(whitesp));

  // Frame Counter
  logic [3:0] frame;

  // Game switch (on/off)
  logic switch;

  always_ff @(posedge pixel_clk_in) begin
	
	// When hit the reset button, set all the positions to the initial positions
	if (rst_in) begin
		paddle_x <= paddle_ix; paddle_y <= q_out[13:10] << 5;
		puck_x <= q_out[5:2] << 5; puck_y <= q_out[9:6] << 5;
		white_x <= white_ix; white_y <= white_iy;
		frame <= 0;
		switch <= 1;
		
		// Start moving the puck
		puck_dir <= q_out[1:0];

		// Calculate the boundaries
		y_max <= 767 - h - pspeed_in;
		y_min <= pspeed_in;
		x_max <= 1023 - w - pspeed_in;
		x_min <= pspeed_in;
		
    // The game logic goes here 
	end else if (switch) begin
	  	// Find frame and count
		if (hcount_in == 1023 && vcount_in == 767) begin
			frame <= 1;
		end 

		// Whenever 4 frames pass... 
		if (frame) begin
			frame <= 0;

			// Move the paddle
			if (up_in) begin
				if (paddle_y > 0) begin
					paddle_y <= paddle_y - 4;
				end
		        end
			if (down_in) begin
				if (paddle_y < 639) begin
					paddle_y <= paddle_y + 4;
				end
		   	end

			// Choose direction to move based on direction
			// y_min >= puck_y  (too low)
			// puck_x => x_max (too high)

			// MOVING 1ST QUADRANT
			if (puck_dir == 0) begin
				if (puck_x >= x_max) begin
					puck_dir <= 1;
					puck_x <= puck_x - pspeed_in; 
					puck_y <= puck_y - pspeed_in;
				end else if (y_min >= puck_y) begin
					puck_dir <= 3;
					puck_x <= puck_x + pspeed_in; 
					puck_y <= puck_y + pspeed_in;
				end else begin
					puck_x <= puck_x + pspeed_in; 
					puck_y <= puck_y - pspeed_in;
				end 
			end

			// MOVING 2ND QUADRANT
			if (puck_dir == 1) begin
				if (x_min + 16 >= puck_x) begin
					if (!((puck_y < paddle_y && puck_y + h < paddle_y) || (puck_y > paddle_y && puck_y > paddle_y + h))) begin
						puck_dir <= 0;
						puck_x <= puck_x + pspeed_in; 
						puck_y <= puck_y - pspeed_in;
					end else begin
						switch <= 0;
					end
				end else if (y_min >= puck_y) begin
					puck_dir <= 2;
					puck_x <= puck_x - pspeed_in; 
					puck_y <= puck_y + pspeed_in;
				end else begin
					puck_x <= puck_x - pspeed_in; 
					puck_y <= puck_y - pspeed_in;
				end 
			end

			// MOVING 3RD QUADRANT
			if (puck_dir == 2) begin
				if (x_min + 16 >= puck_x) begin
					if (!((puck_y < paddle_y && puck_y + h < paddle_y) || (puck_y > paddle_y && puck_y > paddle_y + h))) begin
						puck_dir <= 3;
						puck_x <= puck_x + pspeed_in; 
						puck_y <= puck_y + pspeed_in;
					end
					else begin
						switch <= 0;
					end
				end else if (puck_y >= y_max) begin
					puck_dir <= 1;
					puck_x <= puck_x - pspeed_in; 
					puck_y <= puck_y - pspeed_in;
				end else begin
					puck_x <= puck_x - pspeed_in; 
					puck_y <= puck_y + pspeed_in;
				end 
			end

			// MOVING 4TH QUADRANT
			if (puck_dir == 3) begin
				if (puck_x >= x_max) begin
					puck_dir <= 2;
					puck_x <= puck_x - pspeed_in; 
					puck_y <= puck_y + pspeed_in;
				end else if (puck_y >= y_max) begin
					puck_dir <= 0;
					puck_x <= puck_x + pspeed_in; 
					puck_y <= puck_y - pspeed_in;
				end else begin
					puck_x <= puck_x + pspeed_in; 
					puck_y <= puck_y + pspeed_in;
				end 
			end
	    end 
	end
  end

  logic [3:0] blues, greens, reds;
  always_comb begin
	if (image_set_in) begin
		if (pucksp != 0 && whitesp != 0) begin
			blues = (bpuck * alpha_in + whitesp[11:8] * (4 - alpha_in)) >> 2;
			greens = (gpuck * alpha_in + whitesp[7:4] * (4 - alpha_in)) >> 2;
			reds = (rpuck * alpha_in + whitesp[3:0] * (4 - alpha_in)) >> 2;
			pixel_out = {reds, greens, blues};
		end else begin
			pixel_out = paddlesp ^ pucksp ^ whitesp;
		end
	end else begin 
		if (pucksp != 0 && whitesp != 0) begin
			blues = (brpuck * alpha_in + whitesp[11:8] * (4 - alpha_in)) >> 2;
			greens = (grpuck * alpha_in + whitesp[7:4] * (4 - alpha_in)) >> 2;
			reds = (rrpuck * alpha_in + whitesp[3:0] * (4 - alpha_in)) >> 2;
			pixel_out = {reds, greens, blues};
		end else begin
			pixel_out = paddlesp ^ puckbp ^ whitesp;
		end
	end
  end

endmodule


`default_nettype wire
