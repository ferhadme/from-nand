`include "testbench/assert.v"

module alu_testbench;
  reg [15:0] x, y;
  reg zx, nx, zy, ny;
  reg f, no;

  wire [15:0] out;
  wire zr, ng;

  alu alu0(x, y, zx, nx, zy, ny, f, no, out, zr, ng);

  initial begin
     // x=16'b0000000000000000;
     // y=16'b1111111111111111;
     // zx=1;
     // nx=0;
     // zy=1;
     // ny=0;
     // f=1;
     // no=0;
     // #10;
     // `assert(out, 16'b0000000000000000);
     // `assert(zr, 1);
     // `assert(ng, 0);

     // x=16'b0000000000000000;
     // y=16'b1111111111111111;
     // zx=1;
     // nx=1;
     // zy=1;
     // ny=1;
     // f=1;
     // no=1;
     // #10;
     // `assert(out, 16'b0000000000000001);
     // `assert(zr, 0);
     // `assert(ng, 0);

     x=16'b0000000000000000;
     y=16'b1111111111111111;
     zx=1;
     nx=1;
     zy=0;
     ny=0;
     f=1;
     no=0;
     #10;
     `assert(out, 16'b1111111111111110);
     // `assert(zr, 0);
     // `assert(ng, 1);

     // x=16'b0000000000000000;
     // y=16'b1111111111111111;
     // zx=0;
     // nx=0;
     // zy=1;
     // ny=1;
     // f=0;
     // no=0;
     // #10;
     // `assert(out, 16'b0000000000000000);
     // `assert(zr, 1);
     // `assert(ng, 0);

     // x=16'b0000000000000000;
     // y=16'b1111111111111111;
     // zx=1;
     // nx=1;
     // zy=0;
     // ny=0;
     // f=0;
     // no=0;
     // #10;
     // `assert(out, 16'b1111111111111111);
     // `assert(zr, 0);
     // `assert(ng, 1);

     // x=16'b0000000000010001;
     // y=16'b0000000000000011;
     // zx=1;
     // nx=1;
     // zy=0;
     // ny=0;
     // f=1;
     // no=1;
     // #10;
     // `assert(out, 16'b1111111111111101);
     // `assert(zr, 0);
     // `assert(ng, 1);

     // x=16'b0000000000010001;
     // y=16'b0000000000000011;
     // zx=0;
     // nx=0;
     // zy=0;
     // ny=0;
     // f=1;
     // no=0;
     // #10;
     // `assert(out, 16'b0000000000010100);
     // `assert(zr, 0);
     // `assert(ng, 0);

     // x=16'b0000000000010001;
     // y=16'b0000000000000011;
     // zx=0;
     // nx=1;
     // zy=0;
     // ny=1;
     // f=0;
     // no=1;
     // #10;
     // `assert(out, 16'b0000000000010011);
     // `assert(zr, 0);
     // `assert(ng, 0);
  end
endmodule
