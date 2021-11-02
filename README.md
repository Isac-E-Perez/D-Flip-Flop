# D (Data) Flip Flop Project

### About:

For this project, I created a D flip-flop circuit and used VHDL code to implement the following circuit whos outputs is *Q* and *Qb*. Flip-flop are one of the more important building blocks of modern digitial electronics. They act similar to memory cells.

**D flip-flop with SR latch circuit diagram**

![Screen Shot 2021-11-02 at 12 44 32 PM](https://user-images.githubusercontent.com/89553126/139918046-a9fb0a86-0287-4b91-a3ea-6fc7efa24c54.png)

### Note:

Flip-flops are not to be confused with latches. In fact, flip-flops are built using latches.

I emulated this VHDL code using GHDL in terminal, no errors occured, but when I imported .vcd file into GTKwave the CLK wasn't shown up properly. To fix this, instead of declaring CLK values manually, I created a proper function for it. For some reason, in order to show internal signals in GTKwave, you need to declare them as well in the test bench, therefore I declared the values.

### Results:
 
![0](https://user-images.githubusercontent.com/89553126/138942225-a774aca9-2443-4536-9c55-babe050a49fa.png)
 
