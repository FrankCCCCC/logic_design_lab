`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/14 13:45:56
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
    input clk_ctl,
    input rst_n,
    input [7:0]D_ssd_one_s,
    input [7:0]D_ssd_ten_s,
    input [7:0]D_ssd_one_m,
    input [7:0]D_ssd_ten_m,
    input lap,
    output reg [7:0]D_ssd,
    output reg [3:0]d
    );
    reg [1:0]cnt_ctl;
    reg [1:0]c;
    reg [7:0]D_ssd_lap_one_s;
    reg [7:0]D_ssd_lap_ten_s;
    reg [7:0]D_ssd_lap_one_m;
    reg [7:0]D_ssd_lap_ten_m;

    always@*
        cnt_ctl = c + 1'b1;       
    always@(posedge clk_ctl or posedge rst_n)
        if (rst_n)
            begin
                c <= 0;
            end
        else
            c <= cnt_ctl;
        
    always@*
        if (lap)
            begin
                D_ssd_lap_one_s <= D_ssd_one_s;
                D_ssd_lap_ten_s <= D_ssd_ten_s;
                D_ssd_lap_one_m <= D_ssd_one_m;
                D_ssd_lap_ten_m <= D_ssd_ten_m;
            end
        else
            begin
                D_ssd_lap_one_s <= D_ssd_lap_one_s;
                D_ssd_lap_ten_s <= D_ssd_lap_ten_s;
                D_ssd_lap_one_m <= D_ssd_lap_one_m;
                D_ssd_lap_ten_m <= D_ssd_lap_ten_m;
            end
    always@(posedge clk_ctl or posedge rst_n)
        if (rst_n)
            D_ssd <= 8'b11111111;       
        else 
            case(c)
                2'b00 : D_ssd <= D_ssd_lap_one_s;
                2'b01 : D_ssd <= D_ssd_lap_ten_s;
                2'b10 : D_ssd <= D_ssd_lap_one_m;
                2'b11 : D_ssd <= D_ssd_lap_ten_m;
                default : D_ssd <= 11111111;
            endcase
            
   always@(posedge clk_ctl or posedge rst_n)
       if (rst_n)
            d <= 4'b0000;
       else
            case(c)
                2'b00 : d <= 4'b1110;
                2'b01 : d <= 4'b1101;
                2'b10 : d <= 4'b1011;
                2'b11 : d <= 4'b0111;
            endcase 

endmodule
