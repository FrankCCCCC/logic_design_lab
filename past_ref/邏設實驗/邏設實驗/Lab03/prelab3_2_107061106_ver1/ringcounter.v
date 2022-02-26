`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/10 01:12:52
// Design Name: 
// Module Name: ringcounter
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


module ringcounter(
    input clk,
    input rst_n,
    output [7:0]t
    );
    reg [7:0]t;

    always@(posedge clk or negedge rst_n)
    begin
        if(~rst_n)t<=8'b01010101;
        else
            begin
                t[0] <= t[1];
                t[1] <= t[2];
                t[2] <= t[3];
                t[3] <= t[4];
                t[4] <= t[5];
                t[5] <= t[6];
                t[6] <= t[7];
                t[7] <= t[0];
            end
    end
endmodule
