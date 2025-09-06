-- SPI Slave entity
library ieee;
use ieee.std_logic_1164.all;

entity slave is 
    port(
        sclk   : in std_logic;      -- SPI clock from master
        reset : in std_logic;      -- Reset signal
        SDO  : out std_logic;     -- Slave to master (output)
        SDI  : in std_logic;      -- Master to slave (input)
        cs    : in std_logic;       -- Chip select from master (input)
		  data_in : out STD_LOGIC_VECTOR(2 downto 0) := (others => '0')
    );
end entity slave;

architecture logic of slave is 
    signal bit_counter   : integer range 0 to 4 := 0;
    signal datatransmitted : std_logic_vector(2 downto 0) := "111";
	 --signal datareceived:  std_logic_vector(2 downto 0) := (others =>'0');
begin
    process(sclk, reset)
    begin
        if reset = '1' then
            bit_counter <= 0;
				SDO <= '0';
        elsif falling_edge(sclk) then  
			  if bit_counter > 2 then
				SDO <= '0';
			  end if;
				if(cs = '0') then
					if(bit_counter < 3) then
						SDO <= datatransmitted(bit_counter);
					end if;
					if bit_counter < 4 then
						bit_counter <= bit_counter + 1;
					end if;
				else
						SDO <= '0';
				end if;
        end if;
    end process;
	 
	 process(sclk,reset)
	 begin
			if reset ='1' then 
				data_in <= (others => '0');
			elsif rising_edge(SCLK) and bit_counter > 0 then
			   if cs = '0' then
				   if(bit_counter < 4) then
				      data_in(bit_counter-1) <= SDI;				
			      end if;
			   else 
				   data_in <= (others => '0');
			   end if;
			end if;	
	 end process;		

				
end architecture logic; 
