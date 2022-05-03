`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/05/11 19:54:38
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
`define STATE_COUNT 1'b1
`define STATE_PAUSE 1'b0
`define ENABLED 1 
`define DISABLED 0 

module fsm(
    input clk,
    input rst,
    input en,
    output count_enable
    );
    
    reg count_enable;
    reg state;
    reg next_state;
    
    always@(*)
        case(state)
            `STATE_PAUSE:
                if(en)
                begin
                    next_state=`STATE_COUNT;
                    count_enable=`ENABLED;
                end
                else
                begin
                    next_state=`STATE_PAUSE;
                    count_enable=`DISABLED;
                end
            `STATE_COUNT:
                if(en)
                begin
                    next_state=`STATE_PAUSE;
                    count_enable=`DISABLED;
                end
                else
                begin
                    next_state=`STATE_COUNT;
                    count_enable=`ENABLED;
                end
            default:
            begin
                next_state=`STATE_PAUSE;
                count_enable=`DISABLED;
            end
        endcase
        
    always@(posedge clk or posedge rst)
        if(rst)
            state<=`STATE_PAUSE;
        else
            state<=next_state;
                          
endmodule
