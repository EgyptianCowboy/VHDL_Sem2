library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity ex4 is
  port (
    init : in  std_logic;
    clk  : in  std_logic;
    x1   : in  std_logic;
    x2   : in  std_logic;
    z1   : out std_logic;
    z2   : out std_logic);
end entity ex4;

architecture behavorial of ex4 is
  type state is (a, b, c);
  signal ps, ns : state := a;
begin  -- architecture behavorial
  -- purpose: sequential part of the FSM
  -- type   : sequential
  -- inputs : clk, rst,
  -- outputs: ps, ns
  seqSFM : process (clk, init, ns) is
  begin  -- process seqSFM
    if init = '1' then                  -- asynchronous reset (active high)
      ps <= a;
    elsif clk'event and clk = '1' then  -- rising clock edge
      ps <= ns;
    end if;
  end process seqSFM;

  -- purpose: Combinational part of the fsm
  -- type   : combinational
  -- inputs : x1, init
  -- outputs: z1, z2
  combFSM : process (x1, clk) is
  begin  -- process combFSM
    case ps is
      when a =>
        if x1 = '1' then
          ns <= b;
          z2 <= '1';
        elsif x1 = '0' then
          ns <= c;
          z2 <= '0';
        end if;
      when b =>
        if x2 = '1' then
          ns <= a;
          z2 <= '0';
        elsif x2 = '0' then
          ns <= c;
          z2 <= '1';
        end if;
      when c =>
        if x1 = '1' then
          ns <= b;
          z2 <= '1';
        elsif x1 = '0' then
          ns <= a;
          z2 <= '1';
        end if;
      when others => ns <= a;
    end case;
  end process combFSM;

  with ps select
    z1 <=
    '0' when a,
    '1' when b,
    '1' when c;

end architecture behavorial;
