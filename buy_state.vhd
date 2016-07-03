library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all; -- Esta biblioteca trata todos os sinais como UNSIGNED

entity buy_state is
port (
  reset: in std_logic;
  clock: in std_logic;
  refri: in std_logic;
  suco: in std_logic;
  saldo: in std_logic_vector(11 down to 0);
  success: out std_logic
);
end buy_state;

architecture behav of diplay_tester is

process(reset, clock, drink)
begin

  if(rising_edge(clock)) then
	 if(refri = '1') then
      if(saldo >= "000010010110") then
        success <= '1';
      else
        success <= '0';
      end if;
   elsif(suco = '1') then
      if(saldo >= "00001001011") then
        success <= '1';
      else
        success <= '0';
      end if;
   end if;
  end if;


end behav;
