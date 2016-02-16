
all: ghdl wave

ghdl: mux.vhd rshift.vhd test_rshift.vhd
	ghdl -a mux.vhd
	ghdl -a rshift.vhd
	ghdl -a test_rshift.vhd
	ghdl -m test_rshift
	./test_rshift --stop-time=5120ns --wave=plot.ghw

wave: plot.ghw
	gtkwave plot.ghw

.PHONY: clean

clean:
	rm -f *.o *.ghw *.cf test_rshift
