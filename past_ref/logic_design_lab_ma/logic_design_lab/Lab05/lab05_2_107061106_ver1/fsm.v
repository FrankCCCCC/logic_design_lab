`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/23 22:37:48
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
    input rst_n,
    input in,
    output reg count_en,
    output reg state
    );
    reg next_state;
    
    always@*
        case(state)
            1'b0:
                if(in == 1'b1)
                    begin
                        next_state = 1'b1;
                        count_en = 1'b1;
                    end
                else 
                    begin
                        next_state = 1'b0;
                        count_en = 1'b0;
                    end
            1'b1:
                if(in == 1'b1)
                    begin
                        next_state = 1'b0;
                        count_en = 1'b0;
                    end
                else
                    begin
                        next_state = 1'b1;
                        count_en = 1'b1;
                    end
            default:
                begin
                    next_state = 1'b0;
                    count_en = 1'b0;
                end
        endcase
        
        always@(posedge clk or posedge rst_n)
            if(rst_n)
                state <= 1'b0;
            else
                state <= next_state;
                
endmodule
