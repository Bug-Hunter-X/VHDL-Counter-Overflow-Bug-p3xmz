```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity fixed_counter is
  generic (MAX_COUNT : integer := 15);  -- Make the max count configurable
  port (
    clk : in std_logic;
    rst : in std_logic;
    count_out : out integer
  );
end entity fixed_counter;

architecture behavioral of fixed_counter is
  signal internal_count : integer range 0 to MAX_COUNT := 0;
begin
  process (clk, rst)
  begin
    if rst = '1' then
      internal_count <= 0;
    elsif rising_edge(clk) then
      if internal_count = MAX_COUNT then
        internal_count <= 0; -- Reset on reaching MAX_COUNT
      else
        internal_count <= internal_count + 1;
      end if;
    end if;
  end process;
  count_out <= internal_count;
end architecture behavioral;
```