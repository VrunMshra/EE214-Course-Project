-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/05/2024 16:53:24"

-- 
-- Device: Altera 10M25SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_16,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_18,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_19,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_129,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_136,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_138,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	master IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	miso : IN std_logic;
	mosi : OUT std_logic;
	cs1 : OUT std_logic;
	cs2 : OUT std_logic;
	sclk : OUT std_logic;
	LEDS : OUT std_logic_vector(7 DOWNTO 0);
	SDI : OUT std_logic;
	dac_sclk : OUT std_logic
	);
END master;

-- Design Ports Information
-- mosi	=>  Location: PIN_78,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cs1	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cs2	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sclk	=>  Location: PIN_81,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[0]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[2]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[3]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[4]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[5]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[6]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[7]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDI	=>  Location: PIN_62,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dac_sclk	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- miso	=>  Location: PIN_79,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF master IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_miso : std_logic;
SIGNAL ww_mosi : std_logic;
SIGNAL ww_cs1 : std_logic;
SIGNAL ww_cs2 : std_logic;
SIGNAL ww_sclk : std_logic;
SIGNAL ww_LEDS : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SDI : std_logic;
SIGNAL ww_dac_sclk : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sclk_gen~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \mosi~output_o\ : std_logic;
SIGNAL \cs1~output_o\ : std_logic;
SIGNAL \cs2~output_o\ : std_logic;
SIGNAL \sclk~output_o\ : std_logic;
SIGNAL \LEDS[0]~output_o\ : std_logic;
SIGNAL \LEDS[1]~output_o\ : std_logic;
SIGNAL \LEDS[2]~output_o\ : std_logic;
SIGNAL \LEDS[3]~output_o\ : std_logic;
SIGNAL \LEDS[4]~output_o\ : std_logic;
SIGNAL \LEDS[5]~output_o\ : std_logic;
SIGNAL \LEDS[6]~output_o\ : std_logic;
SIGNAL \LEDS[7]~output_o\ : std_logic;
SIGNAL \SDI~output_o\ : std_logic;
SIGNAL \dac_sclk~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \clk_counter~5_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \clk_counter~4_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \clk_counter~3_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \clk_counter~2_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \clk_counter~1_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \clk_counter~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \sclk_gen~0_combout\ : std_logic;
SIGNAL \sclk_gen~feeder_combout\ : std_logic;
SIGNAL \sclk_gen~q\ : std_logic;
SIGNAL \sclk_gen~clkctrl_outclk\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \bit_counter[4]~4_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \bit_counter[1]~8_combout\ : std_logic;
SIGNAL \bit_counter[1]~9_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \bit_counter[3]~3_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \bit_counter[3]~5_combout\ : std_logic;
SIGNAL \cs_gen2~8_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \bit_counter[2]~6_combout\ : std_logic;
SIGNAL \bit_counter[2]~7_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \bit_counter[0]~0_combout\ : std_logic;
SIGNAL \bit_counter[2]~1_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \bit_counter[5]~2_combout\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \process_1~4_combout\ : std_logic;
SIGNAL \WideNor0~3_combout\ : std_logic;
SIGNAL \WideNor0~12_combout\ : std_logic;
SIGNAL \process_1~2_combout\ : std_logic;
SIGNAL \process_1~5_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \mosi~reg0_q\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \process_1~3_combout\ : std_logic;
SIGNAL \process_1~6_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \cs_gen1~q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \cs_gen2~q\ : std_logic;
SIGNAL \miso~input_o\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \data_in[2]~0_combout\ : std_logic;
SIGNAL \LEDS[0]~reg0_q\ : std_logic;
SIGNAL \data_in[3]~1_combout\ : std_logic;
SIGNAL \LEDS[1]~reg0_q\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \data_in[4]~2_combout\ : std_logic;
SIGNAL \LEDS[2]~reg0_q\ : std_logic;
SIGNAL \data_in[5]~3_combout\ : std_logic;
SIGNAL \LEDS[3]~reg0_q\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \data_in[6]~4_combout\ : std_logic;
SIGNAL \LEDS[4]~reg0_q\ : std_logic;
SIGNAL \data_in[7]~5_combout\ : std_logic;
SIGNAL \LEDS[5]~reg0_q\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \data_in[8]~6_combout\ : std_logic;
SIGNAL \LEDS[6]~reg0_q\ : std_logic;
SIGNAL \data_in[9]~7_combout\ : std_logic;
SIGNAL \LEDS[7]~reg0_q\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \data_in[0]~8_combout\ : std_logic;
SIGNAL \data_in[1]~9_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \SDI~3_combout\ : std_logic;
SIGNAL \SDI~9_combout\ : std_logic;
SIGNAL \SDI~4_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \SDI~5_combout\ : std_logic;
SIGNAL \SDI~6_combout\ : std_logic;
SIGNAL \SDI~7_combout\ : std_logic;
SIGNAL \SDI~8_combout\ : std_logic;
SIGNAL \SDI~0_combout\ : std_logic;
SIGNAL \SDI~1_combout\ : std_logic;
SIGNAL \SDI~2_combout\ : std_logic;
SIGNAL \SDI~10_combout\ : std_logic;
SIGNAL \SDI~reg0_q\ : std_logic;
SIGNAL bit_counter : std_logic_vector(5 DOWNTO 0);
SIGNAL clk_counter : std_logic_vector(9 DOWNTO 0);
SIGNAL data_in : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_sclk_gen~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_cs_gen2~q\ : std_logic;
SIGNAL \ALT_INV_cs_gen1~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_miso <= miso;
mosi <= ww_mosi;
cs1 <= ww_cs1;
cs2 <= ww_cs2;
sclk <= ww_sclk;
LEDS <= ww_LEDS;
SDI <= ww_SDI;
dac_sclk <= ww_dac_sclk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\sclk_gen~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sclk_gen~q\);
\ALT_INV_sclk_gen~clkctrl_outclk\ <= NOT \sclk_gen~clkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_cs_gen2~q\ <= NOT \cs_gen2~q\;
\ALT_INV_cs_gen1~q\ <= NOT \cs_gen1~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y23_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X60_Y8_N9
\mosi~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mosi~reg0_q\,
	devoe => ww_devoe,
	o => \mosi~output_o\);

-- Location: IOOBUF_X60_Y2_N16
\cs1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_cs_gen1~q\,
	devoe => ww_devoe,
	o => \cs1~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\cs2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_cs_gen2~q\,
	devoe => ww_devoe,
	o => \cs2~output_o\);

-- Location: IOOBUF_X60_Y8_N16
\sclk~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sclk_gen~q\,
	devoe => ww_devoe,
	o => \sclk~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\LEDS[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDS[0]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDS[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\LEDS[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDS[1]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDS[1]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\LEDS[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDS[2]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDS[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\LEDS[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDS[3]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDS[3]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\LEDS[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDS[4]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDS[4]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\LEDS[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDS[5]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDS[5]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\LEDS[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDS[6]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDS[6]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\LEDS[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDS[7]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDS[7]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\SDI~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDI~reg0_q\,
	devoe => ww_devoe,
	o => \SDI~output_o\);

-- Location: IOOBUF_X40_Y0_N30
\dac_sclk~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sclk_gen~q\,
	devoe => ww_devoe,
	o => \dac_sclk~output_o\);

-- Location: IOIBUF_X0_Y11_N22
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X38_Y4_N4
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = clk_counter(0) $ (VCC)
-- \Add0~1\ = CARRY(clk_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: IOIBUF_X40_Y0_N1
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X38_Y4_N5
\clk_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(0));

-- Location: LCCOMB_X38_Y4_N6
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (clk_counter(1) & (!\Add0~1\)) # (!clk_counter(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!clk_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X38_Y4_N7
\clk_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(1));

-- Location: LCCOMB_X37_Y4_N8
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (clk_counter(0) & clk_counter(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(0),
	datad => clk_counter(1),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X38_Y4_N8
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (clk_counter(2) & (\Add0~3\ $ (GND))) # (!clk_counter(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((clk_counter(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X38_Y4_N9
\clk_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(2));

-- Location: LCCOMB_X38_Y4_N10
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (clk_counter(3) & (!\Add0~5\)) # (!clk_counter(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!clk_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X38_Y4_N26
\clk_counter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter~5_combout\ = (\Add0~6_combout\ & (((!\Equal0~2_combout\) # (!\Equal0~0_combout\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \Add0~6_combout\,
	combout => \clk_counter~5_combout\);

-- Location: FF_X38_Y4_N27
\clk_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(3));

-- Location: LCCOMB_X38_Y4_N12
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (clk_counter(4) & (\Add0~7\ $ (GND))) # (!clk_counter(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((clk_counter(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X38_Y4_N13
\clk_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(4));

-- Location: LCCOMB_X38_Y4_N14
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (clk_counter(5) & (!\Add0~9\)) # (!clk_counter(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!clk_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X38_Y4_N24
\clk_counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter~4_combout\ = (\Add0~10_combout\ & (((!\Equal0~0_combout\) # (!\Equal0~2_combout\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~2_combout\,
	datac => \Add0~10_combout\,
	datad => \Equal0~0_combout\,
	combout => \clk_counter~4_combout\);

-- Location: FF_X38_Y4_N25
\clk_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(5));

-- Location: LCCOMB_X37_Y4_N2
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (clk_counter(5) & (clk_counter(2) & (!clk_counter(4) & !clk_counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(5),
	datab => clk_counter(2),
	datac => clk_counter(4),
	datad => clk_counter(3),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X38_Y4_N16
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (clk_counter(6) & (\Add0~11\ $ (GND))) # (!clk_counter(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((clk_counter(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X38_Y4_N30
\clk_counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter~3_combout\ = (\Add0~12_combout\ & (((!\Equal0~2_combout\) # (!\Equal0~0_combout\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \Add0~12_combout\,
	combout => \clk_counter~3_combout\);

-- Location: FF_X38_Y4_N31
\clk_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(6));

-- Location: LCCOMB_X38_Y4_N18
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (clk_counter(7) & (!\Add0~13\)) # (!clk_counter(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!clk_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X38_Y4_N28
\clk_counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter~2_combout\ = (\Add0~14_combout\ & (((!\Equal0~2_combout\) # (!\Equal0~0_combout\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \Add0~14_combout\,
	combout => \clk_counter~2_combout\);

-- Location: FF_X38_Y4_N29
\clk_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(7));

-- Location: LCCOMB_X38_Y4_N20
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (clk_counter(8) & (\Add0~15\ $ (GND))) # (!clk_counter(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((clk_counter(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X38_Y4_N2
\clk_counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter~1_combout\ = (\Add0~16_combout\ & (((!\Equal0~2_combout\) # (!\Equal0~0_combout\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \Add0~16_combout\,
	combout => \clk_counter~1_combout\);

-- Location: FF_X38_Y4_N3
\clk_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(8));

-- Location: LCCOMB_X38_Y4_N22
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = \Add0~17\ $ (clk_counter(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => clk_counter(9),
	cin => \Add0~17\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X38_Y4_N0
\clk_counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter~0_combout\ = (\Add0~18_combout\ & (((!\Equal0~0_combout\) # (!\Equal0~2_combout\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~2_combout\,
	datac => \Add0~18_combout\,
	datad => \Equal0~0_combout\,
	combout => \clk_counter~0_combout\);

-- Location: FF_X38_Y4_N1
\clk_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(9));

-- Location: LCCOMB_X37_Y4_N30
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (clk_counter(8) & (clk_counter(9) & (clk_counter(6) & clk_counter(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(8),
	datab => clk_counter(9),
	datac => clk_counter(6),
	datad => clk_counter(7),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X37_Y4_N4
\sclk_gen~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sclk_gen~0_combout\ = \sclk_gen~q\ $ (((\Equal0~2_combout\ & (\Equal0~0_combout\ & \Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sclk_gen~q\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \sclk_gen~0_combout\);

-- Location: LCCOMB_X37_Y4_N6
\sclk_gen~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sclk_gen~feeder_combout\ = \sclk_gen~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sclk_gen~0_combout\,
	combout => \sclk_gen~feeder_combout\);

-- Location: FF_X37_Y4_N7
sclk_gen : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sclk_gen~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sclk_gen~q\);

-- Location: CLKCTRL_G16
\sclk_gen~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sclk_gen~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sclk_gen~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y4_N0
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = bit_counter(0) $ (VCC)
-- \Add1~1\ = CARRY(bit_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X33_Y4_N2
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (bit_counter(1) & (!\Add1~1\)) # (!bit_counter(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!bit_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X33_Y4_N4
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (bit_counter(2) & (\Add1~3\ $ (GND))) # (!bit_counter(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((bit_counter(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X33_Y4_N6
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (bit_counter(3) & (!\Add1~5\)) # (!bit_counter(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!bit_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X33_Y4_N8
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (bit_counter(4) & (\Add1~7\ $ (GND))) # (!bit_counter(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((bit_counter(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X34_Y4_N2
\bit_counter[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_counter[4]~4_combout\ = (\Add1~8_combout\ & ((\bit_counter[3]~3_combout\) # ((bit_counter(5) & bit_counter(4))))) # (!\Add1~8_combout\ & (bit_counter(5) & (bit_counter(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => bit_counter(5),
	datac => bit_counter(4),
	datad => \bit_counter[3]~3_combout\,
	combout => \bit_counter[4]~4_combout\);

-- Location: FF_X34_Y4_N3
\bit_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \bit_counter[4]~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(4));

-- Location: LCCOMB_X35_Y4_N10
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!bit_counter(3) & (!bit_counter(5) & !bit_counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(3),
	datac => bit_counter(5),
	datad => bit_counter(4),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X35_Y4_N8
\Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (!bit_counter(2) & !bit_counter(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(2),
	datac => bit_counter(1),
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X35_Y4_N14
\bit_counter[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_counter[1]~8_combout\ = (\Add1~2_combout\ & (((bit_counter(0)) # (!\Decoder0~0_combout\)) # (!\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => bit_counter(0),
	datac => \Decoder0~0_combout\,
	datad => \Add1~2_combout\,
	combout => \bit_counter[1]~8_combout\);

-- Location: LCCOMB_X36_Y4_N0
\bit_counter[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_counter[1]~9_combout\ = (\cs_gen2~8_combout\ & (((bit_counter(1))))) # (!\cs_gen2~8_combout\ & (((\bit_counter[1]~8_combout\)) # (!\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \cs_gen2~8_combout\,
	datac => bit_counter(1),
	datad => \bit_counter[1]~8_combout\,
	combout => \bit_counter[1]~9_combout\);

-- Location: FF_X36_Y4_N1
\bit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \bit_counter[1]~9_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(1));

-- Location: LCCOMB_X35_Y4_N22
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!bit_counter(2) & (!bit_counter(0) & (!bit_counter(1) & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(2),
	datab => bit_counter(0),
	datac => bit_counter(1),
	datad => \Equal1~0_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X35_Y4_N28
\bit_counter[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_counter[3]~3_combout\ = (!\Equal1~1_combout\ & (\Equal2~0_combout\ & !\cs_gen2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datac => \Equal2~0_combout\,
	datad => \cs_gen2~8_combout\,
	combout => \bit_counter[3]~3_combout\);

-- Location: LCCOMB_X35_Y4_N24
\bit_counter[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_counter[3]~5_combout\ = (bit_counter(5) & ((bit_counter(3)) # ((\bit_counter[3]~3_combout\ & \Add1~6_combout\)))) # (!bit_counter(5) & (\bit_counter[3]~3_combout\ & ((\Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(5),
	datab => \bit_counter[3]~3_combout\,
	datac => bit_counter(3),
	datad => \Add1~6_combout\,
	combout => \bit_counter[3]~5_combout\);

-- Location: FF_X35_Y4_N25
\bit_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \bit_counter[3]~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(3));

-- Location: LCCOMB_X37_Y4_N24
\cs_gen2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cs_gen2~8_combout\ = (bit_counter(5) & ((bit_counter(3)) # ((bit_counter(4)) # (bit_counter(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(3),
	datab => bit_counter(4),
	datac => bit_counter(5),
	datad => bit_counter(2),
	combout => \cs_gen2~8_combout\);

-- Location: LCCOMB_X35_Y4_N4
\Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!bit_counter(2) & (!bit_counter(1) & !bit_counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(2),
	datac => bit_counter(1),
	datad => bit_counter(0),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X35_Y4_N2
\bit_counter[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_counter[2]~6_combout\ = ((\Add1~4_combout\ & ((!\Equal1~2_combout\) # (!\Equal1~0_combout\)))) # (!\Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Equal1~2_combout\,
	datac => \Equal2~0_combout\,
	datad => \Add1~4_combout\,
	combout => \bit_counter[2]~6_combout\);

-- Location: LCCOMB_X35_Y4_N20
\bit_counter[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_counter[2]~7_combout\ = (bit_counter(5) & ((bit_counter(2)) # ((!\cs_gen2~8_combout\ & \bit_counter[2]~6_combout\)))) # (!bit_counter(5) & (!\cs_gen2~8_combout\ & ((\bit_counter[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(5),
	datab => \cs_gen2~8_combout\,
	datac => bit_counter(2),
	datad => \bit_counter[2]~6_combout\,
	combout => \bit_counter[2]~7_combout\);

-- Location: FF_X35_Y4_N21
\bit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \bit_counter[2]~7_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(2));

-- Location: LCCOMB_X35_Y4_N26
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (((bit_counter(1)) # (!\Equal1~0_combout\)) # (!bit_counter(0))) # (!bit_counter(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(2),
	datab => bit_counter(0),
	datac => bit_counter(1),
	datad => \Equal1~0_combout\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X36_Y4_N16
\bit_counter[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_counter[0]~0_combout\ = (\bit_counter[2]~1_combout\ & (\Equal2~0_combout\)) # (!\bit_counter[2]~1_combout\ & ((\Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \bit_counter[2]~1_combout\,
	datad => \Add1~0_combout\,
	combout => \bit_counter[0]~0_combout\);

-- Location: FF_X36_Y4_N17
\bit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \bit_counter[0]~0_combout\,
	asdata => bit_counter(0),
	clrn => \ALT_INV_reset~input_o\,
	sload => \cs_gen2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(0));

-- Location: LCCOMB_X34_Y4_N10
\bit_counter[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_counter[2]~1_combout\ = (\Equal1~0_combout\ & (!bit_counter(1) & (bit_counter(0) $ (!bit_counter(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(0),
	datab => bit_counter(2),
	datac => \Equal1~0_combout\,
	datad => bit_counter(1),
	combout => \bit_counter[2]~1_combout\);

-- Location: LCCOMB_X33_Y4_N10
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = bit_counter(5) $ (\Add1~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(5),
	cin => \Add1~9\,
	combout => \Add1~10_combout\);

-- Location: LCCOMB_X34_Y4_N20
\bit_counter[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_counter[5]~2_combout\ = (\cs_gen2~8_combout\ & (((bit_counter(5))))) # (!\cs_gen2~8_combout\ & (!\bit_counter[2]~1_combout\ & ((\Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_counter[2]~1_combout\,
	datab => \cs_gen2~8_combout\,
	datac => bit_counter(5),
	datad => \Add1~10_combout\,
	combout => \bit_counter[5]~2_combout\);

-- Location: FF_X34_Y4_N21
\bit_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \bit_counter[5]~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(5));

-- Location: LCCOMB_X34_Y4_N6
\process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (bit_counter(3)) # ((bit_counter(2)) # (bit_counter(1) $ (!bit_counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(1),
	datab => bit_counter(3),
	datac => bit_counter(0),
	datad => bit_counter(2),
	combout => \process_1~0_combout\);

-- Location: LCCOMB_X34_Y4_N12
\process_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~1_combout\ = (bit_counter(5)) # ((\process_1~0_combout\) # (!bit_counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(5),
	datac => bit_counter(4),
	datad => \process_1~0_combout\,
	combout => \process_1~1_combout\);

-- Location: LCCOMB_X34_Y4_N28
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!bit_counter(1) & (!bit_counter(2) & \Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(1),
	datab => bit_counter(2),
	datad => \Equal1~0_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X37_Y4_N22
\process_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~4_combout\ = (bit_counter(5) & ((bit_counter(2)) # ((bit_counter(4)) # (bit_counter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(2),
	datab => bit_counter(5),
	datac => bit_counter(4),
	datad => bit_counter(3),
	combout => \process_1~4_combout\);

-- Location: LCCOMB_X37_Y4_N28
\WideNor0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideNor0~3_combout\ = (bit_counter(3)) # ((bit_counter(0) & bit_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(0),
	datac => bit_counter(1),
	datad => bit_counter(3),
	combout => \WideNor0~3_combout\);

-- Location: LCCOMB_X37_Y4_N16
\WideNor0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideNor0~12_combout\ = (bit_counter(5)) # ((bit_counter(4) & ((bit_counter(2)) # (\WideNor0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(2),
	datab => bit_counter(5),
	datac => bit_counter(4),
	datad => \WideNor0~3_combout\,
	combout => \WideNor0~12_combout\);

-- Location: LCCOMB_X36_Y4_N14
\process_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~2_combout\ = (!bit_counter(3) & (!bit_counter(2) & ((!bit_counter(1)) # (!bit_counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(0),
	datab => bit_counter(3),
	datac => bit_counter(1),
	datad => bit_counter(2),
	combout => \process_1~2_combout\);

-- Location: LCCOMB_X37_Y4_N14
\process_1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~5_combout\ = (!bit_counter(5) & ((\process_1~2_combout\) # (!bit_counter(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(5),
	datac => bit_counter(4),
	datad => \process_1~2_combout\,
	combout => \process_1~5_combout\);

-- Location: LCCOMB_X36_Y4_N12
\Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!bit_counter(3) & (bit_counter(5) & !bit_counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(3),
	datac => bit_counter(5),
	datad => bit_counter(4),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X37_Y4_N10
\Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (!bit_counter(1) & (bit_counter(2) & (!bit_counter(0) & \Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(1),
	datab => bit_counter(2),
	datac => bit_counter(0),
	datad => \Equal3~0_combout\,
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X37_Y4_N26
\Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (!\WideNor0~12_combout\ & (!\Equal3~1_combout\ & ((\process_1~4_combout\) # (\process_1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~4_combout\,
	datab => \WideNor0~12_combout\,
	datac => \process_1~5_combout\,
	datad => \Equal3~1_combout\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X34_Y4_N4
\Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\Selector1~0_combout\) # ((\mosi~reg0_q\ & ((!\Selector1~1_combout\) # (!\process_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~1_combout\,
	datab => \Selector1~0_combout\,
	datac => \mosi~reg0_q\,
	datad => \Selector1~1_combout\,
	combout => \Selector1~2_combout\);

-- Location: FF_X34_Y4_N5
\mosi~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \Selector1~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mosi~reg0_q\);

-- Location: LCCOMB_X34_Y4_N14
\Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = ((bit_counter(1) & (bit_counter(2))) # (!bit_counter(1) & (!bit_counter(2) & !bit_counter(0)))) # (!\Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(1),
	datab => bit_counter(2),
	datac => \Equal1~0_combout\,
	datad => bit_counter(0),
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X34_Y4_N22
\process_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~3_combout\ = (bit_counter(3)) # ((bit_counter(1) & ((bit_counter(4)) # (bit_counter(2)))) # (!bit_counter(1) & (bit_counter(4) & bit_counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(1),
	datab => bit_counter(3),
	datac => bit_counter(4),
	datad => bit_counter(2),
	combout => \process_1~3_combout\);

-- Location: LCCOMB_X34_Y4_N8
\process_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~6_combout\ = (bit_counter(5)) # ((\process_1~3_combout\ & (bit_counter(4))) # (!\process_1~3_combout\ & ((bit_counter(0)) # (!bit_counter(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~3_combout\,
	datab => bit_counter(5),
	datac => bit_counter(4),
	datad => bit_counter(0),
	combout => \process_1~6_combout\);

-- Location: LCCOMB_X34_Y4_N24
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\Selector0~2_combout\ & \process_1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector0~2_combout\,
	datad => \process_1~6_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X34_Y4_N18
\Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\process_1~1_combout\ & ((\cs_gen1~q\) # ((\Selector0~0_combout\ & \Selector1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~1_combout\,
	datab => \Selector0~0_combout\,
	datac => \cs_gen1~q\,
	datad => \Selector1~1_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X34_Y4_N19
cs_gen1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \Selector0~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cs_gen1~q\);

-- Location: LCCOMB_X37_Y4_N12
\Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (!\cs_gen2~8_combout\ & ((\cs_gen2~q\) # (\WideNor0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cs_gen2~8_combout\,
	datac => \cs_gen2~q\,
	datad => \WideNor0~12_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X37_Y4_N13
cs_gen2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \Selector8~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cs_gen2~q\);

-- Location: IOIBUF_X60_Y8_N22
\miso~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_miso,
	o => \miso~input_o\);

-- Location: LCCOMB_X34_Y4_N16
\Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (!\reset~input_o\ & (!bit_counter(5) & \cs_gen1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => bit_counter(5),
	datad => \cs_gen1~q\,
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X34_Y4_N26
\Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (bit_counter(3) & (!bit_counter(4) & \Decoder0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(3),
	datac => bit_counter(4),
	datad => \Decoder0~1_combout\,
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X33_Y4_N28
\Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (bit_counter(1) & (bit_counter(2) & \Decoder0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(1),
	datab => bit_counter(2),
	datad => \Decoder0~2_combout\,
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X33_Y4_N26
\data_in[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_in[2]~0_combout\ = (bit_counter(0) & ((\Decoder0~3_combout\ & (\miso~input_o\)) # (!\Decoder0~3_combout\ & ((data_in(2)))))) # (!bit_counter(0) & (((data_in(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(0),
	datab => \miso~input_o\,
	datac => data_in(2),
	datad => \Decoder0~3_combout\,
	combout => \data_in[2]~0_combout\);

-- Location: FF_X33_Y4_N27
\data_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk_gen~clkctrl_outclk\,
	d => \data_in[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_in(2));

-- Location: FF_X33_Y4_N1
\LEDS[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk_gen~clkctrl_outclk\,
	asdata => data_in(2),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_cs_gen1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDS[0]~reg0_q\);

-- Location: LCCOMB_X33_Y4_N18
\data_in[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_in[3]~1_combout\ = (bit_counter(0) & (((data_in(3))))) # (!bit_counter(0) & ((\Decoder0~3_combout\ & (\miso~input_o\)) # (!\Decoder0~3_combout\ & ((data_in(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(0),
	datab => \miso~input_o\,
	datac => data_in(3),
	datad => \Decoder0~3_combout\,
	combout => \data_in[3]~1_combout\);

-- Location: FF_X33_Y4_N19
\data_in[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk_gen~clkctrl_outclk\,
	d => \data_in[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_in(3));

-- Location: FF_X33_Y4_N3
\LEDS[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk_gen~clkctrl_outclk\,
	asdata => data_in(3),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_cs_gen1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDS[1]~reg0_q\);

-- Location: LCCOMB_X33_Y4_N12
\Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (bit_counter(2) & (!bit_counter(1) & \Decoder0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(2),
	datac => bit_counter(1),
	datad => \Decoder0~2_combout\,
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X33_Y4_N30
\data_in[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_in[4]~2_combout\ = (bit_counter(0) & ((\Decoder0~4_combout\ & (\miso~input_o\)) # (!\Decoder0~4_combout\ & ((data_in(4)))))) # (!bit_counter(0) & (((data_in(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(0),
	datab => \miso~input_o\,
	datac => data_in(4),
	datad => \Decoder0~4_combout\,
	combout => \data_in[4]~2_combout\);

-- Location: FF_X33_Y4_N31
\data_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk_gen~clkctrl_outclk\,
	d => \data_in[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_in(4));

-- Location: FF_X33_Y4_N5
\LEDS[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk_gen~clkctrl_outclk\,
	asdata => data_in(4),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_cs_gen1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDS[2]~reg0_q\);

-- Location: LCCOMB_X33_Y4_N24
\data_in[5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_in[5]~3_combout\ = (bit_counter(0) & (((data_in(5))))) # (!bit_counter(0) & ((\Decoder0~4_combout\ & (\miso~input_o\)) # (!\Decoder0~4_combout\ & ((data_in(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(0),
	datab => \miso~input_o\,
	datac => data_in(5),
	datad => \Decoder0~4_combout\,
	combout => \data_in[5]~3_combout\);

-- Location: FF_X33_Y4_N25
\data_in[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk_gen~clkctrl_outclk\,
	d => \data_in[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_in(5));

-- Location: FF_X33_Y4_N7
\LEDS[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk_gen~clkctrl_outclk\,
	asdata => data_in(5),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_cs_gen1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDS[3]~reg0_q\);

-- Location: LCCOMB_X33_Y4_N16
\Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (!bit_counter(2) & (bit_counter(1) & \Decoder0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(2),
	datac => bit_counter(1),
	datad => \Decoder0~2_combout\,
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X33_Y4_N14
\data_in[6]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_in[6]~4_combout\ = (bit_counter(0) & ((\Decoder0~5_combout\ & (\miso~input_o\)) # (!\Decoder0~5_combout\ & ((data_in(6)))))) # (!bit_counter(0) & (((data_in(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(0),
	datab => \miso~input_o\,
	datac => data_in(6),
	datad => \Decoder0~5_combout\,
	combout => \data_in[6]~4_combout\);

-- Location: FF_X33_Y4_N15
\data_in[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk_gen~clkctrl_outclk\,
	d => \data_in[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_in(6));

-- Location: FF_X33_Y4_N9
\LEDS[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk_gen~clkctrl_outclk\,
	asdata => data_in(6),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_cs_gen1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDS[4]~reg0_q\);

-- Location: LCCOMB_X33_Y4_N22
\data_in[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_in[7]~5_combout\ = (bit_counter(0) & (((data_in(7))))) # (!bit_counter(0) & ((\Decoder0~5_combout\ & (\miso~input_o\)) # (!\Decoder0~5_combout\ & ((data_in(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(0),
	datab => \miso~input_o\,
	datac => data_in(7),
	datad => \Decoder0~5_combout\,
	combout => \data_in[7]~5_combout\);

-- Location: FF_X33_Y4_N23
\data_in[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk_gen~clkctrl_outclk\,
	d => \data_in[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_in(7));

-- Location: FF_X33_Y4_N21
\LEDS[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk_gen~clkctrl_outclk\,
	asdata => data_in(7),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_cs_gen1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDS[5]~reg0_q\);

-- Location: LCCOMB_X35_Y4_N12
\Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (bit_counter(0) & (!bit_counter(1) & !bit_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(0),
	datac => bit_counter(1),
	datad => bit_counter(2),
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X35_Y4_N16
\data_in[8]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_in[8]~6_combout\ = (\Decoder0~2_combout\ & ((\Decoder0~6_combout\ & (\miso~input_o\)) # (!\Decoder0~6_combout\ & ((data_in(8)))))) # (!\Decoder0~2_combout\ & (((data_in(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~2_combout\,
	datab => \miso~input_o\,
	datac => data_in(8),
	datad => \Decoder0~6_combout\,
	combout => \data_in[8]~6_combout\);

-- Location: FF_X35_Y4_N17
\data_in[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk_gen~clkctrl_outclk\,
	d => \data_in[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_in(8));

-- Location: FF_X33_Y4_N11
\LEDS[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk_gen~clkctrl_outclk\,
	asdata => data_in(8),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_cs_gen1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDS[6]~reg0_q\);

-- Location: LCCOMB_X35_Y4_N30
\data_in[9]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_in[9]~7_combout\ = (\Decoder0~2_combout\ & ((\Equal1~2_combout\ & ((\miso~input_o\))) # (!\Equal1~2_combout\ & (data_in(9))))) # (!\Decoder0~2_combout\ & (((data_in(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~2_combout\,
	datab => \Equal1~2_combout\,
	datac => data_in(9),
	datad => \miso~input_o\,
	combout => \data_in[9]~7_combout\);

-- Location: FF_X35_Y4_N31
\data_in[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk_gen~clkctrl_outclk\,
	d => \data_in[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_in(9));

-- Location: FF_X33_Y4_N29
\LEDS[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk_gen~clkctrl_outclk\,
	asdata => data_in(9),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_cs_gen1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDS[7]~reg0_q\);

-- Location: LCCOMB_X35_Y4_N6
\Decoder0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (!bit_counter(3) & (bit_counter(4) & (\Decoder0~0_combout\ & \Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(3),
	datab => bit_counter(4),
	datac => \Decoder0~0_combout\,
	datad => \Decoder0~1_combout\,
	combout => \Decoder0~7_combout\);

-- Location: LCCOMB_X35_Y4_N18
\data_in[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_in[0]~8_combout\ = (\Decoder0~6_combout\ & ((\Decoder0~7_combout\ & (\miso~input_o\)) # (!\Decoder0~7_combout\ & ((data_in(0)))))) # (!\Decoder0~6_combout\ & (((data_in(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~6_combout\,
	datab => \miso~input_o\,
	datac => data_in(0),
	datad => \Decoder0~7_combout\,
	combout => \data_in[0]~8_combout\);

-- Location: FF_X35_Y4_N19
\data_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk_gen~clkctrl_outclk\,
	d => \data_in[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_in(0));

-- Location: LCCOMB_X35_Y4_N0
\data_in[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_in[1]~9_combout\ = (\Equal1~2_combout\ & ((\Decoder0~7_combout\ & (\miso~input_o\)) # (!\Decoder0~7_combout\ & ((data_in(1)))))) # (!\Equal1~2_combout\ & (((data_in(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \miso~input_o\,
	datab => \Equal1~2_combout\,
	datac => data_in(1),
	datad => \Decoder0~7_combout\,
	combout => \data_in[1]~9_combout\);

-- Location: FF_X35_Y4_N1
\data_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk_gen~clkctrl_outclk\,
	d => \data_in[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_in(1));

-- Location: LCCOMB_X36_Y4_N28
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (bit_counter(0) & (((bit_counter(1))))) # (!bit_counter(0) & ((bit_counter(1) & (data_in(3))) # (!bit_counter(1) & ((data_in(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_in(3),
	datab => bit_counter(0),
	datac => data_in(1),
	datad => bit_counter(1),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X36_Y4_N22
\Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (bit_counter(0) & ((\Mux1~0_combout\ & (data_in(2))) # (!\Mux1~0_combout\ & ((data_in(0)))))) # (!bit_counter(0) & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_in(2),
	datab => data_in(0),
	datac => bit_counter(0),
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X36_Y4_N4
\SDI~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDI~3_combout\ = (\Equal3~0_combout\ & (\cs_gen2~q\ & (\Equal1~2_combout\ & \Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \cs_gen2~q\,
	datac => \Equal1~2_combout\,
	datad => \Mux1~1_combout\,
	combout => \SDI~3_combout\);

-- Location: LCCOMB_X37_Y4_N0
\SDI~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDI~9_combout\ = (\cs_gen2~q\ & (bit_counter(4) & !bit_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cs_gen2~q\,
	datac => bit_counter(4),
	datad => bit_counter(5),
	combout => \SDI~9_combout\);

-- Location: LCCOMB_X36_Y4_N30
\SDI~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDI~4_combout\ = (bit_counter(1) & ((bit_counter(3)) # (!bit_counter(0)))) # (!bit_counter(1) & ((!bit_counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(1),
	datac => bit_counter(0),
	datad => bit_counter(3),
	combout => \SDI~4_combout\);

-- Location: LCCOMB_X36_Y4_N18
\Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (bit_counter(0) & (((bit_counter(1))))) # (!bit_counter(0) & ((bit_counter(1) & (data_in(7))) # (!bit_counter(1) & ((data_in(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_in(7),
	datab => bit_counter(0),
	datac => data_in(5),
	datad => bit_counter(1),
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X36_Y4_N24
\Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (bit_counter(0) & ((\Mux1~2_combout\ & (data_in(6))) # (!\Mux1~2_combout\ & ((data_in(4)))))) # (!bit_counter(0) & (((\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_in(6),
	datab => data_in(4),
	datac => bit_counter(0),
	datad => \Mux1~2_combout\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X36_Y4_N8
\SDI~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDI~5_combout\ = (\SDI~4_combout\ & (((\Mux1~1_combout\)) # (!bit_counter(3)))) # (!\SDI~4_combout\ & (bit_counter(3) & ((\Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDI~4_combout\,
	datab => bit_counter(3),
	datac => \Mux1~1_combout\,
	datad => \Mux1~3_combout\,
	combout => \SDI~5_combout\);

-- Location: LCCOMB_X36_Y4_N2
\SDI~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDI~6_combout\ = (!bit_counter(1) & ((bit_counter(0) & (data_in(8))) # (!bit_counter(0) & ((data_in(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_in(8),
	datab => data_in(9),
	datac => bit_counter(1),
	datad => bit_counter(0),
	combout => \SDI~6_combout\);

-- Location: LCCOMB_X36_Y4_N20
\SDI~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDI~7_combout\ = (\SDI~6_combout\) # ((bit_counter(1) & \Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(1),
	datab => \SDI~6_combout\,
	datad => \Mux1~3_combout\,
	combout => \SDI~7_combout\);

-- Location: LCCOMB_X36_Y4_N26
\SDI~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDI~8_combout\ = (bit_counter(2) & (((\SDI~5_combout\)))) # (!bit_counter(2) & (bit_counter(3) & ((\SDI~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(3),
	datab => bit_counter(2),
	datac => \SDI~5_combout\,
	datad => \SDI~7_combout\,
	combout => \SDI~8_combout\);

-- Location: LCCOMB_X37_Y4_N20
\SDI~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDI~0_combout\ = (!bit_counter(5) & (!bit_counter(3) & ((!bit_counter(0)) # (!bit_counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(1),
	datab => bit_counter(0),
	datac => bit_counter(5),
	datad => bit_counter(3),
	combout => \SDI~0_combout\);

-- Location: LCCOMB_X37_Y4_N18
\SDI~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDI~1_combout\ = ((\SDI~0_combout\) # ((bit_counter(5) & bit_counter(4)))) # (!\cs_gen2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(5),
	datab => \cs_gen2~q\,
	datac => bit_counter(4),
	datad => \SDI~0_combout\,
	combout => \SDI~1_combout\);

-- Location: LCCOMB_X36_Y4_N6
\SDI~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDI~2_combout\ = (\SDI~reg0_q\ & ((\SDI~1_combout\) # ((!bit_counter(4) & !\process_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDI~reg0_q\,
	datab => bit_counter(4),
	datac => \process_1~2_combout\,
	datad => \SDI~1_combout\,
	combout => \SDI~2_combout\);

-- Location: LCCOMB_X36_Y4_N10
\SDI~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDI~10_combout\ = (\SDI~3_combout\) # ((\SDI~2_combout\) # ((\SDI~9_combout\ & \SDI~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDI~3_combout\,
	datab => \SDI~9_combout\,
	datac => \SDI~8_combout\,
	datad => \SDI~2_combout\,
	combout => \SDI~10_combout\);

-- Location: FF_X36_Y4_N11
\SDI~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk_gen~clkctrl_outclk\,
	d => \SDI~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDI~reg0_q\);

-- Location: UNVM_X0_Y22_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X25_Y34_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X25_Y33_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_mosi <= \mosi~output_o\;

ww_cs1 <= \cs1~output_o\;

ww_cs2 <= \cs2~output_o\;

ww_sclk <= \sclk~output_o\;

ww_LEDS(0) <= \LEDS[0]~output_o\;

ww_LEDS(1) <= \LEDS[1]~output_o\;

ww_LEDS(2) <= \LEDS[2]~output_o\;

ww_LEDS(3) <= \LEDS[3]~output_o\;

ww_LEDS(4) <= \LEDS[4]~output_o\;

ww_LEDS(5) <= \LEDS[5]~output_o\;

ww_LEDS(6) <= \LEDS[6]~output_o\;

ww_LEDS(7) <= \LEDS[7]~output_o\;

ww_SDI <= \SDI~output_o\;

ww_dac_sclk <= \dac_sclk~output_o\;
END structure;


