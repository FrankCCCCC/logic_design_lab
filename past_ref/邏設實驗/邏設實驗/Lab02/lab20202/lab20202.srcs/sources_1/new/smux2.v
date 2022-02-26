`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/02 05:25:22
// Design Name: 
// Module Name: smux2
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


module BCD_ssd(
    input [3:0]i,
    output reg [3:0]d,
    output reg [7:0]D_ssd
    );
 always@*
  begin
    d=i;
    D = 4'd0000;
    case(i)
        4'd0: D_ssd = 8'b00000011;
        4'd1: D_ssd = 8'b10011111;
        4'd2: D_ssd = 8'b00100101;
        4'd3: D_ssd = 8'b00001101;
        4'd4: D_ssd = 8'b10011001;
        4'd5: D_ssd = 8'b01001001;
        4'd6: D_ssd = 8'b01000001;
        4'd7: D_ssd = 8'b00011111;
        4'd8: D_ssd = 8'b00000001;
        4'd9: D_ssd = 8'b00001001;
        default: D_ssd = 8'b01110001; 
    endcase
  end       
endmodule

