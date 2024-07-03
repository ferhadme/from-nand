`include "assert.v"

module or_16_way_testbench;
  reg [15:0] a;
  wire out;

  or_16_way or16(a, out);

  initial begin
    a=16'b1010101000100100;
    #10;
    `assert(out, 1'b1);
    a=16'b1111111111111111;
    #10;
    `assert(out, 1'b1);
    a=16'b0000000000000000;
    #10;
    `assert(out, 1'b0);
  end
endmodule
