module SPI_Wrapper(MOSI,SS_n,clk,rst_n,MISO);
input MOSI,SS_n,clk,rst_n;
output MISO;

wire [9:0]rx_data;
wire tx_valid,rx_valid;
wire [7:0]dout;



RAM  ram_inst (.clk(clk),.rst_n(rst_n),
        .rx_valid(rx_valid),.din(rx_data),
        .dout(dout),.tx_valid(tx_valid)
    );



SPI spi_inst (.MOSI(MOSI),.SS_n(SS_n),.clk(clk),.rst_n(rst_n),
        .tx_data(dout),.tx_valid(tx_valid),.MISO(MISO),
        .rx_data(rx_data),.rx_valid(rx_valid)
    );




endmodule