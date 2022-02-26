`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/17 20:28:03
// Design Name: 
// Module Name: downcounter30
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


module downcounter30(
    input clk,
    input rst_n,
    output reg [7:0]D_ssd,
    output reg [3:0]d
    );
    reg clk_out;
    reg cnt_h;
    reg clk_ctl;
    reg cnt_l;
    reg [25:0]cnt;
    reg [26:0]tmp_cnt;
    reg cnt_ctl;
    reg c;
    reg [3:0]a;
    reg [7:0]A;
    reg [3:0]b;
    reg [7:0]B;
    reg [3:0]tmp_b;
    reg [3:0]one_cnt;
    reg [3:0]ten_cnt;
    reg tmp_clk;
    
    always@(posedge clk or negedge rst_n)
            if (~rst_n)cnt<=26'd0;
            else if (cnt == 26'd50000000)
                begin 
                    cnt<=26'd0;
                    tmp_clk<=(~tmp_clk);
                end
            else 
                cnt<=cnt + 1'b1;
                
    always@*
        one_cnt = a - 1'b1;                  
    always@(posedge tmp_clk or negedge rst_n)
        if (~rst_n)
            a <= 4'd0;
        else if(a == 4'b0000)
            a <= 4'b1001;             
        else
            a <= one_cnt;                      
    always@*
        begin
            case(a)
                4'd0: A = 8'b00000011;
                4'd1: A = 8'b10011111;
                4'd2: A = 8'b00100101;
                4'd3: A = 8'b00001101;
                4'd4: A = 8'b10011001;
                4'd5: A = 8'b01001001;
                4'd6: A = 8'b01000001;
                4'd7: A = 8'b00011111;
                4'd8: A = 8'b00000001;
                default: D_ssd = 8'b00001001;
        endcase
    end       

    always@*
        begin
            tmp_b = b;
            ten_cnt = b - 1'b1;
        end
    always@(posedge tmp_clk or negedge rst_n)
        if (~rst_n)
            b <= 4'd3;
        else if(a == 4'b0000)
            b <= ten_cnt;    
        else
            b <= tmp_b;                      
    always@*
        begin
            case(b)
                4'd0: B = 8'b00000011;
                4'd1: B = 8'b10011111;
                4'd2: B = 8'b00100101;
                default: B = 8'b00001101;
        endcase
    end
    
    always@*
        tmp_cnt = {clk_out, cnt_h, clk_ctl, cnt_l} + 1'b1;
    always@(posedge clk or negedge rst_n)
        if (~rst_n){clk_out, cnt_h, clk_ctl, cnt_l} <= 27'd0;
        else {clk_out, cnt_h, clk_ctl, cnt_l} <= tmp_cnt;
        
    always@*
        cnt_ctl = c + 1'b1;       
    always@(posedge clk_ctl or negedge rst_n)
        if (~rst_n)
            begin
                d = 4'b1111;
                c <= 0;
            end
        else
            c <= cnt_ctl;
        
    always@*
        case(c)
            1'b0 : 
                begin
                    D_ssd = A;
                    d = 4'b1110;
                end
            default : 
                begin
                    D_ssd = B;
                    d = 4'b1101;
                end
        endcase
endmodule
