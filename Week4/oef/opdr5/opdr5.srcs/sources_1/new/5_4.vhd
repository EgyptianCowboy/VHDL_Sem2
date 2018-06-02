

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity opdr5_4 is
    Port ( A_H : in STD_LOGIC;
    B_H : in STD_LOGIC;
    C_H : in STD_LOGIC;
    D_H : in STD_LOGIC;
    A_OUT : out STD_LOGIC);
end opdr5_4;

architecture Behavioral of opdr5_4 is

begin
A_OUT <= NOT(NOT((A_H AND B_H) AND (A_H NOR C_H)) AND (NOT(D_H) NOR (B_H XOR C_H)) AND (A_H XNOR D_H) AND (A_H AND NOT(B_H) AND NOT(C_H) AND D_H));

end Behavioral;
