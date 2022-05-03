`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/22 00:02:34
// Design Name: 
// Module Name: fin_display
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


module fin_display(
    input mode,
    input [7:0]D_ssd1,
    input [3:0]d1,
    input [15:0]led1,
    input [7:0]D_ssd2,
    input [3:0]d2,
    input [15:0]led2,
    output reg [7:0]D_ssd,
    output reg [3:0]d,
    output reg [15:0]led
    );
    
    always@*
        if (mode)
            begin
                D_ssd = D_ssd2;
                d = d2;
                led = led2;
            end
        else
            begin
                D_ssd = D_ssd1;
                d = d1;
                led = led1;
            end
endmodule
