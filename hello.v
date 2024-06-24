`include "assert.v"

module and_gate(
  input wire a,
  input wire b,
  output wire out
);
assign out = a & b;
endmodule

module and_gate_tb;
reg a, b;
wire out;
and_gate ag(a, b, out);

initial begin
  a = 0; b = 0; #5
  $display("a=%b, b=%b, out=%b", a, b, out);
  `assert(out, 1);

end
endmodule

