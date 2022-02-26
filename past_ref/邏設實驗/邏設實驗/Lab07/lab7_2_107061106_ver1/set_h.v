`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/21 01:22:28
// Design Name: 
// Module Name: set
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


module set_h(
    input clk,
    input rst_n,
    input setting,
    input set_ctl,
    output reg [3:0]set_one,
    output reg [3:0]set_ten
    );
    
    always@ (posedge clk or posedge rst_n)
        if (rst_n)
            {set_ten, set_one} <= 8'b0;
        else if (setting)
            if (set_ctl)
                if (set_one == 4'd3 && set_ten == 4'd2)
                    begin
                        set_one <= 4'd0;
                        set_ten <= 4'd0;
                    end
                else if (set_one == 4'd9)
                        begin
                            set_one <= 4'd0;
                            set_ten <= set_ten + 4'd1;
                        end
                else 
                    begin
                        set_one <= set_one + 4'd1;
                        set_ten <= set_ten;
                    end
            else
                begin
                    set_one <= set_one;
                    set_ten <= set_ten;
                end
        else
            begin
                set_one <= set_one;
                set_ten <= set_ten;
            end
               
endmodule
