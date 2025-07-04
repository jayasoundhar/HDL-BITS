// synthesis verilog_input_version verilog_2001
module top_module (
    input [15:0] scancode,
    output reg left,
    output reg down,
    output reg right,
    output reg up  );
    always@(*) begin
            {left,right,down,up}=0;
        case(scancode)
            default : {left,right,down,up}=0;
            16'he06b : left=1;
            16'he075 : up=1;
            16'he074 : right=1;
            16'he072 : down=1;
        endcase
    end
endmodule
