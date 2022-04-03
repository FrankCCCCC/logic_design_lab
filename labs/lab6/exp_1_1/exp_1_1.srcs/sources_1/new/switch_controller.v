`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2022 12:01:07 AM
// Design Name: 
// Module Name: switch_controller
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

module switch_controller(
    sec0,
    sec1,
    min0,
    min1,
    hour0,
    hour1,
    switch
    );
    // Binary counter output
    input [`BCD_BIT_WIDTH-1:0] sec0;
    input [`BCD_BIT_WIDTH-1:0] sec1;
    input [`BCD_BIT_WIDTH-1:0] min0;
    input [`BCD_BIT_WIDTH-1:0] min1;
    input [`BCD_BIT_WIDTH-1:0] hour0;
    input [`BCD_BIT_WIDTH-1:0] hour1;
    input [`SWITCH_BITS_N-1:0] switch;
    
//    reg [`BCD_BIT_WIDTH-1:0] sec0, sec1,min0, min1, hour0, hour1; // Binary counter output
endmodule
