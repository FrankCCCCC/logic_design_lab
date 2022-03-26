`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2022 05:52:39 PM
// Design Name: 
// Module Name: extract
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

module extract(
    input [`BCD_COUNTER_BITS-1:0] x,
    output [`SEGMENT_7_INPUT_BITS_N-1:0] d1,
    output [`SEGMENT_7_INPUT_BITS_N-1:0] d2
    );
    
    wire [`BCD_COUNTER_BITS-1:0]mod;
    wire [`BCD_COUNTER_BITS-1:0]div;
    assign mod = x % 10;
    assign div = x / 10;
    
    assign d1 = mod[`SEGMENT_7_INPUT_BITS_N-1:0];
    assign d2 = div[`SEGMENT_7_INPUT_BITS_N-1:0];
endmodule
