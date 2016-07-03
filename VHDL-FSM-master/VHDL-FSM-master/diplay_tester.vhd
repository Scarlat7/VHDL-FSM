library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all; -- Esta biblioteca trata todos os sinais como UNSIGNED

entity diplay_tester is
port (
	clock	   : in std_logic;
	reset    : in std_logic;
	
	b25		: in std_logic;
	b50		: in std_logic;
	b100		: in std_logic;
	
	test		: out std_logic_vector(11 downto 0);
	cents0   : out std_logic_vector(6 downto 0);
	cents1   : out std_logic_vector(6 downto 0);
	reais0   : out std_logic_vector(6 downto 0);
	reais1   : out std_logic_vector(6 downto 0)
);
end diplay_tester;


architecture behav of diplay_tester is

	signal out25		: std_logic;
	signal out50		: std_logic;
	signal out100		: std_logic;
	signal saldo 		: std_logic_vector(11 downto 0);

begin
	
	
	BUT25: entity work.debouncer port map(b25, clock, reset, out25);
	BUT50: entity work.debouncer port map(b50, clock, reset, out50);
	BUT100: entity work.debouncer port map(b100, clock, reset, out100);

	process(out25, out50, out100, reset, clock)
	
		--variable now : std_logic_vector(11 downto 0);
		begin
			if(reset = '0') then
				saldo <= "000000000000";
			elsif(rising_edge(clock)) then
				if(out25 = '1') then
					saldo <= saldo + "000000011001";
				end if;
				if(out50 = '1') then
					saldo <= saldo + "000000110010";
				end if;
				if(out100 = '1') then
					saldo <= saldo + "000001100100";
				end if;
			end if;
	end process;

	CON: entity work.bin_bcd port map(saldo, cents0, cents1, reais0, reais1);
	
	
end behav;