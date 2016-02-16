
all: ghdl wave

ghdl: ./Adder/adder.vhd ./Adder/FA.vhd ./Sub/sub.vhd ./rShift/mux.vhd ./rShift/rshift.vhd ./lShift/lshift.vhd alu.vhd test_alu.vhd
	ghdl -a ./Adder/adder.vhd
	ghdl -a ./Adder/FA.vhd
	ghdl -a ./Sub/sub.vhd
	ghdl -a ./rShift/mux.vhd
	ghdl -a ./rShift/rshift.vhd
	ghdl -a ./lShift/lshift.vhd
	ghdl -a alu.vhd
	ghdl -a test_alu.vhd
	ghdl -m test_alu
	./test_alu --stop-time=169us --wave=plot.ghw

wave: plot.ghw
	gtkwave plot.ghw

.PHONY: clean

clean:
	rm -f *.o *.ghw *.cf test_alu
