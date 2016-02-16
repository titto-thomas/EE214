library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity test_alu is    
end entity;

architecture test_hw of test_alu is

component alu is
    port (
        InData1, InData2 : in std_logic_vector(7 downto 0);
	ALUop: in std_logic_vector(1 downto 0);
        OutData : out std_logic_vector(7 downto 0)
    );
end component;

signal InData1, InData2, OutData : std_logic_vector(7 downto 0);
signal ALUop: std_logic_vector(1 downto 0);

begin

DUT : alu port map(InData1, InData2, ALUop, OutData);

Main : process
variable X, Y : integer range -127 to 128;
variable Expected,ExpAnsVec : std_logic_vector(7 downto 0);
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
        X := X + 1;
    end loop inner4;

    Y := Y + 1;
end loop outer4;


end process Main;

end test_hw;
