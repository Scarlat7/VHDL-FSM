library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all; -- Esta biblioteca trata todos os sinais como UNSIGNED

entity beverage_machine is
port (
	clock	   : in std_logic;
	reset    : in std_logic;
	
	b25		: in std_logic;
	b50		: in std_logic;
	b100		: in std_logic;
	
	suco 		: in std_logic;
	refri		: in std_logic;
	
	cancel	: in std_logic;
	
	LED		: out std_logic;
	cents0   : out std_logic_vector(6 downto 0);
	cents1   : out std_logic_vector(6 downto 0);
	reais0   : out std_logic_vector(6 downto 0);
	reais1   : out std_logic_vector(6 downto 0)
);
end beverage_machine;


architecture behav of beverage_machine is

	signal outCoin		: std_logic_vector(2 downto 0);
	signal outCancel	: std_logic;
	signal outRefri	: std_logic;
	signal outSuco		: std_logic;
	
	signal saldo 		: std_logic_vector(11 downto 0);

begin
	
	--módulo do debouncer (filtra as entradas)
	DEBOUNC25: entity work.debouncer port map(b25, clock, reset, outCoin(0));
	DEBOUNC50: entity work.debouncer port map(b50, clock, reset, outCoin(1));
	DEBOUNC100: entity work.debouncer port map(b100, clock, reset, outCoin(2));
	DEBOUNCCANCEL: entity work.debouncer port map(cancel, clock, reset, outCancel);
	DEBOUNCREFRI: entity work.debouncer port map(refri, clock, reset, outRefri);
	DEBOUNCSUCO: entity work.debouncer port map(suco, clock, reset, outSuco);
	
	--módulo da fsm
	FSM_MODULE: entity work.fsm port map(clock, reset, outCoin, outSuco, outRefri, cancel, LED, saldo);
	
	--módulo de BCD-Display
	DISPLAY_MODULE:	entity work.bin_bcd port map(saldo, cents0, cents1, reais0, reais1);
	
end behav;