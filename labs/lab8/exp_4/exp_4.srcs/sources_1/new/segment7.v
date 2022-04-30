`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2022 10:32:34 PM
// Design Name: 
// Module Name: segment7
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

module segment7(
    i,
    D
    );
    
    input [`SEGMENT_7_INPUT_BITS_N:0] i;
    output [`SEGMENT_7_SEGMENT_N-1:0]D;
    
    reg [`SEGMENT_7_SEGMENT_N-1:0]D;
    
    always@(i)
        case(i)
            `SEGMENT_7_INPUT_BITS_N'd0: D=`SEGMENT_7_SEGMENT_N'b0000001_1;
            `SEGMENT_7_INPUT_BITS_N'd1: D=`SEGMENT_7_SEGMENT_N'b1001111_1;
            `SEGMENT_7_INPUT_BITS_N'd2: D=`SEGMENT_7_SEGMENT_N'b0010010_1;
            `SEGMENT_7_INPUT_BITS_N'd3: D=`SEGMENT_7_SEGMENT_N'b0000110_1;
            `SEGMENT_7_INPUT_BITS_N'd4: D=`SEGMENT_7_SEGMENT_N'b1001100_1;
            `SEGMENT_7_INPUT_BITS_N'd5: D=`SEGMENT_7_SEGMENT_N'b0100100_1;
            `SEGMENT_7_INPUT_BITS_N'd6: D=`SEGMENT_7_SEGMENT_N'b0100000_1;
            `SEGMENT_7_INPUT_BITS_N'd7: D=`SEGMENT_7_SEGMENT_N'b0001111_1;
            `SEGMENT_7_INPUT_BITS_N'd8: D=`SEGMENT_7_SEGMENT_N'b0000000_1;
            `SEGMENT_7_INPUT_BITS_N'd9: D=`SEGMENT_7_SEGMENT_N'b0000100_1;
            `SEGMENT_7_INPUT_BITS_N'd10: D=`SEGMENT_7_SEGMENT_N'b0001000_1;
            `SEGMENT_7_INPUT_BITS_N'd11: D=`SEGMENT_7_SEGMENT_N'b1100000_1;
            `SEGMENT_7_INPUT_BITS_N'd12: D=`SEGMENT_7_SEGMENT_N'b0110001_1;
            `SEGMENT_7_INPUT_BITS_N'd13: D=`SEGMENT_7_SEGMENT_N'b1000010_1;
            `SEGMENT_7_INPUT_BITS_N'd14: D=`SEGMENT_7_SEGMENT_N'b0110000_1;
            `SEGMENT_7_INPUT_BITS_N'd15: D=`SEGMENT_7_SEGMENT_N'b0111000_1;
            default: D=`SEGMENT_7_SEGMENT_N'b1111111_0;
        endcase
        
endmodule
