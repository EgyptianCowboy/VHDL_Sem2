library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity test1 is
  port (
    inTest : in unsigned;
    outTest: out unsigned(3 downto 0));
end entity test1;

architecture behavorial of test1 is
type state is (st1, st2, st3, st4, st5);
begin  -- architecture behavorial



end architecture behavorial;
