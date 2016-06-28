library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all; -- Esta biblioteca trata todos os sinais como UNSIGNED

entity bin_bcd is
port (
	bin  				: in std_logic_vector(11 downto 0);
	displayCode1 	: out std_logic_vector(6 downto 0);
	displayCode2 	: out std_logic_vector(6 downto 0);
	displayCode3 	: out std_logic_vector(6 downto 0);
	displayCode4 	: out std_logic_vector(6 downto 0)
);
end bin_bcd;

architecture behav of bin_bcd is

	signal unidade : std_logic_vector(3 downto 0);
	signal dezena : std_logic_vector(3 downto 0);
	signal centena : std_logic_vector(3 downto 0);
	signal milhares : std_logic_vector(3 downto 0);

begin
	process(bin)

  -- temporary variables
  variable temp : STD_LOGIC_VECTOR (11 downto 0);
  variable bcd : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
  
  begin
  
	 bcd := (others => '0');
    temp(11 downto 0) := bin;
    
    for i in 0 to 11 loop	
		    
      if bcd(3 downto 0) > 4 then 
        bcd(3 downto 0) := bcd(3 downto 0) + 3;
      end if;
		
		if bcd(7 downto 4) > 4 then 
        bcd(7 downto 4) := bcd(7 downto 4) + 3;
      end if;
		
		if bcd(11 downto 8) > 4 then 
        bcd(11 downto 8) := bcd(11 downto 8) + 3;
      end if;
			
				
		bcd(15 downto 1) := bcd(14 downto 0);  --shifting the bits.
		bcd(0) := temp(11);
		temp(11	downto 1) := temp(10 downto 0);
		temp(0) :='0';
		
    end loop;
	 
	 unidade <= bcd(3 downto 0);
	 dezena <= bcd(7 downto 4);
	 centena <= bcd(11 downto 8);
	 milhares <= bcd(15 downto 12);
	end process;
	
	D1: entity work.bcd_display port map(unidade, displayCode1);
	D2: entity work.bcd_display port map(dezena, displayCode2);
	D3: entity work.bcd_display port map(centena, displayCode3);
	D4: entity work.bcd_display port map(milhares, displayCode4);
	 
	 
end behav;
