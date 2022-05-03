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
    output [7:0]D_ssd,
    output [3:0]d,
    output pm
    );
    wire clk_26;
    wire clk_ctl;
    wire one_s;
    wire ten_s;
    wire one_m;
    wire ten_m;
    wire one_h;
    wire ten_h;
    wire one_h_12;
    wire ten_h_12;
    wire minute;
    wire binary;
    wire D_ssd_one_s;
    wire D_ssd_ten_s;
    wire D_ssd_one_m;
    wire D_ssd_ten_m;
    wire D_ssd_one_h;
    wire D_ssd_ten_h;
    wire D_ssd_one_h_12;
    wire D_ssd_ten_h_12;

    
    
ssd_freqdiv F0 (
    .clk(clk),
    .rst_n(rst_n),
    .clk_ctl(clk_ctl)
    );
    
divider26 F1 (
    .clk(clk),
    .rst_n(rst_n),
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
    .ten_h_12(ten_h_12)
        );
        
decoder U3 (
    .binary(binary),
    .D_ssd(D_ssd)
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
    .d(d),
    .pm(pm)
            );
endmodule
