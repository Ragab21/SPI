module RAM(clk,rst_n,rx_valid,din,dout,tx_valid);
parameter MEM_DEPTH = 256;
parameter ADDR_SIZE = 8;
input clk,rst_n,rx_valid;
input [ADDR_SIZE+1:0]din;
output reg [ADDR_SIZE-1:0]dout;
output reg tx_valid;


reg [ADDR_SIZE-1:0]mem[MEM_DEPTH-1:0];
reg [ADDR_SIZE-1:0]temp_address;


always @(posedge clk) begin
	if (~rst_n) begin
		dout <= 0;
		tx_valid <= 0;
		temp_address <= 0;
	end
	else begin
		case(din[9:8])
			 2'b00 : if (rx_valid) begin
				temp_address <= din[ADDR_SIZE-1:0];
				tx_valid <= 0;
			end 
			 2'b01 : if (rx_valid) begin
				mem[temp_address] <= din[ADDR_SIZE-1:0];
				tx_valid <= 0;
			end 
			 2'b10 : begin
			 	if (rx_valid) begin
			 		temp_address <= din[ADDR_SIZE-1:0];
			 	end
			end
			 2'b11 : begin
				dout <= mem[temp_address];
				tx_valid <= 1;
			end
			default : tx_valid <= 0;
			
		endcase
	end

end


endmodule 