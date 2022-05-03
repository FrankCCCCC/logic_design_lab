`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/05/03 09:32:02
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
    input [8:0] last_change,
    output reg led_state
    );
    reg state = 1'b0;
    reg next_state;
    reg [7:0]tmp;
    
    always @(posedge clk)
        begin
            tmp = last_change;
            case (state)
            1'b0:
                if ((key_down[last_change]==1'b1) && (key_valid==1'b1) && (tmp == 8'b01011000))
                    begin
                        next_state <= 1'b1;
                        led_state <= 1'b1;
                    end
                else
                    begin
                        next_state <= 1'b0;
                        led_state <= 1'b0;
                    end
            1'b1:
                if ((key_down[last_change]==1'b1) && (key_valid==1'b1) && (tmp == 8'b01011000))
                    begin
                        next_state <= 1'b0;
                        led_state <= 1'b0;
                    end
                else
                    begin
                        next_state <= 1'b1;
                        led_state <= 1'b1;
                    end
            endcase
        end
        
    always @*
            state <= next_state;        
            
endmodule
