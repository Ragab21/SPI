module SPI(MOSI,SS_n,clk,rst_n,tx_data,tx_valid,MISO,rx_data,rx_valid);
parameter IDLE = 3'b000;
parameter CHK_CMD = 3'b001;
parameter WRITE = 3'b010;
parameter READ_ADD = 3'b011;
parameter READ_DATA = 3'b100;

input MOSI,SS_n,clk,rst_n;
input [7:0]tx_data;
input tx_valid;

output reg MISO;
output reg [9:0]rx_data;
output reg rx_valid;

//(* fsm_encoding = "one_hot" *)
reg [2:0]cs,ns;

reg read;
reg [3:0] bit_count;
reg [3:0] bit_count2;
reg count_switch;
reg rx_temp;



always @(posedge clk or negedge rst_n) begin
	if (~rst_n) begin
		cs <= IDLE;
	end
	else begin
		cs <= ns;
	end
end


always @(*) begin
	case(cs)
		 IDLE : begin
			if (SS_n == 1) begin
				ns = IDLE;
			end
			else begin
			  	ns = CHK_CMD;
			end
		end
		 CHK_CMD : begin
			if (SS_n == 1) begin
				ns = IDLE;
		    end
		    else if(SS_n == 0 && MOSI == 0) begin
		  		ns = WRITE;
		    end
		    else if (SS_n == 0 && MOSI == 1 && read == 1) begin
		   		ns = READ_DATA;
		    end
		    else if (SS_n == 0 && MOSI == 1 && read == 0) begin
		   		ns = READ_ADD;
		    end
		    else begin
				ns = cs;
			end
		end
		 WRITE : begin
			if(SS_n == 0 && bit_count < 4'd10) begin
				ns = WRITE;
			end
			else begin
				ns = IDLE;
			end
		end
		 READ_ADD : begin
			if(SS_n == 0 && bit_count < 4'd10) begin
					ns = READ_ADD;
				end
			else begin
				ns = IDLE;
			end
		end
		 READ_DATA : begin
			if(SS_n == 0 && bit_count2 < 4'd8) begin
					ns = READ_DATA;
				end
				else begin
					ns = IDLE;
				end
		end
	endcase
end

always @(posedge clk or negedge rst_n) begin
	if(~rst_n) begin
		rx_valid <= 1'b0;
		rx_data <= 10'b0;
		bit_count <= 4'b0;
		bit_count2 <= 4'b0;
		count_switch <= 1'b0;
		read <= 1'b0;
		MISO <= 1'b0;
	end
	else begin
		if(cs == IDLE) begin
	        rx_valid <= 1'b0;
			rx_data <= 0;
			bit_count <= 0;
			bit_count2 <= 0;
			count_switch <= 0;
    	end
    	else if (cs == WRITE) begin
			rx_data[9-bit_count] <= rx_temp;
	        bit_count <= bit_count + 1'b1;
		    	if (bit_count == 4'd9) begin
		            rx_valid <= 1'b1;
		        end else begin
		            rx_valid <= 1'b0;
		        end
    	end
    	else if(cs == READ_ADD) begin
    		read <= 1'b1;
    		rx_data[9-bit_count] <= rx_temp;
	        bit_count <= bit_count + 1'b1;
		    	if (bit_count == 4'd9) begin
		            rx_valid <= 1'b1;
		        end else begin
		            rx_valid <= 1'b0;
		        end
    	end
    	else if (cs == READ_DATA) begin
    		read <= 1'b0;
	    	if (count_switch == 0 && bit_count < 4'd9) begin
	            rx_data[9-bit_count] <= rx_temp; 
	            bit_count <= bit_count + 1'b1;
	        end
	    	else if(bit_count == 4'd9)  begin
	            rx_valid <= 1'b1;
	            count_switch <=1'b1;
	        end
	        if (bit_count2 < 4'd8 && count_switch == 1 && tx_valid == 1) begin
	        	bit_count <= 4'b0;
	        	rx_valid <= 1'b0;
	            MISO <= tx_data[7-bit_count2];
	            bit_count2 <= bit_count2 + 1'b1;
	        end
	        else begin
	        	MISO <= 1'b0;
	        end
	    end 
    end
end

always @(posedge clk) begin
		rx_temp <= MOSI;
end

endmodule