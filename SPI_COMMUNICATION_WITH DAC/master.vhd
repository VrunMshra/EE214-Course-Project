library ieee;
use ieee.std_logic_1164.all;
entity master is 
    port(
        clk     : in  std_logic;     
        reset   : in  std_logic;     
        miso    : in  std_logic;     
        mosi    : out std_logic;                    --for ADC     
        cs1     : out std_logic;                    --for ADC     
        cs2     : out std_logic;                    --for DAC
        sclk    : out std_logic;     
        LEDS    : out std_logic_vector(7 downto 0);
        SDI     : out std_logic;                    --for DAC
		  dac_sclk: out std_logic
    );
end entity master;

-- Config bits fro DAC are 0111

architecture logic of master is 
    signal sclk_gen    : std_logic := '0';    
    signal clk_counter      : integer range 0 to 999 := 0;  
    signal bit_counter      : integer range 0 to 40 := 0;  
    signal dac_counter      : integer range 0 to 15 := 0;  
    signal config_ADC  : std_logic_vector(4 downto 0) := "00011";  
    signal cs_gen1     : std_logic := '1';
    signal cs_gen2     : std_logic := '1';
    signal data_in          : std_logic_vector(9 downto 0) := (others => '0');
begin
    -- Clock Divider Process
    process(clk, reset)
    begin
        if (reset = '1') then
            clk_counter <= 0;
            sclk_gen <= '0';    
        elsif rising_edge(clk) then
            if clk_counter = 999 then  
                clk_counter <= 0;
                sclk_gen <= not sclk_gen;  
            else 
                clk_counter <= clk_counter + 1;
            end if;
        end if;
    end process;
    
    -- Data Transmission Process
    process(sclk_gen, reset)
    begin
        if reset = '1' then
            mosi <= '0';             
            bit_counter <= 0;
            cs_gen1 <= '1';      
            cs_gen2 <= '1';
        elsif falling_edge(sclk_gen) then
            case bit_counter is
                when 0 =>
                    cs_gen1 <= '0';  -- First cycle is just CS going low
                    mosi <= config_ADC(bit_counter);
                    bit_counter <= bit_counter + 1;
                
                when 1 to 4 =>
                    mosi <= config_ADC(bit_counter);  
                    bit_counter <= bit_counter + 1;
                
                when 5 =>
                    mosi <= '0'; 
                    bit_counter <= bit_counter + 1;
                
                when 6 to 16 =>
                    mosi <= '0';  
                    bit_counter <= bit_counter + 1;
                
                when 17 to 18 =>
                    cs_gen1 <= '1';
                    --cs_gen2 <= '0';  
                    bit_counter <= bit_counter + 1;	  
                when 19 to 35 =>
					     cs_gen2 <= '0'; 
                    bit_counter <= bit_counter + 1;
                when 36 =>
                    cs_gen2 <= '1';  
                when others =>
						  cs_gen2 <= '1';  
            end case;
        end if;
    end process;
 
    process(sclk_gen, reset)
    begin
        if reset = '1' then 
            LEDS <= (others => '0');  
            SDI <= '0';
        elsif rising_edge(sclk_gen) then
            if (cs_gen1 = '0') and (bit_counter > 7) and (bit_counter < 18) then
                data_in(17-bit_counter) <= miso;  -- ADC output getting stored in data_in
            end if;
            if (cs_gen1 = '1') then
                LEDS <= data_in(9 downto 2);  
            end if;
				if (cs_gen2 = '0' and bit_counter = 19) then 
					SDI <='0';
				end if;	
				if (cs_gen2 = '0' and bit_counter > 19 and bit_counter <23) then
					SDI <= '1';
				end if;
            if (cs_gen2 = '0' and bit_counter > 22 and bit_counter <33) then 
                 SDI <=data_in(33-bit_counter);  
            end if;
				if (cs_gen2 = '0' and bit_counter > 32 and bit_counter <35) then
					SDI <= '0';
				end if;
        end if;
    end process;

	 sclk <= sclk_gen;
	 dac_sclk <= sclk_gen;
    cs1 <= cs_gen1;
    cs2 <= cs_gen2;
    
end architecture logic;