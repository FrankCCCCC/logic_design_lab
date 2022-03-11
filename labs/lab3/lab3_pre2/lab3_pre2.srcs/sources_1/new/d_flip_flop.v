`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2022 12:25:37 AM
// Design Name: 
// Module Name: d_flip_flop
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


module d_flip_flop(
    input d,
    input clk,
    input rst,
    output q
    );
    
    reg q;
    
    always@(posedge clk or negedge rst)
    begin
        if(~rst)
            q <= 0;
        else
            q <= d;
    end
endmodule
