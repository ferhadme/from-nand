`include "mux_0.v"
`include "not_16.v"

module alu(
  input wire x[15:0],
  input wire y[15:0],
  input wire zx,
  input wire nx,
  input wire zy,
  input wire ny,
  input wire f,
  input wire no,
  output wire out[15:0],
  output wire zr,
  output wire ng
);
  wire zx0[15:0];
  wire zy0[15:0];
  mux_0 mux_z0(16'b0, x, zx, zx0);
  mux_0 mux_z1(16'b0, y, zy, zy0);

  wire nx0[15:0];
  wire ny0[15:0];
  not_16 n16_0(zx0, nx0);
  not_16 n16_1(zy0, ny0);

  wire x0[15:0];
  wire y0[15:0];
  mux_0 mux_n0(zx0, nx0, nx, x0);
  mux_0 mux_n1(zy0, ny0, ny, y0);


endmodule
