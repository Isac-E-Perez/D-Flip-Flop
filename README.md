# D (Data/Delay) Flip Flop Project

### About:

For this project, I created a D flip-flop circuit and used VHDL code to implement the following circuit who's outputs is *Q* and *Qb*. The D flip-flop captures the D input value at the specified edge (i.e., rising or falling) of the clock. After the rising/falling clock edge, the captured value is available at *Q* output. Flip-flop are one of the more important building blocks of modern digitial electronics and are widely used as the basic building block of random access memory (RAM) and registers.  

**D flip-flop with SR latch circuit diagram**

![Screen Shot 2021-11-02 at 1 49 53 PM](https://user-images.githubusercontent.com/89553126/139926872-84a06b80-47b6-4e26-81df-319304f0405a.png)
 
**Truth Table for D flip-flop**

![Screen Shot 2021-11-02 at 1 44 39 PM](https://user-images.githubusercontent.com/89553126/139925946-02b0ba9d-2358-4dff-90a8-c243caafc963.png)

### Note:

Flip-flops are not to be confused with latches. In fact, flip-flops are built using latches.

I emulated this VHDL code using GHDL in terminal, no errors occured, but when I imported .vcd file into GTKwave the CLK wasn't showing up properly. To fix this, instead of declaring CLK values manually, I created a proper function for it. For some reason, in order to show internal signals in GTKwave, you need to declare them as well in the test bench, therefore I declared the values.

### Results:

In VHDL, *D* is an input (**IN**) with *Q* and *Qb* as outputs (**OUTPUT**) of my project.

**I/O's are specified here (the circuit is specified using a Hardware Desciption Language)**

```VHDL
library ieee;
use ieee.std_logic_1164.all;

entity d_ff is
  port(
    D, CLK, reset : in std_logic;
    Q, Qb : out std_logic
      );
end d_ff; 
```
 
**Internal description of the D flip-flop is specified here**

```VHDL
architecture behavioral of d_ff is

begin
  process (D, CLK, reset)
  begin
    if (reset = '1') 
      then Q <= '0'; 
    -- this is for a data flip-flop. If I wanted a delay flip-flop, I would use a negative edge
    elsif (rising_edge(CLK)) 
      then Q <= D; 
      Qb <= not D;
    end if;
  end process;
end behavioral;
```

The *process* statement has three signals in its sensitivity list. That is the case because, as demonstrated from the truth table, a change in the values of any of these signals will cause a chnage in the output. It is a part of the circuit's behavior. 

If the reset signal is high, the flip-flop just resets. The output will be zero.

When the reset is inactive: when the clock has a rising edge,then the output *Q* will be equal to the input. *Qb* will be complementary to the input.

The selected signal assignment statement is evaluated each time there is a change in the chooser expression listed in the first line of the selected signal assignment statement. Re-evaluation also occurs every time there is a change in a conditional signal on the right-hand side of the signal assignment operator.

Afterwards, I worked on the behavioral (functional) simulation. Here, I will only verify the operations of the circuit. Stimuli is provided to the circuit, so I can verify the outputs behave as I expect. The VHDL file called 'd_ff_tb' is where I specified the stimuli to the circuit.

```VHDL
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
signal D : std_logic := '0';
signal CLK : std_logic := '0';
signal reset : std_logic := '0';
  
-- Output
signal Q : std_logic;
signal Qb : std_logic;

-- Clock Period Definitions
constant CLK_period : time := 10 ns;

begin 
  uut: d_ff port map (D => D, CLK => CLK, reset => reset, Q => Q, Qb => Qb);
  
  -- Clock Process Definitions
  clock : process
  begin
    CLK <= '0'; wait for CLK_period;
    CLK <= '1'; wait for CLK_period;
  end process;
  
  -- Stimulus Process 
  stim_proc : process
  begin
    reset <= '0';
    D <= '0'; wait for CLK_period * 4;
    D <= '1'; wait for CLK_period * 4;
  end process;
end behavioral;
```


The entity block has no input or output singals going into or out of the 'testbench', which makes sense since 'testbench' is a complete unit. The 'testbench' will go ahead and send the signals to the circuit in which it will read back those signals. Afterwards, I could check out whether these signals are correct. Therefore, I don't need anything going into or out of the testbench. Additionally, the process statement is a concurrent statement which is constituted of sequential statements exclusively.

Finally, I verified the units outputted by using a waveform viewer.

![0](https://user-images.githubusercontent.com/89553126/138942225-a774aca9-2443-4536-9c55-babe050a49fa.png)
 
Looking back to the circuit diagram, the waveform and the truth table, the code produce what should be expected, therefore, I know my D flip-flop code is operating correctly.
