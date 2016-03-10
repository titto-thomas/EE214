transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/titto/Desktop/EE214/StringRecognizer/StringRecognizer.vhd}

vcom -93 -work work {/home/titto/Desktop/EE214/StringRecognizer/Quartus/../test_StringRecognizer.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  test_StringRecognizer

add wave *
view structure
view signals
run -all
