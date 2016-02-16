library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu is
    port (
        InData1, InData2 : in std_logic_vector(7 downto 0);
	ALUop: in std_logic_vector(1 downto 0);
        OutData : out std_logic_vector(7 downto 0)
    );
end entity;

architecture alu_hw of alu is

component adder is
    port (
        Xin, Yin : in std_logic_vector(7 downto 0);
        Sum : out std_logic_vector(7 downto 0)
    );
end component;
component sub is
    port (
        Xin, Yin : in std_logic_vector(7 downto 0);
        Minus : out std_logic_vector(7 downto 0)
    );
end component;
component rshift is
    port (
        Xin, Yin : in std_logic_vector(7 downto 0);
        Ans : out std_logic_vector(7 downto 0)
    );
end component;
component lshift is
    port (
        Xin, Yin : in std_logic_vector(7 downto 0);
        Ans : out std_logic_vector(7 downto 0)
    );
end component;

signal adderSum : std_logic_vector(7 downto 0);
signal subMinus : std_logic_vector(7 downto 0);
signal rShiftAns : std_logic_vector(7 downto 0);
signal lShiftAns : std_logic_vector(7 downto 0);

begin

adder_inst : adder port map(Xin => InData1, Yin => InData2, Sum => adderSum);
sub_inst : sub port map(Xin => InData1, Yin => InData2, Minus => subMinus);
rshift_inst : rShift port map(Xin => InData1, Yin => InData2, Ans => rShiftAns);
lshift_inst : lShift port map(Xin => InData1, Yin => InData2, Ans => lShiftAns);

ALUprocess : process(ALUop, adderSum, subMinus, rShiftAns, lShiftAns)
begin
	if (ALUop = "00") then
		OutData <= adderSum;
	elsif (ALUop = "01") then
		OutData <= subMinus;
	elsif (ALUop = "10") then
		OutData <= rShiftAns;
	elsif (ALUop = "11") then
		OutData <= lShiftAns;
	else
		OutData <= x"00";
	end if;
end process ALUprocess;

end alu_hw;
