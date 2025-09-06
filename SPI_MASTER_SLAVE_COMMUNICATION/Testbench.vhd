-- Testbench
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Testbench is
end entity Testbench;

architecture test of Testbench is
    signal clk : std_logic := '0';
    signal reset : std_logic := '1';
	 signal sclk: std_logic;
	 signal CS, MOSI, MISO : STD_LOGIC;
	 signal data_received_master : STD_LOGIC_VECTOR(2 downto 0);
	 signal data_received_slave : STD_LOGIC_VECTOR(2 downto 0);

    
    component DUT is
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
end component DUT;

begin
    -- Clock generation
    clk <= not clk after 10 ns;

    -- Instantiate the DUT
    uut: DUT
    port map (
			clk => clk,
        SCLK_out => sclk,
		  reset => reset,
        CS_out => CS,
        MISO_out => MISO,
        MOSI_out => MOSI,
		  data_masterin => data_received_master,
		  data_slavein => data_received_slave
    );

    -- Reset release after 100 ns
    process
    begin
        wait for 100 ns;
        reset <= '0';
        wait;
    end process;

end architecture test;
