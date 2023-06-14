module sig_gen #(parameter MESSAGE_WIDTH = 8)
                   (input wire clk_in,
                    input wire rst_in,
                    input wire [MESSAGE_WIDTH-1:0] msg_in,
                    input wire trigger_in,
                    output logic data_out,
                    output logic status_out);

  /* We'd need another bit if we wanted to include parity */
  logic [MESSAGE_WIDTH-1:0] msg_buffer;
  logic [$clog2(2*MESSAGE_WIDTH):0] bit_counter;
  assign data_out = msg_buffer[MESSAGE_WIDTH-1];

  always_ff @(posedge clk_in) begin
    if(rst_in) begin
      msg_buffer <= 0;
      status_out <= 0;
    end

    else begin
      if(status_out) begin
        /* If we've transmitted the entire message, turn ourselves off */
        if(bit_counter == 2*MESSAGE_WIDTH) begin
          status_out <= 0;
        end

        /* If we shouldn't turn ourselves off, increment the counter*/
        else begin
          bit_counter <= bit_counter + 1;
        end

        /* If the counter value is even, transmit a bit */
        if (~bit_counter[0]) begin
          msg_buffer <= {msg_buffer[MESSAGE_WIDTH-2:0],1'b0};
        end
      end

      else begin
        if(trigger_in) begin
          msg_buffer <= msg_in;
          status_out <= 1'b1;
          bit_counter <= 1'b1;
        end
      end
    end
  end
endmodule
