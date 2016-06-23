library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all; -- Esta biblioteca trata todos os sinais como UNSIGNED

entity tester is
port (
	clock_50Mhz : in std_logic;
	reset   : in std_logic;
	
	cents0  : out std_logic_vector(6 downto 0);
	cents1  : out std_logic_vector(6 downto 0);
	reais0  : out std_logic_vector(6 downto 0);
	reais1  : out std_logic_vector(6 downto 0)
);
end tester;


architecture behav of tester is
	-- Declaracao de um registrador para armazenar a contagem
	signal reg_counter : std_logic_vector(3 downto 0);
	
	-- Declaracao dos sinais para clock_1hz
	signal clock_1hz   : std_logic;
begin
	
	CON: entity work.bin_bcd port map("100000000000", cents0, cents1, reais0, reais1);
	
end behav;