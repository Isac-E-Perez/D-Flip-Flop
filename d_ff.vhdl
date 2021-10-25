library ieee;
use ieee.std_logic_1164.all;

entity d_ff is
  port(
    D, CLK, reset : in std_logic;
    Q, Qb : out std_logic
      );
end d_ff;  
  
architecture behavioral of d_ff is

begin
  process (D, CLK, reset)
  begin
    if (reset = '1') then Q <= '0';
    -- this is for a data flip-flop. If I wanted a delay flip-flop, I would use a negative edge
    elsif (rising_edge(CLK)) then Q <= D;
      Q <= D;
      Qb <= not D;
    end if;
  end process;
end behavioral;
