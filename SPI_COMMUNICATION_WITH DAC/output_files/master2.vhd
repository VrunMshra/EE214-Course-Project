library ieee;
use ieee.std_logic_1164.all;
entity master is 
    port(
        clk     : in  std_logic;     
        reset   : in  std_logic;     
        miso    : in  std_logic;     
        mosi    : out std_logic;     
        cs1     : out std_logic;     
        cs2     : out std_logic;
        sclk    : out std_logic;     
        LEDS    : out std_logic_vector(7 downto 0);
    );
end entity master;

architecture logic of master is 
    signal sclk_internal    : std_logic := '0';    
    signal clk_counter      : integer range 0 to 24 := 0;  
    signal bit_counter      : integer range 0 to 40 := 0;    
    signal datatransmitted  : std_logic_vector(4 downto 0) := "00011";  
    signal cs_internal1     : std_logic := '1';
    signal cs_internal2     : std_logic := '1';
    signal data_in          : std_logic_vector(9 downto 0) := (others => '0');
begin
    -- Clock Divider Process
    process(clk, reset)
    begin
        if (reset = '1') then
            clk_counter <= 0;
            sclk_internal <= '0';    
        elsif rising_edge(clk) then
            if clk_counter = 24 then  
                clk_counter <= 0;
                sclk_internal <= not sclk_internal;  
            else 
                clk_counter <= clk_counter + 1;
            end if;
        end if;
    end process;
    
    -- Data Transmission Process
    process(sclk_internal, reset)
    begin
        if reset = '1' then
            mosi <= '0';             
            bit_counter <= 0;
            cs_internal1 <= '1';      
            cs_internal2 <= '1';
        elsif falling_edge(sclk_internal) then
            case bit_counter is
                when 0 =>
                    cs_internal1 <= '0';  -- First cycle is just CS going low
                    mosi <= '1';
                    bit_counter <= bit_counter + 1;
                
                when 1 to 4 =>
                    mosi <= datatransmitted(bit_counter);  -- Transmit MOSI bits
                    bit_counter <= bit_counter + 1;
                
                when 5 =>
                    mosi <= '0';  -- Buffer cycle
                    bit_counter <= bit_counter + 1;
                
                when 6 to 16 =>
                    mosi <= '0';  -- MISO reception period
                    bit_counter <= bit_counter + 1;
                
                when 17 =>
                    cs_internal1 <= '1';
                    cs_internal2 <= '0';  
                    bit_counter <= bit_counter + 1;
                
                when 18 to 32 =>  -- DAC communication period
                    bit_counter <= bit_counter + 1;
                when 33 =>
                    cs_internal2 <= '1';  
                when others =>
						  cs_internal2 <= '1';  
            end case;
        end if;
    end process;
 
    process(sclk_internal, reset)
    begin
        if reset = '1' then 
            LEDS <= (others => '0');  
            mosi <= '0';
        elsif rising_edge(sclk_internal) then
            if (cs_internal1 = '0') and (bit_counter > 7) and (bit_counter < 18) then
                data_in(17-bit_counter) <= miso;  -- Adjust index for correct bit position
            end if;
            if (cs_internal1 = '1') then
                LEDS <= data_in(9 downto 2);  
            end if;
				if (cs_internal2 = '0' and bit_counter = 18) then 
					mosi <='0';
				end if;
				if (cs_internal2 = '0' and bit_counter > 18 and bit_counter <22) then
					mosi <= '1';
				end if;
            if (cs_internal2 = '0' and bit_counter > 21 and bit_counter <32) then 
                 mosi <=data_in(31-bit_counter);  
            end if;
				if (cs_internal2 = '0' and bit_counter > 31 and bit_counter < 34) then
					mosi <= '0';
				end if;
        end if;
    end process;

    --sclk <= sclk_internal and not(cs_internal1);
	 sclk <= sclk_internal;
    cs1 <= cs_internal1;
    cs2 <= cs_internal2;
    
end architecture logic;