library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity opdr72 is
  Port ( inVect : in std_logic_vector(2 downto 0);
         outVect : out std_logic_vector(7 downto 0)
         );
end opdr72;

architecture Behavioral of opdr72 is

begin
outVect <= "00000001" when inVect = "000" else
           "00000010" when inVect = "001" else
           "00000100" when inVect = "010" else
           "00001000" when inVect = "011" else
           "00010000" when inVect = "100" else
           "00100000" when inVect = "101" else
           "01000000" when inVect = "110" else
           "10000000" when inVect = "111" else "00000000";


end Behavioral;
