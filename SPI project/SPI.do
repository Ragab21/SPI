vlib work
vlog SPI_Wrapper.v SPI_Wrapper_tb.v
vsim -voptargs=+acc work.SPI_Wr_tb
add wave *
run -all
#quit -sim