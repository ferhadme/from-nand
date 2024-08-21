`include "assert.v"

module register_testbench;
  reg clk;
  reg [15:0] d_in;
  wire [15:0] d_out;

  register r0(clk, d_in, d_out);

  initial begin
    clk=1;
    d_in=16'b1001001110011010;
    #1;
    `assert(d_out, 16'b1001001110011010);

    #1;
    clk=0;
    d_in=16'b1111111111111111;
    #1;
    `assert(d_out, 16'b1001001110011010);

    #1;
    clk=1;
    d_in=16'b1100111011011000;
    #1;
    `assert(d_out, 16'b1100111011011000);
  end
endmodule
