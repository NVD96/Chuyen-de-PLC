CoDeSys+<   �         �         @        @   2.3.9.31    @?    @                                     �J�W +    @                           W�O        �    @   q   C:\TWINCAT\PLC\LIB\STANDARD.LIB @                                                                                          CONCAT               STR1               ��              STR2               ��                 CONCAT                                         /J�W  �   ����           CTD           M             ��           Variable for CD Edge Detection      CD            ��           Count Down on rising edge    LOAD            ��           Load Start Value    PV           ��           Start Value       Q            ��           Counter reached 0    CV           ��           Current Counter Value             /J�W  �   ����           CTU           M             ��            Variable for CU Edge Detection       CU            ��       
    Count Up    RESET            ��           Reset Counter to 0    PV           ��           Counter Limit       Q            ��           Counter reached the Limit    CV           ��           Current Counter Value             /J�W  �   ����           CTUD           MU             ��            Variable for CU Edge Detection    MD             ��            Variable for CD Edge Detection       CU            ��	       
    Count Up    CD            ��
           Count Down    RESET            ��           Reset Counter to Null    LOAD            ��           Load Start Value    PV           ��           Start Value / Counter Limit       QU            ��           Counter reached Limit    QD            ��           Counter reached Null    CV           ��           Current Counter Value             /J�W  �   ����           DELETE               STR               ��              LEN           ��              POS           ��                 DELETE                                         /J�W  �   ����           F_TRIG           M             ��
                 CLK            ��           Signal to detect       Q            ��           Edge detected             /J�W  �   ����           FIND               STR1               ��              STR2               ��                 FIND                                     /J�W  �   ����           INSERT               STR1               ��              STR2               ��              POS           ��                 INSERT                                         /J�W  �   ����           LEFT               STR               ��              SIZE           ��                 LEFT                                         /J�W  �   ����           LEN               STR               ��                 LEN                                     /J�W  �   ����           MID               STR               ��              LEN           ��              POS           ��                 MID                                         /J�W  �   ����           R_TRIG           M             ��
                 CLK            ��           Signal to detect       Q            ��           Edge detected             /J�W  �   ����           REPLACE               STR1               ��              STR2               ��              L           ��              P           ��                 REPLACE                                         /J�W  �   ����           RIGHT               STR               ��              SIZE           ��                 RIGHT                                         /J�W  �   ����           RS               SET            ��              RESET1            ��                 Q1            ��
                       /J�W  �   ����           SEMA           X             ��                 CLAIM            ��	              RELEASE            ��
                 BUSY            ��                       /J�W  �   ����           SR               SET1            ��              RESET            ��                 Q1            ��	                       /J�W  �   ����           TOF           M             ��           internal variable 	   StartTime            ��           internal variable       IN            ��       ?    starts timer with falling edge, resets timer with rising edge    PT           ��           time to pass, before Q is set       Q            ��	       2    is FALSE, PT seconds after IN had a falling edge    ET           ��
           elapsed time             /J�W  �   ����           TON           M             ��           internal variable 	   StartTime            ��           internal variable       IN            ��       ?    starts timer with rising edge, resets timer with falling edge    PT           ��           time to pass, before Q is set       Q            ��	       0    is TRUE, PT seconds after IN had a rising edge    ET           ��
           elapsed time             /J�W  �   ����           TP        	   StartTime            ��           internal variable       IN            ��       !    Trigger for Start of the Signal    PT           ��       '    The length of the High-Signal in 10ms       Q            ��	           The pulse    ET           ��
       &    The current phase of the High-Signal             /J�W  �   ����    R    @                                                                                          F_REAL_TO_UINT           _nMult            2                  ifDataIn            2            
   inMantissa           2                  F_Real_To_Uint                                     /J�W  @   ����           F_UINT_TO_REAL           _nMult                              iuDataIn                       
   inMantissa                             F_Uint_To_Real                                      /J�W  @   ����           FB_INTERCOMM           _uDigital_IN            !            	   _nWordCnt            !            	   _nUnitCnt            !        !   Communication signals across PLCs
   arrComm_In   	  ?                       !        .   This input is directly coming from another PLC   arrComm_Out   	  ?                        !        +   This output is sent directly to another PLC      istUnitSettings                 ST_UnitSettings  !                      iostDSLine_IO                ST_DSLine_IO ! 	                   /J�W  @  ����           FB_LINESELECT           stHMI                   ST_HMI   '               _bInit            '        8    initialize device, bit will reset after first PLC scan 	   _nUnitCnt            '            	   _nLineCnt            '               _ManualDSLineSel             '            
   _SelLineNr            '                      onActiveLineNr           '               ostUnitSettings                 ST_UnitSettings  '                  iostDownStream_L1                ST_DSLine_IO '               iostDownStream_L2                ST_DSLine_IO '               iostDownStream_L3                ST_DSLine_IO '               iostDownStream_L4                ST_DSLine_IO '               iostDownStream_L5                ST_DSLine_IO '               iostDownStream_L6                ST_DSLine_IO '               iostDSActiveLine_IO                ST_DSLine_IO ' 
                   /J�W  @   ����           IO           _bDummy                          	   _outDummy                      <   Placeholder for outgoing signals this can have a value!!!!!!                    /J�W  @   ����           MAIN           fbLineselect                             FB_LineSelect   -               fbInterComm                     FB_InterComm   -               _stDSActiveLine_IO               ST_DSLine_IO   -               _stUnitSettings                 ST_UnitSettings   -               _nActiveLineNr            -                                /J�W  @   ����            
 C      8   	   -   &   !   '   %   /   .   #   $   *   )   3   ( �!      K   �!     K   �!     K   "     K   "                 *"         +     ��localhost       ���w   ��@     �       �    ��     p� �\�wp �w�������w>�3     �� ��@           ��@     �p�� �p\        �p   �pyk�   ��    \� �� ��  �|��|������|�� ��@        �� ��@     �� `�O����p� �� x�O����|� �8�     ,   ,                                                        K         @   /J�W�#  /*BECKCONFI3*/
        +��  @   @   �   �     3               
   Standard            	�J�W                        VAR_GLOBAL
END_VAR
                                                                                  "   , , , lL             Standard
         MAIN();IO();����               �J�W                 $����                                            Standard W�O	W�O                                       	�J�W                        VAR_CONFIG
END_VAR
                                                                                   '              , -           Global_Variables /J�W	/J�W                     u   (* Global_Variables (CONSTANT) *)

VAR_GLOBAL CONSTANT
	gnMaxUnit	:	INT := 5;
	gnMaxDSLine	:	INT := 6;
END_VAR
                                                                                               '           "   ,   ";           IO /J�W	/J�W"     _Rl__Ut(        �   (* Global_Variables (IO) *)

VAR_GLOBAL
	gstLine_1_IO	:	ST_DSLine_IO;
	gstLine_2_IO	:	ST_DSLine_IO;
	gstLine_3_IO	:	ST_DSLine_IO;
	gstLine_4_IO	:	ST_DSLine_IO;
	gstLine_5_IO	:	ST_DSLine_IO;
	gstLine_6_IO	:	ST_DSLine_IO;
END_VAR
                                                                                               '           3   , � � �           IO_Line1 �J�W	�J�W3      Fatg in        w  (* Global_Variables (IO_Line1) *)

VAR_GLOBAL

(*	Digital signals for downstream unit 1 on production line 1*)
	giRFP_L1_U1		AT	%I*	:	BOOL; 	(*Ready For Production*)
 	giPDS_L1_U1		AT	%I*	:	BOOL;	(*Product DownStream*)
	giSPS_L1_U1		AT	%I*	:	BOOL;	(*Sterideal Production Stop*)
	giRFW_L1_U1		AT	%I*	:	BOOL;	(*Request For Water*)
	giSBS_L1_U1		AT	%I*	:	BOOL;	(*Steam Barrier Sterile*)
	giFCA_L1_U1		AT	%I*	:	BOOL;	(*Filler CIP Active *)

	goUST_L1_U1		AT	%Q*	:	BOOL;	(*Unit Sterile conditions*)
 	goPAM_L1_U1		AT	%Q*	:	BOOL;	(*Product At Machine*)
	goWAM_L1_U1		AT	%Q*	:	BOOL;	(*Water At Machine*)
	goCIP_L1_U1		AT	%Q*	:	BOOL;	(*Cleaning In Place*)
	goCSB_L1_U1		AT	%Q*	:	BOOL;	(*Clean Steam Barrier*)

(*	Analogue signals for downstream unit 1 on production line 1*)
	ifFPR_L1_U1		AT	%I*	:	REAL;	(* Floating Point signal from Downstream Unit, Filling Pressure Request *)

	ofLVL_L1_U1		AT	%Q*	:	REAL;	(* Floating Point signal to Downstream Unit, Level Tank *)


(*	Digital signals for downstream unit 2 on production line 1*)
	giRFP_L1_U2		AT	%I*	:	BOOL; 	(*Ready For Production*)
 	giPDS_L1_U2		AT	%I*	:	BOOL;	(*Product DownStream*)
	giSPS_L1_U2		AT	%I*	:	BOOL;	(*Sterideal Production Stop*)
	giRFW_L1_U2		AT	%I*	:	BOOL;	(*Request For Water*)
	giSBS_L1_U2		AT	%I*	:	BOOL;	(*Steam Barrier Sterile*)
	giFCA_L1_U2		AT	%I*	:	BOOL;	(*Filler CIP Active *)

	goUST_L1_U2		AT	%Q*	:	BOOL;	(*Unit Sterile conditions*)
 	goPAM_L1_U2		AT	%Q*	:	BOOL;	(*Product At Machine*)
	goWAM_L1_U2		AT	%Q*	:	BOOL;	(*Water At Machine*)
	goCIP_L1_U2		AT	%Q*	:	BOOL;	(*Cleaning In Place*)
	goCSB_L1_U2		AT	%Q*	:	BOOL;	(*Clean Steam Barrier*)

(*	Analogue signals for downstream unit 2 on production line 1*)
	ifFPR_L1_U2		AT	%I*	:	REAL;	(* Floating Point signal from Downstream Unit, Filling Pressure Request *)

	ofLVL_L1_U2		AT	%Q*	:	REAL;	(* Floating Point signal to Downstream Unit, Level Tank *)

(*	Digital signals for downstream unit 3 on production line 1*)
	giRFP_L1_U3		AT	%I*	:	BOOL; 	(*Ready For Production*)
 	giPDS_L1_U3		AT	%I*	:	BOOL;	(*Product DownStream*)
	giSPS_L1_U3		AT	%I*	:	BOOL;	(*Sterideal Production Stop*)
	giRFW_L1_U3		AT	%I*	:	BOOL;	(*Request For Water*)
	giSBS_L1_U3		AT	%I*	:	BOOL;	(*Steam Barrier Sterile*)
	giFCA_L1_U3		AT	%I*	:	BOOL;	(*Filler CIP Active *)

	goUST_L1_U3		AT	%Q*	:	BOOL;	(*Unit Sterile conditions*)
 	goPAM_L1_U3		AT	%Q*	:	BOOL;	(*Product At Machine*)
	goWAM_L1_U3		AT	%Q*	:	BOOL;	(*Water At Machine*)
	goCIP_L1_U3		AT	%Q*	:	BOOL;	(*Cleaning In Place*)
	goCSB_L1_U3		AT	%Q*	:	BOOL;	(*Clean Steam Barrier*)

(*	Analogue signals for downstream unit 3 on production line 1*)
	ifFPR_L1_U3		AT	%I*	:	REAL;	(* Floating Point signal from Downstream Unit, Filling Pressure Request *)

	ofLVL_L1_U3		AT	%Q*	:	REAL;	(* Floating Point signal to Downstream Unit, Level Tank *)

(*	Digital signals for downstream unit 4 on production line 1*)
	giRFP_L1_U4		AT	%I*	:	BOOL; 	(*Ready For Production*)
 	giPDS_L1_U4		AT	%I*	:	BOOL;	(*Product DownStream*)
	giSPS_L1_U4		AT	%I*	:	BOOL;	(*Sterideal Production Stop*)
	giRFW_L1_U4		AT	%I*	:	BOOL;	(*Request For Water*)
	giSBS_L1_U4		AT	%I*	:	BOOL;	(*Steam Barrier Sterile*)
	giFCA_L1_U4		AT	%I*	:	BOOL;	(*Filler CIP Active *)

	goUST_L1_U4		AT	%Q*	:	BOOL;	(*Unit Sterile conditions*)
 	goPAM_L1_U4		AT	%Q*	:	BOOL;	(*Product At Machine*)
	goWAM_L1_U4		AT	%Q*	:	BOOL;	(*Water At Machine*)
	goCIP_L1_U4		AT	%Q*	:	BOOL;	(*Cleaning In Place*)
	goCSB_L1_U4		AT	%Q*	:	BOOL;	(*Clean Steam Barrier*)

(*	Analogue signals for downstream unit 4 on production line 1*)
	ifFPR_L1_U4		AT	%I*	:	REAL;	(* Floating Point signal from Downstream Unit, Filling Pressure Request *)

	ofLVL_L1_U4		AT	%Q*	:	REAL;	(* Floating Point signal to Downstream Unit, Level Tank *)


(*	Digital signals for downstream unit 5 on production line 1*)
	giRFP_L1_U5		AT	%I*	:	BOOL; 	(*Ready For Production*)
 	giPDS_L1_U5		AT	%I*	:	BOOL;	(*Product DownStream*)
	giSPS_L1_U5		AT	%I*	:	BOOL;	(*Sterideal Production Stop*)
	giRFW_L1_U5		AT	%I*	:	BOOL;	(*Request For Water*)
	giSBS_L1_U5		AT	%I*	:	BOOL;	(*Steam Barrier Sterile*)
	giFCA_L1_U5		AT	%I*	:	BOOL;	(*Filler CIP Active *)

	goUST_L1_U5		AT	%Q*	:	BOOL;	(*Unit Sterile conditions*)
 	goPAM_L1_U5		AT	%Q*	:	BOOL;	(*Product At Machine*)
	goWAM_L1_U5		AT	%Q*	:	BOOL;	(*Water At Machine*)
	goCIP_L1_U5		AT	%Q*	:	BOOL;	(*Cleaning In Place*)
	goCSB_L1_U5		AT	%Q*	:	BOOL;	(*Clean Steam Barrier*)

(*	Analogue signals for downstream unit 5 on production line 1*)
	ifFPR_L1_U5		AT	%I*	:	REAL;	(* Floating Point signal from Downstream Unit, Filling Pressure Request *)

	ofLVL_L1_U5		AT	%Q*	:	REAL;	(* Floating Point signal to Downstream Unit, Level Tank *)
END_VAR
                                                                                               '           1   , � � ��           IO_Line2 �J�W	�J�W1     ReDaIn=         w  (* Global_Variables (IO_Line2) *)

VAR_GLOBAL

(*	Digital signals for downstream unit 1 on production line 1*)
	giRFP_L2_U1		AT	%I*	:	BOOL; 	(*Ready For Production*)
 	giPDS_L2_U1		AT	%I*	:	BOOL;	(*Product DownStream*)
	giSPS_L2_U1		AT	%I*	:	BOOL;	(*Sterideal Production Stop*)
	giRFW_L2_U1		AT	%I*	:	BOOL;	(*Request For Water*)
	giSBS_L2_U1		AT	%I*	:	BOOL;	(*Steam Barrier Sterile*)
	giFCA_L2_U1		AT	%I*	:	BOOL;	(*Filler CIP Active *)

	goUST_L2_U1		AT	%Q*	:	BOOL;	(*Unit Sterile conditions*)
 	goPAM_L2_U1		AT	%Q*	:	BOOL;	(*Product At Machine*)
	goWAM_L2_U1		AT	%Q*	:	BOOL;	(*Water At Machine*)
	goCIP_L2_U1		AT	%Q*	:	BOOL;	(*Cleaning In Place*)
	goCSB_L2_U1		AT	%Q*	:	BOOL;	(*Clean Steam Barrier*)

(*	Analogue signals for downstream unit 1 on production line 1*)
	ifFPR_L2_U1		AT	%I*	:	REAL;	(* Floating Point signal from Downstream Unit, Filling Pressure Request *)

	ofLVL_L2_U1		AT	%Q*	:	REAL;	(* Floating Point signal to Downstream Unit, Level Tank *)


(*	Digital signals for downstream unit 2 on production line 1*)
	giRFP_L2_U2		AT	%I*	:	BOOL; 	(*Ready For Production*)
 	giPDS_L2_U2		AT	%I*	:	BOOL;	(*Product DownStream*)
	giSPS_L2_U2		AT	%I*	:	BOOL;	(*Sterideal Production Stop*)
	giRFW_L2_U2		AT	%I*	:	BOOL;	(*Request For Water*)
	giSBS_L2_U2		AT	%I*	:	BOOL;	(*Steam Barrier Sterile*)
	giFCA_L2_U2		AT	%I*	:	BOOL;	(*Filler CIP Active *)

	goUST_L2_U2		AT	%Q*	:	BOOL;	(*Unit Sterile conditions*)
 	goPAM_L2_U2		AT	%Q*	:	BOOL;	(*Product At Machine*)
	goWAM_L2_U2		AT	%Q*	:	BOOL;	(*Water At Machine*)
	goCIP_L2_U2		AT	%Q*	:	BOOL;	(*Cleaning In Place*)
	goCSB_L2_U2		AT	%Q*	:	BOOL;	(*Clean Steam Barrier*)

(*	Analogue signals for downstream unit 2 on production line 1*)
	ifFPR_L2_U2		AT	%I*	:	REAL;	(* Floating Point signal from Downstream Unit, Filling Pressure Request *)

	ofLVL_L2_U2		AT	%Q*	:	REAL;	(* Floating Point signal to Downstream Unit, Level Tank *)

(*	Digital signals for downstream unit 3 on production line 1*)
	giRFP_L2_U3		AT	%I*	:	BOOL; 	(*Ready For Production*)
 	giPDS_L2_U3		AT	%I*	:	BOOL;	(*Product DownStream*)
	giSPS_L2_U3		AT	%I*	:	BOOL;	(*Sterideal Production Stop*)
	giRFW_L2_U3		AT	%I*	:	BOOL;	(*Request For Water*)
	giSBS_L2_U3		AT	%I*	:	BOOL;	(*Steam Barrier Sterile*)
	giFCA_L2_U3		AT	%I*	:	BOOL;	(*Filler CIP Active *)

	goUST_L2_U3		AT	%Q*	:	BOOL;	(*Unit Sterile conditions*)
 	goPAM_L2_U3		AT	%Q*	:	BOOL;	(*Product At Machine*)
	goWAM_L2_U3		AT	%Q*	:	BOOL;	(*Water At Machine*)
	goCIP_L2_U3		AT	%Q*	:	BOOL;	(*Cleaning In Place*)
	goCSB_L2_U3		AT	%Q*	:	BOOL;	(*Clean Steam Barrier*)

(*	Analogue signals for downstream unit 3 on production line 1*)
	ifFPR_L2_U3		AT	%I*	:	REAL;	(* Floating Point signal from Downstream Unit, Filling Pressure Request *)

	ofLVL_L2_U3		AT	%Q*	:	REAL;	(* Floating Point signal to Downstream Unit, Level Tank *)

(*	Digital signals for downstream unit 4 on production line 1*)
	giRFP_L2_U4		AT	%I*	:	BOOL; 	(*Ready For Production*)
 	giPDS_L2_U4		AT	%I*	:	BOOL;	(*Product DownStream*)
	giSPS_L2_U4		AT	%I*	:	BOOL;	(*Sterideal Production Stop*)
	giRFW_L2_U4		AT	%I*	:	BOOL;	(*Request For Water*)
	giSBS_L2_U4		AT	%I*	:	BOOL;	(*Steam Barrier Sterile*)
	giFCA_L2_U4		AT	%I*	:	BOOL;	(*Filler CIP Active *)

	goUST_L2_U4		AT	%Q*	:	BOOL;	(*Unit Sterile conditions*)
 	goPAM_L2_U4		AT	%Q*	:	BOOL;	(*Product At Machine*)
	goWAM_L2_U4		AT	%Q*	:	BOOL;	(*Water At Machine*)
	goCIP_L2_U4		AT	%Q*	:	BOOL;	(*Cleaning In Place*)
	goCSB_L2_U4		AT	%Q*	:	BOOL;	(*Clean Steam Barrier*)

(*	Analogue signals for downstream unit 4 on production line 1*)
	ifFPR_L2_U4		AT	%I*	:	REAL;	(* Floating Point signal from Downstream Unit, Filling Pressure Request *)

	ofLVL_L2_U4		AT	%Q*	:	REAL;	(* Floating Point signal to Downstream Unit, Level Tank *)


(*	Digital signals for downstream unit 5 on production line 1*)
	giRFP_L2_U5		AT	%I*	:	BOOL; 	(*Ready For Production*)
 	giPDS_L2_U5		AT	%I*	:	BOOL;	(*Product DownStream*)
	giSPS_L2_U5		AT	%I*	:	BOOL;	(*Sterideal Production Stop*)
	giRFW_L2_U5		AT	%I*	:	BOOL;	(*Request For Water*)
	giSBS_L2_U5		AT	%I*	:	BOOL;	(*Steam Barrier Sterile*)
	giFCA_L2_U5		AT	%I*	:	BOOL;	(*Filler CIP Active *)

	goUST_L2_U5		AT	%Q*	:	BOOL;	(*Unit Sterile conditions*)
 	goPAM_L2_U5		AT	%Q*	:	BOOL;	(*Product At Machine*)
	goWAM_L2_U5		AT	%Q*	:	BOOL;	(*Water At Machine*)
	goCIP_L2_U5		AT	%Q*	:	BOOL;	(*Cleaning In Place*)
	goCSB_L2_U5		AT	%Q*	:	BOOL;	(*Clean Steam Barrier*)

(*	Analogue signals for downstream unit 5 on production line 1*)
	ifFPR_L2_U5		AT	%I*	:	REAL;	(* Floating Point signal from Downstream Unit, Filling Pressure Request *)

	ofLVL_L2_U5		AT	%Q*	:	REAL;	(* Floating Point signal to Downstream Unit, Level Tank *)
END_VAR
                                                                                               '           ,   , � � �           IO_Line3 �J�W	�J�W,      Fatg in        w  (* Global_Variables (IO_Line1) *)

VAR_GLOBAL

(*	Digital signals for downstream unit 1 on production line 1*)
	giRFP_L3_U1		AT	%I*	:	BOOL; 	(*Ready For Production*)
 	giPDS_L3_U1		AT	%I*	:	BOOL;	(*Product DownStream*)
	giSPS_L3_U1		AT	%I*	:	BOOL;	(*Sterideal Production Stop*)
	giRFW_L3_U1		AT	%I*	:	BOOL;	(*Request For Water*)
	giSBS_L3_U1		AT	%I*	:	BOOL;	(*Steam Barrier Sterile*)
	giFCA_L3_U1		AT	%I*	:	BOOL;	(*Filler CIP Active *)

	goUST_L3_U1		AT	%Q*	:	BOOL;	(*Unit Sterile conditions*)
 	goPAM_L3_U1		AT	%Q*	:	BOOL;	(*Product At Machine*)
	goWAM_L3_U1		AT	%Q*	:	BOOL;	(*Water At Machine*)
	goCIP_L3_U1		AT	%Q*	:	BOOL;	(*Cleaning In Place*)
	goCSB_L3_U1		AT	%Q*	:	BOOL;	(*Clean Steam Barrier*)

(*	Analogue signals for downstream unit 1 on production line 1*)
	ifFPR_L3_U1		AT	%I*	:	REAL;	(* Floating Point signal from Downstream Unit, Filling Pressure Request *)

	ofLVL_L3_U1		AT	%Q*	:	REAL;	(* Floating Point signal to Downstream Unit, Level Tank *)


(*	Digital signals for downstream unit 2 on production line 1*)
	giRFP_L3_U2		AT	%I*	:	BOOL; 	(*Ready For Production*)
 	giPDS_L3_U2		AT	%I*	:	BOOL;	(*Product DownStream*)
	giSPS_L3_U2		AT	%I*	:	BOOL;	(*Sterideal Production Stop*)
	giRFW_L3_U2		AT	%I*	:	BOOL;	(*Request For Water*)
	giSBS_L3_U2		AT	%I*	:	BOOL;	(*Steam Barrier Sterile*)
	giFCA_L3_U2		AT	%I*	:	BOOL;	(*Filler CIP Active *)

	goUST_L3_U2		AT	%Q*	:	BOOL;	(*Unit Sterile conditions*)
 	goPAM_L3_U2		AT	%Q*	:	BOOL;	(*Product At Machine*)
	goWAM_L3_U2		AT	%Q*	:	BOOL;	(*Water At Machine*)
	goCIP_L3_U2		AT	%Q*	:	BOOL;	(*Cleaning In Place*)
	goCSB_L3_U2		AT	%Q*	:	BOOL;	(*Clean Steam Barrier*)

(*	Analogue signals for downstream unit 2 on production line 1*)
	ifFPR_L3_U2		AT	%I*	:	REAL;	(* Floating Point signal from Downstream Unit, Filling Pressure Request *)

	ofLVL_L3_U2		AT	%Q*	:	REAL;	(* Floating Point signal to Downstream Unit, Level Tank *)

(*	Digital signals for downstream unit 3 on production line 1*)
	giRFP_L3_U3		AT	%I*	:	BOOL; 	(*Ready For Production*)
 	giPDS_L3_U3		AT	%I*	:	BOOL;	(*Product DownStream*)
	giSPS_L3_U3		AT	%I*	:	BOOL;	(*Sterideal Production Stop*)
	giRFW_L3_U3		AT	%I*	:	BOOL;	(*Request For Water*)
	giSBS_L3_U3		AT	%I*	:	BOOL;	(*Steam Barrier Sterile*)
	giFCA_L3_U3		AT	%I*	:	BOOL;	(*Filler CIP Active *)

	goUST_L3_U3		AT	%Q*	:	BOOL;	(*Unit Sterile conditions*)
 	goPAM_L3_U3		AT	%Q*	:	BOOL;	(*Product At Machine*)
	goWAM_L3_U3		AT	%Q*	:	BOOL;	(*Water At Machine*)
	goCIP_L3_U3		AT	%Q*	:	BOOL;	(*Cleaning In Place*)
	goCSB_L3_U3		AT	%Q*	:	BOOL;	(*Clean Steam Barrier*)

(*	Analogue signals for downstream unit 3 on production line 1*)
	ifFPR_L3_U3		AT	%I*	:	REAL;	(* Floating Point signal from Downstream Unit, Filling Pressure Request *)

	ofLVL_L3_U3		AT	%Q*	:	REAL;	(* Floating Point signal to Downstream Unit, Level Tank *)

(*	Digital signals for downstream unit 4 on production line 1*)
	giRFP_L3_U4		AT	%I*	:	BOOL; 	(*Ready For Production*)
 	giPDS_L3_U4		AT	%I*	:	BOOL;	(*Product DownStream*)
	giSPS_L3_U4		AT	%I*	:	BOOL;	(*Sterideal Production Stop*)
	giRFW_L3_U4		AT	%I*	:	BOOL;	(*Request For Water*)
	giSBS_L3_U4		AT	%I*	:	BOOL;	(*Steam Barrier Sterile*)
	giFCA_L3_U4		AT	%I*	:	BOOL;	(*Filler CIP Active *)

	goUST_L3_U4		AT	%Q*	:	BOOL;	(*Unit Sterile conditions*)
 	goPAM_L3_U4		AT	%Q*	:	BOOL;	(*Product At Machine*)
	goWAM_L3_U4		AT	%Q*	:	BOOL;	(*Water At Machine*)
	goCIP_L3_U4		AT	%Q*	:	BOOL;	(*Cleaning In Place*)
	goCSB_L3_U4		AT	%Q*	:	BOOL;	(*Clean Steam Barrier*)

(*	Analogue signals for downstream unit 4 on production line 1*)
	ifFPR_L3_U4		AT	%I*	:	REAL;	(* Floating Point signal from Downstream Unit, Filling Pressure Request *)

	ofLVL_L3_U4		AT	%Q*	:	REAL;	(* Floating Point signal to Downstream Unit, Level Tank *)


(*	Digital signals for downstream unit 5 on production line 1*)
	giRFP_L3_U5		AT	%I*	:	BOOL; 	(*Ready For Production*)
 	giPDS_L3_U5		AT	%I*	:	BOOL;	(*Product DownStream*)
	giSPS_L3_U5		AT	%I*	:	BOOL;	(*Sterideal Production Stop*)
	giRFW_L3_U5		AT	%I*	:	BOOL;	(*Request For Water*)
	giSBS_L3_U5		AT	%I*	:	BOOL;	(*Steam Barrier Sterile*)
	giFCA_L3_U5		AT	%I*	:	BOOL;	(*Filler CIP Active *)

	goUST_L3_U5		AT	%Q*	:	BOOL;	(*Unit Sterile conditions*)
 	goPAM_L3_U5		AT	%Q*	:	BOOL;	(*Product At Machine*)
	goWAM_L3_U5		AT	%Q*	:	BOOL;	(*Water At Machine*)
	goCIP_L3_U5		AT	%Q*	:	BOOL;	(*Cleaning In Place*)
	goCSB_L3_U5		AT	%Q*	:	BOOL;	(*Clean Steam Barrier*)

(*	Analogue signals for downstream unit 5 on production line 1*)
	ifFPR_L3_U5		AT	%I*	:	REAL;	(* Floating Point signal from Downstream Unit, Filling Pressure Request *)

	ofLVL_L3_U5		AT	%Q*	:	REAL;	(* Floating Point signal to Downstream Unit, Level Tank *)
END_VAR
                                                                                               '           4   ,   �;           IO_Line4 �J�W	�J�W4      Fatg in        w  (* Global_Variables (IO_Line1) *)

VAR_GLOBAL

(*	Digital signals for downstream unit 1 on production line 1*)
	giRFP_L4_U1		AT	%I*	:	BOOL; 	(*Ready For Production*)
 	giPDS_L4_U1		AT	%I*	:	BOOL;	(*Product DownStream*)
	giSPS_L4_U1		AT	%I*	:	BOOL;	(*Sterideal Production Stop*)
	giRFW_L4_U1		AT	%I*	:	BOOL;	(*Request For Water*)
	giSBS_L4_U1		AT	%I*	:	BOOL;	(*Steam Barrier Sterile*)
	giFCA_L4_U1		AT	%I*	:	BOOL;	(*Filler CIP Active *)

	goUST_L4_U1		AT	%Q*	:	BOOL;	(*Unit Sterile conditions*)
 	goPAM_L4_U1		AT	%Q*	:	BOOL;	(*Product At Machine*)
	goWAM_L4_U1		AT	%Q*	:	BOOL;	(*Water At Machine*)
	goCIP_L4_U1		AT	%Q*	:	BOOL;	(*Cleaning In Place*)
	goCSB_L4_U1		AT	%Q*	:	BOOL;	(*Clean Steam Barrier*)

(*	Analogue signals for downstream unit 1 on production line 1*)
	ifFPR_L4_U1		AT	%I*	:	REAL;	(* Floating Point signal from Downstream Unit, Filling Pressure Request *)

	ofLVL_L4_U1		AT	%Q*	:	REAL;	(* Floating Point signal to Downstream Unit, Level Tank *)


(*	Digital signals for downstream unit 2 on production line 1*)
	giRFP_L4_U2		AT	%I*	:	BOOL; 	(*Ready For Production*)
 	giPDS_L4_U2		AT	%I*	:	BOOL;	(*Product DownStream*)
	giSPS_L4_U2		AT	%I*	:	BOOL;	(*Sterideal Production Stop*)
	giRFW_L4_U2		AT	%I*	:	BOOL;	(*Request For Water*)
	giSBS_L4_U2		AT	%I*	:	BOOL;	(*Steam Barrier Sterile*)
	giFCA_L4_U2		AT	%I*	:	BOOL;	(*Filler CIP Active *)

	goUST_L4_U2		AT	%Q*	:	BOOL;	(*Unit Sterile conditions*)
 	goPAM_L4_U2		AT	%Q*	:	BOOL;	(*Product At Machine*)
	goWAM_L4_U2		AT	%Q*	:	BOOL;	(*Water At Machine*)
	goCIP_L4_U2		AT	%Q*	:	BOOL;	(*Cleaning In Place*)
	goCSB_L4_U2		AT	%Q*	:	BOOL;	(*Clean Steam Barrier*)

(*	Analogue signals for downstream unit 2 on production line 1*)
	ifFPR_L4_U2		AT	%I*	:	REAL;	(* Floating Point signal from Downstream Unit, Filling Pressure Request *)

	ofLVL_L4_U2		AT	%Q*	:	REAL;	(* Floating Point signal to Downstream Unit, Level Tank *)

(*	Digital signals for downstream unit 3 on production line 1*)
	giRFP_L4_U3		AT	%I*	:	BOOL; 	(*Ready For Production*)
 	giPDS_L4_U3		AT	%I*	:	BOOL;	(*Product DownStream*)
	giSPS_L4_U3		AT	%I*	:	BOOL;	(*Sterideal Production Stop*)
	giRFW_L4_U3		AT	%I*	:	BOOL;	(*Request For Water*)
	giSBS_L4_U3		AT	%I*	:	BOOL;	(*Steam Barrier Sterile*)
	giFCA_L4_U3		AT	%I*	:	BOOL;	(*Filler CIP Active *)

	goUST_L4_U3		AT	%Q*	:	BOOL;	(*Unit Sterile conditions*)
 	goPAM_L4_U3		AT	%Q*	:	BOOL;	(*Product At Machine*)
	goWAM_L4_U3		AT	%Q*	:	BOOL;	(*Water At Machine*)
	goCIP_L4_U3		AT	%Q*	:	BOOL;	(*Cleaning In Place*)
	goCSB_L4_U3		AT	%Q*	:	BOOL;	(*Clean Steam Barrier*)

(*	Analogue signals for downstream unit 3 on production line 1*)
	ifFPR_L4_U3		AT	%I*	:	REAL;	(* Floating Point signal from Downstream Unit, Filling Pressure Request *)

	ofLVL_L4_U3		AT	%Q*	:	REAL;	(* Floating Point signal to Downstream Unit, Level Tank *)

(*	Digital signals for downstream unit 4 on production line 1*)
	giRFP_L4_U4		AT	%I*	:	BOOL; 	(*Ready For Production*)
 	giPDS_L4_U4		AT	%I*	:	BOOL;	(*Product DownStream*)
	giSPS_L4_U4		AT	%I*	:	BOOL;	(*Sterideal Production Stop*)
	giRFW_L4_U4		AT	%I*	:	BOOL;	(*Request For Water*)
	giSBS_L4_U4		AT	%I*	:	BOOL;	(*Steam Barrier Sterile*)
	giFCA_L4_U4		AT	%I*	:	BOOL;	(*Filler CIP Active *)

	goUST_L4_U4		AT	%Q*	:	BOOL;	(*Unit Sterile conditions*)
 	goPAM_L4_U4		AT	%Q*	:	BOOL;	(*Product At Machine*)
	goWAM_L4_U4		AT	%Q*	:	BOOL;	(*Water At Machine*)
	goCIP_L4_U4		AT	%Q*	:	BOOL;	(*Cleaning In Place*)
	goCSB_L4_U4		AT	%Q*	:	BOOL;	(*Clean Steam Barrier*)

(*	Analogue signals for downstream unit 4 on production line 1*)
	ifFPR_L4_U4		AT	%I*	:	REAL;	(* Floating Point signal from Downstream Unit, Filling Pressure Request *)

	ofLVL_L4_U4		AT	%Q*	:	REAL;	(* Floating Point signal to Downstream Unit, Level Tank *)


(*	Digital signals for downstream unit 5 on production line 1*)
	giRFP_L4_U5		AT	%I*	:	BOOL; 	(*Ready For Production*)
 	giPDS_L4_U5		AT	%I*	:	BOOL;	(*Product DownStream*)
	giSPS_L4_U5		AT	%I*	:	BOOL;	(*Sterideal Production Stop*)
	giRFW_L4_U5		AT	%I*	:	BOOL;	(*Request For Water*)
	giSBS_L4_U5		AT	%I*	:	BOOL;	(*Steam Barrier Sterile*)
	giFCA_L4_U5		AT	%I*	:	BOOL;	(*Filler CIP Active *)

	goUST_L4_U5		AT	%Q*	:	BOOL;	(*Unit Sterile conditions*)
 	goPAM_L4_U5		AT	%Q*	:	BOOL;	(*Product At Machine*)
	goWAM_L4_U5		AT	%Q*	:	BOOL;	(*Water At Machine*)
	goCIP_L4_U5		AT	%Q*	:	BOOL;	(*Cleaning In Place*)
	goCSB_L4_U5		AT	%Q*	:	BOOL;	(*Clean Steam Barrier*)

(*	Analogue signals for downstream unit 5 on production line 1*)
	ifFPR_L4_U5		AT	%I*	:	REAL;	(* Floating Point signal from Downstream Unit, Filling Pressure Request *)

	ofLVL_L4_U5		AT	%Q*	:	REAL;	(* Floating Point signal to Downstream Unit, Level Tank *)
END_VAR
                                                                                               '           5   , , : �X           IO_Line5 �J�W	�J�W5      Fatg in        w  (* Global_Variables (IO_Line1) *)

VAR_GLOBAL

(*	Digital signals for downstream unit 1 on production line 1*)
	giRFP_L5_U1		AT	%I*	:	BOOL; 	(*Ready For Production*)
 	giPDS_L5_U1		AT	%I*	:	BOOL;	(*Product DownStream*)
	giSPS_L5_U1		AT	%I*	:	BOOL;	(*Sterideal Production Stop*)
	giRFW_L5_U1		AT	%I*	:	BOOL;	(*Request For Water*)
	giSBS_L5_U1		AT	%I*	:	BOOL;	(*Steam Barrier Sterile*)
	giFCA_L5_U1		AT	%I*	:	BOOL;	(*Filler CIP Active *)

	goUST_L5_U1		AT	%Q*	:	BOOL;	(*Unit Sterile conditions*)
 	goPAM_L5_U1		AT	%Q*	:	BOOL;	(*Product At Machine*)
	goWAM_L5_U1		AT	%Q*	:	BOOL;	(*Water At Machine*)
	goCIP_L5_U1		AT	%Q*	:	BOOL;	(*Cleaning In Place*)
	goCSB_L5_U1		AT	%Q*	:	BOOL;	(*Clean Steam Barrier*)

(*	Analogue signals for downstream unit 1 on production line 1*)
	ifFPR_L5_U1		AT	%I*	:	REAL;	(* Floating Point signal from Downstream Unit, Filling Pressure Request *)

	ofLVL_L5_U1		AT	%Q*	:	REAL;	(* Floating Point signal to Downstream Unit, Level Tank *)


(*	Digital signals for downstream unit 2 on production line 1*)
	giRFP_L5_U2		AT	%I*	:	BOOL; 	(*Ready For Production*)
 	giPDS_L5_U2		AT	%I*	:	BOOL;	(*Product DownStream*)
	giSPS_L5_U2		AT	%I*	:	BOOL;	(*Sterideal Production Stop*)
	giRFW_L5_U2		AT	%I*	:	BOOL;	(*Request For Water*)
	giSBS_L5_U2		AT	%I*	:	BOOL;	(*Steam Barrier Sterile*)
	giFCA_L5_U2		AT	%I*	:	BOOL;	(*Filler CIP Active *)

	goUST_L5_U2		AT	%Q*	:	BOOL;	(*Unit Sterile conditions*)
 	goPAM_L5_U2		AT	%Q*	:	BOOL;	(*Product At Machine*)
	goWAM_L5_U2		AT	%Q*	:	BOOL;	(*Water At Machine*)
	goCIP_L5_U2		AT	%Q*	:	BOOL;	(*Cleaning In Place*)
	goCSB_L5_U2		AT	%Q*	:	BOOL;	(*Clean Steam Barrier*)

(*	Analogue signals for downstream unit 2 on production line 1*)
	ifFPR_L5_U2		AT	%I*	:	REAL;	(* Floating Point signal from Downstream Unit, Filling Pressure Request *)

	ofLVL_L5_U2		AT	%Q*	:	REAL;	(* Floating Point signal to Downstream Unit, Level Tank *)

(*	Digital signals for downstream unit 3 on production line 1*)
	giRFP_L5_U3		AT	%I*	:	BOOL; 	(*Ready For Production*)
 	giPDS_L5_U3		AT	%I*	:	BOOL;	(*Product DownStream*)
	giSPS_L5_U3		AT	%I*	:	BOOL;	(*Sterideal Production Stop*)
	giRFW_L5_U3		AT	%I*	:	BOOL;	(*Request For Water*)
	giSBS_L5_U3		AT	%I*	:	BOOL;	(*Steam Barrier Sterile*)
	giFCA_L5_U3		AT	%I*	:	BOOL;	(*Filler CIP Active *)

	goUST_L5_U3		AT	%Q*	:	BOOL;	(*Unit Sterile conditions*)
 	goPAM_L5_U3		AT	%Q*	:	BOOL;	(*Product At Machine*)
	goWAM_L5_U3		AT	%Q*	:	BOOL;	(*Water At Machine*)
	goCIP_L5_U3		AT	%Q*	:	BOOL;	(*Cleaning In Place*)
	goCSB_L5_U3		AT	%Q*	:	BOOL;	(*Clean Steam Barrier*)

(*	Analogue signals for downstream unit 3 on production line 1*)
	ifFPR_L5_U3		AT	%I*	:	REAL;	(* Floating Point signal from Downstream Unit, Filling Pressure Request *)

	ofLVL_L5_U3		AT	%Q*	:	REAL;	(* Floating Point signal to Downstream Unit, Level Tank *)

(*	Digital signals for downstream unit 4 on production line 1*)
	giRFP_L5_U4		AT	%I*	:	BOOL; 	(*Ready For Production*)
 	giPDS_L5_U4		AT	%I*	:	BOOL;	(*Product DownStream*)
	giSPS_L5_U4		AT	%I*	:	BOOL;	(*Sterideal Production Stop*)
	giRFW_L5_U4		AT	%I*	:	BOOL;	(*Request For Water*)
	giSBS_L5_U4		AT	%I*	:	BOOL;	(*Steam Barrier Sterile*)
	giFCA_L5_U4		AT	%I*	:	BOOL;	(*Filler CIP Active *)

	goUST_L5_U4		AT	%Q*	:	BOOL;	(*Unit Sterile conditions*)
 	goPAM_L5_U4		AT	%Q*	:	BOOL;	(*Product At Machine*)
	goWAM_L5_U4		AT	%Q*	:	BOOL;	(*Water At Machine*)
	goCIP_L5_U4		AT	%Q*	:	BOOL;	(*Cleaning In Place*)
	goCSB_L5_U4		AT	%Q*	:	BOOL;	(*Clean Steam Barrier*)

(*	Analogue signals for downstream unit 4 on production line 1*)
	ifFPR_L5_U4		AT	%I*	:	REAL;	(* Floating Point signal from Downstream Unit, Filling Pressure Request *)

	ofLVL_L5_U4		AT	%Q*	:	REAL;	(* Floating Point signal to Downstream Unit, Level Tank *)


(*	Digital signals for downstream unit 5 on production line 1*)
	giRFP_L5_U5		AT	%I*	:	BOOL; 	(*Ready For Production*)
 	giPDS_L5_U5		AT	%I*	:	BOOL;	(*Product DownStream*)
	giSPS_L5_U5		AT	%I*	:	BOOL;	(*Sterideal Production Stop*)
	giRFW_L5_U5		AT	%I*	:	BOOL;	(*Request For Water*)
	giSBS_L5_U5		AT	%I*	:	BOOL;	(*Steam Barrier Sterile*)
	giFCA_L5_U5		AT	%I*	:	BOOL;	(*Filler CIP Active *)

	goUST_L5_U5		AT	%Q*	:	BOOL;	(*Unit Sterile conditions*)
 	goPAM_L5_U5		AT	%Q*	:	BOOL;	(*Product At Machine*)
	goWAM_L5_U5		AT	%Q*	:	BOOL;	(*Water At Machine*)
	goCIP_L5_U5		AT	%Q*	:	BOOL;	(*Cleaning In Place*)
	goCSB_L5_U5		AT	%Q*	:	BOOL;	(*Clean Steam Barrier*)

(*	Analogue signals for downstream unit 5 on production line 1*)
	ifFPR_L5_U5		AT	%I*	:	REAL;	(* Floating Point signal from Downstream Unit, Filling Pressure Request *)

	ofLVL_L5_U5		AT	%Q*	:	REAL;	(* Floating Point signal to Downstream Unit, Level Tank *)
END_VAR
                                                                                               '           6   , B W �u           IO_Line6 �J�W	�J�W6      Fatg in        w  (* Global_Variables (IO_Line1) *)

VAR_GLOBAL

(*	Digital signals for downstream unit 1 on production line 1*)
	giRFP_L6_U1		AT	%I*	:	BOOL; 	(*Ready For Production*)
 	giPDS_L6_U1		AT	%I*	:	BOOL;	(*Product DownStream*)
	giSPS_L6_U1		AT	%I*	:	BOOL;	(*Sterideal Production Stop*)
	giRFW_L6_U1		AT	%I*	:	BOOL;	(*Request For Water*)
	giSBS_L6_U1		AT	%I*	:	BOOL;	(*Steam Barrier Sterile*)
	giFCA_L6_U1		AT	%I*	:	BOOL;	(*Filler CIP Active *)

	goUST_L6_U1		AT	%Q*	:	BOOL;	(*Unit Sterile conditions*)
 	goPAM_L6_U1		AT	%Q*	:	BOOL;	(*Product At Machine*)
	goWAM_L6_U1		AT	%Q*	:	BOOL;	(*Water At Machine*)
	goCIP_L6_U1		AT	%Q*	:	BOOL;	(*Cleaning In Place*)
	goCSB_L6_U1		AT	%Q*	:	BOOL;	(*Clean Steam Barrier*)

(*	Analogue signals for downstream unit 1 on production line 1*)
	ifFPR_L6_U1		AT	%I*	:	REAL;	(* Floating Point signal from Downstream Unit, Filling Pressure Request *)

	ofLVL_L6_U1		AT	%Q*	:	REAL;	(* Floating Point signal to Downstream Unit, Level Tank *)


(*	Digital signals for downstream unit 2 on production line 1*)
	giRFP_L6_U2		AT	%I*	:	BOOL; 	(*Ready For Production*)
 	giPDS_L6_U2		AT	%I*	:	BOOL;	(*Product DownStream*)
	giSPS_L6_U2		AT	%I*	:	BOOL;	(*Sterideal Production Stop*)
	giRFW_L6_U2		AT	%I*	:	BOOL;	(*Request For Water*)
	giSBS_L6_U2		AT	%I*	:	BOOL;	(*Steam Barrier Sterile*)
	giFCA_L6_U2		AT	%I*	:	BOOL;	(*Filler CIP Active *)

	goUST_L6_U2		AT	%Q*	:	BOOL;	(*Unit Sterile conditions*)
 	goPAM_L6_U2		AT	%Q*	:	BOOL;	(*Product At Machine*)
	goWAM_L6_U2		AT	%Q*	:	BOOL;	(*Water At Machine*)
	goCIP_L6_U2		AT	%Q*	:	BOOL;	(*Cleaning In Place*)
	goCSB_L6_U2		AT	%Q*	:	BOOL;	(*Clean Steam Barrier*)

(*	Analogue signals for downstream unit 2 on production line 1*)
	ifFPR_L6_U2		AT	%I*	:	REAL;	(* Floating Point signal from Downstream Unit, Filling Pressure Request *)

	ofLVL_L6_U2		AT	%Q*	:	REAL;	(* Floating Point signal to Downstream Unit, Level Tank *)

(*	Digital signals for downstream unit 3 on production line 1*)
	giRFP_L6_U3		AT	%I*	:	BOOL; 	(*Ready For Production*)
 	giPDS_L6_U3		AT	%I*	:	BOOL;	(*Product DownStream*)
	giSPS_L6_U3		AT	%I*	:	BOOL;	(*Sterideal Production Stop*)
	giRFW_L6_U3		AT	%I*	:	BOOL;	(*Request For Water*)
	giSBS_L6_U3		AT	%I*	:	BOOL;	(*Steam Barrier Sterile*)
	giFCA_L6_U3		AT	%I*	:	BOOL;	(*Filler CIP Active *)

	goUST_L6_U3		AT	%Q*	:	BOOL;	(*Unit Sterile conditions*)
 	goPAM_L6_U3		AT	%Q*	:	BOOL;	(*Product At Machine*)
	goWAM_L6_U3		AT	%Q*	:	BOOL;	(*Water At Machine*)
	goCIP_L6_U3		AT	%Q*	:	BOOL;	(*Cleaning In Place*)
	goCSB_L6_U3		AT	%Q*	:	BOOL;	(*Clean Steam Barrier*)

(*	Analogue signals for downstream unit 3 on production line 1*)
	ifFPR_L6_U3		AT	%I*	:	REAL;	(* Floating Point signal from Downstream Unit, Filling Pressure Request *)

	ofLVL_L6_U3		AT	%Q*	:	REAL;	(* Floating Point signal to Downstream Unit, Level Tank *)

(*	Digital signals for downstream unit 4 on production line 1*)
	giRFP_L6_U4		AT	%I*	:	BOOL; 	(*Ready For Production*)
 	giPDS_L6_U4		AT	%I*	:	BOOL;	(*Product DownStream*)
	giSPS_L6_U4		AT	%I*	:	BOOL;	(*Sterideal Production Stop*)
	giRFW_L6_U4		AT	%I*	:	BOOL;	(*Request For Water*)
	giSBS_L6_U4		AT	%I*	:	BOOL;	(*Steam Barrier Sterile*)
	giFCA_L6_U4		AT	%I*	:	BOOL;	(*Filler CIP Active *)

	goUST_L6_U4		AT	%Q*	:	BOOL;	(*Unit Sterile conditions*)
 	goPAM_L6_U4		AT	%Q*	:	BOOL;	(*Product At Machine*)
	goWAM_L6_U4		AT	%Q*	:	BOOL;	(*Water At Machine*)
	goCIP_L6_U4		AT	%Q*	:	BOOL;	(*Cleaning In Place*)
	goCSB_L6_U4		AT	%Q*	:	BOOL;	(*Clean Steam Barrier*)

(*	Analogue signals for downstream unit 4 on production line 1*)
	ifFPR_L6_U4		AT	%I*	:	REAL;	(* Floating Point signal from Downstream Unit, Filling Pressure Request *)

	ofLVL_L6_U4		AT	%Q*	:	REAL;	(* Floating Point signal to Downstream Unit, Level Tank *)


(*	Digital signals for downstream unit 5 on production line 1*)
	giRFP_L6_U5		AT	%I*	:	BOOL; 	(*Ready For Production*)
 	giPDS_L6_U5		AT	%I*	:	BOOL;	(*Product DownStream*)
	giSPS_L6_U5		AT	%I*	:	BOOL;	(*Sterideal Production Stop*)
	giRFW_L6_U5		AT	%I*	:	BOOL;	(*Request For Water*)
	giSBS_L6_U5		AT	%I*	:	BOOL;	(*Steam Barrier Sterile*)
	giFCA_L6_U5		AT	%I*	:	BOOL;	(*Filler CIP Active *)

	goUST_L6_U5		AT	%Q*	:	BOOL;	(*Unit Sterile conditions*)
 	goPAM_L6_U5		AT	%Q*	:	BOOL;	(*Product At Machine*)
	goWAM_L6_U5		AT	%Q*	:	BOOL;	(*Water At Machine*)
	goCIP_L6_U5		AT	%Q*	:	BOOL;	(*Cleaning In Place*)
	goCSB_L6_U5		AT	%Q*	:	BOOL;	(*Clean Steam Barrier*)

(*	Analogue signals for downstream unit 5 on production line 1*)
	ifFPR_L6_U5		AT	%I*	:	REAL;	(* Floating Point signal from Downstream Unit, Filling Pressure Request *)

	ofLVL_L6_U5		AT	%Q*	:	REAL;	(* Floating Point signal to Downstream Unit, Level Tank *)
END_VAR
                                                                                               '           ;   ,     �           IO_ProxLineSelection �J�W	�J�W;     �r��           �  (* Global_Variables (IO_ProxLineSelection) *)

VAR_GLOBAL

(*	Digital signals from downstream for Line selection*)

	giS1L1		AT	%I*	:	BOOL; 	(*Sensor 01  Line 1*)
	giS1L2		AT	%I*	:	BOOL; 	(*Sensor 01  Line 2*)
	giS1L3		AT	%I*	:	BOOL; 	(*Sensor 01  Line 3*)
	giS1L4		AT	%I*	:	BOOL; 	(*Sensor 01  Line 4*)
	giS1L5		AT	%I*	:	BOOL; 	(*Sensor 01  Line 5*)
	giS1L6		AT	%I*	:	BOOL; 	(*Sensor 01  Line 6*)

END_VAR
                                                                                               '           :       8               TwinCAT_Configuration /J�W	�J�W:     on bus a        �F  (* Generated automatically by TwinCAT - (read only) *)
VAR_CONFIG
	MAIN.fbInterComm.arrComm_In AT %IB144 : ARRAY [0..63] OF UINT;	(*  ~ {LinkedWith:TIPC^Sterideal_N.00461.02 FCA^Standard^Outputs^MAIN.fbInterComm.arrComm_Out} *)
	MAIN.fbInterComm.arrComm_Out AT %QB139 : ARRAY [0..63] OF UINT;	(*  ~ {LinkedWith:TIPC^Sterideal_N.00461.02 FCA^Standard^Inputs^MAIN.fbInterComm.arrComm_In} *)
	.giRFP_L1_U1 AT %IX120.0 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^831U2 (EL1024)^Channel 1^Input} *)
	.giPDS_L1_U1 AT %IX120.1 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^831U2 (EL1024)^Channel 2^Input} *)
	.giSPS_L1_U1 AT %IX120.2 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^831U2 (EL1024)^Channel 3^Input} *)
	.giRFW_L1_U1 AT %IX120.3 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^831U2 (EL1024)^Channel 4^Input} *)
	.giSBS_L1_U1 AT %IX120.4 : BOOL;
	.giFCA_L1_U1 AT %IX120.5 : BOOL;
	.goUST_L1_U1 AT %QX120.0 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^851U2 (EL2624)^Channel 1^Output} *)
	.goPAM_L1_U1 AT %QX120.1 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^851U2 (EL2624)^Channel 2^Output} *)
	.goWAM_L1_U1 AT %QX120.2 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^851U2 (EL2624)^Channel 3^Output} *)
	.goCIP_L1_U1 AT %QX120.3 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^851U2 (EL2624)^Channel 4^Output} *)
	.goCSB_L1_U1 AT %QX120.4 : BOOL;
	.ifFPR_L1_U1 AT %IB0 : REAL;
	.ofLVL_L1_U1 AT %QB0 : REAL;
	.giRFP_L1_U2 AT %IX120.6 : BOOL;
	.giPDS_L1_U2 AT %IX120.7 : BOOL;
	.giSPS_L1_U2 AT %IX121.0 : BOOL;
	.giRFW_L1_U2 AT %IX121.1 : BOOL;
	.giSBS_L1_U2 AT %IX121.2 : BOOL;
	.giFCA_L1_U2 AT %IX121.3 : BOOL;
	.goUST_L1_U2 AT %QX120.5 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^852U2 (EL2624) New for FCA^Channel 1^Output} *)
	.goPAM_L1_U2 AT %QX120.6 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^852U2 (EL2624) New for FCA^Channel 2^Output} *)
	.goWAM_L1_U2 AT %QX120.7 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^852U2 (EL2624) New for FCA^Channel 3^Output} *)
	.goCIP_L1_U2 AT %QX121.0 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^852U2 (EL2624) New for FCA^Channel 4^Output} *)
	.goCSB_L1_U2 AT %QX121.1 : BOOL;
	.ifFPR_L1_U2 AT %IB4 : REAL;
	.ofLVL_L1_U2 AT %QB4 : REAL;
	.giRFP_L1_U3 AT %IX121.4 : BOOL;
	.giPDS_L1_U3 AT %IX121.5 : BOOL;
	.giSPS_L1_U3 AT %IX121.6 : BOOL;
	.giRFW_L1_U3 AT %IX121.7 : BOOL;
	.giSBS_L1_U3 AT %IX122.0 : BOOL;
	.giFCA_L1_U3 AT %IX122.1 : BOOL;
	.goUST_L1_U3 AT %QX121.2 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^853U2 (EL2624) New for FCA^Channel 1^Output} *)
	.goPAM_L1_U3 AT %QX121.3 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^853U2 (EL2624) New for FCA^Channel 2^Output} *)
	.goWAM_L1_U3 AT %QX121.4 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^853U2 (EL2624) New for FCA^Channel 3^Output} *)
	.goCIP_L1_U3 AT %QX121.5 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^853U2 (EL2624) New for FCA^Channel 4^Output} *)
	.goCSB_L1_U3 AT %QX121.6 : BOOL;
	.ifFPR_L1_U3 AT %IB8 : REAL;
	.ofLVL_L1_U3 AT %QB8 : REAL;
	.giRFP_L1_U4 AT %IX122.2 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^834U2 (EL1024) New for FCA^Channel 1^Input} *)
	.giPDS_L1_U4 AT %IX122.3 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^834U2 (EL1024) New for FCA^Channel 2^Input} *)
	.giSPS_L1_U4 AT %IX122.4 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^834U2 (EL1024) New for FCA^Channel 3^Input} *)
	.giRFW_L1_U4 AT %IX122.5 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^834U2 (EL1024) New for FCA^Channel 4^Input} *)
	.giSBS_L1_U4 AT %IX122.6 : BOOL;
	.giFCA_L1_U4 AT %IX122.7 : BOOL;
	.goUST_L1_U4 AT %QX121.7 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^854U2 (EL2624) New for FCA^Channel 1^Output} *)
	.goPAM_L1_U4 AT %QX122.0 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^854U2 (EL2624) New for FCA^Channel 2^Output} *)
	.goWAM_L1_U4 AT %QX122.1 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^854U2 (EL2624) New for FCA^Channel 3^Output} *)
	.goCIP_L1_U4 AT %QX122.2 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^854U2 (EL2624) New for FCA^Channel 4^Output} *)
	.goCSB_L1_U4 AT %QX122.3 : BOOL;
	.ifFPR_L1_U4 AT %IB12 : REAL;
	.ofLVL_L1_U4 AT %QB12 : REAL;
	.giRFP_L1_U5 AT %IX123.0 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^835U2 (EL1024) New For FCA^Channel 1^Input} *)
	.giPDS_L1_U5 AT %IX123.1 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^835U2 (EL1024) New For FCA^Channel 2^Input} *)
	.giSPS_L1_U5 AT %IX123.2 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^835U2 (EL1024) New For FCA^Channel 3^Input} *)
	.giRFW_L1_U5 AT %IX123.3 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^835U2 (EL1024) New For FCA^Channel 4^Input} *)
	.giSBS_L1_U5 AT %IX123.4 : BOOL;
	.giFCA_L1_U5 AT %IX123.5 : BOOL;
	.goUST_L1_U5 AT %QX122.4 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^855U2 (EL2624) New for FCA^Channel 1^Output} *)
	.goPAM_L1_U5 AT %QX122.5 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^855U2 (EL2624) New for FCA^Channel 2^Output} *)
	.goWAM_L1_U5 AT %QX122.6 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^855U2 (EL2624) New for FCA^Channel 3^Output} *)
	.goCIP_L1_U5 AT %QX122.7 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^855U2 (EL2624) New for FCA^Channel 4^Output} *)
	.goCSB_L1_U5 AT %QX123.0 : BOOL;
	.ifFPR_L1_U5 AT %IB16 : REAL;
	.ofLVL_L1_U5 AT %QB16 : REAL;
	.giRFP_L2_U1 AT %IX123.6 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^832U2 (EL1024)^Channel 1^Input} *)
	.giPDS_L2_U1 AT %IX123.7 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^832U2 (EL1024)^Channel 2^Input} *)
	.giSPS_L2_U1 AT %IX124.0 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^832U2 (EL1024)^Channel 3^Input} *)
	.giRFW_L2_U1 AT %IX124.1 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^832U2 (EL1024)^Channel 4^Input} *)
	.giSBS_L2_U1 AT %IX124.2 : BOOL;
	.giFCA_L2_U1 AT %IX124.3 : BOOL;
	.goUST_L2_U1 AT %QX123.1 : BOOL;
	.goPAM_L2_U1 AT %QX123.2 : BOOL;
	.goWAM_L2_U1 AT %QX123.3 : BOOL;
	.goCIP_L2_U1 AT %QX123.4 : BOOL;
	.goCSB_L2_U1 AT %QX123.5 : BOOL;
	.ifFPR_L2_U1 AT %IB20 : REAL;
	.ofLVL_L2_U1 AT %QB20 : REAL;
	.giRFP_L2_U2 AT %IX124.4 : BOOL;
	.giPDS_L2_U2 AT %IX124.5 : BOOL;
	.giSPS_L2_U2 AT %IX124.6 : BOOL;
	.giRFW_L2_U2 AT %IX124.7 : BOOL;
	.giSBS_L2_U2 AT %IX125.0 : BOOL;
	.giFCA_L2_U2 AT %IX125.1 : BOOL;
	.goUST_L2_U2 AT %QX123.6 : BOOL;
	.goPAM_L2_U2 AT %QX123.7 : BOOL;
	.goWAM_L2_U2 AT %QX124.0 : BOOL;
	.goCIP_L2_U2 AT %QX124.1 : BOOL;
	.goCSB_L2_U2 AT %QX124.2 : BOOL;
	.ifFPR_L2_U2 AT %IB24 : REAL;
	.ofLVL_L2_U2 AT %QB24 : REAL;
	.giRFP_L2_U3 AT %IX125.2 : BOOL;
	.giPDS_L2_U3 AT %IX125.3 : BOOL;
	.giSPS_L2_U3 AT %IX125.4 : BOOL;
	.giRFW_L2_U3 AT %IX125.5 : BOOL;
	.giSBS_L2_U3 AT %IX125.6 : BOOL;
	.giFCA_L2_U3 AT %IX125.7 : BOOL;
	.goUST_L2_U3 AT %QX124.3 : BOOL;
	.goPAM_L2_U3 AT %QX124.4 : BOOL;
	.goWAM_L2_U3 AT %QX124.5 : BOOL;
	.goCIP_L2_U3 AT %QX124.6 : BOOL;
	.goCSB_L2_U3 AT %QX124.7 : BOOL;
	.ifFPR_L2_U3 AT %IB28 : REAL;
	.ofLVL_L2_U3 AT %QB28 : REAL;
	.giRFP_L2_U4 AT %IX126.0 : BOOL;
	.giPDS_L2_U4 AT %IX126.1 : BOOL;
	.giSPS_L2_U4 AT %IX126.2 : BOOL;
	.giRFW_L2_U4 AT %IX126.3 : BOOL;
	.giSBS_L2_U4 AT %IX126.4 : BOOL;
	.giFCA_L2_U4 AT %IX126.5 : BOOL;
	.goUST_L2_U4 AT %QX125.0 : BOOL;
	.goPAM_L2_U4 AT %QX125.1 : BOOL;
	.goWAM_L2_U4 AT %QX125.2 : BOOL;
	.goCIP_L2_U4 AT %QX125.3 : BOOL;
	.goCSB_L2_U4 AT %QX125.4 : BOOL;
	.ifFPR_L2_U4 AT %IB32 : REAL;
	.ofLVL_L2_U4 AT %QB32 : REAL;
	.giRFP_L2_U5 AT %IX126.6 : BOOL;
	.giPDS_L2_U5 AT %IX126.7 : BOOL;
	.giSPS_L2_U5 AT %IX127.0 : BOOL;
	.giRFW_L2_U5 AT %IX127.1 : BOOL;
	.giSBS_L2_U5 AT %IX127.2 : BOOL;
	.giFCA_L2_U5 AT %IX127.3 : BOOL;
	.goUST_L2_U5 AT %QX125.5 : BOOL;
	.goPAM_L2_U5 AT %QX125.6 : BOOL;
	.goWAM_L2_U5 AT %QX125.7 : BOOL;
	.goCIP_L2_U5 AT %QX126.0 : BOOL;
	.goCSB_L2_U5 AT %QX126.1 : BOOL;
	.ifFPR_L2_U5 AT %IB36 : REAL;
	.ofLVL_L2_U5 AT %QB36 : REAL;
	.giRFP_L3_U1 AT %IX127.4 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^833U2 (EL1024) New for FCA^Channel 1^Input} *)
	.giPDS_L3_U1 AT %IX127.5 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^833U2 (EL1024) New for FCA^Channel 2^Input} *)
	.giSPS_L3_U1 AT %IX127.6 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^833U2 (EL1024) New for FCA^Channel 3^Input} *)
	.giRFW_L3_U1 AT %IX127.7 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^830U2 (EM105)^833U2 (EL1024) New for FCA^Channel 4^Input} *)
	.giSBS_L3_U1 AT %IX128.0 : BOOL;
	.giFCA_L3_U1 AT %IX128.1 : BOOL;
	.goUST_L3_U1 AT %QX126.2 : BOOL;
	.goPAM_L3_U1 AT %QX126.3 : BOOL;
	.goWAM_L3_U1 AT %QX126.4 : BOOL;
	.goCIP_L3_U1 AT %QX126.5 : BOOL;
	.goCSB_L3_U1 AT %QX126.6 : BOOL;
	.ifFPR_L3_U1 AT %IB40 : REAL;
	.ofLVL_L3_U1 AT %QB40 : REAL;
	.giRFP_L3_U2 AT %IX128.2 : BOOL;
	.giPDS_L3_U2 AT %IX128.3 : BOOL;
	.giSPS_L3_U2 AT %IX128.4 : BOOL;
	.giRFW_L3_U2 AT %IX128.5 : BOOL;
	.giSBS_L3_U2 AT %IX128.6 : BOOL;
	.giFCA_L3_U2 AT %IX128.7 : BOOL;
	.goUST_L3_U2 AT %QX126.7 : BOOL;
	.goPAM_L3_U2 AT %QX127.0 : BOOL;
	.goWAM_L3_U2 AT %QX127.1 : BOOL;
	.goCIP_L3_U2 AT %QX127.2 : BOOL;
	.goCSB_L3_U2 AT %QX127.3 : BOOL;
	.ifFPR_L3_U2 AT %IB44 : REAL;
	.ofLVL_L3_U2 AT %QB44 : REAL;
	.giRFP_L3_U3 AT %IX129.0 : BOOL;
	.giPDS_L3_U3 AT %IX129.1 : BOOL;
	.giSPS_L3_U3 AT %IX129.2 : BOOL;
	.giRFW_L3_U3 AT %IX129.3 : BOOL;
	.giSBS_L3_U3 AT %IX129.4 : BOOL;
	.giFCA_L3_U3 AT %IX129.5 : BOOL;
	.goUST_L3_U3 AT %QX127.4 : BOOL;
	.goPAM_L3_U3 AT %QX127.5 : BOOL;
	.goWAM_L3_U3 AT %QX127.6 : BOOL;
	.goCIP_L3_U3 AT %QX127.7 : BOOL;
	.goCSB_L3_U3 AT %QX128.0 : BOOL;
	.ifFPR_L3_U3 AT %IB48 : REAL;
	.ofLVL_L3_U3 AT %QB48 : REAL;
	.giRFP_L3_U4 AT %IX129.6 : BOOL;
	.giPDS_L3_U4 AT %IX129.7 : BOOL;
	.giSPS_L3_U4 AT %IX130.0 : BOOL;
	.giRFW_L3_U4 AT %IX130.1 : BOOL;
	.giSBS_L3_U4 AT %IX130.2 : BOOL;
	.giFCA_L3_U4 AT %IX130.3 : BOOL;
	.goUST_L3_U4 AT %QX128.1 : BOOL;
	.goPAM_L3_U4 AT %QX128.2 : BOOL;
	.goWAM_L3_U4 AT %QX128.3 : BOOL;
	.goCIP_L3_U4 AT %QX128.4 : BOOL;
	.goCSB_L3_U4 AT %QX128.5 : BOOL;
	.ifFPR_L3_U4 AT %IB52 : REAL;
	.ofLVL_L3_U4 AT %QB52 : REAL;
	.giRFP_L3_U5 AT %IX130.4 : BOOL;
	.giPDS_L3_U5 AT %IX130.5 : BOOL;
	.giSPS_L3_U5 AT %IX130.6 : BOOL;
	.giRFW_L3_U5 AT %IX130.7 : BOOL;
	.giSBS_L3_U5 AT %IX131.0 : BOOL;
	.giFCA_L3_U5 AT %IX131.1 : BOOL;
	.goUST_L3_U5 AT %QX128.6 : BOOL;
	.goPAM_L3_U5 AT %QX128.7 : BOOL;
	.goWAM_L3_U5 AT %QX129.0 : BOOL;
	.goCIP_L3_U5 AT %QX129.1 : BOOL;
	.goCSB_L3_U5 AT %QX129.2 : BOOL;
	.ifFPR_L3_U5 AT %IB56 : REAL;
	.ofLVL_L3_U5 AT %QB56 : REAL;
	.giRFP_L4_U1 AT %IX131.2 : BOOL;
	.giPDS_L4_U1 AT %IX131.3 : BOOL;
	.giSPS_L4_U1 AT %IX131.4 : BOOL;
	.giRFW_L4_U1 AT %IX131.5 : BOOL;
	.giSBS_L4_U1 AT %IX131.6 : BOOL;
	.giFCA_L4_U1 AT %IX131.7 : BOOL;
	.goUST_L4_U1 AT %QX129.3 : BOOL;
	.goPAM_L4_U1 AT %QX129.4 : BOOL;
	.goWAM_L4_U1 AT %QX129.5 : BOOL;
	.goCIP_L4_U1 AT %QX129.6 : BOOL;
	.goCSB_L4_U1 AT %QX129.7 : BOOL;
	.ifFPR_L4_U1 AT %IB60 : REAL;
	.ofLVL_L4_U1 AT %QB60 : REAL;
	.giRFP_L4_U2 AT %IX132.0 : BOOL;
	.giPDS_L4_U2 AT %IX132.1 : BOOL;
	.giSPS_L4_U2 AT %IX132.2 : BOOL;
	.giRFW_L4_U2 AT %IX132.3 : BOOL;
	.giSBS_L4_U2 AT %IX132.4 : BOOL;
	.giFCA_L4_U2 AT %IX132.5 : BOOL;
	.goUST_L4_U2 AT %QX130.0 : BOOL;
	.goPAM_L4_U2 AT %QX130.1 : BOOL;
	.goWAM_L4_U2 AT %QX130.2 : BOOL;
	.goCIP_L4_U2 AT %QX130.3 : BOOL;
	.goCSB_L4_U2 AT %QX130.4 : BOOL;
	.ifFPR_L4_U2 AT %IB64 : REAL;
	.ofLVL_L4_U2 AT %QB64 : REAL;
	.giRFP_L4_U3 AT %IX132.6 : BOOL;
	.giPDS_L4_U3 AT %IX132.7 : BOOL;
	.giSPS_L4_U3 AT %IX133.0 : BOOL;
	.giRFW_L4_U3 AT %IX133.1 : BOOL;
	.giSBS_L4_U3 AT %IX133.2 : BOOL;
	.giFCA_L4_U3 AT %IX133.3 : BOOL;
	.goUST_L4_U3 AT %QX130.5 : BOOL;
	.goPAM_L4_U3 AT %QX130.6 : BOOL;
	.goWAM_L4_U3 AT %QX130.7 : BOOL;
	.goCIP_L4_U3 AT %QX131.0 : BOOL;
	.goCSB_L4_U3 AT %QX131.1 : BOOL;
	.ifFPR_L4_U3 AT %IB68 : REAL;
	.ofLVL_L4_U3 AT %QB68 : REAL;
	.giRFP_L4_U4 AT %IX133.4 : BOOL;
	.giPDS_L4_U4 AT %IX133.5 : BOOL;
	.giSPS_L4_U4 AT %IX133.6 : BOOL;
	.giRFW_L4_U4 AT %IX133.7 : BOOL;
	.giSBS_L4_U4 AT %IX134.0 : BOOL;
	.giFCA_L4_U4 AT %IX134.1 : BOOL;
	.goUST_L4_U4 AT %QX131.2 : BOOL;
	.goPAM_L4_U4 AT %QX131.3 : BOOL;
	.goWAM_L4_U4 AT %QX131.4 : BOOL;
	.goCIP_L4_U4 AT %QX131.5 : BOOL;
	.goCSB_L4_U4 AT %QX131.6 : BOOL;
	.ifFPR_L4_U4 AT %IB72 : REAL;
	.ofLVL_L4_U4 AT %QB72 : REAL;
	.giRFP_L4_U5 AT %IX134.2 : BOOL;
	.giPDS_L4_U5 AT %IX134.3 : BOOL;
	.giSPS_L4_U5 AT %IX134.4 : BOOL;
	.giRFW_L4_U5 AT %IX134.5 : BOOL;
	.giSBS_L4_U5 AT %IX134.6 : BOOL;
	.giFCA_L4_U5 AT %IX134.7 : BOOL;
	.goUST_L4_U5 AT %QX131.7 : BOOL;
	.goPAM_L4_U5 AT %QX132.0 : BOOL;
	.goWAM_L4_U5 AT %QX132.1 : BOOL;
	.goCIP_L4_U5 AT %QX132.2 : BOOL;
	.goCSB_L4_U5 AT %QX132.3 : BOOL;
	.ifFPR_L4_U5 AT %IB76 : REAL;
	.ofLVL_L4_U5 AT %QB76 : REAL;
	.giRFP_L5_U1 AT %IX135.0 : BOOL;
	.giPDS_L5_U1 AT %IX135.1 : BOOL;
	.giSPS_L5_U1 AT %IX135.2 : BOOL;
	.giRFW_L5_U1 AT %IX135.3 : BOOL;
	.giSBS_L5_U1 AT %IX135.4 : BOOL;
	.giFCA_L5_U1 AT %IX135.5 : BOOL;
	.goUST_L5_U1 AT %QX132.4 : BOOL;
	.goPAM_L5_U1 AT %QX132.5 : BOOL;
	.goWAM_L5_U1 AT %QX132.6 : BOOL;
	.goCIP_L5_U1 AT %QX132.7 : BOOL;
	.goCSB_L5_U1 AT %QX133.0 : BOOL;
	.ifFPR_L5_U1 AT %IB80 : REAL;
	.ofLVL_L5_U1 AT %QB80 : REAL;
	.giRFP_L5_U2 AT %IX135.6 : BOOL;
	.giPDS_L5_U2 AT %IX135.7 : BOOL;
	.giSPS_L5_U2 AT %IX136.0 : BOOL;
	.giRFW_L5_U2 AT %IX136.1 : BOOL;
	.giSBS_L5_U2 AT %IX136.2 : BOOL;
	.giFCA_L5_U2 AT %IX136.3 : BOOL;
	.goUST_L5_U2 AT %QX133.1 : BOOL;
	.goPAM_L5_U2 AT %QX133.2 : BOOL;
	.goWAM_L5_U2 AT %QX133.3 : BOOL;
	.goCIP_L5_U2 AT %QX133.4 : BOOL;
	.goCSB_L5_U2 AT %QX133.5 : BOOL;
	.ifFPR_L5_U2 AT %IB84 : REAL;
	.ofLVL_L5_U2 AT %QB84 : REAL;
	.giRFP_L5_U3 AT %IX136.4 : BOOL;
	.giPDS_L5_U3 AT %IX136.5 : BOOL;
	.giSPS_L5_U3 AT %IX136.6 : BOOL;
	.giRFW_L5_U3 AT %IX136.7 : BOOL;
	.giSBS_L5_U3 AT %IX137.0 : BOOL;
	.giFCA_L5_U3 AT %IX137.1 : BOOL;
	.goUST_L5_U3 AT %QX133.6 : BOOL;
	.goPAM_L5_U3 AT %QX133.7 : BOOL;
	.goWAM_L5_U3 AT %QX134.0 : BOOL;
	.goCIP_L5_U3 AT %QX134.1 : BOOL;
	.goCSB_L5_U3 AT %QX134.2 : BOOL;
	.ifFPR_L5_U3 AT %IB88 : REAL;
	.ofLVL_L5_U3 AT %QB88 : REAL;
	.giRFP_L5_U4 AT %IX137.2 : BOOL;
	.giPDS_L5_U4 AT %IX137.3 : BOOL;
	.giSPS_L5_U4 AT %IX137.4 : BOOL;
	.giRFW_L5_U4 AT %IX137.5 : BOOL;
	.giSBS_L5_U4 AT %IX137.6 : BOOL;
	.giFCA_L5_U4 AT %IX137.7 : BOOL;
	.goUST_L5_U4 AT %QX134.3 : BOOL;
	.goPAM_L5_U4 AT %QX134.4 : BOOL;
	.goWAM_L5_U4 AT %QX134.5 : BOOL;
	.goCIP_L5_U4 AT %QX134.6 : BOOL;
	.goCSB_L5_U4 AT %QX134.7 : BOOL;
	.ifFPR_L5_U4 AT %IB92 : REAL;
	.ofLVL_L5_U4 AT %QB92 : REAL;
	.giRFP_L5_U5 AT %IX138.0 : BOOL;
	.giPDS_L5_U5 AT %IX138.1 : BOOL;
	.giSPS_L5_U5 AT %IX138.2 : BOOL;
	.giRFW_L5_U5 AT %IX138.3 : BOOL;
	.giSBS_L5_U5 AT %IX138.4 : BOOL;
	.giFCA_L5_U5 AT %IX138.5 : BOOL;
	.goUST_L5_U5 AT %QX135.0 : BOOL;
	.goPAM_L5_U5 AT %QX135.1 : BOOL;
	.goWAM_L5_U5 AT %QX135.2 : BOOL;
	.goCIP_L5_U5 AT %QX135.3 : BOOL;
	.goCSB_L5_U5 AT %QX135.4 : BOOL;
	.ifFPR_L5_U5 AT %IB96 : REAL;
	.ofLVL_L5_U5 AT %QB96 : REAL;
	.giRFP_L6_U1 AT %IX138.6 : BOOL;
	.giPDS_L6_U1 AT %IX138.7 : BOOL;
	.giSPS_L6_U1 AT %IX139.0 : BOOL;
	.giRFW_L6_U1 AT %IX139.1 : BOOL;
	.giSBS_L6_U1 AT %IX139.2 : BOOL;
	.giFCA_L6_U1 AT %IX139.3 : BOOL;
	.goUST_L6_U1 AT %QX135.5 : BOOL;
	.goPAM_L6_U1 AT %QX135.6 : BOOL;
	.goWAM_L6_U1 AT %QX135.7 : BOOL;
	.goCIP_L6_U1 AT %QX136.0 : BOOL;
	.goCSB_L6_U1 AT %QX136.1 : BOOL;
	.ifFPR_L6_U1 AT %IB100 : REAL;
	.ofLVL_L6_U1 AT %QB100 : REAL;
	.giRFP_L6_U2 AT %IX139.4 : BOOL;
	.giPDS_L6_U2 AT %IX139.5 : BOOL;
	.giSPS_L6_U2 AT %IX139.6 : BOOL;
	.giRFW_L6_U2 AT %IX139.7 : BOOL;
	.giSBS_L6_U2 AT %IX140.0 : BOOL;
	.giFCA_L6_U2 AT %IX140.1 : BOOL;
	.goUST_L6_U2 AT %QX136.2 : BOOL;
	.goPAM_L6_U2 AT %QX136.3 : BOOL;
	.goWAM_L6_U2 AT %QX136.4 : BOOL;
	.goCIP_L6_U2 AT %QX136.5 : BOOL;
	.goCSB_L6_U2 AT %QX136.6 : BOOL;
	.ifFPR_L6_U2 AT %IB104 : REAL;
	.ofLVL_L6_U2 AT %QB104 : REAL;
	.giRFP_L6_U3 AT %IX140.2 : BOOL;
	.giPDS_L6_U3 AT %IX140.3 : BOOL;
	.giSPS_L6_U3 AT %IX140.4 : BOOL;
	.giRFW_L6_U3 AT %IX140.5 : BOOL;
	.giSBS_L6_U3 AT %IX140.6 : BOOL;
	.giFCA_L6_U3 AT %IX140.7 : BOOL;
	.goUST_L6_U3 AT %QX136.7 : BOOL;
	.goPAM_L6_U3 AT %QX137.0 : BOOL;
	.goWAM_L6_U3 AT %QX137.1 : BOOL;
	.goCIP_L6_U3 AT %QX137.2 : BOOL;
	.goCSB_L6_U3 AT %QX137.3 : BOOL;
	.ifFPR_L6_U3 AT %IB108 : REAL;
	.ofLVL_L6_U3 AT %QB108 : REAL;
	.giRFP_L6_U4 AT %IX141.0 : BOOL;
	.giPDS_L6_U4 AT %IX141.1 : BOOL;
	.giSPS_L6_U4 AT %IX141.2 : BOOL;
	.giRFW_L6_U4 AT %IX141.3 : BOOL;
	.giSBS_L6_U4 AT %IX141.4 : BOOL;
	.giFCA_L6_U4 AT %IX141.5 : BOOL;
	.goUST_L6_U4 AT %QX137.4 : BOOL;
	.goPAM_L6_U4 AT %QX137.5 : BOOL;
	.goWAM_L6_U4 AT %QX137.6 : BOOL;
	.goCIP_L6_U4 AT %QX137.7 : BOOL;
	.goCSB_L6_U4 AT %QX138.0 : BOOL;
	.ifFPR_L6_U4 AT %IB112 : REAL;
	.ofLVL_L6_U4 AT %QB112 : REAL;
	.giRFP_L6_U5 AT %IX141.6 : BOOL;
	.giPDS_L6_U5 AT %IX141.7 : BOOL;
	.giSPS_L6_U5 AT %IX142.0 : BOOL;
	.giRFW_L6_U5 AT %IX142.1 : BOOL;
	.giSBS_L6_U5 AT %IX142.2 : BOOL;
	.giFCA_L6_U5 AT %IX142.3 : BOOL;
	.goUST_L6_U5 AT %QX138.1 : BOOL;
	.goPAM_L6_U5 AT %QX138.2 : BOOL;
	.goWAM_L6_U5 AT %QX138.3 : BOOL;
	.goCIP_L6_U5 AT %QX138.4 : BOOL;
	.goCSB_L6_U5 AT %QX138.5 : BOOL;
	.ifFPR_L6_U5 AT %IB116 : REAL;
	.ofLVL_L6_U5 AT %QB116 : REAL;
	.giS1L1 AT %IX142.4 : BOOL;
	.giS1L2 AT %IX142.5 : BOOL;
	.giS1L3 AT %IX142.6 : BOOL;
	.giS1L4 AT %IX142.7 : BOOL;
	.giS1L5 AT %IX143.0 : BOOL;
	.giS1L6 AT %IX143.1 : BOOL;
END_VAR                                                                                               '           	   , � � �s           Variable_Configuration /J�W	/J�W	                        VAR_CONFIG
END_VAR
                                                                                                 �   |0|0 @}    @[   Monospac821 BT @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss�����                               5     �   ���  �3 ���   � ���     
    @��  ���     @      DEFAULT             System      �   |0|0 @}    @[   Monospac821 BT @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss�����                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '          *   , B B Ng           ST_ControlInfo /J�W	/J�W      ��p�ް�        �  TYPE ST_ControlInfo :
STRUCT
	nHmiSelected: 			INT;				(*Button is selected directly or pop-up result *)
	bAllowed: 				BOOL:= TRUE;		(*Button can be pressed*)
	bIndicator: 			BOOL;				(*Indicator for button*)
	bBlinking	: 			BOOL;				(*Blinking indicator for button*)
	nConfirmationId: 		DINT:= 0;			(*Pop-up will appear when button on HMI is pressed; when confirmed, bHmiSelected =>TRUE*)
	bExclusive: 			BOOL:= TRUE;		(*When TRUE, manual function can only be used as stand-alone function and will reset other manual functions*)

	nPopupId: 				DINT:= 0;			(*When <> 0, pop-up will appear on HMI; when confirmed, bHmi selected => TRUE*)
	nButton:				INT;				(* Select type of pop-up *)
END_STRUCT
END_TYPE             #   , , , 8L           ST_Downstream_IN /J�W	/J�W                      �  TYPE ST_Downstream_IN :
STRUCT
(* Digital inputs to downstream *)
	iuDigital_IN		:	UINT;
					(*	Bit 0: 	RFP		Ready For Production
						Bit 1: 	PDS	Product DownStream
						Bit 2: 	SPS		Sterideal Production Stop
						Bit 3: 	RFW	Request For Water
						Bit 4: 	SBS;	Steam Barrier Sterile
						Bit 5: 	FCA		Filler CIP Active *)

(* Analog inputs to downstream*)
	ifFPR			:	REAL;	(* Floating Point signal from Downstream Unit, Filling Pressure Request *)
	ifReal_1		:	REAL;	(* Floating Point signal from Downstream Unit, Dummy *)
	ifReal_2		:	REAL;	(* Floating Point signal from Downstream Unit, Dummy *)
	ifReal_3		:	REAL;	(* Floating Point signal from Downstream Unit, Dummy *)

END_STRUCT
END_TYPE             $   , X X dx           ST_Downstream_Out /J�W	/J�W                      �  TYPE ST_Downstream_Out :
STRUCT
(* Digital outputs to downstream *)
	ouDigital_OUT		:	UINT;
					(*	Bit 0: 	UST	Unit (Sterilizer/Steritank) Sterile conditions
						Bit 1: 	PAM		Product At Machine
						Bit 2: 	WAM		Water At Machine
						Bit 3: 	CIP			Cleaning In Place
						Bit 4: 	CSB			Clean Steam Barrier *)

(* Analog outputs to downstream *)
	ofLVL				:	REAL;	(* Floating Point signal to Downstream Unit, Level Tank *)
	ofReal_1			:	REAL;	(* Floating Point signal from Downstream Unit, Dummy *)
	ofReal_2			:	REAL;	(* Floating Point signal from Downstream Unit, Dummy *)
	ofReal_3			:	REAL;	(* Floating Point signal from Downstream Unit, Dummy *)
END_STRUCT
END_TYPE             /   , � � ��           ST_DSLine_IO /J�W	/J�W                         TYPE ST_DSLine_IO : (*Downstream signals*)
STRUCT
	arrDS_Unit		:	 ARRAY [1..gnMaxUnit] OF ST_DSUnit_IO;
END_STRUCT
END_TYPE             .   ,     �           ST_DSUnit_IO /J�W	/J�W       	B	Cln         x   TYPE ST_DSUnit_IO :
STRUCT
	stIN	:	ST_Downstream_IN;
	stOUT	:	ST_Downstream_OUT;
	nLine	: INT;
END_STRUCT
END_TYPE             (   , � � ��           ST_HMI /J�W	/J�W      it: SB	C        )  TYPE ST_HMI :
STRUCT
	stDS_IO_Line			:	ARRAY [1..gnMaxDSLine]	OF	ST_DSLine_IO;
	arrDSLineSettings 		:	ARRAY [1..gnMaxDSLine] 	OF	ST_UnitSettings;
	arrHmiSelectLine		:	ARRAY [1..gnMaxDSLine] 	OF	ST_ControlInfo;
	stDSActiveLine_IO		:	ST_DSLine_IO;
	nActiveLineNr			:	INT;
END_STRUCT
END_TYPE             )   , � � �           ST_UnitSettings /J�W	/J�W      : SB	Can        �   TYPE ST_UnitSettings :
STRUCT
	arrfUnitSpeed			:	ARRAY [1..gnMaxUnit] OF REAL;
	fDeltaVToFillValve		:	REAL;
	fDeltaVFromFillValve	:	REAL;
END_STRUCT
END_TYPE              2   , � � ��           F_Real_To_Uint /J�W	/J�W      ree  src        {   FUNCTION F_Real_To_Uint : UINT
VAR_INPUT
	ifDataIn		:		 REAL;
	inMantissa	:		 INT;
END_VAR
VAR
	_nMult: INT;
END_VAR�   	_nMult:=1;
	CASE inMantissa OF
		0: _nMult:=1;
		1: _nMult:=10;
		2: _nMult:=100;
		3: _nMult:=1000;
		4: _nMult:=10000;
	END_CASE
	F_Real_To_Uint:=INT_TO_UINT(REAL_TO_INT(ifDataIn*_nMult));                  , n n ��           F_Uint_To_Real /J�W	/J�W      	iDSneUT        y   FUNCTION F_Uint_To_Real : REAL
VAR_INPUT
	iuDataIn		:	 UINT;
	inMantissa	:	 INT;
END_VAR
VAR
	_nMult: INT;
END_VAR�   	_nMult:=1;
	CASE inMantissa OF
		0: _nMult:=1;
		1: _nMult:=10;
		2: _nMult:=100;
		3: _nMult:=1000;
		4: _nMult:=10000;
	END_CASE
	F_Uint_To_Real := INT_TO_REAL(UINT_TO_INT(iuDataIn))/_nMult;

               !   ,   "6           FB_InterComm /J�W	/J�W      ib*.b@cr        �  FUNCTION_BLOCK FB_InterComm

VAR_INPUT
	istUnitSettings		:	ST_UnitSettings;
END_VAR


VAR_IN_OUT
	iostDSLine_IO		:	ST_DSLine_IO;
END_VAR

VAR
	_uDigital_IN		:	UINT;
	_nWordCnt			:	INT;
	_nUnitCnt			:	INT;

(*Communication signals across PLCs*)
	arrComm_In			AT %I*	: ARRAY [0..63] OF UINT;	(*This input is directly coming from another PLC*)
	arrComm_Out			AT %Q*	: ARRAY [0..63] OF UINT;	(*This output is sent directly to another PLC*)

END_VAR�  
FOR _nUnitCnt := 1 TO gnMaxUnit DO	(* For all fillers fill the communication array *)
	_nWordCnt := (_nUnitCnt - 1)*10;	(* To space the Unit comm signals we start comm block on 10 word interval *)


	(* This PLC is the interface PLC so all incoming signal from the Main PLC are output signals her and vice versa*)

	(* Data OUT *)

	(*Downstream Line IO *)
	arrComm_Out[_nWordCnt ]		:=	iostDSLine_IO.arrDS_Unit[_nUnitCnt].stIN.iuDigital_IN;
	arrComm_Out[_nWordCnt +1]	:=	F_Real_To_Uint(ifDataIn := iostDSLine_IO.arrDS_Unit[_nUnitCnt].stIN.ifFPR,  inMantissa := 0);
	arrComm_Out[_nWordCnt +2]	:=	F_Real_To_Uint(ifDataIn := iostDSLine_IO.arrDS_Unit[_nUnitCnt].stIN.ifReal_1,  inMantissa := 0);
	arrComm_Out[_nWordCnt +3]	:=	F_Real_To_Uint(ifDataIn := iostDSLine_IO.arrDS_Unit[_nUnitCnt].stIN.ifReal_2,  inMantissa := 0);
	arrComm_Out[_nWordCnt +4]	:=	F_Real_To_Uint(ifDataIn := iostDSLine_IO.arrDS_Unit[_nUnitCnt].stIN.ifReal_3,  inMantissa := 0);
	(*Downstream Unit Settings *)
	arrComm_Out[_nWordCnt +5]	:=	F_Real_To_Uint(ifDataIn := istUnitSettings.arrfUnitSpeed[_nUnitCnt],  inMantissa := 0);
	arrComm_Out[_nWordCnt +6]	:=	F_Real_To_Uint(ifDataIn := istUnitSettings.fDeltaVToFillValve,  inMantissa := 0);
	arrComm_Out[_nWordCnt +7]	:=	F_Real_To_Uint(ifDataIn := istUnitSettings.fDeltaVFromFillValve,  inMantissa := 0);

	(* Data IN *)

	(*Downstream Line IO *)
	iostDSLine_IO.arrDS_Unit[_nUnitCnt].stOUT.ouDigital_OUT	:= 	arrComm_IN[_nWordCnt ];
	iostDSLine_IO.arrDS_Unit[_nUnitCnt].stOut.ofLVL			:=	F_Uint_To_Real(iuDatain := arrComm_IN[_nWordCnt +1], inMantissa := 0);
	iostDSLine_IO.arrDS_Unit[_nUnitCnt].stOut.ofReal_1		:=	F_Uint_To_Real(iuDatain := arrComm_IN[_nWordCnt +2], inMantissa := 3);
	iostDSLine_IO.arrDS_Unit[_nUnitCnt].stOut.ofReal_2		:=	F_Uint_To_Real(iuDatain := arrComm_IN[_nWordCnt +3], inMantissa := 3);
	iostDSLine_IO.arrDS_Unit[_nUnitCnt].stOut.ofReal_3		:=	F_Uint_To_Real(iuDatain := arrComm_IN[_nWordCnt +4], inMantissa := 3);
END_FOR

               '   ,   ";           FB_LineSelect /J�W	/J�W      ertele		        h  FUNCTION_BLOCK FB_LineSelect
VAR_IN_OUT
	iostDownStream_L1	: 	ST_DSLine_IO;
	iostDownStream_L2	: 	ST_DSLine_IO;
	iostDownStream_L3	: 	ST_DSLine_IO;
	iostDownStream_L4	: 	ST_DSLine_IO;
	iostDownStream_L5	: 	ST_DSLine_IO;
	iostDownStream_L6	: 	ST_DSLine_IO;

	iostDSActiveLine_IO	:	ST_DSLine_IO;
END_VAR

VAR_OUTPUT
	onActiveLineNr		:	INT;
	ostUnitSettings		:	ST_UnitSettings;
END_VAR


VAR
	stHMI : ST_HMI;

	_bInit			: 	BOOL := TRUE ; (* initialize device, bit will reset after first PLC scan *)
	_nUnitCnt		:	INT;
	_nLineCnt		:	INT;

	_ManualDSLineSel: 	BOOL;
	_SelLineNr		: 	INT;
END_VAR  (*================================== Init ===========================================================================*)

IF _bInit THEN
	_Init();
END_IF

(*===================================================================================================================*)

(* Downstream Line Selection *)
IF giS1L1 OR giS1L2 OR giS1L3 OR giS1L4 OR giS1L5 OR giS1L6 THEN
	_ManualDSLineSel:= FALSE;
END_IF

(* Prox Line selection *)
IF giS1L1 THEN
	_SelLineNr := 1;
ELSIF giS1L2 THEN
	_SelLineNr := 2;
ELSIF giS1L3 THEN
	_SelLineNr := 3;
ELSIF giS1L4 THEN
	_SelLineNr := 4;
ELSIF giS1L5 THEN
	_SelLineNr := 5;
ELSIF giS1L6 THEN
	_SelLineNr := 6;
END_IF

(* Reset line number *)
stHMI.nActiveLineNr := 0;

(*================ Line 1 Selected ==================================================================================*)


IF _ManualDSLineSel AND stHMI.arrHmiSelectLine[1].nHmiSelected = 1 OR _SelLineNr = 1 THEN

		stHMI.nActiveLineNr := 1;

	FOR _nUnitCnt := 0 TO gnMaxUnit DO
		iostDownStream_L1.arrDS_Unit[_nUnitCnt].stOUT := iostDSActiveLine_IO.arrDS_Unit[_nUnitCnt].stOUT;
	END_FOR

	FOR _nUnitCnt := 0 TO gnMaxUnit DO
		iostDSActiveLine_IO.arrDS_Unit[_nUnitCnt].stIN := iostDownStream_L1.arrDS_Unit[_nUnitCnt].stIN;
	END_FOR


(*================ Line 2 Selected ==================================================================================*)

ELSIF _ManualDSLineSel AND stHMI.arrHmiSelectLine[2].nHmiSelected = 1 OR _SelLineNr = 2 THEN

	stHMI.nActiveLineNr := 2;

	FOR _nUnitCnt := 0 TO gnMaxUnit DO
		iostDownStream_L2.arrDS_Unit[_nUnitCnt].stOUT := iostDSActiveLine_IO.arrDS_Unit[_nUnitCnt].stOUT;
	END_FOR

	FOR _nUnitCnt := 0 TO gnMaxUnit DO
		 iostDSActiveLine_IO.arrDS_Unit[_nUnitCnt].stIN := iostDownStream_L2.arrDS_Unit[_nUnitCnt].stIN;
	END_FOR



(*================ Line 3 Selected ==================================================================================*)


ELSIF _ManualDSLineSel AND stHMI.arrHmiSelectLine[3].nHmiSelected = 1 OR _SelLineNr = 3 THEN

	stHMI.nActiveLineNr := 3;

	FOR _nUnitCnt := 0 TO gnMaxUnit DO
		iostDownStream_L3.arrDS_Unit[_nUnitCnt].stOUT := iostDSActiveLine_IO.arrDS_Unit[_nUnitCnt].stOUT;
	END_FOR

	FOR _nUnitCnt := 0 TO gnMaxUnit DO
		 iostDSActiveLine_IO.arrDS_Unit[_nUnitCnt].stIN := iostDownStream_L3.arrDS_Unit[_nUnitCnt].stIN;
	END_FOR


(*================ Line 4 Selected ==================================================================================*)


ELSIF _ManualDSLineSel AND stHMI.arrHmiSelectLine[4].nHmiSelected = 1 OR _SelLineNr = 4 THEN

	stHMI.nActiveLineNr := 4;

	FOR _nUnitCnt := 0 TO gnMaxUnit DO
		iostDownStream_L4.arrDS_Unit[_nUnitCnt].stOUT := iostDSActiveLine_IO.arrDS_Unit[_nUnitCnt].stOUT;
	END_FOR

	FOR _nUnitCnt := 0 TO gnMaxUnit DO
		 iostDSActiveLine_IO.arrDS_Unit[_nUnitCnt].stIN := iostDownStream_L4.arrDS_Unit[_nUnitCnt].stIN;
	END_FOR


(*================ Line 5 Selected ==================================================================================*)


ELSIF _ManualDSLineSel AND stHMI.arrHmiSelectLine[5].nHmiSelected = 1 OR _SelLineNr = 5 THEN

	stHMI.nActiveLineNr := 5;

	FOR _nUnitCnt := 0 TO gnMaxUnit DO
		iostDownStream_L5.arrDS_Unit[_nUnitCnt].stOUT := iostDSActiveLine_IO.arrDS_Unit[_nUnitCnt].stOUT;
	END_FOR

	FOR _nUnitCnt := 0 TO gnMaxUnit DO
		 iostDSActiveLine_IO.arrDS_Unit[_nUnitCnt].stIN := iostDownStream_L5.arrDS_Unit[_nUnitCnt].stIN;
	END_FOR


(*================ Line 6 Selected ==================================================================================*)


ELSIF _ManualDSLineSel AND stHMI.arrHmiSelectLine[6].nHmiSelected = 1 OR _SelLineNr = 6 THEN

	stHMI.nActiveLineNr := 6;

	FOR _nUnitCnt := 0 TO gnMaxUnit DO
		iostDownStream_L6.arrDS_Unit[_nUnitCnt].stOUT := iostDSActiveLine_IO.arrDS_Unit[_nUnitCnt].stOUT;
	END_FOR

	FOR _nUnitCnt := 0 TO gnMaxUnit DO
		 iostDSActiveLine_IO.arrDS_Unit[_nUnitCnt].stIN := iostDownStream_L6.arrDS_Unit[_nUnitCnt].stIN;
	END_FOR
END_IF


(*================ HMI_Data ========================================================================================*)


ostUnitSettings := stHMI.arrDSLineSettings[onActiveLineNr];

(* Active Line number *)
FOR _nUnitCnt := 0 TO gnMaxUnit DO
	iostDSActiveLine_IO.arrDS_Unit[_nUnitCnt].nLine := stHMI.nActiveLineNr;
END_FOR


stHMI.stDS_IO_Line[1] 	:= 	iostDownStream_L1;
stHMI.stDS_IO_Line[2] 	:= 	iostDownStream_L2;
stHMI.stDS_IO_Line[3] 	:= 	iostDownStream_L3;
stHMI.stDS_IO_Line[4] 	:= 	iostDownStream_L4;
stHMI.stDS_IO_Line[5] 	:= 	iostDownStream_L5;
stHMI.stDS_IO_Line[6] 	:= 	iostDownStream_L6;

stHMI.stDSActiveLine_IO :=	iostDSActiveLine_IO;


(*================ Active Line Number ========================================================================*)


onActiveLineNr := stHMI.nActiveLineNr;    , � � ��           _Init /J�W�  (*Once this _Init action is executed, the command bit will be reset*)

IF _bInit THEN
(* Select default Line *)
	stHMI.arrHmiSelectLine[1].nHmiSelected := 1;

(* Manual selection is default acitvated untill line selection IO input activated *)
_ManualDSLineSel := TRUE;


(* HMI: Activate confirmation popup with the text "Are you sure  [cancel] / [OK]" when button pressed  *)
FOR _nLineCnt := 0 TO gnMaxDSLine DO
	stHMI.arrHmiSelectLine[_nLineCnt].nConfirmationId := 12;
	stHMI.arrHmiSelectLine[_nLineCnt].nButton := 4;
END_FOR

(* HMI: Add Line number to line info struct *)
FOR _nUnitCnt := 0 TO gnMaxUnit DO
	gstLine_1_IO.arrDS_Unit[_nUnitCnt].nLine := 1;
	gstLine_2_IO.arrDS_Unit[_nUnitCnt].nLine := 2;
	gstLine_3_IO.arrDS_Unit[_nUnitCnt].nLine := 3;
	gstLine_4_IO.arrDS_Unit[_nUnitCnt].nLine := 4;
	gstLine_5_IO.arrDS_Unit[_nUnitCnt].nLine := 5;
	gstLine_6_IO.arrDS_Unit[_nUnitCnt].nLine := 6;
END_FOR

END_IF

_bInit := FALSE;                 ,     %           IO /J�W	/J�W      ertele		        �   PROGRAM IO
VAR

	_bDummy		: 	BOOL := FALSE;
	_outDummy	:	BOOL;	(*Placeholder for outgoing signals this can have a value!!!!!!*)


END_VARJ   Line_1();

Line_2();

Line_3();

Line_4();

Line_5();

Line_6(); &   , -           Line_1 /J�W�4  (*================ Unit 1 ===========================================================================================*)

(* Inputs from downstream *)
(*	Bit 0: 	RFP		Ready For Production
	Bit 1: 	PDS		Product DownStream
	Bit 2: 	SPS		Sterideal Production Stop
	Bit 3: 	RFW		Request For Water
	Bit 4: 	SBS;	Steam Barrier Sterile
	Bit 5: 	FCA		Filler CIP Active *)

gstLine_1_IO.arrDS_Unit[1].stIN.iuDigital_IN.0 := giRFP_L1_U1;
gstLine_1_IO.arrDS_Unit[1].stIN.iuDigital_IN.1 := giPDS_L1_U1;
gstLine_1_IO.arrDS_Unit[1].stIN.iuDigital_IN.2 := giSPS_L1_U1;
gstLine_1_IO.arrDS_Unit[1].stIN.iuDigital_IN.3 := giRFW_L1_U1;
gstLine_1_IO.arrDS_Unit[1].stIN.iuDigital_IN.4 := giSBS_L1_U1;
gstLine_1_IO.arrDS_Unit[1].stIN.iuDigital_IN.5 := giFCA_L1_U1;
gstLine_1_IO.arrDS_Unit[1].stIN.iuDigital_IN.6 := _bDummy;
gstLine_1_IO.arrDS_Unit[1].stIN.iuDigital_IN.7 := _bDummy;
gstLine_1_IO.arrDS_Unit[1].stIN.iuDigital_IN.8 := _bDummy;
gstLine_1_IO.arrDS_Unit[1].stIN.iuDigital_IN.9 := _bDummy;
gstLine_1_IO.arrDS_Unit[1].stIN.iuDigital_IN.10 := _bDummy;
gstLine_1_IO.arrDS_Unit[1].stIN.iuDigital_IN.11 := _bDummy;
gstLine_1_IO.arrDS_Unit[1].stIN.iuDigital_IN.12 := _bDummy;
gstLine_1_IO.arrDS_Unit[1].stIN.iuDigital_IN.13 := _bDummy;
gstLine_1_IO.arrDS_Unit[1].stIN.iuDigital_IN.14 := _bDummy;
gstLine_1_IO.arrDS_Unit[1].stIN.iuDigital_IN.15 := _bDummy;

gstLine_1_IO.arrDS_Unit[1].stIN.ifFPR	:= ifFPR_L1_U1;


(* Outputs to downstream *)
(*	Bit 0: 	UST		Unit (Sterilizer/Steritank) Sterile conditions
	Bit 1: 	PAM		Product At Machine
	Bit 2: 	WAM		Water At Machine
	Bit 3: 	CIP		Cleaning In Place
	Bit 4: 	CSB		Clean Steam Barrier *)

goUST_L1_U1 := gstLine_1_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.0;
goPAM_L1_U1 := gstLine_1_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.1;
goWAM_L1_U1 := gstLine_1_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.2;
goCIP_L1_U1 := gstLine_1_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.3;
goCSB_L1_U1 := gstLine_1_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.4;
_outDummy := gstLine_1_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.5;
_outDummy := gstLine_1_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.6;
_outDummy := gstLine_1_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.7;
_outDummy := gstLine_1_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.8;
_outDummy := gstLine_1_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.9;
_outDummy := gstLine_1_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.10;
_outDummy := gstLine_1_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.11;
_outDummy := gstLine_1_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.12;
_outDummy := gstLine_1_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.13;
_outDummy := gstLine_1_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.14;
_outDummy := gstLine_1_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.15;


(*================ Unit 2 ===========================================================================================*)

(* Inputs from downstream *)
(*	Bit 0: 	RFP		Ready For Production
	Bit 1: 	PDS		Product DownStream
	Bit 2: 	SPS		Sterideal Production Stop
	Bit 3: 	RFW		Request For Water
	Bit 4: 	SBS;	Steam Barrier Sterile
	Bit 5: 	FCA		Filler CIP Active *)

gstLine_1_IO.arrDS_Unit[2].stIN.iuDigital_IN.0 := giRFP_L1_U2;
gstLine_1_IO.arrDS_Unit[2].stIN.iuDigital_IN.1 := giPDS_L1_U2;
gstLine_1_IO.arrDS_Unit[2].stIN.iuDigital_IN.2 := giSPS_L1_U2;
gstLine_1_IO.arrDS_Unit[2].stIN.iuDigital_IN.3 := giRFW_L1_U2;
gstLine_1_IO.arrDS_Unit[2].stIN.iuDigital_IN.4 := giSBS_L1_U2;
gstLine_1_IO.arrDS_Unit[2].stIN.iuDigital_IN.5 := giFCA_L1_U2;
gstLine_1_IO.arrDS_Unit[2].stIN.iuDigital_IN.6 := _bDummy;
gstLine_1_IO.arrDS_Unit[2].stIN.iuDigital_IN.7 := _bDummy;
gstLine_1_IO.arrDS_Unit[2].stIN.iuDigital_IN.8 := _bDummy;
gstLine_1_IO.arrDS_Unit[2].stIN.iuDigital_IN.9 := _bDummy;
gstLine_1_IO.arrDS_Unit[2].stIN.iuDigital_IN.10 := _bDummy;
gstLine_1_IO.arrDS_Unit[2].stIN.iuDigital_IN.11 := _bDummy;
gstLine_1_IO.arrDS_Unit[2].stIN.iuDigital_IN.12 := _bDummy;
gstLine_1_IO.arrDS_Unit[2].stIN.iuDigital_IN.13 := _bDummy;
gstLine_1_IO.arrDS_Unit[2].stIN.iuDigital_IN.14 := _bDummy;
gstLine_1_IO.arrDS_Unit[2].stIN.iuDigital_IN.15 := _bDummy;

gstLine_1_IO.arrDS_Unit[2].stIN.ifFPR	:= ifFPR_L1_U2;


(* Outputs to downstream *)
(*	Bit 0: 	UST		Unit (Sterilizer/Steritank) Sterile conditions
	Bit 1: 	PAM		Product At Machine
	Bit 2: 	WAM		Water At Machine
	Bit 3: 	CIP		Cleaning In Place
	Bit 4: 	CSB		Clean Steam Barrier *)

goUST_L1_U2 := gstLine_1_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.0;
goPAM_L1_U2 := gstLine_1_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.1;
goWAM_L1_U2 := gstLine_1_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.2;
goCIP_L1_U2 := gstLine_1_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.3;
goCSB_L1_U2 := gstLine_1_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.4;
_outDummy := gstLine_1_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.5;
_outDummy := gstLine_1_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.6;
_outDummy := gstLine_1_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.7;
_outDummy := gstLine_1_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.8;
_outDummy := gstLine_1_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.9;
_outDummy := gstLine_1_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.10;
_outDummy := gstLine_1_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.11;
_outDummy := gstLine_1_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.12;
_outDummy := gstLine_1_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.13;
_outDummy := gstLine_1_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.14;
_outDummy := gstLine_1_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.15;


(*================ Unit 3 ===========================================================================================*)

(* Inputs from downstream *)
(*	Bit 0: 	RFP		Ready For Production
	Bit 1: 	PDS		Product DownStream
	Bit 2: 	SPS		Sterideal Production Stop
	Bit 3: 	RFW		Request For Water
	Bit 4: 	SBS;	Steam Barrier Sterile
	Bit 5: 	FCA		Filler CIP Active *)

gstLine_1_IO.arrDS_Unit[3].stIN.iuDigital_IN.0 := giRFP_L1_U3;
gstLine_1_IO.arrDS_Unit[3].stIN.iuDigital_IN.1 := giPDS_L1_U3;
gstLine_1_IO.arrDS_Unit[3].stIN.iuDigital_IN.2 := giSPS_L1_U3;
gstLine_1_IO.arrDS_Unit[3].stIN.iuDigital_IN.3 := giRFW_L1_U3;
gstLine_1_IO.arrDS_Unit[3].stIN.iuDigital_IN.4 := giSBS_L1_U3;
gstLine_1_IO.arrDS_Unit[3].stIN.iuDigital_IN.5 := giFCA_L1_U3;
gstLine_1_IO.arrDS_Unit[3].stIN.iuDigital_IN.6 := _bDummy;
gstLine_1_IO.arrDS_Unit[3].stIN.iuDigital_IN.7 := _bDummy;
gstLine_1_IO.arrDS_Unit[3].stIN.iuDigital_IN.8 := _bDummy;
gstLine_1_IO.arrDS_Unit[3].stIN.iuDigital_IN.9 := _bDummy;
gstLine_1_IO.arrDS_Unit[3].stIN.iuDigital_IN.10 := _bDummy;
gstLine_1_IO.arrDS_Unit[3].stIN.iuDigital_IN.11 := _bDummy;
gstLine_1_IO.arrDS_Unit[3].stIN.iuDigital_IN.12 := _bDummy;
gstLine_1_IO.arrDS_Unit[3].stIN.iuDigital_IN.13 := _bDummy;
gstLine_1_IO.arrDS_Unit[3].stIN.iuDigital_IN.14 := _bDummy;
gstLine_1_IO.arrDS_Unit[3].stIN.iuDigital_IN.15 := _bDummy;

gstLine_1_IO.arrDS_Unit[3].stIN.ifFPR	:= ifFPR_L1_U3;


(* Outputs to downstream *)
(*	Bit 0: 	UST		Unit (Sterilizer/Steritank) Sterile conditions
	Bit 1: 	PAM		Product At Machine
	Bit 2: 	WAM		Water At Machine
	Bit 3: 	CIP		Cleaning In Place
	Bit 4: 	CSB		Clean Steam Barrier *)

goUST_L1_U3 := gstLine_1_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.0;
goPAM_L1_U3 := gstLine_1_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.1;
goWAM_L1_U3 := gstLine_1_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.2;
goCIP_L1_U3 := gstLine_1_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.3;
goCSB_L1_U3 := gstLine_1_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.4;
_outDummy := gstLine_1_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.5;
_outDummy := gstLine_1_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.6;
_outDummy := gstLine_1_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.7;
_outDummy := gstLine_1_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.8;
_outDummy := gstLine_1_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.9;
_outDummy := gstLine_1_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.10;
_outDummy := gstLine_1_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.11;
_outDummy := gstLine_1_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.12;
_outDummy := gstLine_1_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.13;
_outDummy := gstLine_1_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.14;
_outDummy := gstLine_1_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.15;


(*================ Unit 4 ===========================================================================================*)

(* Inputs from downstream *)
(*	Bit 0: 	RFP		Ready For Production
	Bit 1: 	PDS		Product DownStream
	Bit 2: 	SPS		Sterideal Production Stop
	Bit 3: 	RFW		Request For Water
	Bit 4: 	SBS;	Steam Barrier Sterile
	Bit 5: 	FCA		Filler CIP Active *)

gstLine_1_IO.arrDS_Unit[4].stIN.iuDigital_IN.0 := giRFP_L1_U4;
gstLine_1_IO.arrDS_Unit[4].stIN.iuDigital_IN.1 := giPDS_L1_U4;
gstLine_1_IO.arrDS_Unit[4].stIN.iuDigital_IN.2 := giSPS_L1_U4;
gstLine_1_IO.arrDS_Unit[4].stIN.iuDigital_IN.3 := giRFW_L1_U4;
gstLine_1_IO.arrDS_Unit[4].stIN.iuDigital_IN.4 := giSBS_L1_U4;
gstLine_1_IO.arrDS_Unit[4].stIN.iuDigital_IN.5 := giFCA_L1_U4;
gstLine_1_IO.arrDS_Unit[4].stIN.iuDigital_IN.6 := _bDummy;
gstLine_1_IO.arrDS_Unit[4].stIN.iuDigital_IN.7 := _bDummy;
gstLine_1_IO.arrDS_Unit[4].stIN.iuDigital_IN.8 := _bDummy;
gstLine_1_IO.arrDS_Unit[4].stIN.iuDigital_IN.9 := _bDummy;
gstLine_1_IO.arrDS_Unit[4].stIN.iuDigital_IN.10 := _bDummy;
gstLine_1_IO.arrDS_Unit[4].stIN.iuDigital_IN.11 := _bDummy;
gstLine_1_IO.arrDS_Unit[4].stIN.iuDigital_IN.12 := _bDummy;
gstLine_1_IO.arrDS_Unit[4].stIN.iuDigital_IN.13 := _bDummy;
gstLine_1_IO.arrDS_Unit[4].stIN.iuDigital_IN.14 := _bDummy;
gstLine_1_IO.arrDS_Unit[4].stIN.iuDigital_IN.15 := _bDummy;

gstLine_1_IO.arrDS_Unit[4].stIN.ifFPR	:= ifFPR_L1_U4;


(* Outputs to downstream *)
(*	Bit 0: 	UST		Unit (Sterilizer/Steritank) Sterile conditions
	Bit 1: 	PAM		Product At Machine
	Bit 2: 	WAM		Water At Machine
	Bit 3: 	CIP		Cleaning In Place
	Bit 4: 	CSB		Clean Steam Barrier *)

goUST_L1_U4 := gstLine_1_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.0;
goPAM_L1_U4 := gstLine_1_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.1;
goWAM_L1_U4 := gstLine_1_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.2;
goCIP_L1_U4 := gstLine_1_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.3;
goCSB_L1_U4 := gstLine_1_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.4;
_outDummy := gstLine_1_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.5;
_outDummy := gstLine_1_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.6;
_outDummy := gstLine_1_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.7;
_outDummy := gstLine_1_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.8;
_outDummy := gstLine_1_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.9;
_outDummy := gstLine_1_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.10;
_outDummy := gstLine_1_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.11;
_outDummy := gstLine_1_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.12;
_outDummy := gstLine_1_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.13;
_outDummy := gstLine_1_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.14;
_outDummy := gstLine_1_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.15;


(*================ Unit 5 ===========================================================================================*)

(* Inputs from downstream *)
(*	Bit 0: 	RFP		Ready For Production
	Bit 1: 	PDS		Product DownStream
	Bit 2: 	SPS		Sterideal Production Stop
	Bit 3: 	RFW		Request For Water
	Bit 4: 	SBS;	Steam Barrier Sterile
	Bit 5: 	FCA		Filler CIP Active *)

gstLine_1_IO.arrDS_Unit[5].stIN.iuDigital_IN.0 := giRFP_L1_U5;
gstLine_1_IO.arrDS_Unit[5].stIN.iuDigital_IN.1 := giPDS_L1_U5;
gstLine_1_IO.arrDS_Unit[5].stIN.iuDigital_IN.2 := giSPS_L1_U5;
gstLine_1_IO.arrDS_Unit[5].stIN.iuDigital_IN.3 := giRFW_L1_U5;
gstLine_1_IO.arrDS_Unit[5].stIN.iuDigital_IN.4 := giSBS_L1_U5;
gstLine_1_IO.arrDS_Unit[5].stIN.iuDigital_IN.5 := giFCA_L1_U5;
gstLine_1_IO.arrDS_Unit[5].stIN.iuDigital_IN.6 := _bDummy;
gstLine_1_IO.arrDS_Unit[5].stIN.iuDigital_IN.7 := _bDummy;
gstLine_1_IO.arrDS_Unit[5].stIN.iuDigital_IN.8 := _bDummy;
gstLine_1_IO.arrDS_Unit[5].stIN.iuDigital_IN.9 := _bDummy;
gstLine_1_IO.arrDS_Unit[5].stIN.iuDigital_IN.10 := _bDummy;
gstLine_1_IO.arrDS_Unit[5].stIN.iuDigital_IN.11 := _bDummy;
gstLine_1_IO.arrDS_Unit[5].stIN.iuDigital_IN.12 := _bDummy;
gstLine_1_IO.arrDS_Unit[5].stIN.iuDigital_IN.13 := _bDummy;
gstLine_1_IO.arrDS_Unit[5].stIN.iuDigital_IN.14 := _bDummy;
gstLine_1_IO.arrDS_Unit[5].stIN.iuDigital_IN.15 := _bDummy;

gstLine_1_IO.arrDS_Unit[5].stIN.ifFPR	:= ifFPR_L1_U5;


(* Outputs to downstream *)
(*	Bit 0: 	UST		Unit (Sterilizer/Steritank) Sterile conditions
	Bit 1: 	PAM		Product At Machine
	Bit 2: 	WAM		Water At Machine
	Bit 3: 	CIP		Cleaning In Place
	Bit 4: 	CSB		Clean Steam Barrier *)

goUST_L1_U5 := gstLine_1_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.0;
goPAM_L1_U5 := gstLine_1_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.1;
goWAM_L1_U5 := gstLine_1_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.2;
goCIP_L1_U5 := gstLine_1_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.3;
goCSB_L1_U5 := gstLine_1_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.4;
_outDummy := gstLine_1_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.5;
_outDummy := gstLine_1_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.6;
_outDummy := gstLine_1_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.7;
_outDummy := gstLine_1_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.8;
_outDummy := gstLine_1_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.9;
_outDummy := gstLine_1_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.10;
_outDummy := gstLine_1_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.11;
_outDummy := gstLine_1_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.12;
_outDummy := gstLine_1_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.13;
_outDummy := gstLine_1_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.14;
_outDummy := gstLine_1_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.15;


%   , B W Nu           Line_2 /J�W�4  (*================ Unit 1 ===========================================================================================*)

(* Inputs from downstream *)
(*	Bit 0: 	RFP		Ready For Production
	Bit 1: 	PDS		Product DownStream
	Bit 2: 	SPS		Sterideal Production Stop
	Bit 3: 	RFW		Request For Water
	Bit 4: 	SBS;	Steam Barrier Sterile
	Bit 5: 	FCA		Filler CIP Active *)

gstLine_2_IO.arrDS_Unit[1].stIN.iuDigital_IN.0 := giRFP_L2_U1;
gstLine_2_IO.arrDS_Unit[1].stIN.iuDigital_IN.1 := giPDS_L2_U1;
gstLine_2_IO.arrDS_Unit[1].stIN.iuDigital_IN.2 := giSPS_L2_U1;
gstLine_2_IO.arrDS_Unit[1].stIN.iuDigital_IN.3 := giRFW_L2_U1;
gstLine_2_IO.arrDS_Unit[1].stIN.iuDigital_IN.4 := giSBS_L2_U1;
gstLine_2_IO.arrDS_Unit[1].stIN.iuDigital_IN.5 := giFCA_L2_U1;
gstLine_2_IO.arrDS_Unit[1].stIN.iuDigital_IN.6 := _bDummy;
gstLine_2_IO.arrDS_Unit[1].stIN.iuDigital_IN.7 := _bDummy;
gstLine_2_IO.arrDS_Unit[1].stIN.iuDigital_IN.8 := _bDummy;
gstLine_2_IO.arrDS_Unit[1].stIN.iuDigital_IN.9 := _bDummy;
gstLine_2_IO.arrDS_Unit[1].stIN.iuDigital_IN.10 := _bDummy;
gstLine_2_IO.arrDS_Unit[1].stIN.iuDigital_IN.11 := _bDummy;
gstLine_2_IO.arrDS_Unit[1].stIN.iuDigital_IN.12 := _bDummy;
gstLine_2_IO.arrDS_Unit[1].stIN.iuDigital_IN.13 := _bDummy;
gstLine_2_IO.arrDS_Unit[1].stIN.iuDigital_IN.14 := _bDummy;
gstLine_2_IO.arrDS_Unit[1].stIN.iuDigital_IN.15 := _bDummy;

gstLine_2_IO.arrDS_Unit[1].stIN.ifFPR	:= ifFPR_L2_U1;


(* Outputs to downstream *)
(*	Bit 0: 	UST		Unit (Sterilizer/Steritank) Sterile conditions
	Bit 1: 	PAM		Product At Machine
	Bit 2: 	WAM		Water At Machine
	Bit 3: 	CIP		Cleaning In Place
	Bit 4: 	CSB		Clean Steam Barrier *)

goUST_L2_U1 := gstLine_2_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.0;
goPAM_L2_U1 := gstLine_2_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.1;
goWAM_L2_U1 := gstLine_2_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.2;
goCIP_L2_U1 := gstLine_2_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.3;
goCSB_L2_U1 := gstLine_2_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.4;
_outDummy := gstLine_2_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.5;
_outDummy := gstLine_2_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.6;
_outDummy := gstLine_2_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.7;
_outDummy := gstLine_2_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.8;
_outDummy := gstLine_2_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.9;
_outDummy := gstLine_2_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.10;
_outDummy := gstLine_2_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.11;
_outDummy := gstLine_2_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.12;
_outDummy := gstLine_2_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.13;
_outDummy := gstLine_2_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.14;
_outDummy := gstLine_2_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.15;


(*================ Unit 2 ===========================================================================================*)

(* Inputs from downstream *)
(*	Bit 0: 	RFP		Ready For Production
	Bit 1: 	PDS		Product DownStream
	Bit 2: 	SPS		Sterideal Production Stop
	Bit 3: 	RFW		Request For Water
	Bit 4: 	SBS;	Steam Barrier Sterile
	Bit 5: 	FCA		Filler CIP Active *)

gstLine_2_IO.arrDS_Unit[2].stIN.iuDigital_IN.0 := giRFP_L2_U2;
gstLine_2_IO.arrDS_Unit[2].stIN.iuDigital_IN.1 := giPDS_L2_U2;
gstLine_2_IO.arrDS_Unit[2].stIN.iuDigital_IN.2 := giSPS_L2_U2;
gstLine_2_IO.arrDS_Unit[2].stIN.iuDigital_IN.3 := giRFW_L2_U2;
gstLine_2_IO.arrDS_Unit[2].stIN.iuDigital_IN.4 := giSBS_L2_U2;
gstLine_2_IO.arrDS_Unit[2].stIN.iuDigital_IN.5 := giFCA_L2_U2;
gstLine_2_IO.arrDS_Unit[2].stIN.iuDigital_IN.6 := _bDummy;
gstLine_2_IO.arrDS_Unit[2].stIN.iuDigital_IN.7 := _bDummy;
gstLine_2_IO.arrDS_Unit[2].stIN.iuDigital_IN.8 := _bDummy;
gstLine_2_IO.arrDS_Unit[2].stIN.iuDigital_IN.9 := _bDummy;
gstLine_2_IO.arrDS_Unit[2].stIN.iuDigital_IN.10 := _bDummy;
gstLine_2_IO.arrDS_Unit[2].stIN.iuDigital_IN.11 := _bDummy;
gstLine_2_IO.arrDS_Unit[2].stIN.iuDigital_IN.12 := _bDummy;
gstLine_2_IO.arrDS_Unit[2].stIN.iuDigital_IN.13 := _bDummy;
gstLine_2_IO.arrDS_Unit[2].stIN.iuDigital_IN.14 := _bDummy;
gstLine_2_IO.arrDS_Unit[2].stIN.iuDigital_IN.15 := _bDummy;

gstLine_2_IO.arrDS_Unit[2].stIN.ifFPR	:= ifFPR_L2_U2;


(* Outputs to downstream *)
(*	Bit 0: 	UST		Unit (Sterilizer/Steritank) Sterile conditions
	Bit 1: 	PAM		Product At Machine
	Bit 2: 	WAM		Water At Machine
	Bit 3: 	CIP		Cleaning In Place
	Bit 4: 	CSB		Clean Steam Barrier *)

goUST_L2_U2 := gstLine_2_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.0;
goPAM_L2_U2 := gstLine_2_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.1;
goWAM_L2_U2 := gstLine_2_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.2;
goCIP_L2_U2 := gstLine_2_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.3;
goCSB_L2_U2 := gstLine_2_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.4;
_outDummy := gstLine_2_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.5;
_outDummy := gstLine_2_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.6;
_outDummy := gstLine_2_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.7;
_outDummy := gstLine_2_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.8;
_outDummy := gstLine_2_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.9;
_outDummy := gstLine_2_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.10;
_outDummy := gstLine_2_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.11;
_outDummy := gstLine_2_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.12;
_outDummy := gstLine_2_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.13;
_outDummy := gstLine_2_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.14;
_outDummy := gstLine_2_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.15;


(*================ Unit 3 ===========================================================================================*)

(* Inputs from downstream *)
(*	Bit 0: 	RFP		Ready For Production
	Bit 1: 	PDS		Product DownStream
	Bit 2: 	SPS		Sterideal Production Stop
	Bit 3: 	RFW		Request For Water
	Bit 4: 	SBS;	Steam Barrier Sterile
	Bit 5: 	FCA		Filler CIP Active *)

gstLine_2_IO.arrDS_Unit[3].stIN.iuDigital_IN.0 := giRFP_L2_U3;
gstLine_2_IO.arrDS_Unit[3].stIN.iuDigital_IN.1 := giPDS_L2_U3;
gstLine_2_IO.arrDS_Unit[3].stIN.iuDigital_IN.2 := giSPS_L2_U3;
gstLine_2_IO.arrDS_Unit[3].stIN.iuDigital_IN.3 := giRFW_L2_U3;
gstLine_2_IO.arrDS_Unit[3].stIN.iuDigital_IN.4 := giSBS_L2_U3;
gstLine_2_IO.arrDS_Unit[3].stIN.iuDigital_IN.5 := giFCA_L2_U3;
gstLine_2_IO.arrDS_Unit[3].stIN.iuDigital_IN.6 := _bDummy;
gstLine_2_IO.arrDS_Unit[3].stIN.iuDigital_IN.7 := _bDummy;
gstLine_2_IO.arrDS_Unit[3].stIN.iuDigital_IN.8 := _bDummy;
gstLine_2_IO.arrDS_Unit[3].stIN.iuDigital_IN.9 := _bDummy;
gstLine_2_IO.arrDS_Unit[3].stIN.iuDigital_IN.10 := _bDummy;
gstLine_2_IO.arrDS_Unit[3].stIN.iuDigital_IN.11 := _bDummy;
gstLine_2_IO.arrDS_Unit[3].stIN.iuDigital_IN.12 := _bDummy;
gstLine_2_IO.arrDS_Unit[3].stIN.iuDigital_IN.13 := _bDummy;
gstLine_2_IO.arrDS_Unit[3].stIN.iuDigital_IN.14 := _bDummy;
gstLine_2_IO.arrDS_Unit[3].stIN.iuDigital_IN.15 := _bDummy;

gstLine_2_IO.arrDS_Unit[3].stIN.ifFPR	:= ifFPR_L2_U3;


(* Outputs to downstream *)
(*	Bit 0: 	UST		Unit (Sterilizer/Steritank) Sterile conditions
	Bit 1: 	PAM		Product At Machine
	Bit 2: 	WAM		Water At Machine
	Bit 3: 	CIP		Cleaning In Place
	Bit 4: 	CSB		Clean Steam Barrier *)

goUST_L2_U3 := gstLine_2_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.0;
goPAM_L2_U3 := gstLine_2_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.1;
goWAM_L2_U3 := gstLine_2_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.2;
goCIP_L2_U3 := gstLine_2_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.3;
goCSB_L2_U3 := gstLine_2_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.4;
_outDummy := gstLine_2_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.5;
_outDummy := gstLine_2_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.6;
_outDummy := gstLine_2_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.7;
_outDummy := gstLine_2_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.8;
_outDummy := gstLine_2_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.9;
_outDummy := gstLine_2_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.10;
_outDummy := gstLine_2_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.11;
_outDummy := gstLine_2_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.12;
_outDummy := gstLine_2_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.13;
_outDummy := gstLine_2_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.14;
_outDummy := gstLine_2_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.15;


(*================ Unit 4 ===========================================================================================*)

(* Inputs from downstream *)
(*	Bit 0: 	RFP		Ready For Production
	Bit 1: 	PDS		Product DownStream
	Bit 2: 	SPS		Sterideal Production Stop
	Bit 3: 	RFW		Request For Water
	Bit 4: 	SBS;	Steam Barrier Sterile
	Bit 5: 	FCA		Filler CIP Active *)

gstLine_2_IO.arrDS_Unit[4].stIN.iuDigital_IN.0 := giRFP_L2_U4;
gstLine_2_IO.arrDS_Unit[4].stIN.iuDigital_IN.1 := giPDS_L2_U4;
gstLine_2_IO.arrDS_Unit[4].stIN.iuDigital_IN.2 := giSPS_L2_U4;
gstLine_2_IO.arrDS_Unit[4].stIN.iuDigital_IN.3 := giRFW_L2_U4;
gstLine_2_IO.arrDS_Unit[4].stIN.iuDigital_IN.4 := giSBS_L2_U4;
gstLine_2_IO.arrDS_Unit[4].stIN.iuDigital_IN.5 := giFCA_L2_U4;
gstLine_2_IO.arrDS_Unit[4].stIN.iuDigital_IN.6 := _bDummy;
gstLine_2_IO.arrDS_Unit[4].stIN.iuDigital_IN.7 := _bDummy;
gstLine_2_IO.arrDS_Unit[4].stIN.iuDigital_IN.8 := _bDummy;
gstLine_2_IO.arrDS_Unit[4].stIN.iuDigital_IN.9 := _bDummy;
gstLine_2_IO.arrDS_Unit[4].stIN.iuDigital_IN.10 := _bDummy;
gstLine_2_IO.arrDS_Unit[4].stIN.iuDigital_IN.11 := _bDummy;
gstLine_2_IO.arrDS_Unit[4].stIN.iuDigital_IN.12 := _bDummy;
gstLine_2_IO.arrDS_Unit[4].stIN.iuDigital_IN.13 := _bDummy;
gstLine_2_IO.arrDS_Unit[4].stIN.iuDigital_IN.14 := _bDummy;
gstLine_2_IO.arrDS_Unit[4].stIN.iuDigital_IN.15 := _bDummy;

gstLine_2_IO.arrDS_Unit[4].stIN.ifFPR	:= ifFPR_L2_U4;


(* Outputs to downstream *)
(*	Bit 0: 	UST		Unit (Sterilizer/Steritank) Sterile conditions
	Bit 1: 	PAM		Product At Machine
	Bit 2: 	WAM		Water At Machine
	Bit 3: 	CIP		Cleaning In Place
	Bit 4: 	CSB		Clean Steam Barrier *)

goUST_L2_U4 := gstLine_2_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.0;
goPAM_L2_U4 := gstLine_2_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.1;
goWAM_L2_U4 := gstLine_2_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.2;
goCIP_L2_U4 := gstLine_2_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.3;
goCSB_L2_U4 := gstLine_2_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.4;
_outDummy := gstLine_2_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.5;
_outDummy := gstLine_2_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.6;
_outDummy := gstLine_2_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.7;
_outDummy := gstLine_2_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.8;
_outDummy := gstLine_2_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.9;
_outDummy := gstLine_2_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.10;
_outDummy := gstLine_2_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.11;
_outDummy := gstLine_2_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.12;
_outDummy := gstLine_2_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.13;
_outDummy := gstLine_2_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.14;
_outDummy := gstLine_2_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.15;


(*================ Unit 5 ===========================================================================================*)

(* Inputs from downstream *)
(*	Bit 0: 	RFP		Ready For Production
	Bit 1: 	PDS		Product DownStream
	Bit 2: 	SPS		Sterideal Production Stop
	Bit 3: 	RFW		Request For Water
	Bit 4: 	SBS;	Steam Barrier Sterile
	Bit 5: 	FCA		Filler CIP Active *)

gstLine_2_IO.arrDS_Unit[5].stIN.iuDigital_IN.0 := giRFP_L2_U5;
gstLine_2_IO.arrDS_Unit[5].stIN.iuDigital_IN.1 := giPDS_L2_U5;
gstLine_2_IO.arrDS_Unit[5].stIN.iuDigital_IN.2 := giSPS_L2_U5;
gstLine_2_IO.arrDS_Unit[5].stIN.iuDigital_IN.3 := giRFW_L2_U5;
gstLine_2_IO.arrDS_Unit[5].stIN.iuDigital_IN.4 := giSBS_L2_U5;
gstLine_2_IO.arrDS_Unit[5].stIN.iuDigital_IN.5 := giFCA_L2_U5;
gstLine_2_IO.arrDS_Unit[5].stIN.iuDigital_IN.6 := _bDummy;
gstLine_2_IO.arrDS_Unit[5].stIN.iuDigital_IN.7 := _bDummy;
gstLine_2_IO.arrDS_Unit[5].stIN.iuDigital_IN.8 := _bDummy;
gstLine_2_IO.arrDS_Unit[5].stIN.iuDigital_IN.9 := _bDummy;
gstLine_2_IO.arrDS_Unit[5].stIN.iuDigital_IN.10 := _bDummy;
gstLine_2_IO.arrDS_Unit[5].stIN.iuDigital_IN.11 := _bDummy;
gstLine_2_IO.arrDS_Unit[5].stIN.iuDigital_IN.12 := _bDummy;
gstLine_2_IO.arrDS_Unit[5].stIN.iuDigital_IN.13 := _bDummy;
gstLine_2_IO.arrDS_Unit[5].stIN.iuDigital_IN.14 := _bDummy;
gstLine_2_IO.arrDS_Unit[5].stIN.iuDigital_IN.15 := _bDummy;

gstLine_2_IO.arrDS_Unit[5].stIN.ifFPR	:= ifFPR_L2_U5;


(* Outputs to downstream *)
(*	Bit 0: 	UST		Unit (Sterilizer/Steritank) Sterile conditions
	Bit 1: 	PAM		Product At Machine
	Bit 2: 	WAM		Water At Machine
	Bit 3: 	CIP		Cleaning In Place
	Bit 4: 	CSB		Clean Steam Barrier *)

goUST_L2_U5 := gstLine_2_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.0;
goPAM_L2_U5 := gstLine_2_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.1;
goWAM_L2_U5 := gstLine_2_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.2;
goCIP_L2_U5 := gstLine_2_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.3;
goCSB_L2_U5 := gstLine_2_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.4;
_outDummy := gstLine_2_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.5;
_outDummy := gstLine_2_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.6;
_outDummy := gstLine_2_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.7;
_outDummy := gstLine_2_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.8;
_outDummy := gstLine_2_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.9;
_outDummy := gstLine_2_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.10;
_outDummy := gstLine_2_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.11;
_outDummy := gstLine_2_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.12;
_outDummy := gstLine_2_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.13;
_outDummy := gstLine_2_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.14;
_outDummy := gstLine_2_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.15;


+   , X t ��           Line_3 /J�W�4  (*================ Unit 1 ===========================================================================================*)

(* Inputs from downstream *)
(*	Bit 0: 	RFP		Ready For Production
	Bit 1: 	PDS		Product DownStream
	Bit 2: 	SPS		Sterideal Production Stop
	Bit 3: 	RFW		Request For Water
	Bit 4: 	SBS;	Steam Barrier Sterile
	Bit 5: 	FCA		Filler CIP Active *)

gstLine_3_IO.arrDS_Unit[1].stIN.iuDigital_IN.0 := giRFP_L3_U1;
gstLine_3_IO.arrDS_Unit[1].stIN.iuDigital_IN.1 := giPDS_L3_U1;
gstLine_3_IO.arrDS_Unit[1].stIN.iuDigital_IN.2 := giSPS_L3_U1;
gstLine_3_IO.arrDS_Unit[1].stIN.iuDigital_IN.3 := giRFW_L3_U1;
gstLine_3_IO.arrDS_Unit[1].stIN.iuDigital_IN.4 := giSBS_L3_U1;
gstLine_3_IO.arrDS_Unit[1].stIN.iuDigital_IN.5 := giFCA_L3_U1;
gstLine_3_IO.arrDS_Unit[1].stIN.iuDigital_IN.6 := _bDummy;
gstLine_3_IO.arrDS_Unit[1].stIN.iuDigital_IN.7 := _bDummy;
gstLine_3_IO.arrDS_Unit[1].stIN.iuDigital_IN.8 := _bDummy;
gstLine_3_IO.arrDS_Unit[1].stIN.iuDigital_IN.9 := _bDummy;
gstLine_3_IO.arrDS_Unit[1].stIN.iuDigital_IN.10 := _bDummy;
gstLine_3_IO.arrDS_Unit[1].stIN.iuDigital_IN.11 := _bDummy;
gstLine_3_IO.arrDS_Unit[1].stIN.iuDigital_IN.12 := _bDummy;
gstLine_3_IO.arrDS_Unit[1].stIN.iuDigital_IN.13 := _bDummy;
gstLine_3_IO.arrDS_Unit[1].stIN.iuDigital_IN.14 := _bDummy;
gstLine_3_IO.arrDS_Unit[1].stIN.iuDigital_IN.15 := _bDummy;

gstLine_3_IO.arrDS_Unit[1].stIN.ifFPR	:= ifFPR_L3_U1;


(* Outputs to downstream *)
(*	Bit 0: 	UST		Unit (Sterilizer/Steritank) Sterile conditions
	Bit 1: 	PAM		Product At Machine
	Bit 2: 	WAM		Water At Machine
	Bit 3: 	CIP		Cleaning In Place
	Bit 4: 	CSB		Clean Steam Barrier *)

goUST_L3_U1 := gstLine_3_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.0;
goPAM_L3_U1 := gstLine_3_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.1;
goWAM_L3_U1 := gstLine_3_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.2;
goCIP_L3_U1 := gstLine_3_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.3;
goCSB_L3_U1 := gstLine_3_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.4;
_outDummy := gstLine_3_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.5;
_outDummy := gstLine_3_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.6;
_outDummy := gstLine_3_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.7;
_outDummy := gstLine_3_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.8;
_outDummy := gstLine_3_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.9;
_outDummy := gstLine_3_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.10;
_outDummy := gstLine_3_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.11;
_outDummy := gstLine_3_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.12;
_outDummy := gstLine_3_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.13;
_outDummy := gstLine_3_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.14;
_outDummy := gstLine_3_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.15;


(*================ Unit 2 ===========================================================================================*)

(* Inputs from downstream *)
(*	Bit 0: 	RFP		Ready For Production
	Bit 1: 	PDS		Product DownStream
	Bit 2: 	SPS		Sterideal Production Stop
	Bit 3: 	RFW		Request For Water
	Bit 4: 	SBS;	Steam Barrier Sterile
	Bit 5: 	FCA		Filler CIP Active *)

gstLine_3_IO.arrDS_Unit[2].stIN.iuDigital_IN.0 := giRFP_L3_U2;
gstLine_3_IO.arrDS_Unit[2].stIN.iuDigital_IN.1 := giPDS_L3_U2;
gstLine_3_IO.arrDS_Unit[2].stIN.iuDigital_IN.2 := giSPS_L3_U2;
gstLine_3_IO.arrDS_Unit[2].stIN.iuDigital_IN.3 := giRFW_L3_U2;
gstLine_3_IO.arrDS_Unit[2].stIN.iuDigital_IN.4 := giSBS_L3_U2;
gstLine_3_IO.arrDS_Unit[2].stIN.iuDigital_IN.5 := giFCA_L3_U2;
gstLine_3_IO.arrDS_Unit[2].stIN.iuDigital_IN.6 := _bDummy;
gstLine_3_IO.arrDS_Unit[2].stIN.iuDigital_IN.7 := _bDummy;
gstLine_3_IO.arrDS_Unit[2].stIN.iuDigital_IN.8 := _bDummy;
gstLine_3_IO.arrDS_Unit[2].stIN.iuDigital_IN.9 := _bDummy;
gstLine_3_IO.arrDS_Unit[2].stIN.iuDigital_IN.10 := _bDummy;
gstLine_3_IO.arrDS_Unit[2].stIN.iuDigital_IN.11 := _bDummy;
gstLine_3_IO.arrDS_Unit[2].stIN.iuDigital_IN.12 := _bDummy;
gstLine_3_IO.arrDS_Unit[2].stIN.iuDigital_IN.13 := _bDummy;
gstLine_3_IO.arrDS_Unit[2].stIN.iuDigital_IN.14 := _bDummy;
gstLine_3_IO.arrDS_Unit[2].stIN.iuDigital_IN.15 := _bDummy;

gstLine_3_IO.arrDS_Unit[2].stIN.ifFPR	:= ifFPR_L3_U2;


(* Outputs to downstream *)
(*	Bit 0: 	UST		Unit (Sterilizer/Steritank) Sterile conditions
	Bit 1: 	PAM		Product At Machine
	Bit 2: 	WAM		Water At Machine
	Bit 3: 	CIP		Cleaning In Place
	Bit 4: 	CSB		Clean Steam Barrier *)

goUST_L3_U2 := gstLine_3_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.0;
goPAM_L3_U2 := gstLine_3_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.1;
goWAM_L3_U2 := gstLine_3_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.2;
goCIP_L3_U2 := gstLine_3_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.3;
goCSB_L3_U2 := gstLine_3_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.4;
_outDummy := gstLine_3_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.5;
_outDummy := gstLine_3_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.6;
_outDummy := gstLine_3_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.7;
_outDummy := gstLine_3_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.8;
_outDummy := gstLine_3_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.9;
_outDummy := gstLine_3_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.10;
_outDummy := gstLine_3_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.11;
_outDummy := gstLine_3_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.12;
_outDummy := gstLine_3_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.13;
_outDummy := gstLine_3_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.14;
_outDummy := gstLine_3_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.15;


(*================ Unit 3 ===========================================================================================*)

(* Inputs from downstream *)
(*	Bit 0: 	RFP		Ready For Production
	Bit 1: 	PDS		Product DownStream
	Bit 2: 	SPS		Sterideal Production Stop
	Bit 3: 	RFW		Request For Water
	Bit 4: 	SBS;	Steam Barrier Sterile
	Bit 5: 	FCA		Filler CIP Active *)

gstLine_3_IO.arrDS_Unit[3].stIN.iuDigital_IN.0 := giRFP_L3_U3;
gstLine_3_IO.arrDS_Unit[3].stIN.iuDigital_IN.1 := giPDS_L3_U3;
gstLine_3_IO.arrDS_Unit[3].stIN.iuDigital_IN.2 := giSPS_L3_U3;
gstLine_3_IO.arrDS_Unit[3].stIN.iuDigital_IN.3 := giRFW_L3_U3;
gstLine_3_IO.arrDS_Unit[3].stIN.iuDigital_IN.4 := giSBS_L3_U3;
gstLine_3_IO.arrDS_Unit[3].stIN.iuDigital_IN.5 := giFCA_L3_U3;
gstLine_3_IO.arrDS_Unit[3].stIN.iuDigital_IN.6 := _bDummy;
gstLine_3_IO.arrDS_Unit[3].stIN.iuDigital_IN.7 := _bDummy;
gstLine_3_IO.arrDS_Unit[3].stIN.iuDigital_IN.8 := _bDummy;
gstLine_3_IO.arrDS_Unit[3].stIN.iuDigital_IN.9 := _bDummy;
gstLine_3_IO.arrDS_Unit[3].stIN.iuDigital_IN.10 := _bDummy;
gstLine_3_IO.arrDS_Unit[3].stIN.iuDigital_IN.11 := _bDummy;
gstLine_3_IO.arrDS_Unit[3].stIN.iuDigital_IN.12 := _bDummy;
gstLine_3_IO.arrDS_Unit[3].stIN.iuDigital_IN.13 := _bDummy;
gstLine_3_IO.arrDS_Unit[3].stIN.iuDigital_IN.14 := _bDummy;
gstLine_3_IO.arrDS_Unit[3].stIN.iuDigital_IN.15 := _bDummy;

gstLine_3_IO.arrDS_Unit[3].stIN.ifFPR	:= ifFPR_L3_U3;


(* Outputs to downstream *)
(*	Bit 0: 	UST		Unit (Sterilizer/Steritank) Sterile conditions
	Bit 1: 	PAM		Product At Machine
	Bit 2: 	WAM		Water At Machine
	Bit 3: 	CIP		Cleaning In Place
	Bit 4: 	CSB		Clean Steam Barrier *)

goUST_L3_U3 := gstLine_3_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.0;
goPAM_L3_U3 := gstLine_3_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.1;
goWAM_L3_U3 := gstLine_3_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.2;
goCIP_L3_U3 := gstLine_3_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.3;
goCSB_L3_U3 := gstLine_3_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.4;
_outDummy := gstLine_3_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.5;
_outDummy := gstLine_3_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.6;
_outDummy := gstLine_3_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.7;
_outDummy := gstLine_3_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.8;
_outDummy := gstLine_3_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.9;
_outDummy := gstLine_3_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.10;
_outDummy := gstLine_3_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.11;
_outDummy := gstLine_3_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.12;
_outDummy := gstLine_3_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.13;
_outDummy := gstLine_3_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.14;
_outDummy := gstLine_3_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.15;


(*================ Unit 4 ===========================================================================================*)

(* Inputs from downstream *)
(*	Bit 0: 	RFP		Ready For Production
	Bit 1: 	PDS		Product DownStream
	Bit 2: 	SPS		Sterideal Production Stop
	Bit 3: 	RFW		Request For Water
	Bit 4: 	SBS;	Steam Barrier Sterile
	Bit 5: 	FCA		Filler CIP Active *)

gstLine_3_IO.arrDS_Unit[4].stIN.iuDigital_IN.0 := giRFP_L3_U4;
gstLine_3_IO.arrDS_Unit[4].stIN.iuDigital_IN.1 := giPDS_L3_U4;
gstLine_3_IO.arrDS_Unit[4].stIN.iuDigital_IN.2 := giSPS_L3_U4;
gstLine_3_IO.arrDS_Unit[4].stIN.iuDigital_IN.3 := giRFW_L3_U4;
gstLine_3_IO.arrDS_Unit[4].stIN.iuDigital_IN.4 := giSBS_L3_U4;
gstLine_3_IO.arrDS_Unit[4].stIN.iuDigital_IN.5 := giFCA_L3_U4;
gstLine_3_IO.arrDS_Unit[4].stIN.iuDigital_IN.6 := _bDummy;
gstLine_3_IO.arrDS_Unit[4].stIN.iuDigital_IN.7 := _bDummy;
gstLine_3_IO.arrDS_Unit[4].stIN.iuDigital_IN.8 := _bDummy;
gstLine_3_IO.arrDS_Unit[4].stIN.iuDigital_IN.9 := _bDummy;
gstLine_3_IO.arrDS_Unit[4].stIN.iuDigital_IN.10 := _bDummy;
gstLine_3_IO.arrDS_Unit[4].stIN.iuDigital_IN.11 := _bDummy;
gstLine_3_IO.arrDS_Unit[4].stIN.iuDigital_IN.12 := _bDummy;
gstLine_3_IO.arrDS_Unit[4].stIN.iuDigital_IN.13 := _bDummy;
gstLine_3_IO.arrDS_Unit[4].stIN.iuDigital_IN.14 := _bDummy;
gstLine_3_IO.arrDS_Unit[4].stIN.iuDigital_IN.15 := _bDummy;

gstLine_3_IO.arrDS_Unit[4].stIN.ifFPR	:= ifFPR_L3_U4;


(* Outputs to downstream *)
(*	Bit 0: 	UST		Unit (Sterilizer/Steritank) Sterile conditions
	Bit 1: 	PAM		Product At Machine
	Bit 2: 	WAM		Water At Machine
	Bit 3: 	CIP		Cleaning In Place
	Bit 4: 	CSB		Clean Steam Barrier *)

goUST_L3_U4 := gstLine_3_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.0;
goPAM_L3_U4 := gstLine_3_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.1;
goWAM_L3_U4 := gstLine_3_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.2;
goCIP_L3_U4 := gstLine_3_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.3;
goCSB_L3_U4 := gstLine_3_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.4;
_outDummy := gstLine_3_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.5;
_outDummy := gstLine_3_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.6;
_outDummy := gstLine_3_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.7;
_outDummy := gstLine_3_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.8;
_outDummy := gstLine_3_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.9;
_outDummy := gstLine_3_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.10;
_outDummy := gstLine_3_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.11;
_outDummy := gstLine_3_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.12;
_outDummy := gstLine_3_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.13;
_outDummy := gstLine_3_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.14;
_outDummy := gstLine_3_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.15;


(*================ Unit 5 ===========================================================================================*)

(* Inputs from downstream *)
(*	Bit 0: 	RFP		Ready For Production
	Bit 1: 	PDS		Product DownStream
	Bit 2: 	SPS		Sterideal Production Stop
	Bit 3: 	RFW		Request For Water
	Bit 4: 	SBS;	Steam Barrier Sterile
	Bit 5: 	FCA		Filler CIP Active *)

gstLine_3_IO.arrDS_Unit[5].stIN.iuDigital_IN.0 := giRFP_L3_U5;
gstLine_3_IO.arrDS_Unit[5].stIN.iuDigital_IN.1 := giPDS_L3_U5;
gstLine_3_IO.arrDS_Unit[5].stIN.iuDigital_IN.2 := giSPS_L3_U5;
gstLine_3_IO.arrDS_Unit[5].stIN.iuDigital_IN.3 := giRFW_L3_U5;
gstLine_3_IO.arrDS_Unit[5].stIN.iuDigital_IN.4 := giSBS_L3_U5;
gstLine_3_IO.arrDS_Unit[5].stIN.iuDigital_IN.5 := giFCA_L3_U5;
gstLine_3_IO.arrDS_Unit[5].stIN.iuDigital_IN.6 := _bDummy;
gstLine_3_IO.arrDS_Unit[5].stIN.iuDigital_IN.7 := _bDummy;
gstLine_3_IO.arrDS_Unit[5].stIN.iuDigital_IN.8 := _bDummy;
gstLine_3_IO.arrDS_Unit[5].stIN.iuDigital_IN.9 := _bDummy;
gstLine_3_IO.arrDS_Unit[5].stIN.iuDigital_IN.10 := _bDummy;
gstLine_3_IO.arrDS_Unit[5].stIN.iuDigital_IN.11 := _bDummy;
gstLine_3_IO.arrDS_Unit[5].stIN.iuDigital_IN.12 := _bDummy;
gstLine_3_IO.arrDS_Unit[5].stIN.iuDigital_IN.13 := _bDummy;
gstLine_3_IO.arrDS_Unit[5].stIN.iuDigital_IN.14 := _bDummy;
gstLine_3_IO.arrDS_Unit[5].stIN.iuDigital_IN.15 := _bDummy;

gstLine_3_IO.arrDS_Unit[5].stIN.ifFPR	:= ifFPR_L3_U5;


(* Outputs to downstream *)
(*	Bit 0: 	UST		Unit (Sterilizer/Steritank) Sterile conditions
	Bit 1: 	PAM		Product At Machine
	Bit 2: 	WAM		Water At Machine
	Bit 3: 	CIP		Cleaning In Place
	Bit 4: 	CSB		Clean Steam Barrier *)

goUST_L3_U5 := gstLine_3_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.0;
goPAM_L3_U5 := gstLine_3_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.1;
goWAM_L3_U5 := gstLine_3_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.2;
goCIP_L3_U5 := gstLine_3_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.3;
goCSB_L3_U5 := gstLine_3_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.4;
_outDummy := gstLine_3_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.5;
_outDummy := gstLine_3_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.6;
_outDummy := gstLine_3_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.7;
_outDummy := gstLine_3_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.8;
_outDummy := gstLine_3_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.9;
_outDummy := gstLine_3_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.10;
_outDummy := gstLine_3_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.11;
_outDummy := gstLine_3_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.12;
_outDummy := gstLine_3_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.13;
_outDummy := gstLine_3_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.14;
_outDummy := gstLine_3_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.15;


0   , n � ��           Line_4 /J�W�4  (*================ Unit 1 ===========================================================================================*)

(* Inputs from downstream *)
(*	Bit 0: 	RFP		Ready For Production
	Bit 1: 	PDS		Product DownStream
	Bit 2: 	SPS		Sterideal Production Stop
	Bit 3: 	RFW		Request For Water
	Bit 4: 	SBS;	Steam Barrier Sterile
	Bit 5: 	FCA		Filler CIP Active *)

gstLine_4_IO.arrDS_Unit[1].stIN.iuDigital_IN.0 := giRFP_L4_U1;
gstLine_4_IO.arrDS_Unit[1].stIN.iuDigital_IN.1 := giPDS_L4_U1;
gstLine_4_IO.arrDS_Unit[1].stIN.iuDigital_IN.2 := giSPS_L4_U1;
gstLine_4_IO.arrDS_Unit[1].stIN.iuDigital_IN.3 := giRFW_L4_U1;
gstLine_4_IO.arrDS_Unit[1].stIN.iuDigital_IN.4 := giSBS_L4_U1;
gstLine_4_IO.arrDS_Unit[1].stIN.iuDigital_IN.5 := giFCA_L4_U1;
gstLine_4_IO.arrDS_Unit[1].stIN.iuDigital_IN.6 := _bDummy;
gstLine_4_IO.arrDS_Unit[1].stIN.iuDigital_IN.7 := _bDummy;
gstLine_4_IO.arrDS_Unit[1].stIN.iuDigital_IN.8 := _bDummy;
gstLine_4_IO.arrDS_Unit[1].stIN.iuDigital_IN.9 := _bDummy;
gstLine_4_IO.arrDS_Unit[1].stIN.iuDigital_IN.10 := _bDummy;
gstLine_4_IO.arrDS_Unit[1].stIN.iuDigital_IN.11 := _bDummy;
gstLine_4_IO.arrDS_Unit[1].stIN.iuDigital_IN.12 := _bDummy;
gstLine_4_IO.arrDS_Unit[1].stIN.iuDigital_IN.13 := _bDummy;
gstLine_4_IO.arrDS_Unit[1].stIN.iuDigital_IN.14 := _bDummy;
gstLine_4_IO.arrDS_Unit[1].stIN.iuDigital_IN.15 := _bDummy;

gstLine_4_IO.arrDS_Unit[1].stIN.ifFPR	:= ifFPR_L4_U1;


(* Outputs to downstream *)
(*	Bit 0: 	UST		Unit (Sterilizer/Steritank) Sterile conditions
	Bit 1: 	PAM		Product At Machine
	Bit 2: 	WAM		Water At Machine
	Bit 3: 	CIP		Cleaning In Place
	Bit 4: 	CSB		Clean Steam Barrier *)

goUST_L4_U1 := gstLine_4_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.0;
goPAM_L4_U1 := gstLine_4_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.1;
goWAM_L4_U1 := gstLine_4_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.2;
goCIP_L4_U1 := gstLine_4_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.3;
goCSB_L4_U1 := gstLine_4_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.4;
_outDummy := gstLine_4_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.5;
_outDummy := gstLine_4_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.6;
_outDummy := gstLine_4_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.7;
_outDummy := gstLine_4_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.8;
_outDummy := gstLine_4_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.9;
_outDummy := gstLine_4_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.10;
_outDummy := gstLine_4_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.11;
_outDummy := gstLine_4_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.12;
_outDummy := gstLine_4_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.13;
_outDummy := gstLine_4_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.14;
_outDummy := gstLine_4_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.15;


(*================ Unit 2 ===========================================================================================*)

(* Inputs from downstream *)
(*	Bit 0: 	RFP		Ready For Production
	Bit 1: 	PDS		Product DownStream
	Bit 2: 	SPS		Sterideal Production Stop
	Bit 3: 	RFW		Request For Water
	Bit 4: 	SBS;	Steam Barrier Sterile
	Bit 5: 	FCA		Filler CIP Active *)

gstLine_4_IO.arrDS_Unit[2].stIN.iuDigital_IN.0 := giRFP_L4_U2;
gstLine_4_IO.arrDS_Unit[2].stIN.iuDigital_IN.1 := giPDS_L4_U2;
gstLine_4_IO.arrDS_Unit[2].stIN.iuDigital_IN.2 := giSPS_L4_U2;
gstLine_4_IO.arrDS_Unit[2].stIN.iuDigital_IN.3 := giRFW_L4_U2;
gstLine_4_IO.arrDS_Unit[2].stIN.iuDigital_IN.4 := giSBS_L4_U2;
gstLine_4_IO.arrDS_Unit[2].stIN.iuDigital_IN.5 := giFCA_L4_U2;
gstLine_4_IO.arrDS_Unit[2].stIN.iuDigital_IN.6 := _bDummy;
gstLine_4_IO.arrDS_Unit[2].stIN.iuDigital_IN.7 := _bDummy;
gstLine_4_IO.arrDS_Unit[2].stIN.iuDigital_IN.8 := _bDummy;
gstLine_4_IO.arrDS_Unit[2].stIN.iuDigital_IN.9 := _bDummy;
gstLine_4_IO.arrDS_Unit[2].stIN.iuDigital_IN.10 := _bDummy;
gstLine_4_IO.arrDS_Unit[2].stIN.iuDigital_IN.11 := _bDummy;
gstLine_4_IO.arrDS_Unit[2].stIN.iuDigital_IN.12 := _bDummy;
gstLine_4_IO.arrDS_Unit[2].stIN.iuDigital_IN.13 := _bDummy;
gstLine_4_IO.arrDS_Unit[2].stIN.iuDigital_IN.14 := _bDummy;
gstLine_4_IO.arrDS_Unit[2].stIN.iuDigital_IN.15 := _bDummy;

gstLine_4_IO.arrDS_Unit[2].stIN.ifFPR	:= ifFPR_L4_U2;


(* Outputs to downstream *)
(*	Bit 0: 	UST		Unit (Sterilizer/Steritank) Sterile conditions
	Bit 1: 	PAM		Product At Machine
	Bit 2: 	WAM		Water At Machine
	Bit 3: 	CIP		Cleaning In Place
	Bit 4: 	CSB		Clean Steam Barrier *)

goUST_L4_U2 := gstLine_4_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.0;
goPAM_L4_U2 := gstLine_4_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.1;
goWAM_L4_U2 := gstLine_4_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.2;
goCIP_L4_U2 := gstLine_4_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.3;
goCSB_L4_U2 := gstLine_4_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.4;
_outDummy := gstLine_4_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.5;
_outDummy := gstLine_4_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.6;
_outDummy := gstLine_4_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.7;
_outDummy := gstLine_4_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.8;
_outDummy := gstLine_4_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.9;
_outDummy := gstLine_4_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.10;
_outDummy := gstLine_4_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.11;
_outDummy := gstLine_4_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.12;
_outDummy := gstLine_4_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.13;
_outDummy := gstLine_4_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.14;
_outDummy := gstLine_4_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.15;


(*================ Unit 3 ===========================================================================================*)

(* Inputs from downstream *)
(*	Bit 0: 	RFP		Ready For Production
	Bit 1: 	PDS		Product DownStream
	Bit 2: 	SPS		Sterideal Production Stop
	Bit 3: 	RFW		Request For Water
	Bit 4: 	SBS;	Steam Barrier Sterile
	Bit 5: 	FCA		Filler CIP Active *)

gstLine_4_IO.arrDS_Unit[3].stIN.iuDigital_IN.0 := giRFP_L4_U3;
gstLine_4_IO.arrDS_Unit[3].stIN.iuDigital_IN.1 := giPDS_L4_U3;
gstLine_4_IO.arrDS_Unit[3].stIN.iuDigital_IN.2 := giSPS_L4_U3;
gstLine_4_IO.arrDS_Unit[3].stIN.iuDigital_IN.3 := giRFW_L4_U3;
gstLine_4_IO.arrDS_Unit[3].stIN.iuDigital_IN.4 := giSBS_L4_U3;
gstLine_4_IO.arrDS_Unit[3].stIN.iuDigital_IN.5 := giFCA_L4_U3;
gstLine_4_IO.arrDS_Unit[3].stIN.iuDigital_IN.6 := _bDummy;
gstLine_4_IO.arrDS_Unit[3].stIN.iuDigital_IN.7 := _bDummy;
gstLine_4_IO.arrDS_Unit[3].stIN.iuDigital_IN.8 := _bDummy;
gstLine_4_IO.arrDS_Unit[3].stIN.iuDigital_IN.9 := _bDummy;
gstLine_4_IO.arrDS_Unit[3].stIN.iuDigital_IN.10 := _bDummy;
gstLine_4_IO.arrDS_Unit[3].stIN.iuDigital_IN.11 := _bDummy;
gstLine_4_IO.arrDS_Unit[3].stIN.iuDigital_IN.12 := _bDummy;
gstLine_4_IO.arrDS_Unit[3].stIN.iuDigital_IN.13 := _bDummy;
gstLine_4_IO.arrDS_Unit[3].stIN.iuDigital_IN.14 := _bDummy;
gstLine_4_IO.arrDS_Unit[3].stIN.iuDigital_IN.15 := _bDummy;

gstLine_4_IO.arrDS_Unit[3].stIN.ifFPR	:= ifFPR_L4_U3;


(* Outputs to downstream *)
(*	Bit 0: 	UST		Unit (Sterilizer/Steritank) Sterile conditions
	Bit 1: 	PAM		Product At Machine
	Bit 2: 	WAM		Water At Machine
	Bit 3: 	CIP		Cleaning In Place
	Bit 4: 	CSB		Clean Steam Barrier *)

goUST_L4_U3 := gstLine_4_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.0;
goPAM_L4_U3 := gstLine_4_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.1;
goWAM_L4_U3 := gstLine_4_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.2;
goCIP_L4_U3 := gstLine_4_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.3;
goCSB_L4_U3 := gstLine_4_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.4;
_outDummy := gstLine_4_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.5;
_outDummy := gstLine_4_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.6;
_outDummy := gstLine_4_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.7;
_outDummy := gstLine_4_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.8;
_outDummy := gstLine_4_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.9;
_outDummy := gstLine_4_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.10;
_outDummy := gstLine_4_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.11;
_outDummy := gstLine_4_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.12;
_outDummy := gstLine_4_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.13;
_outDummy := gstLine_4_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.14;
_outDummy := gstLine_4_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.15;


(*================ Unit 4 ===========================================================================================*)

(* Inputs from downstream *)
(*	Bit 0: 	RFP		Ready For Production
	Bit 1: 	PDS		Product DownStream
	Bit 2: 	SPS		Sterideal Production Stop
	Bit 3: 	RFW		Request For Water
	Bit 4: 	SBS;	Steam Barrier Sterile
	Bit 5: 	FCA		Filler CIP Active *)

gstLine_4_IO.arrDS_Unit[4].stIN.iuDigital_IN.0 := giRFP_L4_U4;
gstLine_4_IO.arrDS_Unit[4].stIN.iuDigital_IN.1 := giPDS_L4_U4;
gstLine_4_IO.arrDS_Unit[4].stIN.iuDigital_IN.2 := giSPS_L4_U4;
gstLine_4_IO.arrDS_Unit[4].stIN.iuDigital_IN.3 := giRFW_L4_U4;
gstLine_4_IO.arrDS_Unit[4].stIN.iuDigital_IN.4 := giSBS_L4_U4;
gstLine_4_IO.arrDS_Unit[4].stIN.iuDigital_IN.5 := giFCA_L4_U4;
gstLine_4_IO.arrDS_Unit[4].stIN.iuDigital_IN.6 := _bDummy;
gstLine_4_IO.arrDS_Unit[4].stIN.iuDigital_IN.7 := _bDummy;
gstLine_4_IO.arrDS_Unit[4].stIN.iuDigital_IN.8 := _bDummy;
gstLine_4_IO.arrDS_Unit[4].stIN.iuDigital_IN.9 := _bDummy;
gstLine_4_IO.arrDS_Unit[4].stIN.iuDigital_IN.10 := _bDummy;
gstLine_4_IO.arrDS_Unit[4].stIN.iuDigital_IN.11 := _bDummy;
gstLine_4_IO.arrDS_Unit[4].stIN.iuDigital_IN.12 := _bDummy;
gstLine_4_IO.arrDS_Unit[4].stIN.iuDigital_IN.13 := _bDummy;
gstLine_4_IO.arrDS_Unit[4].stIN.iuDigital_IN.14 := _bDummy;
gstLine_4_IO.arrDS_Unit[4].stIN.iuDigital_IN.15 := _bDummy;

gstLine_4_IO.arrDS_Unit[4].stIN.ifFPR	:= ifFPR_L4_U4;


(* Outputs to downstream *)
(*	Bit 0: 	UST		Unit (Sterilizer/Steritank) Sterile conditions
	Bit 1: 	PAM		Product At Machine
	Bit 2: 	WAM		Water At Machine
	Bit 3: 	CIP		Cleaning In Place
	Bit 4: 	CSB		Clean Steam Barrier *)

goUST_L4_U4 := gstLine_4_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.0;
goPAM_L4_U4 := gstLine_4_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.1;
goWAM_L4_U4 := gstLine_4_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.2;
goCIP_L4_U4 := gstLine_4_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.3;
goCSB_L4_U4 := gstLine_4_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.4;
_outDummy := gstLine_4_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.5;
_outDummy := gstLine_4_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.6;
_outDummy := gstLine_4_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.7;
_outDummy := gstLine_4_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.8;
_outDummy := gstLine_4_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.9;
_outDummy := gstLine_4_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.10;
_outDummy := gstLine_4_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.11;
_outDummy := gstLine_4_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.12;
_outDummy := gstLine_4_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.13;
_outDummy := gstLine_4_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.14;
_outDummy := gstLine_4_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.15;


(*================ Unit 5 ===========================================================================================*)

(* Inputs from downstream *)
(*	Bit 0: 	RFP		Ready For Production
	Bit 1: 	PDS		Product DownStream
	Bit 2: 	SPS		Sterideal Production Stop
	Bit 3: 	RFW		Request For Water
	Bit 4: 	SBS;	Steam Barrier Sterile
	Bit 5: 	FCA		Filler CIP Active *)

gstLine_4_IO.arrDS_Unit[5].stIN.iuDigital_IN.0 := giRFP_L4_U5;
gstLine_4_IO.arrDS_Unit[5].stIN.iuDigital_IN.1 := giPDS_L4_U5;
gstLine_4_IO.arrDS_Unit[5].stIN.iuDigital_IN.2 := giSPS_L4_U5;
gstLine_4_IO.arrDS_Unit[5].stIN.iuDigital_IN.3 := giRFW_L4_U5;
gstLine_4_IO.arrDS_Unit[5].stIN.iuDigital_IN.4 := giSBS_L4_U5;
gstLine_4_IO.arrDS_Unit[5].stIN.iuDigital_IN.5 := giFCA_L4_U5;
gstLine_4_IO.arrDS_Unit[5].stIN.iuDigital_IN.6 := _bDummy;
gstLine_4_IO.arrDS_Unit[5].stIN.iuDigital_IN.7 := _bDummy;
gstLine_4_IO.arrDS_Unit[5].stIN.iuDigital_IN.8 := _bDummy;
gstLine_4_IO.arrDS_Unit[5].stIN.iuDigital_IN.9 := _bDummy;
gstLine_4_IO.arrDS_Unit[5].stIN.iuDigital_IN.10 := _bDummy;
gstLine_4_IO.arrDS_Unit[5].stIN.iuDigital_IN.11 := _bDummy;
gstLine_4_IO.arrDS_Unit[5].stIN.iuDigital_IN.12 := _bDummy;
gstLine_4_IO.arrDS_Unit[5].stIN.iuDigital_IN.13 := _bDummy;
gstLine_4_IO.arrDS_Unit[5].stIN.iuDigital_IN.14 := _bDummy;
gstLine_4_IO.arrDS_Unit[5].stIN.iuDigital_IN.15 := _bDummy;

gstLine_4_IO.arrDS_Unit[5].stIN.ifFPR	:= ifFPR_L4_U5;


(* Outputs to downstream *)
(*	Bit 0: 	UST		Unit (Sterilizer/Steritank) Sterile conditions
	Bit 1: 	PAM		Product At Machine
	Bit 2: 	WAM		Water At Machine
	Bit 3: 	CIP		Cleaning In Place
	Bit 4: 	CSB		Clean Steam Barrier *)

goUST_L4_U5 := gstLine_4_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.0;
goPAM_L4_U5 := gstLine_4_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.1;
goWAM_L4_U5 := gstLine_4_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.2;
goCIP_L4_U5 := gstLine_4_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.3;
goCSB_L4_U5 := gstLine_4_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.4;
_outDummy := gstLine_4_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.5;
_outDummy := gstLine_4_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.6;
_outDummy := gstLine_4_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.7;
_outDummy := gstLine_4_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.8;
_outDummy := gstLine_4_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.9;
_outDummy := gstLine_4_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.10;
_outDummy := gstLine_4_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.11;
_outDummy := gstLine_4_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.12;
_outDummy := gstLine_4_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.13;
_outDummy := gstLine_4_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.14;
_outDummy := gstLine_4_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.15;


7   , � � �           Line_5 /J�W�4  (*================ Unit 1 ===========================================================================================*)

(* Inputs from downstream *)
(*	Bit 0: 	RFP		Ready For Production
	Bit 1: 	PDS		Product DownStream
	Bit 2: 	SPS		Sterideal Production Stop
	Bit 3: 	RFW		Request For Water
	Bit 4: 	SBS;	Steam Barrier Sterile
	Bit 5: 	FCA		Filler CIP Active *)

gstLine_5_IO.arrDS_Unit[1].stIN.iuDigital_IN.0 := giRFP_L5_U1;
gstLine_5_IO.arrDS_Unit[1].stIN.iuDigital_IN.1 := giPDS_L5_U1;
gstLine_5_IO.arrDS_Unit[1].stIN.iuDigital_IN.2 := giSPS_L5_U1;
gstLine_5_IO.arrDS_Unit[1].stIN.iuDigital_IN.3 := giRFW_L5_U1;
gstLine_5_IO.arrDS_Unit[1].stIN.iuDigital_IN.4 := giSBS_L5_U1;
gstLine_5_IO.arrDS_Unit[1].stIN.iuDigital_IN.5 := giFCA_L5_U1;
gstLine_5_IO.arrDS_Unit[1].stIN.iuDigital_IN.6 := _bDummy;
gstLine_5_IO.arrDS_Unit[1].stIN.iuDigital_IN.7 := _bDummy;
gstLine_5_IO.arrDS_Unit[1].stIN.iuDigital_IN.8 := _bDummy;
gstLine_5_IO.arrDS_Unit[1].stIN.iuDigital_IN.9 := _bDummy;
gstLine_5_IO.arrDS_Unit[1].stIN.iuDigital_IN.10 := _bDummy;
gstLine_5_IO.arrDS_Unit[1].stIN.iuDigital_IN.11 := _bDummy;
gstLine_5_IO.arrDS_Unit[1].stIN.iuDigital_IN.12 := _bDummy;
gstLine_5_IO.arrDS_Unit[1].stIN.iuDigital_IN.13 := _bDummy;
gstLine_5_IO.arrDS_Unit[1].stIN.iuDigital_IN.14 := _bDummy;
gstLine_5_IO.arrDS_Unit[1].stIN.iuDigital_IN.15 := _bDummy;

gstLine_5_IO.arrDS_Unit[1].stIN.ifFPR	:= ifFPR_L5_U1;


(* Outputs to downstream *)
(*	Bit 0: 	UST		Unit (Sterilizer/Steritank) Sterile conditions
	Bit 1: 	PAM		Product At Machine
	Bit 2: 	WAM		Water At Machine
	Bit 3: 	CIP		Cleaning In Place
	Bit 4: 	CSB		Clean Steam Barrier *)

goUST_L5_U1 := gstLine_5_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.0;
goPAM_L5_U1 := gstLine_5_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.1;
goWAM_L5_U1 := gstLine_5_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.2;
goCIP_L5_U1 := gstLine_5_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.3;
goCSB_L5_U1 := gstLine_5_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.4;
_outDummy := gstLine_5_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.5;
_outDummy := gstLine_5_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.6;
_outDummy := gstLine_5_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.7;
_outDummy := gstLine_5_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.8;
_outDummy := gstLine_5_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.9;
_outDummy := gstLine_5_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.10;
_outDummy := gstLine_5_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.11;
_outDummy := gstLine_5_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.12;
_outDummy := gstLine_5_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.13;
_outDummy := gstLine_5_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.14;
_outDummy := gstLine_5_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.15;


(*================ Unit 2 ===========================================================================================*)

(* Inputs from downstream *)
(*	Bit 0: 	RFP		Ready For Production
	Bit 1: 	PDS		Product DownStream
	Bit 2: 	SPS		Sterideal Production Stop
	Bit 3: 	RFW		Request For Water
	Bit 4: 	SBS;	Steam Barrier Sterile
	Bit 5: 	FCA		Filler CIP Active *)

gstLine_5_IO.arrDS_Unit[2].stIN.iuDigital_IN.0 := giRFP_L5_U2;
gstLine_5_IO.arrDS_Unit[2].stIN.iuDigital_IN.1 := giPDS_L5_U2;
gstLine_5_IO.arrDS_Unit[2].stIN.iuDigital_IN.2 := giSPS_L5_U2;
gstLine_5_IO.arrDS_Unit[2].stIN.iuDigital_IN.3 := giRFW_L5_U2;
gstLine_5_IO.arrDS_Unit[2].stIN.iuDigital_IN.4 := giSBS_L5_U2;
gstLine_5_IO.arrDS_Unit[2].stIN.iuDigital_IN.5 := giFCA_L5_U2;
gstLine_5_IO.arrDS_Unit[2].stIN.iuDigital_IN.6 := _bDummy;
gstLine_5_IO.arrDS_Unit[2].stIN.iuDigital_IN.7 := _bDummy;
gstLine_5_IO.arrDS_Unit[2].stIN.iuDigital_IN.8 := _bDummy;
gstLine_5_IO.arrDS_Unit[2].stIN.iuDigital_IN.9 := _bDummy;
gstLine_5_IO.arrDS_Unit[2].stIN.iuDigital_IN.10 := _bDummy;
gstLine_5_IO.arrDS_Unit[2].stIN.iuDigital_IN.11 := _bDummy;
gstLine_5_IO.arrDS_Unit[2].stIN.iuDigital_IN.12 := _bDummy;
gstLine_5_IO.arrDS_Unit[2].stIN.iuDigital_IN.13 := _bDummy;
gstLine_5_IO.arrDS_Unit[2].stIN.iuDigital_IN.14 := _bDummy;
gstLine_5_IO.arrDS_Unit[2].stIN.iuDigital_IN.15 := _bDummy;

gstLine_5_IO.arrDS_Unit[2].stIN.ifFPR	:= ifFPR_L5_U2;


(* Outputs to downstream *)
(*	Bit 0: 	UST		Unit (Sterilizer/Steritank) Sterile conditions
	Bit 1: 	PAM		Product At Machine
	Bit 2: 	WAM		Water At Machine
	Bit 3: 	CIP		Cleaning In Place
	Bit 4: 	CSB		Clean Steam Barrier *)

goUST_L5_U2 := gstLine_5_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.0;
goPAM_L5_U2 := gstLine_5_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.1;
goWAM_L5_U2 := gstLine_5_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.2;
goCIP_L5_U2 := gstLine_5_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.3;
goCSB_L5_U2 := gstLine_5_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.4;
_outDummy := gstLine_5_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.5;
_outDummy := gstLine_5_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.6;
_outDummy := gstLine_5_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.7;
_outDummy := gstLine_5_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.8;
_outDummy := gstLine_5_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.9;
_outDummy := gstLine_5_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.10;
_outDummy := gstLine_5_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.11;
_outDummy := gstLine_5_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.12;
_outDummy := gstLine_5_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.13;
_outDummy := gstLine_5_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.14;
_outDummy := gstLine_5_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.15;


(*================ Unit 3 ===========================================================================================*)

(* Inputs from downstream *)
(*	Bit 0: 	RFP		Ready For Production
	Bit 1: 	PDS		Product DownStream
	Bit 2: 	SPS		Sterideal Production Stop
	Bit 3: 	RFW		Request For Water
	Bit 4: 	SBS;	Steam Barrier Sterile
	Bit 5: 	FCA		Filler CIP Active *)

gstLine_5_IO.arrDS_Unit[3].stIN.iuDigital_IN.0 := giRFP_L5_U3;
gstLine_5_IO.arrDS_Unit[3].stIN.iuDigital_IN.1 := giPDS_L5_U3;
gstLine_5_IO.arrDS_Unit[3].stIN.iuDigital_IN.2 := giSPS_L5_U3;
gstLine_5_IO.arrDS_Unit[3].stIN.iuDigital_IN.3 := giRFW_L5_U3;
gstLine_5_IO.arrDS_Unit[3].stIN.iuDigital_IN.4 := giSBS_L5_U3;
gstLine_5_IO.arrDS_Unit[3].stIN.iuDigital_IN.5 := giFCA_L5_U3;
gstLine_5_IO.arrDS_Unit[3].stIN.iuDigital_IN.6 := _bDummy;
gstLine_5_IO.arrDS_Unit[3].stIN.iuDigital_IN.7 := _bDummy;
gstLine_5_IO.arrDS_Unit[3].stIN.iuDigital_IN.8 := _bDummy;
gstLine_5_IO.arrDS_Unit[3].stIN.iuDigital_IN.9 := _bDummy;
gstLine_5_IO.arrDS_Unit[3].stIN.iuDigital_IN.10 := _bDummy;
gstLine_5_IO.arrDS_Unit[3].stIN.iuDigital_IN.11 := _bDummy;
gstLine_5_IO.arrDS_Unit[3].stIN.iuDigital_IN.12 := _bDummy;
gstLine_5_IO.arrDS_Unit[3].stIN.iuDigital_IN.13 := _bDummy;
gstLine_5_IO.arrDS_Unit[3].stIN.iuDigital_IN.14 := _bDummy;
gstLine_5_IO.arrDS_Unit[3].stIN.iuDigital_IN.15 := _bDummy;

gstLine_5_IO.arrDS_Unit[3].stIN.ifFPR	:= ifFPR_L5_U3;


(* Outputs to downstream *)
(*	Bit 0: 	UST		Unit (Sterilizer/Steritank) Sterile conditions
	Bit 1: 	PAM		Product At Machine
	Bit 2: 	WAM		Water At Machine
	Bit 3: 	CIP		Cleaning In Place
	Bit 4: 	CSB		Clean Steam Barrier *)

goUST_L5_U3 := gstLine_5_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.0;
goPAM_L5_U3 := gstLine_5_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.1;
goWAM_L5_U3 := gstLine_5_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.2;
goCIP_L5_U3 := gstLine_5_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.3;
goCSB_L5_U3 := gstLine_5_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.4;
_outDummy := gstLine_5_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.5;
_outDummy := gstLine_5_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.6;
_outDummy := gstLine_5_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.7;
_outDummy := gstLine_5_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.8;
_outDummy := gstLine_5_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.9;
_outDummy := gstLine_5_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.10;
_outDummy := gstLine_5_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.11;
_outDummy := gstLine_5_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.12;
_outDummy := gstLine_5_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.13;
_outDummy := gstLine_5_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.14;
_outDummy := gstLine_5_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.15;


(*================ Unit 4 ===========================================================================================*)

(* Inputs from downstream *)
(*	Bit 0: 	RFP		Ready For Production
	Bit 1: 	PDS		Product DownStream
	Bit 2: 	SPS		Sterideal Production Stop
	Bit 3: 	RFW		Request For Water
	Bit 4: 	SBS;	Steam Barrier Sterile
	Bit 5: 	FCA		Filler CIP Active *)

gstLine_5_IO.arrDS_Unit[4].stIN.iuDigital_IN.0 := giRFP_L5_U4;
gstLine_5_IO.arrDS_Unit[4].stIN.iuDigital_IN.1 := giPDS_L5_U4;
gstLine_5_IO.arrDS_Unit[4].stIN.iuDigital_IN.2 := giSPS_L5_U4;
gstLine_5_IO.arrDS_Unit[4].stIN.iuDigital_IN.3 := giRFW_L5_U4;
gstLine_5_IO.arrDS_Unit[4].stIN.iuDigital_IN.4 := giSBS_L5_U4;
gstLine_5_IO.arrDS_Unit[4].stIN.iuDigital_IN.5 := giFCA_L5_U4;
gstLine_5_IO.arrDS_Unit[4].stIN.iuDigital_IN.6 := _bDummy;
gstLine_5_IO.arrDS_Unit[4].stIN.iuDigital_IN.7 := _bDummy;
gstLine_5_IO.arrDS_Unit[4].stIN.iuDigital_IN.8 := _bDummy;
gstLine_5_IO.arrDS_Unit[4].stIN.iuDigital_IN.9 := _bDummy;
gstLine_5_IO.arrDS_Unit[4].stIN.iuDigital_IN.10 := _bDummy;
gstLine_5_IO.arrDS_Unit[4].stIN.iuDigital_IN.11 := _bDummy;
gstLine_5_IO.arrDS_Unit[4].stIN.iuDigital_IN.12 := _bDummy;
gstLine_5_IO.arrDS_Unit[4].stIN.iuDigital_IN.13 := _bDummy;
gstLine_5_IO.arrDS_Unit[4].stIN.iuDigital_IN.14 := _bDummy;
gstLine_5_IO.arrDS_Unit[4].stIN.iuDigital_IN.15 := _bDummy;

gstLine_5_IO.arrDS_Unit[4].stIN.ifFPR	:= ifFPR_L5_U4;


(* Outputs to downstream *)
(*	Bit 0: 	UST		Unit (Sterilizer/Steritank) Sterile conditions
	Bit 1: 	PAM		Product At Machine
	Bit 2: 	WAM		Water At Machine
	Bit 3: 	CIP		Cleaning In Place
	Bit 4: 	CSB		Clean Steam Barrier *)

goUST_L5_U4 := gstLine_5_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.0;
goPAM_L5_U4 := gstLine_5_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.1;
goWAM_L5_U4 := gstLine_5_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.2;
goCIP_L5_U4 := gstLine_5_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.3;
goCSB_L5_U4 := gstLine_5_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.4;
_outDummy := gstLine_5_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.5;
_outDummy := gstLine_5_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.6;
_outDummy := gstLine_5_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.7;
_outDummy := gstLine_5_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.8;
_outDummy := gstLine_5_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.9;
_outDummy := gstLine_5_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.10;
_outDummy := gstLine_5_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.11;
_outDummy := gstLine_5_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.12;
_outDummy := gstLine_5_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.13;
_outDummy := gstLine_5_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.14;
_outDummy := gstLine_5_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.15;


(*================ Unit 5 ===========================================================================================*)

(* Inputs from downstream *)
(*	Bit 0: 	RFP		Ready For Production
	Bit 1: 	PDS		Product DownStream
	Bit 2: 	SPS		Sterideal Production Stop
	Bit 3: 	RFW		Request For Water
	Bit 4: 	SBS;	Steam Barrier Sterile
	Bit 5: 	FCA		Filler CIP Active *)

gstLine_5_IO.arrDS_Unit[5].stIN.iuDigital_IN.0 := giRFP_L5_U5;
gstLine_5_IO.arrDS_Unit[5].stIN.iuDigital_IN.1 := giPDS_L5_U5;
gstLine_5_IO.arrDS_Unit[5].stIN.iuDigital_IN.2 := giSPS_L5_U5;
gstLine_5_IO.arrDS_Unit[5].stIN.iuDigital_IN.3 := giRFW_L5_U5;
gstLine_5_IO.arrDS_Unit[5].stIN.iuDigital_IN.4 := giSBS_L5_U5;
gstLine_5_IO.arrDS_Unit[5].stIN.iuDigital_IN.5 := giFCA_L5_U5;
gstLine_5_IO.arrDS_Unit[5].stIN.iuDigital_IN.6 := _bDummy;
gstLine_5_IO.arrDS_Unit[5].stIN.iuDigital_IN.7 := _bDummy;
gstLine_5_IO.arrDS_Unit[5].stIN.iuDigital_IN.8 := _bDummy;
gstLine_5_IO.arrDS_Unit[5].stIN.iuDigital_IN.9 := _bDummy;
gstLine_5_IO.arrDS_Unit[5].stIN.iuDigital_IN.10 := _bDummy;
gstLine_5_IO.arrDS_Unit[5].stIN.iuDigital_IN.11 := _bDummy;
gstLine_5_IO.arrDS_Unit[5].stIN.iuDigital_IN.12 := _bDummy;
gstLine_5_IO.arrDS_Unit[5].stIN.iuDigital_IN.13 := _bDummy;
gstLine_5_IO.arrDS_Unit[5].stIN.iuDigital_IN.14 := _bDummy;
gstLine_5_IO.arrDS_Unit[5].stIN.iuDigital_IN.15 := _bDummy;

gstLine_5_IO.arrDS_Unit[5].stIN.ifFPR	:= ifFPR_L5_U5;


(* Outputs to downstream *)
(*	Bit 0: 	UST		Unit (Sterilizer/Steritank) Sterile conditions
	Bit 1: 	PAM		Product At Machine
	Bit 2: 	WAM		Water At Machine
	Bit 3: 	CIP		Cleaning In Place
	Bit 4: 	CSB		Clean Steam Barrier *)

goUST_L5_U5 := gstLine_5_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.0;
goPAM_L5_U5 := gstLine_5_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.1;
goWAM_L5_U5 := gstLine_5_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.2;
goCIP_L5_U5 := gstLine_5_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.3;
goCSB_L5_U5 := gstLine_5_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.4;
_outDummy := gstLine_5_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.5;
_outDummy := gstLine_5_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.6;
_outDummy := gstLine_5_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.7;
_outDummy := gstLine_5_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.8;
_outDummy := gstLine_5_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.9;
_outDummy := gstLine_5_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.10;
_outDummy := gstLine_5_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.11;
_outDummy := gstLine_5_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.12;
_outDummy := gstLine_5_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.13;
_outDummy := gstLine_5_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.14;
_outDummy := gstLine_5_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.15;


8   , � � ��           Line_6 /J�W�4  (*================ Unit 1 ===========================================================================================*)

(* Inputs from downstream *)
(*	Bit 0: 	RFP		Ready For Production
	Bit 1: 	PDS		Product DownStream
	Bit 2: 	SPS		Sterideal Production Stop
	Bit 3: 	RFW		Request For Water
	Bit 4: 	SBS;	Steam Barrier Sterile
	Bit 5: 	FCA		Filler CIP Active *)

gstLine_6_IO.arrDS_Unit[1].stIN.iuDigital_IN.0 := giRFP_L6_U1;
gstLine_6_IO.arrDS_Unit[1].stIN.iuDigital_IN.1 := giPDS_L6_U1;
gstLine_6_IO.arrDS_Unit[1].stIN.iuDigital_IN.2 := giSPS_L6_U1;
gstLine_6_IO.arrDS_Unit[1].stIN.iuDigital_IN.3 := giRFW_L6_U1;
gstLine_6_IO.arrDS_Unit[1].stIN.iuDigital_IN.4 := giSBS_L6_U1;
gstLine_6_IO.arrDS_Unit[1].stIN.iuDigital_IN.5 := giFCA_L6_U1;
gstLine_6_IO.arrDS_Unit[1].stIN.iuDigital_IN.6 := _bDummy;
gstLine_6_IO.arrDS_Unit[1].stIN.iuDigital_IN.7 := _bDummy;
gstLine_6_IO.arrDS_Unit[1].stIN.iuDigital_IN.8 := _bDummy;
gstLine_6_IO.arrDS_Unit[1].stIN.iuDigital_IN.9 := _bDummy;
gstLine_6_IO.arrDS_Unit[1].stIN.iuDigital_IN.10 := _bDummy;
gstLine_6_IO.arrDS_Unit[1].stIN.iuDigital_IN.11 := _bDummy;
gstLine_6_IO.arrDS_Unit[1].stIN.iuDigital_IN.12 := _bDummy;
gstLine_6_IO.arrDS_Unit[1].stIN.iuDigital_IN.13 := _bDummy;
gstLine_6_IO.arrDS_Unit[1].stIN.iuDigital_IN.14 := _bDummy;
gstLine_6_IO.arrDS_Unit[1].stIN.iuDigital_IN.15 := _bDummy;

gstLine_6_IO.arrDS_Unit[1].stIN.ifFPR	:= ifFPR_L6_U1;


(* Outputs to downstream *)
(*	Bit 0: 	UST		Unit (Sterilizer/Steritank) Sterile conditions
	Bit 1: 	PAM		Product At Machine
	Bit 2: 	WAM		Water At Machine
	Bit 3: 	CIP		Cleaning In Place
	Bit 4: 	CSB		Clean Steam Barrier *)

goUST_L6_U1 := gstLine_6_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.0;
goPAM_L6_U1 := gstLine_6_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.1;
goWAM_L6_U1 := gstLine_6_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.2;
goCIP_L6_U1 := gstLine_6_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.3;
goCSB_L6_U1 := gstLine_6_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.4;
_outDummy := gstLine_6_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.5;
_outDummy := gstLine_6_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.6;
_outDummy := gstLine_6_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.7;
_outDummy := gstLine_6_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.8;
_outDummy := gstLine_6_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.9;
_outDummy := gstLine_6_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.10;
_outDummy := gstLine_6_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.11;
_outDummy := gstLine_6_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.12;
_outDummy := gstLine_6_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.13;
_outDummy := gstLine_6_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.14;
_outDummy := gstLine_6_IO.arrDS_Unit[1].stOUT.ouDigital_OUT.15;


(*================ Unit 2 ===========================================================================================*)

(* Inputs from downstream *)
(*	Bit 0: 	RFP		Ready For Production
	Bit 1: 	PDS		Product DownStream
	Bit 2: 	SPS		Sterideal Production Stop
	Bit 3: 	RFW		Request For Water
	Bit 4: 	SBS;	Steam Barrier Sterile
	Bit 5: 	FCA		Filler CIP Active *)

gstLine_6_IO.arrDS_Unit[2].stIN.iuDigital_IN.0 := giRFP_L6_U2;
gstLine_6_IO.arrDS_Unit[2].stIN.iuDigital_IN.1 := giPDS_L6_U2;
gstLine_6_IO.arrDS_Unit[2].stIN.iuDigital_IN.2 := giSPS_L6_U2;
gstLine_6_IO.arrDS_Unit[2].stIN.iuDigital_IN.3 := giRFW_L6_U2;
gstLine_6_IO.arrDS_Unit[2].stIN.iuDigital_IN.4 := giSBS_L6_U2;
gstLine_6_IO.arrDS_Unit[2].stIN.iuDigital_IN.5 := giFCA_L6_U2;
gstLine_6_IO.arrDS_Unit[2].stIN.iuDigital_IN.6 := _bDummy;
gstLine_6_IO.arrDS_Unit[2].stIN.iuDigital_IN.7 := _bDummy;
gstLine_6_IO.arrDS_Unit[2].stIN.iuDigital_IN.8 := _bDummy;
gstLine_6_IO.arrDS_Unit[2].stIN.iuDigital_IN.9 := _bDummy;
gstLine_6_IO.arrDS_Unit[2].stIN.iuDigital_IN.10 := _bDummy;
gstLine_6_IO.arrDS_Unit[2].stIN.iuDigital_IN.11 := _bDummy;
gstLine_6_IO.arrDS_Unit[2].stIN.iuDigital_IN.12 := _bDummy;
gstLine_6_IO.arrDS_Unit[2].stIN.iuDigital_IN.13 := _bDummy;
gstLine_6_IO.arrDS_Unit[2].stIN.iuDigital_IN.14 := _bDummy;
gstLine_6_IO.arrDS_Unit[2].stIN.iuDigital_IN.15 := _bDummy;

gstLine_6_IO.arrDS_Unit[2].stIN.ifFPR	:= ifFPR_L6_U2;


(* Outputs to downstream *)
(*	Bit 0: 	UST		Unit (Sterilizer/Steritank) Sterile conditions
	Bit 1: 	PAM		Product At Machine
	Bit 2: 	WAM		Water At Machine
	Bit 3: 	CIP		Cleaning In Place
	Bit 4: 	CSB		Clean Steam Barrier *)

goUST_L6_U2 := gstLine_6_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.0;
goPAM_L6_U2 := gstLine_6_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.1;
goWAM_L6_U2 := gstLine_6_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.2;
goCIP_L6_U2 := gstLine_6_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.3;
goCSB_L6_U2 := gstLine_6_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.4;
_outDummy := gstLine_6_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.5;
_outDummy := gstLine_6_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.6;
_outDummy := gstLine_6_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.7;
_outDummy := gstLine_6_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.8;
_outDummy := gstLine_6_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.9;
_outDummy := gstLine_6_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.10;
_outDummy := gstLine_6_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.11;
_outDummy := gstLine_6_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.12;
_outDummy := gstLine_6_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.13;
_outDummy := gstLine_6_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.14;
_outDummy := gstLine_6_IO.arrDS_Unit[2].stOUT.ouDigital_OUT.15;


(*================ Unit 3 ===========================================================================================*)

(* Inputs from downstream *)
(*	Bit 0: 	RFP		Ready For Production
	Bit 1: 	PDS		Product DownStream
	Bit 2: 	SPS		Sterideal Production Stop
	Bit 3: 	RFW		Request For Water
	Bit 4: 	SBS;	Steam Barrier Sterile
	Bit 5: 	FCA		Filler CIP Active *)

gstLine_6_IO.arrDS_Unit[3].stIN.iuDigital_IN.0 := giRFP_L6_U3;
gstLine_6_IO.arrDS_Unit[3].stIN.iuDigital_IN.1 := giPDS_L6_U3;
gstLine_6_IO.arrDS_Unit[3].stIN.iuDigital_IN.2 := giSPS_L6_U3;
gstLine_6_IO.arrDS_Unit[3].stIN.iuDigital_IN.3 := giRFW_L6_U3;
gstLine_6_IO.arrDS_Unit[3].stIN.iuDigital_IN.4 := giSBS_L6_U3;
gstLine_6_IO.arrDS_Unit[3].stIN.iuDigital_IN.5 := giFCA_L6_U3;
gstLine_6_IO.arrDS_Unit[3].stIN.iuDigital_IN.6 := _bDummy;
gstLine_6_IO.arrDS_Unit[3].stIN.iuDigital_IN.7 := _bDummy;
gstLine_6_IO.arrDS_Unit[3].stIN.iuDigital_IN.8 := _bDummy;
gstLine_6_IO.arrDS_Unit[3].stIN.iuDigital_IN.9 := _bDummy;
gstLine_6_IO.arrDS_Unit[3].stIN.iuDigital_IN.10 := _bDummy;
gstLine_6_IO.arrDS_Unit[3].stIN.iuDigital_IN.11 := _bDummy;
gstLine_6_IO.arrDS_Unit[3].stIN.iuDigital_IN.12 := _bDummy;
gstLine_6_IO.arrDS_Unit[3].stIN.iuDigital_IN.13 := _bDummy;
gstLine_6_IO.arrDS_Unit[3].stIN.iuDigital_IN.14 := _bDummy;
gstLine_6_IO.arrDS_Unit[3].stIN.iuDigital_IN.15 := _bDummy;

gstLine_6_IO.arrDS_Unit[3].stIN.ifFPR	:= ifFPR_L6_U3;


(* Outputs to downstream *)
(*	Bit 0: 	UST		Unit (Sterilizer/Steritank) Sterile conditions
	Bit 1: 	PAM		Product At Machine
	Bit 2: 	WAM		Water At Machine
	Bit 3: 	CIP		Cleaning In Place
	Bit 4: 	CSB		Clean Steam Barrier *)

goUST_L6_U3 := gstLine_6_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.0;
goPAM_L6_U3 := gstLine_6_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.1;
goWAM_L6_U3 := gstLine_6_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.2;
goCIP_L6_U3 := gstLine_6_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.3;
goCSB_L6_U3 := gstLine_6_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.4;
_outDummy := gstLine_6_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.5;
_outDummy := gstLine_6_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.6;
_outDummy := gstLine_6_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.7;
_outDummy := gstLine_6_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.8;
_outDummy := gstLine_6_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.9;
_outDummy := gstLine_6_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.10;
_outDummy := gstLine_6_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.11;
_outDummy := gstLine_6_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.12;
_outDummy := gstLine_6_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.13;
_outDummy := gstLine_6_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.14;
_outDummy := gstLine_6_IO.arrDS_Unit[3].stOUT.ouDigital_OUT.15;


(*================ Unit 4 ===========================================================================================*)

(* Inputs from downstream *)
(*	Bit 0: 	RFP		Ready For Production
	Bit 1: 	PDS		Product DownStream
	Bit 2: 	SPS		Sterideal Production Stop
	Bit 3: 	RFW		Request For Water
	Bit 4: 	SBS;	Steam Barrier Sterile
	Bit 5: 	FCA		Filler CIP Active *)

gstLine_6_IO.arrDS_Unit[4].stIN.iuDigital_IN.0 := giRFP_L6_U4;
gstLine_6_IO.arrDS_Unit[4].stIN.iuDigital_IN.1 := giPDS_L6_U4;
gstLine_6_IO.arrDS_Unit[4].stIN.iuDigital_IN.2 := giSPS_L6_U4;
gstLine_6_IO.arrDS_Unit[4].stIN.iuDigital_IN.3 := giRFW_L6_U4;
gstLine_6_IO.arrDS_Unit[4].stIN.iuDigital_IN.4 := giSBS_L6_U4;
gstLine_6_IO.arrDS_Unit[4].stIN.iuDigital_IN.5 := giFCA_L6_U4;
gstLine_6_IO.arrDS_Unit[4].stIN.iuDigital_IN.6 := _bDummy;
gstLine_6_IO.arrDS_Unit[4].stIN.iuDigital_IN.7 := _bDummy;
gstLine_6_IO.arrDS_Unit[4].stIN.iuDigital_IN.8 := _bDummy;
gstLine_6_IO.arrDS_Unit[4].stIN.iuDigital_IN.9 := _bDummy;
gstLine_6_IO.arrDS_Unit[4].stIN.iuDigital_IN.10 := _bDummy;
gstLine_6_IO.arrDS_Unit[4].stIN.iuDigital_IN.11 := _bDummy;
gstLine_6_IO.arrDS_Unit[4].stIN.iuDigital_IN.12 := _bDummy;
gstLine_6_IO.arrDS_Unit[4].stIN.iuDigital_IN.13 := _bDummy;
gstLine_6_IO.arrDS_Unit[4].stIN.iuDigital_IN.14 := _bDummy;
gstLine_6_IO.arrDS_Unit[4].stIN.iuDigital_IN.15 := _bDummy;

gstLine_6_IO.arrDS_Unit[4].stIN.ifFPR	:= ifFPR_L6_U4;


(* Outputs to downstream *)
(*	Bit 0: 	UST		Unit (Sterilizer/Steritank) Sterile conditions
	Bit 1: 	PAM		Product At Machine
	Bit 2: 	WAM		Water At Machine
	Bit 3: 	CIP		Cleaning In Place
	Bit 4: 	CSB		Clean Steam Barrier *)

goUST_L6_U4 := gstLine_6_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.0;
goPAM_L6_U4 := gstLine_6_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.1;
goWAM_L6_U4 := gstLine_6_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.2;
goCIP_L6_U4 := gstLine_6_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.3;
goCSB_L6_U4 := gstLine_6_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.4;
_outDummy := gstLine_6_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.5;
_outDummy := gstLine_6_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.6;
_outDummy := gstLine_6_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.7;
_outDummy := gstLine_6_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.8;
_outDummy := gstLine_6_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.9;
_outDummy := gstLine_6_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.10;
_outDummy := gstLine_6_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.11;
_outDummy := gstLine_6_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.12;
_outDummy := gstLine_6_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.13;
_outDummy := gstLine_6_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.14;
_outDummy := gstLine_6_IO.arrDS_Unit[4].stOUT.ouDigital_OUT.15;


(*================ Unit 5 ===========================================================================================*)

(* Inputs from downstream *)
(*	Bit 0: 	RFP		Ready For Production
	Bit 1: 	PDS		Product DownStream
	Bit 2: 	SPS		Sterideal Production Stop
	Bit 3: 	RFW		Request For Water
	Bit 4: 	SBS;	Steam Barrier Sterile
	Bit 5: 	FCA		Filler CIP Active *)

gstLine_6_IO.arrDS_Unit[5].stIN.iuDigital_IN.0 := giRFP_L6_U5;
gstLine_6_IO.arrDS_Unit[5].stIN.iuDigital_IN.1 := giPDS_L6_U5;
gstLine_6_IO.arrDS_Unit[5].stIN.iuDigital_IN.2 := giSPS_L6_U5;
gstLine_6_IO.arrDS_Unit[5].stIN.iuDigital_IN.3 := giRFW_L6_U5;
gstLine_6_IO.arrDS_Unit[5].stIN.iuDigital_IN.4 := giSBS_L6_U5;
gstLine_6_IO.arrDS_Unit[5].stIN.iuDigital_IN.5 := giFCA_L6_U5;
gstLine_6_IO.arrDS_Unit[5].stIN.iuDigital_IN.6 := _bDummy;
gstLine_6_IO.arrDS_Unit[5].stIN.iuDigital_IN.7 := _bDummy;
gstLine_6_IO.arrDS_Unit[5].stIN.iuDigital_IN.8 := _bDummy;
gstLine_6_IO.arrDS_Unit[5].stIN.iuDigital_IN.9 := _bDummy;
gstLine_6_IO.arrDS_Unit[5].stIN.iuDigital_IN.10 := _bDummy;
gstLine_6_IO.arrDS_Unit[5].stIN.iuDigital_IN.11 := _bDummy;
gstLine_6_IO.arrDS_Unit[5].stIN.iuDigital_IN.12 := _bDummy;
gstLine_6_IO.arrDS_Unit[5].stIN.iuDigital_IN.13 := _bDummy;
gstLine_6_IO.arrDS_Unit[5].stIN.iuDigital_IN.14 := _bDummy;
gstLine_6_IO.arrDS_Unit[5].stIN.iuDigital_IN.15 := _bDummy;

gstLine_6_IO.arrDS_Unit[5].stIN.ifFPR	:= ifFPR_L6_U5;


(* Outputs to downstream *)
(*	Bit 0: 	UST		Unit (Sterilizer/Steritank) Sterile conditions
	Bit 1: 	PAM		Product At Machine
	Bit 2: 	WAM		Water At Machine
	Bit 3: 	CIP		Cleaning In Place
	Bit 4: 	CSB		Clean Steam Barrier *)

goUST_L6_U5 := gstLine_6_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.0;
goPAM_L6_U5 := gstLine_6_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.1;
goWAM_L6_U5 := gstLine_6_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.2;
goCIP_L6_U5 := gstLine_6_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.3;
goCSB_L6_U5 := gstLine_6_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.4;
_outDummy := gstLine_6_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.5;
_outDummy := gstLine_6_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.6;
_outDummy := gstLine_6_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.7;
_outDummy := gstLine_6_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.8;
_outDummy := gstLine_6_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.9;
_outDummy := gstLine_6_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.10;
_outDummy := gstLine_6_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.11;
_outDummy := gstLine_6_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.12;
_outDummy := gstLine_6_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.13;
_outDummy := gstLine_6_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.14;
_outDummy := gstLine_6_IO.arrDS_Unit[5].stOUT.ouDigital_OUT.15;


             -   , � � ��           MAIN /J�W	/J�W      tD_O	:T_        �   PROGRAM MAIN
VAR
	fbLineselect	:	FB_LineSelect;
	fbInterComm		:	FB_InterComm;

	_stDSActiveLine_IO	:	ST_DSLine_IO;
	_stUnitSettings		:	ST_UnitSettings;
	_nActiveLineNr		:	INT;

END_VAR      fbLineselectgstLine_1_IOgstLine_2_IOgstLine_3_IOgstLine_4_IOgstLine_5_IOgstLine_6_IOA_stDSActiveLine_IOFB_LineSelect  _stUnitSettings      _nActiveLineNr     fbInterComm_stUnitSettingsA_stDSActiveLine_IOFB_InterComm      d                    ����                   "   STANDARD.LIB 5.6.98 12:03:02 @f�w5      CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @              Global Variables 0 @                                             2                ����������������  
             ����    ����          ����                                POUs               __Stork Lib Standard V00            
   Supporting                 F_Real_To_Uint  2                   F_Uint_To_Real     ��������               FB_InterComm  !                  FB_LineSelect                _Init     '                  IO                Line_1  &                  Line_2  %                  Line_3  +                  Line_4  0                  Line_5  7                  Line_6  8                      MAIN  -   ����           
   Data types               Line_Communication            
   Downstream                 ST_Downstream_IN  #                   ST_Downstream_Out  $                   ST_DSLine_IO  /                   ST_DSUnit_IO  .   ����              HMI                 ST_ControlInfo  *                   ST_HMI  (                  ST_UnitSettings  )   ������������             Visualizations  ����              Global Variables                 Global_Variables                     IO  "                   IO_Line1  3                   IO_Line2  1                   IO_Line3  ,                   IO_Line4  4                   IO_Line5  5                   IO_Line6  6                   IO_ProxLineSelection  ;                   TwinCAT_Configuration  :                   Variable_Configuration  	   ����                                                              W�O                         	   localhost            P      	   localhost            P      	   localhost            P          �]�