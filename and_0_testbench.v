`include "assert.v"

module and_0_testbench;
  reg a, b;
  wire out;

  and_0 a0(a, b, out);
  initial begin
    a=0;
    b=0;
    #10;
    `assert(out, 0);
    a=1;
    b=0;
    #10;
    `assert(out, 0);
    a=0;
    b=1;
    #10;
    `assert(out, 0);
    a=1;
    b=1;
    #10;
    `assert(out, 1);
  end
endmodule
