library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity opdr5_7 is
    Port ( B : in STD_LOGIC;
           H : in STD_LOGIC;
           G : in STD_LOGIC;
           K : in STD_LOGIC;
           F : out STD_LOGIC);
end opdr5_7;

architecture Behavioral of opdr5_7 is
signal vecint : STD_LOGIC_VECTOR(3 downto 0);
signal outtemp : STD_LOGIC := 'X';

begin
vecint <= B & H & G & K;

F <= '0'  when vecint = "0000" else
  '0' when vecint = "0001" else
  '0' when vecint = "0010" else
  '1' when vecint = "0011" else
  '0' when vecint = "0100" else
  '0' when vecint = "0101" else
  '1' when vecint = "0110" else
  '1' when vecint = "0111" else
  '1' when vecint = "1000" else
  '1' when vecint = "1001" else
  '0' when vecint = "1010" else
  '0' when vecint = "1011" else
  '0' when vecint = "1100" else
  '0' when vecint = "1101" else
  '0' when vecint = "1110" else
  '0' when vecint = "1111";




end Behavioral;
