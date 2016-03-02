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

-- DATE "03/03/2016 00:32:08"

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

ENTITY 	StringRecognizer IS
    PORT (
	X4 : IN std_logic;
	X3 : IN std_logic;
	X2 : IN std_logic;
	X1 : IN std_logic;
	X0 : IN std_logic;
	W : OUT std_logic;
	clk : IN std_logic;
	reset : IN std_logic
	);
END StringRecognizer;

-- Design Ports Information
-- W	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- X4	=>  Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X1	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X0	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X3	=>  Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X2	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF StringRecognizer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_X4 : std_logic;
SIGNAL ww_X3 : std_logic;
SIGNAL ww_X2 : std_logic;
SIGNAL ww_X1 : std_logic;
SIGNAL ww_X0 : std_logic;
SIGNAL ww_W : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL \X0~combout\ : std_logic;
SIGNAL \X3~combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \X1~combout\ : std_logic;
SIGNAL \X2~combout\ : std_logic;
SIGNAL \X4~combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \knife_current_state~7_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \bomb_current_state~8_combout\ : std_logic;
SIGNAL \bomb_current_state~13_combout\ : std_logic;
SIGNAL \bomb_current_state~14_combout\ : std_logic;
SIGNAL \bomb_current_state.S0~regout\ : std_logic;
SIGNAL \bomb_current_state~12_combout\ : std_logic;
SIGNAL \bomb_current_state.S1~regout\ : std_logic;
SIGNAL \bomb_current_state~7_combout\ : std_logic;
SIGNAL \bomb_current_state~9_combout\ : std_logic;
SIGNAL \bomb_current_state.S2~regout\ : std_logic;
SIGNAL \bomb_current_state~6_combout\ : std_logic;
SIGNAL \bomb_current_state.S3~regout\ : std_logic;
SIGNAL \Bomb:varW1~0_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \terror_current_state.S0~regout\ : std_logic;
SIGNAL \terror_current_state~13_combout\ : std_logic;
SIGNAL \terror_current_state~11_combout\ : std_logic;
SIGNAL \terror_current_state~12_combout\ : std_logic;
SIGNAL \terror_current_state~14_combout\ : std_logic;
SIGNAL \terror_current_state.S1~regout\ : std_logic;
SIGNAL \terror_current_state~22_combout\ : std_logic;
SIGNAL \terror_current_state.S2~regout\ : std_logic;
SIGNAL \terror_current_state.S3~regout\ : std_logic;
SIGNAL \terror_current_state~16_combout\ : std_logic;
SIGNAL \terror_current_state.S4~regout\ : std_logic;
SIGNAL \terror_current_state~10_combout\ : std_logic;
SIGNAL \terror_current_state.S5~regout\ : std_logic;
SIGNAL \gun_current_state~7_combout\ : std_logic;
SIGNAL \gun_current_state.S0~regout\ : std_logic;
SIGNAL \gun_current_state~6_combout\ : std_logic;
SIGNAL \gun_current_state.S1~regout\ : std_logic;
SIGNAL \gun_current_state~5_combout\ : std_logic;
SIGNAL \gun_current_state~8_combout\ : std_logic;
SIGNAL \gun_current_state.S2~regout\ : std_logic;
SIGNAL \knife_current_state~9_combout\ : std_logic;
SIGNAL \knife_current_state~14_combout\ : std_logic;
SIGNAL \knife_current_state~10_combout\ : std_logic;
SIGNAL \knife_current_state~12_combout\ : std_logic;
SIGNAL \knife_current_state~15_combout\ : std_logic;
SIGNAL \knife_current_state.S0~regout\ : std_logic;
SIGNAL \knife_current_state~13_combout\ : std_logic;
SIGNAL \knife_current_state.S1~regout\ : std_logic;
SIGNAL \knife_current_state~17_combout\ : std_logic;
SIGNAL \knife_current_state~18_combout\ : std_logic;
SIGNAL \knife_current_state.S2~regout\ : std_logic;
SIGNAL \knife_current_state~11_combout\ : std_logic;
SIGNAL \knife_current_state.S3~regout\ : std_logic;
SIGNAL \knife_current_state~8_combout\ : std_logic;
SIGNAL \knife_current_state.S4~regout\ : std_logic;
SIGNAL \Knife:varW2~2_combout\ : std_logic;
SIGNAL \W~0_combout\ : std_logic;
SIGNAL \W~1_combout\ : std_logic;

BEGIN

ww_X4 <= X4;
ww_X3 <= X3;
ww_X2 <= X2;
ww_X1 <= X1;
ww_X0 <= X0;
W <= ww_W;
ww_clk <= clk;
ww_reset <= reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X0~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_X0,
	combout => \X0~combout\);

-- Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X3~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_X3,
	combout => \X3~combout\);

-- Location: LC_X14_Y9_N3
\Equal4~0\ : maxv_lcell
-- Equation(s):
-- \Equal4~0_combout\ = ((!\X0~combout\ & (!\X3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0303",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \X0~combout\,
	datac => \X3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal4~0_combout\);

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_X1,
	combout => \X1~combout\);

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_X2,
	combout => \X2~combout\);

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X4~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_X4,
	combout => \X4~combout\);

-- Location: LC_X14_Y8_N6
\Equal1~0\ : maxv_lcell
-- Equation(s):
-- \Equal1~0_combout\ = (\Equal4~0_combout\ & (\X1~combout\ & (!\X2~combout\ & !\X4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \X1~combout\,
	datac => \X2~combout\,
	datad => \X4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~0_combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LC_X14_Y8_N3
\knife_current_state~7\ : maxv_lcell
-- Equation(s):
-- \knife_current_state~7_combout\ = (\X3~combout\ & (!\X4~combout\ & (\X0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \X3~combout\,
	datab => \X4~combout\,
	datac => \X0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \knife_current_state~7_combout\);

-- Location: LC_X14_Y9_N5
\Equal7~0\ : maxv_lcell
-- Equation(s):
-- \Equal7~0_combout\ = (!\X4~combout\ & (\X2~combout\ & (\X3~combout\ & \X1~combout\)))

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
	dataa => \X4~combout\,
	datab => \X2~combout\,
	datac => \X3~combout\,
	datad => \X1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal7~0_combout\);

-- Location: LC_X11_Y8_N4
\bomb_current_state~8\ : maxv_lcell
-- Equation(s):
-- \bomb_current_state~8_combout\ = (!\reset~combout\ & (((!\bomb_current_state.S3~regout\ & \bomb_current_state.S0~regout\)) # (!\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1511",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \Equal1~0_combout\,
	datac => \bomb_current_state.S3~regout\,
	datad => \bomb_current_state.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bomb_current_state~8_combout\);

-- Location: LC_X11_Y8_N1
\bomb_current_state~13\ : maxv_lcell
-- Equation(s):
-- \bomb_current_state~13_combout\ = ((\bomb_current_state~6_combout\ & ((\bomb_current_state.S2~regout\) # (\bomb_current_state.S1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \bomb_current_state.S2~regout\,
	datac => \bomb_current_state.S1~regout\,
	datad => \bomb_current_state~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bomb_current_state~13_combout\);

-- Location: LC_X11_Y8_N2
\bomb_current_state~14\ : maxv_lcell
-- Equation(s):
-- \bomb_current_state~14_combout\ = ((\bomb_current_state~13_combout\) # ((!\bomb_current_state.S2~regout\ & \bomb_current_state~7_combout\))) # (!\bomb_current_state~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff4f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bomb_current_state.S2~regout\,
	datab => \bomb_current_state~7_combout\,
	datac => \bomb_current_state~8_combout\,
	datad => \bomb_current_state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bomb_current_state~14_combout\);

-- Location: LC_X11_Y8_N3
\bomb_current_state.S0\ : maxv_lcell
-- Equation(s):
-- \bomb_current_state.S0~regout\ = DFFEAS((\bomb_current_state~14_combout\ & (((!\reset~combout\ & !\Bomb:varW1~0_combout\)))) # (!\bomb_current_state~14_combout\ & (\bomb_current_state.S0~regout\)), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \bomb_current_state.S0~regout\,
	datab => \reset~combout\,
	datac => \Bomb:varW1~0_combout\,
	datad => \bomb_current_state~14_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bomb_current_state.S0~regout\);

-- Location: LC_X12_Y8_N9
\bomb_current_state~12\ : maxv_lcell
-- Equation(s):
-- \bomb_current_state~12_combout\ = (((!\reset~combout\ & !\bomb_current_state.S0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \bomb_current_state.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bomb_current_state~12_combout\);

-- Location: LC_X11_Y8_N6
\bomb_current_state.S1\ : maxv_lcell
-- Equation(s):
-- \bomb_current_state.S1~regout\ = DFFEAS((\bomb_current_state~14_combout\ & (((\Equal1~0_combout\ & \bomb_current_state~12_combout\)))) # (!\bomb_current_state~14_combout\ & (\bomb_current_state.S1~regout\)), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \bomb_current_state.S1~regout\,
	datab => \Equal1~0_combout\,
	datac => \bomb_current_state~12_combout\,
	datad => \bomb_current_state~14_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bomb_current_state.S1~regout\);

-- Location: LC_X11_Y8_N7
\bomb_current_state~7\ : maxv_lcell
-- Equation(s):
-- \bomb_current_state~7_combout\ = ((\Equal7~0_combout\ & (\bomb_current_state.S1~regout\ & \X0~combout\)))

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
	datab => \Equal7~0_combout\,
	datac => \bomb_current_state.S1~regout\,
	datad => \X0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bomb_current_state~7_combout\);

-- Location: LC_X11_Y8_N8
\bomb_current_state~9\ : maxv_lcell
-- Equation(s):
-- \bomb_current_state~9_combout\ = ((\bomb_current_state~6_combout\) # ((\bomb_current_state~7_combout\) # (!\bomb_current_state~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \bomb_current_state~6_combout\,
	datac => \bomb_current_state~8_combout\,
	datad => \bomb_current_state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bomb_current_state~9_combout\);

-- Location: LC_X11_Y8_N9
\bomb_current_state.S2\ : maxv_lcell
-- Equation(s):
-- \bomb_current_state.S2~regout\ = DFFEAS((\bomb_current_state~9_combout\ & (((\bomb_current_state~7_combout\ & !\reset~combout\)))) # (!\bomb_current_state~9_combout\ & (\bomb_current_state.S2~regout\)), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0caa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \bomb_current_state.S2~regout\,
	datab => \bomb_current_state~7_combout\,
	datac => \reset~combout\,
	datad => \bomb_current_state~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bomb_current_state.S2~regout\);

-- Location: LC_X11_Y8_N0
\bomb_current_state~6\ : maxv_lcell
-- Equation(s):
-- \bomb_current_state~6_combout\ = (\X2~combout\ & (!\X1~combout\ & (\knife_current_state~7_combout\ & \bomb_current_state.S2~regout\)))

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
	dataa => \X2~combout\,
	datab => \X1~combout\,
	datac => \knife_current_state~7_combout\,
	datad => \bomb_current_state.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bomb_current_state~6_combout\);

-- Location: LC_X11_Y8_N5
\bomb_current_state.S3\ : maxv_lcell
-- Equation(s):
-- \bomb_current_state.S3~regout\ = DFFEAS((\reset~combout\ & (\bomb_current_state.S3~regout\ & ((!\bomb_current_state~9_combout\)))) # (!\reset~combout\ & ((\bomb_current_state~6_combout\) # ((\bomb_current_state.S3~regout\ & 
-- !\bomb_current_state~9_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50dc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \reset~combout\,
	datab => \bomb_current_state.S3~regout\,
	datac => \bomb_current_state~6_combout\,
	datad => \bomb_current_state~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bomb_current_state.S3~regout\);

-- Location: LC_X12_Y8_N3
\Bomb:varW1~0\ : maxv_lcell
-- Equation(s):
-- \Bomb:varW1~0_combout\ = (((\Equal1~0_combout\ & \bomb_current_state.S3~regout\)))

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
	datac => \Equal1~0_combout\,
	datad => \bomb_current_state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Bomb:varW1~0_combout\);

-- Location: LC_X14_Y9_N4
\Equal10~0\ : maxv_lcell
-- Equation(s):
-- \Equal10~0_combout\ = (\X1~combout\ & (!\X2~combout\ & (\X4~combout\ & \Equal4~0_combout\)))

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
	dataa => \X1~combout\,
	datab => \X2~combout\,
	datac => \X4~combout\,
	datad => \Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal10~0_combout\);

-- Location: LC_X14_Y8_N2
\Equal4~1\ : maxv_lcell
-- Equation(s):
-- \Equal4~1_combout\ = ((\X1~combout\ & (\X2~combout\ & !\X4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \X1~combout\,
	datac => \X2~combout\,
	datad => \X4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal4~1_combout\);

-- Location: LC_X14_Y9_N9
\Equal8~0\ : maxv_lcell
-- Equation(s):
-- \Equal8~0_combout\ = (\X4~combout\ & (\X2~combout\ & (!\X3~combout\ & !\X1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \X4~combout\,
	datab => \X2~combout\,
	datac => \X3~combout\,
	datad => \X1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal8~0_combout\);

-- Location: LC_X14_Y9_N1
\Selector12~0\ : maxv_lcell
-- Equation(s):
-- \Selector12~0_combout\ = ((!\terror_current_state.S0~regout\ & ((\X0~combout\) # (!\Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f03",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Equal8~0_combout\,
	datac => \terror_current_state.S0~regout\,
	datad => \X0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector12~0_combout\);

-- Location: LC_X13_Y9_N9
\terror_current_state.S0\ : maxv_lcell
-- Equation(s):
-- \terror_current_state.S0~regout\ = DFFEAS((!\reset~combout\ & (!\Selector12~0_combout\ & ((!\terror_current_state.S5~regout\) # (!\Equal10~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0007",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal10~0_combout\,
	datab => \terror_current_state.S5~regout\,
	datac => \reset~combout\,
	datad => \Selector12~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \terror_current_state.S0~regout\);

-- Location: LC_X13_Y9_N7
\terror_current_state~13\ : maxv_lcell
-- Equation(s):
-- \terror_current_state~13_combout\ = ((!\X0~combout\ & (\Equal8~0_combout\ & !\terror_current_state.S0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \X0~combout\,
	datac => \Equal8~0_combout\,
	datad => \terror_current_state.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \terror_current_state~13_combout\);

-- Location: LC_X13_Y9_N2
\terror_current_state~11\ : maxv_lcell
-- Equation(s):
-- \terror_current_state~11_combout\ = (((\terror_current_state.S3~regout\) # (\terror_current_state.S5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \terror_current_state.S3~regout\,
	datad => \terror_current_state.S5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \terror_current_state~11_combout\);

-- Location: LC_X13_Y9_N3
\terror_current_state~12\ : maxv_lcell
-- Equation(s):
-- \terror_current_state~12_combout\ = (\reset~combout\) # ((\Equal10~0_combout\ & ((\terror_current_state.S2~regout\) # (\terror_current_state~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \Equal10~0_combout\,
	datac => \terror_current_state.S2~regout\,
	datad => \terror_current_state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \terror_current_state~12_combout\);

-- Location: LC_X13_Y9_N1
\terror_current_state~14\ : maxv_lcell
-- Equation(s):
-- \terror_current_state~14_combout\ = (\terror_current_state~22_combout\) # ((\terror_current_state~13_combout\) # ((\terror_current_state~10_combout\) # (\terror_current_state~12_combout\)))

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
	dataa => \terror_current_state~22_combout\,
	datab => \terror_current_state~13_combout\,
	datac => \terror_current_state~10_combout\,
	datad => \terror_current_state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \terror_current_state~14_combout\);

-- Location: LC_X13_Y9_N8
\terror_current_state.S1\ : maxv_lcell
-- Equation(s):
-- \terror_current_state.S1~regout\ = DFFEAS((\terror_current_state~14_combout\ & (((!\reset~combout\ & \terror_current_state~13_combout\)))) # (!\terror_current_state~14_combout\ & (\terror_current_state.S1~regout\)), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \terror_current_state.S1~regout\,
	datab => \reset~combout\,
	datac => \terror_current_state~13_combout\,
	datad => \terror_current_state~14_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \terror_current_state.S1~regout\);

-- Location: LC_X13_Y9_N4
\terror_current_state~22\ : maxv_lcell
-- Equation(s):
-- \terror_current_state~22_combout\ = (\Equal4~1_combout\ & (!\X0~combout\ & (!\X3~combout\ & \terror_current_state.S1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => \X0~combout\,
	datac => \X3~combout\,
	datad => \terror_current_state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \terror_current_state~22_combout\);

-- Location: LC_X13_Y9_N5
\terror_current_state.S2\ : maxv_lcell
-- Equation(s):
-- \terror_current_state.S2~regout\ = DFFEAS((\terror_current_state~14_combout\ & (\terror_current_state~22_combout\ & (!\reset~combout\))) # (!\terror_current_state~14_combout\ & (((\terror_current_state.S2~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , 
-- )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "22f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \terror_current_state~22_combout\,
	datab => \reset~combout\,
	datac => \terror_current_state.S2~regout\,
	datad => \terror_current_state~14_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \terror_current_state.S2~regout\);

-- Location: LC_X13_Y9_N0
\terror_current_state.S3\ : maxv_lcell
-- Equation(s):
-- \terror_current_state.S3~regout\ = DFFEAS((!\reset~combout\ & ((\Equal10~0_combout\ & (\terror_current_state.S2~regout\)) # (!\Equal10~0_combout\ & ((\terror_current_state.S3~regout\))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \terror_current_state.S2~regout\,
	datab => \terror_current_state.S3~regout\,
	datac => \reset~combout\,
	datad => \Equal10~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \terror_current_state.S3~regout\);

-- Location: LC_X14_Y9_N7
\terror_current_state~16\ : maxv_lcell
-- Equation(s):
-- \terror_current_state~16_combout\ = ((\terror_current_state.S4~regout\ & ((!\Equal7~0_combout\) # (!\X0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \X0~combout\,
	datac => \Equal7~0_combout\,
	datad => \terror_current_state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \terror_current_state~16_combout\);

-- Location: LC_X14_Y9_N8
\terror_current_state.S4\ : maxv_lcell
-- Equation(s):
-- \terror_current_state.S4~regout\ = DFFEAS((!\reset~combout\ & ((\terror_current_state~16_combout\) # ((\Equal10~0_combout\ & \terror_current_state.S3~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal10~0_combout\,
	datab => \terror_current_state.S3~regout\,
	datac => \reset~combout\,
	datad => \terror_current_state~16_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \terror_current_state.S4~regout\);

-- Location: LC_X14_Y9_N6
\terror_current_state~10\ : maxv_lcell
-- Equation(s):
-- \terror_current_state~10_combout\ = ((\X0~combout\ & (\Equal7~0_combout\ & \terror_current_state.S4~regout\)))

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
	datab => \X0~combout\,
	datac => \Equal7~0_combout\,
	datad => \terror_current_state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \terror_current_state~10_combout\);

-- Location: LC_X13_Y9_N6
\terror_current_state.S5\ : maxv_lcell
-- Equation(s):
-- \terror_current_state.S5~regout\ = DFFEAS((\terror_current_state~14_combout\ & (!\reset~combout\ & ((\terror_current_state~10_combout\)))) # (!\terror_current_state~14_combout\ & (((\terror_current_state.S5~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , 
-- , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \reset~combout\,
	datab => \terror_current_state.S5~regout\,
	datac => \terror_current_state~10_combout\,
	datad => \terror_current_state~14_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \terror_current_state.S5~regout\);

-- Location: LC_X12_Y9_N7
\gun_current_state~7\ : maxv_lcell
-- Equation(s):
-- \gun_current_state~7_combout\ = (!\reset~combout\ & (((\X0~combout\) # (!\gun_current_state.S2~regout\)) # (!\Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0d0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \X0~combout\,
	datac => \reset~combout\,
	datad => \gun_current_state.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \gun_current_state~7_combout\);

-- Location: LC_X12_Y9_N3
\gun_current_state.S0\ : maxv_lcell
-- Equation(s):
-- \gun_current_state.S0~regout\ = DFFEAS((\gun_current_state~7_combout\ & ((\gun_current_state.S0~regout\) # ((\gun_current_state~6_combout\) # (\gun_current_state~5_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \gun_current_state.S0~regout\,
	datab => \gun_current_state~7_combout\,
	datac => \gun_current_state~6_combout\,
	datad => \gun_current_state~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gun_current_state.S0~regout\);

-- Location: LC_X12_Y9_N6
\gun_current_state~6\ : maxv_lcell
-- Equation(s):
-- \gun_current_state~6_combout\ = (!\X3~combout\ & (\Equal4~1_combout\ & (\X0~combout\ & !\gun_current_state.S0~regout\)))

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
	dataa => \X3~combout\,
	datab => \Equal4~1_combout\,
	datac => \X0~combout\,
	datad => \gun_current_state.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \gun_current_state~6_combout\);

-- Location: LC_X12_Y9_N1
\gun_current_state.S1\ : maxv_lcell
-- Equation(s):
-- \gun_current_state.S1~regout\ = DFFEAS((\gun_current_state~7_combout\ & (!\gun_current_state~5_combout\ & ((\gun_current_state.S1~regout\) # (\gun_current_state~6_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \gun_current_state.S1~regout\,
	datab => \gun_current_state~7_combout\,
	datac => \gun_current_state~5_combout\,
	datad => \gun_current_state~6_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gun_current_state.S1~regout\);

-- Location: LC_X12_Y9_N2
\gun_current_state~5\ : maxv_lcell
-- Equation(s):
-- \gun_current_state~5_combout\ = ((\Equal8~0_combout\ & (\X0~combout\ & \gun_current_state.S1~regout\)))

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
	datab => \Equal8~0_combout\,
	datac => \X0~combout\,
	datad => \gun_current_state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \gun_current_state~5_combout\);

-- Location: LC_X12_Y9_N8
\gun_current_state~8\ : maxv_lcell
-- Equation(s):
-- \gun_current_state~8_combout\ = ((\gun_current_state~5_combout\) # ((\gun_current_state~6_combout\) # (!\gun_current_state~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \gun_current_state~5_combout\,
	datac => \gun_current_state~6_combout\,
	datad => \gun_current_state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \gun_current_state~8_combout\);

-- Location: LC_X12_Y9_N9
\gun_current_state.S2\ : maxv_lcell
-- Equation(s):
-- \gun_current_state.S2~regout\ = DFFEAS((\gun_current_state~5_combout\ & (((\gun_current_state.S2~regout\ & !\gun_current_state~8_combout\)) # (!\reset~combout\))) # (!\gun_current_state~5_combout\ & (((\gun_current_state.S2~regout\ & 
-- !\gun_current_state~8_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	dataa => \gun_current_state~5_combout\,
	datab => \reset~combout\,
	datac => \gun_current_state.S2~regout\,
	datad => \gun_current_state~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gun_current_state.S2~regout\);

-- Location: LC_X13_Y8_N3
\knife_current_state~9\ : maxv_lcell
-- Equation(s):
-- \knife_current_state~9_combout\ = (((!\knife_current_state.S4~regout\ & !\knife_current_state.S3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \knife_current_state.S4~regout\,
	datad => \knife_current_state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \knife_current_state~9_combout\);

-- Location: LC_X13_Y8_N4
\knife_current_state~14\ : maxv_lcell
-- Equation(s):
-- \knife_current_state~14_combout\ = (!\reset~combout\ & (((\knife_current_state~9_combout\) # (!\Equal4~0_combout\)) # (!\Equal4~1_combout\)))

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
	dataa => \reset~combout\,
	datab => \Equal4~1_combout\,
	datac => \Equal4~0_combout\,
	datad => \knife_current_state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \knife_current_state~14_combout\);

-- Location: LC_X14_Y8_N9
\knife_current_state~10\ : maxv_lcell
-- Equation(s):
-- \knife_current_state~10_combout\ = (\Equal7~0_combout\ & (((!\X0~combout\ & !\knife_current_state.S2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datac => \X0~combout\,
	datad => \knife_current_state.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \knife_current_state~10_combout\);

-- Location: LC_X13_Y8_N0
\knife_current_state~12\ : maxv_lcell
-- Equation(s):
-- \knife_current_state~12_combout\ = (\knife_current_state.S0~regout\ & (\knife_current_state~9_combout\ & ((\knife_current_state~11_combout\) # (\knife_current_state~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \knife_current_state.S0~regout\,
	datab => \knife_current_state~11_combout\,
	datac => \knife_current_state~10_combout\,
	datad => \knife_current_state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \knife_current_state~12_combout\);

-- Location: LC_X13_Y8_N1
\knife_current_state~15\ : maxv_lcell
-- Equation(s):
-- \knife_current_state~15_combout\ = ((\knife_current_state~12_combout\) # ((\knife_current_state~9_combout\ & \knife_current_state~13_combout\))) # (!\knife_current_state~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff8f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \knife_current_state~9_combout\,
	datab => \knife_current_state~13_combout\,
	datac => \knife_current_state~14_combout\,
	datad => \knife_current_state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \knife_current_state~15_combout\);

-- Location: LC_X13_Y8_N2
\knife_current_state.S0\ : maxv_lcell
-- Equation(s):
-- \knife_current_state.S0~regout\ = DFFEAS((\knife_current_state~15_combout\ & (!\Knife:varW2~2_combout\ & ((!\reset~combout\)))) # (!\knife_current_state~15_combout\ & (((\knife_current_state.S0~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	dataa => \Knife:varW2~2_combout\,
	datab => \knife_current_state.S0~regout\,
	datac => \reset~combout\,
	datad => \knife_current_state~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \knife_current_state.S0~regout\);

-- Location: LC_X13_Y8_N9
\knife_current_state~13\ : maxv_lcell
-- Equation(s):
-- \knife_current_state~13_combout\ = (!\X2~combout\ & (\X1~combout\ & (\knife_current_state~7_combout\ & !\knife_current_state.S0~regout\)))

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
	dataa => \X2~combout\,
	datab => \X1~combout\,
	datac => \knife_current_state~7_combout\,
	datad => \knife_current_state.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \knife_current_state~13_combout\);

-- Location: LC_X14_Y8_N5
\knife_current_state.S1\ : maxv_lcell
-- Equation(s):
-- \knife_current_state.S1~regout\ = DFFEAS((\knife_current_state.S1~regout\ & (((!\reset~combout\ & \knife_current_state~13_combout\)) # (!\knife_current_state~18_combout\))) # (!\knife_current_state.S1~regout\ & (!\reset~combout\ & 
-- ((\knife_current_state~13_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	dataa => \knife_current_state.S1~regout\,
	datab => \reset~combout\,
	datac => \knife_current_state~18_combout\,
	datad => \knife_current_state~13_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \knife_current_state.S1~regout\);

-- Location: LC_X14_Y8_N0
\knife_current_state~17\ : maxv_lcell
-- Equation(s):
-- \knife_current_state~17_combout\ = ((!\X0~combout\ & (\knife_current_state.S1~regout\ & \Equal7~0_combout\)))

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
	datab => \X0~combout\,
	datac => \knife_current_state.S1~regout\,
	datad => \Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \knife_current_state~17_combout\);

-- Location: LC_X14_Y8_N7
\knife_current_state~18\ : maxv_lcell
-- Equation(s):
-- \knife_current_state~18_combout\ = (\knife_current_state~13_combout\) # ((\knife_current_state~11_combout\) # ((\knife_current_state~17_combout\) # (!\knife_current_state~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \knife_current_state~13_combout\,
	datab => \knife_current_state~11_combout\,
	datac => \knife_current_state~17_combout\,
	datad => \knife_current_state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \knife_current_state~18_combout\);

-- Location: LC_X14_Y8_N1
\knife_current_state.S2\ : maxv_lcell
-- Equation(s):
-- \knife_current_state.S2~regout\ = DFFEAS((\knife_current_state~18_combout\ & (!\reset~combout\ & ((\knife_current_state~17_combout\)))) # (!\knife_current_state~18_combout\ & (((\knife_current_state.S2~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5c0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \reset~combout\,
	datab => \knife_current_state.S2~regout\,
	datac => \knife_current_state~18_combout\,
	datad => \knife_current_state~17_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \knife_current_state.S2~regout\);

-- Location: LC_X14_Y8_N4
\knife_current_state~11\ : maxv_lcell
-- Equation(s):
-- \knife_current_state~11_combout\ = (!\X2~combout\ & (!\X1~combout\ & (\knife_current_state~7_combout\ & \knife_current_state.S2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \X2~combout\,
	datab => \X1~combout\,
	datac => \knife_current_state~7_combout\,
	datad => \knife_current_state.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \knife_current_state~11_combout\);

-- Location: LC_X14_Y8_N8
\knife_current_state.S3\ : maxv_lcell
-- Equation(s):
-- \knife_current_state.S3~regout\ = DFFEAS((\knife_current_state.S3~regout\ & (((\knife_current_state~11_combout\ & !\reset~combout\)) # (!\knife_current_state~18_combout\))) # (!\knife_current_state.S3~regout\ & (\knife_current_state~11_combout\ & 
-- (!\reset~combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	dataa => \knife_current_state.S3~regout\,
	datab => \knife_current_state~11_combout\,
	datac => \reset~combout\,
	datad => \knife_current_state~18_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \knife_current_state.S3~regout\);

-- Location: LC_X13_Y8_N5
\knife_current_state~8\ : maxv_lcell
-- Equation(s):
-- \knife_current_state~8_combout\ = (!\reset~combout\ & (\knife_current_state.S3~regout\ & (\Equal4~0_combout\ & \Equal4~1_combout\)))

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
	dataa => \reset~combout\,
	datab => \knife_current_state.S3~regout\,
	datac => \Equal4~0_combout\,
	datad => \Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \knife_current_state~8_combout\);

-- Location: LC_X13_Y8_N7
\knife_current_state.S4\ : maxv_lcell
-- Equation(s):
-- \knife_current_state.S4~regout\ = DFFEAS(((\knife_current_state~15_combout\ & ((\knife_current_state~8_combout\))) # (!\knife_current_state~15_combout\ & (\knife_current_state.S4~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \knife_current_state.S4~regout\,
	datac => \knife_current_state~8_combout\,
	datad => \knife_current_state~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \knife_current_state.S4~regout\);

-- Location: LC_X13_Y8_N8
\Knife:varW2~2\ : maxv_lcell
-- Equation(s):
-- \Knife:varW2~2_combout\ = (!\X3~combout\ & (!\X0~combout\ & (\knife_current_state.S4~regout\ & \Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \X3~combout\,
	datab => \X0~combout\,
	datac => \knife_current_state.S4~regout\,
	datad => \Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Knife:varW2~2_combout\);

-- Location: LC_X12_Y9_N5
\W~0\ : maxv_lcell
-- Equation(s):
-- \W~0_combout\ = (\Knife:varW2~2_combout\) # ((\Equal7~0_combout\ & (\gun_current_state.S2~regout\ & !\X0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \gun_current_state.S2~regout\,
	datac => \X0~combout\,
	datad => \Knife:varW2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \W~0_combout\);

-- Location: LC_X12_Y9_N4
\W~1\ : maxv_lcell
-- Equation(s):
-- \W~1_combout\ = (\Bomb:varW1~0_combout\) # ((\W~0_combout\) # ((\Equal10~0_combout\ & \terror_current_state.S5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Bomb:varW1~0_combout\,
	datab => \Equal10~0_combout\,
	datac => \terror_current_state.S5~regout\,
	datad => \W~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \W~1_combout\);

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\W~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \W~1_combout\,
	oe => VCC,
	padio => ww_W);
END structure;


