`timescale 1ns / 1ps
module SMUX(
    out, // multiplexer output
    a, // multiplexer input a
    b, // multiplexer input b
    sel // selection control signal
    );
    output out; // multiplexer output
    input a,b; // two inputs to be selected
    input sel; // selection control signal
    // multiplexer funtion
    assign out = (sel) ? a : b ;
endmodule