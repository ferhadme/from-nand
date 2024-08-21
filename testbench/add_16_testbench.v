`include "testbench/assert.v"

module add_16_testbench;
  reg [15:0] a, b;
  wire [15:0] out;

  add_16 add16(a, b, out);

  initial begin
    a=16'b0000000000000000;
    b=16'b1111111111111111;
    #10;
    `assert(out, 16'b1111111111111111);

    a=16'b0011110011000011;
    b=16'b0000111111110000;
    #10;
    `assert(out, 16'b0100110010110011);

    a=16'b0001001000110100;
    b=16'b1001100001110110;
    #10;
    `assert(out, 16'b1010101010101010);
  end
endmodule
