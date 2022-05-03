`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/19 21:05:34
// Design Name: 
// Module Name: display
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


module display(
    input clk,
    input rst_n,
    input [7:0]addend,
    input [7:0]augend,
    input [7:0]ans_one,
    input [7:0]carry,
    output reg [3:0]d,
    output reg [7:0]D_ssd
    );
    reg [1:0]ssd_ctl_en;
    reg [14:0]cnt;
    
    always@(posedge clk or posedge rst_n)
    if (rst_n)
        {ssd_ctl_en, cnt} <= 17'b0;
    else 
        {ssd_ctl_en, cnt} <= {ssd_ctl_en, cnt} + 1'b1;
        
    always@(ssd_ctl_en)
        case(ssd_ctl_en)
            2'b00:
                begin
                    d = 4'b0111;
                    D_ssd = addend;
                end
            2'b01:
                begin
                    d = 4'b1011;
                    D_ssd = augend;
                end
            2'b10:
                begin
                    d = 4'b1101;
                    D_ssd = carry;
                end
            2'b11:
                begin
                    d = 4'b1110;
                    D_ssd = ans_one;
                end
            default:
                begin
                    d = 4'b1111;
                    D_ssd = ans_one;
                end
            endcase
endmodule
