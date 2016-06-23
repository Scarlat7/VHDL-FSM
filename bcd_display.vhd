library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all; -- Esta biblioteca trata todos os sinais como UNSIGNED

entity bcd_display is
port (
	bin  			: in std_logic_vector(3 downto 0);
	displayCode : out std_logic_vector(6 downto 0)
);
end bcd_display;

architecture behav of bcd_display is

begin	
	process (bin)
	begin
		case  bin is
				when "0000"=> displayCode  <="1000000";  -- '0'
				when "0001"=> displayCode  <="1111001";  -- '1'
				when "0010"=> displayCode  <="0100100";  -- '2'
				when "0011"=> displayCode  <="0110000";  -- '3'
				when "0100"=> displayCode  <="0011001";  -- '4' 
				when "0101"=> displayCode  <="0010010";  -- '5'
				when "0110"=> displayCode  <="0000010";  -- '6'
				when "0111"=> displayCode  <="1111000";  -- '7'
				when "1000"=> displayCode  <="0000000";  -- '8'
				when "1001"=> displayCode  <="0010000";  -- '9'
				 --nothing is displayed when a number more than 9 is given as input. 
				when others=> displayCode  <="1111111"; 
		end case;
	end process;
	 
	 
end behav;
