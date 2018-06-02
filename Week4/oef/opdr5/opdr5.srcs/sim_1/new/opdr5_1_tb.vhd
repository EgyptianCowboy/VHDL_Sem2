library ieee;
use ieee.std_logic_1164.ALL;

entity oef5_1_tb is
end oef5_1_tb;

architecture behavorial of oef5_1_tb is

  component oef5_1
    port (
    a_in : in std_logic;
    b_in : in std_logic;
    c_in : in std_logic;
    a_out : out std_logic
    );
  end component;

  -- inputs
  signal a_in : std_logic := '0';
  signal b_in : std_logic := '0';
  signal c_in : std_logic := '0';
  -- output
  signal a_out : std_logic := '0';
  begin

    uut: oef5_1 port map (
      a_in => a_in,
      b_in => b_in,
      c_in => c_in,
      a_out => a_out
      );      
  process
  begin
  
  wait for 100 ns;
  a_in <= '0';
  b_in <= '0';
  c_in <= '0';
  wait for 100 ns;
  a_in <= '0';
  b_in <= '0';
  c_in <= '1';
  wait for 100 ns;
  a_in <= '0';
  b_in <= '1';
  c_in <= '0';
  wait for 100 ns;
  a_in <= '0';
  b_in <= '1';
  c_in <= '1';
  wait for 100 ns;
  a_in <= '1';
  b_in <= '0';
  c_in <= '0';
  wait for 100 ns;
  a_in <= '1';
  b_in <= '0';
  c_in <= '1';
  wait for 100 ns;
  a_in <= '1';
  b_in <= '1';
  c_in <= '0';
  wait for 100 ns;
  a_in <= '1';
  b_in <= '1';
  c_in <= '1';
  wait for 100 ns;
  
  end process;
end behavorial;