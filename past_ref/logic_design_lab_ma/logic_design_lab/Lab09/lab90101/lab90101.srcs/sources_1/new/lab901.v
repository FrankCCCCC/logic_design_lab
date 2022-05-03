`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/19 01:30:07
// Design Name: 
// Module Name: lab901
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


module lab901(
    input clk,
    input rst_n,
    inout PS2_DATA,
    inout PS2_CLK,
    output [3:0]d,
    output [7:0]D_ssd    
    );
    wire [511:0]key_down;
    wire key_valid;
    wire [8:0]last_change;
    wire [8:0]D_ssd_in;
    
    
KeyboardDecoder U0(
    .key_down(key_down),
    .last_change(last_change),
    .key_valid(key_valid),
    .PS2_DATA(PS2_DATA),
    .PS2_CLK(PS2_CLK),
    .rst(rst_n),
    .clk(clk)
        );
        
control U1(
    .clk(clk),
    .rst_n(rst_n),
    .key_down(key_down),
    .last_change(last_change),
    .key_valid(key_valid),
    .D_ssd_in(D_ssd_in)
    );
        
display U2(
    .clk(clk),
    .rst_n(rst_n),
    .D_ssd_in(D_ssd_in),
    .D_ssd(D_ssd),
    .d(d)
    );
        

endmodule
