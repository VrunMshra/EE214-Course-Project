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

-- DATE "10/30/2024 21:26:37"

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

ENTITY 	top IS
    PORT (
	clk : IN std_logic;
	reset_master : IN std_logic;
	reset_lcd : IN std_logic;
	MISO : IN std_logic;
	MOSI : BUFFER std_logic;
	CS : BUFFER std_logic;
	SCLK : BUFFER std_logic;
	LEDS : BUFFER std_logic_vector(9 DOWNTO 0);
	LCD_RW : BUFFER std_logic;
	LCD_EN : BUFFER std_logic;
	LCD_RS : BUFFER std_logic;
	DETECT : BUFFER std_logic;
	LCD1 : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END top;

-- Design Ports Information
-- MOSI	=>  Location: PIN_78,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CS	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCLK	=>  Location: PIN_81,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[0]	=>  Location: PIN_62,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[1]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[2]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[3]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[4]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[5]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[6]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[7]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[8]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[9]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_RW	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_EN	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_RS	=>  Location: PIN_122,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DETECT	=>  Location: PIN_61,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD1[0]	=>  Location: PIN_130,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD1[1]	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD1[2]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD1[3]	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD1[4]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD1[5]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD1[6]	=>  Location: PIN_140,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD1[7]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_master	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MISO	=>  Location: PIN_79,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_lcd	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top IS
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
SIGNAL ww_reset_master : std_logic;
SIGNAL ww_reset_lcd : std_logic;
SIGNAL ww_MISO : std_logic;
SIGNAL ww_MOSI : std_logic;
SIGNAL ww_CS : std_logic;
SIGNAL ww_SCLK : std_logic;
SIGNAL ww_LEDS : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LCD_RW : std_logic;
SIGNAL ww_LCD_EN : std_logic;
SIGNAL ww_LCD_RS : std_logic;
SIGNAL ww_DETECT : std_logic;
SIGNAL ww_LCD1 : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \test_inst|lcd_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \master_inst|sclk_gen~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \test_inst|clk_slow~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \MOSI~output_o\ : std_logic;
SIGNAL \CS~output_o\ : std_logic;
SIGNAL \SCLK~output_o\ : std_logic;
SIGNAL \LEDS[0]~output_o\ : std_logic;
SIGNAL \LEDS[1]~output_o\ : std_logic;
SIGNAL \LEDS[2]~output_o\ : std_logic;
SIGNAL \LEDS[3]~output_o\ : std_logic;
SIGNAL \LEDS[4]~output_o\ : std_logic;
SIGNAL \LEDS[5]~output_o\ : std_logic;
SIGNAL \LEDS[6]~output_o\ : std_logic;
SIGNAL \LEDS[7]~output_o\ : std_logic;
SIGNAL \LEDS[8]~output_o\ : std_logic;
SIGNAL \LEDS[9]~output_o\ : std_logic;
SIGNAL \LCD_RW~output_o\ : std_logic;
SIGNAL \LCD_EN~output_o\ : std_logic;
SIGNAL \LCD_RS~output_o\ : std_logic;
SIGNAL \DETECT~output_o\ : std_logic;
SIGNAL \LCD1[0]~output_o\ : std_logic;
SIGNAL \LCD1[1]~output_o\ : std_logic;
SIGNAL \LCD1[2]~output_o\ : std_logic;
SIGNAL \LCD1[3]~output_o\ : std_logic;
SIGNAL \LCD1[4]~output_o\ : std_logic;
SIGNAL \LCD1[5]~output_o\ : std_logic;
SIGNAL \LCD1[6]~output_o\ : std_logic;
SIGNAL \LCD1[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \master_inst|Add0~0_combout\ : std_logic;
SIGNAL \reset_master~input_o\ : std_logic;
SIGNAL \master_inst|Add0~1\ : std_logic;
SIGNAL \master_inst|Add0~2_combout\ : std_logic;
SIGNAL \master_inst|clk_counter~1_combout\ : std_logic;
SIGNAL \master_inst|Add0~3\ : std_logic;
SIGNAL \master_inst|Add0~4_combout\ : std_logic;
SIGNAL \master_inst|clk_counter~0_combout\ : std_logic;
SIGNAL \master_inst|Add0~5\ : std_logic;
SIGNAL \master_inst|Add0~6_combout\ : std_logic;
SIGNAL \master_inst|Add0~7\ : std_logic;
SIGNAL \master_inst|Add0~8_combout\ : std_logic;
SIGNAL \master_inst|Add0~9\ : std_logic;
SIGNAL \master_inst|Add0~10_combout\ : std_logic;
SIGNAL \master_inst|Add0~11\ : std_logic;
SIGNAL \master_inst|Add0~12_combout\ : std_logic;
SIGNAL \master_inst|Add0~13\ : std_logic;
SIGNAL \master_inst|Add0~14_combout\ : std_logic;
SIGNAL \master_inst|Equal0~8_combout\ : std_logic;
SIGNAL \master_inst|Equal0~9_combout\ : std_logic;
SIGNAL \master_inst|Add0~15\ : std_logic;
SIGNAL \master_inst|Add0~16_combout\ : std_logic;
SIGNAL \master_inst|Add0~17\ : std_logic;
SIGNAL \master_inst|Add0~18_combout\ : std_logic;
SIGNAL \master_inst|Add0~19\ : std_logic;
SIGNAL \master_inst|Add0~20_combout\ : std_logic;
SIGNAL \master_inst|Add0~21\ : std_logic;
SIGNAL \master_inst|Add0~22_combout\ : std_logic;
SIGNAL \master_inst|Add0~23\ : std_logic;
SIGNAL \master_inst|Add0~24_combout\ : std_logic;
SIGNAL \master_inst|Add0~25\ : std_logic;
SIGNAL \master_inst|Add0~26_combout\ : std_logic;
SIGNAL \master_inst|Add0~27\ : std_logic;
SIGNAL \master_inst|Add0~28_combout\ : std_logic;
SIGNAL \master_inst|Add0~29\ : std_logic;
SIGNAL \master_inst|Add0~30_combout\ : std_logic;
SIGNAL \master_inst|Equal0~6_combout\ : std_logic;
SIGNAL \master_inst|Equal0~5_combout\ : std_logic;
SIGNAL \master_inst|Equal0~7_combout\ : std_logic;
SIGNAL \master_inst|Add0~31\ : std_logic;
SIGNAL \master_inst|Add0~32_combout\ : std_logic;
SIGNAL \master_inst|Add0~33\ : std_logic;
SIGNAL \master_inst|Add0~34_combout\ : std_logic;
SIGNAL \master_inst|Add0~35\ : std_logic;
SIGNAL \master_inst|Add0~36_combout\ : std_logic;
SIGNAL \master_inst|Add0~37\ : std_logic;
SIGNAL \master_inst|Add0~38_combout\ : std_logic;
SIGNAL \master_inst|Add0~39\ : std_logic;
SIGNAL \master_inst|Add0~40_combout\ : std_logic;
SIGNAL \master_inst|Add0~41\ : std_logic;
SIGNAL \master_inst|Add0~42_combout\ : std_logic;
SIGNAL \master_inst|Add0~43\ : std_logic;
SIGNAL \master_inst|Add0~44_combout\ : std_logic;
SIGNAL \master_inst|Add0~45\ : std_logic;
SIGNAL \master_inst|Add0~46_combout\ : std_logic;
SIGNAL \master_inst|Add0~47\ : std_logic;
SIGNAL \master_inst|Add0~48_combout\ : std_logic;
SIGNAL \master_inst|Add0~49\ : std_logic;
SIGNAL \master_inst|Add0~50_combout\ : std_logic;
SIGNAL \master_inst|Add0~51\ : std_logic;
SIGNAL \master_inst|Add0~52_combout\ : std_logic;
SIGNAL \master_inst|Add0~53\ : std_logic;
SIGNAL \master_inst|Add0~54_combout\ : std_logic;
SIGNAL \master_inst|Equal0~1_combout\ : std_logic;
SIGNAL \master_inst|Add0~55\ : std_logic;
SIGNAL \master_inst|Add0~56_combout\ : std_logic;
SIGNAL \master_inst|Add0~57\ : std_logic;
SIGNAL \master_inst|Add0~58_combout\ : std_logic;
SIGNAL \master_inst|Add0~59\ : std_logic;
SIGNAL \master_inst|Add0~60_combout\ : std_logic;
SIGNAL \master_inst|Add0~61\ : std_logic;
SIGNAL \master_inst|Add0~62_combout\ : std_logic;
SIGNAL \master_inst|Equal0~0_combout\ : std_logic;
SIGNAL \master_inst|Equal0~2_combout\ : std_logic;
SIGNAL \master_inst|Equal0~3_combout\ : std_logic;
SIGNAL \master_inst|Equal0~4_combout\ : std_logic;
SIGNAL \master_inst|Equal0~10_combout\ : std_logic;
SIGNAL \master_inst|sclk_gen~0_combout\ : std_logic;
SIGNAL \master_inst|sclk_gen~feeder_combout\ : std_logic;
SIGNAL \master_inst|sclk_gen~q\ : std_logic;
SIGNAL \master_inst|sclk_gen~clkctrl_outclk\ : std_logic;
SIGNAL \master_inst|bit_counter[1]~31_combout\ : std_logic;
SIGNAL \master_inst|bit_counter[28]~35_combout\ : std_logic;
SIGNAL \master_inst|Equal1~9_combout\ : std_logic;
SIGNAL \master_inst|bit_counter[4]~39\ : std_logic;
SIGNAL \master_inst|bit_counter[5]~40_combout\ : std_logic;
SIGNAL \master_inst|bit_counter[5]~41\ : std_logic;
SIGNAL \master_inst|bit_counter[6]~42_combout\ : std_logic;
SIGNAL \master_inst|bit_counter[6]~43\ : std_logic;
SIGNAL \master_inst|bit_counter[7]~44_combout\ : std_logic;
SIGNAL \master_inst|bit_counter[7]~45\ : std_logic;
SIGNAL \master_inst|bit_counter[8]~46_combout\ : std_logic;
SIGNAL \master_inst|bit_counter[8]~47\ : std_logic;
SIGNAL \master_inst|bit_counter[9]~48_combout\ : std_logic;
SIGNAL \master_inst|bit_counter[9]~49\ : std_logic;
SIGNAL \master_inst|bit_counter[10]~50_combout\ : std_logic;
SIGNAL \master_inst|bit_counter[10]~51\ : std_logic;
SIGNAL \master_inst|bit_counter[11]~52_combout\ : std_logic;
SIGNAL \master_inst|bit_counter[11]~53\ : std_logic;
SIGNAL \master_inst|bit_counter[12]~54_combout\ : std_logic;
SIGNAL \master_inst|bit_counter[12]~55\ : std_logic;
SIGNAL \master_inst|bit_counter[13]~56_combout\ : std_logic;
SIGNAL \master_inst|bit_counter[13]~57\ : std_logic;
SIGNAL \master_inst|bit_counter[14]~58_combout\ : std_logic;
SIGNAL \master_inst|bit_counter[14]~59\ : std_logic;
SIGNAL \master_inst|bit_counter[15]~60_combout\ : std_logic;
SIGNAL \master_inst|bit_counter[15]~61\ : std_logic;
SIGNAL \master_inst|bit_counter[16]~62_combout\ : std_logic;
SIGNAL \master_inst|bit_counter[16]~63\ : std_logic;
SIGNAL \master_inst|bit_counter[17]~64_combout\ : std_logic;
SIGNAL \master_inst|bit_counter[17]~65\ : std_logic;
SIGNAL \master_inst|bit_counter[18]~66_combout\ : std_logic;
SIGNAL \master_inst|bit_counter[18]~67\ : std_logic;
SIGNAL \master_inst|bit_counter[19]~68_combout\ : std_logic;
SIGNAL \master_inst|bit_counter[19]~69\ : std_logic;
SIGNAL \master_inst|bit_counter[20]~70_combout\ : std_logic;
SIGNAL \master_inst|bit_counter[20]~71\ : std_logic;
SIGNAL \master_inst|bit_counter[21]~72_combout\ : std_logic;
SIGNAL \master_inst|bit_counter[21]~73\ : std_logic;
SIGNAL \master_inst|bit_counter[22]~74_combout\ : std_logic;
SIGNAL \master_inst|bit_counter[22]~75\ : std_logic;
SIGNAL \master_inst|bit_counter[23]~76_combout\ : std_logic;
SIGNAL \master_inst|bit_counter[23]~77\ : std_logic;
SIGNAL \master_inst|bit_counter[24]~78_combout\ : std_logic;
SIGNAL \master_inst|bit_counter[24]~79\ : std_logic;
SIGNAL \master_inst|bit_counter[25]~80_combout\ : std_logic;
SIGNAL \master_inst|bit_counter[25]~81\ : std_logic;
SIGNAL \master_inst|bit_counter[26]~82_combout\ : std_logic;
SIGNAL \master_inst|bit_counter[26]~83\ : std_logic;
SIGNAL \master_inst|bit_counter[27]~84_combout\ : std_logic;
SIGNAL \master_inst|bit_counter[27]~85\ : std_logic;
SIGNAL \master_inst|bit_counter[28]~86_combout\ : std_logic;
SIGNAL \master_inst|bit_counter[28]~87\ : std_logic;
SIGNAL \master_inst|bit_counter[29]~88_combout\ : std_logic;
SIGNAL \master_inst|bit_counter[29]~89\ : std_logic;
SIGNAL \master_inst|bit_counter[30]~90_combout\ : std_logic;
SIGNAL \master_inst|bit_counter[30]~91\ : std_logic;
SIGNAL \master_inst|bit_counter[31]~92_combout\ : std_logic;
SIGNAL \master_inst|Equal1~5_combout\ : std_logic;
SIGNAL \master_inst|Equal1~6_combout\ : std_logic;
SIGNAL \master_inst|Equal1~7_combout\ : std_logic;
SIGNAL \master_inst|Equal1~3_combout\ : std_logic;
SIGNAL \master_inst|Equal1~2_combout\ : std_logic;
SIGNAL \master_inst|Equal1~0_combout\ : std_logic;
SIGNAL \master_inst|Equal1~1_combout\ : std_logic;
SIGNAL \master_inst|Equal1~4_combout\ : std_logic;
SIGNAL \master_inst|Equal1~8_combout\ : std_logic;
SIGNAL \master_inst|LessThan2~0_combout\ : std_logic;
SIGNAL \master_inst|bit_counter[0]~94_combout\ : std_logic;
SIGNAL \master_inst|bit_counter[1]~32\ : std_logic;
SIGNAL \master_inst|bit_counter[2]~33_combout\ : std_logic;
SIGNAL \master_inst|bit_counter[2]~34\ : std_logic;
SIGNAL \master_inst|bit_counter[3]~36_combout\ : std_logic;
SIGNAL \master_inst|bit_counter[3]~37\ : std_logic;
SIGNAL \master_inst|bit_counter[4]~38_combout\ : std_logic;
SIGNAL \master_inst|cs_gen~2_combout\ : std_logic;
SIGNAL \master_inst|cs_gen~0_combout\ : std_logic;
SIGNAL \master_inst|cs_gen~1_combout\ : std_logic;
SIGNAL \master_inst|cs_gen~3_combout\ : std_logic;
SIGNAL \master_inst|cs_gen~q\ : std_logic;
SIGNAL \master_inst|Decoder0~0_combout\ : std_logic;
SIGNAL \master_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \master_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \master_inst|mosi~0_combout\ : std_logic;
SIGNAL \master_inst|mosi~q\ : std_logic;
SIGNAL \MISO~input_o\ : std_logic;
SIGNAL \master_inst|LessThan4~0_combout\ : std_logic;
SIGNAL \master_inst|LessThan4~1_combout\ : std_logic;
SIGNAL \master_inst|Decoder0~1_combout\ : std_logic;
SIGNAL \master_inst|reg_a~0_combout\ : std_logic;
SIGNAL \master_inst|LessThan3~0_combout\ : std_logic;
SIGNAL \master_inst|reg_a~1_combout\ : std_logic;
SIGNAL \master_inst|reg_a~2_combout\ : std_logic;
SIGNAL \master_inst|Decoder0~2_combout\ : std_logic;
SIGNAL \master_inst|Decoder0~3_combout\ : std_logic;
SIGNAL \master_inst|reg_a~3_combout\ : std_logic;
SIGNAL \master_inst|Decoder0~4_combout\ : std_logic;
SIGNAL \master_inst|reg_a~4_combout\ : std_logic;
SIGNAL \master_inst|Decoder0~5_combout\ : std_logic;
SIGNAL \master_inst|Decoder0~6_combout\ : std_logic;
SIGNAL \master_inst|reg_a~5_combout\ : std_logic;
SIGNAL \master_inst|Decoder0~7_combout\ : std_logic;
SIGNAL \master_inst|reg_a~6_combout\ : std_logic;
SIGNAL \master_inst|cs_gen~4_combout\ : std_logic;
SIGNAL \master_inst|Decoder0~8_combout\ : std_logic;
SIGNAL \master_inst|reg_a~7_combout\ : std_logic;
SIGNAL \master_inst|Decoder0~9_combout\ : std_logic;
SIGNAL \master_inst|reg_a~8_combout\ : std_logic;
SIGNAL \master_inst|Decoder0~10_combout\ : std_logic;
SIGNAL \master_inst|reg_a~9_combout\ : std_logic;
SIGNAL \master_inst|Decoder0~11_combout\ : std_logic;
SIGNAL \master_inst|reg_a~10_combout\ : std_logic;
SIGNAL \test_inst|Add1~23\ : std_logic;
SIGNAL \test_inst|Add1~24_combout\ : std_logic;
SIGNAL \test_inst|Add1~25\ : std_logic;
SIGNAL \test_inst|Add1~26_combout\ : std_logic;
SIGNAL \test_inst|Add1~27\ : std_logic;
SIGNAL \test_inst|Add1~28_combout\ : std_logic;
SIGNAL \test_inst|div_clk_new~3_combout\ : std_logic;
SIGNAL \test_inst|Add1~29\ : std_logic;
SIGNAL \test_inst|Add1~30_combout\ : std_logic;
SIGNAL \test_inst|div_clk_new~5_combout\ : std_logic;
SIGNAL \test_inst|Add1~31\ : std_logic;
SIGNAL \test_inst|Add1~32_combout\ : std_logic;
SIGNAL \test_inst|Add1~33\ : std_logic;
SIGNAL \test_inst|Add1~34_combout\ : std_logic;
SIGNAL \test_inst|Add1~35\ : std_logic;
SIGNAL \test_inst|Add1~36_combout\ : std_logic;
SIGNAL \test_inst|Add1~37\ : std_logic;
SIGNAL \test_inst|Add1~38_combout\ : std_logic;
SIGNAL \test_inst|Add1~39\ : std_logic;
SIGNAL \test_inst|Add1~40_combout\ : std_logic;
SIGNAL \test_inst|Add1~41\ : std_logic;
SIGNAL \test_inst|Add1~42_combout\ : std_logic;
SIGNAL \test_inst|Add1~43\ : std_logic;
SIGNAL \test_inst|Add1~44_combout\ : std_logic;
SIGNAL \test_inst|Add1~45\ : std_logic;
SIGNAL \test_inst|Add1~46_combout\ : std_logic;
SIGNAL \test_inst|Add1~47\ : std_logic;
SIGNAL \test_inst|Add1~48_combout\ : std_logic;
SIGNAL \test_inst|Add1~49\ : std_logic;
SIGNAL \test_inst|Add1~50_combout\ : std_logic;
SIGNAL \test_inst|Add1~51\ : std_logic;
SIGNAL \test_inst|Add1~52_combout\ : std_logic;
SIGNAL \test_inst|Add1~53\ : std_logic;
SIGNAL \test_inst|Add1~54_combout\ : std_logic;
SIGNAL \test_inst|Add1~55\ : std_logic;
SIGNAL \test_inst|Add1~56_combout\ : std_logic;
SIGNAL \test_inst|Add1~57\ : std_logic;
SIGNAL \test_inst|Add1~58_combout\ : std_logic;
SIGNAL \test_inst|Add1~59\ : std_logic;
SIGNAL \test_inst|Add1~60_combout\ : std_logic;
SIGNAL \test_inst|Add1~61\ : std_logic;
SIGNAL \test_inst|Add1~62_combout\ : std_logic;
SIGNAL \test_inst|Equal2~5_combout\ : std_logic;
SIGNAL \test_inst|Equal3~3_combout\ : std_logic;
SIGNAL \test_inst|Add1~0_combout\ : std_logic;
SIGNAL \test_inst|Add1~1\ : std_logic;
SIGNAL \test_inst|Add1~2_combout\ : std_logic;
SIGNAL \test_inst|Add1~3\ : std_logic;
SIGNAL \test_inst|Add1~4_combout\ : std_logic;
SIGNAL \test_inst|Add1~5\ : std_logic;
SIGNAL \test_inst|Add1~6_combout\ : std_logic;
SIGNAL \test_inst|Add1~7\ : std_logic;
SIGNAL \test_inst|Add1~8_combout\ : std_logic;
SIGNAL \test_inst|div_clk_new~2_combout\ : std_logic;
SIGNAL \test_inst|Add1~9\ : std_logic;
SIGNAL \test_inst|Add1~10_combout\ : std_logic;
SIGNAL \test_inst|Add1~11\ : std_logic;
SIGNAL \test_inst|Add1~12_combout\ : std_logic;
SIGNAL \test_inst|div_clk_new~1_combout\ : std_logic;
SIGNAL \test_inst|Add1~13\ : std_logic;
SIGNAL \test_inst|Add1~14_combout\ : std_logic;
SIGNAL \test_inst|Equal3~0_combout\ : std_logic;
SIGNAL \test_inst|Add1~15\ : std_logic;
SIGNAL \test_inst|Add1~16_combout\ : std_logic;
SIGNAL \test_inst|div_clk_new~0_combout\ : std_logic;
SIGNAL \test_inst|Add1~17\ : std_logic;
SIGNAL \test_inst|Add1~18_combout\ : std_logic;
SIGNAL \test_inst|Equal3~1_combout\ : std_logic;
SIGNAL \test_inst|Equal3~2_combout\ : std_logic;
SIGNAL \test_inst|Equal3~4_combout\ : std_logic;
SIGNAL \test_inst|div_clk_new~4_combout\ : std_logic;
SIGNAL \test_inst|Add1~19\ : std_logic;
SIGNAL \test_inst|Add1~20_combout\ : std_logic;
SIGNAL \test_inst|Add1~21\ : std_logic;
SIGNAL \test_inst|Add1~22_combout\ : std_logic;
SIGNAL \test_inst|Equal2~1_combout\ : std_logic;
SIGNAL \test_inst|Equal2~0_combout\ : std_logic;
SIGNAL \test_inst|Equal2~2_combout\ : std_logic;
SIGNAL \test_inst|Equal2~3_combout\ : std_logic;
SIGNAL \test_inst|Equal2~4_combout\ : std_logic;
SIGNAL \test_inst|Equal2~6_combout\ : std_logic;
SIGNAL \test_inst|clk_slow~0_combout\ : std_logic;
SIGNAL \test_inst|Equal2~7_combout\ : std_logic;
SIGNAL \test_inst|clk_slow~1_combout\ : std_logic;
SIGNAL \test_inst|clk_slow~2_combout\ : std_logic;
SIGNAL \test_inst|clk_slow~feeder_combout\ : std_logic;
SIGNAL \test_inst|clk_slow~q\ : std_logic;
SIGNAL \test_inst|clk_slow~clkctrl_outclk\ : std_logic;
SIGNAL \reset_lcd~input_o\ : std_logic;
SIGNAL \test_inst|lcd_instance|Selector23~0_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|Add0~0_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|Add0~1_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|LessThan0~0_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|state~26_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|state.S1~q\ : std_logic;
SIGNAL \test_inst|lcd_instance|state~31_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|state.S2~q\ : std_logic;
SIGNAL \test_inst|lcd_instance|state~29_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|state.S0~0_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|state.S0~q\ : std_logic;
SIGNAL \test_inst|lcd_instance|state~35_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|state.S8~q\ : std_logic;
SIGNAL \test_inst|lcd_instance|state~30_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|state.S9~q\ : std_logic;
SIGNAL \test_inst|lcd_instance|state~32_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|state.S3~q\ : std_logic;
SIGNAL \test_inst|lcd_instance|state~27_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|state.S4~q\ : std_logic;
SIGNAL \test_inst|lcd_instance|state~33_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|state.S5~q\ : std_logic;
SIGNAL \test_inst|lcd_instance|state~34_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|state.S6~q\ : std_logic;
SIGNAL \test_inst|lcd_instance|state~28_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|state.S7~feeder_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|state.S7~q\ : std_logic;
SIGNAL \test_inst|lcd_instance|Selector10~0_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|lcd[1]~0_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|Selector10~1_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|lcd_en~q\ : std_logic;
SIGNAL \test_inst|lcd_instance|Selector8~2_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|Selector8~3_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|Selector8~4_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|lcd_rs~q\ : std_logic;
SIGNAL \test_inst|covid_det_instance|bit_index[1]~0_combout\ : std_logic;
SIGNAL \test_inst|covid_det_instance|bit_index[0]~2_combout\ : std_logic;
SIGNAL \test_inst|covid_det_instance|bit_index[3]~1_combout\ : std_logic;
SIGNAL \test_inst|covid_det_instance|bit_index[2]~3_combout\ : std_logic;
SIGNAL \test_inst|covid_det_instance|Mux0~3_combout\ : std_logic;
SIGNAL \test_inst|covid_det_instance|Mux0~4_combout\ : std_logic;
SIGNAL \test_inst|covid_det_instance|Mux0~0_combout\ : std_logic;
SIGNAL \test_inst|covid_det_instance|Mux0~1_combout\ : std_logic;
SIGNAL \test_inst|covid_det_instance|Mux0~2_combout\ : std_logic;
SIGNAL \test_inst|covid_det_instance|Mux0~5_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|lcd[7]~1_combout\ : std_logic;
SIGNAL \test_inst|Add0~1\ : std_logic;
SIGNAL \test_inst|Add0~3\ : std_logic;
SIGNAL \test_inst|Add0~4_combout\ : std_logic;
SIGNAL \test_inst|Add0~5\ : std_logic;
SIGNAL \test_inst|Add0~6_combout\ : std_logic;
SIGNAL \test_inst|Add0~7\ : std_logic;
SIGNAL \test_inst|Add0~8_combout\ : std_logic;
SIGNAL \test_inst|Add0~9\ : std_logic;
SIGNAL \test_inst|Add0~10_combout\ : std_logic;
SIGNAL \test_inst|Add0~11\ : std_logic;
SIGNAL \test_inst|Add0~12_combout\ : std_logic;
SIGNAL \test_inst|div_clk~2_combout\ : std_logic;
SIGNAL \test_inst|Add0~13\ : std_logic;
SIGNAL \test_inst|Add0~14_combout\ : std_logic;
SIGNAL \test_inst|Add0~15\ : std_logic;
SIGNAL \test_inst|Add0~16_combout\ : std_logic;
SIGNAL \test_inst|div_clk~1_combout\ : std_logic;
SIGNAL \test_inst|Add0~17\ : std_logic;
SIGNAL \test_inst|Add0~18_combout\ : std_logic;
SIGNAL \test_inst|Add0~19\ : std_logic;
SIGNAL \test_inst|Add0~20_combout\ : std_logic;
SIGNAL \test_inst|div_clk~0_combout\ : std_logic;
SIGNAL \test_inst|Add0~21\ : std_logic;
SIGNAL \test_inst|Add0~22_combout\ : std_logic;
SIGNAL \test_inst|div_clk~3_combout\ : std_logic;
SIGNAL \test_inst|Add0~23\ : std_logic;
SIGNAL \test_inst|Add0~24_combout\ : std_logic;
SIGNAL \test_inst|Add0~25\ : std_logic;
SIGNAL \test_inst|Add0~26_combout\ : std_logic;
SIGNAL \test_inst|Add0~27\ : std_logic;
SIGNAL \test_inst|Add0~28_combout\ : std_logic;
SIGNAL \test_inst|Add0~29\ : std_logic;
SIGNAL \test_inst|Add0~30_combout\ : std_logic;
SIGNAL \test_inst|Add0~31\ : std_logic;
SIGNAL \test_inst|Add0~33\ : std_logic;
SIGNAL \test_inst|Add0~34_combout\ : std_logic;
SIGNAL \test_inst|div_clk~5_combout\ : std_logic;
SIGNAL \test_inst|Add0~35\ : std_logic;
SIGNAL \test_inst|Add0~36_combout\ : std_logic;
SIGNAL \test_inst|Add0~37\ : std_logic;
SIGNAL \test_inst|Add0~38_combout\ : std_logic;
SIGNAL \test_inst|Add0~39\ : std_logic;
SIGNAL \test_inst|Add0~40_combout\ : std_logic;
SIGNAL \test_inst|Add0~41\ : std_logic;
SIGNAL \test_inst|Add0~42_combout\ : std_logic;
SIGNAL \test_inst|Add0~43\ : std_logic;
SIGNAL \test_inst|Add0~44_combout\ : std_logic;
SIGNAL \test_inst|Add0~45\ : std_logic;
SIGNAL \test_inst|Add0~46_combout\ : std_logic;
SIGNAL \test_inst|Add0~47\ : std_logic;
SIGNAL \test_inst|Add0~48_combout\ : std_logic;
SIGNAL \test_inst|Add0~49\ : std_logic;
SIGNAL \test_inst|Add0~50_combout\ : std_logic;
SIGNAL \test_inst|Add0~51\ : std_logic;
SIGNAL \test_inst|Add0~52_combout\ : std_logic;
SIGNAL \test_inst|Add0~53\ : std_logic;
SIGNAL \test_inst|Add0~54_combout\ : std_logic;
SIGNAL \test_inst|Equal0~5_combout\ : std_logic;
SIGNAL \test_inst|Equal1~0_combout\ : std_logic;
SIGNAL \test_inst|Equal1~1_combout\ : std_logic;
SIGNAL \test_inst|Equal1~2_combout\ : std_logic;
SIGNAL \test_inst|Add0~55\ : std_logic;
SIGNAL \test_inst|Add0~56_combout\ : std_logic;
SIGNAL \test_inst|Add0~57\ : std_logic;
SIGNAL \test_inst|Add0~58_combout\ : std_logic;
SIGNAL \test_inst|Add0~59\ : std_logic;
SIGNAL \test_inst|Add0~60_combout\ : std_logic;
SIGNAL \test_inst|Add0~61\ : std_logic;
SIGNAL \test_inst|Add0~62_combout\ : std_logic;
SIGNAL \test_inst|Equal0~6_combout\ : std_logic;
SIGNAL \test_inst|Equal1~3_combout\ : std_logic;
SIGNAL \test_inst|div_clk~4_combout\ : std_logic;
SIGNAL \test_inst|Add0~32_combout\ : std_logic;
SIGNAL \test_inst|Equal0~2_combout\ : std_logic;
SIGNAL \test_inst|Add0~2_combout\ : std_logic;
SIGNAL \test_inst|Add0~0_combout\ : std_logic;
SIGNAL \test_inst|Equal0~0_combout\ : std_logic;
SIGNAL \test_inst|Equal0~3_combout\ : std_logic;
SIGNAL \test_inst|Equal0~1_combout\ : std_logic;
SIGNAL \test_inst|Equal0~4_combout\ : std_logic;
SIGNAL \test_inst|Equal0~7_combout\ : std_logic;
SIGNAL \test_inst|lcd_clk~0_combout\ : std_logic;
SIGNAL \test_inst|lcd_clk~1_combout\ : std_logic;
SIGNAL \test_inst|lcd_clk~2_combout\ : std_logic;
SIGNAL \test_inst|lcd_clk~feeder_combout\ : std_logic;
SIGNAL \test_inst|lcd_clk~q\ : std_logic;
SIGNAL \test_inst|lcd_clk~clkctrl_outclk\ : std_logic;
SIGNAL \test_inst|i[0]~32_combout\ : std_logic;
SIGNAL \test_inst|i[0]~33\ : std_logic;
SIGNAL \test_inst|i[1]~34_combout\ : std_logic;
SIGNAL \test_inst|write_data[0]~12_combout\ : std_logic;
SIGNAL \test_inst|i[22]~77\ : std_logic;
SIGNAL \test_inst|i[23]~78_combout\ : std_logic;
SIGNAL \test_inst|i[23]~79\ : std_logic;
SIGNAL \test_inst|i[24]~80_combout\ : std_logic;
SIGNAL \test_inst|i[24]~81\ : std_logic;
SIGNAL \test_inst|i[25]~82_combout\ : std_logic;
SIGNAL \test_inst|i[25]~83\ : std_logic;
SIGNAL \test_inst|i[26]~84_combout\ : std_logic;
SIGNAL \test_inst|i[26]~85\ : std_logic;
SIGNAL \test_inst|i[27]~86_combout\ : std_logic;
SIGNAL \test_inst|i[27]~87\ : std_logic;
SIGNAL \test_inst|i[28]~88_combout\ : std_logic;
SIGNAL \test_inst|i[28]~89\ : std_logic;
SIGNAL \test_inst|i[29]~90_combout\ : std_logic;
SIGNAL \test_inst|i[29]~91\ : std_logic;
SIGNAL \test_inst|i[30]~92_combout\ : std_logic;
SIGNAL \test_inst|i[30]~93\ : std_logic;
SIGNAL \test_inst|i[31]~94_combout\ : std_logic;
SIGNAL \test_inst|Equal4~7_combout\ : std_logic;
SIGNAL \test_inst|Equal4~6_combout\ : std_logic;
SIGNAL \test_inst|Equal4~8_combout\ : std_logic;
SIGNAL \test_inst|Equal12~0_combout\ : std_logic;
SIGNAL \test_inst|Equal4~1_combout\ : std_logic;
SIGNAL \test_inst|Equal4~3_combout\ : std_logic;
SIGNAL \test_inst|Equal4~2_combout\ : std_logic;
SIGNAL \test_inst|Equal4~0_combout\ : std_logic;
SIGNAL \test_inst|Equal4~4_combout\ : std_logic;
SIGNAL \test_inst|Equal12~1_combout\ : std_logic;
SIGNAL \test_inst|Equal13~0_combout\ : std_logic;
SIGNAL \test_inst|Equal10~0_combout\ : std_logic;
SIGNAL \test_inst|Equal8~0_combout\ : std_logic;
SIGNAL \test_inst|write_column~0_combout\ : std_logic;
SIGNAL \test_inst|write_data[0]~29_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|Selector11~0_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|ack~q\ : std_logic;
SIGNAL \test_inst|write_data[0]~27_combout\ : std_logic;
SIGNAL \test_inst|i[1]~35\ : std_logic;
SIGNAL \test_inst|i[2]~36_combout\ : std_logic;
SIGNAL \test_inst|i[2]~37\ : std_logic;
SIGNAL \test_inst|i[3]~38_combout\ : std_logic;
SIGNAL \test_inst|i[3]~39\ : std_logic;
SIGNAL \test_inst|i[4]~40_combout\ : std_logic;
SIGNAL \test_inst|i[4]~41\ : std_logic;
SIGNAL \test_inst|i[5]~42_combout\ : std_logic;
SIGNAL \test_inst|i[5]~43\ : std_logic;
SIGNAL \test_inst|i[6]~44_combout\ : std_logic;
SIGNAL \test_inst|i[6]~45\ : std_logic;
SIGNAL \test_inst|i[7]~46_combout\ : std_logic;
SIGNAL \test_inst|i[7]~47\ : std_logic;
SIGNAL \test_inst|i[8]~48_combout\ : std_logic;
SIGNAL \test_inst|i[8]~49\ : std_logic;
SIGNAL \test_inst|i[9]~50_combout\ : std_logic;
SIGNAL \test_inst|i[9]~51\ : std_logic;
SIGNAL \test_inst|i[10]~52_combout\ : std_logic;
SIGNAL \test_inst|i[10]~53\ : std_logic;
SIGNAL \test_inst|i[11]~54_combout\ : std_logic;
SIGNAL \test_inst|i[11]~55\ : std_logic;
SIGNAL \test_inst|i[12]~56_combout\ : std_logic;
SIGNAL \test_inst|i[12]~57\ : std_logic;
SIGNAL \test_inst|i[13]~58_combout\ : std_logic;
SIGNAL \test_inst|i[13]~59\ : std_logic;
SIGNAL \test_inst|i[14]~60_combout\ : std_logic;
SIGNAL \test_inst|i[14]~61\ : std_logic;
SIGNAL \test_inst|i[15]~62_combout\ : std_logic;
SIGNAL \test_inst|i[15]~63\ : std_logic;
SIGNAL \test_inst|i[16]~64_combout\ : std_logic;
SIGNAL \test_inst|i[16]~65\ : std_logic;
SIGNAL \test_inst|i[17]~66_combout\ : std_logic;
SIGNAL \test_inst|i[17]~67\ : std_logic;
SIGNAL \test_inst|i[18]~68_combout\ : std_logic;
SIGNAL \test_inst|i[18]~69\ : std_logic;
SIGNAL \test_inst|i[19]~70_combout\ : std_logic;
SIGNAL \test_inst|i[19]~71\ : std_logic;
SIGNAL \test_inst|i[20]~72_combout\ : std_logic;
SIGNAL \test_inst|i[20]~73\ : std_logic;
SIGNAL \test_inst|i[21]~74_combout\ : std_logic;
SIGNAL \test_inst|i[21]~75\ : std_logic;
SIGNAL \test_inst|i[22]~76_combout\ : std_logic;
SIGNAL \test_inst|Equal4~5_combout\ : std_logic;
SIGNAL \test_inst|Equal4~9_combout\ : std_logic;
SIGNAL \test_inst|write_data[0]~30_combout\ : std_logic;
SIGNAL \test_inst|write_data[0]~15_combout\ : std_logic;
SIGNAL \test_inst|write_data[0]~14_combout\ : std_logic;
SIGNAL \test_inst|covid_det_instance|Equal0~0_combout\ : std_logic;
SIGNAL \test_inst|covid_det_instance|out_ascii_new2~0_combout\ : std_logic;
SIGNAL \test_inst|write_data~16_combout\ : std_logic;
SIGNAL \test_inst|covid_det_instance|out_ascii_new2~6_combout\ : std_logic;
SIGNAL \test_inst|covid_det_instance|out_ascii_new2~7_combout\ : std_logic;
SIGNAL \test_inst|covid_det_instance|Equal0~5_combout\ : std_logic;
SIGNAL \test_inst|covid_det_instance|out_ascii_new2~5_combout\ : std_logic;
SIGNAL \test_inst|write_data[0]~20_combout\ : std_logic;
SIGNAL \test_inst|write_data[0]~19_combout\ : std_logic;
SIGNAL \test_inst|write_data~21_combout\ : std_logic;
SIGNAL \test_inst|covid_det_instance|Equal0~4_combout\ : std_logic;
SIGNAL \test_inst|covid_det_instance|out_ascii_new2~4_combout\ : std_logic;
SIGNAL \test_inst|covid_det_instance|Equal0~6_combout\ : std_logic;
SIGNAL \test_inst|covid_det_instance|out_ascii_new2~8_combout\ : std_logic;
SIGNAL \test_inst|write_data~22_combout\ : std_logic;
SIGNAL \test_inst|covid_det_instance|Equal0~3_combout\ : std_logic;
SIGNAL \test_inst|covid_det_instance|out_ascii_new2~3_combout\ : std_logic;
SIGNAL \test_inst|covid_det_instance|Equal0~8_combout\ : std_logic;
SIGNAL \test_inst|covid_det_instance|out_ascii_new2~10_combout\ : std_logic;
SIGNAL \test_inst|write_data[0]~23_combout\ : std_logic;
SIGNAL \test_inst|covid_det_instance|Equal0~7_combout\ : std_logic;
SIGNAL \test_inst|covid_det_instance|out_ascii_new2~9_combout\ : std_logic;
SIGNAL \test_inst|write_data[0]~24_combout\ : std_logic;
SIGNAL \test_inst|write_data~25_combout\ : std_logic;
SIGNAL \test_inst|write_data~31_combout\ : std_logic;
SIGNAL \test_inst|covid_det_instance|Equal0~2_combout\ : std_logic;
SIGNAL \test_inst|covid_det_instance|out_ascii_new2~2_combout\ : std_logic;
SIGNAL \test_inst|write_data~32_combout\ : std_logic;
SIGNAL \test_inst|covid_det_instance|Equal0~1_combout\ : std_logic;
SIGNAL \test_inst|covid_det_instance|out_ascii_new2~1_combout\ : std_logic;
SIGNAL \test_inst|write_data~17_combout\ : std_logic;
SIGNAL \test_inst|write_data[0]~10_combout\ : std_logic;
SIGNAL \test_inst|write_data[0]~11_combout\ : std_logic;
SIGNAL \test_inst|write_data~18_combout\ : std_logic;
SIGNAL \test_inst|write_data~26_combout\ : std_logic;
SIGNAL \test_inst|write_data[0]~13_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|data_dis[0]~feeder_combout\ : std_logic;
SIGNAL \test_inst|write_column~2_combout\ : std_logic;
SIGNAL \test_inst|write_column~3_combout\ : std_logic;
SIGNAL \test_inst|Equal6~0_combout\ : std_logic;
SIGNAL \test_inst|Equal7~0_combout\ : std_logic;
SIGNAL \test_inst|write_column~1_combout\ : std_logic;
SIGNAL \test_inst|write_column~4_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|Selector7~0_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|Selector5~0_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|Selector7~1_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|Selector7~2_combout\ : std_logic;
SIGNAL \test_inst|write_column~5_combout\ : std_logic;
SIGNAL \test_inst|write_column~6_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|cmd_position[1]~feeder_combout\ : std_logic;
SIGNAL \test_inst|write_data[0]~28_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|data_dis[1]~feeder_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|Selector6~1_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|Selector6~0_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|Selector6~2_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|lcd[1]~2_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|Selector5~2_combout\ : std_logic;
SIGNAL \test_inst|write_column~7_combout\ : std_logic;
SIGNAL \test_inst|write_column~8_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|Selector5~1_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|Selector5~3_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|Selector4~1_combout\ : std_logic;
SIGNAL \test_inst|write_column~9_combout\ : std_logic;
SIGNAL \test_inst|write_column~10_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|Selector4~0_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|Selector4~2_combout\ : std_logic;
SIGNAL \test_inst|write_data[4]~feeder_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|data_dis[4]~feeder_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|Selector3~0_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|Selector3~1_combout\ : std_logic;
SIGNAL \test_inst|write_data[5]~feeder_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|data_dis[5]~feeder_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|Selector2~0_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|Selector0~0_combout\ : std_logic;
SIGNAL \test_inst|lcd_instance|lcd\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \test_inst|i\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \master_inst|bit_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \test_inst|covid_det_instance|bit_index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \test_inst|lcd_instance|count_cmd\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \master_inst|reg_a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \master_inst|clk_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \test_inst|lcd_instance|cmd_position\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \test_inst|lcd_instance|data_dis\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \test_inst|div_clk_new\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \test_inst|write_column\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \test_inst|write_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \test_inst|div_clk\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \master_inst|ALT_INV_sclk_gen~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset_lcd~input_o\ : std_logic;
SIGNAL \ALT_INV_reset_master~input_o\ : std_logic;
SIGNAL \master_inst|ALT_INV_cs_gen~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset_master <= reset_master;
ww_reset_lcd <= reset_lcd;
ww_MISO <= MISO;
MOSI <= ww_MOSI;
CS <= ww_CS;
SCLK <= ww_SCLK;
LEDS <= ww_LEDS;
LCD_RW <= ww_LCD_RW;
LCD_EN <= ww_LCD_EN;
LCD_RS <= ww_LCD_RS;
DETECT <= ww_DETECT;
LCD1 <= ww_LCD1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\test_inst|lcd_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \test_inst|lcd_clk~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\master_inst|sclk_gen~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \master_inst|sclk_gen~q\);

\test_inst|clk_slow~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \test_inst|clk_slow~q\);
\master_inst|ALT_INV_sclk_gen~clkctrl_outclk\ <= NOT \master_inst|sclk_gen~clkctrl_outclk\;
\ALT_INV_reset_lcd~input_o\ <= NOT \reset_lcd~input_o\;
\ALT_INV_reset_master~input_o\ <= NOT \reset_master~input_o\;
\master_inst|ALT_INV_cs_gen~q\ <= NOT \master_inst|cs_gen~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y30_N12
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
\MOSI~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_inst|mosi~q\,
	devoe => ww_devoe,
	o => \MOSI~output_o\);

-- Location: IOOBUF_X60_Y2_N16
\CS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_inst|ALT_INV_cs_gen~q\,
	devoe => ww_devoe,
	o => \CS~output_o\);

-- Location: IOOBUF_X60_Y8_N16
\SCLK~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_inst|sclk_gen~q\,
	devoe => ww_devoe,
	o => \SCLK~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\LEDS[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_inst|reg_a\(0),
	devoe => ww_devoe,
	o => \LEDS[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\LEDS[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_inst|reg_a\(1),
	devoe => ww_devoe,
	o => \LEDS[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\LEDS[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_inst|reg_a\(2),
	devoe => ww_devoe,
	o => \LEDS[2]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\LEDS[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_inst|reg_a\(3),
	devoe => ww_devoe,
	o => \LEDS[3]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\LEDS[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_inst|reg_a\(4),
	devoe => ww_devoe,
	o => \LEDS[4]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\LEDS[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_inst|reg_a\(5),
	devoe => ww_devoe,
	o => \LEDS[5]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\LEDS[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_inst|reg_a\(6),
	devoe => ww_devoe,
	o => \LEDS[6]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\LEDS[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_inst|reg_a\(7),
	devoe => ww_devoe,
	o => \LEDS[7]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\LEDS[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_inst|reg_a\(8),
	devoe => ww_devoe,
	o => \LEDS[8]~output_o\);

-- Location: IOOBUF_X40_Y0_N30
\LEDS[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_inst|reg_a\(9),
	devoe => ww_devoe,
	o => \LEDS[9]~output_o\);

-- Location: IOOBUF_X14_Y21_N23
\LCD_RW~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LCD_RW~output_o\);

-- Location: IOOBUF_X14_Y21_N30
\LCD_EN~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test_inst|lcd_instance|lcd_en~q\,
	devoe => ww_devoe,
	o => \LCD_EN~output_o\);

-- Location: IOOBUF_X16_Y21_N16
\LCD_RS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test_inst|lcd_instance|lcd_rs~q\,
	devoe => ww_devoe,
	o => \LCD_RS~output_o\);

-- Location: IOOBUF_X36_Y0_N30
\DETECT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test_inst|covid_det_instance|Mux0~5_combout\,
	devoe => ww_devoe,
	o => \DETECT~output_o\);

-- Location: IOOBUF_X12_Y21_N2
\LCD1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test_inst|lcd_instance|lcd\(0),
	devoe => ww_devoe,
	o => \LCD1[0]~output_o\);

-- Location: IOOBUF_X12_Y21_N9
\LCD1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test_inst|lcd_instance|lcd\(1),
	devoe => ww_devoe,
	o => \LCD1[1]~output_o\);

-- Location: IOOBUF_X12_Y21_N30
\LCD1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test_inst|lcd_instance|lcd\(2),
	devoe => ww_devoe,
	o => \LCD1[2]~output_o\);

-- Location: IOOBUF_X10_Y21_N2
\LCD1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test_inst|lcd_instance|lcd\(3),
	devoe => ww_devoe,
	o => \LCD1[3]~output_o\);

-- Location: IOOBUF_X10_Y21_N16
\LCD1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test_inst|lcd_instance|lcd\(4),
	devoe => ww_devoe,
	o => \LCD1[4]~output_o\);

-- Location: IOOBUF_X19_Y21_N30
\LCD1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test_inst|lcd_instance|lcd\(5),
	devoe => ww_devoe,
	o => \LCD1[5]~output_o\);

-- Location: IOOBUF_X8_Y21_N16
\LCD1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LCD1[6]~output_o\);

-- Location: IOOBUF_X8_Y21_N23
\LCD1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \test_inst|lcd_instance|lcd\(7),
	devoe => ww_devoe,
	o => \LCD1[7]~output_o\);

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

-- Location: LCCOMB_X46_Y2_N0
\master_inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Add0~0_combout\ = \master_inst|clk_counter\(0) $ (VCC)
-- \master_inst|Add0~1\ = CARRY(\master_inst|clk_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|clk_counter\(0),
	datad => VCC,
	combout => \master_inst|Add0~0_combout\,
	cout => \master_inst|Add0~1\);

-- Location: IOIBUF_X40_Y0_N1
\reset_master~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_master,
	o => \reset_master~input_o\);

-- Location: FF_X46_Y2_N1
\master_inst|clk_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master_inst|Add0~0_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|clk_counter\(0));

-- Location: LCCOMB_X46_Y2_N2
\master_inst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Add0~2_combout\ = (\master_inst|clk_counter\(1) & (!\master_inst|Add0~1\)) # (!\master_inst|clk_counter\(1) & ((\master_inst|Add0~1\) # (GND)))
-- \master_inst|Add0~3\ = CARRY((!\master_inst|Add0~1\) # (!\master_inst|clk_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|clk_counter\(1),
	datad => VCC,
	cin => \master_inst|Add0~1\,
	combout => \master_inst|Add0~2_combout\,
	cout => \master_inst|Add0~3\);

-- Location: LCCOMB_X47_Y2_N4
\master_inst|clk_counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|clk_counter~1_combout\ = (\master_inst|Add0~2_combout\ & !\master_inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|Add0~2_combout\,
	datad => \master_inst|Equal0~10_combout\,
	combout => \master_inst|clk_counter~1_combout\);

-- Location: FF_X47_Y2_N5
\master_inst|clk_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master_inst|clk_counter~1_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|clk_counter\(1));

-- Location: LCCOMB_X46_Y2_N4
\master_inst|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Add0~4_combout\ = (\master_inst|clk_counter\(2) & (\master_inst|Add0~3\ $ (GND))) # (!\master_inst|clk_counter\(2) & (!\master_inst|Add0~3\ & VCC))
-- \master_inst|Add0~5\ = CARRY((\master_inst|clk_counter\(2) & !\master_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|clk_counter\(2),
	datad => VCC,
	cin => \master_inst|Add0~3\,
	combout => \master_inst|Add0~4_combout\,
	cout => \master_inst|Add0~5\);

-- Location: LCCOMB_X47_Y2_N2
\master_inst|clk_counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|clk_counter~0_combout\ = (\master_inst|Add0~4_combout\ & !\master_inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \master_inst|Add0~4_combout\,
	datad => \master_inst|Equal0~10_combout\,
	combout => \master_inst|clk_counter~0_combout\);

-- Location: FF_X47_Y2_N3
\master_inst|clk_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master_inst|clk_counter~0_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|clk_counter\(2));

-- Location: LCCOMB_X46_Y2_N6
\master_inst|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Add0~6_combout\ = (\master_inst|clk_counter\(3) & (!\master_inst|Add0~5\)) # (!\master_inst|clk_counter\(3) & ((\master_inst|Add0~5\) # (GND)))
-- \master_inst|Add0~7\ = CARRY((!\master_inst|Add0~5\) # (!\master_inst|clk_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|clk_counter\(3),
	datad => VCC,
	cin => \master_inst|Add0~5\,
	combout => \master_inst|Add0~6_combout\,
	cout => \master_inst|Add0~7\);

-- Location: FF_X46_Y2_N7
\master_inst|clk_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master_inst|Add0~6_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|clk_counter\(3));

-- Location: LCCOMB_X46_Y2_N8
\master_inst|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Add0~8_combout\ = (\master_inst|clk_counter\(4) & (\master_inst|Add0~7\ $ (GND))) # (!\master_inst|clk_counter\(4) & (!\master_inst|Add0~7\ & VCC))
-- \master_inst|Add0~9\ = CARRY((\master_inst|clk_counter\(4) & !\master_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|clk_counter\(4),
	datad => VCC,
	cin => \master_inst|Add0~7\,
	combout => \master_inst|Add0~8_combout\,
	cout => \master_inst|Add0~9\);

-- Location: FF_X46_Y2_N9
\master_inst|clk_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master_inst|Add0~8_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|clk_counter\(4));

-- Location: LCCOMB_X46_Y2_N10
\master_inst|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Add0~10_combout\ = (\master_inst|clk_counter\(5) & (!\master_inst|Add0~9\)) # (!\master_inst|clk_counter\(5) & ((\master_inst|Add0~9\) # (GND)))
-- \master_inst|Add0~11\ = CARRY((!\master_inst|Add0~9\) # (!\master_inst|clk_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|clk_counter\(5),
	datad => VCC,
	cin => \master_inst|Add0~9\,
	combout => \master_inst|Add0~10_combout\,
	cout => \master_inst|Add0~11\);

-- Location: FF_X46_Y2_N11
\master_inst|clk_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master_inst|Add0~10_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|clk_counter\(5));

-- Location: LCCOMB_X46_Y2_N12
\master_inst|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Add0~12_combout\ = (\master_inst|clk_counter\(6) & (\master_inst|Add0~11\ $ (GND))) # (!\master_inst|clk_counter\(6) & (!\master_inst|Add0~11\ & VCC))
-- \master_inst|Add0~13\ = CARRY((\master_inst|clk_counter\(6) & !\master_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|clk_counter\(6),
	datad => VCC,
	cin => \master_inst|Add0~11\,
	combout => \master_inst|Add0~12_combout\,
	cout => \master_inst|Add0~13\);

-- Location: FF_X46_Y2_N13
\master_inst|clk_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master_inst|Add0~12_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|clk_counter\(6));

-- Location: LCCOMB_X46_Y2_N14
\master_inst|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Add0~14_combout\ = (\master_inst|clk_counter\(7) & (!\master_inst|Add0~13\)) # (!\master_inst|clk_counter\(7) & ((\master_inst|Add0~13\) # (GND)))
-- \master_inst|Add0~15\ = CARRY((!\master_inst|Add0~13\) # (!\master_inst|clk_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|clk_counter\(7),
	datad => VCC,
	cin => \master_inst|Add0~13\,
	combout => \master_inst|Add0~14_combout\,
	cout => \master_inst|Add0~15\);

-- Location: FF_X46_Y2_N15
\master_inst|clk_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master_inst|Add0~14_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|clk_counter\(7));

-- Location: LCCOMB_X47_Y2_N10
\master_inst|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Equal0~8_combout\ = (!\master_inst|clk_counter\(5) & (!\master_inst|clk_counter\(4) & (!\master_inst|clk_counter\(7) & !\master_inst|clk_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|clk_counter\(5),
	datab => \master_inst|clk_counter\(4),
	datac => \master_inst|clk_counter\(7),
	datad => \master_inst|clk_counter\(6),
	combout => \master_inst|Equal0~8_combout\);

-- Location: LCCOMB_X47_Y2_N8
\master_inst|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Equal0~9_combout\ = (\master_inst|clk_counter\(0) & (!\master_inst|clk_counter\(1) & (!\master_inst|clk_counter\(3) & \master_inst|clk_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|clk_counter\(0),
	datab => \master_inst|clk_counter\(1),
	datac => \master_inst|clk_counter\(3),
	datad => \master_inst|clk_counter\(2),
	combout => \master_inst|Equal0~9_combout\);

-- Location: LCCOMB_X46_Y2_N16
\master_inst|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Add0~16_combout\ = (\master_inst|clk_counter\(8) & (\master_inst|Add0~15\ $ (GND))) # (!\master_inst|clk_counter\(8) & (!\master_inst|Add0~15\ & VCC))
-- \master_inst|Add0~17\ = CARRY((\master_inst|clk_counter\(8) & !\master_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|clk_counter\(8),
	datad => VCC,
	cin => \master_inst|Add0~15\,
	combout => \master_inst|Add0~16_combout\,
	cout => \master_inst|Add0~17\);

-- Location: FF_X46_Y2_N17
\master_inst|clk_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master_inst|Add0~16_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|clk_counter\(8));

-- Location: LCCOMB_X46_Y2_N18
\master_inst|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Add0~18_combout\ = (\master_inst|clk_counter\(9) & (!\master_inst|Add0~17\)) # (!\master_inst|clk_counter\(9) & ((\master_inst|Add0~17\) # (GND)))
-- \master_inst|Add0~19\ = CARRY((!\master_inst|Add0~17\) # (!\master_inst|clk_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|clk_counter\(9),
	datad => VCC,
	cin => \master_inst|Add0~17\,
	combout => \master_inst|Add0~18_combout\,
	cout => \master_inst|Add0~19\);

-- Location: FF_X46_Y2_N19
\master_inst|clk_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master_inst|Add0~18_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|clk_counter\(9));

-- Location: LCCOMB_X46_Y2_N20
\master_inst|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Add0~20_combout\ = (\master_inst|clk_counter\(10) & (\master_inst|Add0~19\ $ (GND))) # (!\master_inst|clk_counter\(10) & (!\master_inst|Add0~19\ & VCC))
-- \master_inst|Add0~21\ = CARRY((\master_inst|clk_counter\(10) & !\master_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|clk_counter\(10),
	datad => VCC,
	cin => \master_inst|Add0~19\,
	combout => \master_inst|Add0~20_combout\,
	cout => \master_inst|Add0~21\);

-- Location: FF_X46_Y2_N21
\master_inst|clk_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master_inst|Add0~20_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|clk_counter\(10));

-- Location: LCCOMB_X46_Y2_N22
\master_inst|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Add0~22_combout\ = (\master_inst|clk_counter\(11) & (!\master_inst|Add0~21\)) # (!\master_inst|clk_counter\(11) & ((\master_inst|Add0~21\) # (GND)))
-- \master_inst|Add0~23\ = CARRY((!\master_inst|Add0~21\) # (!\master_inst|clk_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|clk_counter\(11),
	datad => VCC,
	cin => \master_inst|Add0~21\,
	combout => \master_inst|Add0~22_combout\,
	cout => \master_inst|Add0~23\);

-- Location: FF_X46_Y2_N23
\master_inst|clk_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master_inst|Add0~22_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|clk_counter\(11));

-- Location: LCCOMB_X46_Y2_N24
\master_inst|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Add0~24_combout\ = (\master_inst|clk_counter\(12) & (\master_inst|Add0~23\ $ (GND))) # (!\master_inst|clk_counter\(12) & (!\master_inst|Add0~23\ & VCC))
-- \master_inst|Add0~25\ = CARRY((\master_inst|clk_counter\(12) & !\master_inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|clk_counter\(12),
	datad => VCC,
	cin => \master_inst|Add0~23\,
	combout => \master_inst|Add0~24_combout\,
	cout => \master_inst|Add0~25\);

-- Location: FF_X46_Y2_N25
\master_inst|clk_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master_inst|Add0~24_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|clk_counter\(12));

-- Location: LCCOMB_X46_Y2_N26
\master_inst|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Add0~26_combout\ = (\master_inst|clk_counter\(13) & (!\master_inst|Add0~25\)) # (!\master_inst|clk_counter\(13) & ((\master_inst|Add0~25\) # (GND)))
-- \master_inst|Add0~27\ = CARRY((!\master_inst|Add0~25\) # (!\master_inst|clk_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|clk_counter\(13),
	datad => VCC,
	cin => \master_inst|Add0~25\,
	combout => \master_inst|Add0~26_combout\,
	cout => \master_inst|Add0~27\);

-- Location: FF_X46_Y2_N27
\master_inst|clk_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master_inst|Add0~26_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|clk_counter\(13));

-- Location: LCCOMB_X46_Y2_N28
\master_inst|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Add0~28_combout\ = (\master_inst|clk_counter\(14) & (\master_inst|Add0~27\ $ (GND))) # (!\master_inst|clk_counter\(14) & (!\master_inst|Add0~27\ & VCC))
-- \master_inst|Add0~29\ = CARRY((\master_inst|clk_counter\(14) & !\master_inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|clk_counter\(14),
	datad => VCC,
	cin => \master_inst|Add0~27\,
	combout => \master_inst|Add0~28_combout\,
	cout => \master_inst|Add0~29\);

-- Location: FF_X46_Y2_N29
\master_inst|clk_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master_inst|Add0~28_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|clk_counter\(14));

-- Location: LCCOMB_X46_Y2_N30
\master_inst|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Add0~30_combout\ = (\master_inst|clk_counter\(15) & (!\master_inst|Add0~29\)) # (!\master_inst|clk_counter\(15) & ((\master_inst|Add0~29\) # (GND)))
-- \master_inst|Add0~31\ = CARRY((!\master_inst|Add0~29\) # (!\master_inst|clk_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|clk_counter\(15),
	datad => VCC,
	cin => \master_inst|Add0~29\,
	combout => \master_inst|Add0~30_combout\,
	cout => \master_inst|Add0~31\);

-- Location: FF_X46_Y2_N31
\master_inst|clk_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master_inst|Add0~30_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|clk_counter\(15));

-- Location: LCCOMB_X47_Y2_N22
\master_inst|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Equal0~6_combout\ = (!\master_inst|clk_counter\(8) & (!\master_inst|clk_counter\(10) & (!\master_inst|clk_counter\(9) & !\master_inst|clk_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|clk_counter\(8),
	datab => \master_inst|clk_counter\(10),
	datac => \master_inst|clk_counter\(9),
	datad => \master_inst|clk_counter\(11),
	combout => \master_inst|Equal0~6_combout\);

-- Location: LCCOMB_X47_Y2_N18
\master_inst|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Equal0~5_combout\ = (!\master_inst|clk_counter\(13) & !\master_inst|clk_counter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \master_inst|clk_counter\(13),
	datad => \master_inst|clk_counter\(12),
	combout => \master_inst|Equal0~5_combout\);

-- Location: LCCOMB_X47_Y2_N26
\master_inst|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Equal0~7_combout\ = (!\master_inst|clk_counter\(15) & (!\master_inst|clk_counter\(14) & (\master_inst|Equal0~6_combout\ & \master_inst|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|clk_counter\(15),
	datab => \master_inst|clk_counter\(14),
	datac => \master_inst|Equal0~6_combout\,
	datad => \master_inst|Equal0~5_combout\,
	combout => \master_inst|Equal0~7_combout\);

-- Location: LCCOMB_X46_Y1_N0
\master_inst|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Add0~32_combout\ = (\master_inst|clk_counter\(16) & (\master_inst|Add0~31\ $ (GND))) # (!\master_inst|clk_counter\(16) & (!\master_inst|Add0~31\ & VCC))
-- \master_inst|Add0~33\ = CARRY((\master_inst|clk_counter\(16) & !\master_inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|clk_counter\(16),
	datad => VCC,
	cin => \master_inst|Add0~31\,
	combout => \master_inst|Add0~32_combout\,
	cout => \master_inst|Add0~33\);

-- Location: FF_X46_Y1_N1
\master_inst|clk_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master_inst|Add0~32_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|clk_counter\(16));

-- Location: LCCOMB_X46_Y1_N2
\master_inst|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Add0~34_combout\ = (\master_inst|clk_counter\(17) & (!\master_inst|Add0~33\)) # (!\master_inst|clk_counter\(17) & ((\master_inst|Add0~33\) # (GND)))
-- \master_inst|Add0~35\ = CARRY((!\master_inst|Add0~33\) # (!\master_inst|clk_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|clk_counter\(17),
	datad => VCC,
	cin => \master_inst|Add0~33\,
	combout => \master_inst|Add0~34_combout\,
	cout => \master_inst|Add0~35\);

-- Location: FF_X46_Y1_N3
\master_inst|clk_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master_inst|Add0~34_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|clk_counter\(17));

-- Location: LCCOMB_X46_Y1_N4
\master_inst|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Add0~36_combout\ = (\master_inst|clk_counter\(18) & (\master_inst|Add0~35\ $ (GND))) # (!\master_inst|clk_counter\(18) & (!\master_inst|Add0~35\ & VCC))
-- \master_inst|Add0~37\ = CARRY((\master_inst|clk_counter\(18) & !\master_inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|clk_counter\(18),
	datad => VCC,
	cin => \master_inst|Add0~35\,
	combout => \master_inst|Add0~36_combout\,
	cout => \master_inst|Add0~37\);

-- Location: FF_X46_Y1_N5
\master_inst|clk_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master_inst|Add0~36_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|clk_counter\(18));

-- Location: LCCOMB_X46_Y1_N6
\master_inst|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Add0~38_combout\ = (\master_inst|clk_counter\(19) & (!\master_inst|Add0~37\)) # (!\master_inst|clk_counter\(19) & ((\master_inst|Add0~37\) # (GND)))
-- \master_inst|Add0~39\ = CARRY((!\master_inst|Add0~37\) # (!\master_inst|clk_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|clk_counter\(19),
	datad => VCC,
	cin => \master_inst|Add0~37\,
	combout => \master_inst|Add0~38_combout\,
	cout => \master_inst|Add0~39\);

-- Location: FF_X46_Y1_N7
\master_inst|clk_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master_inst|Add0~38_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|clk_counter\(19));

-- Location: LCCOMB_X46_Y1_N8
\master_inst|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Add0~40_combout\ = (\master_inst|clk_counter\(20) & (\master_inst|Add0~39\ $ (GND))) # (!\master_inst|clk_counter\(20) & (!\master_inst|Add0~39\ & VCC))
-- \master_inst|Add0~41\ = CARRY((\master_inst|clk_counter\(20) & !\master_inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|clk_counter\(20),
	datad => VCC,
	cin => \master_inst|Add0~39\,
	combout => \master_inst|Add0~40_combout\,
	cout => \master_inst|Add0~41\);

-- Location: FF_X46_Y1_N9
\master_inst|clk_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master_inst|Add0~40_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|clk_counter\(20));

-- Location: LCCOMB_X46_Y1_N10
\master_inst|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Add0~42_combout\ = (\master_inst|clk_counter\(21) & (!\master_inst|Add0~41\)) # (!\master_inst|clk_counter\(21) & ((\master_inst|Add0~41\) # (GND)))
-- \master_inst|Add0~43\ = CARRY((!\master_inst|Add0~41\) # (!\master_inst|clk_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|clk_counter\(21),
	datad => VCC,
	cin => \master_inst|Add0~41\,
	combout => \master_inst|Add0~42_combout\,
	cout => \master_inst|Add0~43\);

-- Location: FF_X46_Y1_N11
\master_inst|clk_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master_inst|Add0~42_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|clk_counter\(21));

-- Location: LCCOMB_X46_Y1_N12
\master_inst|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Add0~44_combout\ = (\master_inst|clk_counter\(22) & (\master_inst|Add0~43\ $ (GND))) # (!\master_inst|clk_counter\(22) & (!\master_inst|Add0~43\ & VCC))
-- \master_inst|Add0~45\ = CARRY((\master_inst|clk_counter\(22) & !\master_inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|clk_counter\(22),
	datad => VCC,
	cin => \master_inst|Add0~43\,
	combout => \master_inst|Add0~44_combout\,
	cout => \master_inst|Add0~45\);

-- Location: FF_X46_Y1_N13
\master_inst|clk_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master_inst|Add0~44_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|clk_counter\(22));

-- Location: LCCOMB_X46_Y1_N14
\master_inst|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Add0~46_combout\ = (\master_inst|clk_counter\(23) & (!\master_inst|Add0~45\)) # (!\master_inst|clk_counter\(23) & ((\master_inst|Add0~45\) # (GND)))
-- \master_inst|Add0~47\ = CARRY((!\master_inst|Add0~45\) # (!\master_inst|clk_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|clk_counter\(23),
	datad => VCC,
	cin => \master_inst|Add0~45\,
	combout => \master_inst|Add0~46_combout\,
	cout => \master_inst|Add0~47\);

-- Location: FF_X46_Y1_N15
\master_inst|clk_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master_inst|Add0~46_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|clk_counter\(23));

-- Location: LCCOMB_X46_Y1_N16
\master_inst|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Add0~48_combout\ = (\master_inst|clk_counter\(24) & (\master_inst|Add0~47\ $ (GND))) # (!\master_inst|clk_counter\(24) & (!\master_inst|Add0~47\ & VCC))
-- \master_inst|Add0~49\ = CARRY((\master_inst|clk_counter\(24) & !\master_inst|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|clk_counter\(24),
	datad => VCC,
	cin => \master_inst|Add0~47\,
	combout => \master_inst|Add0~48_combout\,
	cout => \master_inst|Add0~49\);

-- Location: FF_X46_Y1_N17
\master_inst|clk_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master_inst|Add0~48_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|clk_counter\(24));

-- Location: LCCOMB_X46_Y1_N18
\master_inst|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Add0~50_combout\ = (\master_inst|clk_counter\(25) & (!\master_inst|Add0~49\)) # (!\master_inst|clk_counter\(25) & ((\master_inst|Add0~49\) # (GND)))
-- \master_inst|Add0~51\ = CARRY((!\master_inst|Add0~49\) # (!\master_inst|clk_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|clk_counter\(25),
	datad => VCC,
	cin => \master_inst|Add0~49\,
	combout => \master_inst|Add0~50_combout\,
	cout => \master_inst|Add0~51\);

-- Location: FF_X46_Y1_N19
\master_inst|clk_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master_inst|Add0~50_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|clk_counter\(25));

-- Location: LCCOMB_X46_Y1_N20
\master_inst|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Add0~52_combout\ = (\master_inst|clk_counter\(26) & (\master_inst|Add0~51\ $ (GND))) # (!\master_inst|clk_counter\(26) & (!\master_inst|Add0~51\ & VCC))
-- \master_inst|Add0~53\ = CARRY((\master_inst|clk_counter\(26) & !\master_inst|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|clk_counter\(26),
	datad => VCC,
	cin => \master_inst|Add0~51\,
	combout => \master_inst|Add0~52_combout\,
	cout => \master_inst|Add0~53\);

-- Location: FF_X46_Y1_N21
\master_inst|clk_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master_inst|Add0~52_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|clk_counter\(26));

-- Location: LCCOMB_X46_Y1_N22
\master_inst|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Add0~54_combout\ = (\master_inst|clk_counter\(27) & (!\master_inst|Add0~53\)) # (!\master_inst|clk_counter\(27) & ((\master_inst|Add0~53\) # (GND)))
-- \master_inst|Add0~55\ = CARRY((!\master_inst|Add0~53\) # (!\master_inst|clk_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|clk_counter\(27),
	datad => VCC,
	cin => \master_inst|Add0~53\,
	combout => \master_inst|Add0~54_combout\,
	cout => \master_inst|Add0~55\);

-- Location: FF_X46_Y1_N23
\master_inst|clk_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master_inst|Add0~54_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|clk_counter\(27));

-- Location: LCCOMB_X47_Y1_N10
\master_inst|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Equal0~1_combout\ = (!\master_inst|clk_counter\(27) & (!\master_inst|clk_counter\(26) & (!\master_inst|clk_counter\(24) & !\master_inst|clk_counter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|clk_counter\(27),
	datab => \master_inst|clk_counter\(26),
	datac => \master_inst|clk_counter\(24),
	datad => \master_inst|clk_counter\(25),
	combout => \master_inst|Equal0~1_combout\);

-- Location: LCCOMB_X46_Y1_N24
\master_inst|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Add0~56_combout\ = (\master_inst|clk_counter\(28) & (\master_inst|Add0~55\ $ (GND))) # (!\master_inst|clk_counter\(28) & (!\master_inst|Add0~55\ & VCC))
-- \master_inst|Add0~57\ = CARRY((\master_inst|clk_counter\(28) & !\master_inst|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|clk_counter\(28),
	datad => VCC,
	cin => \master_inst|Add0~55\,
	combout => \master_inst|Add0~56_combout\,
	cout => \master_inst|Add0~57\);

-- Location: FF_X46_Y1_N25
\master_inst|clk_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master_inst|Add0~56_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|clk_counter\(28));

-- Location: LCCOMB_X46_Y1_N26
\master_inst|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Add0~58_combout\ = (\master_inst|clk_counter\(29) & (!\master_inst|Add0~57\)) # (!\master_inst|clk_counter\(29) & ((\master_inst|Add0~57\) # (GND)))
-- \master_inst|Add0~59\ = CARRY((!\master_inst|Add0~57\) # (!\master_inst|clk_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|clk_counter\(29),
	datad => VCC,
	cin => \master_inst|Add0~57\,
	combout => \master_inst|Add0~58_combout\,
	cout => \master_inst|Add0~59\);

-- Location: FF_X46_Y1_N27
\master_inst|clk_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master_inst|Add0~58_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|clk_counter\(29));

-- Location: LCCOMB_X46_Y1_N28
\master_inst|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Add0~60_combout\ = (\master_inst|clk_counter\(30) & (\master_inst|Add0~59\ $ (GND))) # (!\master_inst|clk_counter\(30) & (!\master_inst|Add0~59\ & VCC))
-- \master_inst|Add0~61\ = CARRY((\master_inst|clk_counter\(30) & !\master_inst|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|clk_counter\(30),
	datad => VCC,
	cin => \master_inst|Add0~59\,
	combout => \master_inst|Add0~60_combout\,
	cout => \master_inst|Add0~61\);

-- Location: FF_X46_Y1_N29
\master_inst|clk_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master_inst|Add0~60_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|clk_counter\(30));

-- Location: LCCOMB_X46_Y1_N30
\master_inst|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Add0~62_combout\ = \master_inst|clk_counter\(31) $ (\master_inst|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|clk_counter\(31),
	cin => \master_inst|Add0~61\,
	combout => \master_inst|Add0~62_combout\);

-- Location: FF_X46_Y1_N31
\master_inst|clk_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master_inst|Add0~62_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|clk_counter\(31));

-- Location: LCCOMB_X47_Y1_N0
\master_inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Equal0~0_combout\ = (!\master_inst|clk_counter\(29) & (!\master_inst|clk_counter\(30) & (!\master_inst|clk_counter\(31) & !\master_inst|clk_counter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|clk_counter\(29),
	datab => \master_inst|clk_counter\(30),
	datac => \master_inst|clk_counter\(31),
	datad => \master_inst|clk_counter\(28),
	combout => \master_inst|Equal0~0_combout\);

-- Location: LCCOMB_X47_Y1_N28
\master_inst|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Equal0~2_combout\ = (!\master_inst|clk_counter\(22) & (!\master_inst|clk_counter\(23) & (!\master_inst|clk_counter\(20) & !\master_inst|clk_counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|clk_counter\(22),
	datab => \master_inst|clk_counter\(23),
	datac => \master_inst|clk_counter\(20),
	datad => \master_inst|clk_counter\(21),
	combout => \master_inst|Equal0~2_combout\);

-- Location: LCCOMB_X47_Y1_N22
\master_inst|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Equal0~3_combout\ = (!\master_inst|clk_counter\(16) & (!\master_inst|clk_counter\(18) & (!\master_inst|clk_counter\(19) & !\master_inst|clk_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|clk_counter\(16),
	datab => \master_inst|clk_counter\(18),
	datac => \master_inst|clk_counter\(19),
	datad => \master_inst|clk_counter\(17),
	combout => \master_inst|Equal0~3_combout\);

-- Location: LCCOMB_X47_Y2_N28
\master_inst|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Equal0~4_combout\ = (\master_inst|Equal0~1_combout\ & (\master_inst|Equal0~0_combout\ & (\master_inst|Equal0~2_combout\ & \master_inst|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|Equal0~1_combout\,
	datab => \master_inst|Equal0~0_combout\,
	datac => \master_inst|Equal0~2_combout\,
	datad => \master_inst|Equal0~3_combout\,
	combout => \master_inst|Equal0~4_combout\);

-- Location: LCCOMB_X47_Y2_N20
\master_inst|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Equal0~10_combout\ = (\master_inst|Equal0~8_combout\ & (\master_inst|Equal0~9_combout\ & (\master_inst|Equal0~7_combout\ & \master_inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|Equal0~8_combout\,
	datab => \master_inst|Equal0~9_combout\,
	datac => \master_inst|Equal0~7_combout\,
	datad => \master_inst|Equal0~4_combout\,
	combout => \master_inst|Equal0~10_combout\);

-- Location: LCCOMB_X47_Y2_N30
\master_inst|sclk_gen~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|sclk_gen~0_combout\ = \master_inst|sclk_gen~q\ $ (\master_inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|sclk_gen~q\,
	datad => \master_inst|Equal0~10_combout\,
	combout => \master_inst|sclk_gen~0_combout\);

-- Location: LCCOMB_X47_Y2_N12
\master_inst|sclk_gen~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|sclk_gen~feeder_combout\ = \master_inst|sclk_gen~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|sclk_gen~0_combout\,
	combout => \master_inst|sclk_gen~feeder_combout\);

-- Location: FF_X47_Y2_N13
\master_inst|sclk_gen\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master_inst|sclk_gen~feeder_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|sclk_gen~q\);

-- Location: CLKCTRL_G17
\master_inst|sclk_gen~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \master_inst|sclk_gen~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \master_inst|sclk_gen~clkctrl_outclk\);

-- Location: LCCOMB_X34_Y5_N2
\master_inst|bit_counter[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|bit_counter[1]~31_combout\ = (\master_inst|bit_counter\(0) & (\master_inst|bit_counter\(1) $ (VCC))) # (!\master_inst|bit_counter\(0) & (\master_inst|bit_counter\(1) & VCC))
-- \master_inst|bit_counter[1]~32\ = CARRY((\master_inst|bit_counter\(0) & \master_inst|bit_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|bit_counter\(0),
	datab => \master_inst|bit_counter\(1),
	datad => VCC,
	combout => \master_inst|bit_counter[1]~31_combout\,
	cout => \master_inst|bit_counter[1]~32\);

-- Location: LCCOMB_X31_Y4_N30
\master_inst|bit_counter[28]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|bit_counter[28]~35_combout\ = (\master_inst|cs_gen~q\ & \master_inst|LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \master_inst|cs_gen~q\,
	datad => \master_inst|LessThan2~0_combout\,
	combout => \master_inst|bit_counter[28]~35_combout\);

-- Location: FF_X34_Y5_N3
\master_inst|bit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \master_inst|bit_counter[1]~31_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|bit_counter[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|bit_counter\(1));

-- Location: LCCOMB_X31_Y4_N6
\master_inst|Equal1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Equal1~9_combout\ = (!\master_inst|bit_counter\(2) & (!\master_inst|bit_counter\(0) & (!\master_inst|bit_counter\(1) & !\master_inst|bit_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|bit_counter\(2),
	datab => \master_inst|bit_counter\(0),
	datac => \master_inst|bit_counter\(1),
	datad => \master_inst|bit_counter\(3),
	combout => \master_inst|Equal1~9_combout\);

-- Location: LCCOMB_X34_Y5_N8
\master_inst|bit_counter[4]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|bit_counter[4]~38_combout\ = (\master_inst|bit_counter\(4) & (!\master_inst|bit_counter[3]~37\)) # (!\master_inst|bit_counter\(4) & ((\master_inst|bit_counter[3]~37\) # (GND)))
-- \master_inst|bit_counter[4]~39\ = CARRY((!\master_inst|bit_counter[3]~37\) # (!\master_inst|bit_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|bit_counter\(4),
	datad => VCC,
	cin => \master_inst|bit_counter[3]~37\,
	combout => \master_inst|bit_counter[4]~38_combout\,
	cout => \master_inst|bit_counter[4]~39\);

-- Location: LCCOMB_X34_Y5_N10
\master_inst|bit_counter[5]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|bit_counter[5]~40_combout\ = (\master_inst|bit_counter\(5) & (\master_inst|bit_counter[4]~39\ $ (GND))) # (!\master_inst|bit_counter\(5) & (!\master_inst|bit_counter[4]~39\ & VCC))
-- \master_inst|bit_counter[5]~41\ = CARRY((\master_inst|bit_counter\(5) & !\master_inst|bit_counter[4]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|bit_counter\(5),
	datad => VCC,
	cin => \master_inst|bit_counter[4]~39\,
	combout => \master_inst|bit_counter[5]~40_combout\,
	cout => \master_inst|bit_counter[5]~41\);

-- Location: FF_X34_Y5_N11
\master_inst|bit_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \master_inst|bit_counter[5]~40_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|bit_counter[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|bit_counter\(5));

-- Location: LCCOMB_X34_Y5_N12
\master_inst|bit_counter[6]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|bit_counter[6]~42_combout\ = (\master_inst|bit_counter\(6) & (!\master_inst|bit_counter[5]~41\)) # (!\master_inst|bit_counter\(6) & ((\master_inst|bit_counter[5]~41\) # (GND)))
-- \master_inst|bit_counter[6]~43\ = CARRY((!\master_inst|bit_counter[5]~41\) # (!\master_inst|bit_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|bit_counter\(6),
	datad => VCC,
	cin => \master_inst|bit_counter[5]~41\,
	combout => \master_inst|bit_counter[6]~42_combout\,
	cout => \master_inst|bit_counter[6]~43\);

-- Location: FF_X34_Y5_N13
\master_inst|bit_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \master_inst|bit_counter[6]~42_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|bit_counter[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|bit_counter\(6));

-- Location: LCCOMB_X34_Y5_N14
\master_inst|bit_counter[7]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|bit_counter[7]~44_combout\ = (\master_inst|bit_counter\(7) & (\master_inst|bit_counter[6]~43\ $ (GND))) # (!\master_inst|bit_counter\(7) & (!\master_inst|bit_counter[6]~43\ & VCC))
-- \master_inst|bit_counter[7]~45\ = CARRY((\master_inst|bit_counter\(7) & !\master_inst|bit_counter[6]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|bit_counter\(7),
	datad => VCC,
	cin => \master_inst|bit_counter[6]~43\,
	combout => \master_inst|bit_counter[7]~44_combout\,
	cout => \master_inst|bit_counter[7]~45\);

-- Location: FF_X34_Y5_N15
\master_inst|bit_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \master_inst|bit_counter[7]~44_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|bit_counter[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|bit_counter\(7));

-- Location: LCCOMB_X34_Y5_N16
\master_inst|bit_counter[8]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|bit_counter[8]~46_combout\ = (\master_inst|bit_counter\(8) & (!\master_inst|bit_counter[7]~45\)) # (!\master_inst|bit_counter\(8) & ((\master_inst|bit_counter[7]~45\) # (GND)))
-- \master_inst|bit_counter[8]~47\ = CARRY((!\master_inst|bit_counter[7]~45\) # (!\master_inst|bit_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|bit_counter\(8),
	datad => VCC,
	cin => \master_inst|bit_counter[7]~45\,
	combout => \master_inst|bit_counter[8]~46_combout\,
	cout => \master_inst|bit_counter[8]~47\);

-- Location: FF_X34_Y5_N17
\master_inst|bit_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \master_inst|bit_counter[8]~46_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|bit_counter[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|bit_counter\(8));

-- Location: LCCOMB_X34_Y5_N18
\master_inst|bit_counter[9]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|bit_counter[9]~48_combout\ = (\master_inst|bit_counter\(9) & (\master_inst|bit_counter[8]~47\ $ (GND))) # (!\master_inst|bit_counter\(9) & (!\master_inst|bit_counter[8]~47\ & VCC))
-- \master_inst|bit_counter[9]~49\ = CARRY((\master_inst|bit_counter\(9) & !\master_inst|bit_counter[8]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|bit_counter\(9),
	datad => VCC,
	cin => \master_inst|bit_counter[8]~47\,
	combout => \master_inst|bit_counter[9]~48_combout\,
	cout => \master_inst|bit_counter[9]~49\);

-- Location: FF_X34_Y5_N19
\master_inst|bit_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \master_inst|bit_counter[9]~48_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|bit_counter[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|bit_counter\(9));

-- Location: LCCOMB_X34_Y5_N20
\master_inst|bit_counter[10]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|bit_counter[10]~50_combout\ = (\master_inst|bit_counter\(10) & (!\master_inst|bit_counter[9]~49\)) # (!\master_inst|bit_counter\(10) & ((\master_inst|bit_counter[9]~49\) # (GND)))
-- \master_inst|bit_counter[10]~51\ = CARRY((!\master_inst|bit_counter[9]~49\) # (!\master_inst|bit_counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|bit_counter\(10),
	datad => VCC,
	cin => \master_inst|bit_counter[9]~49\,
	combout => \master_inst|bit_counter[10]~50_combout\,
	cout => \master_inst|bit_counter[10]~51\);

-- Location: FF_X34_Y5_N21
\master_inst|bit_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \master_inst|bit_counter[10]~50_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|bit_counter[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|bit_counter\(10));

-- Location: LCCOMB_X34_Y5_N22
\master_inst|bit_counter[11]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|bit_counter[11]~52_combout\ = (\master_inst|bit_counter\(11) & (\master_inst|bit_counter[10]~51\ $ (GND))) # (!\master_inst|bit_counter\(11) & (!\master_inst|bit_counter[10]~51\ & VCC))
-- \master_inst|bit_counter[11]~53\ = CARRY((\master_inst|bit_counter\(11) & !\master_inst|bit_counter[10]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|bit_counter\(11),
	datad => VCC,
	cin => \master_inst|bit_counter[10]~51\,
	combout => \master_inst|bit_counter[11]~52_combout\,
	cout => \master_inst|bit_counter[11]~53\);

-- Location: FF_X34_Y5_N23
\master_inst|bit_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \master_inst|bit_counter[11]~52_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|bit_counter[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|bit_counter\(11));

-- Location: LCCOMB_X34_Y5_N24
\master_inst|bit_counter[12]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|bit_counter[12]~54_combout\ = (\master_inst|bit_counter\(12) & (!\master_inst|bit_counter[11]~53\)) # (!\master_inst|bit_counter\(12) & ((\master_inst|bit_counter[11]~53\) # (GND)))
-- \master_inst|bit_counter[12]~55\ = CARRY((!\master_inst|bit_counter[11]~53\) # (!\master_inst|bit_counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|bit_counter\(12),
	datad => VCC,
	cin => \master_inst|bit_counter[11]~53\,
	combout => \master_inst|bit_counter[12]~54_combout\,
	cout => \master_inst|bit_counter[12]~55\);

-- Location: FF_X34_Y5_N25
\master_inst|bit_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \master_inst|bit_counter[12]~54_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|bit_counter[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|bit_counter\(12));

-- Location: LCCOMB_X34_Y5_N26
\master_inst|bit_counter[13]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|bit_counter[13]~56_combout\ = (\master_inst|bit_counter\(13) & (\master_inst|bit_counter[12]~55\ $ (GND))) # (!\master_inst|bit_counter\(13) & (!\master_inst|bit_counter[12]~55\ & VCC))
-- \master_inst|bit_counter[13]~57\ = CARRY((\master_inst|bit_counter\(13) & !\master_inst|bit_counter[12]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|bit_counter\(13),
	datad => VCC,
	cin => \master_inst|bit_counter[12]~55\,
	combout => \master_inst|bit_counter[13]~56_combout\,
	cout => \master_inst|bit_counter[13]~57\);

-- Location: FF_X34_Y5_N27
\master_inst|bit_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \master_inst|bit_counter[13]~56_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|bit_counter[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|bit_counter\(13));

-- Location: LCCOMB_X34_Y5_N28
\master_inst|bit_counter[14]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|bit_counter[14]~58_combout\ = (\master_inst|bit_counter\(14) & (!\master_inst|bit_counter[13]~57\)) # (!\master_inst|bit_counter\(14) & ((\master_inst|bit_counter[13]~57\) # (GND)))
-- \master_inst|bit_counter[14]~59\ = CARRY((!\master_inst|bit_counter[13]~57\) # (!\master_inst|bit_counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|bit_counter\(14),
	datad => VCC,
	cin => \master_inst|bit_counter[13]~57\,
	combout => \master_inst|bit_counter[14]~58_combout\,
	cout => \master_inst|bit_counter[14]~59\);

-- Location: FF_X34_Y5_N29
\master_inst|bit_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \master_inst|bit_counter[14]~58_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|bit_counter[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|bit_counter\(14));

-- Location: LCCOMB_X34_Y5_N30
\master_inst|bit_counter[15]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|bit_counter[15]~60_combout\ = (\master_inst|bit_counter\(15) & (\master_inst|bit_counter[14]~59\ $ (GND))) # (!\master_inst|bit_counter\(15) & (!\master_inst|bit_counter[14]~59\ & VCC))
-- \master_inst|bit_counter[15]~61\ = CARRY((\master_inst|bit_counter\(15) & !\master_inst|bit_counter[14]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|bit_counter\(15),
	datad => VCC,
	cin => \master_inst|bit_counter[14]~59\,
	combout => \master_inst|bit_counter[15]~60_combout\,
	cout => \master_inst|bit_counter[15]~61\);

-- Location: FF_X34_Y5_N31
\master_inst|bit_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \master_inst|bit_counter[15]~60_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|bit_counter[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|bit_counter\(15));

-- Location: LCCOMB_X34_Y4_N0
\master_inst|bit_counter[16]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|bit_counter[16]~62_combout\ = (\master_inst|bit_counter\(16) & (!\master_inst|bit_counter[15]~61\)) # (!\master_inst|bit_counter\(16) & ((\master_inst|bit_counter[15]~61\) # (GND)))
-- \master_inst|bit_counter[16]~63\ = CARRY((!\master_inst|bit_counter[15]~61\) # (!\master_inst|bit_counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|bit_counter\(16),
	datad => VCC,
	cin => \master_inst|bit_counter[15]~61\,
	combout => \master_inst|bit_counter[16]~62_combout\,
	cout => \master_inst|bit_counter[16]~63\);

-- Location: FF_X34_Y4_N1
\master_inst|bit_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \master_inst|bit_counter[16]~62_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|bit_counter[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|bit_counter\(16));

-- Location: LCCOMB_X34_Y4_N2
\master_inst|bit_counter[17]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|bit_counter[17]~64_combout\ = (\master_inst|bit_counter\(17) & (\master_inst|bit_counter[16]~63\ $ (GND))) # (!\master_inst|bit_counter\(17) & (!\master_inst|bit_counter[16]~63\ & VCC))
-- \master_inst|bit_counter[17]~65\ = CARRY((\master_inst|bit_counter\(17) & !\master_inst|bit_counter[16]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|bit_counter\(17),
	datad => VCC,
	cin => \master_inst|bit_counter[16]~63\,
	combout => \master_inst|bit_counter[17]~64_combout\,
	cout => \master_inst|bit_counter[17]~65\);

-- Location: FF_X34_Y4_N3
\master_inst|bit_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \master_inst|bit_counter[17]~64_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|bit_counter[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|bit_counter\(17));

-- Location: LCCOMB_X34_Y4_N4
\master_inst|bit_counter[18]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|bit_counter[18]~66_combout\ = (\master_inst|bit_counter\(18) & (!\master_inst|bit_counter[17]~65\)) # (!\master_inst|bit_counter\(18) & ((\master_inst|bit_counter[17]~65\) # (GND)))
-- \master_inst|bit_counter[18]~67\ = CARRY((!\master_inst|bit_counter[17]~65\) # (!\master_inst|bit_counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|bit_counter\(18),
	datad => VCC,
	cin => \master_inst|bit_counter[17]~65\,
	combout => \master_inst|bit_counter[18]~66_combout\,
	cout => \master_inst|bit_counter[18]~67\);

-- Location: FF_X34_Y4_N5
\master_inst|bit_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \master_inst|bit_counter[18]~66_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|bit_counter[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|bit_counter\(18));

-- Location: LCCOMB_X34_Y4_N6
\master_inst|bit_counter[19]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|bit_counter[19]~68_combout\ = (\master_inst|bit_counter\(19) & (\master_inst|bit_counter[18]~67\ $ (GND))) # (!\master_inst|bit_counter\(19) & (!\master_inst|bit_counter[18]~67\ & VCC))
-- \master_inst|bit_counter[19]~69\ = CARRY((\master_inst|bit_counter\(19) & !\master_inst|bit_counter[18]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|bit_counter\(19),
	datad => VCC,
	cin => \master_inst|bit_counter[18]~67\,
	combout => \master_inst|bit_counter[19]~68_combout\,
	cout => \master_inst|bit_counter[19]~69\);

-- Location: FF_X34_Y4_N7
\master_inst|bit_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \master_inst|bit_counter[19]~68_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|bit_counter[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|bit_counter\(19));

-- Location: LCCOMB_X34_Y4_N8
\master_inst|bit_counter[20]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|bit_counter[20]~70_combout\ = (\master_inst|bit_counter\(20) & (!\master_inst|bit_counter[19]~69\)) # (!\master_inst|bit_counter\(20) & ((\master_inst|bit_counter[19]~69\) # (GND)))
-- \master_inst|bit_counter[20]~71\ = CARRY((!\master_inst|bit_counter[19]~69\) # (!\master_inst|bit_counter\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|bit_counter\(20),
	datad => VCC,
	cin => \master_inst|bit_counter[19]~69\,
	combout => \master_inst|bit_counter[20]~70_combout\,
	cout => \master_inst|bit_counter[20]~71\);

-- Location: FF_X34_Y4_N9
\master_inst|bit_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \master_inst|bit_counter[20]~70_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|bit_counter[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|bit_counter\(20));

-- Location: LCCOMB_X34_Y4_N10
\master_inst|bit_counter[21]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|bit_counter[21]~72_combout\ = (\master_inst|bit_counter\(21) & (\master_inst|bit_counter[20]~71\ $ (GND))) # (!\master_inst|bit_counter\(21) & (!\master_inst|bit_counter[20]~71\ & VCC))
-- \master_inst|bit_counter[21]~73\ = CARRY((\master_inst|bit_counter\(21) & !\master_inst|bit_counter[20]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|bit_counter\(21),
	datad => VCC,
	cin => \master_inst|bit_counter[20]~71\,
	combout => \master_inst|bit_counter[21]~72_combout\,
	cout => \master_inst|bit_counter[21]~73\);

-- Location: FF_X34_Y4_N11
\master_inst|bit_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \master_inst|bit_counter[21]~72_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|bit_counter[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|bit_counter\(21));

-- Location: LCCOMB_X34_Y4_N12
\master_inst|bit_counter[22]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|bit_counter[22]~74_combout\ = (\master_inst|bit_counter\(22) & (!\master_inst|bit_counter[21]~73\)) # (!\master_inst|bit_counter\(22) & ((\master_inst|bit_counter[21]~73\) # (GND)))
-- \master_inst|bit_counter[22]~75\ = CARRY((!\master_inst|bit_counter[21]~73\) # (!\master_inst|bit_counter\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|bit_counter\(22),
	datad => VCC,
	cin => \master_inst|bit_counter[21]~73\,
	combout => \master_inst|bit_counter[22]~74_combout\,
	cout => \master_inst|bit_counter[22]~75\);

-- Location: FF_X34_Y4_N13
\master_inst|bit_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \master_inst|bit_counter[22]~74_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|bit_counter[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|bit_counter\(22));

-- Location: LCCOMB_X34_Y4_N14
\master_inst|bit_counter[23]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|bit_counter[23]~76_combout\ = (\master_inst|bit_counter\(23) & (\master_inst|bit_counter[22]~75\ $ (GND))) # (!\master_inst|bit_counter\(23) & (!\master_inst|bit_counter[22]~75\ & VCC))
-- \master_inst|bit_counter[23]~77\ = CARRY((\master_inst|bit_counter\(23) & !\master_inst|bit_counter[22]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|bit_counter\(23),
	datad => VCC,
	cin => \master_inst|bit_counter[22]~75\,
	combout => \master_inst|bit_counter[23]~76_combout\,
	cout => \master_inst|bit_counter[23]~77\);

-- Location: FF_X34_Y4_N15
\master_inst|bit_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \master_inst|bit_counter[23]~76_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|bit_counter[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|bit_counter\(23));

-- Location: LCCOMB_X34_Y4_N16
\master_inst|bit_counter[24]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|bit_counter[24]~78_combout\ = (\master_inst|bit_counter\(24) & (!\master_inst|bit_counter[23]~77\)) # (!\master_inst|bit_counter\(24) & ((\master_inst|bit_counter[23]~77\) # (GND)))
-- \master_inst|bit_counter[24]~79\ = CARRY((!\master_inst|bit_counter[23]~77\) # (!\master_inst|bit_counter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|bit_counter\(24),
	datad => VCC,
	cin => \master_inst|bit_counter[23]~77\,
	combout => \master_inst|bit_counter[24]~78_combout\,
	cout => \master_inst|bit_counter[24]~79\);

-- Location: FF_X34_Y4_N17
\master_inst|bit_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \master_inst|bit_counter[24]~78_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|bit_counter[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|bit_counter\(24));

-- Location: LCCOMB_X34_Y4_N18
\master_inst|bit_counter[25]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|bit_counter[25]~80_combout\ = (\master_inst|bit_counter\(25) & (\master_inst|bit_counter[24]~79\ $ (GND))) # (!\master_inst|bit_counter\(25) & (!\master_inst|bit_counter[24]~79\ & VCC))
-- \master_inst|bit_counter[25]~81\ = CARRY((\master_inst|bit_counter\(25) & !\master_inst|bit_counter[24]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|bit_counter\(25),
	datad => VCC,
	cin => \master_inst|bit_counter[24]~79\,
	combout => \master_inst|bit_counter[25]~80_combout\,
	cout => \master_inst|bit_counter[25]~81\);

-- Location: FF_X34_Y4_N19
\master_inst|bit_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \master_inst|bit_counter[25]~80_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|bit_counter[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|bit_counter\(25));

-- Location: LCCOMB_X34_Y4_N20
\master_inst|bit_counter[26]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|bit_counter[26]~82_combout\ = (\master_inst|bit_counter\(26) & (!\master_inst|bit_counter[25]~81\)) # (!\master_inst|bit_counter\(26) & ((\master_inst|bit_counter[25]~81\) # (GND)))
-- \master_inst|bit_counter[26]~83\ = CARRY((!\master_inst|bit_counter[25]~81\) # (!\master_inst|bit_counter\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|bit_counter\(26),
	datad => VCC,
	cin => \master_inst|bit_counter[25]~81\,
	combout => \master_inst|bit_counter[26]~82_combout\,
	cout => \master_inst|bit_counter[26]~83\);

-- Location: FF_X34_Y4_N21
\master_inst|bit_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \master_inst|bit_counter[26]~82_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|bit_counter[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|bit_counter\(26));

-- Location: LCCOMB_X34_Y4_N22
\master_inst|bit_counter[27]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|bit_counter[27]~84_combout\ = (\master_inst|bit_counter\(27) & (\master_inst|bit_counter[26]~83\ $ (GND))) # (!\master_inst|bit_counter\(27) & (!\master_inst|bit_counter[26]~83\ & VCC))
-- \master_inst|bit_counter[27]~85\ = CARRY((\master_inst|bit_counter\(27) & !\master_inst|bit_counter[26]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|bit_counter\(27),
	datad => VCC,
	cin => \master_inst|bit_counter[26]~83\,
	combout => \master_inst|bit_counter[27]~84_combout\,
	cout => \master_inst|bit_counter[27]~85\);

-- Location: FF_X34_Y4_N23
\master_inst|bit_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \master_inst|bit_counter[27]~84_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|bit_counter[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|bit_counter\(27));

-- Location: LCCOMB_X34_Y4_N24
\master_inst|bit_counter[28]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|bit_counter[28]~86_combout\ = (\master_inst|bit_counter\(28) & (!\master_inst|bit_counter[27]~85\)) # (!\master_inst|bit_counter\(28) & ((\master_inst|bit_counter[27]~85\) # (GND)))
-- \master_inst|bit_counter[28]~87\ = CARRY((!\master_inst|bit_counter[27]~85\) # (!\master_inst|bit_counter\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|bit_counter\(28),
	datad => VCC,
	cin => \master_inst|bit_counter[27]~85\,
	combout => \master_inst|bit_counter[28]~86_combout\,
	cout => \master_inst|bit_counter[28]~87\);

-- Location: FF_X34_Y4_N25
\master_inst|bit_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \master_inst|bit_counter[28]~86_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|bit_counter[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|bit_counter\(28));

-- Location: LCCOMB_X34_Y4_N26
\master_inst|bit_counter[29]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|bit_counter[29]~88_combout\ = (\master_inst|bit_counter\(29) & (\master_inst|bit_counter[28]~87\ $ (GND))) # (!\master_inst|bit_counter\(29) & (!\master_inst|bit_counter[28]~87\ & VCC))
-- \master_inst|bit_counter[29]~89\ = CARRY((\master_inst|bit_counter\(29) & !\master_inst|bit_counter[28]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|bit_counter\(29),
	datad => VCC,
	cin => \master_inst|bit_counter[28]~87\,
	combout => \master_inst|bit_counter[29]~88_combout\,
	cout => \master_inst|bit_counter[29]~89\);

-- Location: FF_X34_Y4_N27
\master_inst|bit_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \master_inst|bit_counter[29]~88_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|bit_counter[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|bit_counter\(29));

-- Location: LCCOMB_X34_Y4_N28
\master_inst|bit_counter[30]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|bit_counter[30]~90_combout\ = (\master_inst|bit_counter\(30) & (!\master_inst|bit_counter[29]~89\)) # (!\master_inst|bit_counter\(30) & ((\master_inst|bit_counter[29]~89\) # (GND)))
-- \master_inst|bit_counter[30]~91\ = CARRY((!\master_inst|bit_counter[29]~89\) # (!\master_inst|bit_counter\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|bit_counter\(30),
	datad => VCC,
	cin => \master_inst|bit_counter[29]~89\,
	combout => \master_inst|bit_counter[30]~90_combout\,
	cout => \master_inst|bit_counter[30]~91\);

-- Location: FF_X34_Y4_N29
\master_inst|bit_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \master_inst|bit_counter[30]~90_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|bit_counter[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|bit_counter\(30));

-- Location: LCCOMB_X34_Y4_N30
\master_inst|bit_counter[31]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|bit_counter[31]~92_combout\ = \master_inst|bit_counter\(31) $ (!\master_inst|bit_counter[30]~91\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|bit_counter\(31),
	cin => \master_inst|bit_counter[30]~91\,
	combout => \master_inst|bit_counter[31]~92_combout\);

-- Location: FF_X34_Y4_N31
\master_inst|bit_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \master_inst|bit_counter[31]~92_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|bit_counter[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|bit_counter\(31));

-- Location: LCCOMB_X33_Y4_N30
\master_inst|Equal1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Equal1~5_combout\ = (!\master_inst|bit_counter\(21) & (!\master_inst|bit_counter\(23) & (!\master_inst|bit_counter\(22) & !\master_inst|bit_counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|bit_counter\(21),
	datab => \master_inst|bit_counter\(23),
	datac => \master_inst|bit_counter\(22),
	datad => \master_inst|bit_counter\(24),
	combout => \master_inst|Equal1~5_combout\);

-- Location: LCCOMB_X33_Y4_N12
\master_inst|Equal1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Equal1~6_combout\ = (!\master_inst|bit_counter\(27) & (!\master_inst|bit_counter\(25) & (!\master_inst|bit_counter\(26) & !\master_inst|bit_counter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|bit_counter\(27),
	datab => \master_inst|bit_counter\(25),
	datac => \master_inst|bit_counter\(26),
	datad => \master_inst|bit_counter\(28),
	combout => \master_inst|Equal1~6_combout\);

-- Location: LCCOMB_X33_Y4_N14
\master_inst|Equal1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Equal1~7_combout\ = (!\master_inst|bit_counter\(29) & (!\master_inst|bit_counter\(30) & (\master_inst|Equal1~5_combout\ & \master_inst|Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|bit_counter\(29),
	datab => \master_inst|bit_counter\(30),
	datac => \master_inst|Equal1~5_combout\,
	datad => \master_inst|Equal1~6_combout\,
	combout => \master_inst|Equal1~7_combout\);

-- Location: LCCOMB_X33_Y4_N26
\master_inst|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Equal1~3_combout\ = (!\master_inst|bit_counter\(18) & (!\master_inst|bit_counter\(20) & (!\master_inst|bit_counter\(17) & !\master_inst|bit_counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|bit_counter\(18),
	datab => \master_inst|bit_counter\(20),
	datac => \master_inst|bit_counter\(17),
	datad => \master_inst|bit_counter\(19),
	combout => \master_inst|Equal1~3_combout\);

-- Location: LCCOMB_X33_Y4_N8
\master_inst|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Equal1~2_combout\ = (!\master_inst|bit_counter\(16) & (!\master_inst|bit_counter\(15) & (!\master_inst|bit_counter\(13) & !\master_inst|bit_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|bit_counter\(16),
	datab => \master_inst|bit_counter\(15),
	datac => \master_inst|bit_counter\(13),
	datad => \master_inst|bit_counter\(14),
	combout => \master_inst|Equal1~2_combout\);

-- Location: LCCOMB_X34_Y5_N0
\master_inst|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Equal1~0_combout\ = (!\master_inst|bit_counter\(6) & (!\master_inst|bit_counter\(5) & (!\master_inst|bit_counter\(7) & !\master_inst|bit_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|bit_counter\(6),
	datab => \master_inst|bit_counter\(5),
	datac => \master_inst|bit_counter\(7),
	datad => \master_inst|bit_counter\(8),
	combout => \master_inst|Equal1~0_combout\);

-- Location: LCCOMB_X33_Y4_N10
\master_inst|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Equal1~1_combout\ = (!\master_inst|bit_counter\(11) & (!\master_inst|bit_counter\(9) & (!\master_inst|bit_counter\(10) & !\master_inst|bit_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|bit_counter\(11),
	datab => \master_inst|bit_counter\(9),
	datac => \master_inst|bit_counter\(10),
	datad => \master_inst|bit_counter\(12),
	combout => \master_inst|Equal1~1_combout\);

-- Location: LCCOMB_X33_Y4_N28
\master_inst|Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Equal1~4_combout\ = (\master_inst|Equal1~3_combout\ & (\master_inst|Equal1~2_combout\ & (\master_inst|Equal1~0_combout\ & \master_inst|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|Equal1~3_combout\,
	datab => \master_inst|Equal1~2_combout\,
	datac => \master_inst|Equal1~0_combout\,
	datad => \master_inst|Equal1~1_combout\,
	combout => \master_inst|Equal1~4_combout\);

-- Location: LCCOMB_X33_Y4_N16
\master_inst|Equal1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Equal1~8_combout\ = (\master_inst|Equal1~7_combout\ & \master_inst|Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \master_inst|Equal1~7_combout\,
	datad => \master_inst|Equal1~4_combout\,
	combout => \master_inst|Equal1~8_combout\);

-- Location: LCCOMB_X31_Y4_N16
\master_inst|LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|LessThan2~0_combout\ = (\master_inst|bit_counter\(31)) # ((\master_inst|Equal1~8_combout\ & ((\master_inst|Equal1~9_combout\) # (!\master_inst|bit_counter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|Equal1~9_combout\,
	datab => \master_inst|bit_counter\(31),
	datac => \master_inst|bit_counter\(4),
	datad => \master_inst|Equal1~8_combout\,
	combout => \master_inst|LessThan2~0_combout\);

-- Location: LCCOMB_X31_Y4_N24
\master_inst|bit_counter[0]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|bit_counter[0]~94_combout\ = \master_inst|bit_counter\(0) $ (((\master_inst|cs_gen~q\ & \master_inst|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|cs_gen~q\,
	datac => \master_inst|bit_counter\(0),
	datad => \master_inst|LessThan2~0_combout\,
	combout => \master_inst|bit_counter[0]~94_combout\);

-- Location: FF_X31_Y4_N25
\master_inst|bit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \master_inst|bit_counter[0]~94_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|bit_counter\(0));

-- Location: LCCOMB_X34_Y5_N4
\master_inst|bit_counter[2]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|bit_counter[2]~33_combout\ = (\master_inst|bit_counter\(2) & (!\master_inst|bit_counter[1]~32\)) # (!\master_inst|bit_counter\(2) & ((\master_inst|bit_counter[1]~32\) # (GND)))
-- \master_inst|bit_counter[2]~34\ = CARRY((!\master_inst|bit_counter[1]~32\) # (!\master_inst|bit_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|bit_counter\(2),
	datad => VCC,
	cin => \master_inst|bit_counter[1]~32\,
	combout => \master_inst|bit_counter[2]~33_combout\,
	cout => \master_inst|bit_counter[2]~34\);

-- Location: FF_X34_Y5_N5
\master_inst|bit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \master_inst|bit_counter[2]~33_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|bit_counter[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|bit_counter\(2));

-- Location: LCCOMB_X34_Y5_N6
\master_inst|bit_counter[3]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|bit_counter[3]~36_combout\ = (\master_inst|bit_counter\(3) & (\master_inst|bit_counter[2]~34\ $ (GND))) # (!\master_inst|bit_counter\(3) & (!\master_inst|bit_counter[2]~34\ & VCC))
-- \master_inst|bit_counter[3]~37\ = CARRY((\master_inst|bit_counter\(3) & !\master_inst|bit_counter[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|bit_counter\(3),
	datad => VCC,
	cin => \master_inst|bit_counter[2]~34\,
	combout => \master_inst|bit_counter[3]~36_combout\,
	cout => \master_inst|bit_counter[3]~37\);

-- Location: FF_X34_Y5_N7
\master_inst|bit_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \master_inst|bit_counter[3]~36_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|bit_counter[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|bit_counter\(3));

-- Location: FF_X34_Y5_N9
\master_inst|bit_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \master_inst|bit_counter[4]~38_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|bit_counter[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|bit_counter\(4));

-- Location: LCCOMB_X31_Y4_N10
\master_inst|cs_gen~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|cs_gen~2_combout\ = (\master_inst|bit_counter\(4) & (((\master_inst|cs_gen~q\)))) # (!\master_inst|bit_counter\(4) & (!\master_inst|bit_counter\(31) & (!\master_inst|cs_gen~q\ & \master_inst|Equal1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|bit_counter\(4),
	datab => \master_inst|bit_counter\(31),
	datac => \master_inst|cs_gen~q\,
	datad => \master_inst|Equal1~9_combout\,
	combout => \master_inst|cs_gen~2_combout\);

-- Location: LCCOMB_X31_Y4_N22
\master_inst|cs_gen~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|cs_gen~0_combout\ = (\master_inst|bit_counter\(1) & (!\master_inst|bit_counter\(3) & !\master_inst|bit_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|bit_counter\(1),
	datac => \master_inst|bit_counter\(3),
	datad => \master_inst|bit_counter\(0),
	combout => \master_inst|cs_gen~0_combout\);

-- Location: LCCOMB_X31_Y4_N28
\master_inst|cs_gen~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|cs_gen~1_combout\ = (!\master_inst|bit_counter\(2) & (\master_inst|cs_gen~0_combout\ & !\master_inst|LessThan2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|bit_counter\(2),
	datac => \master_inst|cs_gen~0_combout\,
	datad => \master_inst|LessThan2~0_combout\,
	combout => \master_inst|cs_gen~1_combout\);

-- Location: LCCOMB_X31_Y4_N26
\master_inst|cs_gen~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|cs_gen~3_combout\ = (\master_inst|cs_gen~2_combout\ & ((\master_inst|cs_gen~q\ & ((!\master_inst|Equal1~8_combout\) # (!\master_inst|cs_gen~1_combout\))) # (!\master_inst|cs_gen~q\ & ((\master_inst|Equal1~8_combout\))))) # 
-- (!\master_inst|cs_gen~2_combout\ & (((\master_inst|cs_gen~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|cs_gen~2_combout\,
	datab => \master_inst|cs_gen~1_combout\,
	datac => \master_inst|cs_gen~q\,
	datad => \master_inst|Equal1~8_combout\,
	combout => \master_inst|cs_gen~3_combout\);

-- Location: FF_X31_Y4_N27
\master_inst|cs_gen\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \master_inst|cs_gen~3_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|cs_gen~q\);

-- Location: LCCOMB_X31_Y4_N14
\master_inst|Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Decoder0~0_combout\ = (!\master_inst|bit_counter\(2) & !\master_inst|bit_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|bit_counter\(2),
	datac => \master_inst|bit_counter\(1),
	combout => \master_inst|Decoder0~0_combout\);

-- Location: LCCOMB_X31_Y4_N18
\master_inst|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|LessThan0~0_combout\ = (\master_inst|bit_counter\(2) & ((\master_inst|bit_counter\(1)) # (\master_inst|bit_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|bit_counter\(2),
	datac => \master_inst|bit_counter\(1),
	datad => \master_inst|bit_counter\(0),
	combout => \master_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X31_Y4_N8
\master_inst|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|LessThan1~0_combout\ = (!\master_inst|bit_counter\(4) & (!\master_inst|LessThan0~0_combout\ & (!\master_inst|bit_counter\(3) & \master_inst|Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|bit_counter\(4),
	datab => \master_inst|LessThan0~0_combout\,
	datac => \master_inst|bit_counter\(3),
	datad => \master_inst|Equal1~8_combout\,
	combout => \master_inst|LessThan1~0_combout\);

-- Location: LCCOMB_X31_Y4_N12
\master_inst|mosi~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|mosi~0_combout\ = (\master_inst|cs_gen~q\ & (\master_inst|Decoder0~0_combout\ & ((\master_inst|LessThan1~0_combout\) # (\master_inst|bit_counter\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|cs_gen~q\,
	datab => \master_inst|Decoder0~0_combout\,
	datac => \master_inst|LessThan1~0_combout\,
	datad => \master_inst|bit_counter\(31),
	combout => \master_inst|mosi~0_combout\);

-- Location: FF_X31_Y4_N13
\master_inst|mosi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|ALT_INV_sclk_gen~clkctrl_outclk\,
	d => \master_inst|mosi~0_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|mosi~q\);

-- Location: IOIBUF_X60_Y8_N22
\MISO~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MISO,
	o => \MISO~input_o\);

-- Location: LCCOMB_X33_Y5_N20
\master_inst|LessThan4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|LessThan4~0_combout\ = ((!\master_inst|bit_counter\(1) & (!\master_inst|bit_counter\(2) & !\master_inst|bit_counter\(3)))) # (!\master_inst|bit_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|bit_counter\(1),
	datab => \master_inst|bit_counter\(4),
	datac => \master_inst|bit_counter\(2),
	datad => \master_inst|bit_counter\(3),
	combout => \master_inst|LessThan4~0_combout\);

-- Location: LCCOMB_X32_Y4_N16
\master_inst|LessThan4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|LessThan4~1_combout\ = (\master_inst|bit_counter\(31)) # ((\master_inst|LessThan4~0_combout\ & (\master_inst|Equal1~7_combout\ & \master_inst|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|bit_counter\(31),
	datab => \master_inst|LessThan4~0_combout\,
	datac => \master_inst|Equal1~7_combout\,
	datad => \master_inst|Equal1~4_combout\,
	combout => \master_inst|LessThan4~1_combout\);

-- Location: LCCOMB_X32_Y4_N2
\master_inst|Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Decoder0~1_combout\ = (!\master_inst|bit_counter\(3) & (\master_inst|bit_counter\(0) & (\master_inst|Decoder0~0_combout\ & \master_inst|LessThan4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|bit_counter\(3),
	datab => \master_inst|bit_counter\(0),
	datac => \master_inst|Decoder0~0_combout\,
	datad => \master_inst|LessThan4~1_combout\,
	combout => \master_inst|Decoder0~1_combout\);

-- Location: LCCOMB_X32_Y4_N4
\master_inst|reg_a~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|reg_a~0_combout\ = (\master_inst|cs_gen~q\ & ((\master_inst|Decoder0~1_combout\ & (\MISO~input_o\)) # (!\master_inst|Decoder0~1_combout\ & ((\master_inst|reg_a\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|cs_gen~q\,
	datab => \MISO~input_o\,
	datac => \master_inst|reg_a\(0),
	datad => \master_inst|Decoder0~1_combout\,
	combout => \master_inst|reg_a~0_combout\);

-- Location: LCCOMB_X33_Y4_N6
\master_inst|LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|LessThan3~0_combout\ = (!\master_inst|bit_counter\(31) & ((\master_inst|bit_counter\(3)) # ((\master_inst|bit_counter\(4)) # (!\master_inst|Equal1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|bit_counter\(3),
	datab => \master_inst|bit_counter\(4),
	datac => \master_inst|bit_counter\(31),
	datad => \master_inst|Equal1~8_combout\,
	combout => \master_inst|LessThan3~0_combout\);

-- Location: FF_X32_Y4_N5
\master_inst|reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|sclk_gen~clkctrl_outclk\,
	d => \master_inst|reg_a~0_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|LessThan3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|reg_a\(0));

-- Location: LCCOMB_X32_Y4_N20
\master_inst|reg_a~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|reg_a~1_combout\ = (\master_inst|Equal1~9_combout\ & ((\master_inst|LessThan4~1_combout\ & (\MISO~input_o\)) # (!\master_inst|LessThan4~1_combout\ & ((\master_inst|reg_a\(1)))))) # (!\master_inst|Equal1~9_combout\ & 
-- (((\master_inst|reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MISO~input_o\,
	datab => \master_inst|Equal1~9_combout\,
	datac => \master_inst|reg_a\(1),
	datad => \master_inst|LessThan4~1_combout\,
	combout => \master_inst|reg_a~1_combout\);

-- Location: LCCOMB_X33_Y4_N0
\master_inst|reg_a~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|reg_a~2_combout\ = (\master_inst|cs_gen~q\ & \master_inst|reg_a~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \master_inst|cs_gen~q\,
	datad => \master_inst|reg_a~1_combout\,
	combout => \master_inst|reg_a~2_combout\);

-- Location: FF_X33_Y4_N1
\master_inst|reg_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|sclk_gen~clkctrl_outclk\,
	d => \master_inst|reg_a~2_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|LessThan3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|reg_a\(1));

-- Location: LCCOMB_X32_Y4_N22
\master_inst|Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Decoder0~2_combout\ = (\master_inst|bit_counter\(2) & \master_inst|bit_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|bit_counter\(2),
	datad => \master_inst|bit_counter\(1),
	combout => \master_inst|Decoder0~2_combout\);

-- Location: LCCOMB_X32_Y4_N8
\master_inst|Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Decoder0~3_combout\ = (\master_inst|bit_counter\(3) & (\master_inst|bit_counter\(0) & (\master_inst|Decoder0~2_combout\ & \master_inst|LessThan4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|bit_counter\(3),
	datab => \master_inst|bit_counter\(0),
	datac => \master_inst|Decoder0~2_combout\,
	datad => \master_inst|LessThan4~1_combout\,
	combout => \master_inst|Decoder0~3_combout\);

-- Location: LCCOMB_X33_Y4_N18
\master_inst|reg_a~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|reg_a~3_combout\ = (\master_inst|cs_gen~q\ & ((\master_inst|Decoder0~3_combout\ & (\MISO~input_o\)) # (!\master_inst|Decoder0~3_combout\ & ((\master_inst|reg_a\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|cs_gen~q\,
	datab => \MISO~input_o\,
	datac => \master_inst|reg_a\(2),
	datad => \master_inst|Decoder0~3_combout\,
	combout => \master_inst|reg_a~3_combout\);

-- Location: FF_X33_Y4_N19
\master_inst|reg_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|sclk_gen~clkctrl_outclk\,
	d => \master_inst|reg_a~3_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|LessThan3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|reg_a\(2));

-- Location: LCCOMB_X32_Y4_N14
\master_inst|Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Decoder0~4_combout\ = (\master_inst|bit_counter\(3) & (!\master_inst|bit_counter\(0) & (\master_inst|Decoder0~2_combout\ & \master_inst|LessThan4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|bit_counter\(3),
	datab => \master_inst|bit_counter\(0),
	datac => \master_inst|Decoder0~2_combout\,
	datad => \master_inst|LessThan4~1_combout\,
	combout => \master_inst|Decoder0~4_combout\);

-- Location: LCCOMB_X33_Y4_N20
\master_inst|reg_a~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|reg_a~4_combout\ = (\master_inst|cs_gen~q\ & ((\master_inst|Decoder0~4_combout\ & (\MISO~input_o\)) # (!\master_inst|Decoder0~4_combout\ & ((\master_inst|reg_a\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|cs_gen~q\,
	datab => \MISO~input_o\,
	datac => \master_inst|reg_a\(3),
	datad => \master_inst|Decoder0~4_combout\,
	combout => \master_inst|reg_a~4_combout\);

-- Location: FF_X33_Y4_N21
\master_inst|reg_a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|sclk_gen~clkctrl_outclk\,
	d => \master_inst|reg_a~4_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|LessThan3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|reg_a\(3));

-- Location: LCCOMB_X32_Y5_N28
\master_inst|Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Decoder0~5_combout\ = (\master_inst|bit_counter\(2) & !\master_inst|bit_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|bit_counter\(2),
	datac => \master_inst|bit_counter\(1),
	combout => \master_inst|Decoder0~5_combout\);

-- Location: LCCOMB_X31_Y4_N20
\master_inst|Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Decoder0~6_combout\ = (\master_inst|Decoder0~5_combout\ & (\master_inst|bit_counter\(0) & (\master_inst|bit_counter\(3) & \master_inst|LessThan4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|Decoder0~5_combout\,
	datab => \master_inst|bit_counter\(0),
	datac => \master_inst|bit_counter\(3),
	datad => \master_inst|LessThan4~1_combout\,
	combout => \master_inst|Decoder0~6_combout\);

-- Location: LCCOMB_X31_Y4_N4
\master_inst|reg_a~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|reg_a~5_combout\ = (\master_inst|cs_gen~q\ & ((\master_inst|Decoder0~6_combout\ & (\MISO~input_o\)) # (!\master_inst|Decoder0~6_combout\ & ((\master_inst|reg_a\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|cs_gen~q\,
	datab => \MISO~input_o\,
	datac => \master_inst|reg_a\(4),
	datad => \master_inst|Decoder0~6_combout\,
	combout => \master_inst|reg_a~5_combout\);

-- Location: FF_X31_Y4_N5
\master_inst|reg_a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|sclk_gen~clkctrl_outclk\,
	d => \master_inst|reg_a~5_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|LessThan3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|reg_a\(4));

-- Location: LCCOMB_X32_Y4_N12
\master_inst|Decoder0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Decoder0~7_combout\ = (\master_inst|bit_counter\(3) & (!\master_inst|bit_counter\(0) & (\master_inst|Decoder0~5_combout\ & \master_inst|LessThan4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|bit_counter\(3),
	datab => \master_inst|bit_counter\(0),
	datac => \master_inst|Decoder0~5_combout\,
	datad => \master_inst|LessThan4~1_combout\,
	combout => \master_inst|Decoder0~7_combout\);

-- Location: LCCOMB_X33_Y4_N2
\master_inst|reg_a~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|reg_a~6_combout\ = (\master_inst|cs_gen~q\ & ((\master_inst|Decoder0~7_combout\ & (\MISO~input_o\)) # (!\master_inst|Decoder0~7_combout\ & ((\master_inst|reg_a\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|cs_gen~q\,
	datab => \MISO~input_o\,
	datac => \master_inst|reg_a\(5),
	datad => \master_inst|Decoder0~7_combout\,
	combout => \master_inst|reg_a~6_combout\);

-- Location: FF_X33_Y4_N3
\master_inst|reg_a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|sclk_gen~clkctrl_outclk\,
	d => \master_inst|reg_a~6_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|LessThan3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|reg_a\(5));

-- Location: LCCOMB_X32_Y4_N26
\master_inst|cs_gen~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|cs_gen~4_combout\ = (!\master_inst|bit_counter\(2) & \master_inst|bit_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \master_inst|bit_counter\(2),
	datad => \master_inst|bit_counter\(1),
	combout => \master_inst|cs_gen~4_combout\);

-- Location: LCCOMB_X32_Y4_N0
\master_inst|Decoder0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Decoder0~8_combout\ = (\master_inst|bit_counter\(3) & (\master_inst|bit_counter\(0) & (\master_inst|cs_gen~4_combout\ & \master_inst|LessThan4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|bit_counter\(3),
	datab => \master_inst|bit_counter\(0),
	datac => \master_inst|cs_gen~4_combout\,
	datad => \master_inst|LessThan4~1_combout\,
	combout => \master_inst|Decoder0~8_combout\);

-- Location: LCCOMB_X32_Y4_N18
\master_inst|reg_a~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|reg_a~7_combout\ = (\master_inst|cs_gen~q\ & ((\master_inst|Decoder0~8_combout\ & (\MISO~input_o\)) # (!\master_inst|Decoder0~8_combout\ & ((\master_inst|reg_a\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|cs_gen~q\,
	datab => \MISO~input_o\,
	datac => \master_inst|reg_a\(6),
	datad => \master_inst|Decoder0~8_combout\,
	combout => \master_inst|reg_a~7_combout\);

-- Location: FF_X32_Y4_N19
\master_inst|reg_a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|sclk_gen~clkctrl_outclk\,
	d => \master_inst|reg_a~7_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|LessThan3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|reg_a\(6));

-- Location: LCCOMB_X32_Y4_N10
\master_inst|Decoder0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Decoder0~9_combout\ = (\master_inst|bit_counter\(3) & (!\master_inst|bit_counter\(0) & (\master_inst|cs_gen~4_combout\ & \master_inst|LessThan4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|bit_counter\(3),
	datab => \master_inst|bit_counter\(0),
	datac => \master_inst|cs_gen~4_combout\,
	datad => \master_inst|LessThan4~1_combout\,
	combout => \master_inst|Decoder0~9_combout\);

-- Location: LCCOMB_X33_Y4_N24
\master_inst|reg_a~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|reg_a~8_combout\ = (\master_inst|cs_gen~q\ & ((\master_inst|Decoder0~9_combout\ & ((\MISO~input_o\))) # (!\master_inst|Decoder0~9_combout\ & (\master_inst|reg_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|cs_gen~q\,
	datab => \master_inst|Decoder0~9_combout\,
	datac => \master_inst|reg_a\(7),
	datad => \MISO~input_o\,
	combout => \master_inst|reg_a~8_combout\);

-- Location: FF_X33_Y4_N25
\master_inst|reg_a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|sclk_gen~clkctrl_outclk\,
	d => \master_inst|reg_a~8_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|LessThan3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|reg_a\(7));

-- Location: LCCOMB_X32_Y4_N24
\master_inst|Decoder0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Decoder0~10_combout\ = (\master_inst|bit_counter\(3) & (\master_inst|bit_counter\(0) & (\master_inst|Decoder0~0_combout\ & \master_inst|LessThan4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|bit_counter\(3),
	datab => \master_inst|bit_counter\(0),
	datac => \master_inst|Decoder0~0_combout\,
	datad => \master_inst|LessThan4~1_combout\,
	combout => \master_inst|Decoder0~10_combout\);

-- Location: LCCOMB_X33_Y4_N22
\master_inst|reg_a~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|reg_a~9_combout\ = (\master_inst|cs_gen~q\ & ((\master_inst|Decoder0~10_combout\ & (\MISO~input_o\)) # (!\master_inst|Decoder0~10_combout\ & ((\master_inst|reg_a\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|cs_gen~q\,
	datab => \MISO~input_o\,
	datac => \master_inst|reg_a\(8),
	datad => \master_inst|Decoder0~10_combout\,
	combout => \master_inst|reg_a~9_combout\);

-- Location: FF_X33_Y4_N23
\master_inst|reg_a[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|sclk_gen~clkctrl_outclk\,
	d => \master_inst|reg_a~9_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|LessThan3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|reg_a\(8));

-- Location: LCCOMB_X32_Y4_N30
\master_inst|Decoder0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|Decoder0~11_combout\ = (\master_inst|bit_counter\(3) & (!\master_inst|bit_counter\(0) & (\master_inst|Decoder0~0_combout\ & \master_inst|LessThan4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|bit_counter\(3),
	datab => \master_inst|bit_counter\(0),
	datac => \master_inst|Decoder0~0_combout\,
	datad => \master_inst|LessThan4~1_combout\,
	combout => \master_inst|Decoder0~11_combout\);

-- Location: LCCOMB_X33_Y4_N4
\master_inst|reg_a~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_inst|reg_a~10_combout\ = (\master_inst|cs_gen~q\ & ((\master_inst|Decoder0~11_combout\ & (\MISO~input_o\)) # (!\master_inst|Decoder0~11_combout\ & ((\master_inst|reg_a\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|cs_gen~q\,
	datab => \MISO~input_o\,
	datac => \master_inst|reg_a\(9),
	datad => \master_inst|Decoder0~11_combout\,
	combout => \master_inst|reg_a~10_combout\);

-- Location: FF_X33_Y4_N5
\master_inst|reg_a[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_inst|sclk_gen~clkctrl_outclk\,
	d => \master_inst|reg_a~10_combout\,
	clrn => \ALT_INV_reset_master~input_o\,
	ena => \master_inst|LessThan3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_inst|reg_a\(9));

-- Location: FF_X35_Y23_N23
\test_inst|div_clk_new[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk_new\(11));

-- Location: FF_X35_Y22_N29
\test_inst|div_clk_new[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add1~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk_new\(30));

-- Location: LCCOMB_X35_Y23_N22
\test_inst|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add1~22_combout\ = (\test_inst|div_clk_new\(11) & (!\test_inst|Add1~21\)) # (!\test_inst|div_clk_new\(11) & ((\test_inst|Add1~21\) # (GND)))
-- \test_inst|Add1~23\ = CARRY((!\test_inst|Add1~21\) # (!\test_inst|div_clk_new\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|div_clk_new\(11),
	datad => VCC,
	cin => \test_inst|Add1~21\,
	combout => \test_inst|Add1~22_combout\,
	cout => \test_inst|Add1~23\);

-- Location: LCCOMB_X35_Y23_N24
\test_inst|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add1~24_combout\ = (\test_inst|div_clk_new\(12) & (\test_inst|Add1~23\ $ (GND))) # (!\test_inst|div_clk_new\(12) & (!\test_inst|Add1~23\ & VCC))
-- \test_inst|Add1~25\ = CARRY((\test_inst|div_clk_new\(12) & !\test_inst|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|div_clk_new\(12),
	datad => VCC,
	cin => \test_inst|Add1~23\,
	combout => \test_inst|Add1~24_combout\,
	cout => \test_inst|Add1~25\);

-- Location: FF_X35_Y23_N25
\test_inst|div_clk_new[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk_new\(12));

-- Location: LCCOMB_X35_Y23_N26
\test_inst|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add1~26_combout\ = (\test_inst|div_clk_new\(13) & (!\test_inst|Add1~25\)) # (!\test_inst|div_clk_new\(13) & ((\test_inst|Add1~25\) # (GND)))
-- \test_inst|Add1~27\ = CARRY((!\test_inst|Add1~25\) # (!\test_inst|div_clk_new\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|div_clk_new\(13),
	datad => VCC,
	cin => \test_inst|Add1~25\,
	combout => \test_inst|Add1~26_combout\,
	cout => \test_inst|Add1~27\);

-- Location: FF_X35_Y23_N27
\test_inst|div_clk_new[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk_new\(13));

-- Location: LCCOMB_X35_Y23_N28
\test_inst|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add1~28_combout\ = (\test_inst|div_clk_new\(14) & (\test_inst|Add1~27\ $ (GND))) # (!\test_inst|div_clk_new\(14) & (!\test_inst|Add1~27\ & VCC))
-- \test_inst|Add1~29\ = CARRY((\test_inst|div_clk_new\(14) & !\test_inst|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|div_clk_new\(14),
	datad => VCC,
	cin => \test_inst|Add1~27\,
	combout => \test_inst|Add1~28_combout\,
	cout => \test_inst|Add1~29\);

-- Location: LCCOMB_X34_Y23_N26
\test_inst|div_clk_new~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|div_clk_new~3_combout\ = (\test_inst|Add1~28_combout\ & !\test_inst|Equal3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|Add1~28_combout\,
	datac => \test_inst|Equal3~4_combout\,
	combout => \test_inst|div_clk_new~3_combout\);

-- Location: FF_X34_Y23_N27
\test_inst|div_clk_new[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|div_clk_new~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk_new\(14));

-- Location: LCCOMB_X35_Y23_N30
\test_inst|Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add1~30_combout\ = (\test_inst|div_clk_new\(15) & (!\test_inst|Add1~29\)) # (!\test_inst|div_clk_new\(15) & ((\test_inst|Add1~29\) # (GND)))
-- \test_inst|Add1~31\ = CARRY((!\test_inst|Add1~29\) # (!\test_inst|div_clk_new\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|div_clk_new\(15),
	datad => VCC,
	cin => \test_inst|Add1~29\,
	combout => \test_inst|Add1~30_combout\,
	cout => \test_inst|Add1~31\);

-- Location: LCCOMB_X34_Y23_N2
\test_inst|div_clk_new~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|div_clk_new~5_combout\ = (!\test_inst|Equal3~4_combout\ & \test_inst|Add1~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|Equal3~4_combout\,
	datac => \test_inst|Add1~30_combout\,
	combout => \test_inst|div_clk_new~5_combout\);

-- Location: FF_X34_Y23_N3
\test_inst|div_clk_new[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|div_clk_new~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk_new\(15));

-- Location: LCCOMB_X35_Y22_N0
\test_inst|Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add1~32_combout\ = (\test_inst|div_clk_new\(16) & (\test_inst|Add1~31\ $ (GND))) # (!\test_inst|div_clk_new\(16) & (!\test_inst|Add1~31\ & VCC))
-- \test_inst|Add1~33\ = CARRY((\test_inst|div_clk_new\(16) & !\test_inst|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|div_clk_new\(16),
	datad => VCC,
	cin => \test_inst|Add1~31\,
	combout => \test_inst|Add1~32_combout\,
	cout => \test_inst|Add1~33\);

-- Location: FF_X35_Y22_N1
\test_inst|div_clk_new[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add1~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk_new\(16));

-- Location: LCCOMB_X35_Y22_N2
\test_inst|Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add1~34_combout\ = (\test_inst|div_clk_new\(17) & (!\test_inst|Add1~33\)) # (!\test_inst|div_clk_new\(17) & ((\test_inst|Add1~33\) # (GND)))
-- \test_inst|Add1~35\ = CARRY((!\test_inst|Add1~33\) # (!\test_inst|div_clk_new\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|div_clk_new\(17),
	datad => VCC,
	cin => \test_inst|Add1~33\,
	combout => \test_inst|Add1~34_combout\,
	cout => \test_inst|Add1~35\);

-- Location: FF_X35_Y22_N3
\test_inst|div_clk_new[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add1~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk_new\(17));

-- Location: LCCOMB_X35_Y22_N4
\test_inst|Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add1~36_combout\ = (\test_inst|div_clk_new\(18) & (\test_inst|Add1~35\ $ (GND))) # (!\test_inst|div_clk_new\(18) & (!\test_inst|Add1~35\ & VCC))
-- \test_inst|Add1~37\ = CARRY((\test_inst|div_clk_new\(18) & !\test_inst|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|div_clk_new\(18),
	datad => VCC,
	cin => \test_inst|Add1~35\,
	combout => \test_inst|Add1~36_combout\,
	cout => \test_inst|Add1~37\);

-- Location: FF_X35_Y22_N5
\test_inst|div_clk_new[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add1~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk_new\(18));

-- Location: LCCOMB_X35_Y22_N6
\test_inst|Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add1~38_combout\ = (\test_inst|div_clk_new\(19) & (!\test_inst|Add1~37\)) # (!\test_inst|div_clk_new\(19) & ((\test_inst|Add1~37\) # (GND)))
-- \test_inst|Add1~39\ = CARRY((!\test_inst|Add1~37\) # (!\test_inst|div_clk_new\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|div_clk_new\(19),
	datad => VCC,
	cin => \test_inst|Add1~37\,
	combout => \test_inst|Add1~38_combout\,
	cout => \test_inst|Add1~39\);

-- Location: FF_X35_Y22_N7
\test_inst|div_clk_new[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add1~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk_new\(19));

-- Location: LCCOMB_X35_Y22_N8
\test_inst|Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add1~40_combout\ = (\test_inst|div_clk_new\(20) & (\test_inst|Add1~39\ $ (GND))) # (!\test_inst|div_clk_new\(20) & (!\test_inst|Add1~39\ & VCC))
-- \test_inst|Add1~41\ = CARRY((\test_inst|div_clk_new\(20) & !\test_inst|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|div_clk_new\(20),
	datad => VCC,
	cin => \test_inst|Add1~39\,
	combout => \test_inst|Add1~40_combout\,
	cout => \test_inst|Add1~41\);

-- Location: FF_X35_Y22_N9
\test_inst|div_clk_new[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add1~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk_new\(20));

-- Location: LCCOMB_X35_Y22_N10
\test_inst|Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add1~42_combout\ = (\test_inst|div_clk_new\(21) & (!\test_inst|Add1~41\)) # (!\test_inst|div_clk_new\(21) & ((\test_inst|Add1~41\) # (GND)))
-- \test_inst|Add1~43\ = CARRY((!\test_inst|Add1~41\) # (!\test_inst|div_clk_new\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|div_clk_new\(21),
	datad => VCC,
	cin => \test_inst|Add1~41\,
	combout => \test_inst|Add1~42_combout\,
	cout => \test_inst|Add1~43\);

-- Location: FF_X35_Y22_N11
\test_inst|div_clk_new[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add1~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk_new\(21));

-- Location: LCCOMB_X35_Y22_N12
\test_inst|Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add1~44_combout\ = (\test_inst|div_clk_new\(22) & (\test_inst|Add1~43\ $ (GND))) # (!\test_inst|div_clk_new\(22) & (!\test_inst|Add1~43\ & VCC))
-- \test_inst|Add1~45\ = CARRY((\test_inst|div_clk_new\(22) & !\test_inst|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|div_clk_new\(22),
	datad => VCC,
	cin => \test_inst|Add1~43\,
	combout => \test_inst|Add1~44_combout\,
	cout => \test_inst|Add1~45\);

-- Location: FF_X35_Y22_N13
\test_inst|div_clk_new[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add1~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk_new\(22));

-- Location: LCCOMB_X35_Y22_N14
\test_inst|Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add1~46_combout\ = (\test_inst|div_clk_new\(23) & (!\test_inst|Add1~45\)) # (!\test_inst|div_clk_new\(23) & ((\test_inst|Add1~45\) # (GND)))
-- \test_inst|Add1~47\ = CARRY((!\test_inst|Add1~45\) # (!\test_inst|div_clk_new\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|div_clk_new\(23),
	datad => VCC,
	cin => \test_inst|Add1~45\,
	combout => \test_inst|Add1~46_combout\,
	cout => \test_inst|Add1~47\);

-- Location: FF_X35_Y22_N15
\test_inst|div_clk_new[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add1~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk_new\(23));

-- Location: LCCOMB_X35_Y22_N16
\test_inst|Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add1~48_combout\ = (\test_inst|div_clk_new\(24) & (\test_inst|Add1~47\ $ (GND))) # (!\test_inst|div_clk_new\(24) & (!\test_inst|Add1~47\ & VCC))
-- \test_inst|Add1~49\ = CARRY((\test_inst|div_clk_new\(24) & !\test_inst|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|div_clk_new\(24),
	datad => VCC,
	cin => \test_inst|Add1~47\,
	combout => \test_inst|Add1~48_combout\,
	cout => \test_inst|Add1~49\);

-- Location: FF_X35_Y22_N17
\test_inst|div_clk_new[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add1~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk_new\(24));

-- Location: LCCOMB_X35_Y22_N18
\test_inst|Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add1~50_combout\ = (\test_inst|div_clk_new\(25) & (!\test_inst|Add1~49\)) # (!\test_inst|div_clk_new\(25) & ((\test_inst|Add1~49\) # (GND)))
-- \test_inst|Add1~51\ = CARRY((!\test_inst|Add1~49\) # (!\test_inst|div_clk_new\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|div_clk_new\(25),
	datad => VCC,
	cin => \test_inst|Add1~49\,
	combout => \test_inst|Add1~50_combout\,
	cout => \test_inst|Add1~51\);

-- Location: FF_X35_Y22_N19
\test_inst|div_clk_new[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add1~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk_new\(25));

-- Location: LCCOMB_X35_Y22_N20
\test_inst|Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add1~52_combout\ = (\test_inst|div_clk_new\(26) & (\test_inst|Add1~51\ $ (GND))) # (!\test_inst|div_clk_new\(26) & (!\test_inst|Add1~51\ & VCC))
-- \test_inst|Add1~53\ = CARRY((\test_inst|div_clk_new\(26) & !\test_inst|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|div_clk_new\(26),
	datad => VCC,
	cin => \test_inst|Add1~51\,
	combout => \test_inst|Add1~52_combout\,
	cout => \test_inst|Add1~53\);

-- Location: FF_X35_Y22_N21
\test_inst|div_clk_new[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add1~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk_new\(26));

-- Location: LCCOMB_X35_Y22_N22
\test_inst|Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add1~54_combout\ = (\test_inst|div_clk_new\(27) & (!\test_inst|Add1~53\)) # (!\test_inst|div_clk_new\(27) & ((\test_inst|Add1~53\) # (GND)))
-- \test_inst|Add1~55\ = CARRY((!\test_inst|Add1~53\) # (!\test_inst|div_clk_new\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|div_clk_new\(27),
	datad => VCC,
	cin => \test_inst|Add1~53\,
	combout => \test_inst|Add1~54_combout\,
	cout => \test_inst|Add1~55\);

-- Location: FF_X35_Y22_N23
\test_inst|div_clk_new[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add1~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk_new\(27));

-- Location: LCCOMB_X35_Y22_N24
\test_inst|Add1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add1~56_combout\ = (\test_inst|div_clk_new\(28) & (\test_inst|Add1~55\ $ (GND))) # (!\test_inst|div_clk_new\(28) & (!\test_inst|Add1~55\ & VCC))
-- \test_inst|Add1~57\ = CARRY((\test_inst|div_clk_new\(28) & !\test_inst|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|div_clk_new\(28),
	datad => VCC,
	cin => \test_inst|Add1~55\,
	combout => \test_inst|Add1~56_combout\,
	cout => \test_inst|Add1~57\);

-- Location: FF_X35_Y22_N25
\test_inst|div_clk_new[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add1~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk_new\(28));

-- Location: LCCOMB_X35_Y22_N26
\test_inst|Add1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add1~58_combout\ = (\test_inst|div_clk_new\(29) & (!\test_inst|Add1~57\)) # (!\test_inst|div_clk_new\(29) & ((\test_inst|Add1~57\) # (GND)))
-- \test_inst|Add1~59\ = CARRY((!\test_inst|Add1~57\) # (!\test_inst|div_clk_new\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|div_clk_new\(29),
	datad => VCC,
	cin => \test_inst|Add1~57\,
	combout => \test_inst|Add1~58_combout\,
	cout => \test_inst|Add1~59\);

-- Location: FF_X35_Y22_N27
\test_inst|div_clk_new[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add1~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk_new\(29));

-- Location: LCCOMB_X35_Y22_N28
\test_inst|Add1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add1~60_combout\ = (\test_inst|div_clk_new\(30) & (\test_inst|Add1~59\ $ (GND))) # (!\test_inst|div_clk_new\(30) & (!\test_inst|Add1~59\ & VCC))
-- \test_inst|Add1~61\ = CARRY((\test_inst|div_clk_new\(30) & !\test_inst|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|div_clk_new\(30),
	datad => VCC,
	cin => \test_inst|Add1~59\,
	combout => \test_inst|Add1~60_combout\,
	cout => \test_inst|Add1~61\);

-- Location: FF_X35_Y22_N31
\test_inst|div_clk_new[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add1~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk_new\(31));

-- Location: LCCOMB_X35_Y22_N30
\test_inst|Add1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add1~62_combout\ = \test_inst|div_clk_new\(31) $ (\test_inst|Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|div_clk_new\(31),
	cin => \test_inst|Add1~61\,
	combout => \test_inst|Add1~62_combout\);

-- Location: LCCOMB_X34_Y23_N0
\test_inst|Equal2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal2~5_combout\ = (!\test_inst|Add1~48_combout\ & (!\test_inst|Add1~54_combout\ & (!\test_inst|Add1~50_combout\ & !\test_inst|Add1~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Add1~48_combout\,
	datab => \test_inst|Add1~54_combout\,
	datac => \test_inst|Add1~50_combout\,
	datad => \test_inst|Add1~52_combout\,
	combout => \test_inst|Equal2~5_combout\);

-- Location: LCCOMB_X34_Y23_N30
\test_inst|Equal3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal3~3_combout\ = (!\test_inst|Add1~58_combout\ & \test_inst|Equal2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Add1~58_combout\,
	datad => \test_inst|Equal2~5_combout\,
	combout => \test_inst|Equal3~3_combout\);

-- Location: FF_X35_Y23_N15
\test_inst|div_clk_new[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk_new\(7));

-- Location: LCCOMB_X35_Y23_N0
\test_inst|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add1~0_combout\ = \test_inst|div_clk_new\(0) $ (VCC)
-- \test_inst|Add1~1\ = CARRY(\test_inst|div_clk_new\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|div_clk_new\(0),
	datad => VCC,
	combout => \test_inst|Add1~0_combout\,
	cout => \test_inst|Add1~1\);

-- Location: FF_X35_Y23_N1
\test_inst|div_clk_new[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk_new\(0));

-- Location: LCCOMB_X35_Y23_N2
\test_inst|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add1~2_combout\ = (\test_inst|div_clk_new\(1) & (!\test_inst|Add1~1\)) # (!\test_inst|div_clk_new\(1) & ((\test_inst|Add1~1\) # (GND)))
-- \test_inst|Add1~3\ = CARRY((!\test_inst|Add1~1\) # (!\test_inst|div_clk_new\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|div_clk_new\(1),
	datad => VCC,
	cin => \test_inst|Add1~1\,
	combout => \test_inst|Add1~2_combout\,
	cout => \test_inst|Add1~3\);

-- Location: FF_X35_Y23_N3
\test_inst|div_clk_new[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk_new\(1));

-- Location: LCCOMB_X35_Y23_N4
\test_inst|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add1~4_combout\ = (\test_inst|div_clk_new\(2) & (\test_inst|Add1~3\ $ (GND))) # (!\test_inst|div_clk_new\(2) & (!\test_inst|Add1~3\ & VCC))
-- \test_inst|Add1~5\ = CARRY((\test_inst|div_clk_new\(2) & !\test_inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|div_clk_new\(2),
	datad => VCC,
	cin => \test_inst|Add1~3\,
	combout => \test_inst|Add1~4_combout\,
	cout => \test_inst|Add1~5\);

-- Location: FF_X35_Y23_N5
\test_inst|div_clk_new[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk_new\(2));

-- Location: LCCOMB_X35_Y23_N6
\test_inst|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add1~6_combout\ = (\test_inst|div_clk_new\(3) & (!\test_inst|Add1~5\)) # (!\test_inst|div_clk_new\(3) & ((\test_inst|Add1~5\) # (GND)))
-- \test_inst|Add1~7\ = CARRY((!\test_inst|Add1~5\) # (!\test_inst|div_clk_new\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|div_clk_new\(3),
	datad => VCC,
	cin => \test_inst|Add1~5\,
	combout => \test_inst|Add1~6_combout\,
	cout => \test_inst|Add1~7\);

-- Location: FF_X35_Y23_N7
\test_inst|div_clk_new[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk_new\(3));

-- Location: LCCOMB_X35_Y23_N8
\test_inst|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add1~8_combout\ = (\test_inst|div_clk_new\(4) & (\test_inst|Add1~7\ $ (GND))) # (!\test_inst|div_clk_new\(4) & (!\test_inst|Add1~7\ & VCC))
-- \test_inst|Add1~9\ = CARRY((\test_inst|div_clk_new\(4) & !\test_inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|div_clk_new\(4),
	datad => VCC,
	cin => \test_inst|Add1~7\,
	combout => \test_inst|Add1~8_combout\,
	cout => \test_inst|Add1~9\);

-- Location: LCCOMB_X34_Y23_N10
\test_inst|div_clk_new~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|div_clk_new~2_combout\ = (\test_inst|Add1~8_combout\ & !\test_inst|Equal3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|Add1~8_combout\,
	datac => \test_inst|Equal3~4_combout\,
	combout => \test_inst|div_clk_new~2_combout\);

-- Location: FF_X34_Y23_N11
\test_inst|div_clk_new[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|div_clk_new~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk_new\(4));

-- Location: LCCOMB_X35_Y23_N10
\test_inst|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add1~10_combout\ = (\test_inst|div_clk_new\(5) & (!\test_inst|Add1~9\)) # (!\test_inst|div_clk_new\(5) & ((\test_inst|Add1~9\) # (GND)))
-- \test_inst|Add1~11\ = CARRY((!\test_inst|Add1~9\) # (!\test_inst|div_clk_new\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|div_clk_new\(5),
	datad => VCC,
	cin => \test_inst|Add1~9\,
	combout => \test_inst|Add1~10_combout\,
	cout => \test_inst|Add1~11\);

-- Location: FF_X35_Y23_N11
\test_inst|div_clk_new[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk_new\(5));

-- Location: LCCOMB_X35_Y23_N12
\test_inst|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add1~12_combout\ = (\test_inst|div_clk_new\(6) & (\test_inst|Add1~11\ $ (GND))) # (!\test_inst|div_clk_new\(6) & (!\test_inst|Add1~11\ & VCC))
-- \test_inst|Add1~13\ = CARRY((\test_inst|div_clk_new\(6) & !\test_inst|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|div_clk_new\(6),
	datad => VCC,
	cin => \test_inst|Add1~11\,
	combout => \test_inst|Add1~12_combout\,
	cout => \test_inst|Add1~13\);

-- Location: LCCOMB_X34_Y23_N12
\test_inst|div_clk_new~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|div_clk_new~1_combout\ = (\test_inst|Add1~12_combout\ & !\test_inst|Equal3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Add1~12_combout\,
	datac => \test_inst|Equal3~4_combout\,
	combout => \test_inst|div_clk_new~1_combout\);

-- Location: FF_X34_Y23_N13
\test_inst|div_clk_new[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|div_clk_new~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk_new\(6));

-- Location: LCCOMB_X35_Y23_N14
\test_inst|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add1~14_combout\ = (\test_inst|div_clk_new\(7) & (!\test_inst|Add1~13\)) # (!\test_inst|div_clk_new\(7) & ((\test_inst|Add1~13\) # (GND)))
-- \test_inst|Add1~15\ = CARRY((!\test_inst|Add1~13\) # (!\test_inst|div_clk_new\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|div_clk_new\(7),
	datad => VCC,
	cin => \test_inst|Add1~13\,
	combout => \test_inst|Add1~14_combout\,
	cout => \test_inst|Add1~15\);

-- Location: LCCOMB_X33_Y23_N10
\test_inst|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal3~0_combout\ = (!\test_inst|Add1~6_combout\ & (!\test_inst|Add1~10_combout\ & (\test_inst|Add1~12_combout\ & \test_inst|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Add1~6_combout\,
	datab => \test_inst|Add1~10_combout\,
	datac => \test_inst|Add1~12_combout\,
	datad => \test_inst|Add1~8_combout\,
	combout => \test_inst|Equal3~0_combout\);

-- Location: LCCOMB_X35_Y23_N16
\test_inst|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add1~16_combout\ = (\test_inst|div_clk_new\(8) & (\test_inst|Add1~15\ $ (GND))) # (!\test_inst|div_clk_new\(8) & (!\test_inst|Add1~15\ & VCC))
-- \test_inst|Add1~17\ = CARRY((\test_inst|div_clk_new\(8) & !\test_inst|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|div_clk_new\(8),
	datad => VCC,
	cin => \test_inst|Add1~15\,
	combout => \test_inst|Add1~16_combout\,
	cout => \test_inst|Add1~17\);

-- Location: LCCOMB_X34_Y23_N8
\test_inst|div_clk_new~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|div_clk_new~0_combout\ = (\test_inst|Add1~16_combout\ & !\test_inst|Equal3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|Add1~16_combout\,
	datac => \test_inst|Equal3~4_combout\,
	combout => \test_inst|div_clk_new~0_combout\);

-- Location: FF_X34_Y23_N9
\test_inst|div_clk_new[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|div_clk_new~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk_new\(8));

-- Location: LCCOMB_X35_Y23_N18
\test_inst|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add1~18_combout\ = (\test_inst|div_clk_new\(9) & (!\test_inst|Add1~17\)) # (!\test_inst|div_clk_new\(9) & ((\test_inst|Add1~17\) # (GND)))
-- \test_inst|Add1~19\ = CARRY((!\test_inst|Add1~17\) # (!\test_inst|div_clk_new\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|div_clk_new\(9),
	datad => VCC,
	cin => \test_inst|Add1~17\,
	combout => \test_inst|Add1~18_combout\,
	cout => \test_inst|Add1~19\);

-- Location: LCCOMB_X34_Y23_N18
\test_inst|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal3~1_combout\ = (!\test_inst|Add1~14_combout\ & (!\test_inst|Add1~26_combout\ & (\test_inst|Equal3~0_combout\ & \test_inst|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Add1~14_combout\,
	datab => \test_inst|Add1~26_combout\,
	datac => \test_inst|Equal3~0_combout\,
	datad => \test_inst|Add1~18_combout\,
	combout => \test_inst|Equal3~1_combout\);

-- Location: LCCOMB_X34_Y23_N16
\test_inst|Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal3~2_combout\ = (!\test_inst|Add1~56_combout\ & (\test_inst|Equal3~1_combout\ & (\test_inst|Add1~30_combout\ & \test_inst|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Add1~56_combout\,
	datab => \test_inst|Equal3~1_combout\,
	datac => \test_inst|Add1~30_combout\,
	datad => \test_inst|Equal2~4_combout\,
	combout => \test_inst|Equal3~2_combout\);

-- Location: LCCOMB_X34_Y23_N14
\test_inst|Equal3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal3~4_combout\ = (!\test_inst|Add1~60_combout\ & (!\test_inst|Add1~62_combout\ & (\test_inst|Equal3~3_combout\ & \test_inst|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Add1~60_combout\,
	datab => \test_inst|Add1~62_combout\,
	datac => \test_inst|Equal3~3_combout\,
	datad => \test_inst|Equal3~2_combout\,
	combout => \test_inst|Equal3~4_combout\);

-- Location: LCCOMB_X34_Y23_N28
\test_inst|div_clk_new~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|div_clk_new~4_combout\ = (!\test_inst|Equal3~4_combout\ & \test_inst|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|Equal3~4_combout\,
	datac => \test_inst|Add1~18_combout\,
	combout => \test_inst|div_clk_new~4_combout\);

-- Location: FF_X34_Y23_N29
\test_inst|div_clk_new[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|div_clk_new~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk_new\(9));

-- Location: LCCOMB_X35_Y23_N20
\test_inst|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add1~20_combout\ = (\test_inst|div_clk_new\(10) & (\test_inst|Add1~19\ $ (GND))) # (!\test_inst|div_clk_new\(10) & (!\test_inst|Add1~19\ & VCC))
-- \test_inst|Add1~21\ = CARRY((\test_inst|div_clk_new\(10) & !\test_inst|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|div_clk_new\(10),
	datad => VCC,
	cin => \test_inst|Add1~19\,
	combout => \test_inst|Add1~20_combout\,
	cout => \test_inst|Add1~21\);

-- Location: FF_X35_Y23_N21
\test_inst|div_clk_new[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk_new\(10));

-- Location: LCCOMB_X33_Y23_N0
\test_inst|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal2~1_combout\ = (!\test_inst|Add1~22_combout\ & (!\test_inst|Add1~24_combout\ & (\test_inst|Add1~28_combout\ & !\test_inst|Add1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Add1~22_combout\,
	datab => \test_inst|Add1~24_combout\,
	datac => \test_inst|Add1~28_combout\,
	datad => \test_inst|Add1~20_combout\,
	combout => \test_inst|Equal2~1_combout\);

-- Location: LCCOMB_X36_Y23_N28
\test_inst|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal2~0_combout\ = (!\test_inst|Add1~0_combout\ & (!\test_inst|Add1~4_combout\ & (\test_inst|Add1~16_combout\ & !\test_inst|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Add1~0_combout\,
	datab => \test_inst|Add1~4_combout\,
	datac => \test_inst|Add1~16_combout\,
	datad => \test_inst|Add1~2_combout\,
	combout => \test_inst|Equal2~0_combout\);

-- Location: LCCOMB_X34_Y23_N22
\test_inst|Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal2~2_combout\ = (!\test_inst|Add1~32_combout\ & (!\test_inst|Add1~36_combout\ & (!\test_inst|Add1~34_combout\ & !\test_inst|Add1~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Add1~32_combout\,
	datab => \test_inst|Add1~36_combout\,
	datac => \test_inst|Add1~34_combout\,
	datad => \test_inst|Add1~38_combout\,
	combout => \test_inst|Equal2~2_combout\);

-- Location: LCCOMB_X34_Y23_N6
\test_inst|Equal2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal2~3_combout\ = (!\test_inst|Add1~42_combout\ & (!\test_inst|Add1~40_combout\ & (!\test_inst|Add1~46_combout\ & !\test_inst|Add1~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Add1~42_combout\,
	datab => \test_inst|Add1~40_combout\,
	datac => \test_inst|Add1~46_combout\,
	datad => \test_inst|Add1~44_combout\,
	combout => \test_inst|Equal2~3_combout\);

-- Location: LCCOMB_X34_Y23_N24
\test_inst|Equal2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal2~4_combout\ = (\test_inst|Equal2~1_combout\ & (\test_inst|Equal2~0_combout\ & (\test_inst|Equal2~2_combout\ & \test_inst|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Equal2~1_combout\,
	datab => \test_inst|Equal2~0_combout\,
	datac => \test_inst|Equal2~2_combout\,
	datad => \test_inst|Equal2~3_combout\,
	combout => \test_inst|Equal2~4_combout\);

-- Location: LCCOMB_X33_Y23_N4
\test_inst|Equal2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal2~6_combout\ = (\test_inst|Add1~6_combout\ & (\test_inst|Add1~10_combout\ & (!\test_inst|Add1~12_combout\ & !\test_inst|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Add1~6_combout\,
	datab => \test_inst|Add1~10_combout\,
	datac => \test_inst|Add1~12_combout\,
	datad => \test_inst|Add1~8_combout\,
	combout => \test_inst|Equal2~6_combout\);

-- Location: LCCOMB_X33_Y23_N8
\test_inst|clk_slow~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|clk_slow~0_combout\ = (\test_inst|Add1~14_combout\ & (!\test_inst|Add1~18_combout\ & (!\test_inst|Add1~30_combout\ & \test_inst|Add1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Add1~14_combout\,
	datab => \test_inst|Add1~18_combout\,
	datac => \test_inst|Add1~30_combout\,
	datad => \test_inst|Add1~26_combout\,
	combout => \test_inst|clk_slow~0_combout\);

-- Location: LCCOMB_X33_Y23_N18
\test_inst|Equal2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal2~7_combout\ = (!\test_inst|Add1~58_combout\ & (!\test_inst|Add1~56_combout\ & (!\test_inst|Add1~60_combout\ & !\test_inst|Add1~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Add1~58_combout\,
	datab => \test_inst|Add1~56_combout\,
	datac => \test_inst|Add1~60_combout\,
	datad => \test_inst|Add1~62_combout\,
	combout => \test_inst|Equal2~7_combout\);

-- Location: LCCOMB_X33_Y23_N6
\test_inst|clk_slow~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|clk_slow~1_combout\ = (\test_inst|Equal2~6_combout\ & (\test_inst|clk_slow~0_combout\ & (\test_inst|Equal2~5_combout\ & \test_inst|Equal2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Equal2~6_combout\,
	datab => \test_inst|clk_slow~0_combout\,
	datac => \test_inst|Equal2~5_combout\,
	datad => \test_inst|Equal2~7_combout\,
	combout => \test_inst|clk_slow~1_combout\);

-- Location: LCCOMB_X34_Y23_N20
\test_inst|clk_slow~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|clk_slow~2_combout\ = (\test_inst|Equal2~4_combout\ & ((\test_inst|clk_slow~1_combout\) # ((!\test_inst|Equal3~4_combout\ & \test_inst|clk_slow~q\)))) # (!\test_inst|Equal2~4_combout\ & (((!\test_inst|Equal3~4_combout\ & 
-- \test_inst|clk_slow~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Equal2~4_combout\,
	datab => \test_inst|clk_slow~1_combout\,
	datac => \test_inst|Equal3~4_combout\,
	datad => \test_inst|clk_slow~q\,
	combout => \test_inst|clk_slow~2_combout\);

-- Location: LCCOMB_X34_Y23_N4
\test_inst|clk_slow~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|clk_slow~feeder_combout\ = \test_inst|clk_slow~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \test_inst|clk_slow~2_combout\,
	combout => \test_inst|clk_slow~feeder_combout\);

-- Location: FF_X34_Y23_N5
\test_inst|clk_slow\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|clk_slow~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|clk_slow~q\);

-- Location: CLKCTRL_G10
\test_inst|clk_slow~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \test_inst|clk_slow~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \test_inst|clk_slow~clkctrl_outclk\);

-- Location: IOIBUF_X53_Y0_N1
\reset_lcd~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_lcd,
	o => \reset_lcd~input_o\);

-- Location: LCCOMB_X34_Y7_N16
\test_inst|lcd_instance|Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|Selector23~0_combout\ = \test_inst|lcd_instance|count_cmd\(0) $ (\test_inst|lcd_instance|state.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \test_inst|lcd_instance|count_cmd\(0),
	datad => \test_inst|lcd_instance|state.S2~q\,
	combout => \test_inst|lcd_instance|Selector23~0_combout\);

-- Location: FF_X34_Y7_N17
\test_inst|lcd_instance|count_cmd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|clk_slow~clkctrl_outclk\,
	d => \test_inst|lcd_instance|Selector23~0_combout\,
	sclr => \reset_lcd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|lcd_instance|count_cmd\(0));

-- Location: LCCOMB_X34_Y7_N30
\test_inst|lcd_instance|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|Add0~0_combout\ = \test_inst|lcd_instance|count_cmd\(1) $ (\test_inst|lcd_instance|count_cmd\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \test_inst|lcd_instance|count_cmd\(1),
	datad => \test_inst|lcd_instance|count_cmd\(0),
	combout => \test_inst|lcd_instance|Add0~0_combout\);

-- Location: FF_X34_Y7_N31
\test_inst|lcd_instance|count_cmd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|clk_slow~clkctrl_outclk\,
	d => \test_inst|lcd_instance|Add0~0_combout\,
	sclr => \reset_lcd~input_o\,
	ena => \test_inst|lcd_instance|state~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|lcd_instance|count_cmd\(1));

-- Location: LCCOMB_X34_Y7_N8
\test_inst|lcd_instance|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|Add0~1_combout\ = \test_inst|lcd_instance|count_cmd\(2) $ (((\test_inst|lcd_instance|count_cmd\(1) & \test_inst|lcd_instance|count_cmd\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|lcd_instance|count_cmd\(1),
	datac => \test_inst|lcd_instance|count_cmd\(2),
	datad => \test_inst|lcd_instance|count_cmd\(0),
	combout => \test_inst|lcd_instance|Add0~1_combout\);

-- Location: FF_X34_Y7_N9
\test_inst|lcd_instance|count_cmd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|clk_slow~clkctrl_outclk\,
	d => \test_inst|lcd_instance|Add0~1_combout\,
	sclr => \reset_lcd~input_o\,
	ena => \test_inst|lcd_instance|state~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|lcd_instance|count_cmd\(2));

-- Location: LCCOMB_X34_Y7_N6
\test_inst|lcd_instance|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|LessThan0~0_combout\ = ((!\test_inst|lcd_instance|count_cmd\(1) & !\test_inst|lcd_instance|count_cmd\(0))) # (!\test_inst|lcd_instance|count_cmd\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|lcd_instance|count_cmd\(1),
	datac => \test_inst|lcd_instance|count_cmd\(2),
	datad => \test_inst|lcd_instance|count_cmd\(0),
	combout => \test_inst|lcd_instance|LessThan0~0_combout\);

-- Location: LCCOMB_X34_Y7_N26
\test_inst|lcd_instance|state~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|state~26_combout\ = (!\reset_lcd~input_o\ & (!\test_inst|lcd_instance|state.S0~q\ & \test_inst|lcd_instance|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_lcd~input_o\,
	datac => \test_inst|lcd_instance|state.S0~q\,
	datad => \test_inst|lcd_instance|LessThan0~0_combout\,
	combout => \test_inst|lcd_instance|state~26_combout\);

-- Location: FF_X34_Y7_N27
\test_inst|lcd_instance|state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|clk_slow~clkctrl_outclk\,
	d => \test_inst|lcd_instance|state~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|lcd_instance|state.S1~q\);

-- Location: LCCOMB_X34_Y7_N2
\test_inst|lcd_instance|state~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|state~31_combout\ = (!\reset_lcd~input_o\ & \test_inst|lcd_instance|state.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_lcd~input_o\,
	datac => \test_inst|lcd_instance|state.S1~q\,
	combout => \test_inst|lcd_instance|state~31_combout\);

-- Location: FF_X34_Y7_N3
\test_inst|lcd_instance|state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|clk_slow~clkctrl_outclk\,
	d => \test_inst|lcd_instance|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|lcd_instance|state.S2~q\);

-- Location: LCCOMB_X34_Y7_N14
\test_inst|lcd_instance|state~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|state~29_combout\ = (\reset_lcd~input_o\) # (\test_inst|lcd_instance|state.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_lcd~input_o\,
	datad => \test_inst|lcd_instance|state.S2~q\,
	combout => \test_inst|lcd_instance|state~29_combout\);

-- Location: LCCOMB_X34_Y7_N4
\test_inst|lcd_instance|state.S0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|state.S0~0_combout\ = !\test_inst|lcd_instance|state~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \test_inst|lcd_instance|state~29_combout\,
	combout => \test_inst|lcd_instance|state.S0~0_combout\);

-- Location: FF_X34_Y7_N5
\test_inst|lcd_instance|state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|clk_slow~clkctrl_outclk\,
	d => \test_inst|lcd_instance|state.S0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|lcd_instance|state.S0~q\);

-- Location: LCCOMB_X35_Y7_N16
\test_inst|lcd_instance|state~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|state~35_combout\ = (!\reset_lcd~input_o\ & \test_inst|lcd_instance|state.S7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_lcd~input_o\,
	datac => \test_inst|lcd_instance|state.S7~q\,
	combout => \test_inst|lcd_instance|state~35_combout\);

-- Location: FF_X35_Y7_N17
\test_inst|lcd_instance|state.S8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|clk_slow~clkctrl_outclk\,
	d => \test_inst|lcd_instance|state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|lcd_instance|state.S8~q\);

-- Location: LCCOMB_X34_Y7_N22
\test_inst|lcd_instance|state~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|state~30_combout\ = (!\reset_lcd~input_o\ & \test_inst|lcd_instance|state.S8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_lcd~input_o\,
	datad => \test_inst|lcd_instance|state.S8~q\,
	combout => \test_inst|lcd_instance|state~30_combout\);

-- Location: FF_X34_Y7_N23
\test_inst|lcd_instance|state.S9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|clk_slow~clkctrl_outclk\,
	d => \test_inst|lcd_instance|state~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|lcd_instance|state.S9~q\);

-- Location: LCCOMB_X35_Y7_N28
\test_inst|lcd_instance|state~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|state~32_combout\ = (!\reset_lcd~input_o\ & ((\test_inst|lcd_instance|state.S9~q\) # ((!\test_inst|lcd_instance|state.S0~q\ & !\test_inst|lcd_instance|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|lcd_instance|state.S0~q\,
	datab => \reset_lcd~input_o\,
	datac => \test_inst|lcd_instance|LessThan0~0_combout\,
	datad => \test_inst|lcd_instance|state.S9~q\,
	combout => \test_inst|lcd_instance|state~32_combout\);

-- Location: FF_X35_Y7_N29
\test_inst|lcd_instance|state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|clk_slow~clkctrl_outclk\,
	d => \test_inst|lcd_instance|state~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|lcd_instance|state.S3~q\);

-- Location: LCCOMB_X35_Y7_N4
\test_inst|lcd_instance|state~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|state~27_combout\ = (!\reset_lcd~input_o\ & \test_inst|lcd_instance|state.S3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_lcd~input_o\,
	datad => \test_inst|lcd_instance|state.S3~q\,
	combout => \test_inst|lcd_instance|state~27_combout\);

-- Location: FF_X35_Y7_N5
\test_inst|lcd_instance|state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|clk_slow~clkctrl_outclk\,
	d => \test_inst|lcd_instance|state~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|lcd_instance|state.S4~q\);

-- Location: LCCOMB_X35_Y7_N18
\test_inst|lcd_instance|state~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|state~33_combout\ = (!\reset_lcd~input_o\ & \test_inst|lcd_instance|state.S4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_lcd~input_o\,
	datac => \test_inst|lcd_instance|state.S4~q\,
	combout => \test_inst|lcd_instance|state~33_combout\);

-- Location: FF_X35_Y7_N19
\test_inst|lcd_instance|state.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|clk_slow~clkctrl_outclk\,
	d => \test_inst|lcd_instance|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|lcd_instance|state.S5~q\);

-- Location: LCCOMB_X35_Y7_N22
\test_inst|lcd_instance|state~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|state~34_combout\ = (!\reset_lcd~input_o\ & \test_inst|lcd_instance|state.S5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_lcd~input_o\,
	datad => \test_inst|lcd_instance|state.S5~q\,
	combout => \test_inst|lcd_instance|state~34_combout\);

-- Location: FF_X35_Y7_N23
\test_inst|lcd_instance|state.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|clk_slow~clkctrl_outclk\,
	d => \test_inst|lcd_instance|state~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|lcd_instance|state.S6~q\);

-- Location: LCCOMB_X35_Y7_N0
\test_inst|lcd_instance|state~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|state~28_combout\ = (!\reset_lcd~input_o\ & \test_inst|lcd_instance|state.S6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_lcd~input_o\,
	datac => \test_inst|lcd_instance|state.S6~q\,
	combout => \test_inst|lcd_instance|state~28_combout\);

-- Location: LCCOMB_X35_Y7_N30
\test_inst|lcd_instance|state.S7~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|state.S7~feeder_combout\ = \test_inst|lcd_instance|state~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \test_inst|lcd_instance|state~28_combout\,
	combout => \test_inst|lcd_instance|state.S7~feeder_combout\);

-- Location: FF_X35_Y7_N31
\test_inst|lcd_instance|state.S7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|clk_slow~clkctrl_outclk\,
	d => \test_inst|lcd_instance|state.S7~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|lcd_instance|state.S7~q\);

-- Location: LCCOMB_X34_Y7_N12
\test_inst|lcd_instance|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|Selector10~0_combout\ = (\test_inst|lcd_instance|state.S7~q\) # ((\test_inst|lcd_instance|state.S1~q\) # (\test_inst|lcd_instance|state.S4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|lcd_instance|state.S7~q\,
	datac => \test_inst|lcd_instance|state.S1~q\,
	datad => \test_inst|lcd_instance|state.S4~q\,
	combout => \test_inst|lcd_instance|Selector10~0_combout\);

-- Location: LCCOMB_X34_Y7_N24
\test_inst|lcd_instance|lcd[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|lcd[1]~0_combout\ = (!\test_inst|lcd_instance|state.S9~q\ & ((\test_inst|lcd_instance|state.S0~q\) # (\test_inst|lcd_instance|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|lcd_instance|state.S9~q\,
	datac => \test_inst|lcd_instance|state.S0~q\,
	datad => \test_inst|lcd_instance|LessThan0~0_combout\,
	combout => \test_inst|lcd_instance|lcd[1]~0_combout\);

-- Location: LCCOMB_X32_Y7_N12
\test_inst|lcd_instance|Selector10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|Selector10~1_combout\ = (\test_inst|lcd_instance|Selector10~0_combout\) # ((\test_inst|lcd_instance|lcd_en~q\ & !\test_inst|lcd_instance|lcd[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|lcd_instance|Selector10~0_combout\,
	datac => \test_inst|lcd_instance|lcd_en~q\,
	datad => \test_inst|lcd_instance|lcd[1]~0_combout\,
	combout => \test_inst|lcd_instance|Selector10~1_combout\);

-- Location: FF_X32_Y7_N13
\test_inst|lcd_instance|lcd_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|clk_slow~clkctrl_outclk\,
	d => \test_inst|lcd_instance|Selector10~1_combout\,
	ena => \ALT_INV_reset_lcd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|lcd_instance|lcd_en~q\);

-- Location: LCCOMB_X35_Y7_N20
\test_inst|lcd_instance|Selector8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|Selector8~2_combout\ = (!\test_inst|lcd_instance|state.S5~q\ & (!\test_inst|lcd_instance|state.S4~q\ & !\test_inst|lcd_instance|state.S3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|lcd_instance|state.S5~q\,
	datac => \test_inst|lcd_instance|state.S4~q\,
	datad => \test_inst|lcd_instance|state.S3~q\,
	combout => \test_inst|lcd_instance|Selector8~2_combout\);

-- Location: LCCOMB_X32_Y7_N18
\test_inst|lcd_instance|Selector8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|Selector8~3_combout\ = (\test_inst|lcd_instance|state.S0~q\ & ((\test_inst|lcd_instance|lcd_rs~q\) # ((!\test_inst|lcd_instance|state.S9~q\)))) # (!\test_inst|lcd_instance|state.S0~q\ & (\test_inst|lcd_instance|lcd_rs~q\ & 
-- (!\test_inst|lcd_instance|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|lcd_instance|state.S0~q\,
	datab => \test_inst|lcd_instance|lcd_rs~q\,
	datac => \test_inst|lcd_instance|LessThan0~0_combout\,
	datad => \test_inst|lcd_instance|state.S9~q\,
	combout => \test_inst|lcd_instance|Selector8~3_combout\);

-- Location: LCCOMB_X32_Y7_N2
\test_inst|lcd_instance|Selector8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|Selector8~4_combout\ = (\test_inst|lcd_instance|Selector8~2_combout\ & (!\test_inst|lcd_instance|state.S2~q\ & (!\test_inst|lcd_instance|state.S1~q\ & \test_inst|lcd_instance|Selector8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|lcd_instance|Selector8~2_combout\,
	datab => \test_inst|lcd_instance|state.S2~q\,
	datac => \test_inst|lcd_instance|state.S1~q\,
	datad => \test_inst|lcd_instance|Selector8~3_combout\,
	combout => \test_inst|lcd_instance|Selector8~4_combout\);

-- Location: FF_X32_Y7_N3
\test_inst|lcd_instance|lcd_rs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|clk_slow~clkctrl_outclk\,
	d => \test_inst|lcd_instance|Selector8~4_combout\,
	ena => \ALT_INV_reset_lcd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|lcd_instance|lcd_rs~q\);

-- Location: LCCOMB_X29_Y4_N18
\test_inst|covid_det_instance|bit_index[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|covid_det_instance|bit_index[1]~0_combout\ = \test_inst|covid_det_instance|bit_index\(1) $ (((!\test_inst|covid_det_instance|bit_index\(3) & \test_inst|covid_det_instance|bit_index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|covid_det_instance|bit_index\(3),
	datac => \test_inst|covid_det_instance|bit_index\(0),
	datad => \test_inst|covid_det_instance|bit_index\(1),
	combout => \test_inst|covid_det_instance|bit_index[1]~0_combout\);

-- Location: FF_X29_Y4_N7
\test_inst|covid_det_instance|bit_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \test_inst|covid_det_instance|bit_index[1]~0_combout\,
	clrn => \ALT_INV_reset_lcd~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|covid_det_instance|bit_index\(1));

-- Location: LCCOMB_X29_Y4_N2
\test_inst|covid_det_instance|bit_index[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|covid_det_instance|bit_index[0]~2_combout\ = (\test_inst|covid_det_instance|bit_index\(0) & (((\test_inst|covid_det_instance|bit_index\(3))))) # (!\test_inst|covid_det_instance|bit_index\(0) & (((!\test_inst|covid_det_instance|bit_index\(2) & 
-- !\test_inst|covid_det_instance|bit_index\(1))) # (!\test_inst|covid_det_instance|bit_index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|covid_det_instance|bit_index\(0),
	datab => \test_inst|covid_det_instance|bit_index\(2),
	datac => \test_inst|covid_det_instance|bit_index\(3),
	datad => \test_inst|covid_det_instance|bit_index\(1),
	combout => \test_inst|covid_det_instance|bit_index[0]~2_combout\);

-- Location: FF_X29_Y4_N5
\test_inst|covid_det_instance|bit_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \test_inst|covid_det_instance|bit_index[0]~2_combout\,
	clrn => \ALT_INV_reset_lcd~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|covid_det_instance|bit_index\(0));

-- Location: LCCOMB_X29_Y4_N0
\test_inst|covid_det_instance|bit_index[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|covid_det_instance|bit_index[3]~1_combout\ = (\test_inst|covid_det_instance|bit_index\(3)) # ((\test_inst|covid_det_instance|bit_index\(2) & (\test_inst|covid_det_instance|bit_index\(0) & \test_inst|covid_det_instance|bit_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|covid_det_instance|bit_index\(2),
	datab => \test_inst|covid_det_instance|bit_index\(3),
	datac => \test_inst|covid_det_instance|bit_index\(0),
	datad => \test_inst|covid_det_instance|bit_index\(1),
	combout => \test_inst|covid_det_instance|bit_index[3]~1_combout\);

-- Location: FF_X29_Y4_N15
\test_inst|covid_det_instance|bit_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \test_inst|covid_det_instance|bit_index[3]~1_combout\,
	clrn => \ALT_INV_reset_lcd~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|covid_det_instance|bit_index\(3));

-- Location: LCCOMB_X29_Y4_N24
\test_inst|covid_det_instance|bit_index[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|covid_det_instance|bit_index[2]~3_combout\ = \test_inst|covid_det_instance|bit_index\(2) $ (((!\test_inst|covid_det_instance|bit_index\(3) & (\test_inst|covid_det_instance|bit_index\(0) & \test_inst|covid_det_instance|bit_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|covid_det_instance|bit_index\(2),
	datab => \test_inst|covid_det_instance|bit_index\(3),
	datac => \test_inst|covid_det_instance|bit_index\(0),
	datad => \test_inst|covid_det_instance|bit_index\(1),
	combout => \test_inst|covid_det_instance|bit_index[2]~3_combout\);

-- Location: FF_X29_Y4_N9
\test_inst|covid_det_instance|bit_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \test_inst|covid_det_instance|bit_index[2]~3_combout\,
	clrn => \ALT_INV_reset_lcd~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|covid_det_instance|bit_index\(2));

-- Location: LCCOMB_X32_Y4_N28
\test_inst|covid_det_instance|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|covid_det_instance|Mux0~3_combout\ = (\test_inst|covid_det_instance|bit_index\(0) & (((\master_inst|reg_a\(4)) # (\test_inst|covid_det_instance|bit_index\(1))))) # (!\test_inst|covid_det_instance|bit_index\(0) & (\master_inst|reg_a\(3) & 
-- ((!\test_inst|covid_det_instance|bit_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|reg_a\(3),
	datab => \master_inst|reg_a\(4),
	datac => \test_inst|covid_det_instance|bit_index\(0),
	datad => \test_inst|covid_det_instance|bit_index\(1),
	combout => \test_inst|covid_det_instance|Mux0~3_combout\);

-- Location: LCCOMB_X32_Y4_N6
\test_inst|covid_det_instance|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|covid_det_instance|Mux0~4_combout\ = (\test_inst|covid_det_instance|bit_index\(1) & ((\test_inst|covid_det_instance|Mux0~3_combout\ & (\master_inst|reg_a\(6))) # (!\test_inst|covid_det_instance|Mux0~3_combout\ & ((\master_inst|reg_a\(5)))))) # 
-- (!\test_inst|covid_det_instance|bit_index\(1) & (((\test_inst|covid_det_instance|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|covid_det_instance|bit_index\(1),
	datab => \master_inst|reg_a\(6),
	datac => \master_inst|reg_a\(5),
	datad => \test_inst|covid_det_instance|Mux0~3_combout\,
	combout => \test_inst|covid_det_instance|Mux0~4_combout\);

-- Location: LCCOMB_X29_Y4_N26
\test_inst|covid_det_instance|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|covid_det_instance|Mux0~0_combout\ = (\test_inst|covid_det_instance|bit_index\(0) & ((\master_inst|reg_a\(2)) # ((!\test_inst|covid_det_instance|bit_index\(1))))) # (!\test_inst|covid_det_instance|bit_index\(0) & (((\master_inst|reg_a\(1) & 
-- \test_inst|covid_det_instance|bit_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|reg_a\(2),
	datab => \test_inst|covid_det_instance|bit_index\(0),
	datac => \master_inst|reg_a\(1),
	datad => \test_inst|covid_det_instance|bit_index\(1),
	combout => \test_inst|covid_det_instance|Mux0~0_combout\);

-- Location: LCCOMB_X29_Y4_N30
\test_inst|covid_det_instance|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|covid_det_instance|Mux0~1_combout\ = (\test_inst|covid_det_instance|bit_index\(3) & ((\test_inst|covid_det_instance|Mux0~0_combout\ & (\master_inst|reg_a\(8))) # (!\test_inst|covid_det_instance|Mux0~0_combout\ & ((\master_inst|reg_a\(7)))))) # 
-- (!\test_inst|covid_det_instance|bit_index\(3) & (((\test_inst|covid_det_instance|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_inst|reg_a\(8),
	datab => \test_inst|covid_det_instance|bit_index\(3),
	datac => \test_inst|covid_det_instance|Mux0~0_combout\,
	datad => \master_inst|reg_a\(7),
	combout => \test_inst|covid_det_instance|Mux0~1_combout\);

-- Location: LCCOMB_X29_Y4_N16
\test_inst|covid_det_instance|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|covid_det_instance|Mux0~2_combout\ = (\test_inst|covid_det_instance|Mux0~1_combout\ & ((\test_inst|covid_det_instance|bit_index\(3) & ((!\test_inst|covid_det_instance|bit_index\(1)))) # (!\test_inst|covid_det_instance|bit_index\(3) & 
-- ((\master_inst|reg_a\(0)) # (\test_inst|covid_det_instance|bit_index\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|covid_det_instance|bit_index\(3),
	datab => \master_inst|reg_a\(0),
	datac => \test_inst|covid_det_instance|Mux0~1_combout\,
	datad => \test_inst|covid_det_instance|bit_index\(1),
	combout => \test_inst|covid_det_instance|Mux0~2_combout\);

-- Location: LCCOMB_X29_Y4_N28
\test_inst|covid_det_instance|Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|covid_det_instance|Mux0~5_combout\ = (\test_inst|covid_det_instance|bit_index\(2) & (!\test_inst|covid_det_instance|bit_index\(3) & (\test_inst|covid_det_instance|Mux0~4_combout\))) # (!\test_inst|covid_det_instance|bit_index\(2) & 
-- (((\test_inst|covid_det_instance|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|covid_det_instance|bit_index\(2),
	datab => \test_inst|covid_det_instance|bit_index\(3),
	datac => \test_inst|covid_det_instance|Mux0~4_combout\,
	datad => \test_inst|covid_det_instance|Mux0~2_combout\,
	combout => \test_inst|covid_det_instance|Mux0~5_combout\);

-- Location: LCCOMB_X35_Y7_N26
\test_inst|lcd_instance|lcd[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|lcd[7]~1_combout\ = (\test_inst|lcd_instance|state.S7~q\) # ((\test_inst|lcd_instance|state.S6~q\) # (\test_inst|lcd_instance|state.S8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|lcd_instance|state.S7~q\,
	datac => \test_inst|lcd_instance|state.S6~q\,
	datad => \test_inst|lcd_instance|state.S8~q\,
	combout => \test_inst|lcd_instance|lcd[7]~1_combout\);

-- Location: FF_X41_Y22_N17
\test_inst|div_clk[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk\(24));

-- Location: LCCOMB_X41_Y23_N0
\test_inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add0~0_combout\ = \test_inst|div_clk_new\(0) $ (VCC)
-- \test_inst|Add0~1\ = CARRY(\test_inst|div_clk_new\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|div_clk_new\(0),
	datad => VCC,
	combout => \test_inst|Add0~0_combout\,
	cout => \test_inst|Add0~1\);

-- Location: LCCOMB_X41_Y23_N2
\test_inst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add0~2_combout\ = (\test_inst|div_clk_new\(1) & (!\test_inst|Add0~1\)) # (!\test_inst|div_clk_new\(1) & ((\test_inst|Add0~1\) # (GND)))
-- \test_inst|Add0~3\ = CARRY((!\test_inst|Add0~1\) # (!\test_inst|div_clk_new\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|div_clk_new\(1),
	datad => VCC,
	cin => \test_inst|Add0~1\,
	combout => \test_inst|Add0~2_combout\,
	cout => \test_inst|Add0~3\);

-- Location: LCCOMB_X41_Y23_N4
\test_inst|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add0~4_combout\ = (\test_inst|div_clk\(2) & (\test_inst|Add0~3\ $ (GND))) # (!\test_inst|div_clk\(2) & (!\test_inst|Add0~3\ & VCC))
-- \test_inst|Add0~5\ = CARRY((\test_inst|div_clk\(2) & !\test_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|div_clk\(2),
	datad => VCC,
	cin => \test_inst|Add0~3\,
	combout => \test_inst|Add0~4_combout\,
	cout => \test_inst|Add0~5\);

-- Location: FF_X41_Y23_N5
\test_inst|div_clk[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk\(2));

-- Location: LCCOMB_X41_Y23_N6
\test_inst|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add0~6_combout\ = (\test_inst|div_clk\(3) & (!\test_inst|Add0~5\)) # (!\test_inst|div_clk\(3) & ((\test_inst|Add0~5\) # (GND)))
-- \test_inst|Add0~7\ = CARRY((!\test_inst|Add0~5\) # (!\test_inst|div_clk\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|div_clk\(3),
	datad => VCC,
	cin => \test_inst|Add0~5\,
	combout => \test_inst|Add0~6_combout\,
	cout => \test_inst|Add0~7\);

-- Location: FF_X41_Y23_N7
\test_inst|div_clk[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk\(3));

-- Location: LCCOMB_X41_Y23_N8
\test_inst|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add0~8_combout\ = (\test_inst|div_clk\(4) & (\test_inst|Add0~7\ $ (GND))) # (!\test_inst|div_clk\(4) & (!\test_inst|Add0~7\ & VCC))
-- \test_inst|Add0~9\ = CARRY((\test_inst|div_clk\(4) & !\test_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|div_clk\(4),
	datad => VCC,
	cin => \test_inst|Add0~7\,
	combout => \test_inst|Add0~8_combout\,
	cout => \test_inst|Add0~9\);

-- Location: FF_X41_Y23_N9
\test_inst|div_clk[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk\(4));

-- Location: LCCOMB_X41_Y23_N10
\test_inst|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add0~10_combout\ = (\test_inst|div_clk\(5) & (!\test_inst|Add0~9\)) # (!\test_inst|div_clk\(5) & ((\test_inst|Add0~9\) # (GND)))
-- \test_inst|Add0~11\ = CARRY((!\test_inst|Add0~9\) # (!\test_inst|div_clk\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|div_clk\(5),
	datad => VCC,
	cin => \test_inst|Add0~9\,
	combout => \test_inst|Add0~10_combout\,
	cout => \test_inst|Add0~11\);

-- Location: FF_X41_Y23_N11
\test_inst|div_clk[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk\(5));

-- Location: LCCOMB_X41_Y23_N12
\test_inst|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add0~12_combout\ = (\test_inst|div_clk\(6) & (\test_inst|Add0~11\ $ (GND))) # (!\test_inst|div_clk\(6) & (!\test_inst|Add0~11\ & VCC))
-- \test_inst|Add0~13\ = CARRY((\test_inst|div_clk\(6) & !\test_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|div_clk\(6),
	datad => VCC,
	cin => \test_inst|Add0~11\,
	combout => \test_inst|Add0~12_combout\,
	cout => \test_inst|Add0~13\);

-- Location: LCCOMB_X42_Y22_N28
\test_inst|div_clk~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|div_clk~2_combout\ = (\test_inst|Add0~12_combout\ & !\test_inst|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|Add0~12_combout\,
	datad => \test_inst|Equal1~3_combout\,
	combout => \test_inst|div_clk~2_combout\);

-- Location: FF_X42_Y22_N29
\test_inst|div_clk[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|div_clk~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk\(6));

-- Location: LCCOMB_X41_Y23_N14
\test_inst|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add0~14_combout\ = (\test_inst|div_clk\(7) & (!\test_inst|Add0~13\)) # (!\test_inst|div_clk\(7) & ((\test_inst|Add0~13\) # (GND)))
-- \test_inst|Add0~15\ = CARRY((!\test_inst|Add0~13\) # (!\test_inst|div_clk\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|div_clk\(7),
	datad => VCC,
	cin => \test_inst|Add0~13\,
	combout => \test_inst|Add0~14_combout\,
	cout => \test_inst|Add0~15\);

-- Location: FF_X41_Y23_N15
\test_inst|div_clk[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk\(7));

-- Location: LCCOMB_X41_Y23_N16
\test_inst|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add0~16_combout\ = (\test_inst|div_clk\(8) & (\test_inst|Add0~15\ $ (GND))) # (!\test_inst|div_clk\(8) & (!\test_inst|Add0~15\ & VCC))
-- \test_inst|Add0~17\ = CARRY((\test_inst|div_clk\(8) & !\test_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|div_clk\(8),
	datad => VCC,
	cin => \test_inst|Add0~15\,
	combout => \test_inst|Add0~16_combout\,
	cout => \test_inst|Add0~17\);

-- Location: LCCOMB_X42_Y22_N24
\test_inst|div_clk~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|div_clk~1_combout\ = (\test_inst|Add0~16_combout\ & !\test_inst|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \test_inst|Add0~16_combout\,
	datad => \test_inst|Equal1~3_combout\,
	combout => \test_inst|div_clk~1_combout\);

-- Location: FF_X42_Y22_N25
\test_inst|div_clk[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|div_clk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk\(8));

-- Location: LCCOMB_X41_Y23_N18
\test_inst|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add0~18_combout\ = (\test_inst|div_clk\(9) & (!\test_inst|Add0~17\)) # (!\test_inst|div_clk\(9) & ((\test_inst|Add0~17\) # (GND)))
-- \test_inst|Add0~19\ = CARRY((!\test_inst|Add0~17\) # (!\test_inst|div_clk\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|div_clk\(9),
	datad => VCC,
	cin => \test_inst|Add0~17\,
	combout => \test_inst|Add0~18_combout\,
	cout => \test_inst|Add0~19\);

-- Location: FF_X41_Y23_N19
\test_inst|div_clk[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk\(9));

-- Location: LCCOMB_X41_Y23_N20
\test_inst|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add0~20_combout\ = (\test_inst|div_clk\(10) & (\test_inst|Add0~19\ $ (GND))) # (!\test_inst|div_clk\(10) & (!\test_inst|Add0~19\ & VCC))
-- \test_inst|Add0~21\ = CARRY((\test_inst|div_clk\(10) & !\test_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|div_clk\(10),
	datad => VCC,
	cin => \test_inst|Add0~19\,
	combout => \test_inst|Add0~20_combout\,
	cout => \test_inst|Add0~21\);

-- Location: LCCOMB_X42_Y22_N0
\test_inst|div_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|div_clk~0_combout\ = (\test_inst|Add0~20_combout\ & !\test_inst|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \test_inst|Add0~20_combout\,
	datad => \test_inst|Equal1~3_combout\,
	combout => \test_inst|div_clk~0_combout\);

-- Location: FF_X42_Y22_N1
\test_inst|div_clk[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|div_clk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk\(10));

-- Location: LCCOMB_X41_Y23_N22
\test_inst|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add0~22_combout\ = (\test_inst|div_clk\(11) & (!\test_inst|Add0~21\)) # (!\test_inst|div_clk\(11) & ((\test_inst|Add0~21\) # (GND)))
-- \test_inst|Add0~23\ = CARRY((!\test_inst|Add0~21\) # (!\test_inst|div_clk\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|div_clk\(11),
	datad => VCC,
	cin => \test_inst|Add0~21\,
	combout => \test_inst|Add0~22_combout\,
	cout => \test_inst|Add0~23\);

-- Location: LCCOMB_X42_Y22_N14
\test_inst|div_clk~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|div_clk~3_combout\ = (\test_inst|Add0~22_combout\ & !\test_inst|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \test_inst|Add0~22_combout\,
	datad => \test_inst|Equal1~3_combout\,
	combout => \test_inst|div_clk~3_combout\);

-- Location: FF_X42_Y22_N15
\test_inst|div_clk[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|div_clk~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk\(11));

-- Location: LCCOMB_X41_Y23_N24
\test_inst|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add0~24_combout\ = (\test_inst|div_clk\(12) & (\test_inst|Add0~23\ $ (GND))) # (!\test_inst|div_clk\(12) & (!\test_inst|Add0~23\ & VCC))
-- \test_inst|Add0~25\ = CARRY((\test_inst|div_clk\(12) & !\test_inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|div_clk\(12),
	datad => VCC,
	cin => \test_inst|Add0~23\,
	combout => \test_inst|Add0~24_combout\,
	cout => \test_inst|Add0~25\);

-- Location: FF_X41_Y23_N25
\test_inst|div_clk[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk\(12));

-- Location: LCCOMB_X41_Y23_N26
\test_inst|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add0~26_combout\ = (\test_inst|div_clk\(13) & (!\test_inst|Add0~25\)) # (!\test_inst|div_clk\(13) & ((\test_inst|Add0~25\) # (GND)))
-- \test_inst|Add0~27\ = CARRY((!\test_inst|Add0~25\) # (!\test_inst|div_clk\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|div_clk\(13),
	datad => VCC,
	cin => \test_inst|Add0~25\,
	combout => \test_inst|Add0~26_combout\,
	cout => \test_inst|Add0~27\);

-- Location: FF_X41_Y23_N27
\test_inst|div_clk[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk\(13));

-- Location: LCCOMB_X41_Y23_N28
\test_inst|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add0~28_combout\ = (\test_inst|div_clk\(14) & (\test_inst|Add0~27\ $ (GND))) # (!\test_inst|div_clk\(14) & (!\test_inst|Add0~27\ & VCC))
-- \test_inst|Add0~29\ = CARRY((\test_inst|div_clk\(14) & !\test_inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|div_clk\(14),
	datad => VCC,
	cin => \test_inst|Add0~27\,
	combout => \test_inst|Add0~28_combout\,
	cout => \test_inst|Add0~29\);

-- Location: FF_X41_Y23_N29
\test_inst|div_clk[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk\(14));

-- Location: LCCOMB_X41_Y23_N30
\test_inst|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add0~30_combout\ = (\test_inst|div_clk\(15) & (!\test_inst|Add0~29\)) # (!\test_inst|div_clk\(15) & ((\test_inst|Add0~29\) # (GND)))
-- \test_inst|Add0~31\ = CARRY((!\test_inst|Add0~29\) # (!\test_inst|div_clk\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|div_clk\(15),
	datad => VCC,
	cin => \test_inst|Add0~29\,
	combout => \test_inst|Add0~30_combout\,
	cout => \test_inst|Add0~31\);

-- Location: FF_X41_Y23_N31
\test_inst|div_clk[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk\(15));

-- Location: LCCOMB_X41_Y22_N0
\test_inst|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add0~32_combout\ = (\test_inst|div_clk\(16) & (\test_inst|Add0~31\ $ (GND))) # (!\test_inst|div_clk\(16) & (!\test_inst|Add0~31\ & VCC))
-- \test_inst|Add0~33\ = CARRY((\test_inst|div_clk\(16) & !\test_inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|div_clk\(16),
	datad => VCC,
	cin => \test_inst|Add0~31\,
	combout => \test_inst|Add0~32_combout\,
	cout => \test_inst|Add0~33\);

-- Location: LCCOMB_X41_Y22_N2
\test_inst|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add0~34_combout\ = (\test_inst|div_clk\(17) & (!\test_inst|Add0~33\)) # (!\test_inst|div_clk\(17) & ((\test_inst|Add0~33\) # (GND)))
-- \test_inst|Add0~35\ = CARRY((!\test_inst|Add0~33\) # (!\test_inst|div_clk\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|div_clk\(17),
	datad => VCC,
	cin => \test_inst|Add0~33\,
	combout => \test_inst|Add0~34_combout\,
	cout => \test_inst|Add0~35\);

-- Location: LCCOMB_X42_Y22_N18
\test_inst|div_clk~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|div_clk~5_combout\ = (\test_inst|Add0~34_combout\ & !\test_inst|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Add0~34_combout\,
	datad => \test_inst|Equal1~3_combout\,
	combout => \test_inst|div_clk~5_combout\);

-- Location: FF_X42_Y22_N19
\test_inst|div_clk[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|div_clk~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk\(17));

-- Location: LCCOMB_X41_Y22_N4
\test_inst|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add0~36_combout\ = (\test_inst|div_clk\(18) & (\test_inst|Add0~35\ $ (GND))) # (!\test_inst|div_clk\(18) & (!\test_inst|Add0~35\ & VCC))
-- \test_inst|Add0~37\ = CARRY((\test_inst|div_clk\(18) & !\test_inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|div_clk\(18),
	datad => VCC,
	cin => \test_inst|Add0~35\,
	combout => \test_inst|Add0~36_combout\,
	cout => \test_inst|Add0~37\);

-- Location: FF_X41_Y22_N5
\test_inst|div_clk[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk\(18));

-- Location: LCCOMB_X41_Y22_N6
\test_inst|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add0~38_combout\ = (\test_inst|div_clk\(19) & (!\test_inst|Add0~37\)) # (!\test_inst|div_clk\(19) & ((\test_inst|Add0~37\) # (GND)))
-- \test_inst|Add0~39\ = CARRY((!\test_inst|Add0~37\) # (!\test_inst|div_clk\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|div_clk\(19),
	datad => VCC,
	cin => \test_inst|Add0~37\,
	combout => \test_inst|Add0~38_combout\,
	cout => \test_inst|Add0~39\);

-- Location: FF_X41_Y22_N7
\test_inst|div_clk[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk\(19));

-- Location: LCCOMB_X41_Y22_N8
\test_inst|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add0~40_combout\ = (\test_inst|div_clk\(20) & (\test_inst|Add0~39\ $ (GND))) # (!\test_inst|div_clk\(20) & (!\test_inst|Add0~39\ & VCC))
-- \test_inst|Add0~41\ = CARRY((\test_inst|div_clk\(20) & !\test_inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|div_clk\(20),
	datad => VCC,
	cin => \test_inst|Add0~39\,
	combout => \test_inst|Add0~40_combout\,
	cout => \test_inst|Add0~41\);

-- Location: FF_X41_Y22_N9
\test_inst|div_clk[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk\(20));

-- Location: LCCOMB_X41_Y22_N10
\test_inst|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add0~42_combout\ = (\test_inst|div_clk\(21) & (!\test_inst|Add0~41\)) # (!\test_inst|div_clk\(21) & ((\test_inst|Add0~41\) # (GND)))
-- \test_inst|Add0~43\ = CARRY((!\test_inst|Add0~41\) # (!\test_inst|div_clk\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|div_clk\(21),
	datad => VCC,
	cin => \test_inst|Add0~41\,
	combout => \test_inst|Add0~42_combout\,
	cout => \test_inst|Add0~43\);

-- Location: FF_X41_Y22_N11
\test_inst|div_clk[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk\(21));

-- Location: LCCOMB_X41_Y22_N12
\test_inst|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add0~44_combout\ = (\test_inst|div_clk\(22) & (\test_inst|Add0~43\ $ (GND))) # (!\test_inst|div_clk\(22) & (!\test_inst|Add0~43\ & VCC))
-- \test_inst|Add0~45\ = CARRY((\test_inst|div_clk\(22) & !\test_inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|div_clk\(22),
	datad => VCC,
	cin => \test_inst|Add0~43\,
	combout => \test_inst|Add0~44_combout\,
	cout => \test_inst|Add0~45\);

-- Location: FF_X41_Y22_N13
\test_inst|div_clk[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk\(22));

-- Location: LCCOMB_X41_Y22_N14
\test_inst|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add0~46_combout\ = (\test_inst|div_clk\(23) & (!\test_inst|Add0~45\)) # (!\test_inst|div_clk\(23) & ((\test_inst|Add0~45\) # (GND)))
-- \test_inst|Add0~47\ = CARRY((!\test_inst|Add0~45\) # (!\test_inst|div_clk\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|div_clk\(23),
	datad => VCC,
	cin => \test_inst|Add0~45\,
	combout => \test_inst|Add0~46_combout\,
	cout => \test_inst|Add0~47\);

-- Location: FF_X41_Y22_N15
\test_inst|div_clk[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk\(23));

-- Location: LCCOMB_X41_Y22_N16
\test_inst|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add0~48_combout\ = (\test_inst|div_clk\(24) & (\test_inst|Add0~47\ $ (GND))) # (!\test_inst|div_clk\(24) & (!\test_inst|Add0~47\ & VCC))
-- \test_inst|Add0~49\ = CARRY((\test_inst|div_clk\(24) & !\test_inst|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|div_clk\(24),
	datad => VCC,
	cin => \test_inst|Add0~47\,
	combout => \test_inst|Add0~48_combout\,
	cout => \test_inst|Add0~49\);

-- Location: FF_X41_Y22_N19
\test_inst|div_clk[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk\(25));

-- Location: LCCOMB_X41_Y22_N18
\test_inst|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add0~50_combout\ = (\test_inst|div_clk\(25) & (!\test_inst|Add0~49\)) # (!\test_inst|div_clk\(25) & ((\test_inst|Add0~49\) # (GND)))
-- \test_inst|Add0~51\ = CARRY((!\test_inst|Add0~49\) # (!\test_inst|div_clk\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|div_clk\(25),
	datad => VCC,
	cin => \test_inst|Add0~49\,
	combout => \test_inst|Add0~50_combout\,
	cout => \test_inst|Add0~51\);

-- Location: FF_X41_Y22_N21
\test_inst|div_clk[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk\(26));

-- Location: LCCOMB_X41_Y22_N20
\test_inst|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add0~52_combout\ = (\test_inst|div_clk\(26) & (\test_inst|Add0~51\ $ (GND))) # (!\test_inst|div_clk\(26) & (!\test_inst|Add0~51\ & VCC))
-- \test_inst|Add0~53\ = CARRY((\test_inst|div_clk\(26) & !\test_inst|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|div_clk\(26),
	datad => VCC,
	cin => \test_inst|Add0~51\,
	combout => \test_inst|Add0~52_combout\,
	cout => \test_inst|Add0~53\);

-- Location: FF_X41_Y22_N23
\test_inst|div_clk[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk\(27));

-- Location: LCCOMB_X41_Y22_N22
\test_inst|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add0~54_combout\ = (\test_inst|div_clk\(27) & (!\test_inst|Add0~53\)) # (!\test_inst|div_clk\(27) & ((\test_inst|Add0~53\) # (GND)))
-- \test_inst|Add0~55\ = CARRY((!\test_inst|Add0~53\) # (!\test_inst|div_clk\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|div_clk\(27),
	datad => VCC,
	cin => \test_inst|Add0~53\,
	combout => \test_inst|Add0~54_combout\,
	cout => \test_inst|Add0~55\);

-- Location: LCCOMB_X42_Y22_N8
\test_inst|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal0~5_combout\ = (!\test_inst|Add0~48_combout\ & (!\test_inst|Add0~50_combout\ & (!\test_inst|Add0~52_combout\ & !\test_inst|Add0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Add0~48_combout\,
	datab => \test_inst|Add0~50_combout\,
	datac => \test_inst|Add0~52_combout\,
	datad => \test_inst|Add0~54_combout\,
	combout => \test_inst|Equal0~5_combout\);

-- Location: LCCOMB_X40_Y22_N8
\test_inst|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal1~0_combout\ = (!\test_inst|Add0~14_combout\ & (!\test_inst|Add0~10_combout\ & (\test_inst|Add0~12_combout\ & \test_inst|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Add0~14_combout\,
	datab => \test_inst|Add0~10_combout\,
	datac => \test_inst|Add0~12_combout\,
	datad => \test_inst|Add0~16_combout\,
	combout => \test_inst|Equal1~0_combout\);

-- Location: LCCOMB_X40_Y22_N18
\test_inst|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal1~1_combout\ = (!\test_inst|Add0~18_combout\ & \test_inst|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|Add0~18_combout\,
	datad => \test_inst|Add0~22_combout\,
	combout => \test_inst|Equal1~1_combout\);

-- Location: LCCOMB_X40_Y22_N28
\test_inst|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal1~2_combout\ = (\test_inst|Add0~34_combout\ & (!\test_inst|Add0~30_combout\ & (\test_inst|Equal1~0_combout\ & \test_inst|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Add0~34_combout\,
	datab => \test_inst|Add0~30_combout\,
	datac => \test_inst|Equal1~0_combout\,
	datad => \test_inst|Equal1~1_combout\,
	combout => \test_inst|Equal1~2_combout\);

-- Location: FF_X41_Y22_N27
\test_inst|div_clk[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk\(29));

-- Location: LCCOMB_X41_Y22_N24
\test_inst|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add0~56_combout\ = (\test_inst|div_clk\(28) & (\test_inst|Add0~55\ $ (GND))) # (!\test_inst|div_clk\(28) & (!\test_inst|Add0~55\ & VCC))
-- \test_inst|Add0~57\ = CARRY((\test_inst|div_clk\(28) & !\test_inst|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|div_clk\(28),
	datad => VCC,
	cin => \test_inst|Add0~55\,
	combout => \test_inst|Add0~56_combout\,
	cout => \test_inst|Add0~57\);

-- Location: FF_X41_Y22_N25
\test_inst|div_clk[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk\(28));

-- Location: LCCOMB_X41_Y22_N26
\test_inst|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add0~58_combout\ = (\test_inst|div_clk\(29) & (!\test_inst|Add0~57\)) # (!\test_inst|div_clk\(29) & ((\test_inst|Add0~57\) # (GND)))
-- \test_inst|Add0~59\ = CARRY((!\test_inst|Add0~57\) # (!\test_inst|div_clk\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|div_clk\(29),
	datad => VCC,
	cin => \test_inst|Add0~57\,
	combout => \test_inst|Add0~58_combout\,
	cout => \test_inst|Add0~59\);

-- Location: FF_X41_Y22_N29
\test_inst|div_clk[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk\(30));

-- Location: LCCOMB_X41_Y22_N28
\test_inst|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add0~60_combout\ = (\test_inst|div_clk\(30) & (\test_inst|Add0~59\ $ (GND))) # (!\test_inst|div_clk\(30) & (!\test_inst|Add0~59\ & VCC))
-- \test_inst|Add0~61\ = CARRY((\test_inst|div_clk\(30) & !\test_inst|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|div_clk\(30),
	datad => VCC,
	cin => \test_inst|Add0~59\,
	combout => \test_inst|Add0~60_combout\,
	cout => \test_inst|Add0~61\);

-- Location: FF_X41_Y22_N31
\test_inst|div_clk[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk\(31));

-- Location: LCCOMB_X41_Y22_N30
\test_inst|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Add0~62_combout\ = \test_inst|div_clk\(31) $ (\test_inst|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|div_clk\(31),
	cin => \test_inst|Add0~61\,
	combout => \test_inst|Add0~62_combout\);

-- Location: LCCOMB_X42_Y22_N6
\test_inst|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal0~6_combout\ = (!\test_inst|Add0~58_combout\ & (!\test_inst|Add0~60_combout\ & (!\test_inst|Add0~56_combout\ & !\test_inst|Add0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Add0~58_combout\,
	datab => \test_inst|Add0~60_combout\,
	datac => \test_inst|Add0~56_combout\,
	datad => \test_inst|Add0~62_combout\,
	combout => \test_inst|Equal0~6_combout\);

-- Location: LCCOMB_X42_Y22_N20
\test_inst|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal1~3_combout\ = (\test_inst|Equal0~4_combout\ & (\test_inst|Equal0~5_combout\ & (\test_inst|Equal1~2_combout\ & \test_inst|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Equal0~4_combout\,
	datab => \test_inst|Equal0~5_combout\,
	datac => \test_inst|Equal1~2_combout\,
	datad => \test_inst|Equal0~6_combout\,
	combout => \test_inst|Equal1~3_combout\);

-- Location: LCCOMB_X42_Y22_N2
\test_inst|div_clk~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|div_clk~4_combout\ = (\test_inst|Add0~32_combout\ & !\test_inst|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \test_inst|Add0~32_combout\,
	datad => \test_inst|Equal1~3_combout\,
	combout => \test_inst|div_clk~4_combout\);

-- Location: FF_X42_Y22_N3
\test_inst|div_clk[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|div_clk~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|div_clk\(16));

-- Location: LCCOMB_X42_Y22_N10
\test_inst|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal0~2_combout\ = (\test_inst|Add0~32_combout\ & (!\test_inst|Add0~38_combout\ & (!\test_inst|Add0~36_combout\ & !\test_inst|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Add0~32_combout\,
	datab => \test_inst|Add0~38_combout\,
	datac => \test_inst|Add0~36_combout\,
	datad => \test_inst|Add0~28_combout\,
	combout => \test_inst|Equal0~2_combout\);

-- Location: LCCOMB_X40_Y23_N12
\test_inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal0~0_combout\ = (!\test_inst|Add0~2_combout\ & (!\test_inst|Add0~0_combout\ & (!\test_inst|Add0~6_combout\ & !\test_inst|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Add0~2_combout\,
	datab => \test_inst|Add0~0_combout\,
	datac => \test_inst|Add0~6_combout\,
	datad => \test_inst|Add0~4_combout\,
	combout => \test_inst|Equal0~0_combout\);

-- Location: LCCOMB_X42_Y22_N30
\test_inst|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal0~3_combout\ = (!\test_inst|Add0~40_combout\ & (!\test_inst|Add0~42_combout\ & (!\test_inst|Add0~44_combout\ & !\test_inst|Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Add0~40_combout\,
	datab => \test_inst|Add0~42_combout\,
	datac => \test_inst|Add0~44_combout\,
	datad => \test_inst|Add0~46_combout\,
	combout => \test_inst|Equal0~3_combout\);

-- Location: LCCOMB_X42_Y23_N12
\test_inst|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal0~1_combout\ = (!\test_inst|Add0~8_combout\ & (\test_inst|Add0~20_combout\ & (!\test_inst|Add0~26_combout\ & !\test_inst|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Add0~8_combout\,
	datab => \test_inst|Add0~20_combout\,
	datac => \test_inst|Add0~26_combout\,
	datad => \test_inst|Add0~24_combout\,
	combout => \test_inst|Equal0~1_combout\);

-- Location: LCCOMB_X42_Y22_N22
\test_inst|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal0~4_combout\ = (\test_inst|Equal0~2_combout\ & (\test_inst|Equal0~0_combout\ & (\test_inst|Equal0~3_combout\ & \test_inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Equal0~2_combout\,
	datab => \test_inst|Equal0~0_combout\,
	datac => \test_inst|Equal0~3_combout\,
	datad => \test_inst|Equal0~1_combout\,
	combout => \test_inst|Equal0~4_combout\);

-- Location: LCCOMB_X42_Y23_N30
\test_inst|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal0~7_combout\ = (\test_inst|Add0~10_combout\ & (!\test_inst|Add0~12_combout\ & (!\test_inst|Add0~16_combout\ & \test_inst|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Add0~10_combout\,
	datab => \test_inst|Add0~12_combout\,
	datac => \test_inst|Add0~16_combout\,
	datad => \test_inst|Add0~14_combout\,
	combout => \test_inst|Equal0~7_combout\);

-- Location: LCCOMB_X42_Y22_N12
\test_inst|lcd_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_clk~0_combout\ = (\test_inst|Add0~18_combout\ & (!\test_inst|Add0~22_combout\ & (\test_inst|Add0~30_combout\ & !\test_inst|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Add0~18_combout\,
	datab => \test_inst|Add0~22_combout\,
	datac => \test_inst|Add0~30_combout\,
	datad => \test_inst|Add0~34_combout\,
	combout => \test_inst|lcd_clk~0_combout\);

-- Location: LCCOMB_X42_Y22_N26
\test_inst|lcd_clk~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_clk~1_combout\ = (\test_inst|Equal0~7_combout\ & (\test_inst|lcd_clk~0_combout\ & (\test_inst|Equal0~5_combout\ & \test_inst|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Equal0~7_combout\,
	datab => \test_inst|lcd_clk~0_combout\,
	datac => \test_inst|Equal0~5_combout\,
	datad => \test_inst|Equal0~6_combout\,
	combout => \test_inst|lcd_clk~1_combout\);

-- Location: LCCOMB_X42_Y22_N16
\test_inst|lcd_clk~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_clk~2_combout\ = (\test_inst|Equal0~4_combout\ & ((\test_inst|lcd_clk~1_combout\) # ((\test_inst|lcd_clk~q\ & !\test_inst|Equal1~3_combout\)))) # (!\test_inst|Equal0~4_combout\ & (\test_inst|lcd_clk~q\ & ((!\test_inst|Equal1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Equal0~4_combout\,
	datab => \test_inst|lcd_clk~q\,
	datac => \test_inst|lcd_clk~1_combout\,
	datad => \test_inst|Equal1~3_combout\,
	combout => \test_inst|lcd_clk~2_combout\);

-- Location: LCCOMB_X42_Y22_N4
\test_inst|lcd_clk~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_clk~feeder_combout\ = \test_inst|lcd_clk~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \test_inst|lcd_clk~2_combout\,
	combout => \test_inst|lcd_clk~feeder_combout\);

-- Location: FF_X42_Y22_N5
\test_inst|lcd_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \test_inst|lcd_clk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|lcd_clk~q\);

-- Location: CLKCTRL_G8
\test_inst|lcd_clk~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \test_inst|lcd_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \test_inst|lcd_clk~clkctrl_outclk\);

-- Location: LCCOMB_X31_Y9_N0
\test_inst|i[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|i[0]~32_combout\ = \test_inst|i\(0) $ (VCC)
-- \test_inst|i[0]~33\ = CARRY(\test_inst|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|i\(0),
	datad => VCC,
	combout => \test_inst|i[0]~32_combout\,
	cout => \test_inst|i[0]~33\);

-- Location: LCCOMB_X31_Y9_N2
\test_inst|i[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|i[1]~34_combout\ = (\test_inst|i\(1) & (!\test_inst|i[0]~33\)) # (!\test_inst|i\(1) & ((\test_inst|i[0]~33\) # (GND)))
-- \test_inst|i[1]~35\ = CARRY((!\test_inst|i[0]~33\) # (!\test_inst|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|i\(1),
	datad => VCC,
	cin => \test_inst|i[0]~33\,
	combout => \test_inst|i[1]~34_combout\,
	cout => \test_inst|i[1]~35\);

-- Location: LCCOMB_X30_Y8_N26
\test_inst|write_data[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|write_data[0]~12_combout\ = (\test_inst|i\(2)) # (!\test_inst|Equal4~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|i\(2),
	datad => \test_inst|Equal4~9_combout\,
	combout => \test_inst|write_data[0]~12_combout\);

-- Location: LCCOMB_X31_Y8_N12
\test_inst|i[22]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|i[22]~76_combout\ = (\test_inst|i\(22) & (\test_inst|i[21]~75\ $ (GND))) # (!\test_inst|i\(22) & (!\test_inst|i[21]~75\ & VCC))
-- \test_inst|i[22]~77\ = CARRY((\test_inst|i\(22) & !\test_inst|i[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|i\(22),
	datad => VCC,
	cin => \test_inst|i[21]~75\,
	combout => \test_inst|i[22]~76_combout\,
	cout => \test_inst|i[22]~77\);

-- Location: LCCOMB_X31_Y8_N14
\test_inst|i[23]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|i[23]~78_combout\ = (\test_inst|i\(23) & (!\test_inst|i[22]~77\)) # (!\test_inst|i\(23) & ((\test_inst|i[22]~77\) # (GND)))
-- \test_inst|i[23]~79\ = CARRY((!\test_inst|i[22]~77\) # (!\test_inst|i\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|i\(23),
	datad => VCC,
	cin => \test_inst|i[22]~77\,
	combout => \test_inst|i[23]~78_combout\,
	cout => \test_inst|i[23]~79\);

-- Location: FF_X31_Y8_N15
\test_inst|i[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	d => \test_inst|i[23]~78_combout\,
	sclr => \test_inst|write_data[0]~30_combout\,
	ena => \test_inst|write_data[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|i\(23));

-- Location: LCCOMB_X31_Y8_N16
\test_inst|i[24]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|i[24]~80_combout\ = (\test_inst|i\(24) & (\test_inst|i[23]~79\ $ (GND))) # (!\test_inst|i\(24) & (!\test_inst|i[23]~79\ & VCC))
-- \test_inst|i[24]~81\ = CARRY((\test_inst|i\(24) & !\test_inst|i[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|i\(24),
	datad => VCC,
	cin => \test_inst|i[23]~79\,
	combout => \test_inst|i[24]~80_combout\,
	cout => \test_inst|i[24]~81\);

-- Location: FF_X31_Y8_N17
\test_inst|i[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	d => \test_inst|i[24]~80_combout\,
	sclr => \test_inst|write_data[0]~30_combout\,
	ena => \test_inst|write_data[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|i\(24));

-- Location: LCCOMB_X31_Y8_N18
\test_inst|i[25]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|i[25]~82_combout\ = (\test_inst|i\(25) & (!\test_inst|i[24]~81\)) # (!\test_inst|i\(25) & ((\test_inst|i[24]~81\) # (GND)))
-- \test_inst|i[25]~83\ = CARRY((!\test_inst|i[24]~81\) # (!\test_inst|i\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|i\(25),
	datad => VCC,
	cin => \test_inst|i[24]~81\,
	combout => \test_inst|i[25]~82_combout\,
	cout => \test_inst|i[25]~83\);

-- Location: FF_X31_Y8_N19
\test_inst|i[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	d => \test_inst|i[25]~82_combout\,
	sclr => \test_inst|write_data[0]~30_combout\,
	ena => \test_inst|write_data[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|i\(25));

-- Location: LCCOMB_X31_Y8_N20
\test_inst|i[26]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|i[26]~84_combout\ = (\test_inst|i\(26) & (\test_inst|i[25]~83\ $ (GND))) # (!\test_inst|i\(26) & (!\test_inst|i[25]~83\ & VCC))
-- \test_inst|i[26]~85\ = CARRY((\test_inst|i\(26) & !\test_inst|i[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|i\(26),
	datad => VCC,
	cin => \test_inst|i[25]~83\,
	combout => \test_inst|i[26]~84_combout\,
	cout => \test_inst|i[26]~85\);

-- Location: FF_X31_Y8_N21
\test_inst|i[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	d => \test_inst|i[26]~84_combout\,
	sclr => \test_inst|write_data[0]~30_combout\,
	ena => \test_inst|write_data[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|i\(26));

-- Location: LCCOMB_X31_Y8_N22
\test_inst|i[27]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|i[27]~86_combout\ = (\test_inst|i\(27) & (!\test_inst|i[26]~85\)) # (!\test_inst|i\(27) & ((\test_inst|i[26]~85\) # (GND)))
-- \test_inst|i[27]~87\ = CARRY((!\test_inst|i[26]~85\) # (!\test_inst|i\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|i\(27),
	datad => VCC,
	cin => \test_inst|i[26]~85\,
	combout => \test_inst|i[27]~86_combout\,
	cout => \test_inst|i[27]~87\);

-- Location: FF_X31_Y8_N23
\test_inst|i[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	d => \test_inst|i[27]~86_combout\,
	sclr => \test_inst|write_data[0]~30_combout\,
	ena => \test_inst|write_data[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|i\(27));

-- Location: LCCOMB_X31_Y8_N24
\test_inst|i[28]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|i[28]~88_combout\ = (\test_inst|i\(28) & (\test_inst|i[27]~87\ $ (GND))) # (!\test_inst|i\(28) & (!\test_inst|i[27]~87\ & VCC))
-- \test_inst|i[28]~89\ = CARRY((\test_inst|i\(28) & !\test_inst|i[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|i\(28),
	datad => VCC,
	cin => \test_inst|i[27]~87\,
	combout => \test_inst|i[28]~88_combout\,
	cout => \test_inst|i[28]~89\);

-- Location: FF_X31_Y8_N25
\test_inst|i[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	d => \test_inst|i[28]~88_combout\,
	sclr => \test_inst|write_data[0]~30_combout\,
	ena => \test_inst|write_data[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|i\(28));

-- Location: LCCOMB_X31_Y8_N26
\test_inst|i[29]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|i[29]~90_combout\ = (\test_inst|i\(29) & (!\test_inst|i[28]~89\)) # (!\test_inst|i\(29) & ((\test_inst|i[28]~89\) # (GND)))
-- \test_inst|i[29]~91\ = CARRY((!\test_inst|i[28]~89\) # (!\test_inst|i\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|i\(29),
	datad => VCC,
	cin => \test_inst|i[28]~89\,
	combout => \test_inst|i[29]~90_combout\,
	cout => \test_inst|i[29]~91\);

-- Location: FF_X31_Y8_N27
\test_inst|i[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	d => \test_inst|i[29]~90_combout\,
	sclr => \test_inst|write_data[0]~30_combout\,
	ena => \test_inst|write_data[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|i\(29));

-- Location: LCCOMB_X31_Y8_N28
\test_inst|i[30]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|i[30]~92_combout\ = (\test_inst|i\(30) & (\test_inst|i[29]~91\ $ (GND))) # (!\test_inst|i\(30) & (!\test_inst|i[29]~91\ & VCC))
-- \test_inst|i[30]~93\ = CARRY((\test_inst|i\(30) & !\test_inst|i[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|i\(30),
	datad => VCC,
	cin => \test_inst|i[29]~91\,
	combout => \test_inst|i[30]~92_combout\,
	cout => \test_inst|i[30]~93\);

-- Location: FF_X31_Y8_N29
\test_inst|i[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	d => \test_inst|i[30]~92_combout\,
	sclr => \test_inst|write_data[0]~30_combout\,
	ena => \test_inst|write_data[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|i\(30));

-- Location: LCCOMB_X31_Y8_N30
\test_inst|i[31]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|i[31]~94_combout\ = \test_inst|i\(31) $ (\test_inst|i[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|i\(31),
	cin => \test_inst|i[30]~93\,
	combout => \test_inst|i[31]~94_combout\);

-- Location: FF_X31_Y8_N31
\test_inst|i[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	d => \test_inst|i[31]~94_combout\,
	sclr => \test_inst|write_data[0]~30_combout\,
	ena => \test_inst|write_data[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|i\(31));

-- Location: LCCOMB_X30_Y8_N30
\test_inst|Equal4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal4~7_combout\ = (!\test_inst|i\(31) & (!\test_inst|i\(29) & (!\test_inst|i\(30) & !\test_inst|i\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|i\(31),
	datab => \test_inst|i\(29),
	datac => \test_inst|i\(30),
	datad => \test_inst|i\(28),
	combout => \test_inst|Equal4~7_combout\);

-- Location: LCCOMB_X30_Y8_N24
\test_inst|Equal4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal4~6_combout\ = (!\test_inst|i\(26) & (!\test_inst|i\(25) & (!\test_inst|i\(27) & !\test_inst|i\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|i\(26),
	datab => \test_inst|i\(25),
	datac => \test_inst|i\(27),
	datad => \test_inst|i\(24),
	combout => \test_inst|Equal4~6_combout\);

-- Location: LCCOMB_X30_Y8_N8
\test_inst|Equal4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal4~8_combout\ = (\test_inst|Equal4~7_combout\ & \test_inst|Equal4~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \test_inst|Equal4~7_combout\,
	datad => \test_inst|Equal4~6_combout\,
	combout => \test_inst|Equal4~8_combout\);

-- Location: LCCOMB_X30_Y8_N14
\test_inst|Equal12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal12~0_combout\ = (\test_inst|i\(3) & (!\test_inst|i\(1) & !\test_inst|i\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|i\(3),
	datac => \test_inst|i\(1),
	datad => \test_inst|i\(2),
	combout => \test_inst|Equal12~0_combout\);

-- Location: LCCOMB_X30_Y8_N6
\test_inst|Equal4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal4~1_combout\ = (!\test_inst|i\(8) & (!\test_inst|i\(9) & (!\test_inst|i\(11) & !\test_inst|i\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|i\(8),
	datab => \test_inst|i\(9),
	datac => \test_inst|i\(11),
	datad => \test_inst|i\(10),
	combout => \test_inst|Equal4~1_combout\);

-- Location: LCCOMB_X30_Y8_N18
\test_inst|Equal4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal4~3_combout\ = (!\test_inst|i\(18) & (!\test_inst|i\(16) & (!\test_inst|i\(17) & !\test_inst|i\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|i\(18),
	datab => \test_inst|i\(16),
	datac => \test_inst|i\(17),
	datad => \test_inst|i\(19),
	combout => \test_inst|Equal4~3_combout\);

-- Location: LCCOMB_X30_Y8_N4
\test_inst|Equal4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal4~2_combout\ = (!\test_inst|i\(12) & (!\test_inst|i\(14) & (!\test_inst|i\(15) & !\test_inst|i\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|i\(12),
	datab => \test_inst|i\(14),
	datac => \test_inst|i\(15),
	datad => \test_inst|i\(13),
	combout => \test_inst|Equal4~2_combout\);

-- Location: LCCOMB_X30_Y8_N16
\test_inst|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal4~0_combout\ = (!\test_inst|i\(5) & (!\test_inst|i\(6) & (!\test_inst|i\(4) & !\test_inst|i\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|i\(5),
	datab => \test_inst|i\(6),
	datac => \test_inst|i\(4),
	datad => \test_inst|i\(7),
	combout => \test_inst|Equal4~0_combout\);

-- Location: LCCOMB_X30_Y8_N28
\test_inst|Equal4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal4~4_combout\ = (\test_inst|Equal4~1_combout\ & (\test_inst|Equal4~3_combout\ & (\test_inst|Equal4~2_combout\ & \test_inst|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Equal4~1_combout\,
	datab => \test_inst|Equal4~3_combout\,
	datac => \test_inst|Equal4~2_combout\,
	datad => \test_inst|Equal4~0_combout\,
	combout => \test_inst|Equal4~4_combout\);

-- Location: LCCOMB_X30_Y8_N0
\test_inst|Equal12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal12~1_combout\ = (\test_inst|Equal4~5_combout\ & (\test_inst|Equal4~8_combout\ & (\test_inst|Equal12~0_combout\ & \test_inst|Equal4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Equal4~5_combout\,
	datab => \test_inst|Equal4~8_combout\,
	datac => \test_inst|Equal12~0_combout\,
	datad => \test_inst|Equal4~4_combout\,
	combout => \test_inst|Equal12~1_combout\);

-- Location: LCCOMB_X32_Y8_N16
\test_inst|Equal13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal13~0_combout\ = (!\test_inst|Equal12~1_combout\) # (!\test_inst|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \test_inst|i\(0),
	datad => \test_inst|Equal12~1_combout\,
	combout => \test_inst|Equal13~0_combout\);

-- Location: LCCOMB_X30_Y8_N12
\test_inst|Equal10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal10~0_combout\ = (!\test_inst|i\(0) & (\test_inst|i\(2) & (\test_inst|i\(1) & \test_inst|Equal4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|i\(0),
	datab => \test_inst|i\(2),
	datac => \test_inst|i\(1),
	datad => \test_inst|Equal4~9_combout\,
	combout => \test_inst|Equal10~0_combout\);

-- Location: LCCOMB_X32_Y8_N2
\test_inst|Equal8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal8~0_combout\ = (\test_inst|i\(2) & (!\test_inst|i\(1) & (!\test_inst|i\(0) & \test_inst|Equal4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|i\(2),
	datab => \test_inst|i\(1),
	datac => \test_inst|i\(0),
	datad => \test_inst|Equal4~9_combout\,
	combout => \test_inst|Equal8~0_combout\);

-- Location: LCCOMB_X32_Y8_N28
\test_inst|write_column~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|write_column~0_combout\ = (!\test_inst|Equal10~0_combout\ & (!\test_inst|Equal8~0_combout\ & ((\test_inst|i\(0)) # (!\test_inst|Equal12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Equal12~1_combout\,
	datab => \test_inst|i\(0),
	datac => \test_inst|Equal10~0_combout\,
	datad => \test_inst|Equal8~0_combout\,
	combout => \test_inst|write_column~0_combout\);

-- Location: LCCOMB_X32_Y8_N4
\test_inst|write_data[0]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|write_data[0]~29_combout\ = (\test_inst|write_column~0_combout\ & (((!\test_inst|i\(0)) # (!\test_inst|i\(2))) # (!\test_inst|Equal4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Equal4~9_combout\,
	datab => \test_inst|i\(2),
	datac => \test_inst|i\(0),
	datad => \test_inst|write_column~0_combout\,
	combout => \test_inst|write_data[0]~29_combout\);

-- Location: LCCOMB_X32_Y8_N12
\test_inst|lcd_instance|Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|Selector11~0_combout\ = (\test_inst|lcd_instance|state.S8~q\) # ((!\test_inst|lcd_instance|state.S0~q\ & (\test_inst|lcd_instance|ack~q\ & !\test_inst|lcd_instance|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|lcd_instance|state.S8~q\,
	datab => \test_inst|lcd_instance|state.S0~q\,
	datac => \test_inst|lcd_instance|ack~q\,
	datad => \test_inst|lcd_instance|LessThan0~0_combout\,
	combout => \test_inst|lcd_instance|Selector11~0_combout\);

-- Location: FF_X32_Y8_N13
\test_inst|lcd_instance|ack\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|clk_slow~clkctrl_outclk\,
	d => \test_inst|lcd_instance|Selector11~0_combout\,
	sclr => \reset_lcd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|lcd_instance|ack~q\);

-- Location: LCCOMB_X32_Y8_N26
\test_inst|write_data[0]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|write_data[0]~27_combout\ = (\test_inst|lcd_instance|ack~q\ & (((!\test_inst|write_data[0]~29_combout\) # (!\test_inst|Equal13~0_combout\)) # (!\test_inst|write_data[0]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|write_data[0]~12_combout\,
	datab => \test_inst|Equal13~0_combout\,
	datac => \test_inst|write_data[0]~29_combout\,
	datad => \test_inst|lcd_instance|ack~q\,
	combout => \test_inst|write_data[0]~27_combout\);

-- Location: FF_X31_Y9_N3
\test_inst|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	d => \test_inst|i[1]~34_combout\,
	sclr => \test_inst|write_data[0]~30_combout\,
	ena => \test_inst|write_data[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|i\(1));

-- Location: LCCOMB_X31_Y9_N4
\test_inst|i[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|i[2]~36_combout\ = (\test_inst|i\(2) & (\test_inst|i[1]~35\ $ (GND))) # (!\test_inst|i\(2) & (!\test_inst|i[1]~35\ & VCC))
-- \test_inst|i[2]~37\ = CARRY((\test_inst|i\(2) & !\test_inst|i[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|i\(2),
	datad => VCC,
	cin => \test_inst|i[1]~35\,
	combout => \test_inst|i[2]~36_combout\,
	cout => \test_inst|i[2]~37\);

-- Location: FF_X31_Y9_N5
\test_inst|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	d => \test_inst|i[2]~36_combout\,
	sclr => \test_inst|write_data[0]~30_combout\,
	ena => \test_inst|write_data[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|i\(2));

-- Location: LCCOMB_X31_Y9_N6
\test_inst|i[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|i[3]~38_combout\ = (\test_inst|i\(3) & (!\test_inst|i[2]~37\)) # (!\test_inst|i\(3) & ((\test_inst|i[2]~37\) # (GND)))
-- \test_inst|i[3]~39\ = CARRY((!\test_inst|i[2]~37\) # (!\test_inst|i\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|i\(3),
	datad => VCC,
	cin => \test_inst|i[2]~37\,
	combout => \test_inst|i[3]~38_combout\,
	cout => \test_inst|i[3]~39\);

-- Location: FF_X31_Y9_N7
\test_inst|i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	d => \test_inst|i[3]~38_combout\,
	sclr => \test_inst|write_data[0]~30_combout\,
	ena => \test_inst|write_data[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|i\(3));

-- Location: LCCOMB_X31_Y9_N8
\test_inst|i[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|i[4]~40_combout\ = (\test_inst|i\(4) & (\test_inst|i[3]~39\ $ (GND))) # (!\test_inst|i\(4) & (!\test_inst|i[3]~39\ & VCC))
-- \test_inst|i[4]~41\ = CARRY((\test_inst|i\(4) & !\test_inst|i[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|i\(4),
	datad => VCC,
	cin => \test_inst|i[3]~39\,
	combout => \test_inst|i[4]~40_combout\,
	cout => \test_inst|i[4]~41\);

-- Location: FF_X31_Y9_N9
\test_inst|i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	d => \test_inst|i[4]~40_combout\,
	sclr => \test_inst|write_data[0]~30_combout\,
	ena => \test_inst|write_data[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|i\(4));

-- Location: LCCOMB_X31_Y9_N10
\test_inst|i[5]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|i[5]~42_combout\ = (\test_inst|i\(5) & (!\test_inst|i[4]~41\)) # (!\test_inst|i\(5) & ((\test_inst|i[4]~41\) # (GND)))
-- \test_inst|i[5]~43\ = CARRY((!\test_inst|i[4]~41\) # (!\test_inst|i\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|i\(5),
	datad => VCC,
	cin => \test_inst|i[4]~41\,
	combout => \test_inst|i[5]~42_combout\,
	cout => \test_inst|i[5]~43\);

-- Location: FF_X31_Y9_N11
\test_inst|i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	d => \test_inst|i[5]~42_combout\,
	sclr => \test_inst|write_data[0]~30_combout\,
	ena => \test_inst|write_data[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|i\(5));

-- Location: LCCOMB_X31_Y9_N12
\test_inst|i[6]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|i[6]~44_combout\ = (\test_inst|i\(6) & (\test_inst|i[5]~43\ $ (GND))) # (!\test_inst|i\(6) & (!\test_inst|i[5]~43\ & VCC))
-- \test_inst|i[6]~45\ = CARRY((\test_inst|i\(6) & !\test_inst|i[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|i\(6),
	datad => VCC,
	cin => \test_inst|i[5]~43\,
	combout => \test_inst|i[6]~44_combout\,
	cout => \test_inst|i[6]~45\);

-- Location: FF_X30_Y8_N21
\test_inst|i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	asdata => \test_inst|i[6]~44_combout\,
	sclr => \test_inst|write_data[0]~30_combout\,
	sload => VCC,
	ena => \test_inst|write_data[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|i\(6));

-- Location: LCCOMB_X31_Y9_N14
\test_inst|i[7]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|i[7]~46_combout\ = (\test_inst|i\(7) & (!\test_inst|i[6]~45\)) # (!\test_inst|i\(7) & ((\test_inst|i[6]~45\) # (GND)))
-- \test_inst|i[7]~47\ = CARRY((!\test_inst|i[6]~45\) # (!\test_inst|i\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|i\(7),
	datad => VCC,
	cin => \test_inst|i[6]~45\,
	combout => \test_inst|i[7]~46_combout\,
	cout => \test_inst|i[7]~47\);

-- Location: FF_X31_Y9_N15
\test_inst|i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	d => \test_inst|i[7]~46_combout\,
	sclr => \test_inst|write_data[0]~30_combout\,
	ena => \test_inst|write_data[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|i\(7));

-- Location: LCCOMB_X31_Y9_N16
\test_inst|i[8]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|i[8]~48_combout\ = (\test_inst|i\(8) & (\test_inst|i[7]~47\ $ (GND))) # (!\test_inst|i\(8) & (!\test_inst|i[7]~47\ & VCC))
-- \test_inst|i[8]~49\ = CARRY((\test_inst|i\(8) & !\test_inst|i[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|i\(8),
	datad => VCC,
	cin => \test_inst|i[7]~47\,
	combout => \test_inst|i[8]~48_combout\,
	cout => \test_inst|i[8]~49\);

-- Location: FF_X31_Y9_N17
\test_inst|i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	d => \test_inst|i[8]~48_combout\,
	sclr => \test_inst|write_data[0]~30_combout\,
	ena => \test_inst|write_data[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|i\(8));

-- Location: LCCOMB_X31_Y9_N18
\test_inst|i[9]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|i[9]~50_combout\ = (\test_inst|i\(9) & (!\test_inst|i[8]~49\)) # (!\test_inst|i\(9) & ((\test_inst|i[8]~49\) # (GND)))
-- \test_inst|i[9]~51\ = CARRY((!\test_inst|i[8]~49\) # (!\test_inst|i\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|i\(9),
	datad => VCC,
	cin => \test_inst|i[8]~49\,
	combout => \test_inst|i[9]~50_combout\,
	cout => \test_inst|i[9]~51\);

-- Location: FF_X31_Y9_N19
\test_inst|i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	d => \test_inst|i[9]~50_combout\,
	sclr => \test_inst|write_data[0]~30_combout\,
	ena => \test_inst|write_data[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|i\(9));

-- Location: LCCOMB_X31_Y9_N20
\test_inst|i[10]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|i[10]~52_combout\ = (\test_inst|i\(10) & (\test_inst|i[9]~51\ $ (GND))) # (!\test_inst|i\(10) & (!\test_inst|i[9]~51\ & VCC))
-- \test_inst|i[10]~53\ = CARRY((\test_inst|i\(10) & !\test_inst|i[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|i\(10),
	datad => VCC,
	cin => \test_inst|i[9]~51\,
	combout => \test_inst|i[10]~52_combout\,
	cout => \test_inst|i[10]~53\);

-- Location: FF_X31_Y9_N21
\test_inst|i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	d => \test_inst|i[10]~52_combout\,
	sclr => \test_inst|write_data[0]~30_combout\,
	ena => \test_inst|write_data[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|i\(10));

-- Location: LCCOMB_X31_Y9_N22
\test_inst|i[11]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|i[11]~54_combout\ = (\test_inst|i\(11) & (!\test_inst|i[10]~53\)) # (!\test_inst|i\(11) & ((\test_inst|i[10]~53\) # (GND)))
-- \test_inst|i[11]~55\ = CARRY((!\test_inst|i[10]~53\) # (!\test_inst|i\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|i\(11),
	datad => VCC,
	cin => \test_inst|i[10]~53\,
	combout => \test_inst|i[11]~54_combout\,
	cout => \test_inst|i[11]~55\);

-- Location: FF_X31_Y9_N23
\test_inst|i[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	d => \test_inst|i[11]~54_combout\,
	sclr => \test_inst|write_data[0]~30_combout\,
	ena => \test_inst|write_data[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|i\(11));

-- Location: LCCOMB_X31_Y9_N24
\test_inst|i[12]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|i[12]~56_combout\ = (\test_inst|i\(12) & (\test_inst|i[11]~55\ $ (GND))) # (!\test_inst|i\(12) & (!\test_inst|i[11]~55\ & VCC))
-- \test_inst|i[12]~57\ = CARRY((\test_inst|i\(12) & !\test_inst|i[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|i\(12),
	datad => VCC,
	cin => \test_inst|i[11]~55\,
	combout => \test_inst|i[12]~56_combout\,
	cout => \test_inst|i[12]~57\);

-- Location: FF_X30_Y8_N27
\test_inst|i[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	asdata => \test_inst|i[12]~56_combout\,
	sclr => \test_inst|write_data[0]~30_combout\,
	sload => VCC,
	ena => \test_inst|write_data[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|i\(12));

-- Location: LCCOMB_X31_Y9_N26
\test_inst|i[13]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|i[13]~58_combout\ = (\test_inst|i\(13) & (!\test_inst|i[12]~57\)) # (!\test_inst|i\(13) & ((\test_inst|i[12]~57\) # (GND)))
-- \test_inst|i[13]~59\ = CARRY((!\test_inst|i[12]~57\) # (!\test_inst|i\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|i\(13),
	datad => VCC,
	cin => \test_inst|i[12]~57\,
	combout => \test_inst|i[13]~58_combout\,
	cout => \test_inst|i[13]~59\);

-- Location: FF_X31_Y9_N27
\test_inst|i[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	d => \test_inst|i[13]~58_combout\,
	sclr => \test_inst|write_data[0]~30_combout\,
	ena => \test_inst|write_data[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|i\(13));

-- Location: LCCOMB_X31_Y9_N28
\test_inst|i[14]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|i[14]~60_combout\ = (\test_inst|i\(14) & (\test_inst|i[13]~59\ $ (GND))) # (!\test_inst|i\(14) & (!\test_inst|i[13]~59\ & VCC))
-- \test_inst|i[14]~61\ = CARRY((\test_inst|i\(14) & !\test_inst|i[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|i\(14),
	datad => VCC,
	cin => \test_inst|i[13]~59\,
	combout => \test_inst|i[14]~60_combout\,
	cout => \test_inst|i[14]~61\);

-- Location: FF_X29_Y8_N29
\test_inst|i[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	asdata => \test_inst|i[14]~60_combout\,
	sclr => \test_inst|write_data[0]~30_combout\,
	sload => VCC,
	ena => \test_inst|write_data[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|i\(14));

-- Location: LCCOMB_X31_Y9_N30
\test_inst|i[15]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|i[15]~62_combout\ = (\test_inst|i\(15) & (!\test_inst|i[14]~61\)) # (!\test_inst|i\(15) & ((\test_inst|i[14]~61\) # (GND)))
-- \test_inst|i[15]~63\ = CARRY((!\test_inst|i[14]~61\) # (!\test_inst|i\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|i\(15),
	datad => VCC,
	cin => \test_inst|i[14]~61\,
	combout => \test_inst|i[15]~62_combout\,
	cout => \test_inst|i[15]~63\);

-- Location: FF_X31_Y9_N31
\test_inst|i[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	d => \test_inst|i[15]~62_combout\,
	sclr => \test_inst|write_data[0]~30_combout\,
	ena => \test_inst|write_data[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|i\(15));

-- Location: LCCOMB_X31_Y8_N0
\test_inst|i[16]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|i[16]~64_combout\ = (\test_inst|i\(16) & (\test_inst|i[15]~63\ $ (GND))) # (!\test_inst|i\(16) & (!\test_inst|i[15]~63\ & VCC))
-- \test_inst|i[16]~65\ = CARRY((\test_inst|i\(16) & !\test_inst|i[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|i\(16),
	datad => VCC,
	cin => \test_inst|i[15]~63\,
	combout => \test_inst|i[16]~64_combout\,
	cout => \test_inst|i[16]~65\);

-- Location: FF_X31_Y8_N1
\test_inst|i[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	d => \test_inst|i[16]~64_combout\,
	sclr => \test_inst|write_data[0]~30_combout\,
	ena => \test_inst|write_data[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|i\(16));

-- Location: LCCOMB_X31_Y8_N2
\test_inst|i[17]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|i[17]~66_combout\ = (\test_inst|i\(17) & (!\test_inst|i[16]~65\)) # (!\test_inst|i\(17) & ((\test_inst|i[16]~65\) # (GND)))
-- \test_inst|i[17]~67\ = CARRY((!\test_inst|i[16]~65\) # (!\test_inst|i\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|i\(17),
	datad => VCC,
	cin => \test_inst|i[16]~65\,
	combout => \test_inst|i[17]~66_combout\,
	cout => \test_inst|i[17]~67\);

-- Location: FF_X31_Y8_N3
\test_inst|i[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	d => \test_inst|i[17]~66_combout\,
	sclr => \test_inst|write_data[0]~30_combout\,
	ena => \test_inst|write_data[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|i\(17));

-- Location: LCCOMB_X31_Y8_N4
\test_inst|i[18]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|i[18]~68_combout\ = (\test_inst|i\(18) & (\test_inst|i[17]~67\ $ (GND))) # (!\test_inst|i\(18) & (!\test_inst|i[17]~67\ & VCC))
-- \test_inst|i[18]~69\ = CARRY((\test_inst|i\(18) & !\test_inst|i[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|i\(18),
	datad => VCC,
	cin => \test_inst|i[17]~67\,
	combout => \test_inst|i[18]~68_combout\,
	cout => \test_inst|i[18]~69\);

-- Location: FF_X31_Y8_N5
\test_inst|i[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	d => \test_inst|i[18]~68_combout\,
	sclr => \test_inst|write_data[0]~30_combout\,
	ena => \test_inst|write_data[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|i\(18));

-- Location: LCCOMB_X31_Y8_N6
\test_inst|i[19]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|i[19]~70_combout\ = (\test_inst|i\(19) & (!\test_inst|i[18]~69\)) # (!\test_inst|i\(19) & ((\test_inst|i[18]~69\) # (GND)))
-- \test_inst|i[19]~71\ = CARRY((!\test_inst|i[18]~69\) # (!\test_inst|i\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|i\(19),
	datad => VCC,
	cin => \test_inst|i[18]~69\,
	combout => \test_inst|i[19]~70_combout\,
	cout => \test_inst|i[19]~71\);

-- Location: FF_X31_Y8_N7
\test_inst|i[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	d => \test_inst|i[19]~70_combout\,
	sclr => \test_inst|write_data[0]~30_combout\,
	ena => \test_inst|write_data[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|i\(19));

-- Location: LCCOMB_X31_Y8_N8
\test_inst|i[20]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|i[20]~72_combout\ = (\test_inst|i\(20) & (\test_inst|i[19]~71\ $ (GND))) # (!\test_inst|i\(20) & (!\test_inst|i[19]~71\ & VCC))
-- \test_inst|i[20]~73\ = CARRY((\test_inst|i\(20) & !\test_inst|i[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|i\(20),
	datad => VCC,
	cin => \test_inst|i[19]~71\,
	combout => \test_inst|i[20]~72_combout\,
	cout => \test_inst|i[20]~73\);

-- Location: FF_X31_Y8_N9
\test_inst|i[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	d => \test_inst|i[20]~72_combout\,
	sclr => \test_inst|write_data[0]~30_combout\,
	ena => \test_inst|write_data[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|i\(20));

-- Location: LCCOMB_X31_Y8_N10
\test_inst|i[21]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|i[21]~74_combout\ = (\test_inst|i\(21) & (!\test_inst|i[20]~73\)) # (!\test_inst|i\(21) & ((\test_inst|i[20]~73\) # (GND)))
-- \test_inst|i[21]~75\ = CARRY((!\test_inst|i[20]~73\) # (!\test_inst|i\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|i\(21),
	datad => VCC,
	cin => \test_inst|i[20]~73\,
	combout => \test_inst|i[21]~74_combout\,
	cout => \test_inst|i[21]~75\);

-- Location: FF_X31_Y8_N11
\test_inst|i[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	d => \test_inst|i[21]~74_combout\,
	sclr => \test_inst|write_data[0]~30_combout\,
	ena => \test_inst|write_data[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|i\(21));

-- Location: FF_X31_Y8_N13
\test_inst|i[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	d => \test_inst|i[22]~76_combout\,
	sclr => \test_inst|write_data[0]~30_combout\,
	ena => \test_inst|write_data[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|i\(22));

-- Location: LCCOMB_X30_Y8_N22
\test_inst|Equal4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal4~5_combout\ = (!\test_inst|i\(22) & (!\test_inst|i\(20) & (!\test_inst|i\(21) & !\test_inst|i\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|i\(22),
	datab => \test_inst|i\(20),
	datac => \test_inst|i\(21),
	datad => \test_inst|i\(23),
	combout => \test_inst|Equal4~5_combout\);

-- Location: LCCOMB_X30_Y8_N2
\test_inst|Equal4~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal4~9_combout\ = (\test_inst|Equal4~5_combout\ & (!\test_inst|i\(3) & (\test_inst|Equal4~8_combout\ & \test_inst|Equal4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Equal4~5_combout\,
	datab => \test_inst|i\(3),
	datac => \test_inst|Equal4~8_combout\,
	datad => \test_inst|Equal4~4_combout\,
	combout => \test_inst|Equal4~9_combout\);

-- Location: LCCOMB_X32_Y8_N22
\test_inst|write_data[0]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|write_data[0]~30_combout\ = (\test_inst|write_column~0_combout\ & (((\test_inst|i\(2) & !\test_inst|i\(0))) # (!\test_inst|Equal4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Equal4~9_combout\,
	datab => \test_inst|i\(2),
	datac => \test_inst|i\(0),
	datad => \test_inst|write_column~0_combout\,
	combout => \test_inst|write_data[0]~30_combout\);

-- Location: FF_X31_Y9_N1
\test_inst|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	d => \test_inst|i[0]~32_combout\,
	sclr => \test_inst|write_data[0]~30_combout\,
	ena => \test_inst|write_data[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|i\(0));

-- Location: LCCOMB_X31_Y7_N26
\test_inst|write_data[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|write_data[0]~15_combout\ = (!\test_inst|i\(0) & (!\test_inst|i\(2) & \test_inst|Equal4~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|i\(0),
	datac => \test_inst|i\(2),
	datad => \test_inst|Equal4~9_combout\,
	combout => \test_inst|write_data[0]~15_combout\);

-- Location: LCCOMB_X31_Y7_N2
\test_inst|write_data[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|write_data[0]~14_combout\ = (\test_inst|i\(1)) # ((\test_inst|i\(2)) # (!\test_inst|Equal4~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|i\(1),
	datac => \test_inst|i\(2),
	datad => \test_inst|Equal4~9_combout\,
	combout => \test_inst|write_data[0]~14_combout\);

-- Location: LCCOMB_X29_Y4_N12
\test_inst|covid_det_instance|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|covid_det_instance|Equal0~0_combout\ = (!\test_inst|covid_det_instance|bit_index\(0) & (\test_inst|covid_det_instance|bit_index\(3) & (!\test_inst|covid_det_instance|bit_index\(2) & !\test_inst|covid_det_instance|bit_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|covid_det_instance|bit_index\(0),
	datab => \test_inst|covid_det_instance|bit_index\(3),
	datac => \test_inst|covid_det_instance|bit_index\(2),
	datad => \test_inst|covid_det_instance|bit_index\(1),
	combout => \test_inst|covid_det_instance|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y4_N6
\test_inst|covid_det_instance|out_ascii_new2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|covid_det_instance|out_ascii_new2~0_combout\ = (\test_inst|covid_det_instance|Equal0~0_combout\ & ((\test_inst|covid_det_instance|Mux0~5_combout\))) # (!\test_inst|covid_det_instance|Equal0~0_combout\ & 
-- (\test_inst|covid_det_instance|out_ascii_new2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|covid_det_instance|Equal0~0_combout\,
	datab => \test_inst|covid_det_instance|out_ascii_new2~0_combout\,
	datad => \test_inst|covid_det_instance|Mux0~5_combout\,
	combout => \test_inst|covid_det_instance|out_ascii_new2~0_combout\);

-- Location: LCCOMB_X31_Y7_N12
\test_inst|write_data~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|write_data~16_combout\ = (\test_inst|lcd_instance|ack~q\ & ((\test_inst|write_data[0]~15_combout\) # ((\test_inst|write_data[0]~14_combout\) # (\test_inst|covid_det_instance|out_ascii_new2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|write_data[0]~15_combout\,
	datab => \test_inst|write_data[0]~14_combout\,
	datac => \test_inst|covid_det_instance|out_ascii_new2~0_combout\,
	datad => \test_inst|lcd_instance|ack~q\,
	combout => \test_inst|write_data~16_combout\);

-- Location: LCCOMB_X29_Y4_N22
\test_inst|covid_det_instance|out_ascii_new2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|covid_det_instance|out_ascii_new2~6_combout\ = (!\test_inst|covid_det_instance|bit_index\(0) & (!\test_inst|covid_det_instance|bit_index\(2) & !\test_inst|covid_det_instance|bit_index\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|covid_det_instance|bit_index\(0),
	datac => \test_inst|covid_det_instance|bit_index\(2),
	datad => \test_inst|covid_det_instance|bit_index\(1),
	combout => \test_inst|covid_det_instance|out_ascii_new2~6_combout\);

-- Location: LCCOMB_X29_Y4_N20
\test_inst|covid_det_instance|out_ascii_new2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|covid_det_instance|out_ascii_new2~7_combout\ = (\test_inst|covid_det_instance|bit_index\(3) & (\test_inst|covid_det_instance|out_ascii_new2~7_combout\)) # (!\test_inst|covid_det_instance|bit_index\(3) & 
-- ((\test_inst|covid_det_instance|out_ascii_new2~6_combout\ & ((\test_inst|covid_det_instance|Mux0~2_combout\))) # (!\test_inst|covid_det_instance|out_ascii_new2~6_combout\ & (\test_inst|covid_det_instance|out_ascii_new2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|covid_det_instance|out_ascii_new2~7_combout\,
	datab => \test_inst|covid_det_instance|bit_index\(3),
	datac => \test_inst|covid_det_instance|out_ascii_new2~6_combout\,
	datad => \test_inst|covid_det_instance|Mux0~2_combout\,
	combout => \test_inst|covid_det_instance|out_ascii_new2~7_combout\);

-- Location: LCCOMB_X30_Y4_N30
\test_inst|covid_det_instance|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|covid_det_instance|Equal0~5_combout\ = (!\test_inst|covid_det_instance|bit_index\(3) & (\test_inst|covid_det_instance|bit_index\(1) & (!\test_inst|covid_det_instance|bit_index\(0) & !\test_inst|covid_det_instance|bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|covid_det_instance|bit_index\(3),
	datab => \test_inst|covid_det_instance|bit_index\(1),
	datac => \test_inst|covid_det_instance|bit_index\(0),
	datad => \test_inst|covid_det_instance|bit_index\(2),
	combout => \test_inst|covid_det_instance|Equal0~5_combout\);

-- Location: LCCOMB_X29_Y4_N10
\test_inst|covid_det_instance|out_ascii_new2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|covid_det_instance|out_ascii_new2~5_combout\ = (\test_inst|covid_det_instance|Equal0~5_combout\ & ((\test_inst|covid_det_instance|Mux0~5_combout\))) # (!\test_inst|covid_det_instance|Equal0~5_combout\ & 
-- (\test_inst|covid_det_instance|out_ascii_new2~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|covid_det_instance|out_ascii_new2~5_combout\,
	datac => \test_inst|covid_det_instance|Equal0~5_combout\,
	datad => \test_inst|covid_det_instance|Mux0~5_combout\,
	combout => \test_inst|covid_det_instance|out_ascii_new2~5_combout\);

-- Location: LCCOMB_X30_Y8_N20
\test_inst|write_data[0]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|write_data[0]~20_combout\ = (\test_inst|i\(1) & (\test_inst|i\(2) & \test_inst|Equal4~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|i\(1),
	datab => \test_inst|i\(2),
	datad => \test_inst|Equal4~9_combout\,
	combout => \test_inst|write_data[0]~20_combout\);

-- Location: LCCOMB_X30_Y7_N18
\test_inst|write_data[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|write_data[0]~19_combout\ = (\test_inst|Equal10~0_combout\) # ((!\test_inst|i\(0) & \test_inst|Equal12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|i\(0),
	datac => \test_inst|Equal12~1_combout\,
	datad => \test_inst|Equal10~0_combout\,
	combout => \test_inst|write_data[0]~19_combout\);

-- Location: LCCOMB_X30_Y7_N8
\test_inst|write_data~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|write_data~21_combout\ = (\test_inst|write_data[0]~20_combout\ & (((\test_inst|covid_det_instance|out_ascii_new2~5_combout\) # (\test_inst|write_data[0]~19_combout\)))) # (!\test_inst|write_data[0]~20_combout\ & 
-- (\test_inst|covid_det_instance|out_ascii_new2~7_combout\ & ((!\test_inst|write_data[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|covid_det_instance|out_ascii_new2~7_combout\,
	datab => \test_inst|covid_det_instance|out_ascii_new2~5_combout\,
	datac => \test_inst|write_data[0]~20_combout\,
	datad => \test_inst|write_data[0]~19_combout\,
	combout => \test_inst|write_data~21_combout\);

-- Location: LCCOMB_X30_Y4_N14
\test_inst|covid_det_instance|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|covid_det_instance|Equal0~4_combout\ = (!\test_inst|covid_det_instance|bit_index\(3) & (\test_inst|covid_det_instance|bit_index\(0) & (!\test_inst|covid_det_instance|bit_index\(1) & !\test_inst|covid_det_instance|bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|covid_det_instance|bit_index\(3),
	datab => \test_inst|covid_det_instance|bit_index\(0),
	datac => \test_inst|covid_det_instance|bit_index\(1),
	datad => \test_inst|covid_det_instance|bit_index\(2),
	combout => \test_inst|covid_det_instance|Equal0~4_combout\);

-- Location: LCCOMB_X30_Y4_N16
\test_inst|covid_det_instance|out_ascii_new2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|covid_det_instance|out_ascii_new2~4_combout\ = (\test_inst|covid_det_instance|Equal0~4_combout\ & ((\test_inst|covid_det_instance|Mux0~5_combout\))) # (!\test_inst|covid_det_instance|Equal0~4_combout\ & 
-- (\test_inst|covid_det_instance|out_ascii_new2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|covid_det_instance|out_ascii_new2~4_combout\,
	datac => \test_inst|covid_det_instance|Equal0~4_combout\,
	datad => \test_inst|covid_det_instance|Mux0~5_combout\,
	combout => \test_inst|covid_det_instance|out_ascii_new2~4_combout\);

-- Location: LCCOMB_X30_Y4_N18
\test_inst|covid_det_instance|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|covid_det_instance|Equal0~6_combout\ = (!\test_inst|covid_det_instance|bit_index\(3) & (\test_inst|covid_det_instance|bit_index\(1) & (\test_inst|covid_det_instance|bit_index\(0) & !\test_inst|covid_det_instance|bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|covid_det_instance|bit_index\(3),
	datab => \test_inst|covid_det_instance|bit_index\(1),
	datac => \test_inst|covid_det_instance|bit_index\(0),
	datad => \test_inst|covid_det_instance|bit_index\(2),
	combout => \test_inst|covid_det_instance|Equal0~6_combout\);

-- Location: LCCOMB_X29_Y4_N4
\test_inst|covid_det_instance|out_ascii_new2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|covid_det_instance|out_ascii_new2~8_combout\ = (\test_inst|covid_det_instance|Equal0~6_combout\ & ((\test_inst|covid_det_instance|Mux0~5_combout\))) # (!\test_inst|covid_det_instance|Equal0~6_combout\ & 
-- (\test_inst|covid_det_instance|out_ascii_new2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|covid_det_instance|out_ascii_new2~8_combout\,
	datab => \test_inst|covid_det_instance|Equal0~6_combout\,
	datad => \test_inst|covid_det_instance|Mux0~5_combout\,
	combout => \test_inst|covid_det_instance|out_ascii_new2~8_combout\);

-- Location: LCCOMB_X30_Y7_N26
\test_inst|write_data~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|write_data~22_combout\ = (\test_inst|write_data~21_combout\ & (((\test_inst|covid_det_instance|out_ascii_new2~8_combout\) # (!\test_inst|write_data[0]~19_combout\)))) # (!\test_inst|write_data~21_combout\ & 
-- (\test_inst|covid_det_instance|out_ascii_new2~4_combout\ & ((\test_inst|write_data[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|write_data~21_combout\,
	datab => \test_inst|covid_det_instance|out_ascii_new2~4_combout\,
	datac => \test_inst|covid_det_instance|out_ascii_new2~8_combout\,
	datad => \test_inst|write_data[0]~19_combout\,
	combout => \test_inst|write_data~22_combout\);

-- Location: LCCOMB_X30_Y4_N12
\test_inst|covid_det_instance|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|covid_det_instance|Equal0~3_combout\ = (!\test_inst|covid_det_instance|bit_index\(3) & (!\test_inst|covid_det_instance|bit_index\(0) & (!\test_inst|covid_det_instance|bit_index\(1) & \test_inst|covid_det_instance|bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|covid_det_instance|bit_index\(3),
	datab => \test_inst|covid_det_instance|bit_index\(0),
	datac => \test_inst|covid_det_instance|bit_index\(1),
	datad => \test_inst|covid_det_instance|bit_index\(2),
	combout => \test_inst|covid_det_instance|Equal0~3_combout\);

-- Location: LCCOMB_X29_Y4_N14
\test_inst|covid_det_instance|out_ascii_new2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|covid_det_instance|out_ascii_new2~3_combout\ = (\test_inst|covid_det_instance|Equal0~3_combout\ & ((\test_inst|covid_det_instance|Mux0~5_combout\))) # (!\test_inst|covid_det_instance|Equal0~3_combout\ & 
-- (\test_inst|covid_det_instance|out_ascii_new2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|covid_det_instance|out_ascii_new2~3_combout\,
	datab => \test_inst|covid_det_instance|Equal0~3_combout\,
	datad => \test_inst|covid_det_instance|Mux0~5_combout\,
	combout => \test_inst|covid_det_instance|out_ascii_new2~3_combout\);

-- Location: LCCOMB_X30_Y4_N8
\test_inst|covid_det_instance|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|covid_det_instance|Equal0~8_combout\ = (!\test_inst|covid_det_instance|bit_index\(3) & (\test_inst|covid_det_instance|bit_index\(1) & (!\test_inst|covid_det_instance|bit_index\(0) & \test_inst|covid_det_instance|bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|covid_det_instance|bit_index\(3),
	datab => \test_inst|covid_det_instance|bit_index\(1),
	datac => \test_inst|covid_det_instance|bit_index\(0),
	datad => \test_inst|covid_det_instance|bit_index\(2),
	combout => \test_inst|covid_det_instance|Equal0~8_combout\);

-- Location: LCCOMB_X29_Y4_N8
\test_inst|covid_det_instance|out_ascii_new2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|covid_det_instance|out_ascii_new2~10_combout\ = (\test_inst|covid_det_instance|Equal0~8_combout\ & ((\test_inst|covid_det_instance|Mux0~5_combout\))) # (!\test_inst|covid_det_instance|Equal0~8_combout\ & 
-- (\test_inst|covid_det_instance|out_ascii_new2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|covid_det_instance|out_ascii_new2~10_combout\,
	datab => \test_inst|covid_det_instance|Equal0~8_combout\,
	datad => \test_inst|covid_det_instance|Mux0~5_combout\,
	combout => \test_inst|covid_det_instance|out_ascii_new2~10_combout\);

-- Location: LCCOMB_X31_Y7_N24
\test_inst|write_data[0]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|write_data[0]~23_combout\ = (\test_inst|Equal4~9_combout\ & ((\test_inst|i\(2) & (!\test_inst|i\(1) & !\test_inst|i\(0))) # (!\test_inst|i\(2) & (\test_inst|i\(1) & \test_inst|i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|i\(2),
	datab => \test_inst|i\(1),
	datac => \test_inst|i\(0),
	datad => \test_inst|Equal4~9_combout\,
	combout => \test_inst|write_data[0]~23_combout\);

-- Location: LCCOMB_X30_Y4_N26
\test_inst|covid_det_instance|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|covid_det_instance|Equal0~7_combout\ = (!\test_inst|covid_det_instance|bit_index\(3) & (\test_inst|covid_det_instance|bit_index\(0) & (!\test_inst|covid_det_instance|bit_index\(1) & \test_inst|covid_det_instance|bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|covid_det_instance|bit_index\(3),
	datab => \test_inst|covid_det_instance|bit_index\(0),
	datac => \test_inst|covid_det_instance|bit_index\(1),
	datad => \test_inst|covid_det_instance|bit_index\(2),
	combout => \test_inst|covid_det_instance|Equal0~7_combout\);

-- Location: LCCOMB_X30_Y4_N10
\test_inst|covid_det_instance|out_ascii_new2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|covid_det_instance|out_ascii_new2~9_combout\ = (\test_inst|covid_det_instance|Equal0~7_combout\ & ((\test_inst|covid_det_instance|Mux0~5_combout\))) # (!\test_inst|covid_det_instance|Equal0~7_combout\ & 
-- (\test_inst|covid_det_instance|out_ascii_new2~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|covid_det_instance|out_ascii_new2~9_combout\,
	datac => \test_inst|covid_det_instance|Equal0~7_combout\,
	datad => \test_inst|covid_det_instance|Mux0~5_combout\,
	combout => \test_inst|covid_det_instance|out_ascii_new2~9_combout\);

-- Location: LCCOMB_X31_Y7_N20
\test_inst|write_data[0]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|write_data[0]~24_combout\ = (\test_inst|i\(0) & (\test_inst|Equal4~9_combout\ & (\test_inst|i\(1) $ (\test_inst|i\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|i\(0),
	datab => \test_inst|i\(1),
	datac => \test_inst|i\(2),
	datad => \test_inst|Equal4~9_combout\,
	combout => \test_inst|write_data[0]~24_combout\);

-- Location: LCCOMB_X31_Y7_N16
\test_inst|write_data~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|write_data~25_combout\ = (\test_inst|write_data[0]~23_combout\ & ((\test_inst|write_data[0]~24_combout\ & (\test_inst|covid_det_instance|out_ascii_new2~10_combout\)) # (!\test_inst|write_data[0]~24_combout\ & 
-- ((\test_inst|covid_det_instance|out_ascii_new2~9_combout\))))) # (!\test_inst|write_data[0]~23_combout\ & (((\test_inst|write_data[0]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|covid_det_instance|out_ascii_new2~10_combout\,
	datab => \test_inst|write_data[0]~23_combout\,
	datac => \test_inst|covid_det_instance|out_ascii_new2~9_combout\,
	datad => \test_inst|write_data[0]~24_combout\,
	combout => \test_inst|write_data~25_combout\);

-- Location: LCCOMB_X31_Y7_N4
\test_inst|write_data~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|write_data~31_combout\ = (\test_inst|write_data~25_combout\ & (((\test_inst|covid_det_instance|out_ascii_new2~3_combout\) # (\test_inst|write_data[0]~23_combout\)))) # (!\test_inst|write_data~25_combout\ & (\test_inst|write_data~22_combout\ & 
-- ((!\test_inst|write_data[0]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|write_data~22_combout\,
	datab => \test_inst|covid_det_instance|out_ascii_new2~3_combout\,
	datac => \test_inst|write_data~25_combout\,
	datad => \test_inst|write_data[0]~23_combout\,
	combout => \test_inst|write_data~31_combout\);

-- Location: LCCOMB_X30_Y4_N22
\test_inst|covid_det_instance|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|covid_det_instance|Equal0~2_combout\ = (!\test_inst|covid_det_instance|bit_index\(3) & (\test_inst|covid_det_instance|bit_index\(0) & (\test_inst|covid_det_instance|bit_index\(1) & \test_inst|covid_det_instance|bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|covid_det_instance|bit_index\(3),
	datab => \test_inst|covid_det_instance|bit_index\(0),
	datac => \test_inst|covid_det_instance|bit_index\(1),
	datad => \test_inst|covid_det_instance|bit_index\(2),
	combout => \test_inst|covid_det_instance|Equal0~2_combout\);

-- Location: LCCOMB_X30_Y4_N20
\test_inst|covid_det_instance|out_ascii_new2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|covid_det_instance|out_ascii_new2~2_combout\ = (\test_inst|covid_det_instance|Equal0~2_combout\ & ((\test_inst|covid_det_instance|Mux0~5_combout\))) # (!\test_inst|covid_det_instance|Equal0~2_combout\ & 
-- (\test_inst|covid_det_instance|out_ascii_new2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|covid_det_instance|out_ascii_new2~2_combout\,
	datac => \test_inst|covid_det_instance|Equal0~2_combout\,
	datad => \test_inst|covid_det_instance|Mux0~5_combout\,
	combout => \test_inst|covid_det_instance|out_ascii_new2~2_combout\);

-- Location: LCCOMB_X31_Y7_N10
\test_inst|write_data~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|write_data~32_combout\ = (\test_inst|write_data[0]~15_combout\ & ((\test_inst|covid_det_instance|out_ascii_new2~2_combout\))) # (!\test_inst|write_data[0]~15_combout\ & (\test_inst|write_data~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|write_data~31_combout\,
	datab => \test_inst|covid_det_instance|out_ascii_new2~2_combout\,
	datac => \test_inst|write_data[0]~15_combout\,
	combout => \test_inst|write_data~32_combout\);

-- Location: LCCOMB_X30_Y4_N4
\test_inst|covid_det_instance|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|covid_det_instance|Equal0~1_combout\ = (\test_inst|covid_det_instance|bit_index\(3) & (\test_inst|covid_det_instance|bit_index\(0) & (!\test_inst|covid_det_instance|bit_index\(1) & !\test_inst|covid_det_instance|bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|covid_det_instance|bit_index\(3),
	datab => \test_inst|covid_det_instance|bit_index\(0),
	datac => \test_inst|covid_det_instance|bit_index\(1),
	datad => \test_inst|covid_det_instance|bit_index\(2),
	combout => \test_inst|covid_det_instance|Equal0~1_combout\);

-- Location: LCCOMB_X30_Y4_N24
\test_inst|covid_det_instance|out_ascii_new2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|covid_det_instance|out_ascii_new2~1_combout\ = (\test_inst|covid_det_instance|Equal0~1_combout\ & ((\test_inst|covid_det_instance|Mux0~5_combout\))) # (!\test_inst|covid_det_instance|Equal0~1_combout\ & 
-- (\test_inst|covid_det_instance|out_ascii_new2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|covid_det_instance|out_ascii_new2~1_combout\,
	datac => \test_inst|covid_det_instance|Equal0~1_combout\,
	datad => \test_inst|covid_det_instance|Mux0~5_combout\,
	combout => \test_inst|covid_det_instance|out_ascii_new2~1_combout\);

-- Location: LCCOMB_X30_Y7_N24
\test_inst|write_data~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|write_data~17_combout\ = (!\test_inst|i\(0) & (!\test_inst|covid_det_instance|out_ascii_new2~1_combout\ & (\test_inst|Equal4~9_combout\ & !\test_inst|i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|i\(0),
	datab => \test_inst|covid_det_instance|out_ascii_new2~1_combout\,
	datac => \test_inst|Equal4~9_combout\,
	datad => \test_inst|i\(2),
	combout => \test_inst|write_data~17_combout\);

-- Location: LCCOMB_X32_Y8_N8
\test_inst|write_data[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|write_data[0]~10_combout\ = ((!\test_inst|Equal4~9_combout\) # (!\test_inst|i\(2))) # (!\test_inst|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|i\(0),
	datac => \test_inst|i\(2),
	datad => \test_inst|Equal4~9_combout\,
	combout => \test_inst|write_data[0]~10_combout\);

-- Location: LCCOMB_X32_Y8_N14
\test_inst|write_data[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|write_data[0]~11_combout\ = (((\test_inst|Equal12~1_combout\ & \test_inst|i\(0))) # (!\test_inst|write_column~0_combout\)) # (!\test_inst|write_data[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Equal12~1_combout\,
	datab => \test_inst|i\(0),
	datac => \test_inst|write_data[0]~10_combout\,
	datad => \test_inst|write_column~0_combout\,
	combout => \test_inst|write_data[0]~11_combout\);

-- Location: LCCOMB_X31_Y7_N28
\test_inst|write_data~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|write_data~18_combout\ = (\test_inst|write_data~17_combout\ & (\test_inst|write_data[0]~14_combout\ & ((\test_inst|write_data[0]~11_combout\) # (!\test_inst|write_data[0]~12_combout\)))) # (!\test_inst|write_data~17_combout\ & 
-- (((\test_inst|write_data[0]~11_combout\) # (!\test_inst|write_data[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|write_data~17_combout\,
	datab => \test_inst|write_data[0]~14_combout\,
	datac => \test_inst|write_data[0]~12_combout\,
	datad => \test_inst|write_data[0]~11_combout\,
	combout => \test_inst|write_data~18_combout\);

-- Location: LCCOMB_X31_Y7_N0
\test_inst|write_data~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|write_data~26_combout\ = (\test_inst|write_data~16_combout\ & (\test_inst|write_data~18_combout\ & ((\test_inst|write_data~32_combout\) # (!\test_inst|write_data[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|write_data~16_combout\,
	datab => \test_inst|write_data~32_combout\,
	datac => \test_inst|write_data[0]~14_combout\,
	datad => \test_inst|write_data~18_combout\,
	combout => \test_inst|write_data~26_combout\);

-- Location: LCCOMB_X32_Y8_N30
\test_inst|write_data[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|write_data[0]~13_combout\ = (\reset_lcd~input_o\) # ((\test_inst|lcd_instance|ack~q\ & ((!\test_inst|write_data[0]~30_combout\) # (!\test_inst|Equal13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_lcd~input_o\,
	datab => \test_inst|Equal13~0_combout\,
	datac => \test_inst|write_data[0]~30_combout\,
	datad => \test_inst|lcd_instance|ack~q\,
	combout => \test_inst|write_data[0]~13_combout\);

-- Location: FF_X31_Y7_N1
\test_inst|write_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	d => \test_inst|write_data~26_combout\,
	ena => \test_inst|write_data[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|write_data\(0));

-- Location: LCCOMB_X32_Y7_N8
\test_inst|lcd_instance|data_dis[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|data_dis[0]~feeder_combout\ = \test_inst|write_data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \test_inst|write_data\(0),
	combout => \test_inst|lcd_instance|data_dis[0]~feeder_combout\);

-- Location: FF_X32_Y7_N9
\test_inst|lcd_instance|data_dis[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|clk_slow~clkctrl_outclk\,
	d => \test_inst|lcd_instance|data_dis[0]~feeder_combout\,
	ena => \test_inst|lcd_instance|state~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|lcd_instance|data_dis\(0));

-- Location: LCCOMB_X32_Y7_N10
\test_inst|write_column~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|write_column~2_combout\ = (!\test_inst|i\(1) & (!\test_inst|i\(2) & \test_inst|Equal4~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|i\(1),
	datac => \test_inst|i\(2),
	datad => \test_inst|Equal4~9_combout\,
	combout => \test_inst|write_column~2_combout\);

-- Location: LCCOMB_X33_Y7_N22
\test_inst|write_column~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|write_column~3_combout\ = (\test_inst|lcd_instance|ack~q\ & ((\test_inst|i\(0)) # (!\test_inst|write_column~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|write_column~2_combout\,
	datac => \test_inst|i\(0),
	datad => \test_inst|lcd_instance|ack~q\,
	combout => \test_inst|write_column~3_combout\);

-- Location: LCCOMB_X30_Y8_N10
\test_inst|Equal6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal6~0_combout\ = (!\test_inst|i\(0) & (\test_inst|Equal4~9_combout\ & (\test_inst|i\(1) & !\test_inst|i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|i\(0),
	datab => \test_inst|Equal4~9_combout\,
	datac => \test_inst|i\(1),
	datad => \test_inst|i\(2),
	combout => \test_inst|Equal6~0_combout\);

-- Location: LCCOMB_X32_Y8_N6
\test_inst|Equal7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|Equal7~0_combout\ = (\test_inst|i\(0) & (\test_inst|i\(1) & (!\test_inst|i\(2) & \test_inst|Equal4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|i\(0),
	datab => \test_inst|i\(1),
	datac => \test_inst|i\(2),
	datad => \test_inst|Equal4~9_combout\,
	combout => \test_inst|Equal7~0_combout\);

-- Location: LCCOMB_X33_Y7_N16
\test_inst|write_column~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|write_column~1_combout\ = (\test_inst|Equal6~0_combout\) # ((!\test_inst|Equal7~0_combout\ & !\test_inst|write_data[0]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Equal6~0_combout\,
	datac => \test_inst|Equal7~0_combout\,
	datad => \test_inst|write_data[0]~11_combout\,
	combout => \test_inst|write_column~1_combout\);

-- Location: LCCOMB_X33_Y7_N6
\test_inst|write_column~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|write_column~4_combout\ = (\test_inst|write_column~3_combout\ & ((\test_inst|write_column~2_combout\) # ((\test_inst|write_column~0_combout\ & !\test_inst|write_column~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|write_column~2_combout\,
	datab => \test_inst|write_column~0_combout\,
	datac => \test_inst|write_column~3_combout\,
	datad => \test_inst|write_column~1_combout\,
	combout => \test_inst|write_column~4_combout\);

-- Location: FF_X33_Y7_N7
\test_inst|write_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	d => \test_inst|write_column~4_combout\,
	ena => \test_inst|write_data[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|write_column\(0));

-- Location: FF_X33_Y7_N13
\test_inst|lcd_instance|cmd_position[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|clk_slow~clkctrl_outclk\,
	asdata => \test_inst|write_column\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|lcd_instance|cmd_position\(0));

-- Location: LCCOMB_X33_Y7_N12
\test_inst|lcd_instance|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|Selector7~0_combout\ = (\test_inst|lcd_instance|Selector8~2_combout\ & (\test_inst|lcd_instance|lcd\(0) & ((!\test_inst|lcd_instance|lcd[1]~0_combout\)))) # (!\test_inst|lcd_instance|Selector8~2_combout\ & 
-- ((\test_inst|lcd_instance|cmd_position\(0)) # ((\test_inst|lcd_instance|lcd\(0) & !\test_inst|lcd_instance|lcd[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|lcd_instance|Selector8~2_combout\,
	datab => \test_inst|lcd_instance|lcd\(0),
	datac => \test_inst|lcd_instance|cmd_position\(0),
	datad => \test_inst|lcd_instance|lcd[1]~0_combout\,
	combout => \test_inst|lcd_instance|Selector7~0_combout\);

-- Location: LCCOMB_X34_Y7_N18
\test_inst|lcd_instance|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|Selector5~0_combout\ = (\test_inst|lcd_instance|state.S1~q\) # ((\test_inst|lcd_instance|state.S2~q\) # ((!\test_inst|lcd_instance|state.S0~q\ & \test_inst|lcd_instance|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|lcd_instance|state.S1~q\,
	datab => \test_inst|lcd_instance|state.S2~q\,
	datac => \test_inst|lcd_instance|state.S0~q\,
	datad => \test_inst|lcd_instance|LessThan0~0_combout\,
	combout => \test_inst|lcd_instance|Selector5~0_combout\);

-- Location: LCCOMB_X33_Y7_N18
\test_inst|lcd_instance|Selector7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|Selector7~1_combout\ = (\test_inst|lcd_instance|count_cmd\(0) & (!\test_inst|lcd_instance|count_cmd\(1) & \test_inst|lcd_instance|Selector5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|lcd_instance|count_cmd\(0),
	datac => \test_inst|lcd_instance|count_cmd\(1),
	datad => \test_inst|lcd_instance|Selector5~0_combout\,
	combout => \test_inst|lcd_instance|Selector7~1_combout\);

-- Location: LCCOMB_X32_Y7_N24
\test_inst|lcd_instance|Selector7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|Selector7~2_combout\ = (\test_inst|lcd_instance|Selector7~0_combout\) # ((\test_inst|lcd_instance|Selector7~1_combout\) # ((\test_inst|lcd_instance|lcd[7]~1_combout\ & \test_inst|lcd_instance|data_dis\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|lcd_instance|lcd[7]~1_combout\,
	datab => \test_inst|lcd_instance|data_dis\(0),
	datac => \test_inst|lcd_instance|Selector7~0_combout\,
	datad => \test_inst|lcd_instance|Selector7~1_combout\,
	combout => \test_inst|lcd_instance|Selector7~2_combout\);

-- Location: FF_X32_Y7_N25
\test_inst|lcd_instance|lcd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|clk_slow~clkctrl_outclk\,
	d => \test_inst|lcd_instance|Selector7~2_combout\,
	ena => \ALT_INV_reset_lcd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|lcd_instance|lcd\(0));

-- Location: LCCOMB_X32_Y8_N24
\test_inst|write_column~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|write_column~5_combout\ = (\test_inst|Equal7~0_combout\) # ((\test_inst|Equal6~0_combout\) # ((\test_inst|write_data[0]~20_combout\ & \test_inst|write_data[0]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|Equal7~0_combout\,
	datab => \test_inst|write_data[0]~20_combout\,
	datac => \test_inst|write_data[0]~11_combout\,
	datad => \test_inst|Equal6~0_combout\,
	combout => \test_inst|write_column~5_combout\);

-- Location: LCCOMB_X32_Y8_N20
\test_inst|write_column~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|write_column~6_combout\ = (\test_inst|lcd_instance|ack~q\ & (\test_inst|write_data[0]~14_combout\ & \test_inst|write_column~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|lcd_instance|ack~q\,
	datac => \test_inst|write_data[0]~14_combout\,
	datad => \test_inst|write_column~5_combout\,
	combout => \test_inst|write_column~6_combout\);

-- Location: FF_X32_Y8_N21
\test_inst|write_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	d => \test_inst|write_column~6_combout\,
	ena => \test_inst|write_data[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|write_column\(1));

-- Location: LCCOMB_X32_Y8_N18
\test_inst|lcd_instance|cmd_position[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|cmd_position[1]~feeder_combout\ = \test_inst|write_column\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \test_inst|write_column\(1),
	combout => \test_inst|lcd_instance|cmd_position[1]~feeder_combout\);

-- Location: FF_X32_Y8_N19
\test_inst|lcd_instance|cmd_position[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|clk_slow~clkctrl_outclk\,
	d => \test_inst|lcd_instance|cmd_position[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|lcd_instance|cmd_position\(1));

-- Location: LCCOMB_X31_Y7_N18
\test_inst|write_data[0]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|write_data[0]~28_combout\ = ((!\test_inst|write_data[0]~11_combout\ & ((\test_inst|i\(2)) # (!\test_inst|Equal4~9_combout\)))) # (!\test_inst|lcd_instance|ack~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|i\(2),
	datab => \test_inst|lcd_instance|ack~q\,
	datac => \test_inst|Equal4~9_combout\,
	datad => \test_inst|write_data[0]~11_combout\,
	combout => \test_inst|write_data[0]~28_combout\);

-- Location: FF_X31_Y7_N19
\test_inst|write_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	d => \test_inst|write_data[0]~28_combout\,
	ena => \test_inst|write_data[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|write_data\(1));

-- Location: LCCOMB_X32_Y7_N6
\test_inst|lcd_instance|data_dis[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|data_dis[1]~feeder_combout\ = \test_inst|write_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|write_data\(1),
	combout => \test_inst|lcd_instance|data_dis[1]~feeder_combout\);

-- Location: FF_X32_Y7_N7
\test_inst|lcd_instance|data_dis[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|clk_slow~clkctrl_outclk\,
	d => \test_inst|lcd_instance|data_dis[1]~feeder_combout\,
	ena => \test_inst|lcd_instance|state~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|lcd_instance|data_dis\(1));

-- Location: LCCOMB_X33_Y7_N28
\test_inst|lcd_instance|Selector6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|Selector6~1_combout\ = (\test_inst|lcd_instance|data_dis\(1) & \test_inst|lcd_instance|state.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \test_inst|lcd_instance|data_dis\(1),
	datad => \test_inst|lcd_instance|state.S0~q\,
	combout => \test_inst|lcd_instance|Selector6~1_combout\);

-- Location: LCCOMB_X34_Y7_N20
\test_inst|lcd_instance|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|Selector6~0_combout\ = (!\test_inst|lcd_instance|state.S1~q\ & !\test_inst|lcd_instance|state.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \test_inst|lcd_instance|state.S1~q\,
	datad => \test_inst|lcd_instance|state.S2~q\,
	combout => \test_inst|lcd_instance|Selector6~0_combout\);

-- Location: LCCOMB_X35_Y7_N24
\test_inst|lcd_instance|Selector6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|Selector6~2_combout\ = (\test_inst|lcd_instance|Selector8~2_combout\ & (((\test_inst|lcd_instance|Selector6~1_combout\ & \test_inst|lcd_instance|Selector6~0_combout\)))) # (!\test_inst|lcd_instance|Selector8~2_combout\ & 
-- (\test_inst|lcd_instance|cmd_position\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|lcd_instance|cmd_position\(1),
	datab => \test_inst|lcd_instance|Selector8~2_combout\,
	datac => \test_inst|lcd_instance|Selector6~1_combout\,
	datad => \test_inst|lcd_instance|Selector6~0_combout\,
	combout => \test_inst|lcd_instance|Selector6~2_combout\);

-- Location: LCCOMB_X34_Y7_N0
\test_inst|lcd_instance|lcd[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|lcd[1]~2_combout\ = (!\test_inst|lcd_instance|state.S9~q\ & (!\reset_lcd~input_o\ & ((\test_inst|lcd_instance|state.S0~q\) # (\test_inst|lcd_instance|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|lcd_instance|state.S9~q\,
	datab => \reset_lcd~input_o\,
	datac => \test_inst|lcd_instance|state.S0~q\,
	datad => \test_inst|lcd_instance|LessThan0~0_combout\,
	combout => \test_inst|lcd_instance|lcd[1]~2_combout\);

-- Location: FF_X35_Y7_N25
\test_inst|lcd_instance|lcd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|clk_slow~clkctrl_outclk\,
	d => \test_inst|lcd_instance|Selector6~2_combout\,
	ena => \test_inst|lcd_instance|lcd[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|lcd_instance|lcd\(1));

-- Location: LCCOMB_X34_Y7_N10
\test_inst|lcd_instance|Selector5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|Selector5~2_combout\ = (!\test_inst|lcd_instance|count_cmd\(0) & (\test_inst|lcd_instance|Selector5~0_combout\ & (\test_inst|lcd_instance|count_cmd\(1) $ (\test_inst|lcd_instance|count_cmd\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|lcd_instance|count_cmd\(1),
	datab => \test_inst|lcd_instance|count_cmd\(0),
	datac => \test_inst|lcd_instance|count_cmd\(2),
	datad => \test_inst|lcd_instance|Selector5~0_combout\,
	combout => \test_inst|lcd_instance|Selector5~2_combout\);

-- Location: LCCOMB_X31_Y7_N22
\test_inst|write_column~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|write_column~7_combout\ = (\test_inst|i\(2) & \test_inst|Equal4~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|i\(2),
	datad => \test_inst|Equal4~9_combout\,
	combout => \test_inst|write_column~7_combout\);

-- Location: LCCOMB_X31_Y7_N30
\test_inst|write_column~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|write_column~8_combout\ = (\test_inst|write_column~7_combout\ & (\test_inst|write_data[0]~14_combout\ & (\test_inst|lcd_instance|ack~q\ & !\test_inst|write_column~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|write_column~7_combout\,
	datab => \test_inst|write_data[0]~14_combout\,
	datac => \test_inst|lcd_instance|ack~q\,
	datad => \test_inst|write_column~1_combout\,
	combout => \test_inst|write_column~8_combout\);

-- Location: FF_X31_Y7_N31
\test_inst|write_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	d => \test_inst|write_column~8_combout\,
	ena => \test_inst|write_data[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|write_column\(2));

-- Location: FF_X31_Y7_N23
\test_inst|lcd_instance|cmd_position[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|clk_slow~clkctrl_outclk\,
	asdata => \test_inst|write_column\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|lcd_instance|cmd_position\(2));

-- Location: LCCOMB_X32_Y7_N28
\test_inst|lcd_instance|Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|Selector5~1_combout\ = (\test_inst|lcd_instance|Selector8~2_combout\ & (((\test_inst|lcd_instance|lcd\(2) & !\test_inst|lcd_instance|lcd[1]~0_combout\)))) # (!\test_inst|lcd_instance|Selector8~2_combout\ & 
-- ((\test_inst|lcd_instance|cmd_position\(2)) # ((\test_inst|lcd_instance|lcd\(2) & !\test_inst|lcd_instance|lcd[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|lcd_instance|Selector8~2_combout\,
	datab => \test_inst|lcd_instance|cmd_position\(2),
	datac => \test_inst|lcd_instance|lcd\(2),
	datad => \test_inst|lcd_instance|lcd[1]~0_combout\,
	combout => \test_inst|lcd_instance|Selector5~1_combout\);

-- Location: LCCOMB_X32_Y7_N22
\test_inst|lcd_instance|Selector5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|Selector5~3_combout\ = (\test_inst|lcd_instance|Selector5~2_combout\) # ((\test_inst|lcd_instance|Selector5~1_combout\) # ((\test_inst|lcd_instance|data_dis\(1) & \test_inst|lcd_instance|lcd[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|lcd_instance|data_dis\(1),
	datab => \test_inst|lcd_instance|lcd[7]~1_combout\,
	datac => \test_inst|lcd_instance|Selector5~2_combout\,
	datad => \test_inst|lcd_instance|Selector5~1_combout\,
	combout => \test_inst|lcd_instance|Selector5~3_combout\);

-- Location: FF_X32_Y7_N23
\test_inst|lcd_instance|lcd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|clk_slow~clkctrl_outclk\,
	d => \test_inst|lcd_instance|Selector5~3_combout\,
	ena => \ALT_INV_reset_lcd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|lcd_instance|lcd\(2));

-- Location: LCCOMB_X34_Y7_N28
\test_inst|lcd_instance|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|Selector4~1_combout\ = (!\test_inst|lcd_instance|count_cmd\(2) & (!\test_inst|lcd_instance|count_cmd\(0) & ((!\test_inst|lcd_instance|Selector6~0_combout\) # (!\test_inst|lcd_instance|state.S0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|lcd_instance|count_cmd\(2),
	datab => \test_inst|lcd_instance|state.S0~q\,
	datac => \test_inst|lcd_instance|count_cmd\(0),
	datad => \test_inst|lcd_instance|Selector6~0_combout\,
	combout => \test_inst|lcd_instance|Selector4~1_combout\);

-- Location: LCCOMB_X31_Y7_N6
\test_inst|write_column~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|write_column~9_combout\ = ((!\test_inst|i\(2) & ((!\test_inst|i\(0)) # (!\test_inst|i\(1))))) # (!\test_inst|Equal4~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|i\(2),
	datab => \test_inst|i\(1),
	datac => \test_inst|i\(0),
	datad => \test_inst|Equal4~9_combout\,
	combout => \test_inst|write_column~9_combout\);

-- Location: LCCOMB_X31_Y7_N8
\test_inst|write_column~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|write_column~10_combout\ = (\test_inst|write_column~9_combout\ & (\test_inst|write_data[0]~14_combout\ & (\test_inst|lcd_instance|ack~q\ & !\test_inst|write_column~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|write_column~9_combout\,
	datab => \test_inst|write_data[0]~14_combout\,
	datac => \test_inst|lcd_instance|ack~q\,
	datad => \test_inst|write_column~1_combout\,
	combout => \test_inst|write_column~10_combout\);

-- Location: FF_X31_Y7_N9
\test_inst|write_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	d => \test_inst|write_column~10_combout\,
	ena => \test_inst|write_data[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|write_column\(3));

-- Location: FF_X31_Y7_N15
\test_inst|lcd_instance|cmd_position[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|clk_slow~clkctrl_outclk\,
	asdata => \test_inst|write_column\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|lcd_instance|cmd_position\(3));

-- Location: LCCOMB_X31_Y7_N14
\test_inst|lcd_instance|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|Selector4~0_combout\ = (\test_inst|lcd_instance|lcd\(3) & (((!\test_inst|lcd_instance|Selector8~2_combout\ & \test_inst|lcd_instance|cmd_position\(3))) # (!\test_inst|lcd_instance|lcd[1]~0_combout\))) # 
-- (!\test_inst|lcd_instance|lcd\(3) & (!\test_inst|lcd_instance|Selector8~2_combout\ & (\test_inst|lcd_instance|cmd_position\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|lcd_instance|lcd\(3),
	datab => \test_inst|lcd_instance|Selector8~2_combout\,
	datac => \test_inst|lcd_instance|cmd_position\(3),
	datad => \test_inst|lcd_instance|lcd[1]~0_combout\,
	combout => \test_inst|lcd_instance|Selector4~0_combout\);

-- Location: LCCOMB_X32_Y7_N4
\test_inst|lcd_instance|Selector4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|Selector4~2_combout\ = (\test_inst|lcd_instance|Selector4~1_combout\) # ((\test_inst|lcd_instance|Selector4~0_combout\) # ((\test_inst|lcd_instance|data_dis\(1) & \test_inst|lcd_instance|lcd[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|lcd_instance|data_dis\(1),
	datab => \test_inst|lcd_instance|lcd[7]~1_combout\,
	datac => \test_inst|lcd_instance|Selector4~1_combout\,
	datad => \test_inst|lcd_instance|Selector4~0_combout\,
	combout => \test_inst|lcd_instance|Selector4~2_combout\);

-- Location: FF_X32_Y7_N5
\test_inst|lcd_instance|lcd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|clk_slow~clkctrl_outclk\,
	d => \test_inst|lcd_instance|Selector4~2_combout\,
	ena => \ALT_INV_reset_lcd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|lcd_instance|lcd\(3));

-- Location: LCCOMB_X32_Y8_N10
\test_inst|write_data[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|write_data[4]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \test_inst|write_data[4]~feeder_combout\);

-- Location: FF_X32_Y8_N11
\test_inst|write_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	d => \test_inst|write_data[4]~feeder_combout\,
	ena => \test_inst|write_data[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|write_data\(4));

-- Location: LCCOMB_X33_Y8_N18
\test_inst|lcd_instance|data_dis[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|data_dis[4]~feeder_combout\ = \test_inst|write_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|write_data\(4),
	combout => \test_inst|lcd_instance|data_dis[4]~feeder_combout\);

-- Location: FF_X33_Y8_N19
\test_inst|lcd_instance|data_dis[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|clk_slow~clkctrl_outclk\,
	d => \test_inst|lcd_instance|data_dis[4]~feeder_combout\,
	ena => \test_inst|lcd_instance|state~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|lcd_instance|data_dis\(4));

-- Location: LCCOMB_X33_Y8_N8
\test_inst|lcd_instance|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|Selector3~0_combout\ = (!\test_inst|lcd_instance|count_cmd\(2) & (!\test_inst|lcd_instance|count_cmd\(0) & (!\test_inst|lcd_instance|count_cmd\(1) & !\test_inst|lcd_instance|lcd[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|lcd_instance|count_cmd\(2),
	datab => \test_inst|lcd_instance|count_cmd\(0),
	datac => \test_inst|lcd_instance|count_cmd\(1),
	datad => \test_inst|lcd_instance|lcd[7]~1_combout\,
	combout => \test_inst|lcd_instance|Selector3~0_combout\);

-- Location: LCCOMB_X33_Y8_N0
\test_inst|lcd_instance|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|Selector3~1_combout\ = (\test_inst|lcd_instance|Selector8~2_combout\ & ((\test_inst|lcd_instance|Selector3~0_combout\) # ((\test_inst|lcd_instance|data_dis\(4) & \test_inst|lcd_instance|lcd[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|lcd_instance|Selector8~2_combout\,
	datab => \test_inst|lcd_instance|data_dis\(4),
	datac => \test_inst|lcd_instance|Selector3~0_combout\,
	datad => \test_inst|lcd_instance|lcd[7]~1_combout\,
	combout => \test_inst|lcd_instance|Selector3~1_combout\);

-- Location: FF_X33_Y8_N1
\test_inst|lcd_instance|lcd[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|clk_slow~clkctrl_outclk\,
	d => \test_inst|lcd_instance|Selector3~1_combout\,
	ena => \test_inst|lcd_instance|lcd[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|lcd_instance|lcd\(4));

-- Location: LCCOMB_X32_Y8_N0
\test_inst|write_data[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|write_data[5]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \test_inst|write_data[5]~feeder_combout\);

-- Location: FF_X32_Y8_N1
\test_inst|write_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|lcd_clk~clkctrl_outclk\,
	d => \test_inst|write_data[5]~feeder_combout\,
	ena => \test_inst|write_data[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|write_data\(5));

-- Location: LCCOMB_X33_Y8_N28
\test_inst|lcd_instance|data_dis[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|data_dis[5]~feeder_combout\ = \test_inst|write_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \test_inst|write_data\(5),
	combout => \test_inst|lcd_instance|data_dis[5]~feeder_combout\);

-- Location: FF_X33_Y8_N29
\test_inst|lcd_instance|data_dis[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|clk_slow~clkctrl_outclk\,
	d => \test_inst|lcd_instance|data_dis[5]~feeder_combout\,
	ena => \test_inst|lcd_instance|state~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|lcd_instance|data_dis\(5));

-- Location: LCCOMB_X33_Y8_N22
\test_inst|lcd_instance|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|Selector2~0_combout\ = (\test_inst|lcd_instance|Selector8~2_combout\ & ((\test_inst|lcd_instance|Selector3~0_combout\) # ((\test_inst|lcd_instance|data_dis\(5) & \test_inst|lcd_instance|lcd[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|lcd_instance|Selector8~2_combout\,
	datab => \test_inst|lcd_instance|data_dis\(5),
	datac => \test_inst|lcd_instance|Selector3~0_combout\,
	datad => \test_inst|lcd_instance|lcd[7]~1_combout\,
	combout => \test_inst|lcd_instance|Selector2~0_combout\);

-- Location: FF_X33_Y8_N23
\test_inst|lcd_instance|lcd[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|clk_slow~clkctrl_outclk\,
	d => \test_inst|lcd_instance|Selector2~0_combout\,
	ena => \test_inst|lcd_instance|lcd[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|lcd_instance|lcd\(5));

-- Location: LCCOMB_X35_Y7_N14
\test_inst|lcd_instance|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \test_inst|lcd_instance|Selector0~0_combout\ = ((!\test_inst|lcd_instance|lcd[7]~1_combout\ & (\test_inst|lcd_instance|count_cmd\(1) & \test_inst|lcd_instance|count_cmd\(0)))) # (!\test_inst|lcd_instance|Selector8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_inst|lcd_instance|lcd[7]~1_combout\,
	datab => \test_inst|lcd_instance|count_cmd\(1),
	datac => \test_inst|lcd_instance|count_cmd\(0),
	datad => \test_inst|lcd_instance|Selector8~2_combout\,
	combout => \test_inst|lcd_instance|Selector0~0_combout\);

-- Location: FF_X35_Y7_N15
\test_inst|lcd_instance|lcd[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \test_inst|clk_slow~clkctrl_outclk\,
	d => \test_inst|lcd_instance|Selector0~0_combout\,
	ena => \test_inst|lcd_instance|lcd[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_inst|lcd_instance|lcd\(7));

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

ww_MOSI <= \MOSI~output_o\;

ww_CS <= \CS~output_o\;

ww_SCLK <= \SCLK~output_o\;

ww_LEDS(0) <= \LEDS[0]~output_o\;

ww_LEDS(1) <= \LEDS[1]~output_o\;

ww_LEDS(2) <= \LEDS[2]~output_o\;

ww_LEDS(3) <= \LEDS[3]~output_o\;

ww_LEDS(4) <= \LEDS[4]~output_o\;

ww_LEDS(5) <= \LEDS[5]~output_o\;

ww_LEDS(6) <= \LEDS[6]~output_o\;

ww_LEDS(7) <= \LEDS[7]~output_o\;

ww_LEDS(8) <= \LEDS[8]~output_o\;

ww_LEDS(9) <= \LEDS[9]~output_o\;

ww_LCD_RW <= \LCD_RW~output_o\;

ww_LCD_EN <= \LCD_EN~output_o\;

ww_LCD_RS <= \LCD_RS~output_o\;

ww_DETECT <= \DETECT~output_o\;

ww_LCD1(0) <= \LCD1[0]~output_o\;

ww_LCD1(1) <= \LCD1[1]~output_o\;

ww_LCD1(2) <= \LCD1[2]~output_o\;

ww_LCD1(3) <= \LCD1[3]~output_o\;

ww_LCD1(4) <= \LCD1[4]~output_o\;

ww_LCD1(5) <= \LCD1[5]~output_o\;

ww_LCD1(6) <= \LCD1[6]~output_o\;

ww_LCD1(7) <= \LCD1[7]~output_o\;
END structure;


