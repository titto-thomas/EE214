transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/titto/Desktop/EE214/ALU/rShift/mux.vhd}
vcom -93 -work work {/home/titto/Desktop/EE214/ALU/rShift/rshift.vhd}
vcom -93 -work work {/home/titto/Desktop/EE214/ALU/lShift/lshift.vhd}
vcom -93 -work work {/home/titto/Desktop/EE214/ALU/Sub/sub.vhd}
vcom -93 -work work {/home/titto/Desktop/EE214/ALU/Adder/adder.vhd}
vcom -93 -work work {/home/titto/Desktop/EE214/ALU/Adder/FA.vhd}
vcom -93 -work work {/home/titto/Desktop/EE214/ALU/alu.vhd}

vcom -93 -work work {/home/titto/Desktop/EE214/ALU/Quartus/../test_alu.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  test_alu

add wave *
view structure
view signals
run -all
