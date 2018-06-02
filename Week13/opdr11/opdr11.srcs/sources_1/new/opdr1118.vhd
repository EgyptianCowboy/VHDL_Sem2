library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity opdr1118 is
  port (
    clk : in  std_logic;                -- input clock
    rst : in  std_logic;                -- asynchronous reset
    X   : in  std_logic;                -- input signal
    Z1  : out std_logic;                -- output 1
    Z2  : out std_logic);               -- output 2
end opdr1118;

architecture Behavioral of opdr1118 is
  type state is (A, B, C, D, E, F, G, H);
  signal ps, ns : state;
begin
  -- purpose: go to next state on clock pulse
  -- type   : sequential
  -- inputs : clk, rst, NS
  -- outputs:
  sync_nxt : process (clk, rst) is
  begin  -- process sync_nxt
    if rst = '0' then                   -- asynchronous reset (active low)
      ps <= A;
    elsif clk'event and clk = '1' then  -- rising clock edge
      ps <= ns;
    end if;
  end process sync_nxt;

  -- purpose: Describe the state machine
  -- type   : combinational
  -- inputs : X, PS
  -- outputs: Z1, Z2
  comb_pr : process (X, ps) is
  begin  -- process comb_pr
    case ps is
      when A =>
        Z1 <= '0';
        Z2 <= '0';
        if X = '1' then
          ns <= B;
        else
          ns <= A;
        end if;
      when B =>
        Z1 <= '0';
        Z2 <= '0';
        if X = '1' then
          ns <= C;
        else
          ns <= B;
        end if;
      when C =>
        Z1 <= '0';
        Z2 <= '0';
        if X = '1' then
          ns <= D;
        else
          ns <= C;
        end if;
      when D =>
        Z1 <= '1';
        Z2 <= '0';
        if X = '1' then
          ns <= E;
        else
          ns <= D;
        end if;
      when E =>
        Z1 <= '0';
        Z2 <= '1';
        if X = '1' then
          ns <= F;
        else
          ns <= A;
        end if;
      when F =>
        Z1 <= '1';
        Z2 <= '1';
        if X = '1' then
          ns <= G;
        else
          ns <= F;
        end if;
      when G =>
        Z1 <= '1';
        Z2 <= '1';
        if X = '1' then
          ns <= H;
        else
          ns <= G;
        end if;
      when H =>
        Z1 <= '1';
        Z2 <= '1';
        if X = '1' then
          ns <= A;
        else
          ns <= H;
        end if;
      when others => null;
    end case;
  end process comb_pr;
end Behavioral;
