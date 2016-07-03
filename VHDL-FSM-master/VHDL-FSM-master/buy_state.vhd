library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all; -- Esta biblioteca trata todos os sinais como UNSIGNED

entity buy_state is
port (
  reset: in std_logic;
  clock: in std_logic;
  drink: in std_logic;
  saldo: in std_logic_vector(11 down to 0);
  success: out std_logic
);
end buy_state;

architecture behav of diplay_tester is

process(reset, clock, drink)
begin
  --suco é 1
  --refri é 0
	 if(drink = '1') then
      if(saldo >= "000010010110") then
        sucess <= '1';
      else
        sucess <= '0';
      endif;
   elsif(drink = '0') then
      if(saldo >= "00001001011") then
        sucess <= '1';
      else
        sucess <= '0';
      endif;
   endif;


end behav;
