library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library std;
use std.textio.all;  --include package textio.vhd

entity test_StringRecognizer is    
end entity;

architecture test_hw of test_StringRecognizer is

function to_std_logic_vector(c: character) return std_logic_vector is 
    variable sl: std_logic_vector(4 downto 0);
begin
      case c is
        when 'a' => sl := "00001";
	when 'b' => sl := "00010";
	when 'c' => sl := "00011";
	when 'd' => sl := "00100";
	when 'e' => sl := "00101";
	when 'f' => sl := "00110";
	when 'g' => sl := "00111";
	when 'h' => sl := "01000";
	when 'i' => sl := "01001";
	when 'j' => sl := "01010";
	when 'k' => sl := "01011";
	when 'l' => sl := "01100";
	when 'm' => sl := "01101";
	when 'n' => sl := "01110";
	when 'o' => sl := "01111";
	when 'p' => sl := "10000";
	when 'q' => sl := "10001";
	when 'r' => sl := "10010";
	when 's' => sl := "10011";
	when 't' => sl := "10100";
	when 'u' => sl := "10101";
	when 'v' => sl := "10110";
	when 'w' => sl := "10111";
	when 'x' => sl := "11000";
	when 'y' => sl := "11001";
	when 'z' => sl := "11010";
	when ' ' => sl := "11011";
        when others => sl := "00000";
    end case;
   return sl;
end to_std_logic_vector;

component StringRecognizer is
    port (
	X4,X3,X2,X1,X0: in std_logic; 
	W: out std_logic;
	clk,reset: in std_logic
	);
end component;

signal X4,X3,X2,X1,X0, W, clk, reset: std_logic := '0'; 
signal X : std_logic_vector(4 downto 0);
constant string_max_size : integer := 100;
    
begin

DUT : StringRecognizer port map (X(4),X(3),X(2),X(1),X(0), W, clk, reset);

clk <= not clk after 5 ns;

checking : process
    file   infile    : text is in  "input.txt";   --declare input file
    variable  inline    : line; --line number declaration
    variable  string_char    : character;
    variable string_read_success : boolean;
begin

reset <= '1';

wait for 20 ns;

reset <= '0';
while not endfile(infile) loop

          -- read digital data from input file 
	readline(infile, inline);
	for i in 0 to string_max_size loop
		read(inline, string_char, string_read_success);
		if not string_read_success then -- found end of line 
		exit;
		end if;
		X <= to_std_logic_vector(string_char);
		wait until clk'event and clk = '0';
	end loop;

end loop;

end process checking;


end test_hw;