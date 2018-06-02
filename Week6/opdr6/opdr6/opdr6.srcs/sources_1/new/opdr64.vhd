library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity opdr64 is
  Port ( digi1 : in std_logic;
         digi2 : in std_logic;
         digi3 : in std_logic;
         clk2 : in std_logic;
         dw1 : out std_logic;
         dw2 : out std_logic );
end opdr64;

architecture Behavioral of opdr64 is
signal s1,s2,s3,s4,s5,s6,s7,s8 : std_logic;
begin
s1 <= digi3 XOR clk2;
s2 <= s4 NOR digi3;
dw2 <= s2 OR s1 OR '0';
s4 <= digi1 AND clk2;
s5 <= NOT('1' OR digi2 OR clk2 OR digi1);
s6 <= NOT(s4);
s7 <= s5 XNOR s4;
s8 <= s7 NAND s6;
dw1 <= '1' NAND s8;


end Behavioral;
