library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity ex10 is
  port (
    x, clk, rst : in  std_logic;
    y           : out std_logic_vector(2 downto 0);
    z           : out std_logic);
end entity ex10;


architecture behavorial of ex10 is
  type states is (a, b, c);
  attribute enum_type           : string;
  attribute enum_type of states : type is "001, 010, 100";
  signal ps, ns                 : states := a;
begin  -- architecture behavorial
  --sequential part of the fsm
  -- type   : sequential
  -- inputs : clk, rst, ns
  -- outputs: ps
  seqFSM : process(clk, rst, ns)
  begin
    if rst = '0' then
      ps <= a;
    elsif clk'event and clk = '1' then
      ps <= ns;
    end if;
  end process seqFSM;

  -- purpose: combinational process of the fms
  -- type   : combinational
  -- inputs : x, ps
  -- outputs: ns
  combFSM : process (x, ps) is
  begin  -- process combFSM
    case ps is
      when a =>
        z  <= '1';
        ns <= b;
      when b =>
        if x <= '0' then
          z  <= '1';
          ns <= c;
        end if;
      when c =>
        z  <= '1';
        ns <= a;
      when others => ns <= a;
    end case;
  end process combFSM;

  with ps select
    y <=
    "001" when a,
    "010" when b,
    "100" when c;

end architecture behavorial;
