library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all; -- Esta biblioteca trata todos os sinais como UNSIGNED

entity fsm is
port (
	clock	   	: in std_logic;
	reset    	: in std_logic;
	
	coins			: in std_logic_vector(2 downto 0);
	
	suco 			: in std_logic;
	refri			: in std_logic;
	
	cancel		: in std_logic;
	
	LED			: out std_logic;
	saldoOut		: out std_logic_vector(11 downto 0)
);
end fsm;


architecture behav of fsm is

	constant IDLE_STATE : std_logic_vector := "000";
	constant COIN_STATE : std_logic_vector := "001";
	constant BUY_STATE : std_logic_vector := "00";
	constant RELEASE_STATE : std_logic_vector := "011";
	constant CANCEL_STATE : std_logic_vector := "100";
	
	
	signal buy, new_coin : std_logic;
	
	signal Q				: std_logic_vector(2 downto 0);
	signal D				: std_logic_vector(2 downto 0);
	signal success		: std_logic := '0';
	signal saldo		: std_logic_vector(11 downto 0);

begin
	
	buy <= suco OR refri;
	new_coin <= coins(0) OR coins(1) OR coins(2);
	
	D(0) <= ( (NOT Q(0)) AND (NOT Q(1)) AND (NOT Q(2)) AND new_coin AND (NOT buy) AND (NOT cancel) )
				OR ((NOT Q(2)) AND Q(1) AND (NOT Q(0)) AND success );
	D(1) <= ( (NOT Q(2)) AND Q(1) AND (NOT Q(0)) AND success ) OR ( (NOT Q(2)) AND (NOT Q(1))
				AND (NOT Q(0)) AND (NOT new_coin)AND buy AND (NOT cancel) );
	D(2) <= (NOT Q(0)) AND (NOT Q(1)) AND (NOT Q(2)) AND (NOT new_coin) AND (NOT buy) AND cancel;
	
	D0FF:	 entity work.ffd port map(D(0), clock, reset, Q(0));
	D1FF:	 entity work.ffd port map(D(1), clock, reset, Q(1));
	D2FF:	 entity work.ffd port map(D(2), clock, reset, Q(2));	
	
	process(Q, clock)
			variable valor : std_logic_vector(11 downto 0);
	begin
	case  Q is
		when IDLE_STATE=> 
		
		
		when COIN_STATE => 
			if(rising_edge(clock)) then
				if(coins(0) = '1') then
					valor := valor + "000000011001";
				end if;
				if(coins(1) = '1') then
					valor := valor + "000000110010";
				end if;
				if(coins(2) = '1') then
					valor := valor + "000001100100";
				end if;
			end if;
		saldo <= valor(11 downto 0);
		
		
		when BUY_STATE=> 
			if(suco = '1') then
				if(saldo >= "000010010110") then
				  success <= '1';
				else
				  success <= '0';
				end if;
			elsif(refri = '1') then
				if(saldo >= "00001001011") then
				  success <= '1';
				else
				  success <= '0';
				end if;
			end if;
			
			
		when RELEASE_STATE=>
			
	
		when CANCEL_STATE=> 
			if(rising_edge(clock)) then
				saldo_new <= "000000000000";
			end if;
		when others=> 
		
		
	end case;
	end process;
			
	LED <= NOT Q(2) AND Q(1) AND Q(0) AND success;
	
	
end behav;