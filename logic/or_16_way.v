module or_16_way(
  input wire [15:0] a,
  output wire out
);
  wire out0;
  or_0 o0(a[0], a[1], out0);
  wire out1;
  or_0 o1(a[2], out0, out1);
  wire out2;
  or_0 o2(a[3], out1, out2);
  wire out3;
  or_0 o3(a[4], out2, out3);
  wire out4;
  or_0 o4(a[5], out3, out4);
  wire out5;
  or_0 o5(a[6], out4, out5);
  wire out6;
  or_0 o6(a[7], out5, out6);
  wire out7;
  or_0 o7(a[8], out6, out7);
  wire out8;
  or_0 o8(a[9], out7, out8);
  wire out9;
  or_0 o9(a[10], out8, out9);
  wire out10;
  or_0 o10(a[11], out9, out10);
  wire out11;
  or_0 o11(a[12], out10, out11);
  wire out12;
  or_0 o12(a[13], out11, out12);
  wire out13;
  or_0 o13(a[14], out12, out13);
  or_0 o14(a[15], out13, out);
endmodule
