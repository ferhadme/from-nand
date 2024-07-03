`include "assert.v"

module full_adder_testbench;
  reg a, b, cin;
  wire sum, cout;

  full_adder fa(a, b, cin, sum, cout);

  initial begin
    a=0;
    b=0;
    cin=0;
    #10;
    `assert(sum, 0);
    `assert(cout, 0);
     a=0;
     b=0;
     cin=1;
     #10;
     `assert(sum, 1);
     `assert(cout, 0);
     a=0;
     b=1;
     cin=0;
     #10;
     `assert(sum, 1);
     `assert(cout, 0);
     a=0;
     b=1;
     cin=1;
     #10;
     `assert(sum, 0);
     `assert(cout, 1);
     a=1;
     b=0;
     cin=0;
     #10;
     `assert(sum, 1);
     `assert(cout, 0);
     a=1;
     b=0;
     cin=1;
     #10;
     `assert(sum, 0);
     `assert(cout, 1);
     a=1;
     b=1;
     cin=0;
     #10;
     `assert(sum, 0);
     `assert(cout, 1);
     a=1;
     b=1;
     cin=1;
     #10;
     `assert(sum, 1);
     `assert(cout, 1);
  end
endmodule
