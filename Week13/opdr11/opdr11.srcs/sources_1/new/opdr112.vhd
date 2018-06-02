library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity opdr112 is
  port (
    Tboven, tOnder, tWBoi, maxTKetel, schBoven, schOnder, clk, rst : in  std_logic := '0';
    pOnder, pBoven, pBoi, brKetel                                  : out std_logic := '0');
end opdr112;

architecture Behavioral of opdr112 is
  component vhdlnoclk is
    port (
      clkout : out std_logic);
  end component vhdlnoclk;

  signal clkS   : std_logic            := '0';
  signal inBuf  : unsigned(5 downto 0) := "000000";
  signal outBuf : unsigned(3 downto 0) := "0000";
  type state is (s0, s1, s2, s3, s4, s5, s6, s7);
  signal ns, ps : state := s1;
  signal prioBoi : std_logic := '0';
  signal pumpA : std_logic := '0';

begin
  U0 : vhdlnoclk
    port map(clkout => clkS);

  pumpA <= pOnder or pBoven or pBoi;
  prioBoi <= pBoi;
  -- purpose: Sequential part of the FSM
  -- type   : sequential
  -- inputs : clk, rst
  -- outputs: ns
  seqFSM : process (clk, rst) is
  begin  -- process seqFSM
    if rst = '0' then                   -- asynchronous reset (active low)
      ps <= s0;
    elsif clk'event and clk = '1' then  -- rising clock edge
      ps <= ns;
    end if;
  end process seqFSM;

  -- purpose: Combinational part of the FSM
  -- type   : combinational
  -- inputs : tBoven, tOnder, maxTKetel, schBoven, schOnder, pumpA, prioBoi
  -- outputs: ns
  combFSM: process (tBoven, tOnder, maxTKetel, schBoven, schOnder, pumpA, prioBoi) is
  begin  -- process combFSM
    case ps is
      when  s1 => ;
      when others => ns <= s0;
    end case;
  end process combFSM;
end Behavioral;
