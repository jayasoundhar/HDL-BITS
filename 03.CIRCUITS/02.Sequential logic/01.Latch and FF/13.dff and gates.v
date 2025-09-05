module top_module (
    input clk,
    input x,
    output z
); 
    wire w1,w2,w3;
    always@(posedge clk)begin
        w1 <= x^w1;
        w2 <= x&~w2;
        w3 <= x|~w3;
       
    end
     assign z = ~(w1|w2|w3);
endmodule
