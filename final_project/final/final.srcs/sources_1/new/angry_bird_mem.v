`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/08/2022 05:30:45 PM
// Design Name: 
// Module Name: angry_bird_mem
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

module angry_bird_mem #(
    parameter MUSIC_ADDR_BITS_N = 0,
    parameter MUSIC_DATA_BITS_N = 0
)(
    input clk,
    input rst_n,
    input [MUSIC_ADDR_BITS_N-1:0] addr,
    output reg [MUSIC_DATA_BITS_N-1:0] data
);

    localparam none = 22'd11;
    localparam m_do = 22'd382219;
    localparam m_re_b = 22'd360776;
    localparam m_re = 22'd340529;
    localparam m_mi_b = 22'd321409;
    localparam m_mi = 22'd303370;
    localparam m_fa = 22'd286344;
    localparam m_so_b = 22'd270272;
    localparam m_so = 22'd255102;
    localparam m_la_b = 22'd240789;
    localparam m_la = 22'd227272;
    localparam m_si_b = 22'd214518;
    localparam m_si = 22'd202429;
    localparam h_do = 22'd190839;
    localparam h_re_b = 22'd180384;
    localparam h_re = 22'd170068;
    localparam h_mi_b = 22'd160707;
    localparam h_mi = 22'd151515;
    localparam h_fa = 22'd143266;
    localparam h_so_b = 22'd12536;
    localparam h_so = 22'd127551;
    localparam h_la_b = 22'd120393;
    localparam h_la = 22'd113636;
    localparam h_si = 22'd107258;
    localparam h_h_do = 22'd95602;   
    localparam h_h_re = 22'd85106;   
    localparam h_h_mi = 22'd75873;   
    
    always@(*)begin
        case (addr)
            'd0: data = none;	//row_subsection
            'd1: data = none;
            'd2: data = none;//1_1
            'd3: data = h_mi;
            'd4: data = h_fa;	
            'd4: data = none;//1_2
            'd5: data = h_so;
            'd6: data = h_so;
            'd7: data = none;
            'd8: data = h_mi;
            'd9: data = h_mi;
            'd10: data = none;
            'd11: data = h_si;
            'd12: data = h_si;
            'd13: data = none;
            'd14: data = h_mi;
            'd15: data = h_fa;
            'd16: data = none;
            'd17: data = h_so;
            'd18: data = h_so;
            'd19: data = none;
            'd20: data = h_mi;
            'd21: data = h_mi;
            'd22: data = none;
            'd23: data = h_si;
            'd24: data = h_si;
            'd25: data = none;//1_3
            'd26: data = h_fa;
            'd27: data = h_fa;
            'd28: data = none;
            'd29: data = h_fa;
            'd30: data = h_so;
            'd31: data = none;
            'd32: data = h_fa;
            'd33: data = h_fa;
            'd34: data = none;
            'd35: data = h_mi;     
            'd36: data = h_mi;
            'd37: data = none;
            'd38: data = h_si;
            'd39: data = h_si;
            'd40: data = none;
            'd41: data = h_mi;
            'd42: data = h_fa;
            'd43: data = none;//1_4
            'd44: data = h_so;
            'd45: data = h_so;
            'd46: data = none;
            'd47: data = h_mi;
            'd48: data = h_mi;
            'd49: data = none;
            'd50: data = h_si;
            'd51: data = h_si;
            'd52: data = none;
            'd53: data = h_mi;
            'd54: data = h_fa;
            'd55: data = none;
            'd56: data = h_so;
            'd57: data = h_so;
            'd58: data = none;
            'd59: data = h_mi;
            'd60: data = h_mi;
            'd61: data = none;
            'd62: data = h_si;
            'd63: data = h_si;
            'd64: data = none;//2_1
            'd65: data = h_si;
            'd66: data = h_h_do;
            'd67: data = none;
            'd68: data = h_si;
            'd69: data = h_la;
            'd70: data = none;
            'd71: data = h_so;
            'd72: data = h_so;
            'd73: data = none;
            'd74: data = h_so;
            'd75: data = h_fa;
            'd76: data = none;
            'd77: data = h_mi;
            'd78: data = h_mi;
            'd79: data = none;
            'd80: data = h_mi;
            'd81: data = h_fa;
            'd82: data = none;//2_2
            'd83: data = h_so;
            'd84: data = h_so;
            'd85: data = none;
            'd86: data = h_mi;
            'd87: data = h_mi;
            'd88: data = none;
            'd89: data = h_so;
            'd90: data = m_la;
            'd91: data = none;
            'd92: data = h_si;
            'd93: data = h_si;
            'd94: data = none;
            'd95: data = h_mi;
            'd96: data = h_mi;
            'd97: data = none;
            'd98: data = h_si;
            'd99: data = h_h_do;   
            'd100: data = none;//2_3
            'd101: data = h_h_re;
            'd102: data = h_h_do;     
            'd103: data = none;
            'd104: data = h_h_re;
            'd105: data = h_h_do;
            'd106: data = none;
            'd107: data = h_h_re;
            'd108: data = h_h_mi;
            'd109: data = none;
            'd110: data = h_h_re;
            'd111: data = h_h_do;
            'd112: data = none;
            'd113: data = h_si;
            'd114: data = h_si;
            'd115: data = none;
            'd116: data = h_la;
            'd117: data = h_la;
            'd118: data = none;
            'd119: data = h_si;
            'd120: data = h_si;
            'd121: data = none;
            'd122: data = h_mi;
            'd123: data = h_fa;
            'd124: data = none;//2_4
            'd125: data = h_so;
            'd126: data = h_so;
            'd127: data = none;
            'd128: data = h_mi;
            'd129: data = h_mi;
            'd130: data = none;
            'd131: data = h_so;
            'd132: data = h_la;
            'd133: data = none;
            'd134: data = h_si;
            'd135: data = h_si;     
            'd136: data = none;
            'd137: data = h_mi;
            'd138: data = h_mi;
            'd139: data = none;
            'd140: data = h_si;
            'd141: data = h_h_do;
            'd142: data = none;//3_1
            'd143: data = h_h_re;
            'd144: data = h_h_do;
            'd145: data = none;
            'd146: data = h_h_re;
            'd147: data = h_h_do;
            'd148: data = none;
            'd149: data = h_h_re;
            'd150: data = h_h_mi;
            'd151: data = none;
            'd152: data = h_h_re;
            'd153: data = h_h_do;
            'd154: data = none;
            'd155: data = h_si;
            'd156: data = h_si;
            'd157: data = none;
            'd158: data = h_si;
            'd159: data = h_h_do;
            'd160: data = none;//3_2
            'd161: data = h_h_re;
            'd162: data = h_h_re;
            'd163: data = none;
            'd164: data = h_h_re;
            'd165: data = h_h_re;
            'd166: data = none;
            'd167: data = h_h_re;
            'd168: data = h_h_re;
            'd169: data = none;
            'd170: data = h_h_re;
            'd171: data = h_h_re;
            'd172: data = none;
            'd173: data = h_h_re;
            'd174: data = h_h_mi;
            'd175: data = none;
            'd176: data = h_h_re;
            'd177: data = h_h_do;
            'd178: data = none;
            'd179: data = h_h_re;
            'd180: data = h_h_re;
            'd181: data = none;
            'd182: data = h_si;
            'd183: data = h_si;
            'd184: data = none;//3_3
            'd185: data = h_h_re;
            'd186: data = h_h_re;
            'd187: data = none;
            'd188: data = h_si;
            'd189: data = h_si;
            'd190: data = none;
            'd191: data = h_h_re;
            'd192: data = h_h_re;
            'd193: data = none;
            'd194: data = h_si;
            'd195: data = h_h_do;
            'd196: data = none;
            'd197: data = h_si;
            'd198: data = h_si;
            'd199: data = none;
            'd200: data = h_mi;
            'd201: data = h_mi;
            'd202: data = none;
            'd203: data = h_si;
            'd204: data = h_si;
            'd205: data = none;
            'd206: data = h_h_do;
            'd207: data = h_h_do;
            'd208: data = none;//3_4
            'd209: data = h_h_re;
            'd300: data = h_h_re;
            'd301: data = none;
            'd302: data = h_h_re;
            'd303: data = h_h_re;
            'd304: data = none;
            'd305: data = h_h_re;
            'd306: data = h_h_re;
            'd307: data = none;
            'd308: data = h_h_re;
            'd309: data = h_h_re;
            'd310: data = none;
            'd311: data = h_h_re;
            'd312: data = h_h_mi;
            'd313: data = none;
            'd314: data = h_h_re;
            'd315: data = h_h_do;
            'd316: data = none;
            'd317: data = h_h_re;
            'd318: data = h_h_re;
            'd319: data = none;
            'd311: data = h_si;
            'd312: data = h_h_do;   
            'd313: data = none;
            'd314: data = none;
            'd315: data = none;  
        default:
            data = 'd0;
        endcase
    end
      
endmodule
