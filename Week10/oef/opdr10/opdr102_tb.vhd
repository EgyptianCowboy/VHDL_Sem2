library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-------------------------------------------------------------------------------

entity opdr102_tb is

end entity opdr102_tb;

-------------------------------------------------------------------------------

architecture behavorial of opdr102_tb is

  -- component ports
  signal button   : std_logic                    := '0';
  signal rst      : std_logic                    := '0';
  signal leds     : std_logic_vector(3 downto 0) := "0000";
  signal clkotest : std_logic                    := '0';


begin  -- architecture behavorial

  -- component instantiation
  DUT : entity work.opdr102
    port map (
      button   => button,
      rst      => rst,
      leds     => leds,
      clkotest => clkotest);

  process
    variable i : unsigned(3 downto 0) := "0000";
  begin
    button <= '0';
    rst    <= '0';
    wait for 100 ns;
    while i < 5 loop
    i      := i + 1;
    button <= not button;
    wait for 100 ns;
    end loop;

    -- i   := "0000";
    -- rst <= '0';
    -- while i < 5 loop
    --   i      := i + 1;
    --   button <= not button;
    --   wait for 100 ns;
    -- end loop;
    wait;
  end process;

end architecture behavorial;

configuration opdr102_tb_behavorial_cfg of opdr102_tb is
  for behavorial
  end for;
end configuration opdr102_tb_behavorial_cfg;
