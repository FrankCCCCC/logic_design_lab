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
    input mode,
    input rst_n,
    input switch,
    input clk_c,
    output [7:0]D_ssd,
    output [3:0]d
    );
    wire clk_26;
    wire clk_ctl;
    wire [3:0] one_s;
    wire [3:0] ten_s;
    wire [3:0] one_m;
    wire [3:0] ten_m;
    wire [3:0] one_h;
    wire [3:0] ten_h;
    wire [3:0] one_h_12;
    wire [3:0] ten_h_12;
    wire minute;
    wire binary;
    wire [7:0] D_ssd_one_s, D_ssd_ten_s;
    wire [7:0] D_ssd_one_m, D_ssd_ten_m;
    wire [7:0] D_ssd_one_h, D_ssd_ten_h;
    wire [7:0] D_ssd_one_h_12, D_ssd_ten_h_12;
    wire pm;
    
    
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
        
second U0 (
    .clk(clk_26),
    .rst_n(rst_n),
    .one_s(one_s),
    .ten_s(ten_s),
    .one_m(one_m),
    .ten_m(ten_m),
    .minute(minute)
    );
    
hour U1 (
    .clk(clk_26),
    .rst_n(rst_n),
    .minute(minute),
    .one_h(one_h),
    .ten_h(ten_h)
        );
        
hour_12 U2 (
    .clk(clk_26),
    .rst_n(rst_n),
    .minute(minute),
    .one_h_12(one_h_12),
    .ten_h_12(ten_h_12),
    .pm(pm)
        );
        
decoder U30 (
    .binary(one_s),
    .D_ssd(D_ssd_one_s)
        );
decoder U31 (
    .binary(ten_s),
    .D_ssd(D_ssd_ten_s)
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
    .binary(one_h),
    .D_ssd(D_ssd_one_h)
        );
decoder U35 (
    .binary(ten_h),
    .D_ssd(D_ssd_ten_h)
        );
decoder12 U36 (
    .binary(one_h_12),
    .pm(pm),
    .D_ssd(D_ssd_one_h_12)
        );
decoder12 U37 (
    .binary(ten_h_12),
    .pm(pm),
    .D_ssd(D_ssd_ten_h_12)
        );
        
display U4 (
    .clk_ctl(clk_ctl),
    .rst_n(rst_n),
    .D_ssd_one_s(D_ssd_one_s),
    .D_ssd_ten_s(D_ssd_ten_s),
    .D_ssd_one_m(D_ssd_one_m),
    .D_ssd_ten_m(D_ssd_ten_m),
    .D_ssd_one_h(D_ssd_one_h),
    .D_ssd_ten_h(D_ssd_ten_h),
    .D_ssd_one_h_12(D_ssd_one_h_12),
    .D_ssd_ten_h_12(D_ssd_ten_h_12),
    .mode(mode),
    .switch(switch),
    .D_ssd(D_ssd),
    .d(d)
            );
endmodule
