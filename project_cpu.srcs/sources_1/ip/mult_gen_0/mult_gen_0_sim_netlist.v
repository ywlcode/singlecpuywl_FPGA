// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat Mar  5 23:08:57 2022
// Host        : LAPTOP-LO6UQ92B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/project/project_cpu/project_cpu.srcs/sources_1/ip/mult_gen_0/mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module mult_gen_0
   (A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [31:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [31:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [31:0]P;

  wire [31:0]A;
  wire [31:0]B;
  wire [31:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_0_mult_gen_v12_0_16 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(1'b1),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "32" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "32" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "0" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "31" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_16" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_gen_0_mult_gen_v12_0_16
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [31:0]A;
  input [31:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [31:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [31:0]A;
  wire [31:0]B;
  wire [31:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_0_mult_gen_v12_0_16_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(1'b1),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
HPMPLvpmoX7LOmPj78BMT9X1rCnPz6PdhVGZQ307N9haGfAdMGVirvGR3e0Glyn2ieoWqXA6qOQL
t0xn28+h0g==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Nxv/BnutRgdmHnLyK7kvDGjm7WGfFKW2mxQ6xUKF14zS4ziz5pSV0ueW4VqAzUyEPsErIAEuyV6F
m5KCqRBB197Q2NbZa7O7tdAqboX6tPAJzbB6u4U/MmNS1AQcSgtfj5srMbdBzDa5pR4V3HrI0MRj
0xhV1BWf725FYPP4av0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F5KGJgEDQsX2btdjtRUlSmNtuyodIhGXEa3/AXv1Y7qgSO8gknBfiqj5HcIaVA9b4npQpDnNcmq+
1ONAqLeLhdOm9TES+GsTAkh/lClvl89bzfqgOV33iqwQHYIHwSsWMRXT9JSUx+YWu+g6xKpT1Ycn
8BCPsq4QUJIqL6W16fheEHB/lkMgnespIWEYJJG6R6zvv2zG8GiU6cG8zHrRjdvAj8kOkhmiMvSd
YjGXJSMfjw7ojCPSUF+nb6WWhUEmoMA/6lgSVaXRm00YHSZ09k7rKTJWSXFSpTmkL2WOsQhNS0ek
jdTK2KF5K6z2YOK4zkfHgZ+fB0KJyANaLLJH/Q==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lFuQXeJ0hi7qnIKAR+37XCSOwp8bGLukonngcICceOVpL87+rxvhP5TyNJ/zXpAWDF0BaRYlGr7d
isPiUStrvUthNyOqCr4vFZyhCdY8n+Mrv3OCvLoLQSarxVXbaKbXb0tPsXJCUdXTrCt9mr5x0Nda
6DAI8FBPlFMAiqnFXnYMwlUiSlkNWUpInuNw7+1eD8kUdckEUV1PDwZ0yjpFqMokMH9oJjN6z0Yy
65D8Tqo288ZMfZQuIimjski+X6EK157XbpyuoZIuYLJ7j6oaATdintgfZpgGzVvhCZtMbx6/SJtR
efW5vLBGiGs7rPBPE2T8fosHGOvmeC9QBSj8Ww==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q8VVvHzTNgU3tZr4+8ia7ylST+kbNPWskONHDOT1dTkB7cHZIAWyzXpQZPuEgk2wJq21PoqmVlG9
t08IYzkfC8vYQ2LRf2Co3SXc7p3gF2OFMC68J9Nf9D+/PXJCJy3QO4H8oO39l6bn8c56K2ARnK0R
mMIALbCWSBDGCWGQmXWZJ+xmDGs1KgTeiSW3bZRftWJ6K8l8BhMit8BLOY2Mi3jJ0WRhN8kKd6JT
D4NU1jTZT6jEtmI7Gnj/AXG6auTqDPHsVQzf+ZzBsLTfw83CFoO70xM997L5cZXlqz8fEDmxezkr
wWxPwJbJeVkRV3tUxlo2Bs2x1uVkXQeNVMI8jg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oUeTLA0HA2uKORUHo1HidNC3lw54gxwlLUkv28qRPv1pz7AEVUbIJ7wsyu2Scju+EkC2Ivi8HbBn
jxkeqRDTAwAbAqIKnY3AdyfojN9Hb8SMLcLnpWLLCpb6E0vwA09r7uqKRZ8wYAgT9CPFvzpQ3zKt
9DTLgQ3rZtFxx2nfCug=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Fayrlym1l14Y48yZ195XboT9ZQmp/mAzUyHby3Y9qJTzDF+m6mRQ/ZbebObo8bu4VAm45JeETPx1
YI4UZNOK4IqKv0BZsAlzUfAYAmqmkmIJYbn2gWUCwXyKX5AoA4ONnlxEHxzZhqtsmEXvxwTEs25/
R7iLzeoMfmwwNHgPNQkteiR4zDlB76CYmgu6EOSUX5Nnitq1oh7qRuU8WqWN7lLfgIC6T7qNHwGD
RPze2yiP06fSG45jPrOn2fvBX9SRbUXjNtiFgmqim4anwJU46v7y3ubit/I6giZhz5PJMZfkDaFX
ag+uCMq4Q8ZEolqMBmjUjat86BdVd4Nmr0yUaA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kIpxh3qIIkWUg8aLJSPKvKhKTPFH7T8fisti5RtNaftS7xh3KDsGLYnF1lYhH2RVXgzbdaVqvtED
5QJazVo6wUFI91xgFeOR5jX+Ny5UBUX2MngsK+UZyZg5+EdtSiDtiJNtQqgjq1Rn+XQCGF3xP80n
7YvuVMbgRHCAfWrWw7ZJ7Y3raRzeIkx+koPFio7XnC+QdRJ0ItO1YtQgF4Sg1Ihr5TH8/RrNn903
kPa+anH9spo3SFCf2Ts11UXAGLdIBmOLMtEAKjjCUbtmjGSeSc0gn2q2I+xRTFcegLevlr/iuLTw
3lFndBAoW40xOiCDjWZ6Rz7J+jZhsRl3D0Bhwg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q0wbHMV4600W6Jl8L3E8I6yPy+x46lZKs4t8sfZKI0Lb9smaQTsy2zs+THz2ad5y3VcM39rMp7qT
2jNLjNoRggopqo6L5M4r0Sx3dHwbiIi2r/ZZ08BYBCgdCXu8hRNtfOT10/sWlAlAR1rQSwybJNo6
addd4dU4tf73sHWEF7RXMcV+zeopjEutaMudSUf27YDvpGtIRi/UkUMQ7CzoQ4t5RdeZSvG/xYwj
xcsLSqNjjjH9hPisffmAU35EH97KbyubvXShxjhdJy5xZANx2WLloinq28VFRivoYuLfr43d0ACk
EfxTq1t5fvAZhrCa3SqE/3FlBdCkmrruW+qbaw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IJ2WllH+/AN6HdZx52LUE6eNuHZSberIjnkGGwyp60RH9Hybb6B8xbdlmSobDFcZCheYmYNFodj8
raEDuPjksuPm6+3yKDZvXLsjLWWHaif24vYOBS1xUEKoRx+GEx0ppOT+c1Oabh/Gyogo36ECCEYe
EgOQTOlRPQMNKV51SDmeTzUKkU9QILw3KnA8vzP6lQ4id+flTmuY9mgWHOQl29TZBWhZYEFYR+1Y
bemHVF36TKVdcEFwOvy2mtIJl398/1YqKqWrne+xZM/2gP19G+8oVKfrhkdeUruIQESdLP2LLzgF
sZV4ZARu7HFynn/v1vm+dMYVNwQ0+aLfndtJyA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17232)
`pragma protect data_block
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
JLwiP2Yq7DHzk1+0xbBB2lFd
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
