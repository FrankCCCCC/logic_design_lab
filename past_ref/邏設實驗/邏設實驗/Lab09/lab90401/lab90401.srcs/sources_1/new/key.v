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
                9'bx00110011:char <= 5'd8;
                9'bx01000011:char <= 5'd9;
                9'bx00111011:char <= 5'd10;
                9'bx01000010:char <= 5'd11;
                9'bx01001011:char <= 5'd12;
                9'bx00111010:char <= 5'd13;
                9'bx00110001:char <= 5'd14;
                9'bx01000100:char <= 5'd15;
                9'bx01001101:char <= 5'd16;
                9'bx00010101:char <= 5'd17;
                9'bx00101101:char <= 5'd18;
                9'bx00011011:char <= 5'd19;
                9'bx00101100:char <= 5'd20;
                9'bx00111100:char <= 5'd21;
                9'bx00101010:char <= 5'd22;
                9'bx00011101:char <= 5'd23;
                9'bx00100010:char <= 5'd24;
                9'bx00110101:char <= 5'd25;
                9'bx00011010:char <= 5'd26;
                default:char <= 5'd0;
            endcase
        else
            char <= char;
endmodule
