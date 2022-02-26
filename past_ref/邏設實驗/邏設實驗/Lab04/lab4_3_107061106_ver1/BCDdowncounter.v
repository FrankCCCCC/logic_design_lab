`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/16 15:57:17
// Design Name: 
// Module Name: BCDdowncounter
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


module BCDdowncounter(
    input f,
    input rst_n,
    output reg [3:0]b,
    output reg [3:0]B,
    output reg [7:0]D_ssd
    );
    reg [3:0]tmp_cnt;
    reg clk_out;
    reg [25:0]cnt;
    reg tmp_clk;

    always@(posedge f or negedge rst_n)
        if (~rst_n)cnt<=26'd0;
        else if (cnt == 26'd50000000)
            begin 
                cnt<=26'd0;
                tmp_clk<=(~tmp_clk);
            end
        else 
            cnt<=cnt + 1'b1;
            
    always@*
        tmp_cnt = b - 1'b1;
        
    always@(posedge tmp_clk or negedge rst_n)
        if (~rst_n)
            b <= 9;
        else if(b == 4'b0000)
                b <= 4'b1001;             
        else
            b <= tmp_cnt;
            
    always@*
    begin
        B = 4'd1110;
        case(b)
        4'd0: D_ssd = 8'b00000011;
        4'd1: D_ssd = 8'b10011111;
        4'd2: D_ssd = 8'b00100101;
        4'd3: D_ssd = 8'b00001101;
        4'd4: D_ssd = 8'b10011001;
        4'd5: D_ssd = 8'b01001001;
        4'd6: D_ssd = 8'b01000001;
        4'd7: D_ssd = 8'b00011111;
        4'd8: D_ssd = 8'b00000001;
        default: D_ssd = 8'b00001001;
        endcase
    end       

endmodule
