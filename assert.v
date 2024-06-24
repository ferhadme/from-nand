`define assert(signal, value) \
    if (signal !== value) begin \
      $display("Assertion failed: expected value: %b, output: %b", value, signal); \
      $finish; \
    end \

