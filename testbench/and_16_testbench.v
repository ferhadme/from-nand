`include "testbench/assert.v"

module and_16_testbench;
  reg [15:0] a, b;
  wire [15:0] out;

  and_16 a16(a, b, out);

  initial begin
    a=16'b0000000000000000;
    b=16'b1111111111111111;
    #10;
    `assert(out, 16'b0000000000000000);

    a=16'b1010101010101010;
    b=16'b0101010101010101;
    #10;
    `assert(out, 16'b0000000000000000);

    a=16'b0001001000110100;
    b=16'b1001100001110110;
    #10;
    `assert(out, 16'b0001000000110100);

    a=16'b1111111111111110;
    b=16'b1111111111111111;
    #10;
    `assert(out, 16'b1111111111111110);
  end
endmodule
