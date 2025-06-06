module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire co,cout;
    add16 (a[15:0],b[15:0],0,sum[15:0],co);
    add16 (a[31:16],b[31:16],co,sum[31:16],cout);
endmodule
