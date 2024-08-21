module add_16(
  input wire [15:0] a,
  input wire [15:0] b,
  output wire [15:0] out
);
  wire c0;
  half_adder ha0(a[0], b[0], out[0], c0);

  wire c1;
  full_adder fa0(a[1], b[1], c0, out[1], c1);

  wire c2;
  full_adder fa1(a[2], b[2], c1, out[2], c2);

  wire c3;
  full_adder fa2(a[3], b[3], c2, out[3], c3);

  wire c4;
  full_adder fa3(a[4], b[4], c3, out[4], c4);

  wire c5;
  full_adder fa4(a[5], b[5], c4, out[5], c5);

  wire c6;
  full_adder fa5(a[6], b[6], c5, out[6], c6);

  wire c7;
  full_adder fa6(a[7], b[7], c6, out[7], c7);

  wire c8;
  full_adder fa7(a[8], b[8], c7, out[8], c8);

  wire c9;
  full_adder fa8(a[9], b[9], c8, out[9], c9);

  wire c10;
  full_adder fa9(a[10], b[10], c9, out[10], c10);

  wire c11;
  full_adder fa10(a[11], b[11], c10, out[11], c11);

  wire c12;
  full_adder fa11(a[12], b[12], c11, out[12], c12);

  wire c13;
  full_adder fa12(a[13], b[13], c12, out[13], c13);

  wire c14;
  full_adder fa13(a[14], b[14], c13, out[14], c14);

  wire c15;
  full_adder fa14(a[15], b[15], c14, out[15], c15);
endmodule
