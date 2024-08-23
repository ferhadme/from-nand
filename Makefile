LOGICDIR = logic
ADDERDIR = adders
MEMDIR = memory
TESTBENCHDIR = testbench
SOURCES = $(filter-out cpu_sim.v, $(wildcard *.v) $(wildcard $(LOGICDIR)/*.v) $(wildcard $(ADDERDIR)/*.v) $(wildcard $(MEMDIR)/*.v))

not:
	iverilog $(SOURCES) $(TESTBENCHDIR)/not_0_testbench.v && ./a.out

and:
	iverilog $(SOURCES) $(TESTBENCHDIR)/and_0_testbench.v && ./a.out

or:
	iverilog $(SOURCES) $(TESTBENCHDIR)/or_0_testbench.v && ./a.out

xor:
	iverilog $(SOURCES) $(TESTBENCHDIR)/xor_0_testbench.v && ./a.out

mux:
	iverilog $(SOURCES) $(TESTBENCHDIR)/mux_0_testbench.v && ./a.out

not16:
	iverilog $(SOURCES) $(TESTBENCHDIR)/not_16_testbench.v && ./a.out

and16:
	iverilog $(SOURCES) $(TESTBENCHDIR)/and_16_testbench.v && ./a.out

or16:
	iverilog $(SOURCES) $(TESTBENCHDIR)/or_16_testbench.v && ./a.out

mux16:
	iverilog $(SOURCES) $(TESTBENCHDIR)/mux_16_testbench.v && ./a.out

or16way:
	iverilog $(SOURCES) $(TESTBENCHDIR)/or_16_way_testbench.v && ./a.out

half_adder:
	iverilog $(SOURCES) $(TESTBENCHDIR)/half_adder_testbench.v && ./a.out

full_adder:
	iverilog $(SOURCES) $(TESTBENCHDIR)/full_adder_testbench.v && ./a.out

add16:
	iverilog $(SOURCES) $(TESTBENCHDIR)/add_16_testbench.v && ./a.out

register:
	iverilog $(SOURCES) $(TESTBENCHDIR)/register_testbench.v && ./a.out

ram:
	iverilog $(SOURCES) $(TESTBENCHDIR)/ram_testbench.v && ./a.out

alu:
	iverilog $(SOURCES) $(TESTBENCHDIR)/alu_testbench.v && ./a.out

simulate:
	iverilog $(SOURCES) cpu_sim.v && ./a.out
