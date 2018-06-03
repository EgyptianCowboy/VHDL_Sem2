library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity ex6 is

  port (
    x   : in  std_logic;
    clk : in  std_logic;
    rst : in  std_logic;
    z1  : out std_logic;
    z2  : out std_logic);

end entity ex6;

architecture behavorial of ex6 is
  type state is (a, b, c, d);
  attribute enum_encoding          : string;
  attribute enum_encoding of state : type is "00, 01, 10, 11";
  signal ps, ns                    : state := a;
begin  -- architecture behavorial

  -- purpose: Sequential part of the fsm
  -- type   : sequential
  -- inputs : clk, rst, ns
  -- outputs: ps
  seqFSM : process (clk, rst, ns) is
  begin  -- process seqFSM
    if rst = '0' then                   -- asynchronous reset (active low)
      ps <= a;
    elsif clk'event and clk = '1' then  -- rising clock edge
      ps <= ns;
    end if;
  end process seqFSM;

  -- purpose: Combinational part of the FSM
  -- type   : combinational
  -- inputs : x, ps
  -- outputs: z1, z2
  combFSM : process (x, ps) is
  begin  -- process combFSM
    case ps is
      when a =>
        if x = '1' then
          ns <= a;
          z2 <= '0';
        else
          ns <= c;
          z2 <= '0';
        end if;
      when b =>
        if x <= '1' then
          ns <= b;
          z2 <= '0';
        else
          ns <= d;
          z2 <= '0';
        end if;
      when c =>
        if x <= '1' then
          ns <= a;
          z2 <= '0';
        else
          ns <= b;
          z2 <= '0';
        end if;
      when d =>
        if x <= '1' then
          ns <= b;
          z2 <= '0';
        else
          ns <= a;
          z2 <= '1';
        end if;
      when others => ns <= a;
    end case;
  end process combFSM;

  with ps select
    z1 <=
    '1' when a,
    '0' when b,
    '1' when c,
    '0' when d;

end architecture behavorial;
