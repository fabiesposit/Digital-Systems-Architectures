
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:022default:default2
00:00:072default:default2
467.1292default:default2
199.3832default:defaultZ17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/riovi/Dropbox/LABORATORIO/ASDi/3_RICONOSCITORE_DI_SEQUENZE/parte2/MacchineSequenzialiEse1/MacchineSequenzialiEse1.srcs/utils_1/imports/synth_1/RiconoscitoreDiSequenze.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2�
�C:/Users/riovi/Dropbox/LABORATORIO/ASDi/3_RICONOSCITORE_DI_SEQUENZE/parte2/MacchineSequenzialiEse1/MacchineSequenzialiEse1.srcs/utils_1/imports/synth_1/RiconoscitoreDiSequenze.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
�
Command: %s
53*	vivadotcl2T
@synth_design -top riconoscitore_on_board -part xc7a50ticsg324-1L2default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a50ti2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a50ti2default:defaultZ17-349h px� 
X
Loading part %s157*device2%
xc7a50ticsg324-1L2default:defaultZ21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
`
#Helper process launched with PID %s4824*oasys2
183042default:defaultZ8-7075h px� 
�
%s*synth2�
yStarting RTL Elaboration : Time (s): cpu = 00:00:00 ; elapsed = 00:00:04 . Memory (MB): peak = 1281.359 ; gain = 411.344
2default:defaulth px� 
�
synthesizing module '%s'638*oasys2*
riconoscitore_on_board2default:default2�
�C:/Users/riovi/Dropbox/LABORATORIO/ASDi/3_RICONOSCITORE_DI_SEQUENZE/parte2/MacchineSequenzialiEse1/MacchineSequenzialiEse1.srcs/sources_1/new/riconoscitore_on_board.vhd2default:default2
462default:default8@Z8-638h px� 
`
%s
*synth2H
4	Parameter CLK_period bound to: 10 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter btn_noise_time bound to: 10000000 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2#
ButtonDebouncer2default:default2�
�C:/Users/riovi/Dropbox/LABORATORIO/ASDi/3_RICONOSCITORE_DI_SEQUENZE/parte2/MacchineSequenzialiEse1/MacchineSequenzialiEse1.srcs/sources_1/new/ButtonDebouncer.vhd2default:default2
342default:default2
B1_clear2default:default2#
ButtonDebouncer2default:default2�
�C:/Users/riovi/Dropbox/LABORATORIO/ASDi/3_RICONOSCITORE_DI_SEQUENZE/parte2/MacchineSequenzialiEse1/MacchineSequenzialiEse1.srcs/sources_1/new/riconoscitore_on_board.vhd2default:default2
862default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2#
ButtonDebouncer2default:default2�
�C:/Users/riovi/Dropbox/LABORATORIO/ASDi/3_RICONOSCITORE_DI_SEQUENZE/parte2/MacchineSequenzialiEse1/MacchineSequenzialiEse1.srcs/sources_1/new/ButtonDebouncer.vhd2default:default2
462default:default8@Z8-638h px� 
`
%s
*synth2H
4	Parameter CLK_period bound to: 10 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter btn_noise_time bound to: 10000000 - type: integer 
2default:defaulth p
x
� 
�
default block is never used226*oasys2�
�C:/Users/riovi/Dropbox/LABORATORIO/ASDi/3_RICONOSCITORE_DI_SEQUENZE/parte2/MacchineSequenzialiEse1/MacchineSequenzialiEse1.srcs/sources_1/new/ButtonDebouncer.vhd2default:default2
792default:default8@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2#
ButtonDebouncer2default:default2
02default:default2
12default:default2�
�C:/Users/riovi/Dropbox/LABORATORIO/ASDi/3_RICONOSCITORE_DI_SEQUENZE/parte2/MacchineSequenzialiEse1/MacchineSequenzialiEse1.srcs/sources_1/new/ButtonDebouncer.vhd2default:default2
462default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
control_unit2default:default2�
�C:/Users/riovi/Dropbox/LABORATORIO/ASDi/3_RICONOSCITORE_DI_SEQUENZE/parte2/MacchineSequenzialiEse1/MacchineSequenzialiEse1.srcs/sources_1/new/control_unit.vhd2default:default2
342default:default2
cu2default:default2 
control_unit2default:default2�
�C:/Users/riovi/Dropbox/LABORATORIO/ASDi/3_RICONOSCITORE_DI_SEQUENZE/parte2/MacchineSequenzialiEse1/MacchineSequenzialiEse1.srcs/sources_1/new/riconoscitore_on_board.vhd2default:default2
982default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2 
control_unit2default:default2�
�C:/Users/riovi/Dropbox/LABORATORIO/ASDi/3_RICONOSCITORE_DI_SEQUENZE/parte2/MacchineSequenzialiEse1/MacchineSequenzialiEse1.srcs/sources_1/new/control_unit.vhd2default:default2
422default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2 
control_unit2default:default2
02default:default2
12default:default2�
�C:/Users/riovi/Dropbox/LABORATORIO/ASDi/3_RICONOSCITORE_DI_SEQUENZE/parte2/MacchineSequenzialiEse1/MacchineSequenzialiEse1.srcs/sources_1/new/control_unit.vhd2default:default2
422default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2+
RiconoscitoreDiSequenze2default:default2�
�C:/Users/riovi/Dropbox/LABORATORIO/ASDi/3_RICONOSCITORE_DI_SEQUENZE/parte2/MacchineSequenzialiEse1/MacchineSequenzialiEse1.srcs/sources_1/new/RiconoscitoreDiSequenze.vhd2default:default2
342default:default2!
riconoscitore2default:default2+
RiconoscitoreDiSequenze2default:default2�
�C:/Users/riovi/Dropbox/LABORATORIO/ASDi/3_RICONOSCITORE_DI_SEQUENZE/parte2/MacchineSequenzialiEse1/MacchineSequenzialiEse1.srcs/sources_1/new/riconoscitore_on_board.vhd2default:default2
1002default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2+
RiconoscitoreDiSequenze2default:default2�
�C:/Users/riovi/Dropbox/LABORATORIO/ASDi/3_RICONOSCITORE_DI_SEQUENZE/parte2/MacchineSequenzialiEse1/MacchineSequenzialiEse1.srcs/sources_1/new/RiconoscitoreDiSequenze.vhd2default:default2
432default:default8@Z8-638h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
reset2default:default2�
�C:/Users/riovi/Dropbox/LABORATORIO/ASDi/3_RICONOSCITORE_DI_SEQUENZE/parte2/MacchineSequenzialiEse1/MacchineSequenzialiEse1.srcs/sources_1/new/RiconoscitoreDiSequenze.vhd2default:default2
532default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
reset2default:default2�
�C:/Users/riovi/Dropbox/LABORATORIO/ASDi/3_RICONOSCITORE_DI_SEQUENZE/parte2/MacchineSequenzialiEse1/MacchineSequenzialiEse1.srcs/sources_1/new/RiconoscitoreDiSequenze.vhd2default:default2
862default:default8@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2+
RiconoscitoreDiSequenze2default:default2
02default:default2
12default:default2�
�C:/Users/riovi/Dropbox/LABORATORIO/ASDi/3_RICONOSCITORE_DI_SEQUENZE/parte2/MacchineSequenzialiEse1/MacchineSequenzialiEse1.srcs/sources_1/new/RiconoscitoreDiSequenze.vhd2default:default2
432default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2*
riconoscitore_on_board2default:default2
02default:default2
12default:default2�
�C:/Users/riovi/Dropbox/LABORATORIO/ASDi/3_RICONOSCITORE_DI_SEQUENZE/parte2/MacchineSequenzialiEse1/MacchineSequenzialiEse1.srcs/sources_1/new/riconoscitore_on_board.vhd2default:default2
462default:default8@Z8-256h px� 
�
%s*synth2�
yFinished RTL Elaboration : Time (s): cpu = 00:00:01 ; elapsed = 00:00:05 . Memory (MB): peak = 1371.668 ; gain = 501.652
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:01 ; elapsed = 00:00:05 . Memory (MB): peak = 1371.668 ; gain = 501.652
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:01 ; elapsed = 00:00:05 . Memory (MB): peak = 1371.668 ; gain = 501.652
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1371.6682default:default2
0.0002default:defaultZ17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2�
�C:/Users/riovi/Dropbox/LABORATORIO/ASDi/3_RICONOSCITORE_DI_SEQUENZE/parte2/MacchineSequenzialiEse1/MacchineSequenzialiEse1.srcs/constrs_1/imports/digilent-xdc-master/Nexys-A7-50T-Master.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2�
�C:/Users/riovi/Dropbox/LABORATORIO/ASDi/3_RICONOSCITORE_DI_SEQUENZE/parte2/MacchineSequenzialiEse1/MacchineSequenzialiEse1.srcs/constrs_1/imports/digilent-xdc-master/Nexys-A7-50T-Master.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2�
�C:/Users/riovi/Dropbox/LABORATORIO/ASDi/3_RICONOSCITORE_DI_SEQUENZE/parte2/MacchineSequenzialiEse1/MacchineSequenzialiEse1.srcs/constrs_1/imports/digilent-xdc-master/Nexys-A7-50T-Master.xdc2default:default2<
(.Xil/riconoscitore_on_board_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1408.4652default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0032default:default2
1408.4652default:default2
0.0002default:defaultZ17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:03 ; elapsed = 00:00:10 . Memory (MB): peak = 1408.465 ; gain = 538.449
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Loading part: xc7a50ticsg324-1L
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:03 ; elapsed = 00:00:10 . Memory (MB): peak = 1408.465 ; gain = 538.449
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:03 ; elapsed = 00:00:10 . Memory (MB): peak = 1408.465 ; gain = 538.449
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2!
BTN_state_reg2default:default2#
ButtonDebouncer2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2'
stato_corrente1_reg2default:default2+
RiconoscitoreDiSequenze2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2'
stato_corrente0_reg2default:default2+
RiconoscitoreDiSequenze2default:defaultZ8-802h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_             not_pressed |                               00 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_             chk_pressed |                               01 |                               01
2default:defaulth p
x
� 
�
%s
*synth2s
_                 pressed |                               10 |                               10
2default:defaulth p
x
� 
�
%s
*synth2s
_         chk_not_pressed |                               11 |                               11
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2!
BTN_state_reg2default:default2

sequential2default:default2#
ButtonDebouncer2default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                      s0 |                              000 |                              000
2default:defaulth p
x
� 
�
%s
*synth2s
_                      s2 |                              001 |                              010
2default:defaulth p
x
� 
�
%s
*synth2s
_                      s1 |                              010 |                              001
2default:defaulth p
x
� 
�
%s
*synth2s
_                      s3 |                              011 |                              011
2default:defaulth p
x
� 
�
%s
*synth2s
_                      s4 |                              100 |                              100
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2'
stato_corrente0_reg2default:default2

sequential2default:default2+
RiconoscitoreDiSequenze2default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                      s0 |                               00 |                              000
2default:defaulth p
x
� 
�
%s
*synth2s
_                      s1 |                               01 |                              001
2default:defaulth p
x
� 
�
%s
*synth2s
_                      s2 |                               10 |                              010
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2'
stato_corrente1_reg2default:default2

sequential2default:default2+
RiconoscitoreDiSequenze2default:defaultZ8-3354h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:03 ; elapsed = 00:00:11 . Memory (MB): peak = 1408.465 ; gain = 538.449
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   9 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 6     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   7 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 5     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2k
WPart Resources:
DSPs: 120 (col length:60)
BRAMs: 150 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:03 ; elapsed = 00:00:12 . Memory (MB): peak = 1408.465 ; gain = 538.449
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:04 ; elapsed = 00:00:16 . Memory (MB): peak = 1408.465 ; gain = 538.449
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Timing Optimization : Time (s): cpu = 00:00:04 ; elapsed = 00:00:16 . Memory (MB): peak = 1408.465 ; gain = 538.449
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Technology Mapping : Time (s): cpu = 00:00:04 ; elapsed = 00:00:16 . Memory (MB): peak = 1408.465 ; gain = 538.449
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
vFinished IO Insertion : Time (s): cpu = 00:00:05 ; elapsed = 00:00:19 . Memory (MB): peak = 1408.465 ; gain = 538.449
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:05 ; elapsed = 00:00:19 . Memory (MB): peak = 1408.465 ; gain = 538.449
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:05 ; elapsed = 00:00:19 . Memory (MB): peak = 1408.465 ; gain = 538.449
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:05 ; elapsed = 00:00:19 . Memory (MB): peak = 1408.465 ; gain = 538.449
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:19 . Memory (MB): peak = 1408.465 ; gain = 538.449
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:05 ; elapsed = 00:00:19 . Memory (MB): peak = 1408.465 ; gain = 538.449
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|1     |BUFG   |     1|
2default:defaulth px� 
D
%s*synth2,
|2     |CARRY4 |     8|
2default:defaulth px� 
D
%s*synth2,
|3     |LUT1   |     1|
2default:defaulth px� 
D
%s*synth2,
|4     |LUT2   |     1|
2default:defaulth px� 
D
%s*synth2,
|5     |LUT3   |     2|
2default:defaulth px� 
D
%s*synth2,
|6     |LUT4   |     5|
2default:defaulth px� 
D
%s*synth2,
|7     |LUT5   |     7|
2default:defaulth px� 
D
%s*synth2,
|8     |LUT6   |     6|
2default:defaulth px� 
D
%s*synth2,
|9     |FDCE   |     5|
2default:defaulth px� 
D
%s*synth2,
|10    |FDRE   |    37|
2default:defaulth px� 
D
%s*synth2,
|11    |IBUF   |     6|
2default:defaulth px� 
D
%s*synth2,
|12    |OBUF   |     1|
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:05 ; elapsed = 00:00:19 . Memory (MB): peak = 1408.465 ; gain = 538.449
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:04 ; elapsed = 00:00:18 . Memory (MB): peak = 1408.465 ; gain = 501.652
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:05 ; elapsed = 00:00:20 . Memory (MB): peak = 1408.465 ; gain = 538.449
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1408.4652default:default2
0.0002default:defaultZ17-268h px� 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
82default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1408.4652default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
h
%Synth Design complete | Checksum: %s
562*	vivadotcl2
3107a2db2default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
392default:default2
32default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:062default:default2
00:00:232default:default2
1408.4652default:default2
916.4922default:defaultZ17-268h px� 
�
!Could not delete directory '%s'.
115*runs2�
�C:/Users/riovi/Dropbox/LABORATORIO/ASDi/3_RICONOSCITORE_DI_SEQUENZE/parte2/MacchineSequenzialiEse1/MacchineSequenzialiEse1.runs/synth_1/.Xil/Vivado-38724-MARIAP/dcp02default:defaultZ36-115h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2�
�C:/Users/riovi/Dropbox/LABORATORIO/ASDi/3_RICONOSCITORE_DI_SEQUENZE/parte2/MacchineSequenzialiEse1/MacchineSequenzialiEse1.runs/synth_1/riconoscitore_on_board.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
�Executing : report_utilization -file riconoscitore_on_board_utilization_synth.rpt -pb riconoscitore_on_board_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Fri Feb  7 16:54:23 20252default:defaultZ17-206h px� 


End Record