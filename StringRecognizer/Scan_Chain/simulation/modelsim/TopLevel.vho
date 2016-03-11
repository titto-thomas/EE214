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

-- DATE "03/11/2016 13:29:11"

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

ENTITY 	TopLevel IS
    PORT (
	TDI : IN std_logic;
	TDO : BUFFER std_logic;
	TMS : IN std_logic;
	TCLK : IN std_logic;
	TRST : IN std_logic
	);
END TopLevel;

-- Design Ports Information
-- TDO	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- TCLK	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TRST	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TMS	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TDI	=>  Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF TopLevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_TDI : std_logic;
SIGNAL ww_TDO : std_logic;
SIGNAL ww_TMS : std_logic;
SIGNAL ww_TCLK : std_logic;
SIGNAL ww_TRST : std_logic;
SIGNAL \TCLK~combout\ : std_logic;
SIGNAL \TRST~combout\ : std_logic;
SIGNAL \TMS~combout\ : std_logic;
SIGNAL \scan_instance|next_state~1_combout\ : std_logic;
SIGNAL \scan_instance|next_state.s_DR_158\ : std_logic;
SIGNAL \scan_instance|current_state.s_DR~regout\ : std_logic;
SIGNAL \scan_instance|next_state~0_combout\ : std_logic;
SIGNAL \scan_instance|next_state.s_capture_151\ : std_logic;
SIGNAL \scan_instance|current_state.s_capture~regout\ : std_logic;
SIGNAL \scan_instance|Selector3~0_combout\ : std_logic;
SIGNAL \scan_instance|next_state.s_shift_144\ : std_logic;
SIGNAL \scan_instance|current_state.s_shift~regout\ : std_logic;
SIGNAL \scan_instance|In_Reg|L2~7_combout\ : std_logic;
SIGNAL \scan_instance|next_state.s_update_137\ : std_logic;
SIGNAL \scan_instance|current_state.s_update~regout\ : std_logic;
SIGNAL \scan_instance|Selector0~0_combout\ : std_logic;
SIGNAL \scan_instance|next_state.s_idle_165~combout\ : std_logic;
SIGNAL \scan_instance|current_state.s_idle~regout\ : std_logic;
SIGNAL \scan_instance|Selector2~0_combout\ : std_logic;
SIGNAL \TDI~combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|L1[5]~1_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|L2~1_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[6]~3_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[0]~1_combout\ : std_logic;
SIGNAL \dut_instance|Equal4~0_combout\ : std_logic;
SIGNAL \dut_instance|Equal7~2_combout\ : std_logic;
SIGNAL \dut_instance|gun_current_state~9_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[3]~0_combout\ : std_logic;
SIGNAL \dut_instance|gun_current_state.S0~regout\ : std_logic;
SIGNAL \dut_instance|gun_current_state~8_combout\ : std_logic;
SIGNAL \dut_instance|gun_current_state.S1~regout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[2]~6_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[4]~2_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[1]~5_combout\ : std_logic;
SIGNAL \dut_instance|Equal8~2_combout\ : std_logic;
SIGNAL \dut_instance|gun_current_state~14_combout\ : std_logic;
SIGNAL \dut_instance|gun_current_state~10_combout\ : std_logic;
SIGNAL \dut_instance|gun_current_state.S2~regout\ : std_logic;
SIGNAL \dut_instance|gun_current_state~7_combout\ : std_logic;
SIGNAL \dut_instance|Equal10~3_combout\ : std_logic;
SIGNAL \dut_instance|Equal10~12_combout\ : std_logic;
SIGNAL \dut_instance|terror_current_state~15_combout\ : std_logic;
SIGNAL \dut_instance|Equal4~1_combout\ : std_logic;
SIGNAL \dut_instance|Equal8~3_combout\ : std_logic;
SIGNAL \dut_instance|terror_current_state.S0~regout\ : std_logic;
SIGNAL \dut_instance|terror_current_state~22_combout\ : std_logic;
SIGNAL \dut_instance|terror_current_state~11_combout\ : std_logic;
SIGNAL \dut_instance|terror_current_state~12_combout\ : std_logic;
SIGNAL \dut_instance|terror_current_state~13_combout\ : std_logic;
SIGNAL \dut_instance|terror_current_state.S1~regout\ : std_logic;
SIGNAL \dut_instance|terror_current_state~17_combout\ : std_logic;
SIGNAL \dut_instance|terror_current_state.S2~regout\ : std_logic;
SIGNAL \dut_instance|terror_current_state.S3~regout\ : std_logic;
SIGNAL \dut_instance|terror_current_state.S4~regout\ : std_logic;
SIGNAL \dut_instance|terror_current_state~10_combout\ : std_logic;
SIGNAL \dut_instance|terror_current_state.S5~regout\ : std_logic;
SIGNAL \dut_instance|W4~0_combout\ : std_logic;
SIGNAL \dut_instance|Equal1~3_combout\ : std_logic;
SIGNAL \dut_instance|Equal1~12_combout\ : std_logic;
SIGNAL \dut_instance|bomb_current_state~22_combout\ : std_logic;
SIGNAL \dut_instance|bomb_current_state~26_combout\ : std_logic;
SIGNAL \dut_instance|bomb_current_state.S0~regout\ : std_logic;
SIGNAL \dut_instance|bomb_current_state~23_combout\ : std_logic;
SIGNAL \dut_instance|bomb_current_state.S1~regout\ : std_logic;
SIGNAL \dut_instance|bomb_current_state~21_combout\ : std_logic;
SIGNAL \dut_instance|bomb_current_state.S2~regout\ : std_logic;
SIGNAL \dut_instance|bomb_current_state~9_combout\ : std_logic;
SIGNAL \dut_instance|bomb_current_state~29_combout\ : std_logic;
SIGNAL \dut_instance|bomb_current_state.S3~regout\ : std_logic;
SIGNAL \dut_instance|knife_current_state~38_combout\ : std_logic;
SIGNAL \dut_instance|knife_current_state~39_combout\ : std_logic;
SIGNAL \dut_instance|knife_current_state.S1~regout\ : std_logic;
SIGNAL \dut_instance|knife_current_state~44_combout\ : std_logic;
SIGNAL \dut_instance|knife_current_state.S2~regout\ : std_logic;
SIGNAL \dut_instance|knife_current_state~25_combout\ : std_logic;
SIGNAL \dut_instance|knife_current_state~51_combout\ : std_logic;
SIGNAL \dut_instance|knife_current_state~40_combout\ : std_logic;
SIGNAL \dut_instance|knife_current_state~41_combout\ : std_logic;
SIGNAL \dut_instance|knife_current_state~42_combout\ : std_logic;
SIGNAL \dut_instance|knife_current_state.S0~regout\ : std_logic;
SIGNAL \dut_instance|knife_current_state~10_combout\ : std_logic;
SIGNAL \dut_instance|knife_current_state~50_combout\ : std_logic;
SIGNAL \dut_instance|knife_current_state~45_combout\ : std_logic;
SIGNAL \dut_instance|knife_current_state.S3~regout\ : std_logic;
SIGNAL \dut_instance|knife_current_state~37_combout\ : std_logic;
SIGNAL \dut_instance|knife_current_state.S4~regout\ : std_logic;
SIGNAL \dut_instance|W~0_combout\ : std_logic;
SIGNAL \dut_instance|W~1_combout\ : std_logic;
SIGNAL \dut_instance|W~regout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~0_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|L2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \scan_instance|In_Reg|L1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \scan_instance|In_Reg|PO\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \scan_instance|Out_Reg|L1\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_TDI <= TDI;
TDO <= ww_TDO;
ww_TMS <= TMS;
ww_TCLK <= TCLK;
ww_TRST <= TRST;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TCLK~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TCLK,
	combout => \TCLK~combout\);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TRST~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TRST,
	combout => \TRST~combout\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TMS~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TMS,
	combout => \TMS~combout\);

-- Location: LC_X4_Y7_N1
\scan_instance|next_state~1\ : maxv_lcell
-- Equation(s):
-- \scan_instance|next_state~1_combout\ = ((\TMS~combout\ & ((\scan_instance|current_state.s_DR~regout\) # (!\scan_instance|current_state.s_idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TMS~combout\,
	datac => \scan_instance|current_state.s_DR~regout\,
	datad => \scan_instance|current_state.s_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|next_state~1_combout\);

-- Location: LC_X4_Y7_N0
\scan_instance|current_state.s_DR\ : maxv_lcell
-- Equation(s):
-- \scan_instance|next_state.s_DR_158\ = ((GLOBAL(\TRST~combout\) & (\scan_instance|next_state.s_DR_158\)) # (!GLOBAL(\TRST~combout\) & ((\scan_instance|next_state~1_combout\))))
-- \scan_instance|current_state.s_DR~regout\ = DFFEAS(\scan_instance|next_state.s_DR_158\, GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TRST~combout\,
	datac => \scan_instance|next_state.s_DR_158\,
	datad => \scan_instance|next_state~1_combout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|next_state.s_DR_158\,
	regout => \scan_instance|current_state.s_DR~regout\);

-- Location: LC_X4_Y7_N2
\scan_instance|next_state~0\ : maxv_lcell
-- Equation(s):
-- \scan_instance|next_state~0_combout\ = (((\TMS~combout\) # (!\scan_instance|current_state.s_DR~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \TMS~combout\,
	datad => \scan_instance|current_state.s_DR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|next_state~0_combout\);

-- Location: LC_X4_Y7_N3
\scan_instance|current_state.s_capture\ : maxv_lcell
-- Equation(s):
-- \scan_instance|next_state.s_capture_151\ = ((GLOBAL(\TRST~combout\) & (\scan_instance|next_state.s_capture_151\)) # (!GLOBAL(\TRST~combout\) & ((!\scan_instance|next_state~0_combout\))))
-- \scan_instance|current_state.s_capture~regout\ = DFFEAS(\scan_instance|next_state.s_capture_151\, GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0f3",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TRST~combout\,
	datac => \scan_instance|next_state.s_capture_151\,
	datad => \scan_instance|next_state~0_combout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|next_state.s_capture_151\,
	regout => \scan_instance|current_state.s_capture~regout\);

-- Location: LC_X4_Y7_N4
\scan_instance|Selector3~0\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Selector3~0_combout\ = ((!\TMS~combout\ & ((\scan_instance|current_state.s_shift~regout\) # (\scan_instance|current_state.s_capture~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TMS~combout\,
	datac => \scan_instance|current_state.s_shift~regout\,
	datad => \scan_instance|current_state.s_capture~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Selector3~0_combout\);

-- Location: LC_X4_Y7_N9
\scan_instance|current_state.s_shift\ : maxv_lcell
-- Equation(s):
-- \scan_instance|next_state.s_shift_144\ = ((GLOBAL(\TRST~combout\) & ((\scan_instance|next_state.s_shift_144\))) # (!GLOBAL(\TRST~combout\) & (\scan_instance|Selector3~0_combout\)))
-- \scan_instance|current_state.s_shift~regout\ = DFFEAS(\scan_instance|next_state.s_shift_144\, GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TRST~combout\,
	datac => \scan_instance|Selector3~0_combout\,
	datad => \scan_instance|next_state.s_shift_144\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|next_state.s_shift_144\,
	regout => \scan_instance|current_state.s_shift~regout\);

-- Location: LC_X4_Y7_N6
\scan_instance|In_Reg|L2~7\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2~7_combout\ = ((\TMS~combout\ & ((\scan_instance|current_state.s_shift~regout\) # (\scan_instance|current_state.s_capture~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TMS~combout\,
	datac => \scan_instance|current_state.s_shift~regout\,
	datad => \scan_instance|current_state.s_capture~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|L2~7_combout\);

-- Location: LC_X4_Y7_N7
\scan_instance|current_state.s_update\ : maxv_lcell
-- Equation(s):
-- \scan_instance|next_state.s_update_137\ = ((GLOBAL(\TRST~combout\) & (\scan_instance|next_state.s_update_137\)) # (!GLOBAL(\TRST~combout\) & ((\scan_instance|In_Reg|L2~7_combout\))))
-- \scan_instance|current_state.s_update~regout\ = DFFEAS(\scan_instance|next_state.s_update_137\, GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TRST~combout\,
	datac => \scan_instance|next_state.s_update_137\,
	datad => \scan_instance|In_Reg|L2~7_combout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|next_state.s_update_137\,
	regout => \scan_instance|current_state.s_update~regout\);

-- Location: LC_X3_Y7_N3
\scan_instance|Selector0~0\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Selector0~0_combout\ = ((\scan_instance|current_state.s_update~regout\) # ((!\TMS~combout\ & !\scan_instance|current_state.s_idle~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff03",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TMS~combout\,
	datac => \scan_instance|current_state.s_idle~regout\,
	datad => \scan_instance|current_state.s_update~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Selector0~0_combout\);

-- Location: LC_X3_Y7_N4
\scan_instance|next_state.s_idle_165\ : maxv_lcell
-- Equation(s):
-- \scan_instance|next_state.s_idle_165~combout\ = ((GLOBAL(\TRST~combout\) & (\scan_instance|next_state.s_idle_165~combout\)) # (!GLOBAL(\TRST~combout\) & ((\scan_instance|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|next_state.s_idle_165~combout\,
	datad => \scan_instance|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|next_state.s_idle_165~combout\);

-- Location: LC_X3_Y7_N5
\scan_instance|current_state.s_idle\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_idle~regout\ = DFFEAS((((!\scan_instance|next_state.s_idle_165~combout\))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datad => \scan_instance|next_state.s_idle_165~combout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_idle~regout\);

-- Location: LC_X3_Y7_N0
\scan_instance|Selector2~0\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Selector2~0_combout\ = ((\TMS~combout\) # ((\scan_instance|current_state.s_update~regout\))) # (!\scan_instance|current_state.s_idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffdd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|current_state.s_idle~regout\,
	datab => \TMS~combout\,
	datad => \scan_instance|current_state.s_update~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Selector2~0_combout\);

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TDI~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TDI,
	combout => \TDI~combout\);

-- Location: LC_X3_Y7_N2
\scan_instance|In_Reg|L1[5]~1\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1[5]~1_combout\ = (\TRST~combout\) # ((!\TMS~combout\ & (\scan_instance|current_state.s_idle~regout\ & !\scan_instance|current_state.s_update~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaba",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \TMS~combout\,
	datac => \scan_instance|current_state.s_idle~regout\,
	datad => \scan_instance|current_state.s_update~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|L1[5]~1_combout\);

-- Location: LC_X2_Y7_N1
\scan_instance|In_Reg|L1[6]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(6) = DFFEAS(((!\TRST~combout\ & (\TDI~combout\ & \scan_instance|Selector3~0_combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[5]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TRST~combout\,
	datac => \TDI~combout\,
	datad => \scan_instance|Selector3~0_combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(6));

-- Location: LC_X2_Y7_N8
\scan_instance|In_Reg|L1[5]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(5) = DFFEAS(((!\TRST~combout\ & (\scan_instance|In_Reg|L1\(6) & \scan_instance|Selector3~0_combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[5]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L1\(6),
	datad => \scan_instance|Selector3~0_combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(5));

-- Location: LC_X2_Y7_N0
\scan_instance|In_Reg|L1[4]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(4) = DFFEAS((\scan_instance|In_Reg|L1\(5) & (((!\TRST~combout\ & \scan_instance|Selector3~0_combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[5]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(5),
	datac => \TRST~combout\,
	datad => \scan_instance|Selector3~0_combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(4));

-- Location: LC_X2_Y7_N4
\scan_instance|In_Reg|L1[3]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(3) = DFFEAS(((!\TRST~combout\ & (\scan_instance|In_Reg|L1\(4) & \scan_instance|Selector3~0_combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[5]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L1\(4),
	datad => \scan_instance|Selector3~0_combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(3));

-- Location: LC_X2_Y7_N6
\scan_instance|In_Reg|L1[2]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(2) = DFFEAS(((!\TRST~combout\ & (\scan_instance|In_Reg|L1\(3) & \scan_instance|Selector3~0_combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[5]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L1\(3),
	datad => \scan_instance|Selector3~0_combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(2));

-- Location: LC_X2_Y7_N5
\scan_instance|In_Reg|L1[1]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(1) = DFFEAS(((!\TRST~combout\ & (\scan_instance|In_Reg|L1\(2) & \scan_instance|Selector3~0_combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[5]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L1\(2),
	datad => \scan_instance|Selector3~0_combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(1));

-- Location: LC_X2_Y7_N9
\scan_instance|In_Reg|L1[0]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(0) = DFFEAS(((!\TRST~combout\ & (\scan_instance|In_Reg|L1\(1) & \scan_instance|Selector3~0_combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[5]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L1\(1),
	datad => \scan_instance|Selector3~0_combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(0));

-- Location: LC_X5_Y7_N1
\scan_instance|In_Reg|L2~1\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2~1_combout\ = (\TRST~combout\) # ((\TMS~combout\ & ((\scan_instance|current_state.s_shift~regout\) # (\scan_instance|current_state.s_capture~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TMS~combout\,
	datab => \TRST~combout\,
	datac => \scan_instance|current_state.s_shift~regout\,
	datad => \scan_instance|current_state.s_capture~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|L2~1_combout\);

-- Location: LC_X5_Y7_N6
\scan_instance|In_Reg|L2[5]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(5) = DFFEAS((!\TRST~combout\ & (((\scan_instance|In_Reg|L1\(5))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(5),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(5));

-- Location: LC_X12_Y3_N2
\scan_instance|In_Reg|PO[5]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO\(5) = LCELL((((\scan_instance|In_Reg|L2\(5) & !\TRST~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \scan_instance|In_Reg|L2\(5),
	datad => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO\(5));

-- Location: LC_X5_Y7_N2
\scan_instance|In_Reg|L2[6]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(6) = DFFEAS((\scan_instance|In_Reg|L1\(6) & (!\TRST~combout\)), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2222",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(6),
	datab => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(6));

-- Location: LC_X4_Y6_N0
\scan_instance|In_Reg|PO[6]~3\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[6]~3_combout\ = (!\TRST~combout\ & (((\scan_instance|In_Reg|L2\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[6]~3_combout\);

-- Location: LC_X5_Y7_N7
\scan_instance|In_Reg|L2[0]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(0) = DFFEAS(((!\TRST~combout\ & ((\scan_instance|In_Reg|L1\(0))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(0),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(0));

-- Location: LC_X5_Y9_N7
\scan_instance|In_Reg|PO[0]~1\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[0]~1_combout\ = (((\scan_instance|In_Reg|L2\(0) & !\TRST~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \scan_instance|In_Reg|L2\(0),
	datad => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[0]~1_combout\);

-- Location: LC_X4_Y6_N7
\scan_instance|In_Reg|L2[2]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(2) = DFFEAS(((!\TRST~combout\ & (\scan_instance|In_Reg|L1\(2)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L1\(2),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(2));

-- Location: LC_X4_Y6_N6
\scan_instance|In_Reg|L2[1]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(1) = DFFEAS(((!\TRST~combout\ & (\scan_instance|In_Reg|L1\(1)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L1\(1),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(1));

-- Location: LC_X5_Y8_N7
\scan_instance|In_Reg|L2[4]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(4) = DFFEAS((!\TRST~combout\ & (((\scan_instance|In_Reg|L1\(4))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(4),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(4));

-- Location: LC_X4_Y6_N5
\dut_instance|Equal4~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|Equal4~0_combout\ = (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(2) & (\scan_instance|In_Reg|L2\(1) & !\scan_instance|In_Reg|L2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(2),
	datac => \scan_instance|In_Reg|L2\(1),
	datad => \scan_instance|In_Reg|L2\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|Equal4~0_combout\);

-- Location: LC_X5_Y7_N3
\scan_instance|In_Reg|L2[3]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(3) = DFFEAS((!\TRST~combout\ & (((\scan_instance|In_Reg|L1\(3))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(3),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(3));

-- Location: LC_X4_Y6_N2
\dut_instance|Equal7~2\ : maxv_lcell
-- Equation(s):
-- \dut_instance|Equal7~2_combout\ = ((!\TRST~combout\ & (\dut_instance|Equal4~0_combout\ & \scan_instance|In_Reg|L2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \dut_instance|Equal4~0_combout\,
	datad => \scan_instance|In_Reg|L2\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|Equal7~2_combout\);

-- Location: LC_X5_Y9_N3
\dut_instance|gun_current_state~9\ : maxv_lcell
-- Equation(s):
-- \dut_instance|gun_current_state~9_combout\ = (!\scan_instance|In_Reg|PO[6]~3_combout\ & ((\scan_instance|In_Reg|PO[0]~1_combout\) # ((!\dut_instance|Equal7~2_combout\) # (!\dut_instance|gun_current_state.S2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0b0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[0]~1_combout\,
	datab => \dut_instance|gun_current_state.S2~regout\,
	datac => \scan_instance|In_Reg|PO[6]~3_combout\,
	datad => \dut_instance|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|gun_current_state~9_combout\);

-- Location: LC_X4_Y9_N0
\scan_instance|In_Reg|PO[3]~0\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[3]~0_combout\ = (!\TRST~combout\ & (((\scan_instance|In_Reg|L2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[3]~0_combout\);

-- Location: LC_X5_Y9_N9
\dut_instance|gun_current_state.S0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|gun_current_state.S0~regout\ = DFFEAS((\dut_instance|gun_current_state~9_combout\ & ((\dut_instance|gun_current_state~14_combout\) # ((\dut_instance|gun_current_state~8_combout\) # (\dut_instance|gun_current_state.S0~regout\)))), 
-- GLOBAL(\scan_instance|In_Reg|PO\(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(5),
	dataa => \dut_instance|gun_current_state~14_combout\,
	datab => \dut_instance|gun_current_state~8_combout\,
	datac => \dut_instance|gun_current_state~9_combout\,
	datad => \dut_instance|gun_current_state.S0~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|gun_current_state.S0~regout\);

-- Location: LC_X5_Y9_N0
\dut_instance|gun_current_state~8\ : maxv_lcell
-- Equation(s):
-- \dut_instance|gun_current_state~8_combout\ = (!\scan_instance|In_Reg|PO[3]~0_combout\ & (\dut_instance|Equal4~0_combout\ & (\scan_instance|In_Reg|PO[0]~1_combout\ & !\dut_instance|gun_current_state.S0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[3]~0_combout\,
	datab => \dut_instance|Equal4~0_combout\,
	datac => \scan_instance|In_Reg|PO[0]~1_combout\,
	datad => \dut_instance|gun_current_state.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|gun_current_state~8_combout\);

-- Location: LC_X5_Y9_N5
\dut_instance|gun_current_state.S1\ : maxv_lcell
-- Equation(s):
-- \dut_instance|gun_current_state.S1~regout\ = DFFEAS((\dut_instance|gun_current_state~9_combout\ & (!\dut_instance|gun_current_state~14_combout\ & ((\dut_instance|gun_current_state~8_combout\) # (\dut_instance|gun_current_state.S1~regout\)))), 
-- GLOBAL(\scan_instance|In_Reg|PO\(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(5),
	dataa => \dut_instance|gun_current_state~9_combout\,
	datab => \dut_instance|gun_current_state~8_combout\,
	datac => \dut_instance|gun_current_state.S1~regout\,
	datad => \dut_instance|gun_current_state~14_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|gun_current_state.S1~regout\);

-- Location: LC_X4_Y6_N8
\scan_instance|In_Reg|PO[2]~6\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[2]~6_combout\ = ((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[2]~6_combout\);

-- Location: LC_X4_Y9_N4
\scan_instance|In_Reg|PO[4]~2\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[4]~2_combout\ = (!\TRST~combout\ & (((\scan_instance|In_Reg|L2\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[4]~2_combout\);

-- Location: LC_X4_Y9_N1
\scan_instance|In_Reg|PO[1]~5\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[1]~5_combout\ = (!\TRST~combout\ & (((\scan_instance|In_Reg|L2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[1]~5_combout\);

-- Location: LC_X4_Y9_N3
\dut_instance|Equal8~2\ : maxv_lcell
-- Equation(s):
-- \dut_instance|Equal8~2_combout\ = (\scan_instance|In_Reg|PO[2]~6_combout\ & (!\scan_instance|In_Reg|PO[3]~0_combout\ & (\scan_instance|In_Reg|PO[4]~2_combout\ & !\scan_instance|In_Reg|PO[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[2]~6_combout\,
	datab => \scan_instance|In_Reg|PO[3]~0_combout\,
	datac => \scan_instance|In_Reg|PO[4]~2_combout\,
	datad => \scan_instance|In_Reg|PO[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|Equal8~2_combout\);

-- Location: LC_X5_Y9_N8
\dut_instance|gun_current_state~14\ : maxv_lcell
-- Equation(s):
-- \dut_instance|gun_current_state~14_combout\ = (\dut_instance|gun_current_state.S1~regout\ & (\dut_instance|Equal8~2_combout\ & (!\TRST~combout\ & \scan_instance|In_Reg|L2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|gun_current_state.S1~regout\,
	datab => \dut_instance|Equal8~2_combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|gun_current_state~14_combout\);

-- Location: LC_X5_Y9_N2
\dut_instance|gun_current_state~10\ : maxv_lcell
-- Equation(s):
-- \dut_instance|gun_current_state~10_combout\ = (((\dut_instance|gun_current_state~8_combout\) # (\dut_instance|gun_current_state~14_combout\))) # (!\dut_instance|gun_current_state~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|gun_current_state~9_combout\,
	datac => \dut_instance|gun_current_state~8_combout\,
	datad => \dut_instance|gun_current_state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|gun_current_state~10_combout\);

-- Location: LC_X5_Y9_N1
\dut_instance|gun_current_state.S2\ : maxv_lcell
-- Equation(s):
-- \dut_instance|gun_current_state.S2~regout\ = DFFEAS((\dut_instance|gun_current_state~14_combout\ & (((\dut_instance|gun_current_state.S2~regout\ & !\dut_instance|gun_current_state~10_combout\)) # (!\scan_instance|In_Reg|PO[6]~3_combout\))) # 
-- (!\dut_instance|gun_current_state~14_combout\ & (((\dut_instance|gun_current_state.S2~regout\ & !\dut_instance|gun_current_state~10_combout\)))), GLOBAL(\scan_instance|In_Reg|PO\(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "22f2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(5),
	dataa => \dut_instance|gun_current_state~14_combout\,
	datab => \scan_instance|In_Reg|PO[6]~3_combout\,
	datac => \dut_instance|gun_current_state.S2~regout\,
	datad => \dut_instance|gun_current_state~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|gun_current_state.S2~regout\);

-- Location: LC_X4_Y9_N9
\dut_instance|gun_current_state~7\ : maxv_lcell
-- Equation(s):
-- \dut_instance|gun_current_state~7_combout\ = (\dut_instance|gun_current_state.S2~regout\ & (\dut_instance|Equal4~0_combout\ & (\scan_instance|In_Reg|PO[3]~0_combout\ & !\scan_instance|In_Reg|PO[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|gun_current_state.S2~regout\,
	datab => \dut_instance|Equal4~0_combout\,
	datac => \scan_instance|In_Reg|PO[3]~0_combout\,
	datad => \scan_instance|In_Reg|PO[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|gun_current_state~7_combout\);

-- Location: LC_X4_Y9_N6
\dut_instance|Equal10~3\ : maxv_lcell
-- Equation(s):
-- \dut_instance|Equal10~3_combout\ = ((!\scan_instance|In_Reg|L2\(3) & (!\scan_instance|In_Reg|L2\(2) & !\scan_instance|In_Reg|L2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \scan_instance|In_Reg|L2\(3),
	datac => \scan_instance|In_Reg|L2\(2),
	datad => \scan_instance|In_Reg|L2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|Equal10~3_combout\);

-- Location: LC_X4_Y9_N7
\dut_instance|Equal10~12\ : maxv_lcell
-- Equation(s):
-- \dut_instance|Equal10~12_combout\ = (\scan_instance|In_Reg|L2\(4) & (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(1) & \dut_instance|Equal10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(4),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(1),
	datad => \dut_instance|Equal10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|Equal10~12_combout\);

-- Location: LC_X4_Y9_N5
\dut_instance|terror_current_state~15\ : maxv_lcell
-- Equation(s):
-- \dut_instance|terror_current_state~15_combout\ = (\dut_instance|terror_current_state.S4~regout\ & (((!\scan_instance|In_Reg|PO[0]~1_combout\) # (!\dut_instance|Equal4~0_combout\)) # (!\scan_instance|In_Reg|PO[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[3]~0_combout\,
	datab => \dut_instance|Equal4~0_combout\,
	datac => \scan_instance|In_Reg|PO[0]~1_combout\,
	datad => \dut_instance|terror_current_state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|terror_current_state~15_combout\);

-- Location: LC_X5_Y7_N9
\dut_instance|Equal4~1\ : maxv_lcell
-- Equation(s):
-- \dut_instance|Equal4~1_combout\ = ((\TRST~combout\) # ((!\scan_instance|In_Reg|L2\(3) & !\scan_instance|In_Reg|L2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff05",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(3),
	datac => \scan_instance|In_Reg|L2\(0),
	datad => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|Equal4~1_combout\);

-- Location: LC_X3_Y9_N3
\dut_instance|Equal8~3\ : maxv_lcell
-- Equation(s):
-- \dut_instance|Equal8~3_combout\ = (\dut_instance|Equal8~2_combout\ & (((\TRST~combout\)) # (!\scan_instance|In_Reg|L2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a2a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|Equal8~2_combout\,
	datab => \scan_instance|In_Reg|L2\(0),
	datac => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|Equal8~3_combout\);

-- Location: LC_X3_Y9_N4
\dut_instance|terror_current_state.S0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|terror_current_state.S0~regout\ = DFFEAS((!\dut_instance|W4~0_combout\ & (!\scan_instance|In_Reg|PO[6]~3_combout\ & ((\dut_instance|Equal8~3_combout\) # (\dut_instance|terror_current_state.S0~regout\)))), 
-- GLOBAL(\scan_instance|In_Reg|PO\(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0032",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(5),
	dataa => \dut_instance|Equal8~3_combout\,
	datab => \dut_instance|W4~0_combout\,
	datac => \dut_instance|terror_current_state.S0~regout\,
	datad => \scan_instance|In_Reg|PO[6]~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|terror_current_state.S0~regout\);

-- Location: LC_X3_Y9_N8
\dut_instance|terror_current_state~22\ : maxv_lcell
-- Equation(s):
-- \dut_instance|terror_current_state~22_combout\ = (!\dut_instance|terror_current_state.S0~regout\ & (\dut_instance|Equal8~2_combout\ & ((\TRST~combout\) # (!\scan_instance|In_Reg|L2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|terror_current_state.S0~regout\,
	datab => \TRST~combout\,
	datac => \dut_instance|Equal8~2_combout\,
	datad => \scan_instance|In_Reg|L2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|terror_current_state~22_combout\);

-- Location: LC_X3_Y9_N2
\dut_instance|terror_current_state~11\ : maxv_lcell
-- Equation(s):
-- \dut_instance|terror_current_state~11_combout\ = (\dut_instance|Equal10~12_combout\ & ((\dut_instance|terror_current_state.S3~regout\) # ((\dut_instance|terror_current_state.S2~regout\) # (\dut_instance|terror_current_state.S5~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|Equal10~12_combout\,
	datab => \dut_instance|terror_current_state.S3~regout\,
	datac => \dut_instance|terror_current_state.S2~regout\,
	datad => \dut_instance|terror_current_state.S5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|terror_current_state~11_combout\);

-- Location: LC_X4_Y7_N8
\dut_instance|terror_current_state~12\ : maxv_lcell
-- Equation(s):
-- \dut_instance|terror_current_state~12_combout\ = (\scan_instance|In_Reg|PO[6]~3_combout\) # ((\dut_instance|Equal4~1_combout\ & (\dut_instance|terror_current_state.S1~regout\ & \dut_instance|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|Equal4~1_combout\,
	datab => \scan_instance|In_Reg|PO[6]~3_combout\,
	datac => \dut_instance|terror_current_state.S1~regout\,
	datad => \dut_instance|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|terror_current_state~12_combout\);

-- Location: LC_X3_Y9_N0
\dut_instance|terror_current_state~13\ : maxv_lcell
-- Equation(s):
-- \dut_instance|terror_current_state~13_combout\ = (\dut_instance|terror_current_state~22_combout\) # ((\dut_instance|terror_current_state~11_combout\) # ((\dut_instance|terror_current_state~10_combout\) # (\dut_instance|terror_current_state~12_combout\)))

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
	dataa => \dut_instance|terror_current_state~22_combout\,
	datab => \dut_instance|terror_current_state~11_combout\,
	datac => \dut_instance|terror_current_state~10_combout\,
	datad => \dut_instance|terror_current_state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|terror_current_state~13_combout\);

-- Location: LC_X3_Y9_N5
\dut_instance|terror_current_state.S1\ : maxv_lcell
-- Equation(s):
-- \dut_instance|terror_current_state.S1~regout\ = DFFEAS((\dut_instance|terror_current_state~13_combout\ & (\dut_instance|terror_current_state~22_combout\ & ((!\scan_instance|In_Reg|PO[6]~3_combout\)))) # (!\dut_instance|terror_current_state~13_combout\ & 
-- (((\dut_instance|terror_current_state.S1~regout\)))), GLOBAL(\scan_instance|In_Reg|PO\(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0cac",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(5),
	dataa => \dut_instance|terror_current_state~22_combout\,
	datab => \dut_instance|terror_current_state.S1~regout\,
	datac => \dut_instance|terror_current_state~13_combout\,
	datad => \scan_instance|In_Reg|PO[6]~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|terror_current_state.S1~regout\);

-- Location: LC_X4_Y7_N5
\dut_instance|terror_current_state~17\ : maxv_lcell
-- Equation(s):
-- \dut_instance|terror_current_state~17_combout\ = ((\dut_instance|Equal4~0_combout\ & (\dut_instance|Equal4~1_combout\ & \dut_instance|terror_current_state.S1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut_instance|Equal4~0_combout\,
	datac => \dut_instance|Equal4~1_combout\,
	datad => \dut_instance|terror_current_state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|terror_current_state~17_combout\);

-- Location: LC_X3_Y9_N7
\dut_instance|terror_current_state.S2\ : maxv_lcell
-- Equation(s):
-- \dut_instance|terror_current_state.S2~regout\ = DFFEAS((\dut_instance|terror_current_state~13_combout\ & (!\scan_instance|In_Reg|PO[6]~3_combout\ & (\dut_instance|terror_current_state~17_combout\))) # (!\dut_instance|terror_current_state~13_combout\ & 
-- (((\dut_instance|terror_current_state.S2~regout\)))), GLOBAL(\scan_instance|In_Reg|PO\(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4f40",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(5),
	dataa => \scan_instance|In_Reg|PO[6]~3_combout\,
	datab => \dut_instance|terror_current_state~17_combout\,
	datac => \dut_instance|terror_current_state~13_combout\,
	datad => \dut_instance|terror_current_state.S2~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|terror_current_state.S2~regout\);

-- Location: LC_X3_Y9_N9
\dut_instance|terror_current_state.S3\ : maxv_lcell
-- Equation(s):
-- \dut_instance|terror_current_state.S3~regout\ = DFFEAS((!\scan_instance|In_Reg|PO[6]~3_combout\ & ((\dut_instance|Equal10~12_combout\ & ((\dut_instance|terror_current_state.S2~regout\))) # (!\dut_instance|Equal10~12_combout\ & 
-- (\dut_instance|terror_current_state.S3~regout\)))), GLOBAL(\scan_instance|In_Reg|PO\(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(5),
	dataa => \dut_instance|Equal10~12_combout\,
	datab => \dut_instance|terror_current_state.S3~regout\,
	datac => \dut_instance|terror_current_state.S2~regout\,
	datad => \scan_instance|In_Reg|PO[6]~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|terror_current_state.S3~regout\);

-- Location: LC_X4_Y9_N8
\dut_instance|terror_current_state.S4\ : maxv_lcell
-- Equation(s):
-- \dut_instance|terror_current_state.S4~regout\ = DFFEAS((!\scan_instance|In_Reg|PO[6]~3_combout\ & ((\dut_instance|terror_current_state~15_combout\) # ((\dut_instance|terror_current_state.S3~regout\ & \dut_instance|Equal10~12_combout\)))), 
-- GLOBAL(\scan_instance|In_Reg|PO\(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(5),
	dataa => \dut_instance|terror_current_state~15_combout\,
	datab => \dut_instance|terror_current_state.S3~regout\,
	datac => \dut_instance|Equal10~12_combout\,
	datad => \scan_instance|In_Reg|PO[6]~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|terror_current_state.S4~regout\);

-- Location: LC_X4_Y9_N2
\dut_instance|terror_current_state~10\ : maxv_lcell
-- Equation(s):
-- \dut_instance|terror_current_state~10_combout\ = (\dut_instance|terror_current_state.S4~regout\ & (\dut_instance|Equal4~0_combout\ & (\scan_instance|In_Reg|PO[3]~0_combout\ & \scan_instance|In_Reg|PO[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|terror_current_state.S4~regout\,
	datab => \dut_instance|Equal4~0_combout\,
	datac => \scan_instance|In_Reg|PO[3]~0_combout\,
	datad => \scan_instance|In_Reg|PO[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|terror_current_state~10_combout\);

-- Location: LC_X3_Y9_N1
\dut_instance|terror_current_state.S5\ : maxv_lcell
-- Equation(s):
-- \dut_instance|terror_current_state.S5~regout\ = DFFEAS((\dut_instance|terror_current_state~13_combout\ & (!\scan_instance|In_Reg|PO[6]~3_combout\ & (\dut_instance|terror_current_state~10_combout\))) # (!\dut_instance|terror_current_state~13_combout\ & 
-- (((\dut_instance|terror_current_state.S5~regout\)))), GLOBAL(\scan_instance|In_Reg|PO\(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "44f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(5),
	dataa => \scan_instance|In_Reg|PO[6]~3_combout\,
	datab => \dut_instance|terror_current_state~10_combout\,
	datac => \dut_instance|terror_current_state.S5~regout\,
	datad => \dut_instance|terror_current_state~13_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|terror_current_state.S5~regout\);

-- Location: LC_X3_Y9_N6
\dut_instance|W4~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|W4~0_combout\ = (\dut_instance|Equal10~12_combout\ & (((\dut_instance|terror_current_state.S5~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|Equal10~12_combout\,
	datad => \dut_instance|terror_current_state.S5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|W4~0_combout\);

-- Location: LC_X4_Y6_N1
\dut_instance|Equal1~3\ : maxv_lcell
-- Equation(s):
-- \dut_instance|Equal1~3_combout\ = ((!\scan_instance|In_Reg|L2\(2) & (!\scan_instance|In_Reg|L2\(3) & !\scan_instance|In_Reg|L2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \scan_instance|In_Reg|L2\(2),
	datac => \scan_instance|In_Reg|L2\(3),
	datad => \scan_instance|In_Reg|L2\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|Equal1~3_combout\);

-- Location: LC_X4_Y6_N9
\dut_instance|Equal1~12\ : maxv_lcell
-- Equation(s):
-- \dut_instance|Equal1~12_combout\ = (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(1) & (!\scan_instance|In_Reg|L2\(0) & \dut_instance|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(1),
	datac => \scan_instance|In_Reg|L2\(0),
	datad => \dut_instance|Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|Equal1~12_combout\);

-- Location: LC_X5_Y10_N8
\dut_instance|bomb_current_state~22\ : maxv_lcell
-- Equation(s):
-- \dut_instance|bomb_current_state~22_combout\ = (!\dut_instance|bomb_current_state~29_combout\ & (!\dut_instance|bomb_current_state~21_combout\ & ((\TRST~combout\) # (!\scan_instance|In_Reg|L2\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0031",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(6),
	datab => \dut_instance|bomb_current_state~29_combout\,
	datac => \TRST~combout\,
	datad => \dut_instance|bomb_current_state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|bomb_current_state~22_combout\);

-- Location: LC_X5_Y10_N5
\dut_instance|bomb_current_state~26\ : maxv_lcell
-- Equation(s):
-- \dut_instance|bomb_current_state~26_combout\ = (!\dut_instance|bomb_current_state~29_combout\ & (((!\dut_instance|Equal7~2_combout\) # (!\dut_instance|bomb_current_state.S1~regout\)) # (!\scan_instance|In_Reg|PO[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1333",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[0]~1_combout\,
	datab => \dut_instance|bomb_current_state~29_combout\,
	datac => \dut_instance|bomb_current_state.S1~regout\,
	datad => \dut_instance|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|bomb_current_state~26_combout\);

-- Location: LC_X5_Y10_N6
\dut_instance|bomb_current_state.S0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|bomb_current_state.S0~regout\ = DFFEAS((!\scan_instance|In_Reg|PO[6]~3_combout\ & ((\dut_instance|Equal1~12_combout\) # ((\dut_instance|bomb_current_state.S0~regout\) # (!\dut_instance|bomb_current_state~26_combout\)))), 
-- GLOBAL(\scan_instance|In_Reg|PO\(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5545",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(5),
	dataa => \scan_instance|In_Reg|PO[6]~3_combout\,
	datab => \dut_instance|Equal1~12_combout\,
	datac => \dut_instance|bomb_current_state~26_combout\,
	datad => \dut_instance|bomb_current_state.S0~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|bomb_current_state.S0~regout\);

-- Location: LC_X5_Y10_N9
\dut_instance|bomb_current_state~23\ : maxv_lcell
-- Equation(s):
-- \dut_instance|bomb_current_state~23_combout\ = ((\dut_instance|Equal1~12_combout\ & ((\dut_instance|bomb_current_state.S3~regout\) # (!\dut_instance|bomb_current_state.S0~regout\)))) # (!\dut_instance|bomb_current_state~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8cff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|bomb_current_state.S3~regout\,
	datab => \dut_instance|Equal1~12_combout\,
	datac => \dut_instance|bomb_current_state.S0~regout\,
	datad => \dut_instance|bomb_current_state~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|bomb_current_state~23_combout\);

-- Location: LC_X5_Y10_N4
\dut_instance|bomb_current_state.S1\ : maxv_lcell
-- Equation(s):
-- \dut_instance|bomb_current_state.S1~regout\ = DFFEAS(((\dut_instance|bomb_current_state~23_combout\ & (\dut_instance|bomb_current_state~22_combout\)) # (!\dut_instance|bomb_current_state~23_combout\ & ((\dut_instance|bomb_current_state.S1~regout\)))), 
-- GLOBAL(\scan_instance|In_Reg|PO\(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(5),
	dataa => \dut_instance|bomb_current_state~22_combout\,
	datac => \dut_instance|bomb_current_state.S1~regout\,
	datad => \dut_instance|bomb_current_state~23_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|bomb_current_state.S1~regout\);

-- Location: LC_X5_Y10_N7
\dut_instance|bomb_current_state~21\ : maxv_lcell
-- Equation(s):
-- \dut_instance|bomb_current_state~21_combout\ = (\dut_instance|bomb_current_state.S1~regout\ & (\scan_instance|In_Reg|PO[3]~0_combout\ & (\scan_instance|In_Reg|PO[0]~1_combout\ & \dut_instance|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|bomb_current_state.S1~regout\,
	datab => \scan_instance|In_Reg|PO[3]~0_combout\,
	datac => \scan_instance|In_Reg|PO[0]~1_combout\,
	datad => \dut_instance|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|bomb_current_state~21_combout\);

-- Location: LC_X5_Y10_N2
\dut_instance|bomb_current_state.S2\ : maxv_lcell
-- Equation(s):
-- \dut_instance|bomb_current_state.S2~regout\ = DFFEAS((\dut_instance|bomb_current_state~23_combout\ & (!\scan_instance|In_Reg|PO[6]~3_combout\ & (\dut_instance|bomb_current_state~21_combout\))) # (!\dut_instance|bomb_current_state~23_combout\ & 
-- (((\dut_instance|bomb_current_state.S2~regout\)))), GLOBAL(\scan_instance|In_Reg|PO\(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "44f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(5),
	dataa => \scan_instance|In_Reg|PO[6]~3_combout\,
	datab => \dut_instance|bomb_current_state~21_combout\,
	datac => \dut_instance|bomb_current_state.S2~regout\,
	datad => \dut_instance|bomb_current_state~23_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|bomb_current_state.S2~regout\);

-- Location: LC_X5_Y10_N0
\dut_instance|bomb_current_state~9\ : maxv_lcell
-- Equation(s):
-- \dut_instance|bomb_current_state~9_combout\ = (!\scan_instance|In_Reg|L2\(4) & (\scan_instance|In_Reg|L2\(3) & (!\scan_instance|In_Reg|L2\(1) & \dut_instance|bomb_current_state.S2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(4),
	datab => \scan_instance|In_Reg|L2\(3),
	datac => \scan_instance|In_Reg|L2\(1),
	datad => \dut_instance|bomb_current_state.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|bomb_current_state~9_combout\);

-- Location: LC_X5_Y10_N1
\dut_instance|bomb_current_state~29\ : maxv_lcell
-- Equation(s):
-- \dut_instance|bomb_current_state~29_combout\ = (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(0) & (\scan_instance|In_Reg|L2\(2) & \dut_instance|bomb_current_state~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(0),
	datac => \scan_instance|In_Reg|L2\(2),
	datad => \dut_instance|bomb_current_state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|bomb_current_state~29_combout\);

-- Location: LC_X5_Y10_N3
\dut_instance|bomb_current_state.S3\ : maxv_lcell
-- Equation(s):
-- \dut_instance|bomb_current_state.S3~regout\ = DFFEAS((\dut_instance|bomb_current_state~29_combout\ & (((\dut_instance|bomb_current_state.S3~regout\ & !\dut_instance|bomb_current_state~23_combout\)) # (!\scan_instance|In_Reg|PO[6]~3_combout\))) # 
-- (!\dut_instance|bomb_current_state~29_combout\ & (((\dut_instance|bomb_current_state.S3~regout\ & !\dut_instance|bomb_current_state~23_combout\)))), GLOBAL(\scan_instance|In_Reg|PO\(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "22f2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(5),
	dataa => \dut_instance|bomb_current_state~29_combout\,
	datab => \scan_instance|In_Reg|PO[6]~3_combout\,
	datac => \dut_instance|bomb_current_state.S3~regout\,
	datad => \dut_instance|bomb_current_state~23_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|bomb_current_state.S3~regout\);

-- Location: LC_X4_Y8_N3
\dut_instance|knife_current_state~38\ : maxv_lcell
-- Equation(s):
-- \dut_instance|knife_current_state~38_combout\ = ((!\dut_instance|knife_current_state.S3~regout\ & ((!\dut_instance|knife_current_state.S4~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut_instance|knife_current_state.S3~regout\,
	datad => \dut_instance|knife_current_state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|knife_current_state~38_combout\);

-- Location: LC_X4_Y8_N4
\dut_instance|knife_current_state~39\ : maxv_lcell
-- Equation(s):
-- \dut_instance|knife_current_state~39_combout\ = (!\scan_instance|In_Reg|PO[6]~3_combout\ & (((\dut_instance|knife_current_state~38_combout\) # (!\dut_instance|Equal4~1_combout\)) # (!\dut_instance|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5515",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[6]~3_combout\,
	datab => \dut_instance|Equal4~0_combout\,
	datac => \dut_instance|Equal4~1_combout\,
	datad => \dut_instance|knife_current_state~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|knife_current_state~39_combout\);

-- Location: LC_X5_Y8_N1
\dut_instance|knife_current_state.S1\ : maxv_lcell
-- Equation(s):
-- \dut_instance|knife_current_state.S1~regout\ = DFFEAS((\dut_instance|knife_current_state~50_combout\ & (((\dut_instance|knife_current_state.S1~regout\ & !\dut_instance|knife_current_state~45_combout\)) # (!\scan_instance|In_Reg|PO[6]~3_combout\))) # 
-- (!\dut_instance|knife_current_state~50_combout\ & (\dut_instance|knife_current_state.S1~regout\ & (!\dut_instance|knife_current_state~45_combout\))), GLOBAL(\scan_instance|In_Reg|PO\(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0cae",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(5),
	dataa => \dut_instance|knife_current_state~50_combout\,
	datab => \dut_instance|knife_current_state.S1~regout\,
	datac => \dut_instance|knife_current_state~45_combout\,
	datad => \scan_instance|In_Reg|PO[6]~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|knife_current_state.S1~regout\);

-- Location: LC_X5_Y8_N5
\dut_instance|knife_current_state~44\ : maxv_lcell
-- Equation(s):
-- \dut_instance|knife_current_state~44_combout\ = (\dut_instance|Equal4~0_combout\ & (\scan_instance|In_Reg|PO[3]~0_combout\ & (!\scan_instance|In_Reg|PO[0]~1_combout\ & \dut_instance|knife_current_state.S1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|Equal4~0_combout\,
	datab => \scan_instance|In_Reg|PO[3]~0_combout\,
	datac => \scan_instance|In_Reg|PO[0]~1_combout\,
	datad => \dut_instance|knife_current_state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|knife_current_state~44_combout\);

-- Location: LC_X5_Y8_N3
\dut_instance|knife_current_state.S2\ : maxv_lcell
-- Equation(s):
-- \dut_instance|knife_current_state.S2~regout\ = DFFEAS((\dut_instance|knife_current_state~45_combout\ & (\dut_instance|knife_current_state~44_combout\ & (!\scan_instance|In_Reg|PO[6]~3_combout\))) # (!\dut_instance|knife_current_state~45_combout\ & 
-- (((\dut_instance|knife_current_state.S2~regout\)))), GLOBAL(\scan_instance|In_Reg|PO\(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2f20",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(5),
	dataa => \dut_instance|knife_current_state~44_combout\,
	datab => \scan_instance|In_Reg|PO[6]~3_combout\,
	datac => \dut_instance|knife_current_state~45_combout\,
	datad => \dut_instance|knife_current_state.S2~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|knife_current_state.S2~regout\);

-- Location: LC_X5_Y8_N4
\dut_instance|knife_current_state~25\ : maxv_lcell
-- Equation(s):
-- \dut_instance|knife_current_state~25_combout\ = (!\scan_instance|In_Reg|L2\(2) & (!\scan_instance|In_Reg|L2\(4) & (!\scan_instance|In_Reg|L2\(1) & \dut_instance|knife_current_state.S2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(2),
	datab => \scan_instance|In_Reg|L2\(4),
	datac => \scan_instance|In_Reg|L2\(1),
	datad => \dut_instance|knife_current_state.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|knife_current_state~25_combout\);

-- Location: LC_X4_Y8_N5
\dut_instance|knife_current_state~51\ : maxv_lcell
-- Equation(s):
-- \dut_instance|knife_current_state~51_combout\ = (\scan_instance|In_Reg|L2\(3) & (\scan_instance|In_Reg|L2\(0) & (!\TRST~combout\ & \dut_instance|knife_current_state~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(3),
	datab => \scan_instance|In_Reg|L2\(0),
	datac => \TRST~combout\,
	datad => \dut_instance|knife_current_state~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|knife_current_state~51_combout\);

-- Location: LC_X4_Y8_N6
\dut_instance|knife_current_state~40\ : maxv_lcell
-- Equation(s):
-- \dut_instance|knife_current_state~40_combout\ = (\dut_instance|knife_current_state~51_combout\) # ((!\scan_instance|In_Reg|PO[0]~1_combout\ & (!\dut_instance|knife_current_state.S2~regout\ & \dut_instance|Equal7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[0]~1_combout\,
	datab => \dut_instance|knife_current_state.S2~regout\,
	datac => \dut_instance|Equal7~2_combout\,
	datad => \dut_instance|knife_current_state~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|knife_current_state~40_combout\);

-- Location: LC_X4_Y8_N7
\dut_instance|knife_current_state~41\ : maxv_lcell
-- Equation(s):
-- \dut_instance|knife_current_state~41_combout\ = ((\dut_instance|knife_current_state~50_combout\) # ((\dut_instance|knife_current_state.S0~regout\ & \dut_instance|knife_current_state~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut_instance|knife_current_state~50_combout\,
	datac => \dut_instance|knife_current_state.S0~regout\,
	datad => \dut_instance|knife_current_state~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|knife_current_state~41_combout\);

-- Location: LC_X4_Y8_N8
\dut_instance|knife_current_state~42\ : maxv_lcell
-- Equation(s):
-- \dut_instance|knife_current_state~42_combout\ = ((!\dut_instance|knife_current_state.S3~regout\ & (!\dut_instance|knife_current_state.S4~regout\ & \dut_instance|knife_current_state~41_combout\))) # (!\dut_instance|knife_current_state~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5755",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|knife_current_state~39_combout\,
	datab => \dut_instance|knife_current_state.S3~regout\,
	datac => \dut_instance|knife_current_state.S4~regout\,
	datad => \dut_instance|knife_current_state~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|knife_current_state~42_combout\);

-- Location: LC_X4_Y8_N9
\dut_instance|knife_current_state.S0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|knife_current_state.S0~regout\ = DFFEAS((\dut_instance|knife_current_state~42_combout\ & (!\scan_instance|In_Reg|PO[6]~3_combout\ & ((!\dut_instance|W~0_combout\)))) # (!\dut_instance|knife_current_state~42_combout\ & 
-- (((\dut_instance|knife_current_state.S0~regout\)))), GLOBAL(\scan_instance|In_Reg|PO\(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "05cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(5),
	dataa => \scan_instance|In_Reg|PO[6]~3_combout\,
	datab => \dut_instance|knife_current_state.S0~regout\,
	datac => \dut_instance|W~0_combout\,
	datad => \dut_instance|knife_current_state~42_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|knife_current_state.S0~regout\);

-- Location: LC_X4_Y8_N1
\dut_instance|knife_current_state~10\ : maxv_lcell
-- Equation(s):
-- \dut_instance|knife_current_state~10_combout\ = (\scan_instance|In_Reg|L2\(3) & (!\scan_instance|In_Reg|L2\(4) & (!\scan_instance|In_Reg|L2\(2) & !\dut_instance|knife_current_state.S0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(3),
	datab => \scan_instance|In_Reg|L2\(4),
	datac => \scan_instance|In_Reg|L2\(2),
	datad => \dut_instance|knife_current_state.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|knife_current_state~10_combout\);

-- Location: LC_X4_Y8_N0
\dut_instance|knife_current_state~50\ : maxv_lcell
-- Equation(s):
-- \dut_instance|knife_current_state~50_combout\ = (\scan_instance|In_Reg|L2\(0) & (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(1) & \dut_instance|knife_current_state~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(0),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(1),
	datad => \dut_instance|knife_current_state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|knife_current_state~50_combout\);

-- Location: LC_X5_Y8_N6
\dut_instance|knife_current_state~45\ : maxv_lcell
-- Equation(s):
-- \dut_instance|knife_current_state~45_combout\ = (\dut_instance|knife_current_state~50_combout\) # (((\dut_instance|knife_current_state~44_combout\) # (\dut_instance|knife_current_state~51_combout\)) # (!\dut_instance|knife_current_state~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|knife_current_state~50_combout\,
	datab => \dut_instance|knife_current_state~39_combout\,
	datac => \dut_instance|knife_current_state~44_combout\,
	datad => \dut_instance|knife_current_state~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|knife_current_state~45_combout\);

-- Location: LC_X5_Y8_N8
\dut_instance|knife_current_state.S3\ : maxv_lcell
-- Equation(s):
-- \dut_instance|knife_current_state.S3~regout\ = DFFEAS((\dut_instance|knife_current_state.S3~regout\ & (((!\scan_instance|In_Reg|PO[6]~3_combout\ & \dut_instance|knife_current_state~51_combout\)) # (!\dut_instance|knife_current_state~45_combout\))) # 
-- (!\dut_instance|knife_current_state.S3~regout\ & (!\scan_instance|In_Reg|PO[6]~3_combout\ & ((\dut_instance|knife_current_state~51_combout\)))), GLOBAL(\scan_instance|In_Reg|PO\(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3b0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(5),
	dataa => \dut_instance|knife_current_state.S3~regout\,
	datab => \scan_instance|In_Reg|PO[6]~3_combout\,
	datac => \dut_instance|knife_current_state~45_combout\,
	datad => \dut_instance|knife_current_state~51_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|knife_current_state.S3~regout\);

-- Location: LC_X5_Y8_N9
\dut_instance|knife_current_state~37\ : maxv_lcell
-- Equation(s):
-- \dut_instance|knife_current_state~37_combout\ = (\dut_instance|Equal4~0_combout\ & (\dut_instance|Equal4~1_combout\ & (\dut_instance|knife_current_state.S3~regout\ & !\scan_instance|In_Reg|PO[6]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|Equal4~0_combout\,
	datab => \dut_instance|Equal4~1_combout\,
	datac => \dut_instance|knife_current_state.S3~regout\,
	datad => \scan_instance|In_Reg|PO[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|knife_current_state~37_combout\);

-- Location: LC_X4_Y8_N2
\dut_instance|knife_current_state.S4\ : maxv_lcell
-- Equation(s):
-- \dut_instance|knife_current_state.S4~regout\ = DFFEAS(((\dut_instance|knife_current_state~42_combout\ & (\dut_instance|knife_current_state~37_combout\)) # (!\dut_instance|knife_current_state~42_combout\ & 
-- ((\dut_instance|knife_current_state.S4~regout\)))), GLOBAL(\scan_instance|In_Reg|PO\(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(5),
	datab => \dut_instance|knife_current_state~37_combout\,
	datac => \dut_instance|knife_current_state.S4~regout\,
	datad => \dut_instance|knife_current_state~42_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|knife_current_state.S4~regout\);

-- Location: LC_X4_Y6_N3
\dut_instance|W~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|W~0_combout\ = (\dut_instance|Equal4~0_combout\ & (((\dut_instance|knife_current_state.S4~regout\ & \dut_instance|Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|Equal4~0_combout\,
	datac => \dut_instance|knife_current_state.S4~regout\,
	datad => \dut_instance|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|W~0_combout\);

-- Location: LC_X4_Y6_N4
\dut_instance|W~1\ : maxv_lcell
-- Equation(s):
-- \dut_instance|W~1_combout\ = ((\dut_instance|W~0_combout\) # ((\dut_instance|Equal1~12_combout\ & \dut_instance|bomb_current_state.S3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut_instance|Equal1~12_combout\,
	datac => \dut_instance|bomb_current_state.S3~regout\,
	datad => \dut_instance|W~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|W~1_combout\);

-- Location: LC_X3_Y7_N8
\dut_instance|W\ : maxv_lcell
-- Equation(s):
-- \dut_instance|W~regout\ = DFFEAS((!\scan_instance|In_Reg|PO[6]~3_combout\ & ((\dut_instance|gun_current_state~7_combout\) # ((\dut_instance|W4~0_combout\) # (\dut_instance|W~1_combout\)))), GLOBAL(\scan_instance|In_Reg|PO\(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5554",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(5),
	dataa => \scan_instance|In_Reg|PO[6]~3_combout\,
	datab => \dut_instance|gun_current_state~7_combout\,
	datac => \dut_instance|W4~0_combout\,
	datad => \dut_instance|W~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|W~regout\);

-- Location: LC_X3_Y7_N9
\scan_instance|Out_Reg|mux1[0]~0\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~0_combout\ = (\TRST~combout\ & (((\dut_instance|W~regout\)))) # (!\TRST~combout\ & ((\scan_instance|Selector3~0_combout\ & (\scan_instance|In_Reg|L1\(0))) # (!\scan_instance|Selector3~0_combout\ & 
-- ((\dut_instance|W~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L1\(0),
	datab => \TRST~combout\,
	datac => \scan_instance|Selector3~0_combout\,
	datad => \dut_instance|W~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~0_combout\);

-- Location: LC_X3_Y7_N1
\scan_instance|Out_Reg|L1[0]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(0) = DFFEAS((\TRST~combout\ & (\scan_instance|Out_Reg|L1\(0))) # (!\TRST~combout\ & ((\scan_instance|Selector2~0_combout\ & (\scan_instance|Out_Reg|L1\(0))) # (!\scan_instance|Selector2~0_combout\ & 
-- ((\scan_instance|Out_Reg|mux1[0]~0_combout\))))), GLOBAL(\TCLK~combout\), VCC, , , , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cdc8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datab => \scan_instance|Out_Reg|L1\(0),
	datac => \scan_instance|Selector2~0_combout\,
	datad => \scan_instance|Out_Reg|mux1[0]~0_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(0));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\TDO~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \scan_instance|Out_Reg|L1\(0),
	oe => VCC,
	padio => ww_TDO);
END structure;


