//`define MODE_BITS_N 2
//`define STATIC `MODE_BITS_N'd0
//`define V_SCROLL `MODE_BITS_N'd1
//`define H_SCROLL `MODE_BITS_N'd2
//module mem_addr_gen
//#(
//    parameter CNT_BITS_N = 10,
//    parameter PX_ADDR_BITS_N = 17,
//    parameter WIDTH = 640,
//    parameter HEIGHT = 480
//)
//(
//   input clk,
//   input rst,
//   input [`MODE_BITS_N-1:0] mode,
//   input [CNT_BITS_N-1:0] h_cnt,
//   input [CNT_BITS_N-1:0] v_cnt,
//   output reg [PX_ADDR_BITS_N-1:0] pixel_addr
//);
    
//   reg [CNT_BITS_N-1:0] position;
//   wire [CNT_BITS_N-1:0] W_HALF = WIDTH>>1;
//   wire [CNT_BITS_N-1:0] H_HALF = HEIGHT>>1;
//   wire [PX_ADDR_BITS_N-1:0] H_AREA = WIDTH * HEIGHT >> 2;
//   wire [CNT_BITS_N-1:0] h_h_cnt = h_cnt >> 1;
//   wire [CNT_BITS_N-1:0] h_v_cnt = v_cnt >> 1;
   
//   always@(*) begin
//        if(mode == `STATIC) begin
//            pixel_addr = h_h_cnt + W_HALF * h_v_cnt % PX_ADDR_BITS_N;
//        end if(mode == `H_SCROLL) begin
//            pixel_addr = ((h_h_cnt + position) % W_HALF + W_HALF * h_v_cnt) % PX_ADDR_BITS_N;  //640*480 --> 320*240
//        end if(mode == `V_SCROLL) begin
//            pixel_addr = (h_h_cnt + W_HALF * h_v_cnt + position * W_HALF)% PX_ADDR_BITS_N;  //640*480 --> 320*240
//        end
//   end

//   always @ (posedge clk or posedge rst) begin
//        if(rst) begin
//            position <= 0;
//       end else if(position < (H_HALF - 1) && mode == `V_SCROLL) begin
//            position <= position + 1;
//       end else if(position < (W_HALF - 1) && mode == `H_SCROLL) begin
//            position <= position + 1;
//       end else begin
//            position <= 0;
//       end
//   end
    
//endmodule

`define MODE_BITS_N 2

module mem_addr_gen
#(
    parameter CNT_BITS_N = 10,
    parameter PX_ADDR_BITS_N = 17,
    parameter WIDTH = 640,
    parameter HEIGHT = 480
)
(
   input clk,
   input rst,
   input [`MODE_BITS_N-1:0] mode,
   input [CNT_BITS_N-1:0] h_cnt,
   input [CNT_BITS_N-1:0] v_cnt,
   output [PX_ADDR_BITS_N-1:0] pixel_addr
);
    
   reg [CNT_BITS_N-1:0] position;
  
//   assign pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1)+ position*320 )% 76800;  //640*480 --> 320*240 
    assign pixel_addr = (((h_cnt >> 1) + position) % (WIDTH>>1) + (WIDTH>>1) * (v_cnt >> 1)) % (WIDTH*HEIGHT>>1);  //640*480 --> 320*240

   always @ (posedge clk or posedge rst) begin
        if(rst)
            position <= 0;
//       else if(position < 239)
        else if(position < (WIDTH>>1-1))
           position <= position + 1;
        else
           position <= 0;
   end
    
endmodule
