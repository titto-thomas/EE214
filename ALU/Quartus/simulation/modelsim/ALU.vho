-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "03/02/2016 14:50:07"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	alu IS
    PORT (
	InData1 : IN std_logic_vector(7 DOWNTO 0);
	InData2 : IN std_logic_vector(7 DOWNTO 0);
	ALUop : IN std_logic_vector(1 DOWNTO 0);
	OutData : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END alu;

-- Design Ports Information
-- OutData[0]	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- OutData[1]	=>  Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- OutData[2]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- OutData[3]	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- OutData[4]	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- OutData[5]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- OutData[6]	=>  Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- OutData[7]	=>  Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- InData1[0]	=>  Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- InData1[2]	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- InData2[1]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALUop[0]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- InData1[6]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- InData1[4]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- InData2[2]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- InData1[7]	=>  Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- InData1[3]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- InData1[5]	=>  Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- InData1[1]	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- InData2[0]	=>  Location: PIN_109,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALUop[1]	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- InData2[4]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- InData2[3]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- InData2[5]	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- InData2[6]	=>  Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- InData2[7]	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF alu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_InData1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_InData2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ALUop : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_OutData : std_logic_vector(7 DOWNTO 0);
SIGNAL \sub_inst|Subtract|bit1|S~20\ : std_logic;
SIGNAL \adder_inst|bit1|S~49\ : std_logic;
SIGNAL \OutData~1_combout\ : std_logic;
SIGNAL \OutData~0_combout\ : std_logic;
SIGNAL \OutData~2_combout\ : std_logic;
SIGNAL \rshift_inst|Mux21|Mout~0_combout\ : std_logic;
SIGNAL \rshift_inst|Mux21|Mout~1_combout\ : std_logic;
SIGNAL \rshift_inst|Mux21|Mout~2_combout\ : std_logic;
SIGNAL \OutData~3_combout\ : std_logic;
SIGNAL \OutData~4_combout\ : std_logic;
SIGNAL \rshift_inst|Mux22|Mout~0_combout\ : std_logic;
SIGNAL \rshift_inst|Mux22|Mout~1_combout\ : std_logic;
SIGNAL \OutData~5_combout\ : std_logic;
SIGNAL \sub_inst|Comp|bit1|S~0_combout\ : std_logic;
SIGNAL \sub_inst|Subtract|bit0|S~0_combout\ : std_logic;
SIGNAL \sub_inst|Subtract|bit1|S~22_cout0\ : std_logic;
SIGNAL \sub_inst|Subtract|bit1|S~22COUT1_31\ : std_logic;
SIGNAL \sub_inst|Subtract|bit1|S~0_combout\ : std_logic;
SIGNAL \OutData~6_combout\ : std_logic;
SIGNAL \lshift_inst|Mux21|Mout~0_combout\ : std_logic;
SIGNAL \lshift_inst|Mux31|Mout~0_combout\ : std_logic;
SIGNAL \OutData~7_combout\ : std_logic;
SIGNAL \adder_inst|bit1|S~51_cout0\ : std_logic;
SIGNAL \adder_inst|bit1|S~51COUT1_62\ : std_logic;
SIGNAL \adder_inst|bit1|S~0_combout\ : std_logic;
SIGNAL \adder_inst|bit1|S~5_combout\ : std_logic;
SIGNAL \adder_inst|bit1|S~2\ : std_logic;
SIGNAL \adder_inst|bit1|S~2COUT1_64\ : std_logic;
SIGNAL \adder_inst|bit1|S~7_combout\ : std_logic;
SIGNAL \OutData~8_combout\ : std_logic;
SIGNAL \lshift_inst|Mux22|Mout~0_combout\ : std_logic;
SIGNAL \lshift_inst|Mux21|Mout~1_combout\ : std_logic;
SIGNAL \sub_inst|Comp|bit2|S~0_combout\ : std_logic;
SIGNAL \sub_inst|Subtract|bit1|S~2\ : std_logic;
SIGNAL \sub_inst|Subtract|bit1|S~2COUT1_33\ : std_logic;
SIGNAL \sub_inst|Subtract|bit1|S~5_combout\ : std_logic;
SIGNAL \OutData~10_combout\ : std_logic;
SIGNAL \OutData~9_combout\ : std_logic;
SIGNAL \OutData~11_combout\ : std_logic;
SIGNAL \OutData~12_combout\ : std_logic;
SIGNAL \OutData~13_combout\ : std_logic;
SIGNAL \rshift_inst|Mux23|Mout~0_combout\ : std_logic;
SIGNAL \adder_inst|bit1|S~6_combout\ : std_logic;
SIGNAL \adder_inst|bit1|S~12_combout\ : std_logic;
SIGNAL \adder_inst|bit1|S~9\ : std_logic;
SIGNAL \adder_inst|bit1|S~9COUT1_66\ : std_logic;
SIGNAL \adder_inst|bit1|S~13_combout\ : std_logic;
SIGNAL \lshift_inst|Mux33|Mout~1_combout\ : std_logic;
SIGNAL \lshift_inst|Mux33|Mout~0_combout\ : std_logic;
SIGNAL \lshift_inst|Mux33|Mout~2_combout\ : std_logic;
SIGNAL \rshift_inst|Mux24|Mout~0_combout\ : std_logic;
SIGNAL \sub_inst|Comp|bit3|S~0_combout\ : std_logic;
SIGNAL \sub_inst|Subtract|bit1|S~7\ : std_logic;
SIGNAL \sub_inst|Subtract|bit1|S~7COUT1_35\ : std_logic;
SIGNAL \sub_inst|Subtract|bit1|S~10_combout\ : std_logic;
SIGNAL \OutData~14_combout\ : std_logic;
SIGNAL \OutData~15_combout\ : std_logic;
SIGNAL \adder_inst|bit1|S~18_combout\ : std_logic;
SIGNAL \adder_inst|bit1|S~15\ : std_logic;
SIGNAL \adder_inst|bit1|S~15COUT1_68\ : std_logic;
SIGNAL \adder_inst|bit1|S~19_combout\ : std_logic;
SIGNAL \lshift_inst|Mux23|Mout~0_combout\ : std_logic;
SIGNAL \rshift_inst|Mux34|Mout~0_combout\ : std_logic;
SIGNAL \rshift_inst|Mux34|Mout~1_combout\ : std_logic;
SIGNAL \sub_inst|Comp|bit3|Cout~0_combout\ : std_logic;
SIGNAL \sub_inst|Subtract|bit1|S~12\ : std_logic;
SIGNAL \sub_inst|Subtract|bit1|S~12COUT1_37\ : std_logic;
SIGNAL \sub_inst|Subtract|bit1|S~15_combout\ : std_logic;
SIGNAL \sub_inst|Subtract|bit4|S~0_combout\ : std_logic;
SIGNAL \OutData~16_combout\ : std_logic;
SIGNAL \lshift_inst|Mux26|Mout~0_combout\ : std_logic;
SIGNAL \lshift_inst|Mux24|Mout~0_combout\ : std_logic;
SIGNAL \OutData~17_combout\ : std_logic;
SIGNAL \adder_inst|bit1|S~24_combout\ : std_logic;
SIGNAL \adder_inst|bit1|S~25_combout\ : std_logic;
SIGNAL \lshift_inst|Mux25|Mout~0_combout\ : std_logic;
SIGNAL \sub_inst|Subtract|bit4|Cout~0_combout\ : std_logic;
SIGNAL \sub_inst|Comp|bit4|Cout~0_combout\ : std_logic;
SIGNAL \sub_inst|Subtract|bit5|S~0_combout\ : std_logic;
SIGNAL \rshift_inst|Mux25|Mout~0_combout\ : std_logic;
SIGNAL \OutData~18_combout\ : std_logic;
SIGNAL \OutData~19_combout\ : std_logic;
SIGNAL \adder_inst|bit1|S~26_combout\ : std_logic;
SIGNAL \adder_inst|bit1|S~21\ : std_logic;
SIGNAL \adder_inst|bit1|S~27_combout\ : std_logic;
SIGNAL \adder_inst|bit1|S~32_combout\ : std_logic;
SIGNAL \lshift_inst|Mux26|Mout~1_combout\ : std_logic;
SIGNAL \lshift_inst|Mux26|Mout~2_combout\ : std_logic;
SIGNAL \rshift_inst|Mux36|Mout~0_combout\ : std_logic;
SIGNAL \sub_inst|Comp|bit5|Cout~0_combout\ : std_logic;
SIGNAL \sub_inst|Subtract|bit5|Cout~0_combout\ : std_logic;
SIGNAL \sub_inst|Subtract|bit6|S~0_combout\ : std_logic;
SIGNAL \OutData~20_combout\ : std_logic;
SIGNAL \OutData~21_combout\ : std_logic;
SIGNAL \adder_inst|bit1|S~29\ : std_logic;
SIGNAL \adder_inst|bit1|S~29COUT1_70\ : std_logic;
SIGNAL \adder_inst|bit1|S~33_combout\ : std_logic;
SIGNAL \adder_inst|bit1|S~38_combout\ : std_logic;
SIGNAL \adder_inst|bit1|S~39_combout\ : std_logic;
SIGNAL \adder_inst|bit1|S~40_combout\ : std_logic;
SIGNAL \adder_inst|bit1|S~41_combout\ : std_logic;
SIGNAL \sub_inst|Subtract|bit7|S~0_combout\ : std_logic;
SIGNAL \sub_inst|Comp|bit6|S~0_combout\ : std_logic;
SIGNAL \sub_inst|Subtract|bit7|S~1_combout\ : std_logic;
SIGNAL \adder_inst|bit1|S~42_combout\ : std_logic;
SIGNAL \adder_inst|bit1|S~35\ : std_logic;
SIGNAL \adder_inst|bit1|S~35COUT1_72\ : std_logic;
SIGNAL \adder_inst|bit1|S~43_combout\ : std_logic;
SIGNAL \adder_inst|bit1|S~48_combout\ : std_logic;
SIGNAL \ALUop~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \InData2~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \InData1~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_InData1 <= InData1;
ww_InData2 <= InData2;
ww_ALUop <= ALUop;
OutData <= ww_OutData;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_109,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\InData2[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_InData2(0),
	combout => \InData2~combout\(0));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ALUop[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ALUop(1),
	combout => \ALUop~combout\(1));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\InData1[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_InData1(4),
	combout => \InData1~combout\(4));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\InData1[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_InData1(6),
	combout => \InData1~combout\(6));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\InData2[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_InData2(1),
	combout => \InData2~combout\(1));

-- Location: LC_X14_Y7_N5
\OutData~1\ : maxv_lcell
-- Equation(s):
-- \OutData~1_combout\ = (\InData2~combout\(1) & (((\InData1~combout\(6))))) # (!\InData2~combout\(1) & (\InData1~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData1~combout\(4),
	datab => \InData1~combout\(6),
	datac => \InData2~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \OutData~1_combout\);

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ALUop[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ALUop(0),
	combout => \ALUop~combout\(0));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\InData2[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_InData2(2),
	combout => \InData2~combout\(2));

-- Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\InData1[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_InData1(0),
	combout => \InData1~combout\(0));

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\InData1[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_InData1(2),
	combout => \InData1~combout\(2));

-- Location: LC_X14_Y7_N1
\OutData~0\ : maxv_lcell
-- Equation(s):
-- \OutData~0_combout\ = (\InData2~combout\(1) & (((\InData1~combout\(2) & !\ALUop~combout\(0))))) # (!\InData2~combout\(1) & (\InData1~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0aca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData1~combout\(0),
	datab => \InData1~combout\(2),
	datac => \InData2~combout\(1),
	datad => \ALUop~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \OutData~0_combout\);

-- Location: LC_X14_Y7_N6
\OutData~2\ : maxv_lcell
-- Equation(s):
-- \OutData~2_combout\ = (\InData2~combout\(2) & (\OutData~1_combout\ & (!\ALUop~combout\(0)))) # (!\InData2~combout\(2) & (((\OutData~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2f20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OutData~1_combout\,
	datab => \ALUop~combout\(0),
	datac => \InData2~combout\(2),
	datad => \OutData~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \OutData~2_combout\);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\InData1[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_InData1(3),
	combout => \InData1~combout\(3));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\InData1[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_InData1(7),
	combout => \InData1~combout\(7));

-- Location: LC_X10_Y7_N9
\rshift_inst|Mux21|Mout~0\ : maxv_lcell
-- Equation(s):
-- \rshift_inst|Mux21|Mout~0_combout\ = ((\InData2~combout\(2) & ((\InData1~combout\(7)))) # (!\InData2~combout\(2) & (\InData1~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \InData2~combout\(2),
	datac => \InData1~combout\(3),
	datad => \InData1~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rshift_inst|Mux21|Mout~0_combout\);

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\InData1[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_InData1(5),
	combout => \InData1~combout\(5));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\InData1[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_InData1(1),
	combout => \InData1~combout\(1));

-- Location: LC_X10_Y7_N7
\rshift_inst|Mux21|Mout~1\ : maxv_lcell
-- Equation(s):
-- \rshift_inst|Mux21|Mout~1_combout\ = ((\InData2~combout\(2) & (\InData1~combout\(5))) # (!\InData2~combout\(2) & ((\InData1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData1~combout\(5),
	datac => \InData2~combout\(2),
	datad => \InData1~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rshift_inst|Mux21|Mout~1_combout\);

-- Location: LC_X10_Y7_N8
\rshift_inst|Mux21|Mout~2\ : maxv_lcell
-- Equation(s):
-- \rshift_inst|Mux21|Mout~2_combout\ = (\InData2~combout\(1) & (\rshift_inst|Mux21|Mout~0_combout\)) # (!\InData2~combout\(1) & (((\rshift_inst|Mux21|Mout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData2~combout\(1),
	datab => \rshift_inst|Mux21|Mout~0_combout\,
	datad => \rshift_inst|Mux21|Mout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rshift_inst|Mux21|Mout~2_combout\);

-- Location: LC_X14_Y7_N7
\OutData~3\ : maxv_lcell
-- Equation(s):
-- \OutData~3_combout\ = (\InData2~combout\(0) & (((!\ALUop~combout\(0) & \rshift_inst|Mux21|Mout~2_combout\)))) # (!\InData2~combout\(0) & (\OutData~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OutData~2_combout\,
	datab => \ALUop~combout\(0),
	datac => \rshift_inst|Mux21|Mout~2_combout\,
	datad => \InData2~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \OutData~3_combout\);

-- Location: LC_X8_Y10_N6
\OutData~4\ : maxv_lcell
-- Equation(s):
-- \OutData~4_combout\ = (\ALUop~combout\(1) & (((\OutData~3_combout\)))) # (!\ALUop~combout\(1) & (\InData2~combout\(0) $ (((\InData1~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d1e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData2~combout\(0),
	datab => \ALUop~combout\(1),
	datac => \OutData~3_combout\,
	datad => \InData1~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \OutData~4_combout\);

-- Location: LC_X13_Y8_N9
\rshift_inst|Mux22|Mout~0\ : maxv_lcell
-- Equation(s):
-- \rshift_inst|Mux22|Mout~0_combout\ = (\InData2~combout\(2) & (((\InData1~combout\(6))))) # (!\InData2~combout\(2) & (\InData1~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData2~combout\(2),
	datab => \InData1~combout\(2),
	datac => \InData1~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rshift_inst|Mux22|Mout~0_combout\);

-- Location: LC_X13_Y8_N8
\rshift_inst|Mux22|Mout~1\ : maxv_lcell
-- Equation(s):
-- \rshift_inst|Mux22|Mout~1_combout\ = (\InData2~combout\(1) & (!\InData2~combout\(2) & (\InData1~combout\(4)))) # (!\InData2~combout\(1) & (((\rshift_inst|Mux22|Mout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "44f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData2~combout\(2),
	datab => \InData1~combout\(4),
	datac => \rshift_inst|Mux22|Mout~0_combout\,
	datad => \InData2~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rshift_inst|Mux22|Mout~1_combout\);

-- Location: LC_X11_Y9_N2
\OutData~5\ : maxv_lcell
-- Equation(s):
-- \OutData~5_combout\ = ((\ALUop~combout\(0) & ((\ALUop~combout\(1)))) # (!\ALUop~combout\(0) & (\InData2~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \InData2~combout\(0),
	datac => \ALUop~combout\(0),
	datad => \ALUop~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \OutData~5_combout\);

-- Location: LC_X16_Y7_N3
\sub_inst|Comp|bit1|S~0\ : maxv_lcell
-- Equation(s):
-- \sub_inst|Comp|bit1|S~0_combout\ = ((\InData2~combout\(1) $ (\InData2~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \InData2~combout\(1),
	datad => \InData2~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sub_inst|Comp|bit1|S~0_combout\);

-- Location: LC_X16_Y7_N1
\sub_inst|Subtract|bit0|S~0\ : maxv_lcell
-- Equation(s):
-- \sub_inst|Subtract|bit0|S~0_combout\ = ((\InData2~combout\(0) & (\InData1~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \InData2~combout\(0),
	datac => \InData1~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sub_inst|Subtract|bit0|S~0_combout\);

-- Location: LC_X16_Y7_N5
\sub_inst|Subtract|bit1|S~22\ : maxv_lcell
-- Equation(s):
-- \sub_inst|Subtract|bit1|S~22_cout0\ = CARRY((\InData1~combout\(1)))
-- \sub_inst|Subtract|bit1|S~22COUT1_31\ = CARRY((\InData1~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData1~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sub_inst|Subtract|bit1|S~20\,
	cout0 => \sub_inst|Subtract|bit1|S~22_cout0\,
	cout1 => \sub_inst|Subtract|bit1|S~22COUT1_31\);

-- Location: LC_X16_Y7_N6
\sub_inst|Subtract|bit1|S~0\ : maxv_lcell
-- Equation(s):
-- \sub_inst|Subtract|bit1|S~0_combout\ = \sub_inst|Comp|bit1|S~0_combout\ $ (\sub_inst|Subtract|bit0|S~0_combout\ $ ((\sub_inst|Subtract|bit1|S~22_cout0\)))
-- \sub_inst|Subtract|bit1|S~2\ = CARRY((\sub_inst|Comp|bit1|S~0_combout\ & (!\sub_inst|Subtract|bit0|S~0_combout\ & !\sub_inst|Subtract|bit1|S~22_cout0\)) # (!\sub_inst|Comp|bit1|S~0_combout\ & ((!\sub_inst|Subtract|bit1|S~22_cout0\) # 
-- (!\sub_inst|Subtract|bit0|S~0_combout\))))
-- \sub_inst|Subtract|bit1|S~2COUT1_33\ = CARRY((\sub_inst|Comp|bit1|S~0_combout\ & (!\sub_inst|Subtract|bit0|S~0_combout\ & !\sub_inst|Subtract|bit1|S~22COUT1_31\)) # (!\sub_inst|Comp|bit1|S~0_combout\ & ((!\sub_inst|Subtract|bit1|S~22COUT1_31\) # 
-- (!\sub_inst|Subtract|bit0|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sub_inst|Comp|bit1|S~0_combout\,
	datab => \sub_inst|Subtract|bit0|S~0_combout\,
	cin0 => \sub_inst|Subtract|bit1|S~22_cout0\,
	cin1 => \sub_inst|Subtract|bit1|S~22COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sub_inst|Subtract|bit1|S~0_combout\,
	cout0 => \sub_inst|Subtract|bit1|S~2\,
	cout1 => \sub_inst|Subtract|bit1|S~2COUT1_33\);

-- Location: LC_X11_Y9_N7
\OutData~6\ : maxv_lcell
-- Equation(s):
-- \OutData~6_combout\ = (\OutData~5_combout\ & (((\ALUop~combout\(0))))) # (!\OutData~5_combout\ & ((\ALUop~combout\(0) & ((\sub_inst|Subtract|bit1|S~0_combout\))) # (!\ALUop~combout\(0) & (\rshift_inst|Mux21|Mout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2c2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rshift_inst|Mux21|Mout~2_combout\,
	datab => \OutData~5_combout\,
	datac => \ALUop~combout\(0),
	datad => \sub_inst|Subtract|bit1|S~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \OutData~6_combout\);

-- Location: LC_X8_Y10_N1
\lshift_inst|Mux21|Mout~0\ : maxv_lcell
-- Equation(s):
-- \lshift_inst|Mux21|Mout~0_combout\ = (!\InData2~combout\(2) & (((!\InData2~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData2~combout\(2),
	datac => \InData2~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lshift_inst|Mux21|Mout~0_combout\);

-- Location: LC_X8_Y10_N3
\lshift_inst|Mux31|Mout~0\ : maxv_lcell
-- Equation(s):
-- \lshift_inst|Mux31|Mout~0_combout\ = (\lshift_inst|Mux21|Mout~0_combout\ & ((\InData2~combout\(0) & ((\InData1~combout\(0)))) # (!\InData2~combout\(0) & (\InData1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c840",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData2~combout\(0),
	datab => \lshift_inst|Mux21|Mout~0_combout\,
	datac => \InData1~combout\(1),
	datad => \InData1~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lshift_inst|Mux31|Mout~0_combout\);

-- Location: LC_X11_Y9_N4
\OutData~7\ : maxv_lcell
-- Equation(s):
-- \OutData~7_combout\ = (\OutData~6_combout\ & (((\lshift_inst|Mux31|Mout~0_combout\) # (!\OutData~5_combout\)))) # (!\OutData~6_combout\ & (\rshift_inst|Mux22|Mout~1_combout\ & ((\OutData~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rshift_inst|Mux22|Mout~1_combout\,
	datab => \OutData~6_combout\,
	datac => \lshift_inst|Mux31|Mout~0_combout\,
	datad => \OutData~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \OutData~7_combout\);

-- Location: LC_X13_Y8_N0
\adder_inst|bit1|S~51\ : maxv_lcell
-- Equation(s):
-- \adder_inst|bit1|S~51_cout0\ = CARRY((\InData1~combout\(1)))
-- \adder_inst|bit1|S~51COUT1_62\ = CARRY((\InData1~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData1~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder_inst|bit1|S~49\,
	cout0 => \adder_inst|bit1|S~51_cout0\,
	cout1 => \adder_inst|bit1|S~51COUT1_62\);

-- Location: LC_X13_Y8_N1
\adder_inst|bit1|S~0\ : maxv_lcell
-- Equation(s):
-- \adder_inst|bit1|S~0_combout\ = \sub_inst|Subtract|bit0|S~0_combout\ $ (\InData2~combout\(1) $ ((\adder_inst|bit1|S~51_cout0\)))
-- \adder_inst|bit1|S~2\ = CARRY((\sub_inst|Subtract|bit0|S~0_combout\ & (!\InData2~combout\(1) & !\adder_inst|bit1|S~51_cout0\)) # (!\sub_inst|Subtract|bit0|S~0_combout\ & ((!\adder_inst|bit1|S~51_cout0\) # (!\InData2~combout\(1)))))
-- \adder_inst|bit1|S~2COUT1_64\ = CARRY((\sub_inst|Subtract|bit0|S~0_combout\ & (!\InData2~combout\(1) & !\adder_inst|bit1|S~51COUT1_62\)) # (!\sub_inst|Subtract|bit0|S~0_combout\ & ((!\adder_inst|bit1|S~51COUT1_62\) # (!\InData2~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sub_inst|Subtract|bit0|S~0_combout\,
	datab => \InData2~combout\(1),
	cin0 => \adder_inst|bit1|S~51_cout0\,
	cin1 => \adder_inst|bit1|S~51COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder_inst|bit1|S~0_combout\,
	cout0 => \adder_inst|bit1|S~2\,
	cout1 => \adder_inst|bit1|S~2COUT1_64\);

-- Location: LC_X11_Y9_N8
\adder_inst|bit1|S~5\ : maxv_lcell
-- Equation(s):
-- \adder_inst|bit1|S~5_combout\ = (\ALUop~combout\(0) & (\OutData~7_combout\)) # (!\ALUop~combout\(0) & ((\ALUop~combout\(1) & (\OutData~7_combout\)) # (!\ALUop~combout\(1) & ((\adder_inst|bit1|S~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OutData~7_combout\,
	datab => \adder_inst|bit1|S~0_combout\,
	datac => \ALUop~combout\(0),
	datad => \ALUop~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder_inst|bit1|S~5_combout\);

-- Location: LC_X13_Y8_N2
\adder_inst|bit1|S~7\ : maxv_lcell
-- Equation(s):
-- \adder_inst|bit1|S~7_combout\ = \InData2~combout\(2) $ (\InData1~combout\(2) $ ((!\adder_inst|bit1|S~2\)))
-- \adder_inst|bit1|S~9\ = CARRY((\InData2~combout\(2) & ((\InData1~combout\(2)) # (!\adder_inst|bit1|S~2\))) # (!\InData2~combout\(2) & (\InData1~combout\(2) & !\adder_inst|bit1|S~2\)))
-- \adder_inst|bit1|S~9COUT1_66\ = CARRY((\InData2~combout\(2) & ((\InData1~combout\(2)) # (!\adder_inst|bit1|S~2COUT1_64\))) # (!\InData2~combout\(2) & (\InData1~combout\(2) & !\adder_inst|bit1|S~2COUT1_64\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData2~combout\(2),
	datab => \InData1~combout\(2),
	cin0 => \adder_inst|bit1|S~2\,
	cin1 => \adder_inst|bit1|S~2COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder_inst|bit1|S~7_combout\,
	cout0 => \adder_inst|bit1|S~9\,
	cout1 => \adder_inst|bit1|S~9COUT1_66\);

-- Location: LC_X11_Y9_N1
\OutData~8\ : maxv_lcell
-- Equation(s):
-- \OutData~8_combout\ = (((\ALUop~combout\(0) & \ALUop~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALUop~combout\(0),
	datad => \ALUop~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \OutData~8_combout\);

-- Location: LC_X8_Y10_N9
\lshift_inst|Mux22|Mout~0\ : maxv_lcell
-- Equation(s):
-- \lshift_inst|Mux22|Mout~0_combout\ = (!\InData2~combout\(2) & ((\InData2~combout\(1) & (\InData1~combout\(0))) # (!\InData2~combout\(1) & ((\InData1~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4540",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData2~combout\(2),
	datab => \InData1~combout\(0),
	datac => \InData2~combout\(1),
	datad => \InData1~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lshift_inst|Mux22|Mout~0_combout\);

-- Location: LC_X8_Y10_N4
\lshift_inst|Mux21|Mout~1\ : maxv_lcell
-- Equation(s):
-- \lshift_inst|Mux21|Mout~1_combout\ = (!\InData2~combout\(2) & (\InData1~combout\(1) & (!\InData2~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData2~combout\(2),
	datab => \InData1~combout\(1),
	datac => \InData2~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lshift_inst|Mux21|Mout~1_combout\);

-- Location: LC_X16_Y7_N4
\sub_inst|Comp|bit2|S~0\ : maxv_lcell
-- Equation(s):
-- \sub_inst|Comp|bit2|S~0_combout\ = \InData2~combout\(2) $ ((((\InData2~combout\(1)) # (\InData2~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "555a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData2~combout\(2),
	datac => \InData2~combout\(1),
	datad => \InData2~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sub_inst|Comp|bit2|S~0_combout\);

-- Location: LC_X16_Y7_N7
\sub_inst|Subtract|bit1|S~5\ : maxv_lcell
-- Equation(s):
-- \sub_inst|Subtract|bit1|S~5_combout\ = \sub_inst|Comp|bit2|S~0_combout\ $ (\InData1~combout\(2) $ ((!\sub_inst|Subtract|bit1|S~2\)))
-- \sub_inst|Subtract|bit1|S~7\ = CARRY((\sub_inst|Comp|bit2|S~0_combout\ & ((\InData1~combout\(2)) # (!\sub_inst|Subtract|bit1|S~2\))) # (!\sub_inst|Comp|bit2|S~0_combout\ & (\InData1~combout\(2) & !\sub_inst|Subtract|bit1|S~2\)))
-- \sub_inst|Subtract|bit1|S~7COUT1_35\ = CARRY((\sub_inst|Comp|bit2|S~0_combout\ & ((\InData1~combout\(2)) # (!\sub_inst|Subtract|bit1|S~2COUT1_33\))) # (!\sub_inst|Comp|bit2|S~0_combout\ & (\InData1~combout\(2) & !\sub_inst|Subtract|bit1|S~2COUT1_33\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sub_inst|Comp|bit2|S~0_combout\,
	datab => \InData1~combout\(2),
	cin0 => \sub_inst|Subtract|bit1|S~2\,
	cin1 => \sub_inst|Subtract|bit1|S~2COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sub_inst|Subtract|bit1|S~5_combout\,
	cout0 => \sub_inst|Subtract|bit1|S~7\,
	cout1 => \sub_inst|Subtract|bit1|S~7COUT1_35\);

-- Location: LC_X15_Y8_N1
\OutData~10\ : maxv_lcell
-- Equation(s):
-- \OutData~10_combout\ = (\ALUop~combout\(0) & (((\InData2~combout\(0)) # (!\ALUop~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUop~combout\(0),
	datac => \InData2~combout\(0),
	datad => \ALUop~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \OutData~10_combout\);

-- Location: LC_X13_Y6_N8
\OutData~9\ : maxv_lcell
-- Equation(s):
-- \OutData~9_combout\ = (\ALUop~combout\(0) $ (((!\ALUop~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc33",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALUop~combout\(0),
	datad => \ALUop~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \OutData~9_combout\);

-- Location: LC_X13_Y6_N7
\OutData~11\ : maxv_lcell
-- Equation(s):
-- \OutData~11_combout\ = (\OutData~10_combout\ & ((\sub_inst|Subtract|bit1|S~5_combout\) # ((\OutData~9_combout\)))) # (!\OutData~10_combout\ & (((\rshift_inst|Mux22|Mout~1_combout\ & !\OutData~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sub_inst|Subtract|bit1|S~5_combout\,
	datab => \rshift_inst|Mux22|Mout~1_combout\,
	datac => \OutData~10_combout\,
	datad => \OutData~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \OutData~11_combout\);

-- Location: LC_X8_Y10_N8
\OutData~12\ : maxv_lcell
-- Equation(s):
-- \OutData~12_combout\ = (\OutData~8_combout\ & ((\OutData~11_combout\ & ((\lshift_inst|Mux21|Mout~1_combout\))) # (!\OutData~11_combout\ & (\lshift_inst|Mux22|Mout~0_combout\)))) # (!\OutData~8_combout\ & (((\OutData~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OutData~8_combout\,
	datab => \lshift_inst|Mux22|Mout~0_combout\,
	datac => \lshift_inst|Mux21|Mout~1_combout\,
	datad => \OutData~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \OutData~12_combout\);

-- Location: LC_X15_Y8_N4
\OutData~13\ : maxv_lcell
-- Equation(s):
-- \OutData~13_combout\ = (!\ALUop~combout\(0) & (((\InData2~combout\(0) & \ALUop~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUop~combout\(0),
	datac => \InData2~combout\(0),
	datad => \ALUop~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \OutData~13_combout\);

-- Location: LC_X10_Y7_N3
\rshift_inst|Mux23|Mout~0\ : maxv_lcell
-- Equation(s):
-- \rshift_inst|Mux23|Mout~0_combout\ = (\InData2~combout\(1) & (\InData1~combout\(5) & (!\InData2~combout\(2)))) # (!\InData2~combout\(1) & (((\rshift_inst|Mux21|Mout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2f20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData1~combout\(5),
	datab => \InData2~combout\(2),
	datac => \InData2~combout\(1),
	datad => \rshift_inst|Mux21|Mout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rshift_inst|Mux23|Mout~0_combout\);

-- Location: LC_X15_Y8_N5
\adder_inst|bit1|S~6\ : maxv_lcell
-- Equation(s):
-- \adder_inst|bit1|S~6_combout\ = ((\OutData~13_combout\ & ((\rshift_inst|Mux23|Mout~0_combout\))) # (!\OutData~13_combout\ & (\OutData~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OutData~12_combout\,
	datac => \OutData~13_combout\,
	datad => \rshift_inst|Mux23|Mout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder_inst|bit1|S~6_combout\);

-- Location: LC_X11_Y9_N6
\adder_inst|bit1|S~12\ : maxv_lcell
-- Equation(s):
-- \adder_inst|bit1|S~12_combout\ = (\ALUop~combout\(0) & (((\adder_inst|bit1|S~6_combout\)))) # (!\ALUop~combout\(0) & ((\ALUop~combout\(1) & ((\adder_inst|bit1|S~6_combout\))) # (!\ALUop~combout\(1) & (\adder_inst|bit1|S~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUop~combout\(0),
	datab => \adder_inst|bit1|S~7_combout\,
	datac => \adder_inst|bit1|S~6_combout\,
	datad => \ALUop~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder_inst|bit1|S~12_combout\);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\InData2[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_InData2(3),
	combout => \InData2~combout\(3));

-- Location: LC_X13_Y8_N3
\adder_inst|bit1|S~13\ : maxv_lcell
-- Equation(s):
-- \adder_inst|bit1|S~13_combout\ = \InData2~combout\(3) $ (\InData1~combout\(3) $ ((\adder_inst|bit1|S~9\)))
-- \adder_inst|bit1|S~15\ = CARRY((\InData2~combout\(3) & (!\InData1~combout\(3) & !\adder_inst|bit1|S~9\)) # (!\InData2~combout\(3) & ((!\adder_inst|bit1|S~9\) # (!\InData1~combout\(3)))))
-- \adder_inst|bit1|S~15COUT1_68\ = CARRY((\InData2~combout\(3) & (!\InData1~combout\(3) & !\adder_inst|bit1|S~9COUT1_66\)) # (!\InData2~combout\(3) & ((!\adder_inst|bit1|S~9COUT1_66\) # (!\InData1~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData2~combout\(3),
	datab => \InData1~combout\(3),
	cin0 => \adder_inst|bit1|S~9\,
	cin1 => \adder_inst|bit1|S~9COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder_inst|bit1|S~13_combout\,
	cout0 => \adder_inst|bit1|S~15\,
	cout1 => \adder_inst|bit1|S~15COUT1_68\);

-- Location: LC_X8_Y10_N2
\lshift_inst|Mux33|Mout~1\ : maxv_lcell
-- Equation(s):
-- \lshift_inst|Mux33|Mout~1_combout\ = ((\InData2~combout\(1) & (\InData1~combout\(1))) # (!\InData2~combout\(1) & ((\InData1~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \InData1~combout\(1),
	datac => \InData2~combout\(1),
	datad => \InData1~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lshift_inst|Mux33|Mout~1_combout\);

-- Location: LC_X8_Y10_N7
\lshift_inst|Mux33|Mout~0\ : maxv_lcell
-- Equation(s):
-- \lshift_inst|Mux33|Mout~0_combout\ = ((\InData2~combout\(1) & ((\InData1~combout\(0)))) # (!\InData2~combout\(1) & (\InData1~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData1~combout\(2),
	datac => \InData2~combout\(1),
	datad => \InData1~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lshift_inst|Mux33|Mout~0_combout\);

-- Location: LC_X8_Y10_N5
\lshift_inst|Mux33|Mout~2\ : maxv_lcell
-- Equation(s):
-- \lshift_inst|Mux33|Mout~2_combout\ = (!\InData2~combout\(2) & ((\InData2~combout\(0) & ((\lshift_inst|Mux33|Mout~0_combout\))) # (!\InData2~combout\(0) & (\lshift_inst|Mux33|Mout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5044",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData2~combout\(2),
	datab => \lshift_inst|Mux33|Mout~1_combout\,
	datac => \lshift_inst|Mux33|Mout~0_combout\,
	datad => \InData2~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lshift_inst|Mux33|Mout~2_combout\);

-- Location: LC_X11_Y9_N0
\rshift_inst|Mux24|Mout~0\ : maxv_lcell
-- Equation(s):
-- \rshift_inst|Mux24|Mout~0_combout\ = (!\InData2~combout\(2) & ((\InData2~combout\(1) & (\InData1~combout\(6))) # (!\InData2~combout\(1) & ((\InData1~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4450",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData2~combout\(2),
	datab => \InData1~combout\(6),
	datac => \InData1~combout\(4),
	datad => \InData2~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rshift_inst|Mux24|Mout~0_combout\);

-- Location: LC_X16_Y7_N2
\sub_inst|Comp|bit3|S~0\ : maxv_lcell
-- Equation(s):
-- \sub_inst|Comp|bit3|S~0_combout\ = \InData2~combout\(3) $ (((\InData2~combout\(2)) # ((\InData2~combout\(1)) # (\InData2~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3336",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData2~combout\(2),
	datab => \InData2~combout\(3),
	datac => \InData2~combout\(1),
	datad => \InData2~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sub_inst|Comp|bit3|S~0_combout\);

-- Location: LC_X16_Y7_N8
\sub_inst|Subtract|bit1|S~10\ : maxv_lcell
-- Equation(s):
-- \sub_inst|Subtract|bit1|S~10_combout\ = \InData1~combout\(3) $ (\sub_inst|Comp|bit3|S~0_combout\ $ ((\sub_inst|Subtract|bit1|S~7\)))
-- \sub_inst|Subtract|bit1|S~12\ = CARRY((\InData1~combout\(3) & (!\sub_inst|Comp|bit3|S~0_combout\ & !\sub_inst|Subtract|bit1|S~7\)) # (!\InData1~combout\(3) & ((!\sub_inst|Subtract|bit1|S~7\) # (!\sub_inst|Comp|bit3|S~0_combout\))))
-- \sub_inst|Subtract|bit1|S~12COUT1_37\ = CARRY((\InData1~combout\(3) & (!\sub_inst|Comp|bit3|S~0_combout\ & !\sub_inst|Subtract|bit1|S~7COUT1_35\)) # (!\InData1~combout\(3) & ((!\sub_inst|Subtract|bit1|S~7COUT1_35\) # (!\sub_inst|Comp|bit3|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData1~combout\(3),
	datab => \sub_inst|Comp|bit3|S~0_combout\,
	cin0 => \sub_inst|Subtract|bit1|S~7\,
	cin1 => \sub_inst|Subtract|bit1|S~7COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sub_inst|Subtract|bit1|S~10_combout\,
	cout0 => \sub_inst|Subtract|bit1|S~12\,
	cout1 => \sub_inst|Subtract|bit1|S~12COUT1_37\);

-- Location: LC_X11_Y9_N3
\OutData~14\ : maxv_lcell
-- Equation(s):
-- \OutData~14_combout\ = (\ALUop~combout\(0) & ((\sub_inst|Subtract|bit1|S~10_combout\) # ((\OutData~5_combout\)))) # (!\ALUop~combout\(0) & (((\rshift_inst|Mux23|Mout~0_combout\ & !\OutData~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sub_inst|Subtract|bit1|S~10_combout\,
	datab => \rshift_inst|Mux23|Mout~0_combout\,
	datac => \ALUop~combout\(0),
	datad => \OutData~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \OutData~14_combout\);

-- Location: LC_X11_Y9_N9
\OutData~15\ : maxv_lcell
-- Equation(s):
-- \OutData~15_combout\ = (\OutData~5_combout\ & ((\OutData~14_combout\ & (\lshift_inst|Mux33|Mout~2_combout\)) # (!\OutData~14_combout\ & ((\rshift_inst|Mux24|Mout~0_combout\))))) # (!\OutData~5_combout\ & (((\OutData~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_inst|Mux33|Mout~2_combout\,
	datab => \OutData~5_combout\,
	datac => \rshift_inst|Mux24|Mout~0_combout\,
	datad => \OutData~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \OutData~15_combout\);

-- Location: LC_X11_Y9_N5
\adder_inst|bit1|S~18\ : maxv_lcell
-- Equation(s):
-- \adder_inst|bit1|S~18_combout\ = (\ALUop~combout\(0) & (((\OutData~15_combout\)))) # (!\ALUop~combout\(0) & ((\ALUop~combout\(1) & ((\OutData~15_combout\))) # (!\ALUop~combout\(1) & (\adder_inst|bit1|S~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder_inst|bit1|S~13_combout\,
	datab => \OutData~15_combout\,
	datac => \ALUop~combout\(0),
	datad => \ALUop~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder_inst|bit1|S~18_combout\);

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\InData2[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_InData2(4),
	combout => \InData2~combout\(4));

-- Location: LC_X13_Y8_N4
\adder_inst|bit1|S~19\ : maxv_lcell
-- Equation(s):
-- \adder_inst|bit1|S~19_combout\ = \InData2~combout\(4) $ (\InData1~combout\(4) $ ((!\adder_inst|bit1|S~15\)))
-- \adder_inst|bit1|S~21\ = CARRY((\InData2~combout\(4) & ((\InData1~combout\(4)) # (!\adder_inst|bit1|S~15COUT1_68\))) # (!\InData2~combout\(4) & (\InData1~combout\(4) & !\adder_inst|bit1|S~15COUT1_68\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData2~combout\(4),
	datab => \InData1~combout\(4),
	cin0 => \adder_inst|bit1|S~15\,
	cin1 => \adder_inst|bit1|S~15COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder_inst|bit1|S~19_combout\,
	cout => \adder_inst|bit1|S~21\);

-- Location: LC_X10_Y7_N5
\lshift_inst|Mux23|Mout~0\ : maxv_lcell
-- Equation(s):
-- \lshift_inst|Mux23|Mout~0_combout\ = (!\InData2~combout\(2) & ((\InData2~combout\(1) & ((\InData1~combout\(1)))) # (!\InData2~combout\(1) & (\InData1~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData1~combout\(3),
	datab => \InData2~combout\(2),
	datac => \InData2~combout\(1),
	datad => \InData1~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lshift_inst|Mux23|Mout~0_combout\);

-- Location: LC_X10_Y7_N6
\rshift_inst|Mux34|Mout~0\ : maxv_lcell
-- Equation(s):
-- \rshift_inst|Mux34|Mout~0_combout\ = ((\InData2~combout\(1) & ((\InData1~combout\(7)))) # (!\InData2~combout\(1) & (\InData1~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData1~combout\(5),
	datac => \InData2~combout\(1),
	datad => \InData1~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rshift_inst|Mux34|Mout~0_combout\);

-- Location: LC_X14_Y7_N8
\rshift_inst|Mux34|Mout~1\ : maxv_lcell
-- Equation(s):
-- \rshift_inst|Mux34|Mout~1_combout\ = (!\InData2~combout\(2) & ((\InData2~combout\(0) & ((\rshift_inst|Mux34|Mout~0_combout\))) # (!\InData2~combout\(0) & (\OutData~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OutData~1_combout\,
	datab => \rshift_inst|Mux34|Mout~0_combout\,
	datac => \InData2~combout\(2),
	datad => \InData2~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rshift_inst|Mux34|Mout~1_combout\);

-- Location: LC_X16_Y7_N0
\sub_inst|Comp|bit3|Cout~0\ : maxv_lcell
-- Equation(s):
-- \sub_inst|Comp|bit3|Cout~0_combout\ = (\InData2~combout\(2)) # ((\InData2~combout\(3)) # ((\InData2~combout\(1)) # (\InData2~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData2~combout\(2),
	datab => \InData2~combout\(3),
	datac => \InData2~combout\(1),
	datad => \InData2~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sub_inst|Comp|bit3|Cout~0_combout\);

-- Location: LC_X16_Y7_N9
\sub_inst|Subtract|bit1|S~15\ : maxv_lcell
-- Equation(s):
-- \sub_inst|Subtract|bit1|S~15_combout\ = (((!\sub_inst|Subtract|bit1|S~12\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \sub_inst|Subtract|bit1|S~12\,
	cin1 => \sub_inst|Subtract|bit1|S~12COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sub_inst|Subtract|bit1|S~15_combout\);

-- Location: LC_X15_Y7_N9
\sub_inst|Subtract|bit4|S~0\ : maxv_lcell
-- Equation(s):
-- \sub_inst|Subtract|bit4|S~0_combout\ = \InData2~combout\(4) $ (\InData1~combout\(4) $ (\sub_inst|Comp|bit3|Cout~0_combout\ $ (\sub_inst|Subtract|bit1|S~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData2~combout\(4),
	datab => \InData1~combout\(4),
	datac => \sub_inst|Comp|bit3|Cout~0_combout\,
	datad => \sub_inst|Subtract|bit1|S~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sub_inst|Subtract|bit4|S~0_combout\);

-- Location: LC_X13_Y6_N0
\OutData~16\ : maxv_lcell
-- Equation(s):
-- \OutData~16_combout\ = (\OutData~10_combout\ & (((\sub_inst|Subtract|bit4|S~0_combout\) # (\OutData~9_combout\)))) # (!\OutData~10_combout\ & (\rshift_inst|Mux34|Mout~1_combout\ & ((!\OutData~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rshift_inst|Mux34|Mout~1_combout\,
	datab => \sub_inst|Subtract|bit4|S~0_combout\,
	datac => \OutData~10_combout\,
	datad => \OutData~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \OutData~16_combout\);

-- Location: LC_X14_Y7_N4
\lshift_inst|Mux26|Mout~0\ : maxv_lcell
-- Equation(s):
-- \lshift_inst|Mux26|Mout~0_combout\ = ((\InData2~combout\(2) & ((\InData1~combout\(0)))) # (!\InData2~combout\(2) & (\InData1~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData1~combout\(4),
	datac => \InData2~combout\(2),
	datad => \InData1~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lshift_inst|Mux26|Mout~0_combout\);

-- Location: LC_X14_Y7_N2
\lshift_inst|Mux24|Mout~0\ : maxv_lcell
-- Equation(s):
-- \lshift_inst|Mux24|Mout~0_combout\ = (\InData2~combout\(1) & (((\InData1~combout\(2) & !\InData2~combout\(2))))) # (!\InData2~combout\(1) & (\lshift_inst|Mux26|Mout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0aca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_inst|Mux26|Mout~0_combout\,
	datab => \InData1~combout\(2),
	datac => \InData2~combout\(1),
	datad => \InData2~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lshift_inst|Mux24|Mout~0_combout\);

-- Location: LC_X13_Y6_N4
\OutData~17\ : maxv_lcell
-- Equation(s):
-- \OutData~17_combout\ = (\OutData~16_combout\ & ((\lshift_inst|Mux23|Mout~0_combout\) # ((!\OutData~8_combout\)))) # (!\OutData~16_combout\ & (((\OutData~8_combout\ & \lshift_inst|Mux24|Mout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bc8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_inst|Mux23|Mout~0_combout\,
	datab => \OutData~16_combout\,
	datac => \OutData~8_combout\,
	datad => \lshift_inst|Mux24|Mout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \OutData~17_combout\);

-- Location: LC_X13_Y6_N6
\adder_inst|bit1|S~24\ : maxv_lcell
-- Equation(s):
-- \adder_inst|bit1|S~24_combout\ = (\ALUop~combout\(0) & (((\OutData~17_combout\)))) # (!\ALUop~combout\(0) & ((\ALUop~combout\(1) & ((\OutData~17_combout\))) # (!\ALUop~combout\(1) & (\adder_inst|bit1|S~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder_inst|bit1|S~19_combout\,
	datab => \ALUop~combout\(0),
	datac => \OutData~17_combout\,
	datad => \ALUop~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder_inst|bit1|S~24_combout\);

-- Location: LC_X10_Y7_N4
\adder_inst|bit1|S~25\ : maxv_lcell
-- Equation(s):
-- \adder_inst|bit1|S~25_combout\ = ((\InData2~combout\(2) & ((\InData1~combout\(1)))) # (!\InData2~combout\(2) & (\InData1~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData1~combout\(5),
	datac => \InData2~combout\(2),
	datad => \InData1~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder_inst|bit1|S~25_combout\);

-- Location: LC_X10_Y7_N2
\lshift_inst|Mux25|Mout~0\ : maxv_lcell
-- Equation(s):
-- \lshift_inst|Mux25|Mout~0_combout\ = (\InData2~combout\(1) & (\InData1~combout\(3) & (!\InData2~combout\(2)))) # (!\InData2~combout\(1) & (((\adder_inst|bit1|S~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2f20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData1~combout\(3),
	datab => \InData2~combout\(2),
	datac => \InData2~combout\(1),
	datad => \adder_inst|bit1|S~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lshift_inst|Mux25|Mout~0_combout\);

-- Location: LC_X15_Y7_N1
\sub_inst|Subtract|bit4|Cout~0\ : maxv_lcell
-- Equation(s):
-- \sub_inst|Subtract|bit4|Cout~0_combout\ = (\InData1~combout\(4) & ((\sub_inst|Subtract|bit1|S~15_combout\) # (\InData2~combout\(4) $ (\sub_inst|Comp|bit3|Cout~0_combout\)))) # (!\InData1~combout\(4) & (\sub_inst|Subtract|bit1|S~15_combout\ & 
-- (\InData2~combout\(4) $ (\sub_inst|Comp|bit3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData2~combout\(4),
	datab => \InData1~combout\(4),
	datac => \sub_inst|Comp|bit3|Cout~0_combout\,
	datad => \sub_inst|Subtract|bit1|S~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sub_inst|Subtract|bit4|Cout~0_combout\);

-- Location: LC_X15_Y7_N7
\sub_inst|Comp|bit4|Cout~0\ : maxv_lcell
-- Equation(s):
-- \sub_inst|Comp|bit4|Cout~0_combout\ = (\sub_inst|Comp|bit3|Cout~0_combout\) # (((\InData2~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fafa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sub_inst|Comp|bit3|Cout~0_combout\,
	datac => \InData2~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sub_inst|Comp|bit4|Cout~0_combout\);

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\InData2[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_InData2(5),
	combout => \InData2~combout\(5));

-- Location: LC_X15_Y7_N5
\sub_inst|Subtract|bit5|S~0\ : maxv_lcell
-- Equation(s):
-- \sub_inst|Subtract|bit5|S~0_combout\ = \InData1~combout\(5) $ (\sub_inst|Subtract|bit4|Cout~0_combout\ $ (\sub_inst|Comp|bit4|Cout~0_combout\ $ (\InData2~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData1~combout\(5),
	datab => \sub_inst|Subtract|bit4|Cout~0_combout\,
	datac => \sub_inst|Comp|bit4|Cout~0_combout\,
	datad => \InData2~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sub_inst|Subtract|bit5|S~0_combout\);

-- Location: LC_X10_Y7_N1
\rshift_inst|Mux25|Mout~0\ : maxv_lcell
-- Equation(s):
-- \rshift_inst|Mux25|Mout~0_combout\ = (!\InData2~combout\(2) & ((\InData2~combout\(1) & ((\InData1~combout\(7)))) # (!\InData2~combout\(1) & (\InData1~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData1~combout\(5),
	datab => \InData2~combout\(2),
	datac => \InData2~combout\(1),
	datad => \InData1~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rshift_inst|Mux25|Mout~0_combout\);

-- Location: LC_X13_Y6_N9
\OutData~18\ : maxv_lcell
-- Equation(s):
-- \OutData~18_combout\ = (\OutData~10_combout\ & ((\sub_inst|Subtract|bit5|S~0_combout\) # ((\OutData~9_combout\)))) # (!\OutData~10_combout\ & (((\rshift_inst|Mux25|Mout~0_combout\ & !\OutData~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sub_inst|Subtract|bit5|S~0_combout\,
	datab => \rshift_inst|Mux25|Mout~0_combout\,
	datac => \OutData~10_combout\,
	datad => \OutData~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \OutData~18_combout\);

-- Location: LC_X13_Y6_N5
\OutData~19\ : maxv_lcell
-- Equation(s):
-- \OutData~19_combout\ = (\OutData~8_combout\ & ((\OutData~18_combout\ & (\lshift_inst|Mux24|Mout~0_combout\)) # (!\OutData~18_combout\ & ((\lshift_inst|Mux25|Mout~0_combout\))))) # (!\OutData~8_combout\ & (((\OutData~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_inst|Mux24|Mout~0_combout\,
	datab => \OutData~8_combout\,
	datac => \lshift_inst|Mux25|Mout~0_combout\,
	datad => \OutData~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \OutData~19_combout\);

-- Location: LC_X15_Y8_N7
\adder_inst|bit1|S~26\ : maxv_lcell
-- Equation(s):
-- \adder_inst|bit1|S~26_combout\ = (\OutData~13_combout\ & (\InData1~combout\(6) & (\lshift_inst|Mux21|Mout~0_combout\))) # (!\OutData~13_combout\ & (((\OutData~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d580",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OutData~13_combout\,
	datab => \InData1~combout\(6),
	datac => \lshift_inst|Mux21|Mout~0_combout\,
	datad => \OutData~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder_inst|bit1|S~26_combout\);

-- Location: LC_X13_Y8_N5
\adder_inst|bit1|S~27\ : maxv_lcell
-- Equation(s):
-- \adder_inst|bit1|S~27_combout\ = \InData1~combout\(5) $ (\InData2~combout\(5) $ ((\adder_inst|bit1|S~21\)))
-- \adder_inst|bit1|S~29\ = CARRY((\InData1~combout\(5) & (!\InData2~combout\(5) & !\adder_inst|bit1|S~21\)) # (!\InData1~combout\(5) & ((!\adder_inst|bit1|S~21\) # (!\InData2~combout\(5)))))
-- \adder_inst|bit1|S~29COUT1_70\ = CARRY((\InData1~combout\(5) & (!\InData2~combout\(5) & !\adder_inst|bit1|S~21\)) # (!\InData1~combout\(5) & ((!\adder_inst|bit1|S~21\) # (!\InData2~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData1~combout\(5),
	datab => \InData2~combout\(5),
	cin => \adder_inst|bit1|S~21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder_inst|bit1|S~27_combout\,
	cout0 => \adder_inst|bit1|S~29\,
	cout1 => \adder_inst|bit1|S~29COUT1_70\);

-- Location: LC_X15_Y8_N2
\adder_inst|bit1|S~32\ : maxv_lcell
-- Equation(s):
-- \adder_inst|bit1|S~32_combout\ = (\ALUop~combout\(0) & (((\adder_inst|bit1|S~26_combout\)))) # (!\ALUop~combout\(0) & ((\ALUop~combout\(1) & (\adder_inst|bit1|S~26_combout\)) # (!\ALUop~combout\(1) & ((\adder_inst|bit1|S~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUop~combout\(0),
	datab => \ALUop~combout\(1),
	datac => \adder_inst|bit1|S~26_combout\,
	datad => \adder_inst|bit1|S~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder_inst|bit1|S~32_combout\);

-- Location: LC_X14_Y7_N9
\lshift_inst|Mux26|Mout~1\ : maxv_lcell
-- Equation(s):
-- \lshift_inst|Mux26|Mout~1_combout\ = (\InData2~combout\(2) & (((\InData1~combout\(2))))) # (!\InData2~combout\(2) & (\InData1~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData2~combout\(2),
	datab => \InData1~combout\(6),
	datac => \InData1~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lshift_inst|Mux26|Mout~1_combout\);

-- Location: LC_X14_Y7_N0
\lshift_inst|Mux26|Mout~2\ : maxv_lcell
-- Equation(s):
-- \lshift_inst|Mux26|Mout~2_combout\ = ((\InData2~combout\(1) & (\lshift_inst|Mux26|Mout~0_combout\)) # (!\InData2~combout\(1) & ((\lshift_inst|Mux26|Mout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_inst|Mux26|Mout~0_combout\,
	datac => \InData2~combout\(1),
	datad => \lshift_inst|Mux26|Mout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lshift_inst|Mux26|Mout~2_combout\);

-- Location: LC_X15_Y8_N3
\rshift_inst|Mux36|Mout~0\ : maxv_lcell
-- Equation(s):
-- \rshift_inst|Mux36|Mout~0_combout\ = (\lshift_inst|Mux21|Mout~0_combout\ & ((\InData2~combout\(0) & ((\InData1~combout\(7)))) # (!\InData2~combout\(0) & (\InData1~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_inst|Mux21|Mout~0_combout\,
	datab => \InData1~combout\(6),
	datac => \InData2~combout\(0),
	datad => \InData1~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rshift_inst|Mux36|Mout~0_combout\);

-- Location: LC_X15_Y7_N4
\sub_inst|Comp|bit5|Cout~0\ : maxv_lcell
-- Equation(s):
-- \sub_inst|Comp|bit5|Cout~0_combout\ = (\sub_inst|Comp|bit3|Cout~0_combout\) # (((\InData2~combout\(4)) # (\InData2~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sub_inst|Comp|bit3|Cout~0_combout\,
	datac => \InData2~combout\(4),
	datad => \InData2~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sub_inst|Comp|bit5|Cout~0_combout\);

-- Location: LC_X15_Y7_N2
\sub_inst|Subtract|bit5|Cout~0\ : maxv_lcell
-- Equation(s):
-- \sub_inst|Subtract|bit5|Cout~0_combout\ = (\InData1~combout\(5) & ((\sub_inst|Subtract|bit4|Cout~0_combout\) # (\sub_inst|Comp|bit4|Cout~0_combout\ $ (\InData2~combout\(5))))) # (!\InData1~combout\(5) & (\sub_inst|Subtract|bit4|Cout~0_combout\ & 
-- (\sub_inst|Comp|bit4|Cout~0_combout\ $ (\InData2~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData1~combout\(5),
	datab => \sub_inst|Subtract|bit4|Cout~0_combout\,
	datac => \sub_inst|Comp|bit4|Cout~0_combout\,
	datad => \InData2~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sub_inst|Subtract|bit5|Cout~0_combout\);

-- Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\InData2[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_InData2(6),
	combout => \InData2~combout\(6));

-- Location: LC_X15_Y7_N3
\sub_inst|Subtract|bit6|S~0\ : maxv_lcell
-- Equation(s):
-- \sub_inst|Subtract|bit6|S~0_combout\ = \sub_inst|Comp|bit5|Cout~0_combout\ $ (\sub_inst|Subtract|bit5|Cout~0_combout\ $ (\InData2~combout\(6) $ (\InData1~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sub_inst|Comp|bit5|Cout~0_combout\,
	datab => \sub_inst|Subtract|bit5|Cout~0_combout\,
	datac => \InData2~combout\(6),
	datad => \InData1~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sub_inst|Subtract|bit6|S~0_combout\);

-- Location: LC_X13_Y6_N2
\OutData~20\ : maxv_lcell
-- Equation(s):
-- \OutData~20_combout\ = (\OutData~10_combout\ & (((\sub_inst|Subtract|bit6|S~0_combout\) # (\OutData~9_combout\)))) # (!\OutData~10_combout\ & (\rshift_inst|Mux36|Mout~0_combout\ & ((!\OutData~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rshift_inst|Mux36|Mout~0_combout\,
	datab => \sub_inst|Subtract|bit6|S~0_combout\,
	datac => \OutData~10_combout\,
	datad => \OutData~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \OutData~20_combout\);

-- Location: LC_X13_Y6_N3
\OutData~21\ : maxv_lcell
-- Equation(s):
-- \OutData~21_combout\ = (\OutData~8_combout\ & ((\OutData~20_combout\ & (\lshift_inst|Mux25|Mout~0_combout\)) # (!\OutData~20_combout\ & ((\lshift_inst|Mux26|Mout~2_combout\))))) # (!\OutData~8_combout\ & (((\OutData~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_inst|Mux25|Mout~0_combout\,
	datab => \OutData~8_combout\,
	datac => \lshift_inst|Mux26|Mout~2_combout\,
	datad => \OutData~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \OutData~21_combout\);

-- Location: LC_X13_Y8_N6
\adder_inst|bit1|S~33\ : maxv_lcell
-- Equation(s):
-- \adder_inst|bit1|S~33_combout\ = \InData1~combout\(6) $ (\InData2~combout\(6) $ ((!(!\adder_inst|bit1|S~21\ & \adder_inst|bit1|S~29\) # (\adder_inst|bit1|S~21\ & \adder_inst|bit1|S~29COUT1_70\))))
-- \adder_inst|bit1|S~35\ = CARRY((\InData1~combout\(6) & ((\InData2~combout\(6)) # (!\adder_inst|bit1|S~29\))) # (!\InData1~combout\(6) & (\InData2~combout\(6) & !\adder_inst|bit1|S~29\)))
-- \adder_inst|bit1|S~35COUT1_72\ = CARRY((\InData1~combout\(6) & ((\InData2~combout\(6)) # (!\adder_inst|bit1|S~29COUT1_70\))) # (!\InData1~combout\(6) & (\InData2~combout\(6) & !\adder_inst|bit1|S~29COUT1_70\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData1~combout\(6),
	datab => \InData2~combout\(6),
	cin => \adder_inst|bit1|S~21\,
	cin0 => \adder_inst|bit1|S~29\,
	cin1 => \adder_inst|bit1|S~29COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder_inst|bit1|S~33_combout\,
	cout0 => \adder_inst|bit1|S~35\,
	cout1 => \adder_inst|bit1|S~35COUT1_72\);

-- Location: LC_X13_Y6_N1
\adder_inst|bit1|S~38\ : maxv_lcell
-- Equation(s):
-- \adder_inst|bit1|S~38_combout\ = (\ALUop~combout\(0) & (\OutData~21_combout\)) # (!\ALUop~combout\(0) & ((\ALUop~combout\(1) & (\OutData~21_combout\)) # (!\ALUop~combout\(1) & ((\adder_inst|bit1|S~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aab8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OutData~21_combout\,
	datab => \ALUop~combout\(0),
	datac => \adder_inst|bit1|S~33_combout\,
	datad => \ALUop~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder_inst|bit1|S~38_combout\);

-- Location: LC_X10_Y7_N0
\adder_inst|bit1|S~39\ : maxv_lcell
-- Equation(s):
-- \adder_inst|bit1|S~39_combout\ = (\InData2~combout\(1) & (((\adder_inst|bit1|S~25_combout\)))) # (!\InData2~combout\(1) & (\InData1~combout\(3) & (\InData2~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData1~combout\(3),
	datab => \InData2~combout\(2),
	datac => \InData2~combout\(1),
	datad => \adder_inst|bit1|S~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder_inst|bit1|S~39_combout\);

-- Location: LC_X15_Y8_N8
\adder_inst|bit1|S~40\ : maxv_lcell
-- Equation(s):
-- \adder_inst|bit1|S~40_combout\ = (\ALUop~combout\(0) & ((\adder_inst|bit1|S~39_combout\) # ((\lshift_inst|Mux21|Mout~0_combout\ & \InData1~combout\(7))))) # (!\ALUop~combout\(0) & (((\lshift_inst|Mux21|Mout~0_combout\ & \InData1~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUop~combout\(0),
	datab => \adder_inst|bit1|S~39_combout\,
	datac => \lshift_inst|Mux21|Mout~0_combout\,
	datad => \InData1~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder_inst|bit1|S~40_combout\);

-- Location: LC_X15_Y8_N9
\adder_inst|bit1|S~41\ : maxv_lcell
-- Equation(s):
-- \adder_inst|bit1|S~41_combout\ = (\InData2~combout\(0) & (\ALUop~combout\(0) & (\lshift_inst|Mux26|Mout~2_combout\))) # (!\InData2~combout\(0) & (((\adder_inst|bit1|S~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8f80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUop~combout\(0),
	datab => \lshift_inst|Mux26|Mout~2_combout\,
	datac => \InData2~combout\(0),
	datad => \adder_inst|bit1|S~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder_inst|bit1|S~41_combout\);

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\InData2[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_InData2(7),
	combout => \InData2~combout\(7));

-- Location: LC_X15_Y7_N8
\sub_inst|Subtract|bit7|S~0\ : maxv_lcell
-- Equation(s):
-- \sub_inst|Subtract|bit7|S~0_combout\ = \InData2~combout\(7) $ (\InData1~combout\(7) $ (((\InData2~combout\(6)) # (\sub_inst|Comp|bit5|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a956",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData2~combout\(7),
	datab => \InData2~combout\(6),
	datac => \sub_inst|Comp|bit5|Cout~0_combout\,
	datad => \InData1~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sub_inst|Subtract|bit7|S~0_combout\);

-- Location: LC_X15_Y7_N6
\sub_inst|Comp|bit6|S~0\ : maxv_lcell
-- Equation(s):
-- \sub_inst|Comp|bit6|S~0_combout\ = \InData2~combout\(6) $ (((\sub_inst|Comp|bit3|Cout~0_combout\) # ((\InData2~combout\(4)) # (\InData2~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3336",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sub_inst|Comp|bit3|Cout~0_combout\,
	datab => \InData2~combout\(6),
	datac => \InData2~combout\(4),
	datad => \InData2~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sub_inst|Comp|bit6|S~0_combout\);

-- Location: LC_X15_Y7_N0
\sub_inst|Subtract|bit7|S~1\ : maxv_lcell
-- Equation(s):
-- \sub_inst|Subtract|bit7|S~1_combout\ = \sub_inst|Subtract|bit7|S~0_combout\ $ (((\InData1~combout\(6) & ((\sub_inst|Comp|bit6|S~0_combout\) # (\sub_inst|Subtract|bit5|Cout~0_combout\))) # (!\InData1~combout\(6) & (\sub_inst|Comp|bit6|S~0_combout\ & 
-- \sub_inst|Subtract|bit5|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "566a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sub_inst|Subtract|bit7|S~0_combout\,
	datab => \InData1~combout\(6),
	datac => \sub_inst|Comp|bit6|S~0_combout\,
	datad => \sub_inst|Subtract|bit5|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sub_inst|Subtract|bit7|S~1_combout\);

-- Location: LC_X15_Y8_N0
\adder_inst|bit1|S~42\ : maxv_lcell
-- Equation(s):
-- \adder_inst|bit1|S~42_combout\ = (\ALUop~combout\(1) & (((\adder_inst|bit1|S~41_combout\)))) # (!\ALUop~combout\(1) & (\ALUop~combout\(0) & ((\sub_inst|Subtract|bit7|S~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUop~combout\(0),
	datab => \adder_inst|bit1|S~41_combout\,
	datac => \sub_inst|Subtract|bit7|S~1_combout\,
	datad => \ALUop~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder_inst|bit1|S~42_combout\);

-- Location: LC_X13_Y8_N7
\adder_inst|bit1|S~43\ : maxv_lcell
-- Equation(s):
-- \adder_inst|bit1|S~43_combout\ = \InData2~combout\(7) $ ((((!\adder_inst|bit1|S~21\ & \adder_inst|bit1|S~35\) # (\adder_inst|bit1|S~21\ & \adder_inst|bit1|S~35COUT1_72\) $ (\InData1~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \InData2~combout\(7),
	datad => \InData1~combout\(7),
	cin => \adder_inst|bit1|S~21\,
	cin0 => \adder_inst|bit1|S~35\,
	cin1 => \adder_inst|bit1|S~35COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder_inst|bit1|S~43_combout\);

-- Location: LC_X15_Y8_N6
\adder_inst|bit1|S~48\ : maxv_lcell
-- Equation(s):
-- \adder_inst|bit1|S~48_combout\ = (\adder_inst|bit1|S~42_combout\) # ((!\ALUop~combout\(0) & (\adder_inst|bit1|S~43_combout\ & !\ALUop~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccdc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUop~combout\(0),
	datab => \adder_inst|bit1|S~42_combout\,
	datac => \adder_inst|bit1|S~43_combout\,
	datad => \ALUop~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder_inst|bit1|S~48_combout\);

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\OutData[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \OutData~4_combout\,
	oe => VCC,
	padio => ww_OutData(0));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\OutData[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \adder_inst|bit1|S~5_combout\,
	oe => VCC,
	padio => ww_OutData(1));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\OutData[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \adder_inst|bit1|S~12_combout\,
	oe => VCC,
	padio => ww_OutData(2));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\OutData[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \adder_inst|bit1|S~18_combout\,
	oe => VCC,
	padio => ww_OutData(3));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\OutData[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \adder_inst|bit1|S~24_combout\,
	oe => VCC,
	padio => ww_OutData(4));

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\OutData[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \adder_inst|bit1|S~32_combout\,
	oe => VCC,
	padio => ww_OutData(5));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\OutData[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \adder_inst|bit1|S~38_combout\,
	oe => VCC,
	padio => ww_OutData(6));

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\OutData[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \adder_inst|bit1|S~48_combout\,
	oe => VCC,
	padio => ww_OutData(7));
END structure;


