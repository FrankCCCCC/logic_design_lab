`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/04/28 10:30:58
// Design Name: 
// Module Name: fsm
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


module fsm(
    input clk,
    input key_valid,
    input [511:0] key_down,
    input [7:0] last_change,
    input rst,
    output  reg [4:0] in0,in1,in2,in3,
    output reg [3:0]sign,
    output reg [13:0] value,
    output reg [2:0] state,
    output reg [3:0] calculate
    );
    reg [2:0]next_state;
    
    always @(posedge clk)
        case (state)
        3'b000:
        if (key_down[last_change] && key_valid)
        begin
            next_state = 3'b001;
            case(last_change)
             8'b01110000:in0 = 4'd0;
             8'b01101001:in0 = 4'd1;
             8'b01110010:in0 = 4'd2;
             8'b01111010:in0 = 4'd3;
             8'b01101011:in0 = 4'd4;
             8'b01110011:in0 = 4'd5;
             8'b01110100:in0 = 4'd6;
             8'b01101100:in0 = 4'd7;
             8'b01110101:in0 = 4'd8;
             8'b01111101:in0 = 4'd9;
             default:in0 = 4'd0;
             endcase
        end
        else begin
            next_state <= 3'b000;
            in0 <= in0;
        end
        3'b001:
        if (key_down[last_change] && key_valid)
               begin
                   next_state = 3'b010;
                   case(last_change)
                    8'b01110000:in1 = 4'd0;
                    8'b01101001:in1 = 4'd1;
                    8'b01110010:in1 = 4'd2;
                    8'b01111010:in1 = 4'd3;
                    8'b01101011:in1 = 4'd4;
                    8'b01110011:in1 = 4'd5;
                    8'b01110100:in1 = 4'd6;
                    8'b01101100:in1 = 4'd7;
                    8'b01110101:in1 = 4'd8;
                    8'b01111101:in1 = 4'd9;
                    default : in1 = 4'd0;
                    endcase
               end
               else begin
                   next_state <= 3'b001;
                   in1 <= in1;
               end
        3'b010:
        if (key_down[last_change] && key_valid)
            begin
                next_state <= 3'b011;
                case(last_change)
                     8'b01111001:calculate = 4'd10;
                     8'b01111011:calculate = 4'd11;
                     8'b01111100:calculate = 4'd12;
                     default : calculate = 4'd0;
                     endcase              
            end 
            else begin
                next_state <= 3'b010;
                calculate <= calculate;
            end        
            3'b011:
            if (key_down[last_change] && key_valid)
                 begin
                 next_state = 3'b100;
                 case(last_change)
                 8'b01110000:in2 = 4'd0;
                 8'b01101001:in2 = 4'd1;
                 8'b01110010:in2 = 4'd2;
                 8'b01111010:in2 = 4'd3;
                 8'b01101011:in2 = 4'd4;
                 8'b01110011:in2 = 4'd5;
                 8'b01110100:in2 = 4'd6;
                 8'b01101100:in2 = 4'd7;
                 8'b01110101:in2 = 4'd8;
                 8'b01111101:in2 = 4'd9;
                 default : in2 = 4'd0;
                 endcase
                 end
            else begin
                next_state <= 3'b011;
                in2 <= in2;
            end
            
            3'b100:
            if (key_down[last_change] && key_valid)
                begin
                next_state = 3'b101;
                case(last_change)
                8'b01110000:in3 = 4'd0;
                8'b01101001:in3 = 4'd1;
                8'b01110010:in3 = 4'd2;
                8'b01111010:in3 = 4'd3;
                8'b01101011:in3 = 4'd4;
                8'b01110011:in3 = 4'd5;
                8'b01110100:in3 = 4'd6;
                8'b01101100:in3 = 4'd7;
                8'b01110101:in3 = 4'd8;
                8'b01111101:in3 = 4'd9;
                default : in3 = 4'd0;
                endcase
                end
             else begin
                next_state <= 3'b100;
                in3 <= in3;
             end
            3'b101:
            if (key_down[last_change] && key_valid)
                begin
                    next_state = 3'b000;
                    if (((in0*4'd10)+in1) >= ((in2*4'd10)+in3))
                        begin 
                            sign = 4'd0;
                            case(calculate)
                            4'd10:value = (in0*4'd10)+in1+(in2*4'd10)+in3;
                            4'd11:value = ((in0*4'd10)+in1)-((in2*4'd10)+in3);
                            4'd12:value = ((in0*4'd10)+in1)*((in2*4'd10)+in3);
                            default : value = 13'd0;
                            endcase
                        end
                    else
                        begin
                            if (calculate == 4'd11)
                                sign = 4'd11;
                            else 
                                sign = 4'd0;
                            case(calculate)
                            4'd10:value = (in0*4'd10)+in1+(in2*4'd10)+in3;
                            4'd11:value = ((in2*4'd10)+in3)-((in0*4'd10)+in1);
                            4'd12:value = ((in0*4'd10)+in1)*((in2*4'd10)+in3);
                            default : value = 13'd0;
                            endcase
                        end
                end
            else begin
                next_state <= 3'b101;
                in3 <= in3;
            end 
    endcase            
    always @*
            state <= next_state;        
    endmodule
