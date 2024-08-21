// 16 byte RAM, can store 8 16-bit numbers
module ram(
  input wire clk,
  input wire [15:0] d_in,
  input wire [3:0] address,
  input wire rw, // read-write -> 0 for read, 1 for write
  output reg [15:0] d_out
);
  reg [15:0] mem [0:7];

  always @(posedge clk) begin
    if (rw) begin
      mem[address] <= d_in;
    end else begin
      d_out <= mem[address];
    end
  end
endmodule
