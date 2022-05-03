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
    input [8:0]last_change,
    input [511:0] key_down,
    output reg [6:0] led,
    input key_valid,
    input clk,
    input shift_state
    );
    
    always@(posedge clk or posedge rst)
        if(rst)
            led <= 7'd0;
        else
            if((state == 1'b0) && (shift_state == 1'b0))
                case(char)
                    5'd1:led <= 7'd97;
                    5'd2:led <= 7'd98;
                    5'd3:led <= 7'd99;
                    5'd4:led <= 7'd100;
                    5'd5:led <= 7'd101;
                    5'd6:led <= 7'd102;
                    5'd7:led <= 7'd103;
                    5'd8:led <= 7'd104;
                    5'd9:led <= 7'd105;
                    5'd10:led <= 7'd106;
                    5'd11:led <= 7'd107;
                    5'd12:led <= 7'd108;
                    5'd13:led <= 7'd109;
                    5'd14:led <= 7'd110;      
                    5'd15:led <= 7'd111;
                    5'd16:led <= 7'd112;
                    5'd17:led <= 7'd113;
                    5'd18:led <= 7'd114;
                    5'd19:led <= 7'd115;
                    5'd20:led <= 7'd116;
                    5'd21:led <= 7'd117;
                    5'd22:led <= 7'd118;
                    5'd23:led <= 7'd119;
                    5'd24:led <= 7'd120;
                    5'd25:led <= 7'd121;
                    5'd26:led <= 7'd122;
                    default : led <= 7'd0;
                endcase
            else if ((state == 1'b1) && (shift_state == 1'b0))
                case(char)
                    5'd1:led <= 7'd65;
                    5'd2:led <= 7'd66;
                    5'd3:led <= 7'd67;
                    5'd4:led <= 7'd68;
                    5'd5:led <= 7'd69;
                    5'd6:led <= 7'd70;
                    5'd7:led <= 7'd71;
                    5'd8:led <= 7'd72;
                    5'd9:led <= 7'd73;
                    5'd10:led <= 7'd74;
                    5'd11:led <= 7'd75;
                    5'd12:led <= 7'd76;
                    5'd13:led <= 7'd77;
                    5'd14:led <= 7'd78;      
                    5'd15:led <= 7'd79;
                    5'd16:led <= 7'd80;
                    5'd17:led <= 7'd81;
                    5'd18:led <= 7'd82;
                    5'd19:led <= 7'd83;
                    5'd20:led <= 7'd84;
                    5'd21:led <= 7'd85;
                    5'd22:led <= 7'd86;
                    5'd23:led <= 7'd87;
                    5'd24:led <= 7'd88;
                    5'd25:led <= 7'd89;
                    5'd26:led <= 7'd90;
                    default : led <= 7'd0;
                endcase
            else if((state == 1'b1) && (shift_state== 1'b1))
                case(char)
                    5'd1:led <= 7'd97;
                    5'd2:led <= 7'd98;
                    5'd3:led <= 7'd99;
                    5'd4:led <= 7'd100;
                    5'd5:led <= 7'd101;
                    5'd6:led <= 7'd102;
                    5'd7:led <= 7'd103;
                    5'd8:led <= 7'd104;
                    5'd9:led <= 7'd105;
                    5'd10:led <= 7'd106;
                    5'd11:led <= 7'd107;
                    5'd12:led <= 7'd108;
                    5'd13:led <= 7'd109;
                    5'd14:led <= 7'd110;      
                    5'd15:led <= 7'd111;
                    5'd16:led <= 7'd112;
                    5'd17:led <= 7'd113;
                    5'd18:led <= 7'd114;
                    5'd19:led <= 7'd115;
                    5'd20:led <= 7'd116;
                    5'd21:led <= 7'd117;
                    5'd22:led <= 7'd118;
                    5'd23:led <= 7'd119;
                    5'd24:led <= 7'd120;
                    5'd25:led <= 7'd121;
                    5'd26:led <= 7'd122;
                    default : led <= 7'd0;
                endcase
            else if ((state == 1'b0) && (shift_state == 1'b1))
                case(char)
                    5'd1:led <= 7'd65;
                    5'd2:led <= 7'd66;
                    5'd3:led <= 7'd67;
                    5'd4:led <= 7'd68;
                    5'd5:led <= 7'd69;
                    5'd6:led <= 7'd70;
                    5'd7:led <= 7'd71;
                    5'd8:led <= 7'd72;
                    5'd9:led <= 7'd73;
                    5'd10:led <= 7'd74;
                    5'd11:led <= 7'd75;
                    5'd12:led <= 7'd76;
                    5'd13:led <= 7'd77;
                    5'd14:led <= 7'd78;      
                    5'd15:led <= 7'd79;
                    5'd16:led <= 7'd80;
                    5'd17:led <= 7'd81;
                    5'd18:led <= 7'd82;
                    5'd19:led <= 7'd83;
                    5'd20:led <= 7'd84;
                    5'd21:led <= 7'd85;
                    5'd22:led <= 7'd86;
                    5'd23:led <= 7'd87;
                    5'd24:led <= 7'd88;
                    5'd25:led <= 7'd89;
                    5'd26:led <= 7'd90;
                    default : led <= 7'd0;
                endcase

endmodule
