library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all; -- Esta biblioteca trata todos os sinais como UNSIGNED

entity debouncer is
port (
	button			: in std_logic;
	clock 			: in std_logic;
	reset				: in std_logic;
	saida				: out std_logic
);
end debouncer;

architecture behav of debouncer is

	signal ffOut1, ffOut2, ffOut3 : std_logic;

begin	
	
		FF1: entity work.ffd port map(button, clock, reset, ffOut1);
		FF2: entity work.ffd port map(ffOut1, clock, reset, ffOut2);
		FF3: entity work.ffd port map(ffOut2, clock, reset, ffOut3);
		
		saida <= ffOut1 AND ffOut2 AND (NOT ffOut3);	 
	 
end behav;
