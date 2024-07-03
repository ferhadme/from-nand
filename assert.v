`define assert(signal, value) \
    if (signal !== value) begin \
      $display("Assertion failed. expected value. %b", value); \
      $display("Assertion failed. actual output. %b", signal); \
      $finish; \
    end \

