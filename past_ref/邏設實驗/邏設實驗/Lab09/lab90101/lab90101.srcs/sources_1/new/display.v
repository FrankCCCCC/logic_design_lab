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
    input clk,
    input rst_n,
    input [8:0]D_ssd_in,
    output reg [7:0]D_ssd,
    output reg [3:0]d
    );

    reg [1:0]c;
    
        
    always@(posedge clk or posedge rst_n)
        if (rst_n)
            D_ssd <= 8'b11111111;
         else
            case(D_ssd_in)
               9'b0_0100_0101: D_ssd = 8'b00000011; //0
               9'b0_0001_0110: D_ssd = 8'b10011111;  //1 
               9'b0_0001_1110: D_ssd = 8'b00100101;  //2
               9'b0_0010_0110: D_ssd = 8'b00001101;//3
               9'b0_0010_0101: D_ssd = 8'b10011001; //4
               9'b0_0010_1110: D_ssd = 8'b01001001; //5
               9'b0_0011_0110: D_ssd = 8'b01000001; //6
               9'b0_0011_1101: D_ssd = 8'b00011111; //7
               9'b0_0011_1110: D_ssd = 8'b00000001; //8
               9'b0_0100_0110: D_ssd = 8'b00001001; //9
               9'b0_0111_0000: D_ssd = 8'b00000011; // right_0 => 70
               9'b0_0110_1001: D_ssd = 8'b10011111; // right_1 => 69
               9'b0_0111_0010: D_ssd = 8'b00100101; // right_2 => 72
               9'b0_0111_1010: D_ssd = 8'b00001101; // right_3 => 7A
               9'b0_0110_1011: D_ssd = 8'b10011001; // right_4 => 6B
               9'b0_0111_0011: D_ssd = 8'b01001001; // right_5 => 73
               9'b0_0111_0100: D_ssd = 8'b01000001; // right_6 => 74
               9'b0_0110_1100: D_ssd = 8'b00011111; // right_7 => 6C
               9'b0_0111_0101: D_ssd = 8'b00000001; // right_8 => 75
               9'b0_0111_1101: D_ssd = 8'b00001001;  // right_9 => 7D
               9'b0_0101_1010: D_ssd = 8'b11111111; // enter =>5A 
               9'b0_0001_1100: D_ssd = 8'b00010001; //A=>1C
               9'b0_0001_1011: D_ssd = 8'b01001001; //S=>1B 
               9'b0_0011_1010: D_ssd = 8'b01010101; //M=>3A                                  
               default: D_ssd = 8'b11111111;
        endcase
 
            
   always@(posedge clk or posedge rst_n)
       if (rst_n)
            d <= 4'b0000;
       else
            d <= 4'b1110;
            
endmodule
