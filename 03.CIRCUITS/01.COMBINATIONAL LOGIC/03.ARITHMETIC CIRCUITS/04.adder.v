module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    wire [3:0]cout;
    full_adder (x[0],y[0],0,sum[0],cout[0]);
    full_adder (x[1],y[1],cout[0],sum[1],cout[1]);
    full_adder (x[2],y[2],cout[1],sum[2],cout[2]);
    full_adder (x[3],y[3],cout[2],sum[3],sum[4]);
endmodule
module full_adder(input a,b,cin,output sum,carry);
    assign {carry,sum} = a+b+cin;
endmodule
