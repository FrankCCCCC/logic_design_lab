`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/01 15:48:46
// Design Name: 
// Module Name: rst
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


module rst(
    input clk,
    input button,
    output reg rst_n,
    output reg en
    );
    reg [28:0]c;
    reg [28:0]temp, temp1;
    
    always @*
        if(button == 1'b1)
            temp = c + 1'b1;
        else 
            temp = 1'b0;
    
    always@*
        if (c == 29'd500000000-1)
            begin 
                temp1 = 3'd0;
                rst_n = 1'b1;
            end
        else 
            begin
                temp1 = temp;
                rst_n = 1'b0;
            end
    
    always @(posedge clk)
        c <= temp1;
        
    always @*
        en = button & (~rst_n);

endmodule
