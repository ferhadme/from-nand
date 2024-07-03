`include "assert.v"

module not_16_testbench;
  reg [15:0] in;
  wire [15:0] out;

  not_16 n16(in, out);

  initial begin
    in=16'b1010111011101011;
    #10;
    `assert(out, 16'b0101000100010100);
  end
endmodule
