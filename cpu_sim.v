`include "testbench/assert.v"

module cpu_sim;
  reg [15:0] x, y, d_in;
  reg [3:0] address;
  reg rw, clk, f;
  wire [15:0] out, d_out;
  wire zr, ng;

  alu alu0(x, y, 1'b0, 1'b0, 1'b0, 1'b0, f, 1'b0, out, zr, ng);
  ram r0(clk, d_in, address, rw, d_out);

  always #1 clk = ~clk;

  initial begin
    x=16'b1101110000100001;
    y=16'b1010110000000011;
    f=0;

    #2;
    clk=1;
    d_in=out;
    address=3'b000;
    rw=1;

    #2;
    x=16'b1001010110011001;
    y=16'b1000101111111101;
    f=0;

    #2;
    clk=1;
    d_in=out;
    address=3'b001;
    rw=1;

    #2;
    clk=1;
    address=3'b000;
    rw=0;

    #2;
    x=d_out;

    #2;
    clk=1;
    address=3'b001;
    rw=0;

    #2;
    y=d_out;
    f=1;

    #2;
    `assert(out, 16'b0000110110011010);

    $finish;
  end
endmodule
