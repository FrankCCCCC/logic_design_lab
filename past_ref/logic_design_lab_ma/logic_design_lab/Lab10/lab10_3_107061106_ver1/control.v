`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/05/03 10:35:32
// Design Name: 
// Module Name: led_out
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


module out(
    input [4:0] char,
    input rst,
    input state,
    (* DONT_TOUCH = "1" *) input [8:0]last_change,
    (* DONT_TOUCH = "1" *) input [511:0] key_down,
    (* DONT_TOUCH = "1" *) input key_valid,
    input clk,
    input shift_state,
    output reg [3:0] sound
        );
    
    always@(posedge clk or posedge rst)
        if(rst)
            sound <= 4'd0;
        else
            if((state == 1'b0) && (shift_state == 1'b0))
                case(char)
                    5'd1:sound <= 4'd6;
                    5'd2:sound <= 4'd7;
                    5'd3:sound <= 4'd1;
                    5'd4:sound <= 4'd2;
                    5'd5:sound <= 4'd3;
                    5'd6:sound <= 4'd4;
                    5'd7:sound <= 4'd5;
                    default : sound <= 4'd0;
                endcase
            else if ((state == 1'b1) && (shift_state == 1'b0))
                case(char)
                    5'd1:sound <= 4'd8;
                    5'd2:sound <= 4'd9;
                    5'd3:sound <= 4'd10;
                    5'd4:sound <= 4'd11;
                    5'd5:sound <= 4'd12;
                    5'd6:sound <= 4'd13;
                    5'd7:sound <= 4'd14;
                    default : sound <= 7'd0;
                endcase
            else if((state == 1'b1) && (shift_state== 1'b1))
                case(char)
                    5'd1:sound <= 4'd1;
                    5'd2:sound <= 4'd2;
                    5'd3:sound <= 4'd3;
                    5'd4:sound <= 4'd4;
                    5'd5:sound <= 4'd5;
                    5'd6:sound <= 4'd6;
                    5'd7:sound <= 4'd7;
                    default : sound <= 7'd0;
                endcase
            else if ((state == 1'b0) && (shift_state == 1'b1))
                case(char)
                    5'd1:sound <= 4'd8;
                    5'd2:sound <= 4'd9;
                    5'd3:sound <= 4'd10;
                    5'd4:sound <= 4'd11;
                    5'd5:sound <= 4'd12;
                    5'd6:sound <= 4'd13;
                    5'd7:sound <= 4'd14;
                    default : sound <= 4'd0;
                endcase

endmodule
