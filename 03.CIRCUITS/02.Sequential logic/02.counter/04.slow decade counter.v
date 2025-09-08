module top_module (
    input clk,
    input slowena,
    input reset,
    output [3:0] q);
    always@(posedge clk) begin
        if(reset | slowena & q==9) q=0;
        else if(slowena) q++;
        else q=q;
    end
endmodule
