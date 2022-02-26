module lab11_2(
  input clk,
  input rst,
  inout wire PS2_DATA,
  inout wire PS2_CLK,
  output [3:0] vgaRed,
  output [3:0] vgaGreen,
  output [3:0] vgaBlue,
  output hsync,
  output vsync
);

wire [511:0]key_down;
wire [8:0] last_change;
wire key_valid;
wire [2:0] state;
wire [13:0] value;
wire [3:0] calculate;
wire [3:0] in0,in1,in2,in3;
wire [3:0] out0,out1,out2,out3;
wire [3:0]sign;
wire [3:0] result;
wire clk_25MHz;
wire valid;
wire [9:0] h_cnt; //640
wire [9:0] v_cnt;  //480
wire [9:0] border;

KeyboardDecoder U_KeyboardDecoder(
    .key_down(key_down),
    .last_change(last_change),
    .key_valid(key_valid),
    .PS2_DATA(PS2_DATA),
    .PS2_CLK(PS2_CLK),
    .rst(rst),
    .clk(clk)
    );

fsm U_fsm(///////////
    .clk(clk),
    .rst(rst),
    .key_valid(key_valid),
    .key_down(key_down),
    .last_change(last_change),
    .calculate(calculate),
    .in0(in0),
    .in1(in1),
    .in2(in2),
    .in3(in3),
    .sign(sign),
    .value(value),
    .state(state)
   );

value U_bcdDecoder(
    .in(value),
    .out0(out0),
    .out1(out1),
    .out2(out2),
    .out3(out3)
    );

clock_divisor clk_wiz_0_inst(
  .clk(clk),
  .clk1(clk_25MHz)
);

border U_border(///////
     .h_cnt(h_cnt),
     .calculate(calculate),
     .in0(in0),
     .in1(in1),
     .in2(in2),
     .in3(in3),
     .sign(sign),
     .out0(out0),
     .out1(out1),
     .out2(out2),
     .out3(out3),
     .border(border),
     .result(result)
     );

pixel_gen pixel_gen_inst(////////
  .result(result),
  .border(border),
  .h_cnt(h_cnt),
  .v_cnt(v_cnt),
  .valid(valid),
  .vgaRed(vgaRed),
  .vgaGreen(vgaGreen),
  .vgaBlue(vgaBlue)
);

vga_controller   vga_inst(
  .pclk(clk_25MHz),
  .reset(rst),
  .hsync(hsync),
  .vsync(vsync),
  .valid(valid),
  .h_cnt(h_cnt),
  .v_cnt(v_cnt)
);
      
endmodule

