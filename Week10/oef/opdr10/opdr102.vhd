library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity opdr102 is
  port (
    button   : in  std_logic;
    rst      : in  std_logic;
    leds     : out std_logic_vector(3 downto 0);
    clkotest : out std_logic);
end entity opdr102;


architecture behavorial of opdr102 is
  signal ledBuf : std_logic_vector(3 downto 0) := "0000";
  signal clk : std_logic;

  component vhdlnoclk
    port ( clkout : out std_logic );
    end component;
begin  -- architecture behavorial
  U0 : vhdlnoclk
    port map( clkout => clk);

  -- purpose: count from 0 to 12
  -- type   : sequential
  -- inputs : clk, rst, button
  -- outputs: ledBuf
  bitcounter : process (clk, rst, button) is
  begin  -- process 4 bit counter
    if rst = '1' then                   -- asynchronous reset (active low)
      ledBuf <= "0000";
    elsif (clk'event and clk = '1') and (button = '1') then  -- rising clock edge
      if ledBuf = "1100" then
        ledBuf <= "0000";
      end if;
      ledBuf <= std_logic_vector(unsigned(ledBuf) + 1);
    end if;
  end process bitcounter;

  leds     <= ledBuf;
  clkotest <= clk;
end architecture behavorial;
