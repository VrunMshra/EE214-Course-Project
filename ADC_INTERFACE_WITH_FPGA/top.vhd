library ieee;
use ieee.std_logic_1164.all;

entity top is
    port(
		  clk: in std_logic;
        reset_master: in std_logic;
		  reset_lcd: in std_logic;
		  MISO : in std_logic;
		  MOSI: out std_logic;
		  CS: out std_logic;
		  SCLK: out std_logic;
		  LEDS: out std_logic_vector(9 downto 0);
		  LCD_RW, LCD_EN, LCD_RS, DETECT : out std_logic;
		  LCD1 : out std_logic_vector(7 downto 0)
    );
end entity;

architecture structure of top is

component master is 
    port(
        clk     : in  std_logic;     -- System clock input
        reset   : in  std_logic;     -- Active high reset
        miso    : in  std_logic;     -- Master In Slave Out (10 bits)
        mosi    : out std_logic := '0';     -- Master Out Slave In (5 bits)
        cs      : out std_logic;     -- Chip select, active low
        sclk    : out std_logic;     -- SPI clock output
        reg_a    : out std_logic_vector(9 downto 0) -- LEDs to display received data
    );
end component master;

component test is
	port( 
--	clk_slow		: in std_logic;
		  inp 			: in std_logic_vector(9 downto 0);
		  clk			: in  std_logic;
		  rst 			: in  std_logic;
		  lcd_rw 		: out std_logic;                         	--read & write control
     	  lcd_en 		: out std_logic;                         	--enable control
          lcd_rs 		: out std_logic;                         	--data or command control
          lcd1  		: out std_logic_vector(7 downto 0);			--see pin planning in krypton manual 
--		  b11 			: out std_logic;
--		  b12 			: out std_logic;
		  detect 		: out std_logic
		  );
end component;	

signal mosi_signal, cs_signal, sclk_signal : std_logic;
signal LCD_RW_signal, LCD_EN_signal, LCD_RS_signal, DETECT_signal : std_logic;
signal led_signal, temp_signal : std_logic_vector(9 downto 0);
signal lcd_signal : std_logic_vector(7 downto 0);

begin
    master_inst: master
        port map(
            clk => clk,
            reset => reset_master,
            miso => MISO,
            mosi => mosi_signal,
            cs => cs_signal,
            sclk => sclk_signal,
			   reg_a =>led_signal 	
        );
			 temp_signal <= led_signal(8 downto 0) & '0';
  
    test_inst: test
        port map(
            inp => temp_signal,
				clk => clk,
				rst => reset_lcd,
				lcd_rw => LCD_RW_signal,
				lcd_en => LCD_EN_signal,
				lcd_rs => LCD_RS_signal,
				lcd1 => lcd_signal,
				detect => DETECT_signal 
        );
		 CS <= cs_signal;
		 MOSI <= mosi_signal;
		 SCLK <= sclk_signal;
		 LEDS <= led_signal;
		 LCD_RW <= LCD_RW_signal;
		 LCD_EN <= LCD_EN_signal;
		 LCD_RS <= LCD_RS_signal;
		 DETECT <= DETECT_signal;
		 LCD1 <= lcd_signal;
end architecture structure;