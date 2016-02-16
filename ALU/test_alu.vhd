library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library STD;
use STD.textio.all;

entity test_alu is    
end entity;

architecture test_hw of test_alu is

file OUT_FILE : text ;

component alu is
    port (
        InData1, InData2 : in std_logic_vector(7 downto 0);
	ALUop: in std_logic_vector(1 downto 0);
        OutData : out std_logic_vector(7 downto 0)
    );
end component;

signal InData1, InData2, OutData : std_logic_vector(7 downto 0);
signal ALUop: std_logic_vector(1 downto 0);

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

begin

DUT : alu port map(InData1, InData2, ALUop, OutData);
file_open(OUT_FILE,"scan.txt",WRITE_MODE);

Main : process
variable X, Y : integer range -127 to 128;
variable Expected,ExpAnsVec : std_logic_vector(7 downto 0);
variable LINE_NUM : line;
variable LINE_STRING1 : string (1 to 36);
constant LINE_STRING2 : string (1 to 14) := "RUNTEST 1 MSEC";
begin
    
ALUop <= "00";

X := -63;
outer1: while X < 63 loop
   InData1 <= std_logic_vector(to_signed(X,InData1'length));
   Y := -63;
   inner1: while Y < 63 loop
        InData2 <= std_logic_vector(to_signed(Y,InData2'length));
        Expected := std_logic_vector(to_signed(X+Y,Expected'length));

        wait for 5 ns;
        assert(Expected = OutData) report "Sum error when X=" & integer'image(X) & ", Y=" & integer'image(Y) severity error;
	LINE_STRING1 := ("SDR 18 TDI(" & to_hstring(ALUop) & to_hstring(InData1) & to_hstring(InData2) & ") 8 TDO(" & to_hstring(Expected) & ") MASK(FF)"); 
	WRITE(LINE_NUM, LINE_STRING1);	--save results to line
      	WRITELINE(OUT_FILE, LINE_NUM);   --write line to file
	WRITE(LINE_NUM, LINE_STRING2);	--save results to line
      	WRITELINE(OUT_FILE, LINE_NUM);   --write line to file

        Y := Y + 1;
    end loop inner1;

    X := X + 1;
end loop outer1;

ALUop <= "01";

X := -63;
outer2: while X < 63 loop
   InData1 <= std_logic_vector(to_signed(X,InData1'length));
   Y := -63;
   inner2: while Y < 63 loop
        InData2 <= std_logic_vector(to_signed(Y,InData2'length));
        Expected := std_logic_vector(to_signed(X-Y,Expected'length));
        wait for 5 ns;
        assert(Expected = OutData) report "Minus error when X=" & integer'image(X) & ", Y=" & integer'image(Y) severity error;
	LINE_STRING1 := ("SDR 18 TDI(" & to_hstring(ALUop) & to_hstring(InData1) & to_hstring(InData2) & ") 8 TDO(" & to_hstring(Expected) & ") MASK(FF)"); 
	WRITE(LINE_NUM, LINE_STRING1);	--save results to line
      	WRITELINE(OUT_FILE, LINE_NUM);   --write line to file
	WRITE(LINE_NUM, LINE_STRING2);	--save results to line
      	WRITELINE(OUT_FILE, LINE_NUM);   --write line to file
        Y := Y + 1;
    end loop inner2;

    X := X + 1;
end loop outer2;

ALUop <= "10";

Y := 0;
outer3: while Y < 8 loop
   InData2 <= std_logic_vector(to_signed(Y,InData2'length));
   X := 0;
   inner3: while X < 128 loop
        InData1 <= std_logic_vector(to_signed(X,InData1'length));
			ExpAnsVec := std_logic_vector(to_signed(X,InData1'length));
			case Y is
				when 0 => Expected :=  ExpAnsVec;
				when 1 => Expected :=  '0' & ExpAnsVec(7 downto 1);
				when 2 => Expected :=  "00" & ExpAnsVec(7 downto 2);
				when 3 => Expected :=  "000" & ExpAnsVec(7 downto 3);
				when 4 => Expected :=  "0000" & ExpAnsVec(7 downto 4);
				when 5 => Expected :=  "00000" & ExpAnsVec(7 downto 5);
				when 6 => Expected :=  "000000" & ExpAnsVec(7 downto 6);
				when 7 => Expected :=  "0000000" & ExpAnsVec(7 downto 7);
				when others => Expected :=  ExpAnsVec;
			end case;			

        wait for 5 ns;
	assert(Expected = OutData) report "Right shift error when X=" & integer'image(X) & ", Y=" & integer'image(Y) severity error;
	LINE_STRING1 := ("SDR 18 TDI(" & to_hstring(ALUop) & to_hstring(InData1) & to_hstring(InData2) & ") 8 TDO(" & to_hstring(Expected) & ") MASK(FF)"); 
	WRITE(LINE_NUM, LINE_STRING1);	--save results to line
      	WRITELINE(OUT_FILE, LINE_NUM);   --write line to file
	WRITE(LINE_NUM, LINE_STRING2);	--save results to line
      	WRITELINE(OUT_FILE, LINE_NUM);   --write line to file
        X := X + 1;
    end loop inner3;

    Y := Y + 1;
end loop outer3;

ALUop <= "11";

Y := 0;
outer4: while Y < 8 loop
   InData2 <= std_logic_vector(to_signed(Y,InData2'length));
   X := 0;
   inner4: while X < 128 loop
        InData1 <= std_logic_vector(to_signed(X,InData1'length));
			ExpAnsVec := std_logic_vector(to_signed(X,InData1'length));
			case Y is
				when 0 => Expected :=  ExpAnsVec;
				when 1 => Expected :=  ExpAnsVec(6 downto 0) & '0';
				when 2 => Expected :=  ExpAnsVec(5 downto 0) & "00";
				when 3 => Expected :=  ExpAnsVec(4 downto 0) & "000";
				when 4 => Expected :=  ExpAnsVec(3 downto 0) & "0000";
				when 5 => Expected :=  ExpAnsVec(2 downto 0) & "00000";
				when 6 => Expected :=  ExpAnsVec(1 downto 0) & "000000";
				when 7 => Expected :=  ExpAnsVec(0 downto 0) & "0000000";
				when others => Expected :=  ExpAnsVec;
			end case;			

        wait for 5 ns;
	assert(Expected = OutData) report "Right shift error when X=" & integer'image(X) & ", Y=" & integer'image(Y) severity error;
	LINE_STRING1 := ("SDR 18 TDI(" & to_hstring(ALUop) & to_hstring(InData1) & to_hstring(InData2) & ") 8 TDO(" & to_hstring(Expected) & ") MASK(FF)"); 
	WRITE(LINE_NUM, LINE_STRING1);	--save results to line
      	WRITELINE(OUT_FILE, LINE_NUM);   --write line to file
	WRITE(LINE_NUM, LINE_STRING2);	--save results to line
      	WRITELINE(OUT_FILE, LINE_NUM);   --write line to file
        X := X + 1;
    end loop inner4;

    Y := Y + 1;
end loop outer4;


end process Main;

end test_hw;
