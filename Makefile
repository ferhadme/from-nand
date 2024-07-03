not:
	iverilog not_0.v not_0_testbench.v && ./a.out

and:
	iverilog not_0.v and_0.v and_0_testbench.v && ./a.out

or:
	iverilog not_0.v and_0.v or_0.v or_0_testbench.v && ./a.out

xor:
	iverilog not_0.v and_0.v or_0.v xor_0.v xor_0_testbench.v && ./a.out

mux:
	iverilog not_0.v and_0.v or_0.v mux_0.v mux_0_testbench.v && ./a.out

not16:
	iverilog not_0.v not_16.v not_16_testbench.v && ./a.out

and16:
	iverilog not_0.v and_0.v and_16.v and_16_testbench.v && ./a.out

or16:
	iverilog not_0.v and_0.v or_0.v or_16.v or_16_testbench.v && ./a.out

mux16:
	iverilog not_0.v and_0.v or_0.v mux_0.v mux_16.v mux_16_testbench.v && ./a.out

or16way:
	iverilog not_0.v and_0.v or_0.v or_16_way.v or_16_way_testbench.v && ./a.out

half_adder:
	iverilog not_0.v and_0.v or_0.v xor_0.v half_adder.v half_adder_testbench.v && ./a.out

full_adder:
	iverilog not_0.v and_0.v or_0.v xor_0.v half_adder.v full_adder.v full_adder_testbench.v && ./a.out

add16:
	iverilog not_0.v and_0.v or_0.v xor_0.v half_adder.v full_adder.v add_16.v add_16_testbench.v && ./a.out


alu:
	iverilog not_0.v and_0.v or_0.v xor_0.v mux_0.v mux_16.v not_16.v and_16.v or_16.v or_16_way.v half_adder.v full_adder.v add_16.v alu.v alu_testbench.v && ./a.out
