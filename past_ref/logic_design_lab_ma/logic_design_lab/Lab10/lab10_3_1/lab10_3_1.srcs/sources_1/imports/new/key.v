`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/05/03 09:48:29
// Design Name: 
// Module Name: key_in
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


module key(
    input clk,
    input [511:0]key_down,
    input key_valid,
    input [8:0] last_change,
    output reg [4:0] char
    );
    
    always@(posedge clk)
        if((key_down[last_change]==1'b1) && (key_valid==1'b1))
            casex(last_change)
                9'bx00011100:char <= 5'd1; 
                9'bx00110010:char <= 5'd2;
                9'bx00100001:char <= 5'd3;
                9'bx00100011:char <= 5'd4;
                9'bx00100100:char <= 5'd5;
                9'bx00101011:char <= 5'd6;
                9'bx00110100:char <= 5'd7;
                default:char <= 5'd0;
            endcase
        else
            char <= char;
endmodule
