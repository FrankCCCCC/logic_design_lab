`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/01 00:14:12
// Design Name: 
// Module Name: downcounter
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


module downcounter(
    input clk,
    input rst_n,
    input decrease,
    input [1:0] clk_ctl,
    output reg [7:0]D_ssd,
    output reg [3:0]d,
    output reg [14:0]led
    );
    reg [3:0]one_cnt;
    reg [3:0]ten_cnt;
    reg [3:0]a;
    reg [3:0]b;
    reg [7:0]A;
    reg [7:0]B;
    reg [25:0]cnt;
    reg cnt_ctl;    
    reg c;


    always@*
        one_cnt = a - 1'b1;                  
    always@(posedge clk or posedge rst_n)
        if (rst_n)
            a <= 4'd0;
        else if((a == 4'b0000) && (b == 4'b0000))
            a <= a;
        else if(a == 4'b0000 && decrease)
            a <= 4'b1001;            
        else if (decrease)
            a <= one_cnt;
        else
            a <= a;      
             
    always@*
        ten_cnt = b - 1'b1;
    always@(posedge clk or posedge rst_n)
        if (rst_n)
            b <= 4'd3;
        else if((a == 4'b0000) && (b == 4'b0000))
            b <= b;
        else if(a == 4'b0000 && decrease)
            b <= ten_cnt;
        else b <= b;      
        
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
                default: A = 8'b00001001;
            endcase
        end       
                      
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
        cnt_ctl = c + 1'b1;       
    always@(posedge clk_ctl or posedge rst_n)
        if (rst_n)
            c <= 0;
        else
            c <= cnt_ctl;
        
    always@(posedge clk_ctl or posedge rst_n)
        if (rst_n)
            D_ssd <= A;
        else
            case(c)
                1'b0 : D_ssd <= A;
                1'b1 : D_ssd <= B;
            endcase
            
   always@(posedge clk_ctl or posedge rst_n)
       if (rst_n)
            d <= 4'b1101;
       else
            case(c)
                1'b0 : d <= 4'b1110;
                1'b1 : d <= 4'b1101;
            endcase 
            
    always@*
        begin  
            if(a == 4'b0000 && b == 4'b0000)
                led <= 15'b111111111111111;
            else
                led <= 15'b000000000000000;
        end
endmodule