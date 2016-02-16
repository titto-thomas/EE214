
all: ghdl wave

ghdl: ../Adder/adder.vhd ../Adder/FA.vhd sub.vhd test_sub.vhd
	ghdl -a ../Adder/adder.vhd
	ghdl -a ../Adder/FA.vhd
	ghdl -a sub.vhd
	ghdl -a test_sub.vhd
	ghdl -m test_sub
	./test_sub --stop-time=81920ns --wave=plot.ghw

wave: plot.ghw
	gtkwave plot.ghw

.PHONY: clean

clean:
	rm -f *.o *.ghw *.cf test_adder
