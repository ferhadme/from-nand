module not_0(
  input wire in,
  output wire out
);
  nand(out, in, in);
endmodule
