`include "mux_0.v"
`include "assert.v"

module mux_0_testbench;
  reg a, b, sel;
  wire out;

  mux_0 mux0(a, b, sel, out);

  initial begin
    a=0;
    b=0;
    sel=0;
    #10;
    `assert(out, 0);
    a=0;
    b=0;
    sel=1;
    #10;
    `assert(out, 0);
    a=0;
    b=1;
    sel=0;
    #10;
    `assert(out, 0);
    a=0;
    b=1;
    sel=1;
    #10;
    `assert(out, 1);
    a=1;
    b=0;
    sel=0;
    #10;
    `assert(out, 1);
    a=1;
    b=0;
    sel=1;
    #10;
    `assert(out, 0);
    a=1;
    b=1;
    sel=0;
    #10;
    `assert(out, 1);
    a=1;
    b=1;
    sel=1;
    #10;
    `assert(out, 1);
  end
endmodule
