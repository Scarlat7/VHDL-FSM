library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all; -- Esta biblioteca trata todos os sinais como UNSIGNED

entity tester is
port (
	clock	   : in std_logic;
	reset    : in std_logic;
	
	b25		: in std_logic;
	b50		: in std_logic;
	b100		: in std_logic;
	
	cents0   : out std_logic_vector(6 downto 0);
	cents1   : out std_logic_vector(6 downto 0);
	reais0   : out std_logic_vector(6 downto 0);
	reais1   : out std_logic_vector(6 downto 0)
);
end tester;


architecture behav of tester is

	signal out25		: std_logic;
	signal out50		: std_logic;
	signal out100		: std_logic;
	signal saldo 		: std_logic_vector(11 downto 0);
	
	-- Declaracao dos sinais para clock_1hz
	signal clock_1hz   : std_logic;
begin
	
	B25: entity work.debouncer port map(b25, clock, reset, out25);
	B50: entity work.debouncer port map(b50, clock, reset, out50);
	B100: entity work.debouncer port map(b100, clock, reset, out100);

	
	
	CON: entity work.bin_bcd port map("100000000000", cents0, cents1, reais0, reais1);
	
end behav;