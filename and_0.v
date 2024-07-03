// And(a, b) = Not(Nand(a, b))
module and_0(
  input wire a,
  input wire b,
  output wire out
);
  wire out0;
  nand(out0, a, b);
  not_0 n0(out0, out);
endmodule
