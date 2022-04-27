`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2022 02:34:17 PM
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
    P,
    D
    );
    
    input [`SEGMENT_7_INPUT_BITS_N:0] i;
    output [`SEGMENT_7_DISPALY_DIGIT_N-1:0]P;
    output [`SEGMENT_7_SEGMENT_N-1:0]D;
    
    reg [`SEGMENT_7_SEGMENT_N-1:0]D;
    
    assign P = ~4'b0001;
    always@(i)
        case(i)
            4'd0: D=`SEGMENT_7_SEGMENT_N'b0000001_1;
            4'd1: D=`SEGMENT_7_SEGMENT_N'b1001111_1;
            4'd2: D=`SEGMENT_7_SEGMENT_N'b0010010_1;
            4'd3: D=`SEGMENT_7_SEGMENT_N'b0000110_1;
            4'd4: D=`SEGMENT_7_SEGMENT_N'b1001100_1;
            4'd5: D=`SEGMENT_7_SEGMENT_N'b0100100_1;
            4'd6: D=`SEGMENT_7_SEGMENT_N'b0100000_1;
            4'd7: D=`SEGMENT_7_SEGMENT_N'b0001111_1;
            4'd8: D=`SEGMENT_7_SEGMENT_N'b0000000_1;
            4'd9: D=`SEGMENT_7_SEGMENT_N'b0000100_1;
            4'd10: D=`SEGMENT_7_SEGMENT_N'b0001000_1;
            4'd11: D=`SEGMENT_7_SEGMENT_N'b1100000_1;
            4'd12: D=`SEGMENT_7_SEGMENT_N'b0110001_1;
            4'd13: D=`SEGMENT_7_SEGMENT_N'b1000010_1;
            4'd14: D=`SEGMENT_7_SEGMENT_N'b0110000_1;
            4'd15: D=`SEGMENT_7_SEGMENT_N'b0111000_1;
            default: D=`SEGMENT_7_SEGMENT_N'b0111000_1;
        endcase
        
endmodule
