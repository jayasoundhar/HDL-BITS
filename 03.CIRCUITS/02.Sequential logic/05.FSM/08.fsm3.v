module top_module(
    input clk,
    input in,
    input reset,
    output out); //

    // State transition logic
    parameter a = 2'b00,b = 2'b01,c = 2'b10,d = 2'b11;
    reg [1:0] ps,ns;
    always@(posedge clk) begin
        if(reset) begin
           ps <= 0;
        end
        else ps <= ns;
    end

    // State flip-flops with synchronous reset
    always@(*) begin
        case(ps)
            a : begin if(in==1) ns <= b; else ns <= a; end
            b : begin if(in==1) ns <= b; else ns <= c; end
            c : begin if(in==1) ns <= d; else ns <= a; end
            d : begin if(in==1) ns <= b; else ns <= c; end
        endcase
    end

    // Output logic
    assign out = (ps == d)?1'b1:1'b0;

endmodule
