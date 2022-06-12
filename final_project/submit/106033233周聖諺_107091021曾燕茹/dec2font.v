`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/29/2022 04:54:37 PM
// Design Name: 
// Module Name: dec2font
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

module dec2font #(
    parameter DEC_BITS_N = 0,
    parameter ALPHABET_BITS_N = 0
)(
    input [DEC_BITS_N-1:0] dec,
    output reg [ALPHABET_BITS_N-1:0] font
);

    always@(*) begin
        case(dec)
            'd0: font = `ALPHA_0;
            'd1: font = `ALPHA_1;
            'd2: font = `ALPHA_2;
            'd3: font = `ALPHA_3;
            'd4: font = `ALPHA_4;
            'd5: font = `ALPHA_5;
            'd6: font = `ALPHA_6;
            'd7: font = `ALPHA_7;
            'd8: font = `ALPHA_8;
            'd9: font = `ALPHA_9;
        endcase
    end
endmodule
