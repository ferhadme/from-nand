`include "testbench/assert.v"

module mux_16_testbench;
  reg [15:0] a, b;
  reg sel;
  wire [15:0] out;

  mux_16 m16(a, b, sel, out);

  initial begin
    a=16'b0000000000000000;
    b=16'b0001001000110100;
    sel=0;
    #10;
    `assert(out, 16'b0000000000000000);

    a=16'b1010101010101010;
    b=16'b0101010101010101;
    sel=0;
    #10;
    `assert(out, 16'b1010101010101010);

    a=16'b1010101010101010;
    b=16'b0101010101010101;
    sel=1;
    #10;
    `assert(out, 16'b0101010101010101);
  end
endmodule
