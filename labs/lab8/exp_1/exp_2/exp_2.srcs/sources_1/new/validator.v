`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2022 12:19:48 AM
// Design Name: 
// Module Name: validator
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

module validator(
    output reg [`KB_ENCODE_BITS_N-1:0] kb_out,
    input [`KB_ENCODE_BITS_N-1:0] kb_in,
    input key_valid
    );
    
    always@(*) begin
        if(key_valid) begin
            kb_out = kb_in;
        end else begin
            kb_out = `KB_ENCODE_BITS_N'd0;
        end
    end
endmodule
