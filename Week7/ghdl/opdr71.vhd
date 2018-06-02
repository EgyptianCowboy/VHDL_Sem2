library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity opdr71 is
  Port ( dvect : in std_logic_vector(7 downto 0);
         svect : in std_logic_vector(2 downto 0);
         output : out std_logic);
end opdr71;

architecture Behavioral of opdr71 is
begin

output <= dvect(0) when svect = "000" else
          dvect(1) when svect = "001" else
          dvect(2) when svect = "010" else
          dvect(3) when svect = "011" else
          dvect(4) when svect = "100" else
          dvect(5) when svect = "101" else
          dvect(6) when svect = "110" else
          dvect(7) when svect = "111" else '0';
end Behavioral;
