`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/04 18:21:00
// Design Name: 
// Module Name: smux3
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


module smux3(
    input [3:0]i,
    output reg [3:0]d,
    output reg [7:0]D
    );
    
    always@*
    begin
      d=i;
      case(i)
          4'd0: D = 8'b00000011;
          4'd1: D = 8'b10011111;
          4'd2: D = 8'b00100101;
          4'd3: D = 8'b00001101;
          4'd4: D = 8'b10011001;
          4'd5: D = 8'b01001001;
          4'd6: D = 8'b01000001;
          4'd7: D = 8'b00011111;
          4'd8: D = 8'b00000001;
          4'd9: D = 8'b00001001;
          4'd10: D = 8'b00010001;
          4'd11: D = 8'b11000001;
          4'd12: D = 8'b01100011;
          4'd13: D = 8'b10000101;
          4'd14: D = 8'b01100001;
          default: D = 8'b01110001; 
       endcase
     end       
endmodule
