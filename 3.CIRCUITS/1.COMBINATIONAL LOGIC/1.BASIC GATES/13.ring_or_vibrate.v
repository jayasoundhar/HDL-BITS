module top_module (
    input ring,
    input vibrate_mode,
    output ringer,       // Make sound
    output motor         // Vibrate
);
    always@(*) begin
        motor=0;ringer=0;
        if(vibrate_mode) motor=ring;
        else ringer=ring;
    end
endmodule
