# from-nand
Implementation of sample Arithmetic Logic Unit (ALU) specification in Verilog HDL built upon NAND logic gates.


Sample specification is taken from [Nand2Tetris book](https://www.nand2tetris.org/_files/ugd/44046b_f0eaab042ba042dcb58f3e08b46bb4d7.pdf)

![ALU](/img/alu.png "ALU")

```
Module:    ALU
Inputs:    x[16], y[16]  Two 16-bit inputs
           zx            Zero the x input
           nx            Negate the x input
           zy            Zero the y input
           ny            Negate the y input
           f             function code: 1 for Add, 0 for And
           no            Negate the out output

Outputs:   out[16]       16-bit output
           zr            True iff out=0
           ng            True iff out<0

Function:  if zx         then x=0
           if nx         then x=!x
           if zy         then y=0
           if ny         then y=!y
           if f          then out=x+y
                         else out=x&y
           if no         then out=!out
           if out=0      then zr=1
                         else zr=0
           if out<0      then ng=1
                         else ng=0

Comment:   Overflow is neither detected nor handled 
```

### Implementation dependency
```
Not ← Nand
And ← Not, Nand
Or ← And, Not
Xor ← Or, And, Not
Mux ← Or, And, Not
Not(16bit) ← Not
And(16bit) ← And
Or(16bit) ← Or
Mux(16bit) ← Mux
Or(16way) ← Or
HalfAdder ← And, Xor
FullAdder ← HalfAdder, Or
Adder(16bit) ← FullAdder, HalfAdder
```
