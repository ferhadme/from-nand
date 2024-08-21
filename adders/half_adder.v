// a + b = sum (carry)
// sum   = a xor b
// carry = a and b
module half_adder(
  input wire a,
  input wire b,
  output wire sum,
  output wire carry
);
  xor_0 xor0(a, b, sum);
  and_0 and0(a, b, carry);
endmodule
