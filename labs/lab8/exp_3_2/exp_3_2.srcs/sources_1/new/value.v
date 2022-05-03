`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/05/02 21:12:40
// Design Name: 
// Module Name: value
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`include "global.v"

module value(
    input [`VALUE_BITS_N-1:0] in,
    output [`SEGMENT_7_INPUT_BITS_N-1:0] out0, out1, out2, out3
    );
    assign out0 = in / 1000;
    assign out1 = (in / 100) - (in / 1000) * 10;
    assign out2 = (in / 10) - (in / 100) * 10;
    assign out3 = in % 10;
endmodule
