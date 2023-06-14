module spi_gen #(parameter MESSAGE_WIDTH = 8,
			parameter BIT_DUR = 2)
                   (input wire clk_in,
                    input wire rst_in,
                    input wire [MESSAGE_WIDTH-1:0] msg_in,
                    input wire trigger_in,
                    output logic data_out,
		            output logic clk_out,
                    output logic sel_out);

  /* We'd need another bit if we wanted to include parity */
  parameter DUR = 2**BIT_DUR;
  logic [MESSAGE_WIDTH-1:0] msg_buffer;
  logic [$clog2(DUR*MESSAGE_WIDTH):0] bit_counter;
  assign data_out = msg_buffer[MESSAGE_WIDTH-1];

  always_ff @(posedge clk_in) begin
    if(rst_in) begin
      msg_buffer <= 0;
      sel_out <= 1;
    end

    else begin
      if(!sel_out) begin
        /* If we've transmitted the entire message, turn ourselves off */
        if(bit_counter == DUR * MESSAGE_WIDTH) begin
          sel_out <= 1;
        end

        /* If we shouldn't turn ourselves off, increment the counter */
        else begin
          bit_counter <= bit_counter + 1;
        end

        /* If the bit_counter value is equal to 0 mod 2**BITDUR, transmit a bit */
        if (bit_counter % DUR == 0) begin
          msg_buffer <= {msg_buffer[MESSAGE_WIDTH-2:0], 1'b0};
      	end
        
	/* If the bit_counter is 0 mod half 2**BITDUR, switch the clock */
        if (bit_counter % (DUR/2) == 0) begin
            clk_out <= ~clk_out;
      	end
      end

      else begin
        if(trigger_in) begin
          msg_buffer <= msg_in;
          sel_out <= 1'b0;
	      clk_out <= 1'b0;
          bit_counter <= 1;
        end
      end
    end
  end
endmodule
