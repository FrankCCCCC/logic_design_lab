`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/19 20:09:26
// Design Name: 
// Module Name: adder
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


module adder(
    input clk,
    input rst_n,
    input [3:0]addend,
    input [3:0]augend,
    output reg [3:0]ans_one,
    output reg [3:0]carry
    );
    
    reg [3:0]addend_tmp;
    reg [3:0]augend_tmp;
    reg state;
    reg [4:0]sum;
    reg next_state;
    
    always@*
        sum = addend + augend;
           
    always@(posedge clk or posedge rst_n)
        if(rst_n)
            begin
                ans_one = 5'd0;
                carry = 0;
            end
        else
            if (sum > 5'd9)
                begin
                    ans_one = sum - 5'd10;
                    carry = 1;
                end
            else
                begin
                    ans_one = sum;
                    carry = 0;
                end
            
        
            
endmodule
