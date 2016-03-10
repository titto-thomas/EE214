library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity StringRecognizer is
	port (
	X4,X3,X2,X1,X0: in std_logic; 
	W: out std_logic;
	clk,reset: in std_logic
	);
end entity StringRecognizer;

architecture StringRecognizer_hw of StringRecognizer is

type Bomb_FSMstate is (S0,S1,S2,S3); -- list of states
signal bomb_current_state: Bomb_FSMstate; -- Holds the name of the current state

type Knife_FSMstate is (S0,S1,S2,S3,S4); -- list of states
signal knife_current_state: Knife_FSMstate; -- Holds the name of the current state

type Gun_FSMstate is (S0,S1,S2); -- list of states
signal gun_current_state: Gun_FSMstate; -- Holds the name of the current state

type Terror_FSMstate is (S0,S1,S2,S3,S4,S5); -- list of states
signal terror_current_state: Terror_FSMstate; -- Holds the name of the current state

signal char_in : std_logic_vector(4 downto 0);
signal W1,W2,W3,W4 : std_logic;
begin

char_in <= X4&X3&X2&X1&X0;

Vineesh:process(clk, reset)
begin
	if (clk'event and clk = '1') then
		if(reset = '1') then
			W <= '0';
		else
			W <= W1 or W2 or W3 or W4;
		end if;
	end if;
end process;




Bomb : process(clk, reset, char_in, bomb_current_state)
variable bomb_next_state: Bomb_FSMstate;
begin
	-- default values.
	bomb_next_state := bomb_current_state;
	-- calculate next state, output variables
	case bomb_current_state is
		when S0 =>
				if ( char_in = "00010") then -- 'b'
					bomb_next_state := S1;
				end if;
				W1 <= '0';
		when S1 =>
				if (char_in = "01111") then  -- 'o'
					bomb_next_state := S2;
				end if;
				W1 <= '0';
		when S2 =>
				if (char_in = "01101") then  -- 'm'
					bomb_next_state := S3;
				end if;
				W1 <= '0';
		when S3 =>
				if (char_in = "00010") then  -- 'b'
					bomb_next_state := S1;
					W1 <= '1';
				else			
					W1 <= '0';
				end if;
				
		when others => 
				bomb_next_state := S0;
				W1 <= '0';
	end case;
	
	
	-- next-state to state.
	if (clk'event and clk = '1') then
		if(reset = '1') then
			bomb_current_state <= S0; -- S0 is reset state
		else
			bomb_current_state <= bomb_next_state;
		end if;
	end if;
end process;

Knife : process(clk, reset, char_in, knife_current_state)
variable knife_next_state: Knife_FSMstate;
begin
	-- default values.
	knife_next_state := knife_current_state;
	-- calculate next state, output variables
	case knife_current_state is
		when S0 =>
				if ( char_in = "01011") then -- 'k'
					knife_next_state := S1;
				end if;
				W2 <= '0';
		when S1 =>
				if (char_in = "01110") then  -- 'n'
					knife_next_state := S2;
				end if;
				W2 <= '0';
		when S2 =>
				if (char_in = "01001") then  -- 'i'
					knife_next_state := S3;
				end if;
				W2 <= '0';
		when S3 =>
				if (char_in = "00110") then  -- 'f'
					knife_next_state := S4;
				end if;
				W2 <= '0';
		when S4 =>
				if (char_in = "00110") then  -- 'e'
					knife_next_state := S0;
					W2 <= '1';
				else
					W2 <= '0';
				end if;
				
		when others => 
				knife_next_state := S0;
				W2 <= '0';
	end case;
	
	-- next-state to state.
	if (clk'event and clk = '1') then
		if(reset = '1') then
			knife_current_state <= S0; -- S0 is reset state
		else
			knife_current_state <= knife_next_state;
		end if;
	end if;
end process;


Gun : process(clk, reset, char_in, gun_current_state)
variable gun_next_state: Gun_FSMstate;
variable varW3 : std_logic;
begin
	-- default values.
	gun_next_state := gun_current_state;
	
	-- calculate next state, output variables
	case gun_current_state is
		when S0 =>
				if ( char_in = "00111") then -- 'g'
					gun_next_state := S1;
				end if;
				W3 <= '0';
		when S1 =>
				if (char_in = "10101") then  -- 'u'
					gun_next_state := S2;
				end if;
				W3 <= '0';
		when S2 =>
				if (char_in = "01110") then  -- 'n'
					gun_next_state := S0;
					W3 <= '1';
				else
					W3 <= '0';			
				end if;
				
		when others => 
				gun_next_state := S0;
				W3 <= '0';
	end case;
	
	-- next-state to state.
	if (clk'event and clk = '1') then
		if(reset = '1') then
			gun_current_state <= S0; -- S0 is reset state
		else
			gun_current_state <= gun_next_state;
		end if;
	end if;
end process;


Terror : process(clk, reset, char_in, terror_current_state)
variable terror_next_state: Terror_FSMstate;
variable varW4 : std_logic;
begin
	-- default values.
	terror_next_state := terror_current_state;
	
	-- calculate next state, output variables
	case terror_current_state is
		when S0 =>
				if ( char_in = "10100") then -- 't'
					terror_next_state := S1;
				end if;
				W4 <= '0';
		when S1 =>
				if (char_in = "00110") then  -- 'e'
					terror_next_state := S2;
				end if;
				W4 <= '0';
		when S2 =>
				if (char_in = "10010") then  -- 'r'
					terror_next_state := S3;
				end if;
				W4 <= '0';
		when S3 =>
				if (char_in = "10010") then  -- 'r'
					terror_next_state := S4;
				end if;
				W4 <= '0';
		when S4 =>
				if (char_in = "01111") then  -- 'o'
					terror_next_state := S5;
				end if;
				W4 <= '0';
		when S5 =>
				if (char_in = "10010") then  -- 'r'
					terror_next_state := S0;
					W4 <= '1';
				else
					W4 <= '0';
				end if;
				
		when others => 
				terror_next_state := S0;
				W4 <= '0';
	end case;
	
	-- next-state to state.
	if (clk'event and clk = '1') then
		if(reset = '1') then
			terror_current_state <= S0; -- S0 is reset state
		else
			terror_current_state <= terror_next_state;
		end if;
	end if;
end process;

end StringRecognizer_hw;
