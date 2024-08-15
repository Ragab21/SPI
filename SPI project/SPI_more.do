vlib work
vlog SPI_Wrapper.v SPI_Wrapper_tb.v
vsim -voptargs=+acc work.SPI_Wr_tb
add wave *
add wave -r /SPI_Wr_tb/DUT/ram_inst/dout
add wave -r /SPI_Wr_tb/DUT/ram_inst/din
add wave -r /SPI_Wr_tb/DUT/ram_inst/mem
add wave -r /SPI_Wr_tb/DUT/spi_inst/tx_valid
add wave -r /SPI_Wr_tb/DUT/spi_inst/tx_data
add wave -r /SPI_Wr_tb/DUT/spi_inst/rx_data
add wave -r /SPI_Wr_tb/DUT/spi_inst/rx_valid
add wave -r /SPI_Wr_tb/DUT/spi_inst/cs
add wave -r /SPI_Wr_tb/DUT/spi_inst/ns
add wave -r /SPI_Wr_tb/DUT/spi_inst/bit_count
add wave -r /SPI_Wr_tb/DUT/spi_inst/bit_count2
run -all
#quit -sim
