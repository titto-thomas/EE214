
all: ghdl wave

ghdl: adder.vhd FA.vhd test_adder.vhd
	ghdl -a adder.vhd
	ghdl -a FA.vhd
	ghdl -a test_adder.vhd
	ghdl -m test_adder
	./test_adder --stop-time=81920ns --wave=plot.ghw

wave: plot.ghw
	gtkwave plot.ghw

.PHONY: clean

clean:
	rm -f *.o *.ghw *.cf test_adder
