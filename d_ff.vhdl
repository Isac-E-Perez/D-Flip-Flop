library ieee;
use iee.std_logic_1164.all;

entity d is
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
    -- this is for the data flip-flop, for delay flip 
    elsif (rising_edge(CLK)) then
