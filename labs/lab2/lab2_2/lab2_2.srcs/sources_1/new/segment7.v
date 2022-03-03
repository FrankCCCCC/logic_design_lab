`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2022 10:12:07 PM
// Design Name: 
// Module Name: segment7
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


module segment7(
    input [3:0] i,
    output [3:0]P,
    output [7:0]D
    );
    
    reg [7:0]D;
    
    assign P = ~4'b0001;
    always@(i)
        case(i)
            4'd0: D=8'b0000001_1;
            4'd1: D=8'b1001111_1;
            4'd2: D=8'b0010010_1;
            4'd3: D=8'b0000110_1;
            4'd4: D=8'b1001100_1;
            4'd5: D=8'b0100100_1;
            4'd6: D=8'b0100000_1;
            4'd7: D=8'b0001111_1;
            4'd8: D=8'b0000000_1;
            4'd9: D=8'b0000100_1;
            4'd10: D=8'b0001000_1;
            4'd11: D=8'b1100000_1;
            4'd12: D=8'b0110001_1;
            4'd13: D=8'b1000010_1;
            4'd14: D=8'b0110000_1;
            4'd15: D=8'b0111000_1;
            default: D= 8'b0111000_1;
        endcase
        
endmodule
