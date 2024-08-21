module mux_16(
  input wire [15:0] a,
  input wire [15:0] b,
  input wire sel,
  output wire [15:0] out
);
  mux_0 m0(a[0], b[0], sel, out[0]);
  mux_0 m1(a[1], b[1], sel, out[1]);
  mux_0 m2(a[2], b[2], sel, out[2]);
  mux_0 m3(a[3], b[3], sel, out[3]);
  mux_0 m4(a[4], b[4], sel, out[4]);
  mux_0 m5(a[5], b[5], sel, out[5]);
  mux_0 m6(a[6], b[6], sel, out[6]);
  mux_0 m7(a[7], b[7], sel, out[7]);
  mux_0 m8(a[8], b[8], sel, out[8]);
  mux_0 m9(a[9], b[9], sel, out[9]);
  mux_0 m10(a[10], b[10], sel, out[10]);
  mux_0 m11(a[11], b[11], sel, out[11]);
  mux_0 m12(a[12], b[12], sel, out[12]);
  mux_0 m13(a[13], b[13], sel, out[13]);
  mux_0 m14(a[14], b[14], sel, out[14]);
  mux_0 m15(a[15], b[15], sel, out[15]);
endmodule
