`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/26 16:15:53
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
    input rst,
    input [3:0]sound,
    output reg [3:0]d,
    output reg [7:0]D_ssd
    );
    
    reg [1:0] ssd_ctl_en = 2'b0;
    reg [14:0] cnt_l = 15'b0;
    reg [7:0]sound_1;
    reg [7:0]sound_2;
    reg [1:0]cnt_ctl;
    reg [1:0]c;
    
    always@*
        cnt_ctl = c + 1'b1;       
    always@(posedge ssd_ctl_en or posedge rst)
        if (rst)
            c <= 0;
        else
            c <= cnt_ctl;

    always@ (posedge clk)
        {ssd_ctl_en,cnt_l} <= {ssd_ctl_en,cnt_l}+1'b1; 
        
    always@*
        case(sound)
            4'd0:
                begin
                    sound_1 = 8'b11111111;
                    sound_2 = 8'b11111111;
                end
            4'd1: 
                begin
                    sound_1 = 8'b10000100;
                    sound_2 = 8'b11111100;
                end
            4'd2: 
                begin
                    sound_1 = 8'b11110100;
                    sound_2 = 8'b01100000;
                end
            4'd3: 
                begin
                    sound_1 = 8'b01010100;
                    sound_2 = 8'b10011110;
                end        
            4'd4: 
                begin
                    sound_1 = 8'b01110000;
                    sound_2 = 8'b00010000;
                end
            4'd5: 
                begin
                    sound_1 = 8'b01001000;
                    sound_2 = 8'b11111100;
                end
            4'd6: 
                begin
                    sound_1 = 8'b11100010;
                    sound_2 = 8'b00010000;
                end
            4'd7: 
                begin
                    sound_1 = 8'b01001000;
                    sound_2 = 8'b10011110;
                end
            4'd8: 
                begin
                    sound_1 = 8'b10000101;
                    sound_2 = 8'b11111101;
                end
            4'd9: 
                begin
                    sound_1 = 8'b11110101;
                    sound_2 = 8'b01100001;
                end
            4'd10: 
                begin
                    sound_1 = 8'b01010101;
                    sound_2 = 8'b10011111;
                end        
            4'd11: 
                begin
                    sound_1 = 8'b01110001;
                    sound_2 = 8'b00010001;
                end
            4'd12: 
                begin
                    sound_1 = 8'b01001001;
                    sound_2 = 8'b11111101;
                end
            4'd13: 
                begin
                    sound_1 = 8'b11100011;
                    sound_2 = 8'b00010001;
                end
            4'd14: 
                begin
                    sound_1 = 8'b01001001;
                    sound_2 = 8'b10011111;
                end
            default:
                begin
                    sound_1 = 8'b11111111;
                    sound_2 = 8'b11111111;
                end
        endcase
        
    always@(posedge clk or posedge rst)
        if(rst)
            D_ssd <= 8'b11111111;
        else
            case(c)
                2'b00: D_ssd <= sound_1;
                2'b01: D_ssd <= sound_2;
                default: D_ssd <= 8'b11111111;
            endcase
            
    always@(posedge clk or posedge rst)
        if(rst)
            d <= 4'b1111;
        else
            case(c)
                2'b00 : d <= 4'b1110;
                2'b01 : d <= 4'b1101;
                2'b10 : d <= 4'b1011;
                2'b11 : d <= 4'b0111;
                default : d <= 4'b1111;
            endcase 

            
   
endmodule
