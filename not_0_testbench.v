`include "assert.v"

module not_0_testbench;
  reg in;
  wire out;

  not_0 n0(in, out);
  initial begin
    in=0;
    #10;
    `assert(out, 1);
    in=1;
    #10;
    `assert(out, 0);
  end
endmodule
