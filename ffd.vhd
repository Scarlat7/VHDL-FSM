library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

-- Definição da entidade Flip Flop D
entity ffd is
port (
	d 				: in std_logic;	-- Controle D
	clk	   	: in std_logic;	-- Clock
	reset 		: in std_logic;	-- Reset
	stored 		: out std_logic	-- Saida 
);
end ffd;


architecture FlipFlop_behav of ffd is

begin

	process(clk, d, reset)
	begin
		if (reset = '1') then
			stored <= '0';
		elsif (clk = '1' AND clk'EVENT) then
				stored <= d;
		end if;
	end process;
	
end FlipFlop_behav;