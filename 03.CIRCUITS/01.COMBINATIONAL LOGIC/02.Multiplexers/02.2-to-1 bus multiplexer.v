module top_module( 
    input [99:0] a, b,
    input sel,
    output [99:0] out );
    always@(*) begin
        if(sel==1'b1) out=b;
        else out=a;
    end

endmodule
