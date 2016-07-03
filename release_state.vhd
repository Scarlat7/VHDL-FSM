library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all; -- Esta biblioteca trata todos os sinais como UNSIGNED

entity buy_state is
port (
  clock: in std_logic;
  refri: in std_logic;
  suco: in std_logic;
  saldo: in std_logic_vector(11 down to 0);
  led: out std_logic;
);
end buy_state;

architecture behav of diplay_tester is

  process(clock, drink)
    begin
      if(rising_edge(clock)) then
    	 if(refri = '1') then
          saldo <= saldo - "000010010110";
       elsif(suco = '1') then
          saldo <= saldo - "00001001011";
       end if;
       led <= '1';
      end if;
      if(rising_edge(clock)) then
        led <= '0';
      end if;
  end process;
end behav;
