module top_module (
    input too_cold,
    input too_hot,
    input mode,
    input fan_on,
    output heater,
    output aircon,
    output fan
);
    assign aircon = ( ~mode & too_hot);
    assign heater = ( mode &too_cold );
    assign fan =(aircon|fan_on|heater);
endmodule
