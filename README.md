# D (Data) Flip Flop Project

### About:

For this project, I created a D flip-flop circuit and used VHDL code to implement the following circuit who's outputs is *Q* and *Qb*. The D flip-flop captures the D input value at the specified edge (i.e., rising or falling) of the clock. After the rising/falling clock edge, the captured value is available at *Q* output. Flip-flop are one of the more important building blocks of modern digitial electronics and are widely used as the basic building block of random access memory (RAM) and registers.  

**D flip-flop with SR latch circuit diagram**

![Screen Shot 2021-11-02 at 12 44 32 PM](https://user-images.githubusercontent.com/89553126/139918046-a9fb0a86-0287-4b91-a3ea-6fc7efa24c54.png)

**Truth Table for D flip-flop**

![Screen Shot 2021-11-02 at 1 44 39 PM](https://user-images.githubusercontent.com/89553126/139925946-02b0ba9d-2358-4dff-90a8-c243caafc963.png)

### Note:

Flip-flops are not to be confused with latches. In fact, flip-flops are built using latches.

I emulated this VHDL code using GHDL in terminal, no errors occured, but when I imported .vcd file into GTKwave the CLK wasn't shown up properly. To fix this, instead of declaring CLK values manually, I created a proper function for it. For some reason, in order to show internal signals in GTKwave, you need to declare them as well in the test bench, therefore I declared the values.

### Results:

![Screen Shot 2021-11-02 at 1 47 11 PM](https://user-images.githubusercontent.com/89553126/139926531-42c2e2eb-87d2-4f59-b8e0-29ffc9aacedd.png)

![Screen Shot 2021-11-02 at 1 47 24 PM](https://user-images.githubusercontent.com/89553126/139926541-fbea59a8-635a-4b6b-b0b2-7c65fbfb71da.png)

 
![0](https://user-images.githubusercontent.com/89553126/138942225-a774aca9-2443-4536-9c55-babe050a49fa.png)
 
 
