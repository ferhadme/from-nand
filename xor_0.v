`include "or_0.v"

// a xor b = ((not a) and b) or (a and (not b))
module xor_0(
  input wire a,
  input wire b,
  output wire out
);
  wire na;
  wire nb;
  not_0 n0(a, na);
  not_0 n1(b, nb);

  wire exp0;
  wire exp1;
  and_0 and0(na, b, exp0);
  and_0 and1(a, nb, exp1);

  or_0 or0(exp0, exp1, out);
endmodule
