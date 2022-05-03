`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/14 15:24:06
// Design Name: 
// Module Name: decoder12
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


module decoder12(
    input [3:0]binary,
    input pm,
    output reg [7:0]D_ssd
    );
    always@*
    if (pm)
        begin
            case(binary)
                4'd0: D_ssd = 8'b00000010;
                4'd1: D_ssd = 8'b10011110;
                4'd2: D_ssd = 8'b00100100;
                4'd3: D_ssd = 8'b00001100;
                4'd4: D_ssd = 8'b10011000;
                4'd5: D_ssd = 8'b01001000;
                4'd6: D_ssd = 8'b01000000;
                4'd7: D_ssd = 8'b00011110;
                4'd8: D_ssd = 8'b00000000;
                default: D_ssd = 8'b00001000;
            endcase
        end
    else 
        begin
                case(binary)
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
