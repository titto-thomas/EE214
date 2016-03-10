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

function to_hstring (value : std_logic_vector) return string is
constant ne     : integer := (value'length+3)/4;
variable pad    : std_logic_vector(0 to (ne*4 - value'length) - 1);
variable ivalue : std_logic_vector(0 to ne*4 - 1);
variable result : string(1 to ne);
variable quad   : std_logic_vector(0 to 3);
begin
if value (value'left) = 'Z' then
	pad := (others => 'Z');
else
	pad := (others => '0');
end if;

ivalue := pad & value;

for i in 0 to ne-1 loop
	quad := ivalue(4*i to 4*i+3);
	case quad is
		  when x"0"   => result(i+1) := '0';
		  when x"1"   => result(i+1) := '1';
		  when x"2"   => result(i+1) := '2';
		  when x"3"   => result(i+1) := '3';
		  when x"4"   => result(i+1) := '4';
		  when x"5"   => result(i+1) := '5';
		  when x"6"   => result(i+1) := '6';
		  when x"7"   => result(i+1) := '7';
		  when x"8"   => result(i+1) := '8';
		  when x"9"   => result(i+1) := '9';
		  when x"A"   => result(i+1) := 'A';
		  when x"B"   => result(i+1) := 'B';
		  when x"C"   => result(i+1) := 'C';
		  when x"D"   => result(i+1) := 'D';
		  when x"E"   => result(i+1) := 'E';
		  when x"F"   => result(i+1) := 'F';
		  when "ZZZZ" => result(i+1) := 'Z';
		  when others => result(i+1) := 'X';
	end case;
end loop;

return result;
end function to_hstring;

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

clk <= not clk after 50 ns;

checking : process
    file   infile    : text is in  "input.txt";   --declare input file
    file   outfile    : text open write_mode is  "output.txt";   --declare output file
    file OUT_FILE   : text open write_mode is  "scan.txt";   --declare output file
    variable  inline    : line; --line number declaration
    variable  inline_dummy   : line; --line number declaration
    variable  outline    : line; --line number declaration
    variable  string_char    : character;
    variable  string_out_char    : character;
    variable string_read_success : boolean;
    variable string_write_success : boolean;
    variable string_out : string (1 to string_max_size+1) := (others => ' ');
    variable LINE_NUM : line;
    variable LINE_STRING1 : string (1 to 30);
    constant LINE_STRING2 : string (1 to 14) := "RUNTEST 1 MSEC";
    variable dumX1 : std_logic_vector(7 downto 0);
    variable dumX2 : std_logic_vector(7 downto 0);
    variable dumW : std_logic_vector(3 downto 0);
begin

reset <= '1';

LINE_STRING1 := ("SDR 7 TDI(20) 1 TDO(0) MASK(F)"); 
WRITE(LINE_NUM, LINE_STRING1);	--save results to line
WRITELINE(OUT_FILE, LINE_NUM);   --write line to file
WRITE(LINE_NUM, LINE_STRING2);	--save results to line
WRITELINE(OUT_FILE, LINE_NUM);   --write line to file
LINE_STRING1 := ("SDR 7 TDI(60) 1 TDO(0) MASK(F)"); 
WRITE(LINE_NUM, LINE_STRING1);	--save results to line
WRITELINE(OUT_FILE, LINE_NUM);   --write line to file
WRITE(LINE_NUM, LINE_STRING2);	--save results to line
WRITELINE(OUT_FILE, LINE_NUM);   --write line to file
      		
wait for 220 ns;

reset <= '0';
while not endfile(infile) loop

          -- read digital data from input file 
	readline(infile, inline);
	inline_dummy := new string'(inline.all);
	writeline(outfile, inline_dummy);
	
	for i in 0 to string_max_size loop
		read(inline, string_char, string_read_success);
		if not string_read_success then -- found end of line 
		exit;
		end if;
		
		X <= to_std_logic_vector(string_char);
		dumX1 := "000" & to_std_logic_vector(string_char);
		dumX2 := "001" & to_std_logic_vector(string_char);
		
		wait until clk'event and clk = '0';
		if (W = '1') then
			string_out_char := 'y';
		else
			string_out_char := 'n';
		end if;
		string_out(i+1) := string_out_char;
		
		dumW := "000" & W;
		LINE_STRING1 := ("SDR 7 TDI(" & to_hstring(dumX1) & ") 1 TDO(0) MASK(0)"); 
		WRITE(LINE_NUM, LINE_STRING1);	--save results to line
      		WRITELINE(OUT_FILE, LINE_NUM);   --write line to file
		WRITE(LINE_NUM, LINE_STRING2);	--save results to line
      		WRITELINE(OUT_FILE, LINE_NUM);   --write line to file
      		LINE_STRING1 := ("SDR 7 TDI(" & to_hstring(dumX2) & ") 1 TDO(" & to_hstring(dumW) & ") MASK(F)"); 
		WRITE(LINE_NUM, LINE_STRING1);	--save results to line
      		WRITELINE(OUT_FILE, LINE_NUM);   --write line to file
		WRITE(LINE_NUM, LINE_STRING2);	--save results to line
      		WRITELINE(OUT_FILE, LINE_NUM);   --write line to file
      		
	end loop;
	write(outline, string_out);
	writeline(outfile, outline);
end loop;

end process checking;


end test_hw;
