`include "assert.v"

module ram_testbench;
  reg clk;
  reg [15:0] d_in;
  reg [3:0] address;
  reg rw;
  wire [15:0] d_out;

  ram r0(clk, d_in, address, rw, d_out);

  always #1 clk = ~clk;

  initial begin
    clk = 0;
    d_in=16'b1001001110111101;
    address=3'b000;
    rw=1;

    #2;

    address=3'b000;
    rw=0;

    #2;

    `assert(d_out, 16'b1001001110111101);

    d_in=16'b1111111110111101;
    address=3'b011;
    rw=1;

    #2;

    address=3'b000;
    rw=0;

    #2;

    `assert(d_out, 16'b1001001110111101);

    #2;

    address=3'b011;
    rw=0;

    #2;

    `assert(d_out, 16'b1111111110111101);

    $finish;
  end
endmodule
