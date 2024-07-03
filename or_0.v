// Or(a, b) = Not(And(Not(a), Not(b)))
module or_0(
  input wire a,
  input wire b,
  output wire out
);
  wire a0;
  wire b0;
  not_0 n0(a, a0);
  not_0 n1(b, b0);

  wire out0;
  and_0 and0(a0, b0, out0);

  not_0 nout(out0, out);
endmodule
