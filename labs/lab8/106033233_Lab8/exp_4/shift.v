`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/05/03 21:47:41
// Design Name: 
// Module Name: fsm_shift
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


module shift(
    input clk,
    input key_valid,
    input [511:0] key_down,
    input [8:0] last_change,
    output reg shift_state
    );
    
    reg state = 1'b0;
    reg next_state;
    reg [7:0]tmp;
    
    always @(posedge clk)
        begin
            tmp = last_change;
            case (state)
                1'b0:
                    if ((key_valid==1'b1) && (tmp == 8'b00010010))
                        begin
                            next_state <= 1'b1;
                            shift_state <= 1'b1;
                        end
                    else 
                        begin
                            next_state <= 1'b0;
                            shift_state <= 1'b0;
                        end
                1'b1:
                    if ((key_valid==1'b1) && (tmp == 8'b00010010))
                        begin
                            next_state <= 1'b0;
                            shift_state <= 1'b0;
                        end
                    else 
                        begin
                            next_state <= 1'b1;
                            shift_state <= 1'b1;
                        end
            endcase
        end
        
    always @*
            state <= next_state;  
                  
endmodule
