module alu(
  input wire [15:0] x,
  input wire [15:0] y,
  input wire zx,
  input wire nx,
  input wire zy,
  input wire ny,
  input wire f,
  input wire no,
  output wire [15:0] out,
  output wire zr,
  output wire ng
);
  wire [15:0] zx0;
  wire [15:0] zy0;
  mux_16 mux_z0(x, 16'b0, zx, zx0);
  mux_16 mux_z1(y, 16'b0, zy, zy0);

  wire [15:0] nx0;
  wire [15:0] ny0;
  not_16 n16_0(zx0, nx0);
  not_16 n16_1(zy0, ny0);

  wire [15:0] x0;
  wire [15:0] y0;
  mux_16 mux_n0(zx0, nx0, nx, x0);
  mux_16 mux_n1(zy0, ny0, ny, y0);

  wire [15:0] xy0;
  and_16 and16_0(x0, y0, xy0);
  wire [15:0] xy1;
  add_16 add16(x0, y0, xy1);

  wire [15:0] xy;
  mux_16 mux_f0(xy0, xy1, f, xy);

  wire [15:0] nxy;
  not_16 n16_2(xy, nxy);

  wire [15:0] out0;
  mux_16 mux_n2(xy, nxy, no, out0);

  wire zr0;
  or_16_way or16way(out0, zr0);
  not_0 n0(zr0, zr);

  and_0 a0(out0[15], 1'b1, ng);

  and_16 and16_1(out0, 16'b1111111111111111, out);
endmodule
