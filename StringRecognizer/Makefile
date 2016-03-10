
all: C ghdl wave

C: ./C/encoding.c
	gcc -o encoding encoding.c
ghdl: StringRecognizer.vhd test_StringRecognizer.vhd
	ghdl -a StringRecognizer.vhd
	ghdl -a test_StringRecognizer.vhd
	ghdl -m test_stringrecognizer
	./test_stringrecognizer --stop-time=100us --wave=plot.ghw

wave: plot.ghw
	gtkwave plot.ghw

.PHONY: clean

clean:
	rm -f *.o *.ghw *.cf output.txt scan.txt test_stringrecognizer ./C/encoding *.*~
