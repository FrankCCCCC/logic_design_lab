`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/20 00:24:05
// Design Name: 
// Module Name: count
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


module count(
    input clk,
    input key_valid,
    input [511:0]key_down,
    input [8:0]last_change,
    input rst_n,
    output reg [4:0] in0, in1, in2, in3,
    output reg [13:0]value,
    output reg [2:0]state
    );
    reg [2:0]next_state;
    reg [3:0]calculate;
    
    always@(posedge clk or posedge rst_n)
    if (rst_n)
        begin
            in0 <= 4'd0;
            in1 <= 4'd0;
            calculate <= 4'd0;
            in2 <= 4'd0;
            in3 <= 4'd0;
        end
    else
        case(state)
            3'b000:
                if(key_down[last_change] && key_valid)
                    begin
                        next_state = 3'b001;
                        case(last_change)
                            9'b001110000: in0 = 4'd0;
                            9'b001101001: in0 = 4'd1;
                            9'b001110010: in0 = 4'd2;
                            9'b001111010: in0 = 4'd3;
                            9'b001101011: in0 = 4'd4;
                            9'b001110011: in0 = 4'd5;
                            9'b001110100: in0 = 4'd6;
                            9'b001101100: in0 = 4'd7;
                            9'b001110101: in0 = 4'd8;
                            9'b001111101: in0 = 4'd9;
                            default: in0 = 4'd0;
                        endcase
                    end
                else
                    begin
                        next_state <= 3'b000;
                        in0 <= in0;
                    end
            3'b001:
                if (key_down[last_change] && key_valid)
                    begin
                        next_state = 3'b010;
                        case(last_change)
                            9'b001110000: in1 = 4'd0;
                            9'b001101001: in1 = 4'd1;
                            9'b001110010: in1 = 4'd2;
                            9'b001111010: in1 = 4'd3;
                            9'b001101011: in1 = 4'd4;
                            9'b001110011: in1 = 4'd5;
                            9'b001110100: in1 = 4'd6;
                            9'b001101100: in1 = 4'd7;
                            9'b001110101: in1 = 4'd8;
                            9'b001111101: in1 = 4'd9;
                            default: in1 = 4'd0;
                        endcase
                    end
                else
                    begin
                        next_state <= 3'b001;
                        in1 <= in1;
                    end
            3'b010:
                if (key_down[last_change] && key_valid)
                    begin
                        next_state <= 3'b011;
                        case(last_change)
                            9'b001111001: calculate = 4'd0;
                            9'b001111011: calculate = 4'd1;
                            9'b001111100: calculate = 4'd2;
                            default: calculate = 4'd0;
                        endcase
                    end
                else
                    begin
                        next_state <= 3'b010;
                        calculate <= calculate;
                    end
            3'b011:
                if(key_down[last_change] && key_valid)
                    begin
                        next_state = 3'b100;
                        case(last_change)
                            9'b001110000: in2 = 4'd0;
                            9'b001101001: in2 = 4'd1;
                            9'b001110010: in2 = 4'd2;
                            9'b001111010: in2 = 4'd3;
                            9'b001101011: in2 = 4'd4;
                            9'b001110011: in2 = 4'd5;
                            9'b001110100: in2 = 4'd6;
                            9'b001101100: in2 = 4'd7;
                            9'b001110101: in2 = 4'd8;
                            9'b001111101: in2 = 4'd9;
                            default: in2 = 4'd0;
                        endcase
                    end
                else
                    begin
                        next_state <= 3'b011;
                        in2 <= in2;
                    end
            3'b100:
                if(key_down[last_change] && key_valid)
                    begin
                        next_state = 3'b101;
                        case(last_change)
                            9'b001110000: in3 = 4'd0;
                            9'b001101001: in3 = 4'd1;
                            9'b001110010: in3 = 4'd2;
                            9'b001111010: in3 = 4'd3;
                            9'b001101011: in3 = 4'd4;
                            9'b001110011: in3 = 4'd5;
                            9'b001110100: in3 = 4'd6;
                            9'b001101100: in3 = 4'd7;
                            9'b001110101: in3 = 4'd8;
                            9'b001111101: in3 = 4'd9;
                            default: in3 = 4'd0;
                        endcase
                    end
                else
                    begin
                        next_state <= 3'b100;
                        in3 <= in3;
                    end                    
            3'b101:
                if (key_down[last_change] && key_valid)
                    begin
                        next_state = 3'b000;
                        case(calculate)
                            4'd0:value = (in0*4'd10)+in1+(in2*4'd10)+in3;
                            4'd1:value = (in0*4'd10)+in1-(in2*4'd10)-in3;
                            4'd2:value = ((in0*4'd10)+in1)*((in2*4'd10)+in3);
                            default : value = 14'd0;
                        endcase
                    end
                else 
                    begin
                        next_state <= 3'b101;
                        in3 <= in3;
                    end 
        endcase                
        
        always@*
            state <= next_state;                        
endmodule
