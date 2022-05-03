`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/14 14:27:03
// Design Name: 
// Module Name: clock
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


module clock(
    input clk,
    input rst_n,
    input switch,
    input clk_c,
    output [7:0]D_ssd,
    output [3:0]d
    );
    wire clk_26;
    wire clk_ctl;
    wire [3:0] one_d;
    wire [3:0] ten_d;
    wire [3:0] one_m;
    wire [3:0] ten_m;
    wire [3:0] one_y;
    wire [3:0] ten_y;
    wire month;
    wire binary;
    wire [7:0] D_ssd_one_d, D_ssd_ten_d;
    wire [7:0] D_ssd_one_m, D_ssd_ten_m;
    wire [7:0] D_ssd_one_y, D_ssd_ten_y;
    
    
ssd_freqdiv F0 (
    .clk(clk),
    .rst_n(rst_n),
    .clk_ctl(clk_ctl)
    );
    
divider26 F1 (
    .clk(clk),
    .rst_n(rst_n),
    .clk_c(clk_c),
    .clk_out(clk_26)
        );
        
day U0 (
    .clk(clk_26),
    .rst_n(rst_n),
    .one_d(one_d),
    .ten_d(ten_d),
    .one_m(one_m),
    .ten_m(ten_m),
    .month(month)
    );
    
year U1 (
    .clk(clk_26),
    .rst_n(rst_n),
    .month(month),
    .one_y(one_y),
    .ten_y(ten_y)
        );
              
decoder U30 (
    .binary(one_d),
    .D_ssd(D_ssd_one_d)
        );
decoder U31 (
    .binary(ten_d),
    .D_ssd(D_ssd_ten_d)
        );
decoder U32 (
    .binary(one_m),
    .D_ssd(D_ssd_one_m)
        );
decoder U33 (
    .binary(ten_m),
    .D_ssd(D_ssd_ten_m)
        );
decoder U34 (
    .binary(one_y),
    .D_ssd(D_ssd_one_y)
        );
decoder U35 (
    .binary(ten_y),
    .D_ssd(D_ssd_ten_y)
        );
        
display U4 (
    .clk_ctl(clk_ctl),
    .rst_n(rst_n),
    .D_ssd_one_d(D_ssd_one_d),
    .D_ssd_ten_d(D_ssd_ten_d),
    .D_ssd_one_m(D_ssd_one_m),
    .D_ssd_ten_m(D_ssd_ten_m),
    .D_ssd_one_y(D_ssd_one_y),
    .D_ssd_ten_y(D_ssd_ten_y),
    .switch(switch),
    .D_ssd(D_ssd),
    .d(d)
            );
endmodule
