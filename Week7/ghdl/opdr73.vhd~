library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity opdr73 is
  port (numIn  : in  unsigned(3 downto 0);
        sel    : in  std_logic;
        numOut : out std_logic_vector(3 downto 0));
end opdr73;

architecture Behavioral of opdr73 is
  signal intOut : unsigned(3 downto 0) := "0000";
begin

  comparator : process(numIn(1 downto 0), numIn(3 downto 2), sel)
  begin
    if (sel = '0') then
      if (numIn(1 downto 0) = numIn(3 downto 2)) then
        intOut <= "0001";
      elsif (numIn(1 downto 0) < numIn(3 downto 2)) then
        intOut <= "0010";
      elsif (numIn(1 downto 0) > numIn(3 downto 2)) then
        intOut <= "0100";
      else intOut <= "0000";
      end if;
    end if;
  end process;

  binenc : process(numIn)
  begin
    if (sel = '1') then
      if (numIn < 2) then
        intOut <= numIn + 2;
      elsif (numIn >= 2 and numIn < 7) then
        intOut <= numIn - 1;
      elsif (numIn >= 7 and numIn <= 9) then
        intOut <= numIn - 2;
      end if;
    end if;
  end process;
  numOut <= std_logic_vector(intOut);

end Behavioral;
