module SPI_Wr_tb();

reg MOSI;
reg SS_n;
reg clk;
reg rst_n;
wire MISO;

 
SPI_Wrapper DUT (.MOSI(MOSI),.SS_n(SS_n),
        		.clk(clk),.rst_n(rst_n),.MISO(MISO)
    			);
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
	MOSI = 0;
    SS_n = 1;
    rst_n = 0;
    @(negedge clk);
    rst_n = 1;
    @(negedge clk);
    SS_n = 0;
    MOSI = 0;
    @(negedge clk);
    send_byte(10'h0FC);
    @(negedge clk);
    @(negedge clk);
    @(negedge clk);
    SS_n = 1;
    @(negedge clk);
    SS_n = 0;
    MOSI = 0;
    @(negedge clk);
    send_byte(10'h1B1);
    @(negedge clk);
    @(negedge clk);
    @(negedge clk);
    SS_n = 1;
    @(negedge clk);
    @(negedge clk);
    @(negedge clk);
    SS_n = 0;
    MOSI = 1;
    @(negedge clk);
    send_byte(10'h2FC);
    @(negedge clk);
    @(negedge clk);
    @(negedge clk);
    SS_n = 1;
    @(negedge clk);
    SS_n = 0;
    MOSI = 1;
    @(negedge clk);
    send_byte(10'h3BC);
    repeat(14) begin
        @(negedge clk);
    end
    
    SS_n = 1;
    $stop;
end

task send_bit(input reg data);
        begin
            MOSI = data;
            @(negedge clk); 
        end
    endtask

task send_byte(input [9:0] data);
        integer i;
        begin
            for (i = 9; i >= 0; i = i - 1) begin
                send_bit(data[i]);
            end
        end
    endtask

endmodule