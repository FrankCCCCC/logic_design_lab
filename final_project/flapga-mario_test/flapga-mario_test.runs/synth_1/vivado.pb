
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:052default:default2
00:00:062default:default2
425.1292default:default2
123.1022default:defaultZ17-268h px? 
y
Command: %s
53*	vivadotcl2H
4synth_design -top flapga_mario -part xc7a35tcpg236-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px? 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px? 
?
%s*synth2?
xStarting RTL Elaboration : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 948.250 ; gain = 233.656
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2 
flapga_mario2default:default2
 2default:default2^
HD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/flapga_mario.v2default:default2
12default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter LAYERS bound to: 3 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter GAME_BEGIN_DELAY bound to: 500000000 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2 
clock_normal2default:default2
 2default:default2[
ED:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/clock_div.v2default:default2
282default:default8@Z8-6157h px? 
e
%s
*synth2M
9	Parameter MAX_COUNT bound to: 99999999 - type: integer 
2default:defaulth p
x
? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
	clock_reg2default:default2 
clock_normal2default:default2[
ED:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/clock_div.v2default:default2
432default:default8@Z8-5788h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
clock_normal2default:default2
 2default:default2
12default:default2
12default:default2[
ED:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/clock_div.v2default:default2
282default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
vga_sync2default:default2
 2default:default2Z
DD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/vga_sync.v2default:default2
22default:default8@Z8-6157h px? 
`
%s
*synth2H
4	Parameter DISPLAY_H bound to: 640 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter DISPLAY_V bound to: 480 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter BORDER_LEFT bound to: 48 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter BORDER_RIGHT bound to: 16 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter BORDER_TOP bound to: 10 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter BORDER_BOTTOM bound to: 33 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter RETRACE_H bound to: 96 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter RETRACE_V bound to: 2 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter H_MAX bound to: 799 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter V_MAX bound to: 524 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter H_RETRACE_START bound to: 656 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter H_RETRACE_END bound to: 751 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter V_RETRACE_START bound to: 513 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter V_RETRACE_END bound to: 514 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
vga_sync2default:default2
 2default:default2
22default:default2
12default:default2Z
DD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/vga_sync.v2default:default2
22default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
display2default:default2
 2default:default2Y
CD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/display.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
	clock_div2default:default2
 2default:default2[
ED:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/clock_div.v2default:default2
22default:default8@Z8-6157h px? 
b
%s
*synth2J
6	Parameter MAX_COUNT bound to: 49999 - type: integer 
2default:defaulth p
x
? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
s_reg2default:default2
	clock_div2default:default2[
ED:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/clock_div.v2default:default2
202default:default8@Z8-5788h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	clock_div2default:default2
 2default:default2
32default:default2
12default:default2[
ED:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/clock_div.v2default:default2
22default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
seg_mux2default:default2
 2default:default2Y
CD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/seg_mux.v2default:default2
232default:default8@Z8-6157h px? 
?
default block is never used226*oasys2Y
CD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/seg_mux.v2default:default2
322default:default8@Z8-226h px? 
?
synthesizing module '%s'%s4497*oasys2"
bcd_7seg_anode2default:default2
 2default:default2Z
DD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/bcd_7seg.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
bcd_7seg_anode2default:default2
 2default:default2
42default:default2
12default:default2Z
DD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/bcd_7seg.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
seg_mux2default:default2
 2default:default2
52default:default2
12default:default2Y
CD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/seg_mux.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
display2default:default2
 2default:default2
62default:default2
12default:default2Y
CD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/display.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2 
audio_output2default:default2
 2default:default2\
FD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/audio_unit.v2default:default2
912default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter NOTES bound to: 80 - type: integer 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter BASS bound to: 9'b010100101 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter PLAY_DELAY bound to: 99999 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2"
wave_generator2default:default2
 2default:default2\
FD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/audio_unit.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
wave_generator2default:default2
 2default:default2
72default:default2
12default:default2\
FD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/audio_unit.v2default:default2
32default:default8@Z8-6155h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2$
music_data3[165]2default:default2 
audio_output2default:default2\
FD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/audio_unit.v2default:default2
1022default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2$
music_data3[166]2default:default2 
audio_output2default:default2\
FD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/audio_unit.v2default:default2
1022default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2$
music_data3[167]2default:default2 
audio_output2default:default2\
FD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/audio_unit.v2default:default2
1022default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2$
music_data3[168]2default:default2 
audio_output2default:default2\
FD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/audio_unit.v2default:default2
1022default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2$
music_data3[169]2default:default2 
audio_output2default:default2\
FD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/audio_unit.v2default:default2
1022default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2$
music_data3[170]2default:default2 
audio_output2default:default2\
FD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/audio_unit.v2default:default2
1022default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2$
music_data3[171]2default:default2 
audio_output2default:default2\
FD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/audio_unit.v2default:default2
1022default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2$
music_data3[172]2default:default2 
audio_output2default:default2\
FD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/audio_unit.v2default:default2
1022default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2$
music_data3[173]2default:default2 
audio_output2default:default2\
FD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/audio_unit.v2default:default2
1022default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2$
music_data3[174]2default:default2 
audio_output2default:default2\
FD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/audio_unit.v2default:default2
1022default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2$
music_data3[175]2default:default2 
audio_output2default:default2\
FD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/audio_unit.v2default:default2
1022default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2$
music_data3[176]2default:default2 
audio_output2default:default2\
FD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/audio_unit.v2default:default2
1022default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2$
music_data3[177]2default:default2 
audio_output2default:default2\
FD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/audio_unit.v2default:default2
1022default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2$
music_data3[178]2default:default2 
audio_output2default:default2\
FD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/audio_unit.v2default:default2
1022default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2$
music_data3[179]2default:default2 
audio_output2default:default2\
FD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/audio_unit.v2default:default2
1022default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2$
music_data3[180]2default:default2 
audio_output2default:default2\
FD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/audio_unit.v2default:default2
1022default:default8@Z8-3848h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
audio_output2default:default2
 2default:default2
82default:default2
12default:default2\
FD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/audio_unit.v2default:default2
912default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
ram2default:default2
 2default:default2U
?D:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/ram.v2default:default2
62default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter RAM_WIDTH bound to: 9 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter RAM_DEPTH bound to: 1208 - type: integer 
2default:defaulth p
x
? 
r
%s
*synth2Z
F	Parameter RAM_PERFORMANCE bound to: HIGH_PERFORMANCE - type: string 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter INIT_FILE bound to: splash.bin - type: string 
2default:defaulth p
x
? 
?
,$readmem data file '%s' is read successfully3426*oasys2

splash.bin2default:default2U
?D:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/ram.v2default:default2
302default:default8@Z8-3876h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ram2default:default2
 2default:default2
92default:default2
12default:default2U
?D:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/ram.v2default:default2
62default:default8@Z8-6155h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
162default:default2
addrb2default:default2
112default:default2
ram2default:default2^
HD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/flapga_mario.v2default:default2
542default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
162default:default2
doutb2default:default2
92default:default2
ram2default:default2^
HD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/flapga_mario.v2default:default2
592default:default8@Z8-689h px? 
?
synthesizing module '%s'%s4497*oasys2'
ram__parameterized02default:default2
 2default:default2U
?D:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/ram.v2default:default2
62default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter RAM_WIDTH bound to: 9 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter RAM_DEPTH bound to: 1208 - type: integer 
2default:defaulth p
x
? 
r
%s
*synth2Z
F	Parameter RAM_PERFORMANCE bound to: HIGH_PERFORMANCE - type: string 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter INIT_FILE bound to: (null) - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
ram__parameterized02default:default2
 2default:default2
92default:default2
12default:default2U
?D:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/ram.v2default:default2
62default:default8@Z8-6155h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
162default:default2
addra2default:default2
112default:default2'
ram__parameterized02default:default2^
HD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/flapga_mario.v2default:default2
672default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
162default:default2
addrb2default:default2
112default:default2'
ram__parameterized02default:default2^
HD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/flapga_mario.v2default:default2
682default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
392default:default2
dina2default:default2
92default:default2'
ram__parameterized02default:default2^
HD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/flapga_mario.v2default:default2
692default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
162default:default2
doutb2default:default2
92default:default2'
ram__parameterized02default:default2^
HD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/flapga_mario.v2default:default2
732default:default8@Z8-689h px? 
?
synthesizing module '%s'%s4497*oasys2'
ram__parameterized12default:default2
 2default:default2U
?D:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/ram.v2default:default2
62default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter RAM_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter RAM_DEPTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
r
%s
*synth2Z
F	Parameter RAM_PERFORMANCE bound to: HIGH_PERFORMANCE - type: string 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter INIT_FILE bound to: (null) - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
ram__parameterized12default:default2
 2default:default2
92default:default2
12default:default2U
?D:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/ram.v2default:default2
62default:default8@Z8-6155h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
162default:default2
addra2default:default2
32default:default2'
ram__parameterized12default:default2^
HD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/flapga_mario.v2default:default2
772default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
392default:default2
dina2default:default2
322default:default2'
ram__parameterized12default:default2^
HD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/flapga_mario.v2default:default2
792default:default8@Z8-689h px? 
?
synthesizing module '%s'%s4497*oasys2
cloud_bg2default:default2
 2default:default2^
HD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/cloud_bg.hex.v2default:default2
22default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter ROM_WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter ROM_ADDR_BITS bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
"Detected attribute (* %s = "%s" *)3982*oasys2
	rom_style2default:default2
block2default:default2^
HD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/cloud_bg.hex.v2default:default2
72default:default8@Z8-5534h px? 
?
,$readmem data file '%s' is read successfully3426*oasys2 
cloud_bg.hex2default:default2^
HD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/cloud_bg.hex.v2default:default2
162default:default8@Z8-3876h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
cloud_bg2default:default2
 2default:default2
102default:default2
12default:default2^
HD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/cloud_bg.hex.v2default:default2
22default:default8@Z8-6155h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322default:default2
x2default:default2
82default:default2
cloud_bg2default:default2^
HD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/flapga_mario.v2default:default2
852default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322default:default2
y2default:default2
82default:default2
cloud_bg2default:default2^
HD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/flapga_mario.v2default:default2
852default:default8@Z8-689h px? 
?
synthesizing module '%s'%s4497*oasys2%
background_engine2default:default2
 2default:default2c
MD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/background_engine.v2default:default2
32default:default8@Z8-6157h px? 
`
%s
*synth2H
4	Parameter TILE_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter TILE_HEIGHT bound to: 16 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter TILE_COLS bound to: 40 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter TILE_ROWS bound to: 30 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
bg_rom2default:default2
 2default:default2\
FD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/bg_rom.hex.v2default:default2
22default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter ROM_WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter ROM_ADDR_BITS bound to: 14 - type: integer 
2default:defaulth p
x
? 
?
"Detected attribute (* %s = "%s" *)3982*oasys2
	rom_style2default:default2
block2default:default2\
FD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/bg_rom.hex.v2default:default2
72default:default8@Z8-5534h px? 
?
,$readmem data file '%s' is read successfully3426*oasys2

bg_rom.hex2default:default2\
FD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/bg_rom.hex.v2default:default2
162default:default8@Z8-3876h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
bg_rom2default:default2
 2default:default2
112default:default2
12default:default2\
FD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/bg_rom.hex.v2default:default2
22default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
background_engine2default:default2
 2default:default2
122default:default2
12default:default2c
MD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/background_engine.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
object_engine2default:default2
 2default:default2_
ID:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/object_engine.v2default:default2
32default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter OAM_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter OAM_DEPTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter TILE_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter TILE_HEIGHT bound to: 32 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter OAM_CACHE_DEPTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
	mario_rom2default:default2
 2default:default2[
ED:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/mario.hex.v2default:default2
22default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter ROM_WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter ROM_ADDR_BITS bound to: 12 - type: integer 
2default:defaulth p
x
? 
?
"Detected attribute (* %s = "%s" *)3982*oasys2
	rom_style2default:default2
block2default:default2[
ED:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/mario.hex.v2default:default2
72default:default8@Z8-5534h px? 
?
,$readmem data file '%s' is read successfully3426*oasys2
	mario.hex2default:default2[
ED:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/mario.hex.v2default:default2
162default:default8@Z8-3876h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	mario_rom2default:default2
 2default:default2
132default:default2
12default:default2[
ED:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/mario.hex.v2default:default2
22default:default8@Z8-6155h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
72default:default2
x2default:default2
62default:default2
	mario_rom2default:default2_
ID:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/object_engine.v2default:default2
352default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
72default:default2
y2default:default2
62default:default2
	mario_rom2default:default2_
ID:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/object_engine.v2default:default2
352default:default8@Z8-689h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
object_engine2default:default2
 2default:default2
142default:default2
12default:default2_
ID:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/object_engine.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
game_engine2default:default2
 2default:default2]
GD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/game_engine.v2default:default2
22default:default8@Z8-6157h px? 
`
%s
*synth2H
4	Parameter TILE_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter TILE_HEIGHT bound to: 16 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter TILE_COLS bound to: 40 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter TILE_ROWS bound to: 30 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter MAX_SCROLL_DELAY bound to: 1000000 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter MIN_SCROLL_DELAY bound to: 200000 - type: integer 
2default:defaulth p
x
? 
n
%s
*synth2V
B	Parameter COIN_ANIMATE_DELAY bound to: 15000000 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter COIN_SCORE bound to: 10 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter SPEED_UP_STEP bound to: 100000 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
mario2default:default2
 2default:default2W
AD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/mario.v2default:default2
22default:default8@Z8-6157h px? 
f
%s
*synth2N
:	Parameter TIME_START_Y bound to: 100000 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter TIME_STEP_Y bound to: 10000 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter TIME_MAX_Y bound to: 800000 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter TIME_TERM_Y bound to: 250000 - type: integer 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter jump_down bound to: 3'b000 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter jump_up bound to: 3'b100 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter MIN_Y bound to: 32 - type: integer 
2default:defaulth p
x
? 
?
-case statement is not full and has no default155*oasys2W
AD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/mario.v2default:default2
802default:default8@Z8-155h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2$
extra_up_reg_reg2default:default2W
AD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/mario.v2default:default2
462default:default8@Z8-6014h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mario2default:default2
 2default:default2
152default:default2
12default:default2W
AD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/mario.v2default:default2
22default:default8@Z8-6155h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322default:default2
clk2default:default2
12default:default2
mario2default:default2]
GD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/game_engine.v2default:default2
492default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82default:default2
addr2default:default2
32default:default2
mario2default:default2]
GD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/game_engine.v2default:default2
502default:default8@Z8-689h px? 
?
synthesizing module '%s'%s4497*oasys2
vga_num2default:default2
 2default:default2Y
CD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/vga_num.v2default:default2
232default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2Y
CD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/vga_num.v2default:default2
392default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
vga_num2default:default2
 2default:default2
162default:default2
12default:default2Y
CD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/vga_num.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2"
game_over_text2default:default2
 2default:default2`
JD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/game_over_text.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
game_over_text2default:default2
 2default:default2
172default:default2
12default:default2`
JD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/game_over_text.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
game_engine2default:default2
 2default:default2
182default:default2
12default:default2]
GD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/game_engine.v2default:default2
22default:default8@Z8-6155h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
162default:default2 
obj_ram_addr2default:default2
82default:default2
game_engine2default:default2^
HD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/flapga_mario.v2default:default2
882default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
392default:default2 
obj_ram_data2default:default2
322default:default2
game_engine2default:default2^
HD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/flapga_mario.v2default:default2
882default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
392default:default2
bg_ram_data2default:default2
322default:default2
game_engine2default:default2^
HD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/flapga_mario.v2default:default2
882default:default8@Z8-689h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
flapga_mario2default:default2
 2default:default2
192default:default2
12default:default2^
HD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/flapga_mario.v2default:default2
12default:default8@Z8-6155h px? 
?
+design %s has port %s driven by constant %s3447*oasys2 
flapga_mario2default:default2
dp2default:default2
12default:defaultZ8-3917h px? 
x
!design %s has unconnected port %s3331*oasys2
mario2default:default2
down2default:defaultZ8-3331h px? 
x
!design %s has unconnected port %s3331*oasys2
mario2default:default2
left2default:defaultZ8-3331h px? 
y
!design %s has unconnected port %s3331*oasys2
mario2default:default2
right2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
game_engine2default:default2
video_on2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
game_engine2default:default2
f_tick2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
background_engine2default:default2 
ram_data[15]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
background_engine2default:default2 
ram_data[14]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
background_engine2default:default2 
ram_data[13]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
background_engine2default:default2 
ram_data[12]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
background_engine2default:default2 
ram_data[11]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
background_engine2default:default2 
ram_data[10]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
background_engine2default:default2
ram_data[9]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
flapga_mario2default:default2
sw[15]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
flapga_mario2default:default2
sw[14]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
flapga_mario2default:default2
sw[13]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
flapga_mario2default:default2
sw[12]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
flapga_mario2default:default2
sw[11]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
flapga_mario2default:default2
sw[10]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
flapga_mario2default:default2
sw[9]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
flapga_mario2default:default2
sw[8]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
flapga_mario2default:default2
sw[7]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
flapga_mario2default:default2
sw[6]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
flapga_mario2default:default2
sw[5]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
flapga_mario2default:default2
sw[4]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
flapga_mario2default:default2
sw[3]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
flapga_mario2default:default2
sw[2]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
flapga_mario2default:default2
sw[1]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
flapga_mario2default:default2
sw[0]2default:defaultZ8-3331h px? 
?
%s*synth2?
yFinished RTL Elaboration : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 1063.051 ; gain = 348.457
2default:defaulth px? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1063.051 ; gain = 348.457
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1063.051 ; gain = 348.457
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.1832default:default2
1063.0512default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2\
FD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/vga_cons.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2\
FD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/vga_cons.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2Z
FD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/vga_cons.xdc2default:default22
.Xil/flapga_mario_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0052default:default2
1174.4922default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0522default:default2
1174.4922default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
Finished Constraint Validation : Time (s): cpu = 00:00:40 ; elapsed = 00:00:43 . Memory (MB): peak = 1174.492 ; gain = 459.898
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:40 ; elapsed = 00:00:43 . Memory (MB): peak = 1174.492 ; gain = 459.898
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:40 ; elapsed = 00:00:44 . Memory (MB): peak = 1174.492 ; gain = 459.898
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
iRegister %s driving address of a ROM cannot be packed in BRAM/URAM because of presence of initial value.
4359*oasys2(
note_counter_reg_rep2default:defaultZ8-6040h px? 
?
[Trying to map ROM "%s" into %s RAM due to explicit "ram_style" or "rom_style" specification4767*oasys2
rom2default:default2
Block2default:defaultZ8-7031h px? 
?
[Trying to map ROM "%s" into %s RAM due to explicit "ram_style" or "rom_style" specification4767*oasys2
rom2default:default2
Block2default:defaultZ8-7031h px? 
?
[Trying to map ROM "%s" into %s RAM due to explicit "ram_style" or "rom_style" specification4767*oasys2
rom2default:default2
Block2default:defaultZ8-7031h px? 
?
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the output of the operator4233*oasys2
adder2default:default2W
AD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/mario.v2default:default2
802default:default8@Z8-5818h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2#
state_reg_y_reg2default:default2
mario2default:defaultZ8-802h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_               jump_down |                                0 |                              000
2default:defaulth p
x
? 
?
%s
*synth2s
_                 jump_up |                                1 |                              100
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2#
state_reg_y_reg2default:default2

sequential2default:default2
mario2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:01:07 ; elapsed = 00:01:12 . Memory (MB): peak = 1174.492 ; gain = 459.898
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     20 Bit       Adders := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     17 Bit       Adders := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit       Adders := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     12 Bit       Adders := 18    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     11 Bit       Adders := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      7 Bit       Adders := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      6 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      3 Bit       Adders := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      3 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 4     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 18    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               20 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 30    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               14 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               12 Bit    Registers := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                9 Bit    Registers := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 10    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                6 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 11    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 8     
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              10K Bit         RAMs := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              256 Bit         RAMs := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---ROMs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                              ROMs := 3     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 21    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	 181 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  82 Input     29 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     29 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     20 Bit        Muxes := 11    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     16 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 55    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     16 Bit        Muxes := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     12 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      9 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit        Muxes := 41    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 15    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 13    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 12    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 126   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
? 
A
%s
*synth2)
Module flapga_mario 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     11 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               12 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     12 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      9 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
? 
A
%s
*synth2)
Module clock_normal 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 4     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
Module vga_sync 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
? 
>
%s
*synth2&
Module clock_div 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
<
%s
*synth2$
Module seg_mux 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
C
%s
*synth2+
Module wave_generator 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                9 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
A
%s
*synth2)
Module audio_output 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     12 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	 181 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  82 Input     29 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     29 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
8
%s
*synth2 
Module ram 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                9 Bit    Registers := 2     
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              10K Bit         RAMs := 1     
2default:defaulth p
x
? 
H
%s
*synth20
Module ram__parameterized0 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                9 Bit    Registers := 2     
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              10K Bit         RAMs := 1     
2default:defaulth p
x
? 
H
%s
*synth20
Module ram__parameterized1 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 2     
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              256 Bit         RAMs := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
Module cloud_bg 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               12 Bit    Registers := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---ROMs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                              ROMs := 1     
2default:defaulth p
x
? 
;
%s
*synth2#
Module bg_rom 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               14 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               12 Bit    Registers := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---ROMs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                              ROMs := 1     
2default:defaulth p
x
? 
F
%s
*synth2.
Module background_engine 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     11 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     12 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit        Muxes := 2     
2default:defaulth p
x
? 
>
%s
*synth2&
Module mario_rom 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               12 Bit    Registers := 2     
2default:defaulth p
x
? 
8
%s
*synth2 
+---ROMs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                              ROMs := 1     
2default:defaulth p
x
? 
B
%s
*synth2*
Module object_engine 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     12 Bit       Adders := 16    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      7 Bit       Adders := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               12 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 10    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit        Muxes := 36    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 22    
2default:defaulth p
x
? 
:
%s
*synth2"
Module mario 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     20 Bit       Adders := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               20 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     20 Bit        Muxes := 11    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 11    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 9     
2default:defaulth p
x
? 
<
%s
*synth2$
Module vga_num 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
C
%s
*synth2+
Module game_over_text 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
@
%s
*synth2(
Module game_engine 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     17 Bit       Adders := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit       Adders := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     12 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     11 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      6 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      3 Bit       Adders := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      3 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 26    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 4     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 13    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 51    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     16 Bit        Muxes := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 12    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 12    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 84    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
? 
?
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2(
note_counter_reg_rep2default:default2
162default:default2
72default:default2\
FD:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/audio_unit.v2default:default2
4532default:default8@Z8-3936h px? 
?
iRegister %s driving address of a ROM cannot be packed in BRAM/URAM because of presence of initial value.
4359*oasys2(
note_counter_reg_rep2default:defaultZ8-6040h px? 
?
merging register '%s' into '%s'3619*oasys2*
oam_cache_reg[0][31:0]2default:default2*
oam_cache_reg[0][31:0]2default:default2_
ID:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/object_engine.v2default:default2
392default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2*
oam_cache_reg[0][31:0]2default:default2*
oam_cache_reg[0][31:0]2default:default2_
ID:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/object_engine.v2default:default2
392default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2*
oam_cache_reg[1][31:0]2default:default2*
oam_cache_reg[1][31:0]2default:default2_
ID:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/object_engine.v2default:default2
392default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2*
oam_cache_reg[1][31:0]2default:default2*
oam_cache_reg[1][31:0]2default:default2_
ID:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/object_engine.v2default:default2
392default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2*
oam_cache_reg[2][31:0]2default:default2*
oam_cache_reg[2][31:0]2default:default2_
ID:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/object_engine.v2default:default2
392default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2*
oam_cache_reg[2][31:0]2default:default2*
oam_cache_reg[2][31:0]2default:default2_
ID:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/object_engine.v2default:default2
392default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2*
oam_cache_reg[3][31:0]2default:default2*
oam_cache_reg[3][31:0]2default:default2_
ID:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/object_engine.v2default:default2
392default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2*
oam_cache_reg[3][31:0]2default:default2*
oam_cache_reg[3][31:0]2default:default2_
ID:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/object_engine.v2default:default2
392default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2*
oam_cache_reg[4][31:0]2default:default2*
oam_cache_reg[4][31:0]2default:default2_
ID:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/object_engine.v2default:default2
392default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2*
oam_cache_reg[4][31:0]2default:default2*
oam_cache_reg[4][31:0]2default:default2_
ID:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/object_engine.v2default:default2
392default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2*
oam_cache_reg[5][31:0]2default:default2*
oam_cache_reg[5][31:0]2default:default2_
ID:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/object_engine.v2default:default2
392default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2*
oam_cache_reg[5][31:0]2default:default2*
oam_cache_reg[5][31:0]2default:default2_
ID:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/object_engine.v2default:default2
392default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2*
oam_cache_reg[6][31:0]2default:default2*
oam_cache_reg[6][31:0]2default:default2_
ID:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/object_engine.v2default:default2
392default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2*
oam_cache_reg[6][31:0]2default:default2*
oam_cache_reg[6][31:0]2default:default2_
ID:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/object_engine.v2default:default2
392default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2*
oam_cache_reg[7][31:0]2default:default2*
oam_cache_reg[7][31:0]2default:default2_
ID:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/object_engine.v2default:default2
392default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2*
oam_cache_reg[7][31:0]2default:default2*
oam_cache_reg[7][31:0]2default:default2_
ID:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/object_engine.v2default:default2
392default:default8@Z8-4471h px? 
?
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2
	rom_y_reg2default:default2
72default:default2
62default:default2_
ID:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/object_engine.v2default:default2
352default:default8@Z8-3936h px? 
?
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2
	rom_x_reg2default:default2
72default:default2
62default:default2_
ID:/flapga-mario_test/flapga-mario_test.srcs/sources_1/new/object_engine.v2default:default2
352default:default8@Z8-3936h px? 
y
%s
*synth2a
MDSP Report: Generating DSP bam_addr_reg[3], operation Mode is: C+A*(B:0x28).
2default:defaulth p
x
? 
w
%s
*synth2_
KDSP Report: register bam_addr_reg[3] is absorbed into DSP bam_addr_reg[3].
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: operator p_3_out is absorbed into DSP bam_addr_reg[3].
2default:defaulth p
x
? 
n
%s
*synth2V
BDSP Report: operator p_2_in is absorbed into DSP bam_addr_reg[3].
2default:defaulth p
x
? 
y
%s
*synth2a
MDSP Report: Generating DSP bam_addr_reg[1], operation Mode is: C+A*(B:0x28).
2default:defaulth p
x
? 
w
%s
*synth2_
KDSP Report: register bam_addr_reg[1] is absorbed into DSP bam_addr_reg[1].
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: operator p_1_out is absorbed into DSP bam_addr_reg[1].
2default:defaulth p
x
? 
n
%s
*synth2V
BDSP Report: operator p_0_in is absorbed into DSP bam_addr_reg[1].
2default:defaulth p
x
? 
?
+design %s has port %s driven by constant %s3447*oasys2 
flapga_mario2default:default2
dp2default:default2
12default:defaultZ8-3917h px? 
x
!design %s has unconnected port %s3331*oasys2
mario2default:default2
down2default:defaultZ8-3331h px? 
x
!design %s has unconnected port %s3331*oasys2
mario2default:default2
left2default:defaultZ8-3331h px? 
y
!design %s has unconnected port %s3331*oasys2
mario2default:default2
right2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
game_engine2default:default2
video_on2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
game_engine2default:default2
f_tick2default:defaultZ8-3331h px? 
~
!design %s has unconnected port %s3331*oasys2
game_engine2default:default2
x[9]2default:defaultZ8-3331h px? 
~
!design %s has unconnected port %s3331*oasys2
game_engine2default:default2
x[8]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
background_engine2default:default2 
ram_data[15]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
background_engine2default:default2 
ram_data[14]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
background_engine2default:default2 
ram_data[13]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
background_engine2default:default2 
ram_data[12]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
background_engine2default:default2 
ram_data[11]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
background_engine2default:default2 
ram_data[10]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
background_engine2default:default2
ram_data[9]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
flapga_mario2default:default2
sw[15]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
flapga_mario2default:default2
sw[14]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
flapga_mario2default:default2
sw[13]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
flapga_mario2default:default2
sw[12]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
flapga_mario2default:default2
sw[11]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
flapga_mario2default:default2
sw[10]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
flapga_mario2default:default2
sw[9]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
flapga_mario2default:default2
sw[8]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
flapga_mario2default:default2
sw[7]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
flapga_mario2default:default2
sw[6]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
flapga_mario2default:default2
sw[5]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
flapga_mario2default:default2
sw[4]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
flapga_mario2default:default2
sw[3]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
flapga_mario2default:default2
sw[2]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
flapga_mario2default:default2
sw[1]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
flapga_mario2default:default2
sw[0]2default:defaultZ8-3331h px? 
?
PSwapped enable and write-enable on %s RAM instances of RAM %s to conserve power
3784*oasys2
12default:default2'
splash_ram/BRAM_reg2default:defaultZ8-4652h px? 
?
PSwapped enable and write-enable on %s RAM instances of RAM %s to conserve power
3784*oasys2
12default:default2#
bg_ram/BRAM_reg2default:defaultZ8-4652h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111107]__62default:default2
FDE2default:default20
obj_eng/oam_cache_reg[7][10]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111108]__62default:default2
FDE2default:default2/
obj_eng/oam_cache_reg[7][9]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111109]__62default:default2
FDE2default:default2/
obj_eng/oam_cache_reg[7][8]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111110]__62default:default2
FDE2default:default2/
obj_eng/oam_cache_reg[7][7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111111]__62default:default2
FDE2default:default2/
obj_eng/oam_cache_reg[7][6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111106]__62default:default2
FDE2default:default20
obj_eng/oam_cache_reg[7][11]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2/
obj_eng/oam_cache_reg[7][3]2default:default2
FDE2default:default22
obj_eng/rom_y1[-1111111111]__62default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111107]__52default:default2
FDE2default:default20
obj_eng/oam_cache_reg[6][10]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111108]__52default:default2
FDE2default:default2/
obj_eng/oam_cache_reg[6][9]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111109]__52default:default2
FDE2default:default2/
obj_eng/oam_cache_reg[6][8]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111110]__52default:default2
FDE2default:default2/
obj_eng/oam_cache_reg[6][7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111111]__52default:default2
FDE2default:default2/
obj_eng/oam_cache_reg[6][6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111106]__52default:default2
FDE2default:default20
obj_eng/oam_cache_reg[6][11]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2/
obj_eng/oam_cache_reg[6][3]2default:default2
FDE2default:default22
obj_eng/rom_y1[-1111111111]__52default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111107]__42default:default2
FDE2default:default20
obj_eng/oam_cache_reg[5][10]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111108]__42default:default2
FDE2default:default2/
obj_eng/oam_cache_reg[5][9]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111109]__42default:default2
FDE2default:default2/
obj_eng/oam_cache_reg[5][8]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111110]__42default:default2
FDE2default:default2/
obj_eng/oam_cache_reg[5][7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111111]__42default:default2
FDE2default:default2/
obj_eng/oam_cache_reg[5][6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111106]__42default:default2
FDE2default:default20
obj_eng/oam_cache_reg[5][11]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2/
obj_eng/oam_cache_reg[5][3]2default:default2
FDE2default:default22
obj_eng/rom_y1[-1111111111]__42default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111107]__32default:default2
FDE2default:default20
obj_eng/oam_cache_reg[4][10]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111108]__32default:default2
FDE2default:default2/
obj_eng/oam_cache_reg[4][9]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111109]__32default:default2
FDE2default:default2/
obj_eng/oam_cache_reg[4][8]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111110]__32default:default2
FDE2default:default2/
obj_eng/oam_cache_reg[4][7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111111]__32default:default2
FDE2default:default2/
obj_eng/oam_cache_reg[4][6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111106]__32default:default2
FDE2default:default20
obj_eng/oam_cache_reg[4][11]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2/
obj_eng/oam_cache_reg[4][3]2default:default2
FDE2default:default22
obj_eng/rom_y1[-1111111111]__32default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111107]__22default:default2
FDE2default:default20
obj_eng/oam_cache_reg[3][10]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111108]__22default:default2
FDE2default:default2/
obj_eng/oam_cache_reg[3][9]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111109]__22default:default2
FDE2default:default2/
obj_eng/oam_cache_reg[3][8]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111110]__22default:default2
FDE2default:default2/
obj_eng/oam_cache_reg[3][7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111111]__22default:default2
FDE2default:default2/
obj_eng/oam_cache_reg[3][6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111106]__22default:default2
FDE2default:default20
obj_eng/oam_cache_reg[3][11]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2/
obj_eng/oam_cache_reg[3][3]2default:default2
FDE2default:default22
obj_eng/rom_y1[-1111111111]__22default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111107]__12default:default2
FDE2default:default20
obj_eng/oam_cache_reg[2][10]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111108]__12default:default2
FDE2default:default2/
obj_eng/oam_cache_reg[2][9]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111109]__12default:default2
FDE2default:default2/
obj_eng/oam_cache_reg[2][8]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111110]__12default:default2
FDE2default:default2/
obj_eng/oam_cache_reg[2][7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111111]__12default:default2
FDE2default:default2/
obj_eng/oam_cache_reg[2][6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111106]__12default:default2
FDE2default:default20
obj_eng/oam_cache_reg[2][11]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2/
obj_eng/oam_cache_reg[2][3]2default:default2
FDE2default:default22
obj_eng/rom_y1[-1111111111]__12default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111107]__02default:default2
FDE2default:default20
obj_eng/oam_cache_reg[1][10]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111108]__02default:default2
FDE2default:default2/
obj_eng/oam_cache_reg[1][9]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111109]__02default:default2
FDE2default:default2/
obj_eng/oam_cache_reg[1][8]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111110]__02default:default2
FDE2default:default2/
obj_eng/oam_cache_reg[1][7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111111]__02default:default2
FDE2default:default2/
obj_eng/oam_cache_reg[1][6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
obj_eng/rom_y0[-1111111106]__02default:default2
FDE2default:default20
obj_eng/oam_cache_reg[1][11]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2/
obj_eng/oam_cache_reg[1][3]2default:default2
FDE2default:default22
obj_eng/rom_y1[-1111111111]__02default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2/
obj_eng/rom_y0[-1111111107]2default:default2
FDE2default:default20
obj_eng/oam_cache_reg[0][10]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2/
obj_eng/rom_y0[-1111111108]2default:default2
FDE2default:default2/
obj_eng/oam_cache_reg[0][9]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2/
obj_eng/rom_y0[-1111111109]2default:default2
FDE2default:default2/
obj_eng/oam_cache_reg[0][8]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2/
obj_eng/rom_y0[-1111111110]2default:default2
FDE2default:default2/
obj_eng/oam_cache_reg[0][7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2/
obj_eng/rom_y0[-1111111111]2default:default2
FDE2default:default2/
obj_eng/oam_cache_reg[0][6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2/
obj_eng/rom_y0[-1111111106]2default:default2
FDE2default:default20
obj_eng/oam_cache_reg[0][11]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2/
obj_eng/oam_cache_reg[0][3]2default:default2
FDE2default:default2/
obj_eng/rom_y1[-1111111111]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys21
game_eng/coin_data_col_reg[2]2default:default2
FDE2default:default2/
game_eng/bam_data_reg[0][8]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default25
!game_eng/\pipe_data_props_reg[0] 2default:defaultZ8-3333h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
game_eng/coin_y_reg[6]2default:default2
FDRE2default:default2*
game_eng/coin_y_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
game_eng/coin_y_reg[7]2default:default2
FDRE2default:default2*
game_eng/coin_y_reg[8]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
game_eng/coin_y_reg[8]2default:default2
FDRE2default:default2*
game_eng/coin_y_reg[9]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
game_eng/coin_y_reg[9]2default:default2
FDRE2default:default2+
game_eng/coin_y_reg[10]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2+
game_eng/coin_y_reg[10]2default:default2
FDRE2default:default2+
game_eng/coin_y_reg[11]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2+
game_eng/coin_y_reg[11]2default:default2
FDRE2default:default2+
game_eng/coin_y_reg[12]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2+
game_eng/coin_y_reg[12]2default:default2
FDRE2default:default2+
game_eng/coin_y_reg[13]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2+
game_eng/coin_y_reg[13]2default:default2
FDRE2default:default2+
game_eng/coin_y_reg[14]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2+
game_eng/coin_y_reg[14]2default:default2
FDRE2default:default2+
game_eng/coin_y_reg[15]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2-
game_eng/\coin_y_reg[15] 2default:defaultZ8-3333h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
game_eng/pipe_up_end_reg[2][4]2default:default2
FDE2default:default23
game_eng/pipe_gap_end_reg[2][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
game_eng/pipe_up_end_reg[1][4]2default:default2
FDE2default:default23
game_eng/pipe_gap_end_reg[1][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
game_eng/pipe_up_end_reg[0][4]2default:default2
FDE2default:default23
game_eng/pipe_gap_end_reg[0][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
game_eng/pipe_up_end_reg[2][5]2default:default2
FDE2default:default23
game_eng/pipe_gap_end_reg[2][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
game_eng/pipe_up_end_reg[1][5]2default:default2
FDE2default:default23
game_eng/pipe_gap_end_reg[1][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
game_eng/pipe_up_end_reg[0][5]2default:default2
FDE2default:default23
game_eng/pipe_gap_end_reg[0][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
game_eng/pipe_up_end_reg[2][6]2default:default2
FDE2default:default23
game_eng/pipe_gap_end_reg[2][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
game_eng/pipe_up_end_reg[1][6]2default:default2
FDE2default:default23
game_eng/pipe_gap_end_reg[1][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
game_eng/pipe_up_end_reg[0][6]2default:default2
FDE2default:default23
game_eng/pipe_gap_end_reg[0][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
game_eng/pipe_up_end_reg[2][7]2default:default2
FDE2default:default23
game_eng/pipe_gap_end_reg[2][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
game_eng/pipe_up_end_reg[1][7]2default:default2
FDE2default:default23
game_eng/pipe_gap_end_reg[1][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
game_eng/pipe_up_end_reg[0][7]2default:default2
FDE2default:default23
game_eng/pipe_gap_end_reg[0][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
game_eng/pipe_up_end_reg[2][8]2default:default2
FDE2default:default23
game_eng/pipe_gap_end_reg[2][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
game_eng/pipe_up_end_reg[1][8]2default:default2
FDE2default:default23
game_eng/pipe_gap_end_reg[1][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
game_eng/pipe_up_end_reg[0][8]2default:default2
FDE2default:default23
game_eng/pipe_gap_end_reg[0][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
game_eng/pipe_up_end_reg[2][9]2default:default2
FDE2default:default23
game_eng/pipe_gap_end_reg[2][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
game_eng/pipe_up_end_reg[1][9]2default:default2
FDE2default:default23
game_eng/pipe_gap_end_reg[1][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
game_eng/pipe_up_end_reg[0][9]2default:default2
FDE2default:default23
game_eng/pipe_gap_end_reg[0][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
game_eng/pipe_up_end_reg[2][10]2default:default2
FDE2default:default23
game_eng/pipe_gap_end_reg[2][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
game_eng/pipe_up_end_reg[1][10]2default:default2
FDE2default:default23
game_eng/pipe_gap_end_reg[1][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
game_eng/pipe_up_end_reg[0][10]2default:default2
FDE2default:default23
game_eng/pipe_gap_end_reg[0][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
game_eng/pipe_up_end_reg[2][11]2default:default2
FDE2default:default23
game_eng/pipe_gap_end_reg[2][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
game_eng/pipe_up_end_reg[1][11]2default:default2
FDE2default:default23
game_eng/pipe_gap_end_reg[1][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
game_eng/pipe_up_end_reg[0][11]2default:default2
FDE2default:default23
game_eng/pipe_gap_end_reg[0][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
game_eng/pipe_up_end_reg[2][12]2default:default2
FDE2default:default23
game_eng/pipe_gap_end_reg[2][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
game_eng/pipe_up_end_reg[1][12]2default:default2
FDE2default:default23
game_eng/pipe_gap_end_reg[1][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
game_eng/pipe_up_end_reg[0][12]2default:default2
FDE2default:default23
game_eng/pipe_gap_end_reg[0][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
game_eng/pipe_up_end_reg[2][13]2default:default2
FDE2default:default23
game_eng/pipe_gap_end_reg[2][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
game_eng/pipe_up_end_reg[1][13]2default:default2
FDE2default:default23
game_eng/pipe_gap_end_reg[1][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
game_eng/pipe_up_end_reg[0][13]2default:default2
FDE2default:default23
game_eng/pipe_gap_end_reg[0][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
game_eng/pipe_up_end_reg[2][14]2default:default2
FDE2default:default23
game_eng/pipe_gap_end_reg[2][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
game_eng/pipe_up_end_reg[1][14]2default:default2
FDE2default:default23
game_eng/pipe_gap_end_reg[1][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
game_eng/pipe_up_end_reg[0][14]2default:default2
FDE2default:default23
game_eng/pipe_gap_end_reg[0][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
game_eng/pipe_up_end_reg[2][15]2default:default2
FDE2default:default23
game_eng/pipe_gap_end_reg[2][5]2default:defaultZ8-3886h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-38862default:default2
1002default:defaultZ17-14h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default26
"game_eng/\pipe_gap_end_reg[2][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default26
"game_eng/\pipe_gap_end_reg[1][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default26
"game_eng/\pipe_gap_end_reg[0][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default20
audio/\note_data_reg[0][31] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
game_eng/\bam_data_reg[1][4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
game_eng/\bam_data_reg[3][7] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
game_eng/\bam_data_reg[2][7] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default21
game_eng/\bam_addr_reg[4][5] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default22
game_eng/\bam_addr_reg[0][10] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default21
game_eng/\bam_data_reg[3][2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2.
audio/\note_data2_reg[31] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2/
clock_normal/\clock_reg[7] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default20
clock_normal/\clock_reg[15] 2default:defaultZ8-3333h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:02:32 ; elapsed = 00:02:43 . Memory (MB): peak = 1275.055 ; gain = 560.461
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
2
%s*synth2

ROM:
2default:defaulth px? 
m
%s*synth2U
A+---------------+-------------+---------------+----------------+
2default:defaulth px? 
n
%s*synth2V
B|Module Name    | RTL Object  | Depth x Width | Implemented As | 
2default:defaulth px? 
m
%s*synth2U
A+---------------+-------------+---------------+----------------+
2default:defaulth px? 
n
%s*synth2V
B|wave_generator | p_0_out     | 64x8          | LUT            | 
2default:defaulth px? 
n
%s*synth2V
B|audio_output   | music_data2 | 128x24        | LUT            | 
2default:defaulth px? 
n
%s*synth2V
B|audio_output   | music_data2 | 128x24        | LUT            | 
2default:defaulth px? 
n
%s*synth2V
B|audio_output   | p_0_out     | 64x8          | LUT            | 
2default:defaulth px? 
n
%s*synth2V
B|audio_output   | p_0_out     | 64x8          | LUT            | 
2default:defaulth px? 
n
%s*synth2V
B|audio_output   | p_0_out     | 64x8          | LUT            | 
2default:defaulth px? 
n
%s*synth2V
B+---------------+-------------+---------------+----------------+

2default:defaulth px? 
d
%s*synth2L
8
Block RAM: Preliminary Mapping	Report (see note below)
2default:defaulth px? 
?
%s*synth2?
?+-------------+-----------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name  | RTL Object      | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
2default:defaulth px? 
?
%s*synth2?
?+-------------+-----------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth px? 
?
%s*synth2?
?|ram:         | BRAM_reg        | 2 K x 9(READ_FIRST)    | W |   | 2 K x 9(WRITE_FIRST)   |   | R | Port A and B     | 1      | 0      | 
2default:defaulth px? 
?
%s*synth2?
?|flapga_mario | bg_ram/BRAM_reg | 2 K x 9(READ_FIRST)    | W |   | 2 K x 9(WRITE_FIRST)   |   | R | Port A and B     | 1      | 0      | 
2default:defaulth px? 
?
%s*synth2?
?+-------------+-----------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the Block RAMs at the current stage of the synthesis flow. Some Block RAMs may be reimplemented as non Block RAM primitives later in the synthesis flow. Multiple instantiated Block RAMs are reported only once. 
2default:defaulth px? 
j
%s*synth2R
>
Distributed RAM: Preliminary Mapping	Report (see note below)
2default:defaulth px? 
|
%s*synth2d
P+-------------+--------------+-----------+----------------------+-------------+
2default:defaulth px? 
}
%s*synth2e
Q|Module Name  | RTL Object   | Inference | Size (Depth x Width) | Primitives  | 
2default:defaulth px? 
|
%s*synth2d
P+-------------+--------------+-----------+----------------------+-------------+
2default:defaulth px? 
}
%s*synth2e
Q|flapga_mario | oam/BRAM_reg | Implied   | 8 x 32               | RAM32M x 6	 | 
2default:defaulth px? 
}
%s*synth2e
Q+-------------+--------------+-----------+----------------------+-------------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
2default:defaulth px? 
^
%s*synth2F
2
DSP: Preliminary Mapping	Report (see note below)
2default:defaulth px? 
?
%s*synth2?
}+------------+--------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
~|Module Name | DSP Mapping  | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth px? 
?
%s*synth2?
}+------------+--------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
~|game_engine | C+A*(B:0x28) | 16     | 6      | 16     | -      | 16     | 0    | 0    | 0    | -    | -     | 0    | 1    | 
2default:defaulth px? 
?
%s*synth2?
~|game_engine | C+A*(B:0x28) | 16     | 6      | 16     | -      | 16     | 0    | 0    | 0    | -    | -     | 0    | 1    | 
2default:defaulth px? 
?
%s*synth2?
~+------------+--------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:03:09 ; elapsed = 00:03:21 . Memory (MB): peak = 1276.883 ; gain = 562.289
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Timing Optimization : Time (s): cpu = 00:03:17 ; elapsed = 00:03:29 . Memory (MB): peak = 1318.453 ; gain = 603.859
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!
Block RAM: Final Mapping	Report
2default:defaulth p
x
? 
?
%s
*synth2?
?+-------------+-----------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|Module Name  | RTL Object      | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+-------------+-----------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|ram:         | BRAM_reg        | 2 K x 9(READ_FIRST)    | W |   | 2 K x 9(WRITE_FIRST)   |   | R | Port A and B     | 1      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|flapga_mario | bg_ram/BRAM_reg | 2 K x 9(READ_FIRST)    | W |   | 2 K x 9(WRITE_FIRST)   |   | R | Port A and B     | 1      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+-------------+-----------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

2default:defaulth p
x
? 
S
%s
*synth2;
'
Distributed RAM: Final Mapping	Report
2default:defaulth p
x
? 
|
%s
*synth2d
P+-------------+--------------+-----------+----------------------+-------------+
2default:defaulth p
x
? 
}
%s
*synth2e
Q|Module Name  | RTL Object   | Inference | Size (Depth x Width) | Primitives  | 
2default:defaulth p
x
? 
|
%s
*synth2d
P+-------------+--------------+-----------+----------------------+-------------+
2default:defaulth p
x
? 
}
%s
*synth2e
Q|flapga_mario | oam/BRAM_reg | Implied   | 8 x 32               | RAM32M x 6	 | 
2default:defaulth p
x
? 
}
%s
*synth2e
Q+-------------+--------------+-----------+----------------------+-------------+

2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Technology Mapping : Time (s): cpu = 00:03:28 ; elapsed = 00:03:41 . Memory (MB): peak = 1404.516 ; gain = 689.922
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
dNet %s is driving %s big block pins (URAM, BRAM and DSP loads). Created %s replicas of its driver. 
4391*oasys2
video_on2default:default2
642default:default2
82default:defaultZ8-6064h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
vFinished IO Insertion : Time (s): cpu = 00:03:45 ; elapsed = 00:03:59 . Memory (MB): peak = 1409.094 ; gain = 694.500
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:03:45 ; elapsed = 00:03:59 . Memory (MB): peak = 1409.094 ; gain = 694.500
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:03:47 ; elapsed = 00:04:01 . Memory (MB): peak = 1409.094 ; gain = 694.500
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:03:47 ; elapsed = 00:04:01 . Memory (MB): peak = 1409.094 ; gain = 694.500
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:03:48 ; elapsed = 00:04:01 . Memory (MB): peak = 1409.121 ; gain = 694.527
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:03:48 ; elapsed = 00:04:01 . Memory (MB): peak = 1409.121 ; gain = 694.527
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
I
%s*synth21
+------+------------+------+
2default:defaulth px? 
I
%s*synth21
|      |Cell        |Count |
2default:defaulth px? 
I
%s*synth21
+------+------------+------+
2default:defaulth px? 
I
%s*synth21
|1     |BUFG        |     2|
2default:defaulth px? 
I
%s*synth21
|2     |CARRY4      |   399|
2default:defaulth px? 
I
%s*synth21
|3     |DSP48E1     |     2|
2default:defaulth px? 
I
%s*synth21
|4     |LUT1        |   198|
2default:defaulth px? 
I
%s*synth21
|5     |LUT2        |   610|
2default:defaulth px? 
I
%s*synth21
|6     |LUT3        |   299|
2default:defaulth px? 
I
%s*synth21
|7     |LUT4        |   501|
2default:defaulth px? 
I
%s*synth21
|8     |LUT5        |   433|
2default:defaulth px? 
I
%s*synth21
|9     |LUT6        |   747|
2default:defaulth px? 
I
%s*synth21
|10    |MUXF7       |    14|
2default:defaulth px? 
I
%s*synth21
|11    |RAM32M      |     6|
2default:defaulth px? 
I
%s*synth21
|12    |RAMB18E1_3  |     1|
2default:defaulth px? 
I
%s*synth21
|13    |RAMB18E1_4  |     1|
2default:defaulth px? 
I
%s*synth21
|14    |RAMB18E1_5  |     1|
2default:defaulth px? 
I
%s*synth21
|15    |RAMB36E1    |     1|
2default:defaulth px? 
I
%s*synth21
|16    |RAMB36E1_10 |     1|
2default:defaulth px? 
I
%s*synth21
|17    |RAMB36E1_12 |     1|
2default:defaulth px? 
I
%s*synth21
|18    |RAMB36E1_14 |     1|
2default:defaulth px? 
I
%s*synth21
|19    |RAMB36E1_16 |     1|
2default:defaulth px? 
I
%s*synth21
|20    |RAMB36E1_18 |     1|
2default:defaulth px? 
I
%s*synth21
|21    |RAMB36E1_2  |     1|
2default:defaulth px? 
I
%s*synth21
|22    |RAMB36E1_20 |     1|
2default:defaulth px? 
I
%s*synth21
|23    |RAMB36E1_22 |     1|
2default:defaulth px? 
I
%s*synth21
|24    |RAMB36E1_4  |     1|
2default:defaulth px? 
I
%s*synth21
|25    |RAMB36E1_55 |     1|
2default:defaulth px? 
I
%s*synth21
|26    |RAMB36E1_56 |     1|
2default:defaulth px? 
I
%s*synth21
|27    |RAMB36E1_57 |     1|
2default:defaulth px? 
I
%s*synth21
|28    |RAMB36E1_58 |     1|
2default:defaulth px? 
I
%s*synth21
|29    |RAMB36E1_59 |     1|
2default:defaulth px? 
I
%s*synth21
|30    |RAMB36E1_6  |     1|
2default:defaulth px? 
I
%s*synth21
|31    |RAMB36E1_60 |     1|
2default:defaulth px? 
I
%s*synth21
|32    |RAMB36E1_61 |     1|
2default:defaulth px? 
I
%s*synth21
|33    |RAMB36E1_62 |     1|
2default:defaulth px? 
I
%s*synth21
|34    |RAMB36E1_63 |     1|
2default:defaulth px? 
I
%s*synth21
|35    |RAMB36E1_64 |     1|
2default:defaulth px? 
I
%s*synth21
|36    |RAMB36E1_65 |     1|
2default:defaulth px? 
I
%s*synth21
|37    |RAMB36E1_66 |     1|
2default:defaulth px? 
I
%s*synth21
|38    |RAMB36E1_67 |     1|
2default:defaulth px? 
I
%s*synth21
|39    |RAMB36E1_68 |     1|
2default:defaulth px? 
I
%s*synth21
|40    |RAMB36E1_69 |     1|
2default:defaulth px? 
I
%s*synth21
|41    |RAMB36E1_70 |     1|
2default:defaulth px? 
I
%s*synth21
|42    |RAMB36E1_71 |     1|
2default:defaulth px? 
I
%s*synth21
|43    |RAMB36E1_72 |     1|
2default:defaulth px? 
I
%s*synth21
|44    |RAMB36E1_73 |     1|
2default:defaulth px? 
I
%s*synth21
|45    |RAMB36E1_8  |     1|
2default:defaulth px? 
I
%s*synth21
|46    |FDRE        |  1122|
2default:defaulth px? 
I
%s*synth21
|47    |FDSE        |    26|
2default:defaulth px? 
I
%s*synth21
|48    |IBUF        |     3|
2default:defaulth px? 
I
%s*synth21
|49    |OBUF        |    27|
2default:defaulth px? 
I
%s*synth21
+------+------------+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
b
%s
*synth2J
6+------+----------------+--------------------+------+
2default:defaulth p
x
? 
b
%s
*synth2J
6|      |Instance        |Module              |Cells |
2default:defaulth p
x
? 
b
%s
*synth2J
6+------+----------------+--------------------+------+
2default:defaulth p
x
? 
b
%s
*synth2J
6|1     |top             |                    |  4423|
2default:defaulth p
x
? 
b
%s
*synth2J
6|2     |  audio         |audio_output        |   750|
2default:defaulth p
x
? 
b
%s
*synth2J
6|3     |    ch0         |wave_generator      |    65|
2default:defaulth p
x
? 
b
%s
*synth2J
6|4     |    ch1         |wave_generator_0    |    85|
2default:defaulth p
x
? 
b
%s
*synth2J
6|5     |    ch2         |wave_generator_1    |    70|
2default:defaulth p
x
? 
b
%s
*synth2J
6|6     |  bg_engine     |background_engine   |    22|
2default:defaulth p
x
? 
b
%s
*synth2J
6|7     |    bg_rom      |bg_rom              |    22|
2default:defaulth p
x
? 
b
%s
*synth2J
6|8     |  bg_ram        |ram__parameterized0 |     8|
2default:defaulth p
x
? 
b
%s
*synth2J
6|9     |  clock_normal  |clock_normal        |   127|
2default:defaulth p
x
? 
b
%s
*synth2J
6|10    |  cloud_bg      |cloud_bg            |    35|
2default:defaulth p
x
? 
b
%s
*synth2J
6|11    |  display       |display             |    58|
2default:defaulth p
x
? 
b
%s
*synth2J
6|12    |    clock_div   |clock_div           |    58|
2default:defaulth p
x
? 
b
%s
*synth2J
6|13    |  game_eng      |game_engine         |  1982|
2default:defaulth p
x
? 
b
%s
*synth2J
6|14    |    mario       |mario               |   336|
2default:defaulth p
x
? 
b
%s
*synth2J
6|15    |    text        |game_over_text      |    25|
2default:defaulth p
x
? 
b
%s
*synth2J
6|16    |    vga_num     |vga_num             |   120|
2default:defaulth p
x
? 
b
%s
*synth2J
6|17    |  oam           |ram__parameterized1 |    54|
2default:defaulth p
x
? 
b
%s
*synth2J
6|18    |  obj_eng       |object_engine       |   617|
2default:defaulth p
x
? 
b
%s
*synth2J
6|19    |    mario_rom   |mario_rom           |     7|
2default:defaulth p
x
? 
b
%s
*synth2J
6|20    |  splash_ram    |ram                 |     6|
2default:defaulth p
x
? 
b
%s
*synth2J
6|21    |  vga_sync_unit |vga_sync            |   472|
2default:defaulth p
x
? 
b
%s
*synth2J
6+------+----------------+--------------------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:03:48 ; elapsed = 00:04:01 . Memory (MB): peak = 1409.121 ; gain = 694.527
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 36 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:03:24 ; elapsed = 00:03:54 . Memory (MB): peak = 1409.121 ; gain = 583.086
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:03:48 ; elapsed = 00:04:02 . Memory (MB): peak = 1409.121 ; gain = 694.527
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.2772default:default2
1420.8092default:default2
0.0002default:defaultZ17-268h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
4552default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0032default:default2
1420.8092default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2x
d  A total of 6 instances were transformed.
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 6 instances
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
2052default:default2
1012default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:04:062default:default2
00:04:222default:default2
1420.8092default:default2
995.4182default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0062default:default2
1420.8092default:default2
0.0002default:defaultZ17-268h px? 
K
"No constraints selected for write.1103*constraintsZ18-5210h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2X
DD:/flapga-mario_test/flapga-mario_test.runs/synth_1/flapga_mario.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
nExecuting : report_utilization -file flapga_mario_utilization_synth.rpt -pb flapga_mario_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue May 17 19:06:26 20222default:defaultZ17-206h px? 


End Record