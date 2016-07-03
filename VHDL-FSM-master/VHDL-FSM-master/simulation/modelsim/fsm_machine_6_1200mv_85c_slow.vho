-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/28/2016 14:25:50"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	diplay_tester IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	b25 : IN std_logic;
	b50 : IN std_logic;
	b100 : IN std_logic;
	cents0 : OUT std_logic_vector(6 DOWNTO 0);
	cents1 : OUT std_logic_vector(6 DOWNTO 0);
	reais0 : OUT std_logic_vector(6 DOWNTO 0);
	reais1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END diplay_tester;

-- Design Ports Information
-- cents0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cents0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cents0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cents0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cents0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cents0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cents0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cents1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cents1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cents1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cents1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cents1[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cents1[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cents1[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reais0[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reais0[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reais0[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reais0[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reais0[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reais0[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reais0[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reais1[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reais1[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reais1[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reais1[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reais1[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reais1[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reais1[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b50	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b100	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b25	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF diplay_tester IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_b25 : std_logic;
SIGNAL ww_b50 : std_logic;
SIGNAL ww_b100 : std_logic;
SIGNAL ww_cents0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_cents1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_reais0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_reais1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \saldo[2]~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cents0[0]~output_o\ : std_logic;
SIGNAL \cents0[1]~output_o\ : std_logic;
SIGNAL \cents0[2]~output_o\ : std_logic;
SIGNAL \cents0[3]~output_o\ : std_logic;
SIGNAL \cents0[4]~output_o\ : std_logic;
SIGNAL \cents0[5]~output_o\ : std_logic;
SIGNAL \cents0[6]~output_o\ : std_logic;
SIGNAL \cents1[0]~output_o\ : std_logic;
SIGNAL \cents1[1]~output_o\ : std_logic;
SIGNAL \cents1[2]~output_o\ : std_logic;
SIGNAL \cents1[3]~output_o\ : std_logic;
SIGNAL \cents1[4]~output_o\ : std_logic;
SIGNAL \cents1[5]~output_o\ : std_logic;
SIGNAL \cents1[6]~output_o\ : std_logic;
SIGNAL \reais0[0]~output_o\ : std_logic;
SIGNAL \reais0[1]~output_o\ : std_logic;
SIGNAL \reais0[2]~output_o\ : std_logic;
SIGNAL \reais0[3]~output_o\ : std_logic;
SIGNAL \reais0[4]~output_o\ : std_logic;
SIGNAL \reais0[5]~output_o\ : std_logic;
SIGNAL \reais0[6]~output_o\ : std_logic;
SIGNAL \reais1[0]~output_o\ : std_logic;
SIGNAL \reais1[1]~output_o\ : std_logic;
SIGNAL \reais1[2]~output_o\ : std_logic;
SIGNAL \reais1[3]~output_o\ : std_logic;
SIGNAL \reais1[4]~output_o\ : std_logic;
SIGNAL \reais1[5]~output_o\ : std_logic;
SIGNAL \reais1[6]~output_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \b100~input_o\ : std_logic;
SIGNAL \BUT100|FF1|stored~feeder_combout\ : std_logic;
SIGNAL \BUT100|FF1|stored~q\ : std_logic;
SIGNAL \BUT100|FF2|stored~feeder_combout\ : std_logic;
SIGNAL \BUT100|FF2|stored~q\ : std_logic;
SIGNAL \BUT100|FF3|stored~q\ : std_logic;
SIGNAL \BUT100|saida~0_combout\ : std_logic;
SIGNAL \b50~input_o\ : std_logic;
SIGNAL \BUT50|FF1|stored~q\ : std_logic;
SIGNAL \BUT50|FF2|stored~feeder_combout\ : std_logic;
SIGNAL \BUT50|FF2|stored~q\ : std_logic;
SIGNAL \BUT50|FF3|stored~q\ : std_logic;
SIGNAL \BUT50|saida~0_combout\ : std_logic;
SIGNAL \b25~input_o\ : std_logic;
SIGNAL \BUT25|FF1|stored~feeder_combout\ : std_logic;
SIGNAL \BUT25|FF1|stored~q\ : std_logic;
SIGNAL \BUT25|FF2|stored~feeder_combout\ : std_logic;
SIGNAL \BUT25|FF2|stored~q\ : std_logic;
SIGNAL \BUT25|FF3|stored~q\ : std_logic;
SIGNAL \saldo[0]~0_combout\ : std_logic;
SIGNAL \saldo[0]~1_combout\ : std_logic;
SIGNAL \saldo[0]~2_combout\ : std_logic;
SIGNAL \saldo[2]~3_combout\ : std_logic;
SIGNAL \saldo[2]~3clkctrl_outclk\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \saldo[1]~4_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \Add2~39_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Add2~37_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Add2~35_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Add2~33_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add2~31_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add2~29_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add2~15_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add2~25_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add2~27_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add2~23_combout\ : std_logic;
SIGNAL \CON|bcd~7_combout\ : std_logic;
SIGNAL \CON|bcd~8_combout\ : std_logic;
SIGNAL \CON|bcd~6_combout\ : std_logic;
SIGNAL \CON|bcd~10_combout\ : std_logic;
SIGNAL \CON|bcd~9_combout\ : std_logic;
SIGNAL \CON|bcd~11_combout\ : std_logic;
SIGNAL \CON|bcd~13_combout\ : std_logic;
SIGNAL \CON|bcd~14_combout\ : std_logic;
SIGNAL \CON|bcd~12_combout\ : std_logic;
SIGNAL \CON|bcd~17_combout\ : std_logic;
SIGNAL \CON|bcd~15_combout\ : std_logic;
SIGNAL \CON|bcd~16_combout\ : std_logic;
SIGNAL \CON|bcd~20_combout\ : std_logic;
SIGNAL \CON|bcd~19_combout\ : std_logic;
SIGNAL \CON|bcd~18_combout\ : std_logic;
SIGNAL \CON|bcd~22_combout\ : std_logic;
SIGNAL \CON|bcd~23_combout\ : std_logic;
SIGNAL \CON|bcd~21_combout\ : std_logic;
SIGNAL \CON|bcd~26_combout\ : std_logic;
SIGNAL \CON|bcd~25_combout\ : std_logic;
SIGNAL \CON|bcd~24_combout\ : std_logic;
SIGNAL \CON|unidade[3]~2_combout\ : std_logic;
SIGNAL \CON|unidade[2]~1_combout\ : std_logic;
SIGNAL \CON|unidade[1]~0_combout\ : std_logic;
SIGNAL \CON|D1|Mux6~0_combout\ : std_logic;
SIGNAL \CON|D1|Mux5~0_combout\ : std_logic;
SIGNAL \CON|D1|Mux4~0_combout\ : std_logic;
SIGNAL \CON|D1|Mux3~0_combout\ : std_logic;
SIGNAL \CON|D1|Mux2~0_combout\ : std_logic;
SIGNAL \CON|D1|Mux1~0_combout\ : std_logic;
SIGNAL \CON|D1|Mux0~0_combout\ : std_logic;
SIGNAL \CON|bcd~30_combout\ : std_logic;
SIGNAL \CON|bcd~27_combout\ : std_logic;
SIGNAL \CON|LessThan0~0_combout\ : std_logic;
SIGNAL \CON|bcd~29_combout\ : std_logic;
SIGNAL \CON|bcd~28_combout\ : std_logic;
SIGNAL \CON|LessThan6~0_combout\ : std_logic;
SIGNAL \CON|LessThan8~0_combout\ : std_logic;
SIGNAL \CON|bcd~34_combout\ : std_logic;
SIGNAL \CON|bcd~31_combout\ : std_logic;
SIGNAL \CON|bcd~32_combout\ : std_logic;
SIGNAL \CON|bcd~3_combout\ : std_logic;
SIGNAL \CON|bcd~59_combout\ : std_logic;
SIGNAL \CON|bcd~33_combout\ : std_logic;
SIGNAL \CON|bcd~35_combout\ : std_logic;
SIGNAL \CON|bcd~36_combout\ : std_logic;
SIGNAL \CON|bcd~37_combout\ : std_logic;
SIGNAL \CON|bcd~38_combout\ : std_logic;
SIGNAL \CON|bcd~39_combout\ : std_logic;
SIGNAL \CON|bcd~42_combout\ : std_logic;
SIGNAL \CON|bcd~41_combout\ : std_logic;
SIGNAL \CON|bcd~40_combout\ : std_logic;
SIGNAL \CON|bcd~43_combout\ : std_logic;
SIGNAL \CON|bcd~45_combout\ : std_logic;
SIGNAL \CON|bcd~46_combout\ : std_logic;
SIGNAL \CON|bcd~47_combout\ : std_logic;
SIGNAL \CON|bcd~44_combout\ : std_logic;
SIGNAL \CON|dezena[2]~2_combout\ : std_logic;
SIGNAL \CON|dezena[3]~3_combout\ : std_logic;
SIGNAL \CON|dezena[0]~0_combout\ : std_logic;
SIGNAL \CON|dezena[1]~1_combout\ : std_logic;
SIGNAL \CON|D2|Mux6~0_combout\ : std_logic;
SIGNAL \CON|D2|Mux5~0_combout\ : std_logic;
SIGNAL \CON|D2|Mux4~0_combout\ : std_logic;
SIGNAL \CON|D2|Mux3~0_combout\ : std_logic;
SIGNAL \CON|D2|Mux2~0_combout\ : std_logic;
SIGNAL \CON|D2|Mux1~0_combout\ : std_logic;
SIGNAL \CON|D2|Mux0~0_combout\ : std_logic;
SIGNAL \CON|bcd~57_combout\ : std_logic;
SIGNAL \CON|bcd~58_combout\ : std_logic;
SIGNAL \CON|bcd~56_combout\ : std_logic;
SIGNAL \CON|bcd~48_combout\ : std_logic;
SIGNAL \CON|bcd~50_combout\ : std_logic;
SIGNAL \CON|bcd~51_combout\ : std_logic;
SIGNAL \CON|bcd~49_combout\ : std_logic;
SIGNAL \CON|bcd~54_combout\ : std_logic;
SIGNAL \CON|bcd~55_combout\ : std_logic;
SIGNAL \CON|bcd~53_combout\ : std_logic;
SIGNAL \CON|bcd~52_combout\ : std_logic;
SIGNAL \CON|centena[2]~2_combout\ : std_logic;
SIGNAL \CON|centena[3]~3_combout\ : std_logic;
SIGNAL \CON|centena[0]~0_combout\ : std_logic;
SIGNAL \CON|centena[1]~1_combout\ : std_logic;
SIGNAL \CON|D3|Mux6~0_combout\ : std_logic;
SIGNAL \CON|D3|Mux5~0_combout\ : std_logic;
SIGNAL \CON|D3|Mux4~0_combout\ : std_logic;
SIGNAL \CON|D3|Mux3~0_combout\ : std_logic;
SIGNAL \CON|D3|Mux2~0_combout\ : std_logic;
SIGNAL \CON|D3|Mux1~0_combout\ : std_logic;
SIGNAL \CON|D3|Mux0~0_combout\ : std_logic;
SIGNAL \CON|milhares[1]~15_combout\ : std_logic;
SIGNAL \CON|milhares[2]~3_combout\ : std_logic;
SIGNAL \CON|milhares[2]~17_combout\ : std_logic;
SIGNAL \CON|milhares[0]~16_combout\ : std_logic;
SIGNAL \CON|D4|Mux6~0_combout\ : std_logic;
SIGNAL \CON|D4|Mux5~0_combout\ : std_logic;
SIGNAL \CON|D4|Mux4~0_combout\ : std_logic;
SIGNAL \CON|D4|Mux3~0_combout\ : std_logic;
SIGNAL \CON|D4|Mux2~0_combout\ : std_logic;
SIGNAL \CON|D4|Mux1~0_combout\ : std_logic;
SIGNAL \CON|D4|Mux0~0_combout\ : std_logic;
SIGNAL saldo : std_logic_vector(11 DOWNTO 0);
SIGNAL \CON|D3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \CON|D2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \CON|D1|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_b25 <= b25;
ww_b50 <= b50;
ww_b100 <= b100;
cents0 <= ww_cents0;
cents1 <= ww_cents1;
reais0 <= ww_reais0;
reais1 <= ww_reais1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\saldo[2]~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \saldo[2]~3_combout\);
\CON|D3|ALT_INV_Mux0~0_combout\ <= NOT \CON|D3|Mux0~0_combout\;
\CON|D2|ALT_INV_Mux0~0_combout\ <= NOT \CON|D2|Mux0~0_combout\;
\CON|D1|ALT_INV_Mux0~0_combout\ <= NOT \CON|D1|Mux0~0_combout\;

-- Location: IOOBUF_X21_Y29_N23
\cents0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CON|D1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \cents0[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\cents0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CON|D1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \cents0[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\cents0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CON|D1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \cents0[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\cents0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CON|D1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \cents0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\cents0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CON|D1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \cents0[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\cents0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CON|D1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \cents0[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\cents0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CON|D1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \cents0[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\cents1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CON|D2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \cents1[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\cents1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CON|D2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \cents1[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\cents1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CON|D2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \cents1[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\cents1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CON|D2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \cents1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\cents1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CON|D2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \cents1[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\cents1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CON|D2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \cents1[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\cents1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CON|D2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \cents1[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\reais0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CON|D3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \reais0[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\reais0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CON|D3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \reais0[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\reais0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CON|D3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \reais0[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\reais0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CON|D3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \reais0[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\reais0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CON|D3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \reais0[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\reais0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CON|D3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \reais0[5]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\reais0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CON|D3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \reais0[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\reais1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CON|D4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \reais1[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\reais1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CON|D4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \reais1[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\reais1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CON|D4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \reais1[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\reais1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CON|D4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \reais1[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\reais1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CON|D4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \reais1[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\reais1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CON|D4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \reais1[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\reais1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CON|D4|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \reais1[6]~output_o\);

-- Location: IOIBUF_X0_Y21_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X41_Y15_N1
\clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\b100~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b100,
	o => \b100~input_o\);

-- Location: LCCOMB_X19_Y25_N12
\BUT100|FF1|stored~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUT100|FF1|stored~feeder_combout\ = \b100~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b100~input_o\,
	combout => \BUT100|FF1|stored~feeder_combout\);

-- Location: FF_X19_Y25_N13
\BUT100|FF1|stored\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \BUT100|FF1|stored~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUT100|FF1|stored~q\);

-- Location: LCCOMB_X19_Y25_N6
\BUT100|FF2|stored~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUT100|FF2|stored~feeder_combout\ = \BUT100|FF1|stored~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUT100|FF1|stored~q\,
	combout => \BUT100|FF2|stored~feeder_combout\);

-- Location: FF_X19_Y25_N7
\BUT100|FF2|stored\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \BUT100|FF2|stored~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUT100|FF2|stored~q\);

-- Location: FF_X19_Y25_N29
\BUT100|FF3|stored\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \BUT100|FF2|stored~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUT100|FF3|stored~q\);

-- Location: LCCOMB_X19_Y25_N28
\BUT100|saida~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUT100|saida~0_combout\ = (\BUT100|FF1|stored~q\ & (!\BUT100|FF3|stored~q\ & \BUT100|FF2|stored~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUT100|FF1|stored~q\,
	datac => \BUT100|FF3|stored~q\,
	datad => \BUT100|FF2|stored~q\,
	combout => \BUT100|saida~0_combout\);

-- Location: IOIBUF_X0_Y27_N1
\b50~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b50,
	o => \b50~input_o\);

-- Location: FF_X19_Y25_N21
\BUT50|FF1|stored\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \b50~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUT50|FF1|stored~q\);

-- Location: LCCOMB_X19_Y25_N22
\BUT50|FF2|stored~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUT50|FF2|stored~feeder_combout\ = \BUT50|FF1|stored~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUT50|FF1|stored~q\,
	combout => \BUT50|FF2|stored~feeder_combout\);

-- Location: FF_X19_Y25_N23
\BUT50|FF2|stored\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \BUT50|FF2|stored~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUT50|FF2|stored~q\);

-- Location: FF_X19_Y25_N5
\BUT50|FF3|stored\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \BUT50|FF2|stored~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUT50|FF3|stored~q\);

-- Location: LCCOMB_X19_Y25_N4
\BUT50|saida~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUT50|saida~0_combout\ = (\BUT50|FF2|stored~q\ & (!\BUT50|FF3|stored~q\ & \BUT50|FF1|stored~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUT50|FF2|stored~q\,
	datac => \BUT50|FF3|stored~q\,
	datad => \BUT50|FF1|stored~q\,
	combout => \BUT50|saida~0_combout\);

-- Location: IOIBUF_X0_Y24_N1
\b25~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b25,
	o => \b25~input_o\);

-- Location: LCCOMB_X19_Y25_N10
\BUT25|FF1|stored~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUT25|FF1|stored~feeder_combout\ = \b25~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b25~input_o\,
	combout => \BUT25|FF1|stored~feeder_combout\);

-- Location: FF_X19_Y25_N11
\BUT25|FF1|stored\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \BUT25|FF1|stored~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUT25|FF1|stored~q\);

-- Location: LCCOMB_X19_Y25_N18
\BUT25|FF2|stored~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUT25|FF2|stored~feeder_combout\ = \BUT25|FF1|stored~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUT25|FF1|stored~q\,
	combout => \BUT25|FF2|stored~feeder_combout\);

-- Location: FF_X19_Y25_N19
\BUT25|FF2|stored\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \BUT25|FF2|stored~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUT25|FF2|stored~q\);

-- Location: FF_X19_Y25_N25
\BUT25|FF3|stored\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \BUT25|FF2|stored~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUT25|FF3|stored~q\);

-- Location: LCCOMB_X19_Y25_N24
\saldo[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo[0]~0_combout\ = (\BUT25|FF1|stored~q\ & (!\BUT25|FF3|stored~q\ & \BUT25|FF2|stored~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUT25|FF1|stored~q\,
	datac => \BUT25|FF3|stored~q\,
	datad => \BUT25|FF2|stored~q\,
	combout => \saldo[0]~0_combout\);

-- Location: LCCOMB_X19_Y25_N14
\saldo[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo[0]~1_combout\ = \saldo[0]~2_combout\ $ (((!\BUT100|saida~0_combout\ & (!\BUT50|saida~0_combout\ & \saldo[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saldo[0]~2_combout\,
	datab => \BUT100|saida~0_combout\,
	datac => \BUT50|saida~0_combout\,
	datad => \saldo[0]~0_combout\,
	combout => \saldo[0]~1_combout\);

-- Location: LCCOMB_X16_Y25_N0
\saldo[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo[0]~2_combout\ = (\reset~input_o\ & \saldo[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \saldo[0]~1_combout\,
	combout => \saldo[0]~2_combout\);

-- Location: LCCOMB_X19_Y25_N8
\saldo[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo[2]~3_combout\ = (\BUT100|saida~0_combout\) # ((\BUT50|saida~0_combout\) # (\saldo[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUT100|saida~0_combout\,
	datac => \BUT50|saida~0_combout\,
	datad => \saldo[0]~0_combout\,
	combout => \saldo[2]~3_combout\);

-- Location: CLKCTRL_G14
\saldo[2]~3clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \saldo[2]~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \saldo[2]~3clkctrl_outclk\);

-- Location: LCCOMB_X14_Y25_N8
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = saldo(2) $ (VCC)
-- \Add2~1\ = CARRY(saldo(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saldo(2),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X19_Y25_N16
\saldo[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo[1]~4_combout\ = (!\BUT100|saida~0_combout\ & ((\BUT50|saida~0_combout\) # (\saldo[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUT100|saida~0_combout\,
	datac => \BUT50|saida~0_combout\,
	datad => \saldo[0]~0_combout\,
	combout => \saldo[1]~4_combout\);

-- Location: LCCOMB_X16_Y25_N8
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (saldo(1) & (\saldo[0]~2_combout\ $ (VCC))) # (!saldo(1) & (\saldo[0]~2_combout\ & VCC))
-- \Add0~1\ = CARRY((saldo(1) & \saldo[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saldo(1),
	datab => \saldo[0]~2_combout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X17_Y25_N2
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = saldo(1) $ (VCC)
-- \Add1~1\ = CARRY(saldo(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => saldo(1),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X16_Y25_N2
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\BUT50|saida~0_combout\ & ((\Add1~0_combout\))) # (!\BUT50|saida~0_combout\ & (\Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUT50|saida~0_combout\,
	datac => \Add0~0_combout\,
	datad => \Add1~0_combout\,
	combout => \Add0~22_combout\);

-- Location: LCCOMB_X16_Y25_N30
\saldo[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- saldo(1) = (\reset~input_o\ & ((\saldo[1]~4_combout\ & ((\Add0~22_combout\))) # (!\saldo[1]~4_combout\ & (saldo(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saldo(1),
	datab => \reset~input_o\,
	datac => \saldo[1]~4_combout\,
	datad => \Add0~22_combout\,
	combout => saldo(1));

-- Location: LCCOMB_X16_Y25_N10
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (saldo(2) & (!\Add0~1\)) # (!saldo(2) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!saldo(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saldo(2),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X17_Y25_N4
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (saldo(2) & (!\Add1~1\)) # (!saldo(2) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!saldo(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saldo(2),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X16_Y25_N4
\Add2~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (!\BUT100|saida~0_combout\ & ((\BUT50|saida~0_combout\ & ((\Add1~2_combout\))) # (!\BUT50|saida~0_combout\ & (\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \BUT100|saida~0_combout\,
	datac => \BUT50|saida~0_combout\,
	datad => \Add1~2_combout\,
	combout => \Add2~38_combout\);

-- Location: LCCOMB_X14_Y25_N0
\Add2~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~39_combout\ = (\Add2~38_combout\) # ((\Add2~0_combout\ & \BUT100|saida~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~0_combout\,
	datac => \BUT100|saida~0_combout\,
	datad => \Add2~38_combout\,
	combout => \Add2~39_combout\);

-- Location: LCCOMB_X14_Y25_N30
\saldo[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- saldo(2) = (\reset~input_o\ & ((GLOBAL(\saldo[2]~3clkctrl_outclk\) & ((\Add2~39_combout\))) # (!GLOBAL(\saldo[2]~3clkctrl_outclk\) & (saldo(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saldo(2),
	datab => \reset~input_o\,
	datac => \saldo[2]~3clkctrl_outclk\,
	datad => \Add2~39_combout\,
	combout => saldo(2));

-- Location: LCCOMB_X14_Y25_N10
\Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (saldo(3) & (!\Add2~1\)) # (!saldo(3) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!saldo(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saldo(3),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X16_Y25_N12
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (saldo(3) & ((GND) # (!\Add0~3\))) # (!saldo(3) & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((saldo(3)) # (!\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saldo(3),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X17_Y25_N6
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (saldo(3) & (\Add1~3\ $ (GND))) # (!saldo(3) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((saldo(3) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saldo(3),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X20_Y25_N16
\Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (!\BUT100|saida~0_combout\ & ((\BUT50|saida~0_combout\ & ((\Add1~4_combout\))) # (!\BUT50|saida~0_combout\ & (\Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUT50|saida~0_combout\,
	datab => \BUT100|saida~0_combout\,
	datac => \Add0~4_combout\,
	datad => \Add1~4_combout\,
	combout => \Add2~36_combout\);

-- Location: LCCOMB_X20_Y25_N2
\Add2~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~37_combout\ = (\Add2~36_combout\) # ((\BUT100|saida~0_combout\ & \Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUT100|saida~0_combout\,
	datac => \Add2~2_combout\,
	datad => \Add2~36_combout\,
	combout => \Add2~37_combout\);

-- Location: LCCOMB_X20_Y25_N8
\saldo[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- saldo(3) = (\reset~input_o\ & ((GLOBAL(\saldo[2]~3clkctrl_outclk\) & ((\Add2~37_combout\))) # (!GLOBAL(\saldo[2]~3clkctrl_outclk\) & (saldo(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => saldo(3),
	datac => \saldo[2]~3clkctrl_outclk\,
	datad => \Add2~37_combout\,
	combout => saldo(3));

-- Location: LCCOMB_X14_Y25_N12
\Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (saldo(4) & (\Add2~3\ $ (GND))) # (!saldo(4) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((saldo(4) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saldo(4),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X16_Y25_N14
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (saldo(4) & (\Add0~5\ & VCC)) # (!saldo(4) & (!\Add0~5\))
-- \Add0~7\ = CARRY((!saldo(4) & !\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saldo(4),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X17_Y25_N8
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (saldo(4) & (\Add1~5\ & VCC)) # (!saldo(4) & (!\Add1~5\))
-- \Add1~7\ = CARRY((!saldo(4) & !\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saldo(4),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X15_Y25_N18
\Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (!\BUT100|saida~0_combout\ & ((\BUT50|saida~0_combout\ & ((\Add1~6_combout\))) # (!\BUT50|saida~0_combout\ & (\Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUT50|saida~0_combout\,
	datab => \BUT100|saida~0_combout\,
	datac => \Add0~6_combout\,
	datad => \Add1~6_combout\,
	combout => \Add2~34_combout\);

-- Location: LCCOMB_X15_Y25_N24
\Add2~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~35_combout\ = (\Add2~34_combout\) # ((\Add2~4_combout\ & \BUT100|saida~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datac => \BUT100|saida~0_combout\,
	datad => \Add2~34_combout\,
	combout => \Add2~35_combout\);

-- Location: LCCOMB_X15_Y25_N22
\saldo[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- saldo(4) = (\reset~input_o\ & ((GLOBAL(\saldo[2]~3clkctrl_outclk\) & ((\Add2~35_combout\))) # (!GLOBAL(\saldo[2]~3clkctrl_outclk\) & (saldo(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saldo(4),
	datab => \reset~input_o\,
	datac => \saldo[2]~3clkctrl_outclk\,
	datad => \Add2~35_combout\,
	combout => saldo(4));

-- Location: LCCOMB_X14_Y25_N14
\Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (saldo(5) & (\Add2~5\ & VCC)) # (!saldo(5) & (!\Add2~5\))
-- \Add2~7\ = CARRY((!saldo(5) & !\Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saldo(5),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X17_Y25_N10
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (saldo(5) & ((GND) # (!\Add1~7\))) # (!saldo(5) & (\Add1~7\ $ (GND)))
-- \Add1~9\ = CARRY((saldo(5)) # (!\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saldo(5),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X16_Y25_N16
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (saldo(5) & (\Add0~7\ $ (GND))) # (!saldo(5) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((saldo(5) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saldo(5),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X16_Y25_N6
\Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (!\BUT100|saida~0_combout\ & ((\BUT50|saida~0_combout\ & (\Add1~8_combout\)) # (!\BUT50|saida~0_combout\ & ((\Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUT50|saida~0_combout\,
	datab => \BUT100|saida~0_combout\,
	datac => \Add1~8_combout\,
	datad => \Add0~8_combout\,
	combout => \Add2~32_combout\);

-- Location: LCCOMB_X15_Y25_N16
\Add2~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~33_combout\ = (\Add2~32_combout\) # ((\Add2~6_combout\ & \BUT100|saida~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~6_combout\,
	datac => \BUT100|saida~0_combout\,
	datad => \Add2~32_combout\,
	combout => \Add2~33_combout\);

-- Location: LCCOMB_X15_Y25_N8
\saldo[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- saldo(5) = (\reset~input_o\ & ((GLOBAL(\saldo[2]~3clkctrl_outclk\) & ((\Add2~33_combout\))) # (!GLOBAL(\saldo[2]~3clkctrl_outclk\) & (saldo(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => saldo(5),
	datac => \saldo[2]~3clkctrl_outclk\,
	datad => \Add2~33_combout\,
	combout => saldo(5));

-- Location: LCCOMB_X14_Y25_N16
\Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (saldo(6) & ((GND) # (!\Add2~7\))) # (!saldo(6) & (\Add2~7\ $ (GND)))
-- \Add2~9\ = CARRY((saldo(6)) # (!\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saldo(6),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X17_Y25_N12
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (saldo(6) & (!\Add1~9\)) # (!saldo(6) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!saldo(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saldo(6),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X16_Y25_N18
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (saldo(6) & (!\Add0~9\)) # (!saldo(6) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!saldo(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saldo(6),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X15_Y25_N0
\Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (!\BUT100|saida~0_combout\ & ((\BUT50|saida~0_combout\ & (\Add1~10_combout\)) # (!\BUT50|saida~0_combout\ & ((\Add0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUT50|saida~0_combout\,
	datab => \BUT100|saida~0_combout\,
	datac => \Add1~10_combout\,
	datad => \Add0~10_combout\,
	combout => \Add2~30_combout\);

-- Location: LCCOMB_X15_Y25_N2
\Add2~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~31_combout\ = (\Add2~30_combout\) # ((\BUT100|saida~0_combout\ & \Add2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUT100|saida~0_combout\,
	datac => \Add2~8_combout\,
	datad => \Add2~30_combout\,
	combout => \Add2~31_combout\);

-- Location: LCCOMB_X15_Y25_N26
\saldo[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- saldo(6) = (\reset~input_o\ & ((GLOBAL(\saldo[2]~3clkctrl_outclk\) & ((\Add2~31_combout\))) # (!GLOBAL(\saldo[2]~3clkctrl_outclk\) & (saldo(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saldo(6),
	datab => \reset~input_o\,
	datac => \saldo[2]~3clkctrl_outclk\,
	datad => \Add2~31_combout\,
	combout => saldo(6));

-- Location: LCCOMB_X14_Y25_N18
\Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (saldo(7) & (!\Add2~9\)) # (!saldo(7) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!saldo(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saldo(7),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X14_Y25_N6
\Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (\BUT100|saida~0_combout\ & ((\Add2~10_combout\))) # (!\BUT100|saida~0_combout\ & (!\BUT50|saida~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUT50|saida~0_combout\,
	datac => \BUT100|saida~0_combout\,
	datad => \Add2~10_combout\,
	combout => \Add2~28_combout\);

-- Location: LCCOMB_X17_Y25_N14
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (saldo(7) & (\Add1~11\ $ (GND))) # (!saldo(7) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((saldo(7) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saldo(7),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X16_Y25_N20
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (saldo(7) & (\Add0~11\ $ (GND))) # (!saldo(7) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((saldo(7) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saldo(7),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X17_Y25_N28
\Add2~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~29_combout\ = (\BUT100|saida~0_combout\ & (\Add2~28_combout\)) # (!\BUT100|saida~0_combout\ & ((\Add2~28_combout\ & ((\Add0~12_combout\))) # (!\Add2~28_combout\ & (\Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUT100|saida~0_combout\,
	datab => \Add2~28_combout\,
	datac => \Add1~12_combout\,
	datad => \Add0~12_combout\,
	combout => \Add2~29_combout\);

-- Location: LCCOMB_X17_Y25_N0
\saldo[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- saldo(7) = (\reset~input_o\ & ((GLOBAL(\saldo[2]~3clkctrl_outclk\) & (\Add2~29_combout\)) # (!GLOBAL(\saldo[2]~3clkctrl_outclk\) & ((saldo(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Add2~29_combout\,
	datac => \saldo[2]~3clkctrl_outclk\,
	datad => saldo(7),
	combout => saldo(7));

-- Location: LCCOMB_X14_Y25_N20
\Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (saldo(8) & (\Add2~11\ $ (GND))) # (!saldo(8) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((saldo(8) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saldo(8),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X15_Y25_N28
\Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\BUT100|saida~0_combout\ & ((\Add2~12_combout\))) # (!\BUT100|saida~0_combout\ & (!\BUT50|saida~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUT50|saida~0_combout\,
	datac => \BUT100|saida~0_combout\,
	datad => \Add2~12_combout\,
	combout => \Add2~14_combout\);

-- Location: LCCOMB_X17_Y25_N16
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (saldo(8) & (!\Add1~13\)) # (!saldo(8) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!saldo(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saldo(8),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X16_Y25_N22
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (saldo(8) & (!\Add0~13\)) # (!saldo(8) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!saldo(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saldo(8),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X15_Y25_N30
\Add2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~15_combout\ = (\BUT100|saida~0_combout\ & (\Add2~14_combout\)) # (!\BUT100|saida~0_combout\ & ((\Add2~14_combout\ & ((\Add0~14_combout\))) # (!\Add2~14_combout\ & (\Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUT100|saida~0_combout\,
	datab => \Add2~14_combout\,
	datac => \Add1~14_combout\,
	datad => \Add0~14_combout\,
	combout => \Add2~15_combout\);

-- Location: LCCOMB_X15_Y25_N6
\saldo[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- saldo(8) = (\reset~input_o\ & ((GLOBAL(\saldo[2]~3clkctrl_outclk\) & ((\Add2~15_combout\))) # (!GLOBAL(\saldo[2]~3clkctrl_outclk\) & (saldo(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saldo(8),
	datab => \reset~input_o\,
	datac => \Add2~15_combout\,
	datad => \saldo[2]~3clkctrl_outclk\,
	combout => saldo(8));

-- Location: LCCOMB_X14_Y25_N22
\Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (saldo(9) & (!\Add2~13\)) # (!saldo(9) & ((\Add2~13\) # (GND)))
-- \Add2~17\ = CARRY((!\Add2~13\) # (!saldo(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saldo(9),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X19_Y25_N26
\Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (\BUT100|saida~0_combout\ & ((\Add2~16_combout\))) # (!\BUT100|saida~0_combout\ & (!\BUT50|saida~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUT50|saida~0_combout\,
	datac => \BUT100|saida~0_combout\,
	datad => \Add2~16_combout\,
	combout => \Add2~24_combout\);

-- Location: LCCOMB_X17_Y25_N18
\Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (saldo(9) & (\Add1~15\ $ (GND))) # (!saldo(9) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((saldo(9) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saldo(9),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X16_Y25_N24
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (saldo(9) & (\Add0~15\ $ (GND))) # (!saldo(9) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((saldo(9) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saldo(9),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X19_Y25_N2
\Add2~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~25_combout\ = (\Add2~24_combout\ & ((\BUT100|saida~0_combout\) # ((\Add0~16_combout\)))) # (!\Add2~24_combout\ & (!\BUT100|saida~0_combout\ & (\Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~24_combout\,
	datab => \BUT100|saida~0_combout\,
	datac => \Add1~16_combout\,
	datad => \Add0~16_combout\,
	combout => \Add2~25_combout\);

-- Location: LCCOMB_X19_Y25_N30
\saldo[9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- saldo(9) = (\reset~input_o\ & ((GLOBAL(\saldo[2]~3clkctrl_outclk\) & ((\Add2~25_combout\))) # (!GLOBAL(\saldo[2]~3clkctrl_outclk\) & (saldo(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => saldo(9),
	datac => \saldo[2]~3clkctrl_outclk\,
	datad => \Add2~25_combout\,
	combout => saldo(9));

-- Location: LCCOMB_X14_Y25_N24
\Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (saldo(10) & (\Add2~17\ $ (GND))) # (!saldo(10) & (!\Add2~17\ & VCC))
-- \Add2~19\ = CARRY((saldo(10) & !\Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saldo(10),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X15_Y25_N12
\Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (\BUT100|saida~0_combout\ & ((\Add2~18_combout\))) # (!\BUT100|saida~0_combout\ & (!\BUT50|saida~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUT50|saida~0_combout\,
	datab => \BUT100|saida~0_combout\,
	datad => \Add2~18_combout\,
	combout => \Add2~26_combout\);

-- Location: LCCOMB_X17_Y25_N20
\Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (saldo(10) & (!\Add1~17\)) # (!saldo(10) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!saldo(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saldo(10),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X16_Y25_N26
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (saldo(10) & (!\Add0~17\)) # (!saldo(10) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!saldo(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saldo(10),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X15_Y25_N10
\Add2~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~27_combout\ = (\Add2~26_combout\ & ((\BUT100|saida~0_combout\) # ((\Add0~18_combout\)))) # (!\Add2~26_combout\ & (!\BUT100|saida~0_combout\ & (\Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~26_combout\,
	datab => \BUT100|saida~0_combout\,
	datac => \Add1~18_combout\,
	datad => \Add0~18_combout\,
	combout => \Add2~27_combout\);

-- Location: LCCOMB_X15_Y25_N4
\saldo[10]\ : cycloneiii_lcell_comb
-- Equation(s):
-- saldo(10) = (\reset~input_o\ & ((GLOBAL(\saldo[2]~3clkctrl_outclk\) & ((\Add2~27_combout\))) # (!GLOBAL(\saldo[2]~3clkctrl_outclk\) & (saldo(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => saldo(10),
	datac => \saldo[2]~3clkctrl_outclk\,
	datad => \Add2~27_combout\,
	combout => saldo(10));

-- Location: LCCOMB_X17_Y25_N22
\Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = saldo(11) $ (!\Add1~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saldo(11),
	cin => \Add1~19\,
	combout => \Add1~20_combout\);

-- Location: LCCOMB_X14_Y25_N26
\Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = \Add2~19\ $ (saldo(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => saldo(11),
	cin => \Add2~19\,
	combout => \Add2~20_combout\);

-- Location: LCCOMB_X14_Y25_N4
\Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (\BUT100|saida~0_combout\ & (\Add2~20_combout\)) # (!\BUT100|saida~0_combout\ & ((\BUT50|saida~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUT100|saida~0_combout\,
	datac => \Add2~20_combout\,
	datad => \BUT50|saida~0_combout\,
	combout => \Add2~22_combout\);

-- Location: LCCOMB_X16_Y25_N28
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = \Add0~19\ $ (!saldo(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => saldo(11),
	cin => \Add0~19\,
	combout => \Add0~20_combout\);

-- Location: LCCOMB_X17_Y25_N24
\Add2~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~23_combout\ = (\BUT100|saida~0_combout\ & (((\Add2~22_combout\)))) # (!\BUT100|saida~0_combout\ & ((\Add2~22_combout\ & (\Add1~20_combout\)) # (!\Add2~22_combout\ & ((\Add0~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~20_combout\,
	datab => \BUT100|saida~0_combout\,
	datac => \Add2~22_combout\,
	datad => \Add0~20_combout\,
	combout => \Add2~23_combout\);

-- Location: LCCOMB_X17_Y25_N26
\saldo[11]\ : cycloneiii_lcell_comb
-- Equation(s):
-- saldo(11) = (\reset~input_o\ & ((GLOBAL(\saldo[2]~3clkctrl_outclk\) & ((\Add2~23_combout\))) # (!GLOBAL(\saldo[2]~3clkctrl_outclk\) & (saldo(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saldo(11),
	datab => \reset~input_o\,
	datac => \saldo[2]~3clkctrl_outclk\,
	datad => \Add2~23_combout\,
	combout => saldo(11));

-- Location: LCCOMB_X21_Y26_N6
\CON|bcd~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~7_combout\ = (saldo(10) & (!saldo(8) & (saldo(11) $ (!saldo(9))))) # (!saldo(10) & (saldo(11) & (saldo(8) & !saldo(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saldo(10),
	datab => saldo(11),
	datac => saldo(8),
	datad => saldo(9),
	combout => \CON|bcd~7_combout\);

-- Location: LCCOMB_X21_Y26_N28
\CON|bcd~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~8_combout\ = (saldo(11) & (!saldo(9) & ((saldo(10)) # (!saldo(8))))) # (!saldo(11) & (saldo(9) & ((saldo(8)) # (!saldo(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saldo(10),
	datab => saldo(11),
	datac => saldo(8),
	datad => saldo(9),
	combout => \CON|bcd~8_combout\);

-- Location: LCCOMB_X21_Y26_N16
\CON|bcd~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~6_combout\ = (saldo(10) & ((saldo(11) & (saldo(8) & !saldo(9))) # (!saldo(11) & (!saldo(8) & saldo(9))))) # (!saldo(10) & (saldo(8) $ (((saldo(11) & !saldo(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saldo(10),
	datab => saldo(11),
	datac => saldo(8),
	datad => saldo(9),
	combout => \CON|bcd~6_combout\);

-- Location: LCCOMB_X20_Y26_N18
\CON|bcd~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~10_combout\ = (\CON|bcd~8_combout\ & (((!saldo(7) & !\CON|bcd~6_combout\)))) # (!\CON|bcd~8_combout\ & (\CON|bcd~7_combout\ & ((saldo(7)) # (\CON|bcd~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~7_combout\,
	datab => \CON|bcd~8_combout\,
	datac => saldo(7),
	datad => \CON|bcd~6_combout\,
	combout => \CON|bcd~10_combout\);

-- Location: LCCOMB_X20_Y26_N8
\CON|bcd~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~9_combout\ = (\CON|bcd~7_combout\ & (((!saldo(7))))) # (!\CON|bcd~7_combout\ & ((\CON|bcd~8_combout\ & (!saldo(7) & \CON|bcd~6_combout\)) # (!\CON|bcd~8_combout\ & (saldo(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~7_combout\,
	datab => \CON|bcd~8_combout\,
	datac => saldo(7),
	datad => \CON|bcd~6_combout\,
	combout => \CON|bcd~9_combout\);

-- Location: LCCOMB_X21_Y26_N18
\CON|bcd~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~11_combout\ = (\CON|bcd~6_combout\ & ((saldo(7)) # ((!\CON|bcd~8_combout\ & !\CON|bcd~7_combout\)))) # (!\CON|bcd~6_combout\ & (((!saldo(7) & \CON|bcd~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~6_combout\,
	datab => \CON|bcd~8_combout\,
	datac => saldo(7),
	datad => \CON|bcd~7_combout\,
	combout => \CON|bcd~11_combout\);

-- Location: LCCOMB_X20_Y26_N26
\CON|bcd~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~13_combout\ = (\CON|bcd~11_combout\ & (!saldo(6) & ((!\CON|bcd~9_combout\)))) # (!\CON|bcd~11_combout\ & (\CON|bcd~10_combout\ & ((saldo(6)) # (\CON|bcd~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saldo(6),
	datab => \CON|bcd~10_combout\,
	datac => \CON|bcd~9_combout\,
	datad => \CON|bcd~11_combout\,
	combout => \CON|bcd~13_combout\);

-- Location: LCCOMB_X20_Y26_N24
\CON|bcd~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~14_combout\ = (saldo(6) & (((\CON|bcd~9_combout\)))) # (!saldo(6) & ((\CON|bcd~10_combout\ & (!\CON|bcd~9_combout\)) # (!\CON|bcd~10_combout\ & (\CON|bcd~9_combout\ & !\CON|bcd~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saldo(6),
	datab => \CON|bcd~10_combout\,
	datac => \CON|bcd~9_combout\,
	datad => \CON|bcd~11_combout\,
	combout => \CON|bcd~14_combout\);

-- Location: LCCOMB_X20_Y26_N16
\CON|bcd~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~12_combout\ = (saldo(6) & (!\CON|bcd~10_combout\ & ((!\CON|bcd~11_combout\)))) # (!saldo(6) & ((\CON|bcd~10_combout\) # ((\CON|bcd~9_combout\ & \CON|bcd~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saldo(6),
	datab => \CON|bcd~10_combout\,
	datac => \CON|bcd~9_combout\,
	datad => \CON|bcd~11_combout\,
	combout => \CON|bcd~12_combout\);

-- Location: LCCOMB_X20_Y26_N6
\CON|bcd~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~17_combout\ = (\CON|bcd~13_combout\ & ((saldo(5) $ (!\CON|bcd~12_combout\)))) # (!\CON|bcd~13_combout\ & (\CON|bcd~12_combout\ & ((saldo(5)) # (!\CON|bcd~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~13_combout\,
	datab => \CON|bcd~14_combout\,
	datac => saldo(5),
	datad => \CON|bcd~12_combout\,
	combout => \CON|bcd~17_combout\);

-- Location: LCCOMB_X20_Y26_N14
\CON|bcd~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~15_combout\ = (\CON|bcd~13_combout\ & (((!saldo(5))))) # (!\CON|bcd~13_combout\ & ((\CON|bcd~14_combout\ & (!saldo(5) & \CON|bcd~12_combout\)) # (!\CON|bcd~14_combout\ & (saldo(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~13_combout\,
	datab => \CON|bcd~14_combout\,
	datac => saldo(5),
	datad => \CON|bcd~12_combout\,
	combout => \CON|bcd~15_combout\);

-- Location: LCCOMB_X20_Y26_N20
\CON|bcd~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~16_combout\ = (\CON|bcd~14_combout\ & (((!saldo(5) & !\CON|bcd~12_combout\)))) # (!\CON|bcd~14_combout\ & (\CON|bcd~13_combout\ & ((saldo(5)) # (\CON|bcd~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~13_combout\,
	datab => \CON|bcd~14_combout\,
	datac => saldo(5),
	datad => \CON|bcd~12_combout\,
	combout => \CON|bcd~16_combout\);

-- Location: LCCOMB_X20_Y26_N28
\CON|bcd~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~20_combout\ = (saldo(4) & (((\CON|bcd~15_combout\)))) # (!saldo(4) & ((\CON|bcd~15_combout\ & (!\CON|bcd~17_combout\ & !\CON|bcd~16_combout\)) # (!\CON|bcd~15_combout\ & ((\CON|bcd~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~17_combout\,
	datab => saldo(4),
	datac => \CON|bcd~15_combout\,
	datad => \CON|bcd~16_combout\,
	combout => \CON|bcd~20_combout\);

-- Location: LCCOMB_X20_Y26_N30
\CON|bcd~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~19_combout\ = (\CON|bcd~17_combout\ & (!saldo(4) & (!\CON|bcd~15_combout\))) # (!\CON|bcd~17_combout\ & (\CON|bcd~16_combout\ & ((saldo(4)) # (\CON|bcd~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~17_combout\,
	datab => saldo(4),
	datac => \CON|bcd~15_combout\,
	datad => \CON|bcd~16_combout\,
	combout => \CON|bcd~19_combout\);

-- Location: LCCOMB_X20_Y26_N0
\CON|bcd~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~18_combout\ = (\CON|bcd~17_combout\ & (!saldo(4) & ((\CON|bcd~15_combout\) # (\CON|bcd~16_combout\)))) # (!\CON|bcd~17_combout\ & (saldo(4) $ (((\CON|bcd~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~17_combout\,
	datab => saldo(4),
	datac => \CON|bcd~15_combout\,
	datad => \CON|bcd~16_combout\,
	combout => \CON|bcd~18_combout\);

-- Location: LCCOMB_X20_Y25_N10
\CON|bcd~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~22_combout\ = (\CON|bcd~20_combout\ & (!saldo(3) & ((!\CON|bcd~18_combout\)))) # (!\CON|bcd~20_combout\ & (\CON|bcd~19_combout\ & ((saldo(3)) # (\CON|bcd~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~20_combout\,
	datab => saldo(3),
	datac => \CON|bcd~19_combout\,
	datad => \CON|bcd~18_combout\,
	combout => \CON|bcd~22_combout\);

-- Location: LCCOMB_X20_Y25_N28
\CON|bcd~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~23_combout\ = (saldo(3) & (((\CON|bcd~18_combout\)))) # (!saldo(3) & ((\CON|bcd~19_combout\ & ((!\CON|bcd~18_combout\))) # (!\CON|bcd~19_combout\ & (!\CON|bcd~20_combout\ & \CON|bcd~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~20_combout\,
	datab => saldo(3),
	datac => \CON|bcd~19_combout\,
	datad => \CON|bcd~18_combout\,
	combout => \CON|bcd~23_combout\);

-- Location: LCCOMB_X20_Y25_N0
\CON|bcd~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~21_combout\ = (\CON|bcd~20_combout\ & (!saldo(3) & ((\CON|bcd~19_combout\) # (\CON|bcd~18_combout\)))) # (!\CON|bcd~20_combout\ & (saldo(3) $ ((\CON|bcd~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~20_combout\,
	datab => saldo(3),
	datac => \CON|bcd~19_combout\,
	datad => \CON|bcd~18_combout\,
	combout => \CON|bcd~21_combout\);

-- Location: LCCOMB_X20_Y25_N22
\CON|bcd~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~26_combout\ = (\CON|bcd~22_combout\ & ((saldo(2) $ (!\CON|bcd~21_combout\)))) # (!\CON|bcd~22_combout\ & (\CON|bcd~21_combout\ & ((saldo(2)) # (!\CON|bcd~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~22_combout\,
	datab => \CON|bcd~23_combout\,
	datac => saldo(2),
	datad => \CON|bcd~21_combout\,
	combout => \CON|bcd~26_combout\);

-- Location: LCCOMB_X20_Y25_N24
\CON|bcd~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~25_combout\ = (\CON|bcd~23_combout\ & (((!saldo(2) & !\CON|bcd~21_combout\)))) # (!\CON|bcd~23_combout\ & (\CON|bcd~22_combout\ & ((saldo(2)) # (\CON|bcd~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~22_combout\,
	datab => \CON|bcd~23_combout\,
	datac => saldo(2),
	datad => \CON|bcd~21_combout\,
	combout => \CON|bcd~25_combout\);

-- Location: LCCOMB_X20_Y25_N18
\CON|bcd~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~24_combout\ = (\CON|bcd~22_combout\ & (((!saldo(2))))) # (!\CON|bcd~22_combout\ & ((\CON|bcd~23_combout\ & (!saldo(2) & \CON|bcd~21_combout\)) # (!\CON|bcd~23_combout\ & (saldo(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~22_combout\,
	datab => \CON|bcd~23_combout\,
	datac => saldo(2),
	datad => \CON|bcd~21_combout\,
	combout => \CON|bcd~24_combout\);

-- Location: LCCOMB_X20_Y25_N12
\CON|unidade[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|unidade[3]~2_combout\ = (\CON|bcd~26_combout\ & (((!saldo(1) & !\CON|bcd~24_combout\)))) # (!\CON|bcd~26_combout\ & (\CON|bcd~25_combout\ & ((saldo(1)) # (\CON|bcd~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~26_combout\,
	datab => \CON|bcd~25_combout\,
	datac => saldo(1),
	datad => \CON|bcd~24_combout\,
	combout => \CON|unidade[3]~2_combout\);

-- Location: LCCOMB_X20_Y25_N14
\CON|unidade[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|unidade[2]~1_combout\ = (\CON|bcd~25_combout\ & ((saldo(1) $ (!\CON|bcd~24_combout\)))) # (!\CON|bcd~25_combout\ & (\CON|bcd~24_combout\ & ((saldo(1)) # (!\CON|bcd~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~26_combout\,
	datab => \CON|bcd~25_combout\,
	datac => saldo(1),
	datad => \CON|bcd~24_combout\,
	combout => \CON|unidade[2]~1_combout\);

-- Location: LCCOMB_X20_Y25_N4
\CON|unidade[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|unidade[1]~0_combout\ = (\CON|bcd~26_combout\ & (!saldo(1) & ((\CON|bcd~25_combout\) # (\CON|bcd~24_combout\)))) # (!\CON|bcd~26_combout\ & (\CON|bcd~25_combout\ $ ((saldo(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~26_combout\,
	datab => \CON|bcd~25_combout\,
	datac => saldo(1),
	datad => \CON|bcd~24_combout\,
	combout => \CON|unidade[1]~0_combout\);

-- Location: LCCOMB_X20_Y28_N0
\CON|D1|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|D1|Mux6~0_combout\ = (\CON|unidade[1]~0_combout\ & (((\CON|unidade[3]~2_combout\)))) # (!\CON|unidade[1]~0_combout\ & (\CON|unidade[2]~1_combout\ $ (((\saldo[0]~2_combout\ & !\CON|unidade[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saldo[0]~2_combout\,
	datab => \CON|unidade[3]~2_combout\,
	datac => \CON|unidade[2]~1_combout\,
	datad => \CON|unidade[1]~0_combout\,
	combout => \CON|D1|Mux6~0_combout\);

-- Location: LCCOMB_X20_Y28_N2
\CON|D1|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|D1|Mux5~0_combout\ = (\CON|unidade[3]~2_combout\ & (((\CON|unidade[2]~1_combout\) # (\CON|unidade[1]~0_combout\)))) # (!\CON|unidade[3]~2_combout\ & (\CON|unidade[2]~1_combout\ & (\saldo[0]~2_combout\ $ (\CON|unidade[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saldo[0]~2_combout\,
	datab => \CON|unidade[3]~2_combout\,
	datac => \CON|unidade[2]~1_combout\,
	datad => \CON|unidade[1]~0_combout\,
	combout => \CON|D1|Mux5~0_combout\);

-- Location: LCCOMB_X20_Y28_N4
\CON|D1|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|D1|Mux4~0_combout\ = (\CON|unidade[2]~1_combout\ & (((\CON|unidade[3]~2_combout\)))) # (!\CON|unidade[2]~1_combout\ & (\CON|unidade[1]~0_combout\ & ((\CON|unidade[3]~2_combout\) # (!\saldo[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saldo[0]~2_combout\,
	datab => \CON|unidade[3]~2_combout\,
	datac => \CON|unidade[2]~1_combout\,
	datad => \CON|unidade[1]~0_combout\,
	combout => \CON|D1|Mux4~0_combout\);

-- Location: LCCOMB_X20_Y28_N10
\CON|D1|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|D1|Mux3~0_combout\ = (\CON|unidade[1]~0_combout\ & ((\CON|unidade[3]~2_combout\) # ((\saldo[0]~2_combout\ & \CON|unidade[2]~1_combout\)))) # (!\CON|unidade[1]~0_combout\ & (\CON|unidade[2]~1_combout\ $ (((\saldo[0]~2_combout\ & 
-- !\CON|unidade[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saldo[0]~2_combout\,
	datab => \CON|unidade[3]~2_combout\,
	datac => \CON|unidade[2]~1_combout\,
	datad => \CON|unidade[1]~0_combout\,
	combout => \CON|D1|Mux3~0_combout\);

-- Location: LCCOMB_X20_Y28_N16
\CON|D1|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|D1|Mux2~0_combout\ = (\saldo[0]~2_combout\) # ((\CON|unidade[1]~0_combout\ & (\CON|unidade[3]~2_combout\)) # (!\CON|unidade[1]~0_combout\ & ((\CON|unidade[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saldo[0]~2_combout\,
	datab => \CON|unidade[3]~2_combout\,
	datac => \CON|unidade[2]~1_combout\,
	datad => \CON|unidade[1]~0_combout\,
	combout => \CON|D1|Mux2~0_combout\);

-- Location: LCCOMB_X20_Y28_N26
\CON|D1|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|D1|Mux1~0_combout\ = (\saldo[0]~2_combout\ & ((\CON|unidade[1]~0_combout\) # (\CON|unidade[3]~2_combout\ $ (!\CON|unidade[2]~1_combout\)))) # (!\saldo[0]~2_combout\ & ((\CON|unidade[2]~1_combout\ & (\CON|unidade[3]~2_combout\)) # 
-- (!\CON|unidade[2]~1_combout\ & ((\CON|unidade[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saldo[0]~2_combout\,
	datab => \CON|unidade[3]~2_combout\,
	datac => \CON|unidade[2]~1_combout\,
	datad => \CON|unidade[1]~0_combout\,
	combout => \CON|D1|Mux1~0_combout\);

-- Location: LCCOMB_X20_Y28_N12
\CON|D1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|D1|Mux0~0_combout\ = (\CON|unidade[2]~1_combout\ & (!\CON|unidade[3]~2_combout\ & ((!\CON|unidade[1]~0_combout\) # (!\saldo[0]~2_combout\)))) # (!\CON|unidade[2]~1_combout\ & ((\CON|unidade[3]~2_combout\ $ (\CON|unidade[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saldo[0]~2_combout\,
	datab => \CON|unidade[3]~2_combout\,
	datac => \CON|unidade[2]~1_combout\,
	datad => \CON|unidade[1]~0_combout\,
	combout => \CON|D1|Mux0~0_combout\);

-- Location: LCCOMB_X20_Y26_N4
\CON|bcd~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~30_combout\ = \CON|bcd~13_combout\ $ ((((!saldo(5) & !\CON|bcd~12_combout\)) # (!\CON|bcd~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~13_combout\,
	datab => \CON|bcd~14_combout\,
	datac => saldo(5),
	datad => \CON|bcd~12_combout\,
	combout => \CON|bcd~30_combout\);

-- Location: LCCOMB_X20_Y26_N2
\CON|bcd~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~27_combout\ = \CON|bcd~10_combout\ $ ((((!saldo(6) & !\CON|bcd~9_combout\)) # (!\CON|bcd~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saldo(6),
	datab => \CON|bcd~10_combout\,
	datac => \CON|bcd~9_combout\,
	datad => \CON|bcd~11_combout\,
	combout => \CON|bcd~27_combout\);

-- Location: LCCOMB_X21_Y26_N0
\CON|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|LessThan0~0_combout\ = (saldo(11) & ((saldo(10)) # (saldo(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saldo(10),
	datab => saldo(11),
	datad => saldo(9),
	combout => \CON|LessThan0~0_combout\);

-- Location: LCCOMB_X21_Y26_N14
\CON|bcd~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~29_combout\ = (saldo(10) & ((saldo(11) & (saldo(8) & saldo(9))) # (!saldo(11) & ((saldo(8)) # (saldo(9)))))) # (!saldo(10) & (saldo(11) & ((!saldo(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saldo(10),
	datab => saldo(11),
	datac => saldo(8),
	datad => saldo(9),
	combout => \CON|bcd~29_combout\);

-- Location: LCCOMB_X21_Y26_N24
\CON|bcd~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~28_combout\ = \CON|bcd~7_combout\ $ ((((!\CON|bcd~6_combout\ & !saldo(7))) # (!\CON|bcd~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~6_combout\,
	datab => \CON|bcd~8_combout\,
	datac => saldo(7),
	datad => \CON|bcd~7_combout\,
	combout => \CON|bcd~28_combout\);

-- Location: LCCOMB_X21_Y26_N8
\CON|LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|LessThan6~0_combout\ = (\CON|LessThan0~0_combout\ & ((\CON|bcd~29_combout\ & (!\CON|bcd~27_combout\ & !\CON|bcd~28_combout\)) # (!\CON|bcd~29_combout\ & ((\CON|bcd~28_combout\))))) # (!\CON|LessThan0~0_combout\ & (\CON|bcd~29_combout\ & 
-- ((!\CON|bcd~28_combout\) # (!\CON|bcd~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~27_combout\,
	datab => \CON|LessThan0~0_combout\,
	datac => \CON|bcd~29_combout\,
	datad => \CON|bcd~28_combout\,
	combout => \CON|LessThan6~0_combout\);

-- Location: LCCOMB_X22_Y26_N28
\CON|LessThan8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|LessThan8~0_combout\ = (\CON|bcd~27_combout\ $ (!\CON|LessThan6~0_combout\)) # (!\CON|bcd~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CON|bcd~27_combout\,
	datac => \CON|bcd~30_combout\,
	datad => \CON|LessThan6~0_combout\,
	combout => \CON|LessThan8~0_combout\);

-- Location: LCCOMB_X22_Y26_N30
\CON|bcd~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~34_combout\ = (\CON|bcd~27_combout\ & (\CON|bcd~29_combout\ & (\CON|LessThan0~0_combout\ $ (\CON|bcd~28_combout\)))) # (!\CON|bcd~27_combout\ & (\CON|LessThan0~0_combout\ & (\CON|bcd~28_combout\ & !\CON|bcd~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|LessThan0~0_combout\,
	datab => \CON|bcd~28_combout\,
	datac => \CON|bcd~27_combout\,
	datad => \CON|bcd~29_combout\,
	combout => \CON|bcd~34_combout\);

-- Location: LCCOMB_X21_Y26_N22
\CON|bcd~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~31_combout\ = (saldo(10) & (saldo(11) & (saldo(8) & saldo(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saldo(10),
	datab => saldo(11),
	datac => saldo(8),
	datad => saldo(9),
	combout => \CON|bcd~31_combout\);

-- Location: LCCOMB_X21_Y26_N12
\CON|bcd~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~32_combout\ = (\CON|bcd~31_combout\) # ((!\CON|LessThan0~0_combout\ & !\CON|bcd~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CON|LessThan0~0_combout\,
	datac => \CON|bcd~31_combout\,
	datad => \CON|bcd~28_combout\,
	combout => \CON|bcd~32_combout\);

-- Location: LCCOMB_X20_Y26_N12
\CON|bcd~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~3_combout\ = (saldo(8) & (((!saldo(7) & !saldo(6))) # (!saldo(9)))) # (!saldo(8) & ((saldo(9)) # ((saldo(7) & saldo(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saldo(8),
	datab => saldo(9),
	datac => saldo(7),
	datad => saldo(6),
	combout => \CON|bcd~3_combout\);

-- Location: LCCOMB_X21_Y26_N26
\CON|bcd~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~59_combout\ = (!saldo(10) & (saldo(11) & \CON|bcd~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saldo(10),
	datab => saldo(11),
	datad => \CON|bcd~3_combout\,
	combout => \CON|bcd~59_combout\);

-- Location: LCCOMB_X21_Y26_N30
\CON|bcd~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~33_combout\ = (\CON|bcd~59_combout\) # ((\CON|bcd~32_combout\ & !\CON|LessThan6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~32_combout\,
	datab => \CON|LessThan6~0_combout\,
	datac => \CON|bcd~59_combout\,
	combout => \CON|bcd~33_combout\);

-- Location: LCCOMB_X22_Y25_N12
\CON|bcd~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~35_combout\ = \CON|bcd~30_combout\ $ (((\CON|bcd~34_combout\) # ((\CON|LessThan8~0_combout\ & \CON|bcd~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~30_combout\,
	datab => \CON|LessThan8~0_combout\,
	datac => \CON|bcd~34_combout\,
	datad => \CON|bcd~33_combout\,
	combout => \CON|bcd~35_combout\);

-- Location: LCCOMB_X22_Y26_N8
\CON|bcd~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~36_combout\ = (\CON|bcd~27_combout\ & ((\CON|LessThan0~0_combout\ & ((\CON|bcd~29_combout\) # (!\CON|bcd~28_combout\))) # (!\CON|LessThan0~0_combout\ & ((\CON|bcd~28_combout\) # (!\CON|bcd~29_combout\))))) # (!\CON|bcd~27_combout\ & 
-- (\CON|bcd~29_combout\ $ (((\CON|LessThan0~0_combout\ & \CON|bcd~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|LessThan0~0_combout\,
	datab => \CON|bcd~28_combout\,
	datac => \CON|bcd~27_combout\,
	datad => \CON|bcd~29_combout\,
	combout => \CON|bcd~36_combout\);

-- Location: LCCOMB_X22_Y25_N18
\CON|bcd~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~37_combout\ = (\CON|bcd~30_combout\ & ((\CON|bcd~36_combout\ & (!\CON|bcd~34_combout\)) # (!\CON|bcd~36_combout\ & ((\CON|bcd~34_combout\) # (\CON|bcd~33_combout\))))) # (!\CON|bcd~30_combout\ & (\CON|bcd~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~30_combout\,
	datab => \CON|bcd~36_combout\,
	datac => \CON|bcd~34_combout\,
	datad => \CON|bcd~33_combout\,
	combout => \CON|bcd~37_combout\);

-- Location: LCCOMB_X22_Y25_N4
\CON|bcd~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~38_combout\ = (\CON|bcd~33_combout\ & ((!\CON|LessThan8~0_combout\))) # (!\CON|bcd~33_combout\ & (\CON|bcd~34_combout\ & \CON|LessThan8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~33_combout\,
	datac => \CON|bcd~34_combout\,
	datad => \CON|LessThan8~0_combout\,
	combout => \CON|bcd~38_combout\);

-- Location: LCCOMB_X20_Y26_N22
\CON|bcd~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~39_combout\ = \CON|bcd~16_combout\ $ ((((!saldo(4) & !\CON|bcd~15_combout\)) # (!\CON|bcd~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~17_combout\,
	datab => saldo(4),
	datac => \CON|bcd~15_combout\,
	datad => \CON|bcd~16_combout\,
	combout => \CON|bcd~39_combout\);

-- Location: LCCOMB_X22_Y25_N6
\CON|bcd~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~42_combout\ = (\CON|bcd~37_combout\ & (\CON|bcd~38_combout\ & ((!\CON|bcd~39_combout\) # (!\CON|bcd~35_combout\)))) # (!\CON|bcd~37_combout\ & (\CON|bcd~35_combout\ & ((\CON|bcd~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~35_combout\,
	datab => \CON|bcd~37_combout\,
	datac => \CON|bcd~38_combout\,
	datad => \CON|bcd~39_combout\,
	combout => \CON|bcd~42_combout\);

-- Location: LCCOMB_X22_Y25_N16
\CON|bcd~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~41_combout\ = (\CON|bcd~35_combout\ & (((!\CON|bcd~39_combout\) # (!\CON|bcd~38_combout\)))) # (!\CON|bcd~35_combout\ & (\CON|bcd~39_combout\ & ((\CON|bcd~38_combout\) # (!\CON|bcd~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~35_combout\,
	datab => \CON|bcd~37_combout\,
	datac => \CON|bcd~38_combout\,
	datad => \CON|bcd~39_combout\,
	combout => \CON|bcd~41_combout\);

-- Location: LCCOMB_X22_Y25_N26
\CON|bcd~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~40_combout\ = (\CON|bcd~37_combout\ & ((\CON|bcd~38_combout\ $ (\CON|bcd~39_combout\)))) # (!\CON|bcd~37_combout\ & (((\CON|bcd~35_combout\ & !\CON|bcd~38_combout\)) # (!\CON|bcd~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~35_combout\,
	datab => \CON|bcd~37_combout\,
	datac => \CON|bcd~38_combout\,
	datad => \CON|bcd~39_combout\,
	combout => \CON|bcd~40_combout\);

-- Location: LCCOMB_X20_Y25_N20
\CON|bcd~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~43_combout\ = \CON|bcd~19_combout\ $ ((((!saldo(3) & !\CON|bcd~18_combout\)) # (!\CON|bcd~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~20_combout\,
	datab => saldo(3),
	datac => \CON|bcd~19_combout\,
	datad => \CON|bcd~18_combout\,
	combout => \CON|bcd~43_combout\);

-- Location: LCCOMB_X22_Y25_N22
\CON|bcd~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~45_combout\ = (\CON|bcd~42_combout\ & ((\CON|bcd~40_combout\ $ (\CON|bcd~43_combout\)))) # (!\CON|bcd~42_combout\ & ((\CON|bcd~40_combout\) # ((!\CON|bcd~41_combout\ & \CON|bcd~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~42_combout\,
	datab => \CON|bcd~41_combout\,
	datac => \CON|bcd~40_combout\,
	datad => \CON|bcd~43_combout\,
	combout => \CON|bcd~45_combout\);

-- Location: LCCOMB_X22_Y25_N20
\CON|bcd~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~46_combout\ = (\CON|bcd~41_combout\ & (\CON|bcd~42_combout\ & ((!\CON|bcd~43_combout\) # (!\CON|bcd~40_combout\)))) # (!\CON|bcd~41_combout\ & (((\CON|bcd~40_combout\ & \CON|bcd~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~42_combout\,
	datab => \CON|bcd~41_combout\,
	datac => \CON|bcd~40_combout\,
	datad => \CON|bcd~43_combout\,
	combout => \CON|bcd~46_combout\);

-- Location: LCCOMB_X20_Y25_N26
\CON|bcd~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~47_combout\ = \CON|bcd~22_combout\ $ ((((!saldo(2) & !\CON|bcd~21_combout\)) # (!\CON|bcd~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~22_combout\,
	datab => \CON|bcd~23_combout\,
	datac => saldo(2),
	datad => \CON|bcd~21_combout\,
	combout => \CON|bcd~47_combout\);

-- Location: LCCOMB_X22_Y25_N28
\CON|bcd~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~44_combout\ = (\CON|bcd~42_combout\ & (((!\CON|bcd~43_combout\)))) # (!\CON|bcd~42_combout\ & ((\CON|bcd~41_combout\ & ((\CON|bcd~43_combout\))) # (!\CON|bcd~41_combout\ & ((\CON|bcd~40_combout\) # (!\CON|bcd~43_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~42_combout\,
	datab => \CON|bcd~41_combout\,
	datac => \CON|bcd~40_combout\,
	datad => \CON|bcd~43_combout\,
	combout => \CON|bcd~44_combout\);

-- Location: LCCOMB_X22_Y25_N24
\CON|dezena[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|dezena[2]~2_combout\ = (\CON|bcd~46_combout\ & ((\CON|bcd~47_combout\ $ (\CON|bcd~44_combout\)))) # (!\CON|bcd~46_combout\ & ((\CON|bcd~44_combout\) # ((!\CON|bcd~45_combout\ & \CON|bcd~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~45_combout\,
	datab => \CON|bcd~46_combout\,
	datac => \CON|bcd~47_combout\,
	datad => \CON|bcd~44_combout\,
	combout => \CON|dezena[2]~2_combout\);

-- Location: LCCOMB_X22_Y25_N10
\CON|dezena[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|dezena[3]~3_combout\ = (\CON|bcd~45_combout\ & (\CON|bcd~46_combout\ & ((!\CON|bcd~44_combout\) # (!\CON|bcd~47_combout\)))) # (!\CON|bcd~45_combout\ & (((\CON|bcd~47_combout\ & \CON|bcd~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~45_combout\,
	datab => \CON|bcd~46_combout\,
	datac => \CON|bcd~47_combout\,
	datad => \CON|bcd~44_combout\,
	combout => \CON|dezena[3]~3_combout\);

-- Location: LCCOMB_X20_Y25_N30
\CON|dezena[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|dezena[0]~0_combout\ = \CON|bcd~25_combout\ $ ((((!saldo(1) & !\CON|bcd~24_combout\)) # (!\CON|bcd~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~26_combout\,
	datab => \CON|bcd~25_combout\,
	datac => saldo(1),
	datad => \CON|bcd~24_combout\,
	combout => \CON|dezena[0]~0_combout\);

-- Location: LCCOMB_X22_Y25_N2
\CON|dezena[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|dezena[1]~1_combout\ = (\CON|bcd~45_combout\ & (\CON|bcd~46_combout\ $ ((\CON|bcd~47_combout\)))) # (!\CON|bcd~45_combout\ & (((!\CON|bcd~46_combout\ & \CON|bcd~44_combout\)) # (!\CON|bcd~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110100101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~45_combout\,
	datab => \CON|bcd~46_combout\,
	datac => \CON|bcd~47_combout\,
	datad => \CON|bcd~44_combout\,
	combout => \CON|dezena[1]~1_combout\);

-- Location: LCCOMB_X23_Y28_N12
\CON|D2|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|D2|Mux6~0_combout\ = (\CON|dezena[1]~1_combout\ & (\CON|dezena[2]~2_combout\ $ (((\CON|dezena[3]~3_combout\) # (\CON|dezena[0]~0_combout\))))) # (!\CON|dezena[1]~1_combout\ & (((\CON|dezena[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|dezena[2]~2_combout\,
	datab => \CON|dezena[3]~3_combout\,
	datac => \CON|dezena[0]~0_combout\,
	datad => \CON|dezena[1]~1_combout\,
	combout => \CON|D2|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y28_N2
\CON|D2|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|D2|Mux5~0_combout\ = (\CON|dezena[2]~2_combout\ & (\CON|dezena[3]~3_combout\ & ((!\CON|dezena[1]~1_combout\)))) # (!\CON|dezena[2]~2_combout\ & ((\CON|dezena[3]~3_combout\) # (\CON|dezena[0]~0_combout\ $ (\CON|dezena[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|dezena[2]~2_combout\,
	datab => \CON|dezena[3]~3_combout\,
	datac => \CON|dezena[0]~0_combout\,
	datad => \CON|dezena[1]~1_combout\,
	combout => \CON|D2|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y28_N0
\CON|D2|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|D2|Mux4~0_combout\ = (\CON|dezena[2]~2_combout\ & (!\CON|dezena[1]~1_combout\ & ((\CON|dezena[3]~3_combout\) # (\CON|dezena[0]~0_combout\)))) # (!\CON|dezena[2]~2_combout\ & (\CON|dezena[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|dezena[2]~2_combout\,
	datab => \CON|dezena[3]~3_combout\,
	datac => \CON|dezena[0]~0_combout\,
	datad => \CON|dezena[1]~1_combout\,
	combout => \CON|D2|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y28_N22
\CON|D2|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|D2|Mux3~0_combout\ = (\CON|dezena[1]~1_combout\ & (\CON|dezena[2]~2_combout\ $ (((\CON|dezena[3]~3_combout\) # (\CON|dezena[0]~0_combout\))))) # (!\CON|dezena[1]~1_combout\ & ((\CON|dezena[3]~3_combout\) # ((!\CON|dezena[2]~2_combout\ & 
-- !\CON|dezena[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|dezena[2]~2_combout\,
	datab => \CON|dezena[3]~3_combout\,
	datac => \CON|dezena[0]~0_combout\,
	datad => \CON|dezena[1]~1_combout\,
	combout => \CON|D2|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y28_N8
\CON|D2|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|D2|Mux2~0_combout\ = ((\CON|dezena[1]~1_combout\ & (!\CON|dezena[2]~2_combout\)) # (!\CON|dezena[1]~1_combout\ & ((\CON|dezena[3]~3_combout\)))) # (!\CON|dezena[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|dezena[2]~2_combout\,
	datab => \CON|dezena[3]~3_combout\,
	datac => \CON|dezena[0]~0_combout\,
	datad => \CON|dezena[1]~1_combout\,
	combout => \CON|D2|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y28_N14
\CON|D2|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|D2|Mux1~0_combout\ = (\CON|dezena[2]~2_combout\ & (((!\CON|dezena[3]~3_combout\ & !\CON|dezena[0]~0_combout\)) # (!\CON|dezena[1]~1_combout\))) # (!\CON|dezena[2]~2_combout\ & ((\CON|dezena[3]~3_combout\) # ((!\CON|dezena[0]~0_combout\ & 
-- !\CON|dezena[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|dezena[2]~2_combout\,
	datab => \CON|dezena[3]~3_combout\,
	datac => \CON|dezena[0]~0_combout\,
	datad => \CON|dezena[1]~1_combout\,
	combout => \CON|D2|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y28_N24
\CON|D2|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|D2|Mux0~0_combout\ = (\CON|dezena[2]~2_combout\ & (\CON|dezena[3]~3_combout\ $ (((!\CON|dezena[1]~1_combout\))))) # (!\CON|dezena[2]~2_combout\ & (!\CON|dezena[3]~3_combout\ & ((\CON|dezena[0]~0_combout\) # (\CON|dezena[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|dezena[2]~2_combout\,
	datab => \CON|dezena[3]~3_combout\,
	datac => \CON|dezena[0]~0_combout\,
	datad => \CON|dezena[1]~1_combout\,
	combout => \CON|D2|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y25_N30
\CON|bcd~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~57_combout\ = \CON|bcd~34_combout\ $ (((!\CON|LessThan8~0_combout\) # (!\CON|bcd~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~33_combout\,
	datac => \CON|bcd~34_combout\,
	datad => \CON|LessThan8~0_combout\,
	combout => \CON|bcd~57_combout\);

-- Location: LCCOMB_X22_Y26_N18
\CON|bcd~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~58_combout\ = (\CON|LessThan0~0_combout\ & ((\CON|bcd~28_combout\ & ((\CON|bcd~29_combout\))) # (!\CON|bcd~28_combout\ & ((\CON|bcd~27_combout\) # (!\CON|bcd~29_combout\))))) # (!\CON|LessThan0~0_combout\ & (((\CON|bcd~28_combout\ & 
-- \CON|bcd~27_combout\)) # (!\CON|bcd~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|LessThan0~0_combout\,
	datab => \CON|bcd~28_combout\,
	datac => \CON|bcd~27_combout\,
	datad => \CON|bcd~29_combout\,
	combout => \CON|bcd~58_combout\);

-- Location: LCCOMB_X22_Y26_N16
\CON|bcd~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~56_combout\ = (\CON|bcd~29_combout\) # (!\CON|bcd~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~29_combout\,
	datad => \CON|bcd~28_combout\,
	combout => \CON|bcd~56_combout\);

-- Location: LCCOMB_X22_Y26_N10
\CON|bcd~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~48_combout\ = (!\CON|bcd~58_combout\ & (((!\CON|bcd~56_combout\) # (!\CON|LessThan0~0_combout\)) # (!\CON|bcd~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~57_combout\,
	datab => \CON|bcd~58_combout\,
	datac => \CON|LessThan0~0_combout\,
	datad => \CON|bcd~56_combout\,
	combout => \CON|bcd~48_combout\);

-- Location: LCCOMB_X22_Y26_N14
\CON|bcd~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~50_combout\ = (\CON|bcd~57_combout\ & (\CON|bcd~58_combout\ & (\CON|LessThan0~0_combout\ & \CON|bcd~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~57_combout\,
	datab => \CON|bcd~58_combout\,
	datac => \CON|LessThan0~0_combout\,
	datad => \CON|bcd~56_combout\,
	combout => \CON|bcd~50_combout\);

-- Location: LCCOMB_X22_Y25_N14
\CON|bcd~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~51_combout\ = \CON|bcd~38_combout\ $ (((\CON|bcd~37_combout\) # ((\CON|bcd~35_combout\ & \CON|bcd~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~35_combout\,
	datab => \CON|bcd~37_combout\,
	datac => \CON|bcd~38_combout\,
	datad => \CON|bcd~39_combout\,
	combout => \CON|bcd~51_combout\);

-- Location: LCCOMB_X22_Y26_N24
\CON|bcd~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~49_combout\ = (!\CON|bcd~57_combout\ & (((!\CON|bcd~29_combout\ & \CON|bcd~28_combout\)) # (!\CON|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~29_combout\,
	datab => \CON|bcd~28_combout\,
	datac => \CON|LessThan0~0_combout\,
	datad => \CON|bcd~57_combout\,
	combout => \CON|bcd~49_combout\);

-- Location: LCCOMB_X22_Y26_N12
\CON|bcd~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~54_combout\ = (\CON|bcd~48_combout\ & (((\CON|bcd~51_combout\ & !\CON|bcd~49_combout\)))) # (!\CON|bcd~48_combout\ & (\CON|bcd~50_combout\ & ((\CON|bcd~49_combout\) # (!\CON|bcd~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~48_combout\,
	datab => \CON|bcd~50_combout\,
	datac => \CON|bcd~51_combout\,
	datad => \CON|bcd~49_combout\,
	combout => \CON|bcd~54_combout\);

-- Location: LCCOMB_X22_Y25_N0
\CON|bcd~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~55_combout\ = \CON|bcd~42_combout\ $ (((\CON|bcd~41_combout\) # ((\CON|bcd~40_combout\ & \CON|bcd~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~42_combout\,
	datab => \CON|bcd~41_combout\,
	datac => \CON|bcd~40_combout\,
	datad => \CON|bcd~43_combout\,
	combout => \CON|bcd~55_combout\);

-- Location: LCCOMB_X22_Y26_N22
\CON|bcd~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~53_combout\ = (\CON|bcd~50_combout\ & ((\CON|bcd~51_combout\ $ (\CON|bcd~49_combout\)))) # (!\CON|bcd~50_combout\ & (\CON|bcd~49_combout\ & ((!\CON|bcd~51_combout\) # (!\CON|bcd~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~48_combout\,
	datab => \CON|bcd~50_combout\,
	datac => \CON|bcd~51_combout\,
	datad => \CON|bcd~49_combout\,
	combout => \CON|bcd~53_combout\);

-- Location: LCCOMB_X22_Y26_N20
\CON|bcd~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|bcd~52_combout\ = (\CON|bcd~48_combout\ & (((!\CON|bcd~50_combout\ & !\CON|bcd~49_combout\)) # (!\CON|bcd~51_combout\))) # (!\CON|bcd~48_combout\ & (\CON|bcd~50_combout\ $ ((\CON|bcd~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~48_combout\,
	datab => \CON|bcd~50_combout\,
	datac => \CON|bcd~51_combout\,
	datad => \CON|bcd~49_combout\,
	combout => \CON|bcd~52_combout\);

-- Location: LCCOMB_X22_Y26_N0
\CON|centena[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|centena[2]~2_combout\ = (\CON|bcd~54_combout\ & (\CON|bcd~55_combout\ $ (((\CON|bcd~52_combout\))))) # (!\CON|bcd~54_combout\ & ((\CON|bcd~52_combout\) # ((\CON|bcd~55_combout\ & \CON|bcd~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~54_combout\,
	datab => \CON|bcd~55_combout\,
	datac => \CON|bcd~53_combout\,
	datad => \CON|bcd~52_combout\,
	combout => \CON|centena[2]~2_combout\);

-- Location: LCCOMB_X22_Y26_N26
\CON|centena[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|centena[3]~3_combout\ = (\CON|bcd~53_combout\ & (((\CON|bcd~55_combout\ & \CON|bcd~52_combout\)))) # (!\CON|bcd~53_combout\ & (\CON|bcd~54_combout\ & ((!\CON|bcd~52_combout\) # (!\CON|bcd~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~54_combout\,
	datab => \CON|bcd~55_combout\,
	datac => \CON|bcd~53_combout\,
	datad => \CON|bcd~52_combout\,
	combout => \CON|centena[3]~3_combout\);

-- Location: LCCOMB_X22_Y25_N8
\CON|centena[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|centena[0]~0_combout\ = \CON|bcd~46_combout\ $ (((\CON|bcd~45_combout\) # ((\CON|bcd~47_combout\ & \CON|bcd~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~45_combout\,
	datab => \CON|bcd~46_combout\,
	datac => \CON|bcd~47_combout\,
	datad => \CON|bcd~44_combout\,
	combout => \CON|centena[0]~0_combout\);

-- Location: LCCOMB_X22_Y26_N2
\CON|centena[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|centena[1]~1_combout\ = (\CON|bcd~54_combout\ & (!\CON|bcd~55_combout\)) # (!\CON|bcd~54_combout\ & ((\CON|bcd~55_combout\ & ((\CON|bcd~52_combout\) # (!\CON|bcd~53_combout\))) # (!\CON|bcd~55_combout\ & (\CON|bcd~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~54_combout\,
	datab => \CON|bcd~55_combout\,
	datac => \CON|bcd~53_combout\,
	datad => \CON|bcd~52_combout\,
	combout => \CON|centena[1]~1_combout\);

-- Location: LCCOMB_X29_Y27_N12
\CON|D3|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|D3|Mux6~0_combout\ = (\CON|centena[1]~1_combout\ & (\CON|centena[2]~2_combout\ $ (((\CON|centena[3]~3_combout\) # (\CON|centena[0]~0_combout\))))) # (!\CON|centena[1]~1_combout\ & (((\CON|centena[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|centena[2]~2_combout\,
	datab => \CON|centena[3]~3_combout\,
	datac => \CON|centena[0]~0_combout\,
	datad => \CON|centena[1]~1_combout\,
	combout => \CON|D3|Mux6~0_combout\);

-- Location: LCCOMB_X29_Y27_N22
\CON|D3|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|D3|Mux5~0_combout\ = (\CON|centena[2]~2_combout\ & (\CON|centena[3]~3_combout\ & ((!\CON|centena[1]~1_combout\)))) # (!\CON|centena[2]~2_combout\ & ((\CON|centena[3]~3_combout\) # (\CON|centena[0]~0_combout\ $ (\CON|centena[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|centena[2]~2_combout\,
	datab => \CON|centena[3]~3_combout\,
	datac => \CON|centena[0]~0_combout\,
	datad => \CON|centena[1]~1_combout\,
	combout => \CON|D3|Mux5~0_combout\);

-- Location: LCCOMB_X29_Y27_N0
\CON|D3|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|D3|Mux4~0_combout\ = (\CON|centena[2]~2_combout\ & (!\CON|centena[1]~1_combout\ & ((\CON|centena[3]~3_combout\) # (\CON|centena[0]~0_combout\)))) # (!\CON|centena[2]~2_combout\ & (\CON|centena[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|centena[2]~2_combout\,
	datab => \CON|centena[3]~3_combout\,
	datac => \CON|centena[0]~0_combout\,
	datad => \CON|centena[1]~1_combout\,
	combout => \CON|D3|Mux4~0_combout\);

-- Location: LCCOMB_X29_Y27_N10
\CON|D3|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|D3|Mux3~0_combout\ = (\CON|centena[1]~1_combout\ & (\CON|centena[2]~2_combout\ $ (((\CON|centena[3]~3_combout\) # (\CON|centena[0]~0_combout\))))) # (!\CON|centena[1]~1_combout\ & ((\CON|centena[3]~3_combout\) # ((!\CON|centena[2]~2_combout\ & 
-- !\CON|centena[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|centena[2]~2_combout\,
	datab => \CON|centena[3]~3_combout\,
	datac => \CON|centena[0]~0_combout\,
	datad => \CON|centena[1]~1_combout\,
	combout => \CON|D3|Mux3~0_combout\);

-- Location: LCCOMB_X29_Y27_N20
\CON|D3|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|D3|Mux2~0_combout\ = ((\CON|centena[1]~1_combout\ & (!\CON|centena[2]~2_combout\)) # (!\CON|centena[1]~1_combout\ & ((\CON|centena[3]~3_combout\)))) # (!\CON|centena[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|centena[2]~2_combout\,
	datab => \CON|centena[3]~3_combout\,
	datac => \CON|centena[0]~0_combout\,
	datad => \CON|centena[1]~1_combout\,
	combout => \CON|D3|Mux2~0_combout\);

-- Location: LCCOMB_X29_Y27_N2
\CON|D3|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|D3|Mux1~0_combout\ = (\CON|centena[2]~2_combout\ & (((!\CON|centena[3]~3_combout\ & !\CON|centena[0]~0_combout\)) # (!\CON|centena[1]~1_combout\))) # (!\CON|centena[2]~2_combout\ & ((\CON|centena[3]~3_combout\) # ((!\CON|centena[0]~0_combout\ & 
-- !\CON|centena[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|centena[2]~2_combout\,
	datab => \CON|centena[3]~3_combout\,
	datac => \CON|centena[0]~0_combout\,
	datad => \CON|centena[1]~1_combout\,
	combout => \CON|D3|Mux1~0_combout\);

-- Location: LCCOMB_X29_Y27_N8
\CON|D3|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|D3|Mux0~0_combout\ = (\CON|centena[2]~2_combout\ & (\CON|centena[3]~3_combout\ $ (((!\CON|centena[1]~1_combout\))))) # (!\CON|centena[2]~2_combout\ & (!\CON|centena[3]~3_combout\ & ((\CON|centena[0]~0_combout\) # (\CON|centena[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|centena[2]~2_combout\,
	datab => \CON|centena[3]~3_combout\,
	datac => \CON|centena[0]~0_combout\,
	datad => \CON|centena[1]~1_combout\,
	combout => \CON|D3|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y26_N4
\CON|milhares[1]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|milhares[1]~15_combout\ = \CON|bcd~50_combout\ $ ((((\CON|bcd~51_combout\ & !\CON|bcd~49_combout\)) # (!\CON|bcd~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~48_combout\,
	datab => \CON|bcd~50_combout\,
	datac => \CON|bcd~51_combout\,
	datad => \CON|bcd~49_combout\,
	combout => \CON|milhares[1]~15_combout\);

-- Location: LCCOMB_X20_Y26_N10
\CON|milhares[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|milhares[2]~3_combout\ = (saldo(7) & (saldo(8) & ((saldo(6)) # (saldo(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saldo(7),
	datab => saldo(6),
	datac => saldo(5),
	datad => saldo(8),
	combout => \CON|milhares[2]~3_combout\);

-- Location: LCCOMB_X21_Y26_N20
\CON|milhares[2]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|milhares[2]~17_combout\ = (\CON|milhares[2]~3_combout\ & (saldo(11) & (saldo(9) & saldo(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|milhares[2]~3_combout\,
	datab => saldo(11),
	datac => saldo(9),
	datad => saldo(10),
	combout => \CON|milhares[2]~17_combout\);

-- Location: LCCOMB_X22_Y26_N6
\CON|milhares[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|milhares[0]~16_combout\ = \CON|bcd~54_combout\ $ ((((\CON|bcd~55_combout\ & \CON|bcd~52_combout\)) # (!\CON|bcd~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CON|bcd~54_combout\,
	datab => \CON|bcd~55_combout\,
	datac => \CON|bcd~53_combout\,
	datad => \CON|bcd~52_combout\,
	combout => \CON|milhares[0]~16_combout\);

-- Location: LCCOMB_X33_Y26_N0
\CON|D4|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|D4|Mux6~0_combout\ = (\CON|milhares[1]~15_combout\ & (\CON|milhares[2]~17_combout\ $ (!\CON|milhares[0]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CON|milhares[1]~15_combout\,
	datac => \CON|milhares[2]~17_combout\,
	datad => \CON|milhares[0]~16_combout\,
	combout => \CON|D4|Mux6~0_combout\);

-- Location: LCCOMB_X33_Y26_N6
\CON|D4|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|D4|Mux5~0_combout\ = (\CON|milhares[2]~17_combout\ & (\CON|milhares[1]~15_combout\ $ (\CON|milhares[0]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CON|milhares[1]~15_combout\,
	datac => \CON|milhares[2]~17_combout\,
	datad => \CON|milhares[0]~16_combout\,
	combout => \CON|D4|Mux5~0_combout\);

-- Location: LCCOMB_X33_Y26_N4
\CON|D4|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|D4|Mux4~0_combout\ = (!\CON|milhares[1]~15_combout\ & (!\CON|milhares[2]~17_combout\ & \CON|milhares[0]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CON|milhares[1]~15_combout\,
	datac => \CON|milhares[2]~17_combout\,
	datad => \CON|milhares[0]~16_combout\,
	combout => \CON|D4|Mux4~0_combout\);

-- Location: LCCOMB_X33_Y26_N10
\CON|D4|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|D4|Mux3~0_combout\ = (\CON|milhares[1]~15_combout\ & (\CON|milhares[2]~17_combout\ $ (!\CON|milhares[0]~16_combout\))) # (!\CON|milhares[1]~15_combout\ & (\CON|milhares[2]~17_combout\ & !\CON|milhares[0]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CON|milhares[1]~15_combout\,
	datac => \CON|milhares[2]~17_combout\,
	datad => \CON|milhares[0]~16_combout\,
	combout => \CON|D4|Mux3~0_combout\);

-- Location: LCCOMB_X33_Y26_N24
\CON|D4|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|D4|Mux2~0_combout\ = ((\CON|milhares[1]~15_combout\ & \CON|milhares[2]~17_combout\)) # (!\CON|milhares[0]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CON|milhares[1]~15_combout\,
	datac => \CON|milhares[2]~17_combout\,
	datad => \CON|milhares[0]~16_combout\,
	combout => \CON|D4|Mux2~0_combout\);

-- Location: LCCOMB_X33_Y26_N22
\CON|D4|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|D4|Mux1~0_combout\ = (\CON|milhares[1]~15_combout\ & (!\CON|milhares[2]~17_combout\ & !\CON|milhares[0]~16_combout\)) # (!\CON|milhares[1]~15_combout\ & ((!\CON|milhares[0]~16_combout\) # (!\CON|milhares[2]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CON|milhares[1]~15_combout\,
	datac => \CON|milhares[2]~17_combout\,
	datad => \CON|milhares[0]~16_combout\,
	combout => \CON|D4|Mux1~0_combout\);

-- Location: LCCOMB_X33_Y26_N12
\CON|D4|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CON|D4|Mux0~0_combout\ = (\CON|milhares[1]~15_combout\ & (!\CON|milhares[2]~17_combout\)) # (!\CON|milhares[1]~15_combout\ & (\CON|milhares[2]~17_combout\ & !\CON|milhares[0]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CON|milhares[1]~15_combout\,
	datac => \CON|milhares[2]~17_combout\,
	datad => \CON|milhares[0]~16_combout\,
	combout => \CON|D4|Mux0~0_combout\);

ww_cents0(0) <= \cents0[0]~output_o\;

ww_cents0(1) <= \cents0[1]~output_o\;

ww_cents0(2) <= \cents0[2]~output_o\;

ww_cents0(3) <= \cents0[3]~output_o\;

ww_cents0(4) <= \cents0[4]~output_o\;

ww_cents0(5) <= \cents0[5]~output_o\;

ww_cents0(6) <= \cents0[6]~output_o\;

ww_cents1(0) <= \cents1[0]~output_o\;

ww_cents1(1) <= \cents1[1]~output_o\;

ww_cents1(2) <= \cents1[2]~output_o\;

ww_cents1(3) <= \cents1[3]~output_o\;

ww_cents1(4) <= \cents1[4]~output_o\;

ww_cents1(5) <= \cents1[5]~output_o\;

ww_cents1(6) <= \cents1[6]~output_o\;

ww_reais0(0) <= \reais0[0]~output_o\;

ww_reais0(1) <= \reais0[1]~output_o\;

ww_reais0(2) <= \reais0[2]~output_o\;

ww_reais0(3) <= \reais0[3]~output_o\;

ww_reais0(4) <= \reais0[4]~output_o\;

ww_reais0(5) <= \reais0[5]~output_o\;

ww_reais0(6) <= \reais0[6]~output_o\;

ww_reais1(0) <= \reais1[0]~output_o\;

ww_reais1(1) <= \reais1[1]~output_o\;

ww_reais1(2) <= \reais1[2]~output_o\;

ww_reais1(3) <= \reais1[3]~output_o\;

ww_reais1(4) <= \reais1[4]~output_o\;

ww_reais1(5) <= \reais1[5]~output_o\;

ww_reais1(6) <= \reais1[6]~output_o\;
END structure;


