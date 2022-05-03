`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/16 16:39:00
// Design Name: 
// Module Name: num_reg_1
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


module value_1(
    input rst,
    input clk,
    input enter_st,
    input [8:0]last_change,
    output reg [3:0]value
    );
 
always@(posedge clk or posedge rst)
    if(rst) value <= 0;
    else if(~enter_st)
        casex(last_change)
        9'h70:    value = (4'd0); 
        9'h69:    value = (4'd1);
        9'h72:    value = (4'd2);
        9'h7A:    value = (4'd3);
        9'h6B:    value = (4'd4);
        9'h73:    value = (4'd5);
        9'h74:    value = (4'd6);
        9'h6C:    value = (4'd7);
        9'h75:    value = (4'd8);
        9'h7D:    value = (4'd9);
        default:   value = value;
        endcase
    else value <=value;
endmodule
