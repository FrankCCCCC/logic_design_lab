
g
Command: %s
1870*	planAhead22
open_checkpoint top_routed.dcp2default:defaultZ12-2866h px? 
^

Starting %s Task
103*constraints2#
open_checkpoint2default:defaultZ18-103h px? 
?

%s
*constraints2r
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.042 . Memory (MB): peak = 298.281 ; gain = 0.0002default:defaulth px? 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.1102default:default2
718.0902default:default2
0.0002default:defaultZ17-268h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
5922default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2019.22default:defaultZ1-479h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
L
*Restoring timing data from binary archive.264*timingZ38-478h px? 
F
$Binary timing data restore complete.265*timingZ38-479h px? 
L
*Restoring constraints from binary archive.481*projectZ1-856h px? 
E
#Binary constraint restore complete.478*projectZ1-853h px? 
?
Reading XDEF placement.
206*designutilsZ20-206h px? 
D
Reading placer database...
1602*designutilsZ20-1892h px? 
=
Reading XDEF routing.
207*designutilsZ20-207h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
Read XDEF File: 2default:default2
00:00:012default:default2 
00:00:00.6532default:default2
1390.4262default:default2
5.9572default:defaultZ17-268h px? 
?
7Restored from archive | CPU: %s secs | Memory: %s MB |
1612*designutils2
1.0000002default:default2
0.0000002default:defaultZ20-1924h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common20
Finished XDEF File Restore: 2default:default2
00:00:012default:default2 
00:00:00.6552default:default2
1390.4262default:default2
5.9572default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1390.4262default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 6 instances were transformed.
  IOBUF => IOBUF (IBUF, OBUFT): 2 instances
  LDCP => LDCP (inverted pins: G) (GND, LDCE, LUT3(x2), VCC): 4 instances
2default:defaultZ1-111h px? 
?
'Checkpoint was created with %s build %s378*project2+
Vivado v2019.2 (64-bit)2default:default2
27088762default:defaultZ1-604h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
open_checkpoint: 2default:default2
00:00:222default:default2
00:00:242default:default2
1390.4262default:default2
1092.1452default:defaultZ17-268h px? 
c
Command: %s
53*	vivadotcl22
write_bitstream -force top.bit2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-349h px? 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px? 
>
Refreshing IP repositories
234*coregenZ19-234h px? 
G
"No user IP repositories specified
1154*coregenZ19-1704h px? 
|
"Loaded Vivado IP repository '%s'.
1332*coregen23
C:/Xilinx/Vivado/2019.2/data/ip2default:defaultZ19-2313h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
YReport rule limit reached: REQP-1839 rule limit reached: 20 violations have been found.%s*DRC29
 !DRC|DRC System|Rule limit reached2default:default8ZCHECK-3h px? 
?
YReport rule limit reached: REQP-1840 rule limit reached: 20 violations have been found.%s*DRC29
 !DRC|DRC System|Rule limit reached2default:default8ZCHECK-3h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2x
 "b
%UGAME/UBIRD/UBIRDCTRL/pos_v_cnt_next2	%UGAME/UBIRD/UBIRDCTRL/pos_v_cnt_next22default:default2default:default2?
 "l
-UGAME/UBIRD/UBIRDCTRL/pos_v_cnt_next2/A[29:0]'UGAME/UBIRD/UBIRDCTRL/pos_v_cnt_next2/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2x
 "b
%UGAME/UBIRD/UBIRDCTRL/pos_v_cnt_next2	%UGAME/UBIRD/UBIRDCTRL/pos_v_cnt_next22default:default2default:default2?
 "l
-UGAME/UBIRD/UBIRDCTRL/pos_v_cnt_next2/B[17:0]'UGAME/UBIRD/UBIRDCTRL/pos_v_cnt_next2/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
?PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2x
 "b
%UGAME/UBIRD/UBIRDCTRL/pos_v_cnt_next2	%UGAME/UBIRD/UBIRDCTRL/pos_v_cnt_next22default:default2default:default2?
 "l
-UGAME/UBIRD/UBIRDCTRL/pos_v_cnt_next2/P[47:0]'UGAME/UBIRD/UBIRDCTRL/pos_v_cnt_next2/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px? 
?
?MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2x
 "b
%UGAME/UBIRD/UBIRDCTRL/pos_v_cnt_next2	%UGAME/UBIRD/UBIRDCTRL/pos_v_cnt_next22default:default2default:default2?
 "l
-UGAME/UBIRD/UBIRDCTRL/pos_v_cnt_next2/P[47:0]'UGAME/UBIRD/UBIRDCTRL/pos_v_cnt_next2/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2K
 "5
UGAME/UCTRL/E[0]UGAME/UCTRL/E2default:default2default:default2z
 "d
&UGAME/UCTRL/alphabets_1d_reg[85]_i_2/O&UGAME/UCTRL/alphabets_1d_reg[85]_i_2/O2default:default2default:default2v
 "`
$UGAME/UCTRL/alphabets_1d_reg[85]_i_2	$UGAME/UCTRL/alphabets_1d_reg[85]_i_22default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2q
 "[
#UGAME/UCTRL/font_reg[4]_i_9__0_0[0] UGAME/UCTRL/font_reg[4]_i_9__0_02default:default2default:default2n
 "X
 UGAME/UCTRL/font_reg[4]_i_2__0/O UGAME/UCTRL/font_reg[4]_i_2__0/O2default:default2default:default2j
 "T
UGAME/UCTRL/font_reg[4]_i_2__0	UGAME/UCTRL/font_reg[4]_i_2__02default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2g
 "Q
UGAME/UCTRL/score_reg[10]_1[0]UGAME/UCTRL/score_reg[10]_12default:default2default:default2n
 "X
 UGAME/UCTRL/font_reg[4]_i_2__2/O UGAME/UCTRL/font_reg[4]_i_2__2/O2default:default2default:default2j
 "T
UGAME/UCTRL/font_reg[4]_i_2__2	UGAME/UCTRL/font_reg[4]_i_2__22default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2e
 "O
UGAME/UCTRL/score_reg[3]_6[0]UGAME/UCTRL/score_reg[3]_62default:default2default:default2h
 "R
UGAME/UCTRL/font_reg[4]_i_2/OUGAME/UCTRL/font_reg[4]_i_2/O2default:default2default:default2d
 "N
UGAME/UCTRL/font_reg[4]_i_2	UGAME/UCTRL/font_reg[4]_i_22default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2?
 "t
.UGAME/USCENCE/USCORE/U2/font_reg[4]_i_2__1_n_0.UGAME/USCENCE/USCORE/U2/font_reg[4]_i_2__1_n_02default:default2default:default2?
 "p
,UGAME/USCENCE/USCORE/U2/font_reg[4]_i_2__1/O,UGAME/USCENCE/USCORE/U2/font_reg[4]_i_2__1/O2default:default2default:default2?
 "l
*UGAME/USCENCE/USCORE/U2/font_reg[4]_i_2__1	*UGAME/USCENCE/USCORE/U2/font_reg[4]_i_2__12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2p
 "Z
!UGAME/USCENCE/pos_v_cnt_reg[0]/G0!UGAME/USCENCE/pos_v_cnt_reg[0]/G02default:default2default:default2x
 "b
%UGAME/USCENCE/pos_v_cnt_reg[0]/L3_2/O%UGAME/USCENCE/pos_v_cnt_reg[0]/L3_2/O2default:default2default:default2t
 "^
#UGAME/USCENCE/pos_v_cnt_reg[0]/L3_2	#UGAME/USCENCE/pos_v_cnt_reg[0]/L3_22default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2p
 "Z
!UGAME/USCENCE/pos_v_cnt_reg[2]/G0!UGAME/USCENCE/pos_v_cnt_reg[2]/G02default:default2default:default2x
 "b
%UGAME/USCENCE/pos_v_cnt_reg[2]/L3_2/O%UGAME/USCENCE/pos_v_cnt_reg[2]/L3_2/O2default:default2default:default2t
 "^
#UGAME/USCENCE/pos_v_cnt_reg[2]/L3_2	#UGAME/USCENCE/pos_v_cnt_reg[2]/L3_22default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2p
 "Z
!UGAME/USCENCE/pos_v_cnt_reg[4]/G0!UGAME/USCENCE/pos_v_cnt_reg[4]/G02default:default2default:default2x
 "b
%UGAME/USCENCE/pos_v_cnt_reg[4]/L3_2/O%UGAME/USCENCE/pos_v_cnt_reg[4]/L3_2/O2default:default2default:default2t
 "^
#UGAME/USCENCE/pos_v_cnt_reg[4]/L3_2	#UGAME/USCENCE/pos_v_cnt_reg[4]/L3_22default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2p
 "Z
!UGAME/USCENCE/pos_v_cnt_reg[6]/G0!UGAME/USCENCE/pos_v_cnt_reg[6]/G02default:default2default:default2x
 "b
%UGAME/USCENCE/pos_v_cnt_reg[6]/L3_2/O%UGAME/USCENCE/pos_v_cnt_reg[6]/L3_2/O2default:default2default:default2t
 "^
#UGAME/USCENCE/pos_v_cnt_reg[6]/L3_2	#UGAME/USCENCE/pos_v_cnt_reg[6]/L3_22default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[13]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[13]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[13]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[13]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[2]	!UGAME/UBG/UMEMGEN/position_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[13]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[13]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[13]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[13]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[6]	!UGAME/UBG/UMEMGEN/position_reg[6]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[14]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[14]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[14]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[14]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[0]	!UGAME/UBG/UMEMGEN/position_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[14]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[14]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[14]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[14]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[1]	!UGAME/UBG/UMEMGEN/position_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[14]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[14]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[14]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[14]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[2]	!UGAME/UBG/UMEMGEN/position_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[14]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[14]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[14]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[14]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[3]	!UGAME/UBG/UMEMGEN/position_reg[3]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[14]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[14]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[14]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[14]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[4]	!UGAME/UBG/UMEMGEN/position_reg[4]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[14]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[14]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[14]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[14]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[5]	!UGAME/UBG/UMEMGEN/position_reg[5]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[14]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[14]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[14]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[14]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[6]	!UGAME/UBG/UMEMGEN/position_reg[6]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[14]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[14]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[14]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[14]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[7]	!UGAME/UBG/UMEMGEN/position_reg[7]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[14]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[14]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[14]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[14]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[8]	!UGAME/UBG/UMEMGEN/position_reg[8]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[15]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[15]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[15]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[15]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[0]	!UGAME/UBG/UMEMGEN/position_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[15]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[15]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[15]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[15]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[1]	!UGAME/UBG/UMEMGEN/position_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[15]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[15]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[15]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[15]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[2]	!UGAME/UBG/UMEMGEN/position_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[15]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[15]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[15]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[15]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[3]	!UGAME/UBG/UMEMGEN/position_reg[3]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[15]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[15]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[15]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[15]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[4]	!UGAME/UBG/UMEMGEN/position_reg[4]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[15]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[15]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[15]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[15]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[5]	!UGAME/UBG/UMEMGEN/position_reg[5]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[15]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[15]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[15]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[15]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[6]	!UGAME/UBG/UMEMGEN/position_reg[6]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[15]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[15]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[15]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[15]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[7]	!UGAME/UBG/UMEMGEN/position_reg[7]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[15]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[15]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[15]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/addra[15]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[8]	!UGAME/UBG/UMEMGEN/position_reg[8]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[11]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[11]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[11]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[11]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[2]	!UGAME/UBG/UMEMGEN/position_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[11]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[11]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[11]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[11]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[6]	!UGAME/UBG/UMEMGEN/position_reg[6]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[12]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[12]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[12]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[12]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[0]	!UGAME/UBG/UMEMGEN/position_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[12]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[12]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[12]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[12]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[1]	!UGAME/UBG/UMEMGEN/position_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[12]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[12]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[12]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[12]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[2]	!UGAME/UBG/UMEMGEN/position_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[12]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[12]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[12]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[12]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[3]	!UGAME/UBG/UMEMGEN/position_reg[3]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[12]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[12]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[12]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[12]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[4]	!UGAME/UBG/UMEMGEN/position_reg[4]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[12]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[12]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[12]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[12]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[5]	!UGAME/UBG/UMEMGEN/position_reg[5]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[12]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[12]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[12]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[12]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[6]	!UGAME/UBG/UMEMGEN/position_reg[6]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[12]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[12]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[12]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[12]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[7]	!UGAME/UBG/UMEMGEN/position_reg[7]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[12]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[12]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[12]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[12]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[8]	!UGAME/UBG/UMEMGEN/position_reg[8]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[13]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[13]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[13]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[13]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[0]	!UGAME/UBG/UMEMGEN/position_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[13]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[13]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[13]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[13]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[1]	!UGAME/UBG/UMEMGEN/position_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[13]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[13]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[13]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[13]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[2]	!UGAME/UBG/UMEMGEN/position_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[13]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[13]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[13]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[13]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[3]	!UGAME/UBG/UMEMGEN/position_reg[3]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[13]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[13]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[13]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[13]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[4]	!UGAME/UBG/UMEMGEN/position_reg[4]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[13]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[13]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[13]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[13]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[5]	!UGAME/UBG/UMEMGEN/position_reg[5]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[13]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[13]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[13]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[13]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[6]	!UGAME/UBG/UMEMGEN/position_reg[6]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[13]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[13]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[13]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[13]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[7]	!UGAME/UBG/UMEMGEN/position_reg[7]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram	?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[13]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram/ADDRARDADDR[13]2default:default2default:default2?
 "?
?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[13]?UGAME/UBG/blk_mem_gen_bg_inst/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_init.ram/addra[13]2default:default2default:default2p
 "Z
!UGAME/UBG/UMEMGEN/position_reg[8]	!UGAME/UBG/UMEMGEN/position_reg[8]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
g
DRC finished with %s
1905*	planAhead2)
0 Errors, 55 Warnings2default:defaultZ12-3199h px? 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px? 
i
)Running write_bitstream with %s threads.
1750*designutils2
22default:defaultZ20-2272h px? 
?
Loading data files...
1271*designutilsZ12-1165h px? 
>
Loading site data...
1273*designutilsZ12-1167h px? 
?
Loading route data...
1272*designutilsZ12-1166h px? 
?
Processing options...
1362*designutilsZ12-1514h px? 
<
Creating bitmap...
1249*designutilsZ12-1141h px? 
7
Creating bitstream...
7*	bitstreamZ40-7h px? 
e
%Bitstream compression saved %s bits.
26*	bitstream2
88863042default:defaultZ40-26h px? 
Z
Writing bitstream %s...
11*	bitstream2
	./top.bit2default:defaultZ40-11h px? 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px? 
?
?WebTalk data collection is mandatory when using a WebPACK part without a full Vivado license. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.
120*projectZ1-120h px? 
?
?'%s' has been successfully sent to Xilinx on %s. For additional details about this file, please refer to the Webtalk help file at %s.
186*common2o
[D:/data/logic_design_lab/final_project/final/final.runs/impl_1/usage_statistics_webtalk.xml2default:default2,
Tue Jun 14 21:15:04 20222default:default2I
5C:/Xilinx/Vivado/2019.2/doc/webtalk_introduction.html2default:defaultZ17-186h px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
232default:default2
552default:default2
02default:default2
02default:defaultZ4-41h px? 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:00:222default:default2
00:00:232default:default2
1864.1332default:default2
473.7072default:defaultZ17-268h px? 


End Record