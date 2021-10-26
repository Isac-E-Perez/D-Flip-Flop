library ieee;
use ieee.std_logic_1164.all;

entity d_ff_tb is
end d_ff_tb;
  
architecture behavioral of d_ff_tb is 
  
  -- Component Declaration for the Unit Under Test (UUT)
  component d_ff is
    port(
    D, CLK, reset : in std_logic;
    Q, Qb : out std_logic
      );
  end component;

-- Input
signal D : std_logic;
signal CLK : std_logic;
signal reset : std_logic;
  
-- Output
signal Q : std_logic;
signal Qb : std_logic;

begin 
  uut: d_ff port map (D => D, CLK => CLK, reset => reset, Q => Q, Qb => Qb);
  
  -- Clock Process
  clock : process
  begin
    CLK <= '0'; wait for 10 ns;
    CLK <= '1'; wait for 10 ns;
  end process;
  
  -- Stimulus Process 
  stim_proc : process
  begin
    reset <= '0';
    D <= '0'; wait for 40 ns;
    D <= '1'; wait for 40 ns;
  end process;
end behavioral;
