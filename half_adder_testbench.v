`include "assert.v"

module half_adder_testbench;
  reg a, b;
  wire sum, carry;

  half_adder ha(a, b, sum, carry);

  initial begin
    a=0;
    b=0;
    #10;
    `assert(sum, 0);
    `assert(carry, 0);
    a=0;
    b=1;
    #10;
    `assert(sum, 1);
    `assert(carry, 0);
    a=1;
    b=0;
    #10;
    `assert(sum, 1);
    `assert(carry, 0);
    a=1;
    b=1;
    #10;
    `assert(sum, 0);
    `assert(carry, 1);
  end
endmodule
