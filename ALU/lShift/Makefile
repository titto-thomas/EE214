
all: ghdl wave

ghdl: mux.vhd lshift.vhd test_lshift.vhd
	ghdl -a mux.vhd
	ghdl -a lshift.vhd
	ghdl -a test_lshift.vhd
	ghdl -m test_lshift
	./test_lshift --stop-time=5120ns --wave=plot.ghw

wave: plot.ghw
	gtkwave plot.ghw

.PHONY: clean

clean:
	rm -f *.o *.ghw *.cf test_lshift
