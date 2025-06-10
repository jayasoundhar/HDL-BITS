module top_module( 
    input [254:0] in,
    output [7:0] out );
    integer j;
    always@(*) begin
        j=0;
        for(integer i=0;i<255;i++) begin
           
            if(in[i]) j++;
        end
        out=j;
    end
endmodule
