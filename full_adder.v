// a + b + cin = sum (carry)
// sum0 (carry0) = a half_adder b
// sum (carry1) = sum0 + cin
// cout = carry0 or carry1
module full_adder(
  input wire a,
  input wire b,
  input wire cin,
  output wire sum,
  output wire cout
);
  wire s0;
  wire c0;
  wire c1;

  half_adder ha0(a, b, s0, c0);
  half_adder ha1(s0, cin, sum, c1);

  or_0 or0(c0, c1, cout);
endmodule
