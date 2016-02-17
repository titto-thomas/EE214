transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {ALU.vho}

vcom -93 -work work {/home/titto/Desktop/EE214/ALU/Quartus/../test_alu.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=ALU_vhd.sdo -L maxv -L gate_work -L work -voptargs="+acc"  test_alu

add wave *
view structure
view signals
run -all
