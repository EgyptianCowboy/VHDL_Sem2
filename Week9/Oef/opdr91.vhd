library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use ieee.numeric_bit.all;

entity opdr91 is
  port (
    switches : in  std_logic_vector(3 downto 0);
    buttons  : in  std_logic_vector(3 downto 0);
    rotary   : in  std_logic_vector(1 downto 0);
    leds     : out std_logic_vector(3 downto 0));
end entity opdr91;

architecture behavorial of opdr91 is
  signal swBuf  : std_logic_vector(3 downto 0) := "0000";
  signal buBuf  : std_logic_vector(3 downto 0) := "0000";
  signal rotBuf : std_logic_vector(3 downto 0) := "0000";
begin  -- architecture behavorial

  -- purpose: test the switches
  -- type   : combinational
  -- inputs : switches
  -- outputs: leds
  switchProc : process (switches) is
  begin  -- process switchProc
    swBuf <= std_logic_vector((unsigned(switches) rol 1)) or switches;
  end process switchProc;

  -- purpose: test the buttons
  -- type   : combinational
  -- inputs : buttons
  -- outputs: leds
  buttonProc : process (buttons) is
  begin  -- process buttonProc
    buBuf <= std_logic_vector((unsigned(buttons) rol 1)) or buttons;
  end process buttonProc;

  -- purpose: test the rotary encoder
  -- type   : combinational
  -- inputs : rotary
  -- outputs: leds
  rotProc : process (rotary) is
  begin  -- process rotProc
    if rotary = "10" then
      rotBuf <= rotary & rotary;
    elsif rotary = "01" then
      rotBuf <= rotary & rotary;
    else
      rotBuf <= "0000";
    end if;
  end process rotProc;

  leds <= swBuf or buBuf or rotBuf;
end architecture behavorial;
