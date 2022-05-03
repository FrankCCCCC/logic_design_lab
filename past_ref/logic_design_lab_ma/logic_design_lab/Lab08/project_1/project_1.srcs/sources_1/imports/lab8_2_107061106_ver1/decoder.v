`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/14 13:42:01
// Design Name: 
// Module Name: decoder
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


module decoder(
    input [3:0]binary,
    output reg [7:0]D_ssd,
    output reg [7:0]D_ssd_ten
    );
        
    always@*
        if (binary > 9)
                D_ssd_ten = 8'b10011111;
        else 
                D_ssd_ten = 8'b00000011;
            
            
    always@*
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
                4'd9: D_ssd = 8'b00001001;
                4'd10: D_ssd = 8'b00000011;
                4'd11: D_ssd = 8'b10011111;
                4'd12: D_ssd = 8'b00100101;
                4'd13: D_ssd = 8'b00001101;
                4'd14: D_ssd = 8'b10011001;
                default: D_ssd = 8'b01001001;
                
        endcase
    end 
endmodule
