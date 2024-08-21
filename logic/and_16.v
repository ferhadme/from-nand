module and_16(
  input wire [15:0] a,
  input wire [15:0] b,
  output wire [15:0] out
);
  and_0 a0(a[0], b[0], out[0]);
  and_0 a1(a[1], b[1], out[1]);
  and_0 a2(a[2], b[2], out[2]);
  and_0 a3(a[3], b[3], out[3]);
  and_0 a4(a[4], b[4], out[4]);
  and_0 a5(a[5], b[5], out[5]);
  and_0 a6(a[6], b[6], out[6]);
  and_0 a7(a[7], b[7], out[7]);
  and_0 a8(a[8], b[8], out[8]);
  and_0 a9(a[9], b[9], out[9]);
  and_0 a10(a[10], b[10], out[10]);
  and_0 a11(a[11], b[11], out[11]);
  and_0 a12(a[12], b[12], out[12]);
  and_0 a13(a[13], b[13], out[13]);
  and_0 a14(a[14], b[14], out[14]);
  and_0 a15(a[15], b[15], out[15]);
endmodule
