module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  );
    assign out = ((c&a)|(~c&a)|(c&~b));
endmodule
