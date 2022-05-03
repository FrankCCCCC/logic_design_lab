`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/02 16:29:32
// Design Name: 
// Module Name: smux2
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


module smux2(
    input [3:0]i,
    output reg [3:0]d,
    output [7:0]D_ssd
    );
    
    assign D_ssd[0] = 0;
    assign D_ssd[1] = (~i[2])&i[3] | i[1]&i[3] | (~i[1])&(~i[2]) | i[0]&i[1]&i[2];
    assign D_ssd[2] = i[0]&(~i[2])&(~i[3]) | i[1]&(~i[2])&(~i[3]) | i[0]&i[1]&(~i[3]);
    assign D_ssd[3] = i[0]&(~i[2]) | (i[1])&i[2]&(~i[3]) | i[0]&(~i[1])&i[2];
    assign D_ssd[4] = i[0]&(~i[1])&(~i[2])&(~i[3]) | (~i[0])&(~i[1])&i[2]&(~i[3]) | i[0]&i[1]&i[2]&(~i[3]) | i[0]&(~i[1])&(~i[2])&i[3];
    assign D_ssd[5] = i[2]&i[3] | i[1]&i[3] | (~i[0])&i[1]&(~i[2]);
    assign D_ssd[6] = i[2]&i[3] | i[1]&i[3] | i[0]&(~i[1])&i[2] | (~i[0])&i[1]&i[2];
    assign D_ssd[7] = (~i[0])&(~i[1])&i[2]&(~i[3]) | i[0]&(~i[1])&(~i[2])&(~i[3]);
    
endmodule

