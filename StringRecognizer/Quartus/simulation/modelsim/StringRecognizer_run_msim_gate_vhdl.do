transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {StringRecognizer.vho}

vcom -93 -work work {/home/titto/Desktop/EE214/StringRecognizer/Quartus/../test_StringRecognizer.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=StringRecognizer_vhd.sdo -L maxv -L gate_work -L work -voptargs="+acc"  test_StringRecognizer

add wave *
view structure
view signals
run -all
