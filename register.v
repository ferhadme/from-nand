module register(
  input wire clk,
  input wire [15:0] d_in,
  output reg [15:0] d_out
);
  always @(posedge clk) begin
    d_out <= d_in;
  end
endmodule
