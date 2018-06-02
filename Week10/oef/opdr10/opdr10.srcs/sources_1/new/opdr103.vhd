library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity opdr103 is
  port (
    rotary : in  std_logic_vector(1 downto 0);   -- The input rotary encoder
    rst    : in  std_logic;             -- Reset button
    clk    : in  std_logic;
    leds   : out std_logic_vector(3 downto 0));  -- Leds to visualize the counter
end opdr103;

architecture Behavioral of opdr103 is
  signal counter : unsigned(3 downto 0) := "0000";  -- Counts up or down when rotating the rotary encoder
-- signal clk     : std_logic            := '0';  -- Clock for synchronous processes
--component vhdlnoclk is
--  port (
--   clkout : out std_logic);          -- output clock from the component
--end component vhdlnoclk;
begin
  --U0 : vhdlnoclk
  --  port map (
  --    clkout => clk);

  -- purpose: Process to count up or down when rotating the rotary encoder
  -- type   : sequential
  -- inputs : clk, rst, rotary
  -- outputs: counter
  counterPr : process (clk, rst, rotary) is
  begin  -- process counter
    if rst = '0' then                   -- asynchronous reset (active low)
      counter <= "0000";
    elsif clk'event and clk = '1' then  -- rising clock edge
      case rotary is
        when "10" =>
          if counter = "1111" then
            counter <= "0000";
          else
            counter <= counter + 1;
          end if;
        when "01" =>
          if counter = "0000" then
            counter <= "1111";
          else
            counter <= counter - 1;
          end if;
        when others =>
          counter <= "0000";
      end case;
    end if;
  end process counterPr;

  leds <= std_logic_vector(counter);

end Behavioral;
