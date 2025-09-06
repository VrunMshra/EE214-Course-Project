-- DUT (Top-level) entity
library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(
		  clk: in std_logic;
        SCLK_out : out STD_LOGIC;
		  reset  : in std_logic;
        CS_out : out STD_LOGIC;
        MISO_out : out STD_LOGIC;
        MOSI_out : out STD_LOGIC;
		  data_masterin : out STD_LOGIC_VECTOR(2 downto 0);
		  data_slavein : out STD_LOGIC_VECTOR(2 downto 0)
    );
end entity DUT;

architecture structure of DUT is

component master is 
    port(
        clk   : in std_logic;     
        reset : in std_logic;     -- Reset signal
        miso  : in std_logic;     -- Master In Slave Out, input from slave
        mosi  : out std_logic;    -- Master Out Slave In, output to slave
        cs    : out std_logic;    -- Chip select, output to slave
        sclk  : out std_logic;
		  data_in : out STD_LOGIC_VECTOR(2 downto 0) := (others => '0')
    );
end component master;

component slave is 
    port(
        sclk   : in std_logic;      -- SPI clock from master
        reset : in std_logic;      -- Reset signal
        SDO  : out std_logic;     -- Slave to master (output)
        SDI  : in std_logic;      -- Master to slave (input)
        cs    : in std_logic;       -- Chip select from master (input)
		  data_in : out STD_LOGIC_VECTOR(2 downto 0) := (others => '0')
    );
end component slave;

signal cs , miso ,mosi: std_logic;
signal sclk_master : std_logic;
signal data_rx_master: std_logic_vector(2 downto 0);
signal data_rx_slave: std_logic_vector(2 downto 0);

begin
    master_inst: master
        port map(
            clk => clk,
            reset => reset,
            miso => miso,
            mosi => mosi,
            cs => cs,
            sclk => sclk_master ,
			   data_in =>data_rx_master 	-- New port for SPI clock output
        );
    slave_inst: slave
        port map(
            sclk => sclk_master,  -- Connect to master's SPI clock
            reset => reset,
            SDI => MOSI ,
            SDO => miso,
            cs => cs,
				data_in =>data_rx_slave
        );
		 CS_out <= cs;
		 miso_out <= miso;
		 mosi_out <= mosi;
		 data_masterin <= data_rx_master;
		 data_slavein <= data_rx_slave;
		 sclk_out <= sclk_master;
end architecture structure;
