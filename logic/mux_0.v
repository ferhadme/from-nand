// Mux(a, b, sel) = if sel=0 then a
//                           else b
// (sel=0 -> a) and (sel=1 -> b)
// ((sel=1) or a) and ((sel=0) or b)
// ((sel and 1) or a) and ((not sel) or b)
module mux_0(
  input wire a,
  input wire b,
  input wire sel,
  output wire out
);
  wire s0;
  wire s1;
  not_0 n0(sel, s0);
  and_0 and0(sel, 1'b1, s1);

  wire exp0;
  wire exp1;
  or_0 or0(s1, a, exp0);
  or_0 or1(s0, b, exp1);

  and_0 and1(exp0, exp1, out);
endmodule
