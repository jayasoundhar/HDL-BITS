module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);
    wire [7:0] min1,min2;
    always@(*) begin
        min=((a<b)?((a<c)?((a<d)?a:d):((c<d)?c:d)):((b<c)?((b<d)?b:d):((c<d)?c:d)));
       // min1=(a<b)?a:b;
       // min2=(min1<c)?min1:c;
       // min=(min2<d)?min2:d;
    end
endmodule
