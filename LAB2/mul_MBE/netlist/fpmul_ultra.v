/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Fri Nov 20 00:23:21 2020
/////////////////////////////////////////////////////////////


module FPmul ( FP_A, FP_B, clk, FP_Z );
  input [31:0] FP_A;
  input [31:0] FP_B;
  output [31:0] FP_Z;
  input clk;
  wire   SIGN_out_stage1, isINF_stage1, isNaN_stage1, isZ_tab_stage1,
         EXP_neg_stage2, EXP_pos_stage2, SIGN_out_stage2, isNaN_stage2,
         isINF_stage2, isZ_tab_stage2, EXP_neg, EXP_pos, isINF_tab, isNaN,
         isZ_tab, I1_B_SIGN, I1_A_SIGN, I1_isZ_tab_int, I1_isNaN_int,
         I1_isINF_int, I1_SIGN_out_int, I1_I0_N13, I1_I1_N13, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2;
  wire   [7:0] A_EXP;
  wire   [23:0] A_SIG;
  wire   [7:0] B_EXP;
  wire   [24:0] B_SIG;
  wire   [7:0] EXP_in;
  wire   [27:2] SIG_in;
  wire   [7:0] EXP_out_round;
  wire   [27:3] SIG_out_round;
  wire   [22:0] I1_B_SIG_int;
  wire   [7:0] I1_B_EXP_int;
  wire   [22:0] I1_A_SIG_int;
  wire   [7:0] I1_A_EXP_int;
  wire   [27:3] I3_SIG_out;
  wire   [7:0] I3_EXP_out;
  wire   [31:0] I4_FP;

  FPmul_stage2 I2 ( .A_EXP(A_EXP), .A_SIG({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, A_SIG}), .B_EXP(B_EXP), .B_SIG({1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, B_SIG[23:0]}), .SIGN_out_stage1(
        SIGN_out_stage1), .clk(clk), .isINF_stage1(isINF_stage1), 
        .isNaN_stage1(isNaN_stage1), .isZ_tab_stage1(isZ_tab_stage1), .EXP_in(
        EXP_in), .EXP_neg_stage2(EXP_neg_stage2), .EXP_pos_stage2(
        EXP_pos_stage2), .SIGN_out_stage2(SIGN_out_stage2), .SIG_in({SIG_in, 
        SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2}), .isNaN_stage2(
        isNaN_stage2), .isINF_stage2(isINF_stage2), .isZ_tab_stage2(
        isZ_tab_stage2) );
  DFF_X1 R1_Q_reg_0_ ( .D(FP_A[0]), .CK(clk), .Q(I1_A_SIG_int[0]) );
  DFF_X1 R1_Q_reg_1_ ( .D(FP_A[1]), .CK(clk), .Q(I1_A_SIG_int[1]) );
  DFF_X1 R1_Q_reg_2_ ( .D(FP_A[2]), .CK(clk), .Q(I1_A_SIG_int[2]) );
  DFF_X1 R1_Q_reg_3_ ( .D(FP_A[3]), .CK(clk), .Q(I1_A_SIG_int[3]) );
  DFF_X1 R1_Q_reg_4_ ( .D(FP_A[4]), .CK(clk), .Q(I1_A_SIG_int[4]) );
  DFF_X1 R1_Q_reg_5_ ( .D(FP_A[5]), .CK(clk), .Q(I1_A_SIG_int[5]) );
  DFF_X1 R1_Q_reg_6_ ( .D(FP_A[6]), .CK(clk), .Q(I1_A_SIG_int[6]) );
  DFF_X1 R1_Q_reg_7_ ( .D(FP_A[7]), .CK(clk), .Q(I1_A_SIG_int[7]) );
  DFF_X1 R1_Q_reg_8_ ( .D(FP_A[8]), .CK(clk), .Q(I1_A_SIG_int[8]) );
  DFF_X1 R1_Q_reg_9_ ( .D(FP_A[9]), .CK(clk), .Q(I1_A_SIG_int[9]) );
  DFF_X1 R1_Q_reg_10_ ( .D(FP_A[10]), .CK(clk), .Q(I1_A_SIG_int[10]) );
  DFF_X1 R1_Q_reg_11_ ( .D(FP_A[11]), .CK(clk), .Q(I1_A_SIG_int[11]) );
  DFF_X1 R1_Q_reg_12_ ( .D(FP_A[12]), .CK(clk), .Q(I1_A_SIG_int[12]) );
  DFF_X1 R1_Q_reg_13_ ( .D(FP_A[13]), .CK(clk), .Q(I1_A_SIG_int[13]) );
  DFF_X1 R1_Q_reg_14_ ( .D(FP_A[14]), .CK(clk), .Q(I1_A_SIG_int[14]) );
  DFF_X1 R1_Q_reg_15_ ( .D(FP_A[15]), .CK(clk), .Q(I1_A_SIG_int[15]) );
  DFF_X1 R1_Q_reg_16_ ( .D(FP_A[16]), .CK(clk), .Q(I1_A_SIG_int[16]) );
  DFF_X1 R1_Q_reg_17_ ( .D(FP_A[17]), .CK(clk), .Q(I1_A_SIG_int[17]) );
  DFF_X1 R1_Q_reg_18_ ( .D(FP_A[18]), .CK(clk), .Q(I1_A_SIG_int[18]) );
  DFF_X1 R1_Q_reg_19_ ( .D(FP_A[19]), .CK(clk), .Q(I1_A_SIG_int[19]) );
  DFF_X1 R1_Q_reg_20_ ( .D(FP_A[20]), .CK(clk), .Q(I1_A_SIG_int[20]) );
  DFF_X1 R1_Q_reg_21_ ( .D(FP_A[21]), .CK(clk), .Q(I1_A_SIG_int[21]) );
  DFF_X1 R1_Q_reg_22_ ( .D(FP_A[22]), .CK(clk), .Q(I1_A_SIG_int[22]) );
  DFF_X1 R1_Q_reg_23_ ( .D(FP_A[23]), .CK(clk), .Q(I1_A_EXP_int[0]) );
  DFF_X1 R1_Q_reg_24_ ( .D(FP_A[24]), .CK(clk), .Q(I1_A_EXP_int[1]) );
  DFF_X1 R1_Q_reg_25_ ( .D(FP_A[25]), .CK(clk), .Q(I1_A_EXP_int[2]) );
  DFF_X1 R1_Q_reg_26_ ( .D(FP_A[26]), .CK(clk), .Q(I1_A_EXP_int[3]) );
  DFF_X1 R1_Q_reg_27_ ( .D(FP_A[27]), .CK(clk), .Q(I1_A_EXP_int[4]) );
  DFF_X1 R1_Q_reg_28_ ( .D(FP_A[28]), .CK(clk), .Q(I1_A_EXP_int[5]) );
  DFF_X1 R1_Q_reg_29_ ( .D(FP_A[29]), .CK(clk), .Q(I1_A_EXP_int[6]) );
  DFF_X1 R1_Q_reg_30_ ( .D(FP_A[30]), .CK(clk), .Q(I1_A_EXP_int[7]) );
  DFF_X1 R1_Q_reg_31_ ( .D(FP_A[31]), .CK(clk), .Q(I1_A_SIGN) );
  DFF_X1 R2_Q_reg_0_ ( .D(FP_B[0]), .CK(clk), .Q(I1_B_SIG_int[0]) );
  DFF_X1 R2_Q_reg_1_ ( .D(FP_B[1]), .CK(clk), .Q(I1_B_SIG_int[1]) );
  DFF_X1 R2_Q_reg_2_ ( .D(FP_B[2]), .CK(clk), .Q(I1_B_SIG_int[2]) );
  DFF_X1 R2_Q_reg_3_ ( .D(FP_B[3]), .CK(clk), .Q(I1_B_SIG_int[3]) );
  DFF_X1 R2_Q_reg_4_ ( .D(FP_B[4]), .CK(clk), .Q(I1_B_SIG_int[4]) );
  DFF_X1 R2_Q_reg_5_ ( .D(FP_B[5]), .CK(clk), .Q(I1_B_SIG_int[5]) );
  DFF_X1 R2_Q_reg_6_ ( .D(FP_B[6]), .CK(clk), .Q(I1_B_SIG_int[6]) );
  DFF_X1 R2_Q_reg_7_ ( .D(FP_B[7]), .CK(clk), .Q(I1_B_SIG_int[7]) );
  DFF_X1 R2_Q_reg_8_ ( .D(FP_B[8]), .CK(clk), .Q(I1_B_SIG_int[8]), .QN(n307)
         );
  DFF_X1 R2_Q_reg_9_ ( .D(FP_B[9]), .CK(clk), .Q(I1_B_SIG_int[9]) );
  DFF_X1 R2_Q_reg_10_ ( .D(FP_B[10]), .CK(clk), .Q(I1_B_SIG_int[10]) );
  DFF_X1 R2_Q_reg_11_ ( .D(FP_B[11]), .CK(clk), .Q(I1_B_SIG_int[11]) );
  DFF_X1 R2_Q_reg_12_ ( .D(FP_B[12]), .CK(clk), .Q(I1_B_SIG_int[12]) );
  DFF_X1 R2_Q_reg_13_ ( .D(FP_B[13]), .CK(clk), .Q(I1_B_SIG_int[13]) );
  DFF_X1 R2_Q_reg_14_ ( .D(FP_B[14]), .CK(clk), .Q(I1_B_SIG_int[14]) );
  DFF_X1 R2_Q_reg_15_ ( .D(FP_B[15]), .CK(clk), .Q(I1_B_SIG_int[15]) );
  DFF_X1 R2_Q_reg_16_ ( .D(FP_B[16]), .CK(clk), .Q(I1_B_SIG_int[16]) );
  DFF_X1 R2_Q_reg_17_ ( .D(FP_B[17]), .CK(clk), .Q(I1_B_SIG_int[17]) );
  DFF_X1 R2_Q_reg_18_ ( .D(FP_B[18]), .CK(clk), .Q(I1_B_SIG_int[18]) );
  DFF_X1 R2_Q_reg_19_ ( .D(FP_B[19]), .CK(clk), .Q(I1_B_SIG_int[19]) );
  DFF_X1 R2_Q_reg_20_ ( .D(FP_B[20]), .CK(clk), .Q(I1_B_SIG_int[20]) );
  DFF_X1 R2_Q_reg_21_ ( .D(FP_B[21]), .CK(clk), .Q(I1_B_SIG_int[21]) );
  DFF_X1 R2_Q_reg_22_ ( .D(FP_B[22]), .CK(clk), .Q(I1_B_SIG_int[22]) );
  DFF_X1 R2_Q_reg_23_ ( .D(FP_B[23]), .CK(clk), .Q(I1_B_EXP_int[0]) );
  DFF_X1 R2_Q_reg_24_ ( .D(FP_B[24]), .CK(clk), .Q(I1_B_EXP_int[1]) );
  DFF_X1 R2_Q_reg_25_ ( .D(FP_B[25]), .CK(clk), .Q(I1_B_EXP_int[2]) );
  DFF_X1 R2_Q_reg_26_ ( .D(FP_B[26]), .CK(clk), .Q(I1_B_EXP_int[3]) );
  DFF_X1 R2_Q_reg_27_ ( .D(FP_B[27]), .CK(clk), .Q(I1_B_EXP_int[4]) );
  DFF_X1 R2_Q_reg_28_ ( .D(FP_B[28]), .CK(clk), .Q(I1_B_EXP_int[5]) );
  DFF_X1 R2_Q_reg_29_ ( .D(FP_B[29]), .CK(clk), .Q(I1_B_EXP_int[6]) );
  DFF_X1 R2_Q_reg_30_ ( .D(FP_B[30]), .CK(clk), .Q(I1_B_EXP_int[7]) );
  DFF_X1 R2_Q_reg_31_ ( .D(FP_B[31]), .CK(clk), .Q(I1_B_SIGN) );
  DFF_X1 I1_B_SIG_reg_0_ ( .D(I1_B_SIG_int[0]), .CK(clk), .Q(B_SIG[0]) );
  DFF_X1 I1_B_SIG_reg_1_ ( .D(I1_B_SIG_int[1]), .CK(clk), .Q(B_SIG[1]) );
  DFF_X1 I1_B_SIG_reg_2_ ( .D(I1_B_SIG_int[2]), .CK(clk), .Q(B_SIG[2]) );
  DFF_X1 I1_B_SIG_reg_3_ ( .D(I1_B_SIG_int[3]), .CK(clk), .Q(B_SIG[3]) );
  DFF_X1 I1_B_SIG_reg_4_ ( .D(I1_B_SIG_int[4]), .CK(clk), .Q(B_SIG[4]) );
  DFF_X1 I1_B_SIG_reg_5_ ( .D(I1_B_SIG_int[5]), .CK(clk), .Q(B_SIG[5]) );
  DFF_X1 I1_B_SIG_reg_6_ ( .D(I1_B_SIG_int[6]), .CK(clk), .Q(B_SIG[6]) );
  DFF_X1 I1_B_SIG_reg_7_ ( .D(I1_B_SIG_int[7]), .CK(clk), .Q(B_SIG[7]) );
  DFF_X1 I1_B_SIG_reg_8_ ( .D(I1_B_SIG_int[8]), .CK(clk), .Q(B_SIG[8]) );
  DFF_X1 I1_B_SIG_reg_9_ ( .D(I1_B_SIG_int[9]), .CK(clk), .Q(B_SIG[9]) );
  DFF_X1 I1_B_SIG_reg_10_ ( .D(I1_B_SIG_int[10]), .CK(clk), .Q(B_SIG[10]) );
  DFF_X1 I1_B_SIG_reg_11_ ( .D(I1_B_SIG_int[11]), .CK(clk), .Q(B_SIG[11]) );
  DFF_X1 I1_B_SIG_reg_12_ ( .D(I1_B_SIG_int[12]), .CK(clk), .Q(B_SIG[12]) );
  DFF_X1 I1_B_SIG_reg_13_ ( .D(I1_B_SIG_int[13]), .CK(clk), .Q(B_SIG[13]) );
  DFF_X1 I1_B_SIG_reg_14_ ( .D(I1_B_SIG_int[14]), .CK(clk), .Q(B_SIG[14]) );
  DFF_X1 I1_B_SIG_reg_15_ ( .D(I1_B_SIG_int[15]), .CK(clk), .Q(B_SIG[15]) );
  DFF_X1 I1_B_SIG_reg_16_ ( .D(I1_B_SIG_int[16]), .CK(clk), .Q(B_SIG[16]) );
  DFF_X1 I1_B_SIG_reg_17_ ( .D(I1_B_SIG_int[17]), .CK(clk), .Q(B_SIG[17]) );
  DFF_X1 I1_B_SIG_reg_18_ ( .D(I1_B_SIG_int[18]), .CK(clk), .Q(B_SIG[18]) );
  DFF_X1 I1_B_SIG_reg_19_ ( .D(I1_B_SIG_int[19]), .CK(clk), .Q(B_SIG[19]) );
  DFF_X1 I1_B_SIG_reg_20_ ( .D(I1_B_SIG_int[20]), .CK(clk), .Q(B_SIG[20]) );
  DFF_X1 I1_B_SIG_reg_21_ ( .D(I1_B_SIG_int[21]), .CK(clk), .Q(B_SIG[21]) );
  DFF_X1 I1_B_SIG_reg_22_ ( .D(I1_B_SIG_int[22]), .CK(clk), .Q(B_SIG[22]) );
  DFF_X1 I1_B_SIG_reg_23_ ( .D(I1_I1_N13), .CK(clk), .Q(B_SIG[23]) );
  DFF_X1 I1_B_EXP_reg_0_ ( .D(I1_B_EXP_int[0]), .CK(clk), .Q(B_EXP[0]) );
  DFF_X1 I1_B_EXP_reg_1_ ( .D(I1_B_EXP_int[1]), .CK(clk), .Q(B_EXP[1]) );
  DFF_X1 I1_B_EXP_reg_2_ ( .D(I1_B_EXP_int[2]), .CK(clk), .Q(B_EXP[2]) );
  DFF_X1 I1_B_EXP_reg_3_ ( .D(I1_B_EXP_int[3]), .CK(clk), .Q(B_EXP[3]) );
  DFF_X1 I1_B_EXP_reg_4_ ( .D(I1_B_EXP_int[4]), .CK(clk), .Q(B_EXP[4]) );
  DFF_X1 I1_B_EXP_reg_5_ ( .D(I1_B_EXP_int[5]), .CK(clk), .Q(B_EXP[5]) );
  DFF_X1 I1_B_EXP_reg_6_ ( .D(I1_B_EXP_int[6]), .CK(clk), .Q(B_EXP[6]) );
  DFF_X1 I1_B_EXP_reg_7_ ( .D(I1_B_EXP_int[7]), .CK(clk), .Q(B_EXP[7]) );
  DFF_X1 I1_isZ_tab_stage1_reg ( .D(I1_isZ_tab_int), .CK(clk), .Q(
        isZ_tab_stage1) );
  DFF_X1 I1_isNaN_stage1_reg ( .D(I1_isNaN_int), .CK(clk), .Q(isNaN_stage1) );
  DFF_X1 I1_isINF_stage1_reg ( .D(I1_isINF_int), .CK(clk), .Q(isINF_stage1) );
  DFF_X1 I1_A_SIG_reg_0_ ( .D(I1_A_SIG_int[0]), .CK(clk), .Q(A_SIG[0]) );
  DFF_X1 I1_A_SIG_reg_1_ ( .D(I1_A_SIG_int[1]), .CK(clk), .Q(A_SIG[1]) );
  DFF_X1 I1_A_SIG_reg_2_ ( .D(I1_A_SIG_int[2]), .CK(clk), .Q(A_SIG[2]) );
  DFF_X1 I1_A_SIG_reg_3_ ( .D(I1_A_SIG_int[3]), .CK(clk), .Q(A_SIG[3]) );
  DFF_X1 I1_A_SIG_reg_4_ ( .D(I1_A_SIG_int[4]), .CK(clk), .Q(A_SIG[4]) );
  DFF_X1 I1_A_SIG_reg_5_ ( .D(I1_A_SIG_int[5]), .CK(clk), .Q(A_SIG[5]) );
  DFF_X1 I1_A_SIG_reg_6_ ( .D(I1_A_SIG_int[6]), .CK(clk), .Q(A_SIG[6]) );
  DFF_X1 I1_A_SIG_reg_7_ ( .D(I1_A_SIG_int[7]), .CK(clk), .Q(A_SIG[7]) );
  DFF_X1 I1_A_SIG_reg_8_ ( .D(I1_A_SIG_int[8]), .CK(clk), .Q(A_SIG[8]) );
  DFF_X1 I1_A_SIG_reg_9_ ( .D(I1_A_SIG_int[9]), .CK(clk), .Q(A_SIG[9]) );
  DFF_X1 I1_A_SIG_reg_10_ ( .D(I1_A_SIG_int[10]), .CK(clk), .Q(A_SIG[10]) );
  DFF_X1 I1_A_SIG_reg_11_ ( .D(I1_A_SIG_int[11]), .CK(clk), .Q(A_SIG[11]) );
  DFF_X1 I1_A_SIG_reg_12_ ( .D(I1_A_SIG_int[12]), .CK(clk), .Q(A_SIG[12]) );
  DFF_X1 I1_A_SIG_reg_13_ ( .D(I1_A_SIG_int[13]), .CK(clk), .Q(A_SIG[13]) );
  DFF_X1 I1_A_SIG_reg_14_ ( .D(I1_A_SIG_int[14]), .CK(clk), .Q(A_SIG[14]) );
  DFF_X1 I1_A_SIG_reg_15_ ( .D(I1_A_SIG_int[15]), .CK(clk), .Q(A_SIG[15]) );
  DFF_X1 I1_A_SIG_reg_16_ ( .D(I1_A_SIG_int[16]), .CK(clk), .Q(A_SIG[16]) );
  DFF_X1 I1_A_SIG_reg_17_ ( .D(I1_A_SIG_int[17]), .CK(clk), .Q(A_SIG[17]) );
  DFF_X1 I1_A_SIG_reg_18_ ( .D(I1_A_SIG_int[18]), .CK(clk), .Q(A_SIG[18]) );
  DFF_X1 I1_A_SIG_reg_19_ ( .D(I1_A_SIG_int[19]), .CK(clk), .Q(A_SIG[19]) );
  DFF_X1 I1_A_SIG_reg_20_ ( .D(I1_A_SIG_int[20]), .CK(clk), .Q(A_SIG[20]) );
  DFF_X1 I1_A_SIG_reg_21_ ( .D(I1_A_SIG_int[21]), .CK(clk), .Q(A_SIG[21]) );
  DFF_X1 I1_A_SIG_reg_22_ ( .D(I1_A_SIG_int[22]), .CK(clk), .Q(A_SIG[22]) );
  DFF_X1 I1_A_SIG_reg_23_ ( .D(I1_I0_N13), .CK(clk), .Q(A_SIG[23]) );
  DFF_X1 I1_A_EXP_reg_0_ ( .D(I1_A_EXP_int[0]), .CK(clk), .Q(A_EXP[0]) );
  DFF_X1 I1_A_EXP_reg_1_ ( .D(I1_A_EXP_int[1]), .CK(clk), .Q(A_EXP[1]) );
  DFF_X1 I1_A_EXP_reg_2_ ( .D(I1_A_EXP_int[2]), .CK(clk), .Q(A_EXP[2]) );
  DFF_X1 I1_A_EXP_reg_3_ ( .D(I1_A_EXP_int[3]), .CK(clk), .Q(A_EXP[3]) );
  DFF_X1 I1_A_EXP_reg_4_ ( .D(I1_A_EXP_int[4]), .CK(clk), .Q(A_EXP[4]) );
  DFF_X1 I1_A_EXP_reg_5_ ( .D(I1_A_EXP_int[5]), .CK(clk), .Q(A_EXP[5]) );
  DFF_X1 I1_A_EXP_reg_6_ ( .D(I1_A_EXP_int[6]), .CK(clk), .Q(A_EXP[6]) );
  DFF_X1 I1_A_EXP_reg_7_ ( .D(I1_A_EXP_int[7]), .CK(clk), .Q(A_EXP[7]) );
  DFF_X1 I1_SIGN_out_stage1_reg ( .D(I1_SIGN_out_int), .CK(clk), .Q(
        SIGN_out_stage1) );
  DFF_X1 I3_EXP_neg_reg ( .D(EXP_neg_stage2), .CK(clk), .Q(EXP_neg) );
  DFF_X1 I3_EXP_pos_reg ( .D(EXP_pos_stage2), .CK(clk), .Q(EXP_pos) );
  DFF_X1 I3_SIGN_out_reg ( .D(SIGN_out_stage2), .CK(clk), .Q(I4_FP[31]) );
  DFF_X1 I3_isZ_tab_reg ( .D(isZ_tab_stage2), .CK(clk), .Q(isZ_tab) );
  DFF_X1 I3_isNaN_reg ( .D(isNaN_stage2), .CK(clk), .Q(isNaN), .QN(n308) );
  DFF_X1 I3_isINF_tab_reg ( .D(isINF_stage2), .CK(clk), .Q(isINF_tab) );
  DFF_X1 I3_SIG_out_round_reg_3_ ( .D(I3_SIG_out[3]), .CK(clk), .Q(
        SIG_out_round[3]), .QN(n306) );
  DFF_X1 I3_SIG_out_round_reg_4_ ( .D(I3_SIG_out[4]), .CK(clk), .QN(n287) );
  DFF_X1 I3_SIG_out_round_reg_5_ ( .D(I3_SIG_out[5]), .CK(clk), .Q(
        SIG_out_round[5]), .QN(n300) );
  DFF_X1 I3_SIG_out_round_reg_6_ ( .D(I3_SIG_out[6]), .CK(clk), .Q(
        SIG_out_round[6]), .QN(n291) );
  DFF_X1 I3_SIG_out_round_reg_7_ ( .D(I3_SIG_out[7]), .CK(clk), .Q(
        SIG_out_round[7]), .QN(n297) );
  DFF_X1 I3_SIG_out_round_reg_8_ ( .D(I3_SIG_out[8]), .CK(clk), .Q(
        SIG_out_round[8]), .QN(n290) );
  DFF_X1 I3_SIG_out_round_reg_9_ ( .D(I3_SIG_out[9]), .CK(clk), .Q(
        SIG_out_round[9]), .QN(n301) );
  DFF_X1 I3_SIG_out_round_reg_10_ ( .D(I3_SIG_out[10]), .CK(clk), .Q(
        SIG_out_round[10]), .QN(n292) );
  DFF_X1 I3_SIG_out_round_reg_11_ ( .D(I3_SIG_out[11]), .CK(clk), .Q(
        SIG_out_round[11]), .QN(n298) );
  DFF_X1 I3_SIG_out_round_reg_12_ ( .D(I3_SIG_out[12]), .CK(clk), .Q(
        SIG_out_round[12]), .QN(n289) );
  DFF_X1 I3_SIG_out_round_reg_13_ ( .D(I3_SIG_out[13]), .CK(clk), .Q(
        SIG_out_round[13]), .QN(n303) );
  DFF_X1 I3_SIG_out_round_reg_14_ ( .D(I3_SIG_out[14]), .CK(clk), .Q(
        SIG_out_round[14]), .QN(n296) );
  DFF_X1 I3_SIG_out_round_reg_15_ ( .D(I3_SIG_out[15]), .CK(clk), .Q(
        SIG_out_round[15]), .QN(n286) );
  DFF_X1 I3_SIG_out_round_reg_16_ ( .D(I3_SIG_out[16]), .CK(clk), .Q(
        SIG_out_round[16]), .QN(n302) );
  DFF_X1 I3_SIG_out_round_reg_17_ ( .D(I3_SIG_out[17]), .CK(clk), .Q(
        SIG_out_round[17]), .QN(n294) );
  DFF_X1 I3_SIG_out_round_reg_18_ ( .D(I3_SIG_out[18]), .CK(clk), .Q(
        SIG_out_round[18]), .QN(n285) );
  DFF_X1 I3_SIG_out_round_reg_19_ ( .D(I3_SIG_out[19]), .CK(clk), .Q(
        SIG_out_round[19]), .QN(n299) );
  DFF_X1 I3_SIG_out_round_reg_20_ ( .D(I3_SIG_out[20]), .CK(clk), .Q(
        SIG_out_round[20]), .QN(n293) );
  DFF_X1 I3_SIG_out_round_reg_21_ ( .D(I3_SIG_out[21]), .CK(clk), .Q(
        SIG_out_round[21]), .QN(n283) );
  DFF_X1 I3_SIG_out_round_reg_22_ ( .D(I3_SIG_out[22]), .CK(clk), .Q(
        SIG_out_round[22]), .QN(n304) );
  DFF_X1 I3_SIG_out_round_reg_23_ ( .D(I3_SIG_out[23]), .CK(clk), .Q(
        SIG_out_round[23]), .QN(n284) );
  DFF_X1 I3_SIG_out_round_reg_24_ ( .D(I3_SIG_out[24]), .CK(clk), .Q(
        SIG_out_round[24]), .QN(n295) );
  DFF_X1 I3_SIG_out_round_reg_25_ ( .D(I3_SIG_out[25]), .CK(clk), .Q(
        SIG_out_round[25]), .QN(n305) );
  DFF_X1 I3_SIG_out_round_reg_26_ ( .D(I3_SIG_out[26]), .CK(clk), .Q(
        SIG_out_round[26]) );
  DFF_X1 I3_SIG_out_round_reg_27_ ( .D(I3_SIG_out[27]), .CK(clk), .Q(
        SIG_out_round[27]), .QN(n310) );
  DFF_X1 I3_EXP_out_round_reg_0_ ( .D(I3_EXP_out[0]), .CK(clk), .Q(
        EXP_out_round[0]) );
  DFF_X1 I3_EXP_out_round_reg_1_ ( .D(I3_EXP_out[1]), .CK(clk), .Q(
        EXP_out_round[1]), .QN(n288) );
  DFF_X1 I3_EXP_out_round_reg_2_ ( .D(I3_EXP_out[2]), .CK(clk), .Q(
        EXP_out_round[2]) );
  DFF_X1 I3_EXP_out_round_reg_3_ ( .D(I3_EXP_out[3]), .CK(clk), .Q(
        EXP_out_round[3]) );
  DFF_X1 I3_EXP_out_round_reg_4_ ( .D(I3_EXP_out[4]), .CK(clk), .Q(
        EXP_out_round[4]) );
  DFF_X1 I3_EXP_out_round_reg_5_ ( .D(I3_EXP_out[5]), .CK(clk), .Q(
        EXP_out_round[5]) );
  DFF_X1 I3_EXP_out_round_reg_6_ ( .D(I3_EXP_out[6]), .CK(clk), .Q(
        EXP_out_round[6]) );
  DFF_X1 I3_EXP_out_round_reg_7_ ( .D(I3_EXP_out[7]), .CK(clk), .Q(
        EXP_out_round[7]), .QN(n309) );
  DFF_X1 I4_FP_Z_reg_0_ ( .D(I4_FP[0]), .CK(clk), .Q(FP_Z[0]) );
  DFF_X1 I4_FP_Z_reg_1_ ( .D(I4_FP[1]), .CK(clk), .Q(FP_Z[1]) );
  DFF_X1 I4_FP_Z_reg_3_ ( .D(I4_FP[3]), .CK(clk), .Q(FP_Z[3]) );
  DFF_X1 I4_FP_Z_reg_4_ ( .D(I4_FP[4]), .CK(clk), .Q(FP_Z[4]) );
  DFF_X1 I4_FP_Z_reg_5_ ( .D(I4_FP[5]), .CK(clk), .Q(FP_Z[5]) );
  DFF_X1 I4_FP_Z_reg_7_ ( .D(I4_FP[7]), .CK(clk), .Q(FP_Z[7]) );
  DFF_X1 I4_FP_Z_reg_8_ ( .D(I4_FP[8]), .CK(clk), .Q(FP_Z[8]) );
  DFF_X1 I4_FP_Z_reg_9_ ( .D(I4_FP[9]), .CK(clk), .Q(FP_Z[9]) );
  DFF_X1 I4_FP_Z_reg_11_ ( .D(I4_FP[11]), .CK(clk), .Q(FP_Z[11]) );
  DFF_X1 I4_FP_Z_reg_12_ ( .D(I4_FP[12]), .CK(clk), .Q(FP_Z[12]) );
  DFF_X1 I4_FP_Z_reg_14_ ( .D(I4_FP[14]), .CK(clk), .Q(FP_Z[14]) );
  DFF_X1 I4_FP_Z_reg_15_ ( .D(I4_FP[15]), .CK(clk), .Q(FP_Z[15]) );
  DFF_X1 I4_FP_Z_reg_17_ ( .D(I4_FP[17]), .CK(clk), .Q(FP_Z[17]) );
  DFF_X1 I4_FP_Z_reg_18_ ( .D(I4_FP[18]), .CK(clk), .Q(FP_Z[18]) );
  DFF_X1 I4_FP_Z_reg_19_ ( .D(I4_FP[19]), .CK(clk), .Q(FP_Z[19]) );
  DFF_X1 I4_FP_Z_reg_20_ ( .D(I4_FP[20]), .CK(clk), .Q(FP_Z[20]) );
  DFF_X1 I4_FP_Z_reg_21_ ( .D(I4_FP[21]), .CK(clk), .Q(FP_Z[21]) );
  DFF_X1 I4_FP_Z_reg_22_ ( .D(I4_FP[22]), .CK(clk), .Q(FP_Z[22]) );
  DFF_X1 I4_FP_Z_reg_23_ ( .D(I4_FP[23]), .CK(clk), .Q(FP_Z[23]) );
  DFF_X1 I4_FP_Z_reg_24_ ( .D(I4_FP[24]), .CK(clk), .Q(FP_Z[24]) );
  DFF_X1 I4_FP_Z_reg_25_ ( .D(I4_FP[25]), .CK(clk), .Q(FP_Z[25]) );
  DFF_X1 I4_FP_Z_reg_26_ ( .D(I4_FP[26]), .CK(clk), .Q(FP_Z[26]) );
  DFF_X1 I4_FP_Z_reg_27_ ( .D(I4_FP[27]), .CK(clk), .Q(FP_Z[27]) );
  DFF_X1 I4_FP_Z_reg_28_ ( .D(I4_FP[28]), .CK(clk), .Q(FP_Z[28]) );
  DFF_X1 I4_FP_Z_reg_29_ ( .D(I4_FP[29]), .CK(clk), .Q(FP_Z[29]) );
  DFF_X1 I4_FP_Z_reg_30_ ( .D(I4_FP[30]), .CK(clk), .Q(FP_Z[30]) );
  DFF_X1 I4_FP_Z_reg_31_ ( .D(I4_FP[31]), .CK(clk), .Q(FP_Z[31]) );
  DFF_X1 I4_FP_Z_reg_16_ ( .D(I4_FP[16]), .CK(clk), .Q(FP_Z[16]) );
  DFF_X1 I4_FP_Z_reg_13_ ( .D(I4_FP[13]), .CK(clk), .Q(FP_Z[13]) );
  DFF_X1 I4_FP_Z_reg_10_ ( .D(I4_FP[10]), .CK(clk), .Q(FP_Z[10]) );
  DFF_X1 I4_FP_Z_reg_6_ ( .D(I4_FP[6]), .CK(clk), .Q(FP_Z[6]) );
  DFF_X1 I4_FP_Z_reg_2_ ( .D(I4_FP[2]), .CK(clk), .Q(FP_Z[2]) );
  CLKBUF_X1 U220 ( .A(n216), .Z(n219) );
  OR2_X1 U221 ( .A1(n216), .A2(isNaN), .ZN(n221) );
  NAND2_X1 U222 ( .A1(SIG_in[27]), .A2(EXP_in[0]), .ZN(n275) );
  OAI21_X1 U223 ( .B1(SIG_in[27]), .B2(EXP_in[0]), .A(n275), .ZN(n125) );
  INV_X1 U224 ( .A(n125), .ZN(I3_EXP_out[0]) );
  NOR4_X1 U225 ( .A1(I1_B_EXP_int[4]), .A2(I1_B_EXP_int[5]), .A3(
        I1_B_EXP_int[7]), .A4(I1_B_EXP_int[6]), .ZN(n127) );
  NOR4_X1 U226 ( .A1(I1_B_EXP_int[0]), .A2(I1_B_EXP_int[1]), .A3(
        I1_B_EXP_int[2]), .A4(I1_B_EXP_int[3]), .ZN(n126) );
  NAND2_X1 U227 ( .A1(n127), .A2(n126), .ZN(I1_I1_N13) );
  NOR4_X1 U228 ( .A1(I1_A_EXP_int[4]), .A2(I1_A_EXP_int[5]), .A3(
        I1_A_EXP_int[7]), .A4(I1_A_EXP_int[6]), .ZN(n129) );
  NOR4_X1 U229 ( .A1(I1_A_EXP_int[0]), .A2(I1_A_EXP_int[1]), .A3(
        I1_A_EXP_int[2]), .A4(I1_A_EXP_int[3]), .ZN(n128) );
  NAND2_X1 U230 ( .A1(n129), .A2(n128), .ZN(I1_I0_N13) );
  NAND4_X1 U231 ( .A1(I1_A_EXP_int[4]), .A2(I1_A_EXP_int[5]), .A3(
        I1_A_EXP_int[7]), .A4(I1_A_EXP_int[6]), .ZN(n131) );
  NAND4_X1 U232 ( .A1(I1_A_EXP_int[0]), .A2(I1_A_EXP_int[1]), .A3(
        I1_A_EXP_int[2]), .A4(I1_A_EXP_int[3]), .ZN(n130) );
  NOR2_X1 U233 ( .A1(n131), .A2(n130), .ZN(n202) );
  NOR4_X1 U234 ( .A1(I1_B_SIG_int[17]), .A2(I1_B_SIG_int[13]), .A3(
        I1_B_SIG_int[22]), .A4(I1_B_SIG_int[19]), .ZN(n132) );
  NAND2_X1 U235 ( .A1(n132), .A2(n307), .ZN(n138) );
  NOR4_X1 U236 ( .A1(I1_B_SIG_int[21]), .A2(I1_B_SIG_int[12]), .A3(
        I1_B_SIG_int[14]), .A4(I1_B_SIG_int[10]), .ZN(n136) );
  NOR4_X1 U237 ( .A1(I1_B_SIG_int[9]), .A2(I1_B_SIG_int[11]), .A3(
        I1_B_SIG_int[7]), .A4(I1_B_SIG_int[6]), .ZN(n135) );
  NOR4_X1 U238 ( .A1(I1_B_SIG_int[5]), .A2(I1_B_SIG_int[1]), .A3(
        I1_B_SIG_int[0]), .A4(I1_B_SIG_int[2]), .ZN(n134) );
  NOR4_X1 U239 ( .A1(I1_B_SIG_int[18]), .A2(I1_B_SIG_int[20]), .A3(
        I1_B_SIG_int[4]), .A4(I1_B_SIG_int[3]), .ZN(n133) );
  NAND4_X1 U240 ( .A1(n136), .A2(n135), .A3(n134), .A4(n133), .ZN(n137) );
  OR4_X1 U241 ( .A1(I1_B_SIG_int[16]), .A2(I1_B_SIG_int[15]), .A3(n138), .A4(
        n137), .ZN(n148) );
  NOR2_X1 U242 ( .A1(I1_I1_N13), .A2(n148), .ZN(n198) );
  NOR4_X1 U243 ( .A1(I1_A_SIG_int[21]), .A2(I1_A_SIG_int[12]), .A3(
        I1_A_SIG_int[14]), .A4(I1_A_SIG_int[10]), .ZN(n145) );
  NOR4_X1 U244 ( .A1(I1_A_SIG_int[9]), .A2(I1_A_SIG_int[11]), .A3(
        I1_A_SIG_int[7]), .A4(I1_A_SIG_int[6]), .ZN(n144) );
  NOR4_X1 U245 ( .A1(I1_A_SIG_int[17]), .A2(I1_A_SIG_int[13]), .A3(
        I1_A_SIG_int[22]), .A4(I1_A_SIG_int[19]), .ZN(n142) );
  NOR3_X1 U246 ( .A1(I1_A_SIG_int[8]), .A2(I1_A_SIG_int[16]), .A3(
        I1_A_SIG_int[15]), .ZN(n141) );
  NOR4_X1 U247 ( .A1(I1_A_SIG_int[5]), .A2(I1_A_SIG_int[1]), .A3(
        I1_A_SIG_int[0]), .A4(I1_A_SIG_int[2]), .ZN(n140) );
  NOR4_X1 U248 ( .A1(I1_A_SIG_int[18]), .A2(I1_A_SIG_int[20]), .A3(
        I1_A_SIG_int[4]), .A4(I1_A_SIG_int[3]), .ZN(n139) );
  AND4_X1 U249 ( .A1(n142), .A2(n141), .A3(n140), .A4(n139), .ZN(n143) );
  NAND3_X1 U250 ( .A1(n145), .A2(n144), .A3(n143), .ZN(n151) );
  NOR2_X1 U251 ( .A1(I1_I0_N13), .A2(n151), .ZN(n200) );
  NAND4_X1 U252 ( .A1(I1_B_EXP_int[4]), .A2(I1_B_EXP_int[5]), .A3(
        I1_B_EXP_int[7]), .A4(I1_B_EXP_int[6]), .ZN(n147) );
  NAND4_X1 U253 ( .A1(I1_B_EXP_int[0]), .A2(I1_B_EXP_int[1]), .A3(
        I1_B_EXP_int[2]), .A4(I1_B_EXP_int[3]), .ZN(n146) );
  OR2_X1 U254 ( .A1(n147), .A2(n146), .ZN(n199) );
  NOR2_X1 U255 ( .A1(n148), .A2(n199), .ZN(n149) );
  AOI22_X1 U256 ( .A1(n202), .A2(n198), .B1(n200), .B2(n149), .ZN(n195) );
  INV_X1 U257 ( .A(n202), .ZN(n196) );
  INV_X1 U258 ( .A(n149), .ZN(n150) );
  OAI21_X1 U259 ( .B1(n151), .B2(n196), .A(n150), .ZN(n197) );
  AND2_X1 U260 ( .A1(n195), .A2(n197), .ZN(I1_isINF_int) );
  MUX2_X1 U261 ( .A(SIG_in[3]), .B(SIG_in[2]), .S(n164), .Z(n171) );
  INV_X1 U262 ( .A(n171), .ZN(n244) );
  AOI22_X1 U263 ( .A1(SIG_in[27]), .A2(SIG_in[7]), .B1(SIG_in[6]), .B2(n164), 
        .ZN(n153) );
  AOI22_X1 U264 ( .A1(SIG_in[27]), .A2(SIG_in[6]), .B1(SIG_in[5]), .B2(n164), 
        .ZN(n249) );
  AOI22_X1 U265 ( .A1(SIG_in[27]), .A2(SIG_in[4]), .B1(SIG_in[3]), .B2(n164), 
        .ZN(n245) );
  AOI22_X1 U266 ( .A1(SIG_in[27]), .A2(SIG_in[5]), .B1(SIG_in[4]), .B2(n164), 
        .ZN(n247) );
  OR3_X1 U267 ( .A1(n249), .A2(n245), .A3(n247), .ZN(n152) );
  NOR3_X1 U268 ( .A1(n153), .A2(n244), .A3(n152), .ZN(n250) );
  AOI221_X1 U269 ( .B1(n244), .B2(n153), .C1(n152), .C2(n153), .A(n250), .ZN(
        I3_SIG_out[6]) );
  AOI22_X1 U270 ( .A1(SIG_in[27]), .A2(SIG_in[9]), .B1(SIG_in[8]), .B2(n164), 
        .ZN(n155) );
  AOI22_X1 U271 ( .A1(SIG_in[27]), .A2(SIG_in[8]), .B1(SIG_in[7]), .B2(n164), 
        .ZN(n251) );
  OR3_X1 U272 ( .A1(n153), .A2(n251), .A3(n152), .ZN(n154) );
  NOR3_X1 U273 ( .A1(n155), .A2(n244), .A3(n154), .ZN(n252) );
  AOI221_X1 U274 ( .B1(n244), .B2(n155), .C1(n154), .C2(n155), .A(n252), .ZN(
        I3_SIG_out[8]) );
  AOI22_X1 U275 ( .A1(SIG_in[27]), .A2(SIG_in[11]), .B1(SIG_in[10]), .B2(n164), 
        .ZN(n157) );
  AOI22_X1 U276 ( .A1(SIG_in[27]), .A2(SIG_in[10]), .B1(SIG_in[9]), .B2(n164), 
        .ZN(n253) );
  OR3_X1 U277 ( .A1(n155), .A2(n253), .A3(n154), .ZN(n156) );
  NOR3_X1 U278 ( .A1(n157), .A2(n244), .A3(n156), .ZN(n254) );
  AOI221_X1 U279 ( .B1(n244), .B2(n157), .C1(n156), .C2(n157), .A(n254), .ZN(
        I3_SIG_out[10]) );
  AOI22_X1 U280 ( .A1(SIG_in[27]), .A2(SIG_in[13]), .B1(SIG_in[12]), .B2(n164), 
        .ZN(n159) );
  AOI22_X1 U281 ( .A1(SIG_in[27]), .A2(SIG_in[12]), .B1(SIG_in[11]), .B2(n164), 
        .ZN(n255) );
  OR3_X1 U282 ( .A1(n157), .A2(n255), .A3(n156), .ZN(n158) );
  NOR3_X1 U283 ( .A1(n159), .A2(n244), .A3(n158), .ZN(n256) );
  AOI221_X1 U284 ( .B1(n244), .B2(n159), .C1(n158), .C2(n159), .A(n256), .ZN(
        I3_SIG_out[12]) );
  AOI22_X1 U285 ( .A1(SIG_in[27]), .A2(SIG_in[15]), .B1(SIG_in[14]), .B2(n164), 
        .ZN(n161) );
  AOI22_X1 U286 ( .A1(SIG_in[27]), .A2(SIG_in[14]), .B1(SIG_in[13]), .B2(n164), 
        .ZN(n257) );
  OR3_X1 U287 ( .A1(n159), .A2(n257), .A3(n158), .ZN(n160) );
  NOR3_X1 U288 ( .A1(n161), .A2(n244), .A3(n160), .ZN(n258) );
  AOI221_X1 U289 ( .B1(n244), .B2(n161), .C1(n160), .C2(n161), .A(n258), .ZN(
        I3_SIG_out[14]) );
  AOI22_X1 U290 ( .A1(SIG_in[27]), .A2(SIG_in[17]), .B1(SIG_in[16]), .B2(n164), 
        .ZN(n163) );
  AOI22_X1 U291 ( .A1(SIG_in[27]), .A2(SIG_in[16]), .B1(SIG_in[15]), .B2(n164), 
        .ZN(n259) );
  OR3_X1 U292 ( .A1(n161), .A2(n259), .A3(n160), .ZN(n162) );
  NOR3_X1 U293 ( .A1(n163), .A2(n244), .A3(n162), .ZN(n260) );
  AOI221_X1 U294 ( .B1(n244), .B2(n163), .C1(n162), .C2(n163), .A(n260), .ZN(
        I3_SIG_out[16]) );
  INV_X1 U295 ( .A(SIG_in[27]), .ZN(n164) );
  AOI22_X1 U296 ( .A1(SIG_in[27]), .A2(SIG_in[19]), .B1(SIG_in[18]), .B2(n164), 
        .ZN(n166) );
  AOI22_X1 U297 ( .A1(SIG_in[27]), .A2(SIG_in[18]), .B1(SIG_in[17]), .B2(n164), 
        .ZN(n261) );
  OR3_X1 U298 ( .A1(n163), .A2(n261), .A3(n162), .ZN(n165) );
  NOR3_X1 U299 ( .A1(n166), .A2(n244), .A3(n165), .ZN(n262) );
  AOI221_X1 U300 ( .B1(n244), .B2(n166), .C1(n165), .C2(n166), .A(n262), .ZN(
        I3_SIG_out[18]) );
  AOI22_X1 U301 ( .A1(SIG_in[27]), .A2(SIG_in[21]), .B1(SIG_in[20]), .B2(n164), 
        .ZN(n168) );
  AOI22_X1 U302 ( .A1(SIG_in[27]), .A2(SIG_in[20]), .B1(SIG_in[19]), .B2(n164), 
        .ZN(n263) );
  OR3_X1 U303 ( .A1(n166), .A2(n263), .A3(n165), .ZN(n167) );
  NOR3_X1 U304 ( .A1(n168), .A2(n244), .A3(n167), .ZN(n264) );
  AOI221_X1 U305 ( .B1(n244), .B2(n168), .C1(n167), .C2(n168), .A(n264), .ZN(
        I3_SIG_out[20]) );
  AOI22_X1 U306 ( .A1(SIG_in[27]), .A2(SIG_in[23]), .B1(SIG_in[22]), .B2(n164), 
        .ZN(n170) );
  AOI22_X1 U307 ( .A1(SIG_in[27]), .A2(SIG_in[22]), .B1(SIG_in[21]), .B2(n164), 
        .ZN(n265) );
  OR3_X1 U308 ( .A1(n168), .A2(n265), .A3(n167), .ZN(n169) );
  NOR3_X1 U309 ( .A1(n170), .A2(n244), .A3(n169), .ZN(n266) );
  AOI221_X1 U310 ( .B1(n244), .B2(n170), .C1(n169), .C2(n170), .A(n266), .ZN(
        I3_SIG_out[22]) );
  AOI22_X1 U311 ( .A1(SIG_in[27]), .A2(SIG_in[26]), .B1(SIG_in[25]), .B2(n164), 
        .ZN(n272) );
  NOR2_X1 U312 ( .A1(SIG_in[27]), .A2(SIG_in[26]), .ZN(n173) );
  AOI22_X1 U313 ( .A1(SIG_in[27]), .A2(SIG_in[25]), .B1(SIG_in[24]), .B2(n164), 
        .ZN(n270) );
  AOI22_X1 U314 ( .A1(SIG_in[27]), .A2(SIG_in[24]), .B1(SIG_in[23]), .B2(n164), 
        .ZN(n267) );
  NOR3_X1 U315 ( .A1(n170), .A2(n267), .A3(n169), .ZN(n172) );
  NAND2_X1 U316 ( .A1(n172), .A2(n171), .ZN(n269) );
  NOR2_X1 U317 ( .A1(n270), .A2(n269), .ZN(n268) );
  INV_X1 U318 ( .A(n268), .ZN(n271) );
  NOR3_X1 U319 ( .A1(n272), .A2(n173), .A3(n271), .ZN(I3_SIG_out[27]) );
  AOI221_X1 U320 ( .B1(n272), .B2(n173), .C1(n271), .C2(n173), .A(
        I3_SIG_out[27]), .ZN(I3_SIG_out[26]) );
  INV_X1 U321 ( .A(n310), .ZN(n174) );
  NAND2_X1 U322 ( .A1(n174), .A2(EXP_out_round[0]), .ZN(n224) );
  NOR2_X1 U323 ( .A1(n224), .A2(n288), .ZN(n225) );
  NOR4_X1 U324 ( .A1(SIG_out_round[22]), .A2(SIG_out_round[18]), .A3(
        SIG_out_round[20]), .A4(SIG_out_round[19]), .ZN(n178) );
  NOR4_X1 U325 ( .A1(SIG_out_round[26]), .A2(SIG_out_round[24]), .A3(
        SIG_out_round[25]), .A4(SIG_out_round[21]), .ZN(n177) );
  NOR4_X1 U326 ( .A1(SIG_out_round[14]), .A2(SIG_out_round[13]), .A3(
        SIG_out_round[9]), .A4(SIG_out_round[11]), .ZN(n176) );
  NOR4_X1 U327 ( .A1(SIG_out_round[15]), .A2(SIG_out_round[17]), .A3(
        SIG_out_round[16]), .A4(SIG_out_round[12]), .ZN(n175) );
  NAND4_X1 U328 ( .A1(n178), .A2(n177), .A3(n176), .A4(n175), .ZN(n188) );
  NOR4_X1 U329 ( .A1(SIG_out_round[10]), .A2(SIG_out_round[6]), .A3(
        SIG_out_round[8]), .A4(SIG_out_round[7]), .ZN(n180) );
  NOR4_X1 U330 ( .A1(SIG_out_round[27]), .A2(SIG_out_round[3]), .A3(
        SIG_out_round[5]), .A4(SIG_out_round[23]), .ZN(n179) );
  NAND3_X1 U331 ( .A1(n180), .A2(n179), .A3(n287), .ZN(n187) );
  AND2_X1 U332 ( .A1(EXP_out_round[6]), .A2(EXP_out_round[5]), .ZN(n182) );
  AND2_X1 U333 ( .A1(EXP_out_round[4]), .A2(EXP_out_round[3]), .ZN(n181) );
  AND2_X1 U334 ( .A1(n182), .A2(n181), .ZN(n184) );
  NAND2_X1 U335 ( .A1(EXP_out_round[1]), .A2(EXP_out_round[2]), .ZN(n223) );
  NOR2_X1 U336 ( .A1(n224), .A2(n223), .ZN(n183) );
  NAND2_X1 U337 ( .A1(n184), .A2(n183), .ZN(n235) );
  XNOR2_X1 U338 ( .A(n235), .B(n309), .ZN(n239) );
  INV_X1 U339 ( .A(n239), .ZN(n185) );
  AOI21_X1 U340 ( .B1(n185), .B2(EXP_neg), .A(isZ_tab), .ZN(n186) );
  OAI21_X1 U341 ( .B1(n188), .B2(n187), .A(n186), .ZN(n203) );
  INV_X1 U342 ( .A(n203), .ZN(n236) );
  INV_X1 U343 ( .A(n236), .ZN(n241) );
  AOI211_X1 U344 ( .C1(n224), .C2(n288), .A(n225), .B(n241), .ZN(n194) );
  NAND4_X1 U345 ( .A1(EXP_out_round[2]), .A2(EXP_out_round[3]), .A3(
        EXP_out_round[4]), .A4(EXP_out_round[5]), .ZN(n189) );
  AOI21_X1 U346 ( .B1(EXP_pos), .B2(n239), .A(isINF_tab), .ZN(n190) );
  AND2_X1 U347 ( .A1(n189), .A2(n190), .ZN(n193) );
  INV_X1 U348 ( .A(SIG_out_round[27]), .ZN(n217) );
  XNOR2_X1 U349 ( .A(n217), .B(EXP_out_round[0]), .ZN(n220) );
  NAND4_X1 U350 ( .A1(EXP_out_round[7]), .A2(EXP_out_round[1]), .A3(
        EXP_out_round[6]), .A4(n220), .ZN(n191) );
  AND2_X1 U351 ( .A1(n191), .A2(n190), .ZN(n192) );
  NOR3_X1 U352 ( .A1(n193), .A2(n192), .A3(n203), .ZN(n216) );
  OR2_X1 U353 ( .A1(n194), .A2(n221), .ZN(I4_FP[24]) );
  XOR2_X1 U354 ( .A(I1_B_SIGN), .B(I1_A_SIGN), .Z(I1_SIGN_out_int) );
  OAI221_X1 U355 ( .B1(n197), .B2(n196), .C1(n197), .C2(n199), .A(n195), .ZN(
        I1_isNaN_int) );
  AOI21_X1 U356 ( .B1(n200), .B2(n199), .A(n198), .ZN(n201) );
  NOR2_X1 U357 ( .A1(n202), .A2(n201), .ZN(I1_isZ_tab_int) );
  NOR2_X1 U358 ( .A1(n203), .A2(n221), .ZN(n204) );
  NAND2_X1 U359 ( .A1(SIG_out_round[27]), .A2(n204), .ZN(n205) );
  BUF_X1 U360 ( .A(n205), .Z(n207) );
  NAND2_X1 U361 ( .A1(n204), .A2(n217), .ZN(n206) );
  BUF_X1 U362 ( .A(n206), .Z(n213) );
  OAI22_X1 U363 ( .A1(n287), .A2(n207), .B1(n306), .B2(n213), .ZN(I4_FP[0]) );
  BUF_X1 U364 ( .A(n206), .Z(n211) );
  OAI22_X1 U365 ( .A1(n287), .A2(n211), .B1(n300), .B2(n207), .ZN(I4_FP[1]) );
  BUF_X1 U366 ( .A(n205), .Z(n208) );
  OAI22_X1 U367 ( .A1(n291), .A2(n208), .B1(n300), .B2(n211), .ZN(I4_FP[2]) );
  BUF_X1 U368 ( .A(n206), .Z(n215) );
  BUF_X1 U369 ( .A(n205), .Z(n214) );
  OAI22_X1 U370 ( .A1(n291), .A2(n215), .B1(n297), .B2(n214), .ZN(I4_FP[3]) );
  OAI22_X1 U371 ( .A1(n290), .A2(n207), .B1(n297), .B2(n213), .ZN(I4_FP[4]) );
  OAI22_X1 U372 ( .A1(n290), .A2(n213), .B1(n301), .B2(n214), .ZN(I4_FP[5]) );
  BUF_X1 U373 ( .A(n205), .Z(n212) );
  OAI22_X1 U374 ( .A1(n292), .A2(n212), .B1(n301), .B2(n211), .ZN(I4_FP[6]) );
  OAI22_X1 U375 ( .A1(n292), .A2(n209), .B1(n298), .B2(n214), .ZN(I4_FP[7]) );
  BUF_X1 U376 ( .A(n205), .Z(n210) );
  BUF_X1 U377 ( .A(n206), .Z(n209) );
  OAI22_X1 U378 ( .A1(n289), .A2(n210), .B1(n298), .B2(n209), .ZN(I4_FP[8]) );
  OAI22_X1 U379 ( .A1(n289), .A2(n215), .B1(n303), .B2(n214), .ZN(I4_FP[9]) );
  OAI22_X1 U380 ( .A1(n296), .A2(n208), .B1(n303), .B2(n213), .ZN(I4_FP[10])
         );
  OAI22_X1 U381 ( .A1(n286), .A2(n210), .B1(n296), .B2(n209), .ZN(I4_FP[11])
         );
  OAI22_X1 U382 ( .A1(n286), .A2(n213), .B1(n302), .B2(n208), .ZN(I4_FP[12])
         );
  OAI22_X1 U383 ( .A1(n294), .A2(n212), .B1(n302), .B2(n215), .ZN(I4_FP[13])
         );
  OAI22_X1 U384 ( .A1(n285), .A2(n207), .B1(n294), .B2(n209), .ZN(I4_FP[14])
         );
  OAI22_X1 U385 ( .A1(n285), .A2(n211), .B1(n299), .B2(n210), .ZN(I4_FP[15])
         );
  OAI22_X1 U386 ( .A1(n293), .A2(n208), .B1(n299), .B2(n209), .ZN(I4_FP[16])
         );
  OAI22_X1 U387 ( .A1(n283), .A2(n210), .B1(n293), .B2(n209), .ZN(I4_FP[17])
         );
  OAI22_X1 U388 ( .A1(n283), .A2(n215), .B1(n304), .B2(n212), .ZN(I4_FP[18])
         );
  OAI22_X1 U389 ( .A1(n284), .A2(n212), .B1(n304), .B2(n211), .ZN(I4_FP[19])
         );
  OAI22_X1 U390 ( .A1(n284), .A2(n213), .B1(n295), .B2(n208), .ZN(I4_FP[20])
         );
  OAI22_X1 U391 ( .A1(n295), .A2(n215), .B1(n305), .B2(n214), .ZN(I4_FP[21])
         );
  OAI221_X1 U392 ( .B1(SIG_out_round[27]), .B2(SIG_out_round[25]), .C1(n217), 
        .C2(SIG_out_round[26]), .A(n236), .ZN(n218) );
  OAI21_X1 U393 ( .B1(n219), .B2(n218), .A(n308), .ZN(I4_FP[22]) );
  INV_X1 U394 ( .A(n220), .ZN(n222) );
  INV_X1 U395 ( .A(n221), .ZN(n240) );
  OAI21_X1 U396 ( .B1(n241), .B2(n222), .A(n240), .ZN(I4_FP[23]) );
  OR2_X1 U397 ( .A1(n224), .A2(n223), .ZN(n227) );
  OAI211_X1 U398 ( .C1(n225), .C2(EXP_out_round[2]), .A(n236), .B(n227), .ZN(
        n226) );
  NAND2_X1 U399 ( .A1(n240), .A2(n226), .ZN(I4_FP[25]) );
  INV_X1 U400 ( .A(n227), .ZN(n228) );
  AND2_X1 U401 ( .A1(n228), .A2(EXP_out_round[3]), .ZN(n230) );
  OAI21_X1 U402 ( .B1(n228), .B2(EXP_out_round[3]), .A(n236), .ZN(n229) );
  OAI21_X1 U403 ( .B1(n230), .B2(n229), .A(n240), .ZN(I4_FP[26]) );
  NAND2_X1 U404 ( .A1(n230), .A2(EXP_out_round[4]), .ZN(n232) );
  OAI211_X1 U405 ( .C1(n230), .C2(EXP_out_round[4]), .A(n236), .B(n232), .ZN(
        n231) );
  NAND2_X1 U406 ( .A1(n240), .A2(n231), .ZN(I4_FP[27]) );
  INV_X1 U407 ( .A(n232), .ZN(n233) );
  AND2_X1 U408 ( .A1(n233), .A2(EXP_out_round[5]), .ZN(n237) );
  OAI21_X1 U409 ( .B1(n233), .B2(EXP_out_round[5]), .A(n236), .ZN(n234) );
  OAI21_X1 U410 ( .B1(n237), .B2(n234), .A(n240), .ZN(I4_FP[28]) );
  OAI211_X1 U411 ( .C1(n237), .C2(EXP_out_round[6]), .A(n236), .B(n235), .ZN(
        n238) );
  NAND2_X1 U412 ( .A1(n240), .A2(n238), .ZN(I4_FP[29]) );
  CLKBUF_X1 U413 ( .A(n239), .Z(n242) );
  OAI21_X1 U414 ( .B1(n242), .B2(n241), .A(n240), .ZN(I4_FP[30]) );
  NOR2_X1 U415 ( .A1(n245), .A2(n244), .ZN(n243) );
  AOI21_X1 U416 ( .B1(n244), .B2(n245), .A(n243), .ZN(I3_SIG_out[3]) );
  INV_X1 U417 ( .A(n243), .ZN(n246) );
  NOR3_X1 U418 ( .A1(n245), .A2(n247), .A3(n244), .ZN(n248) );
  AOI21_X1 U419 ( .B1(n247), .B2(n246), .A(n248), .ZN(I3_SIG_out[4]) );
  XNOR2_X1 U420 ( .A(n249), .B(n248), .ZN(I3_SIG_out[5]) );
  XNOR2_X1 U421 ( .A(n251), .B(n250), .ZN(I3_SIG_out[7]) );
  XNOR2_X1 U422 ( .A(n253), .B(n252), .ZN(I3_SIG_out[9]) );
  XNOR2_X1 U423 ( .A(n255), .B(n254), .ZN(I3_SIG_out[11]) );
  XNOR2_X1 U424 ( .A(n257), .B(n256), .ZN(I3_SIG_out[13]) );
  XNOR2_X1 U425 ( .A(n259), .B(n258), .ZN(I3_SIG_out[15]) );
  XNOR2_X1 U426 ( .A(n261), .B(n260), .ZN(I3_SIG_out[17]) );
  XNOR2_X1 U427 ( .A(n263), .B(n262), .ZN(I3_SIG_out[19]) );
  XNOR2_X1 U428 ( .A(n265), .B(n264), .ZN(I3_SIG_out[21]) );
  XNOR2_X1 U429 ( .A(n267), .B(n266), .ZN(I3_SIG_out[23]) );
  AOI21_X1 U430 ( .B1(n270), .B2(n269), .A(n268), .ZN(I3_SIG_out[24]) );
  XOR2_X1 U431 ( .A(n272), .B(n271), .Z(I3_SIG_out[25]) );
  AND3_X1 U433 ( .A1(SIG_in[27]), .A2(EXP_in[0]), .A3(EXP_in[1]), .ZN(n276) );
  NAND2_X1 U434 ( .A1(n276), .A2(EXP_in[2]), .ZN(n278) );
  INV_X1 U435 ( .A(EXP_in[3]), .ZN(n277) );
  NOR2_X1 U436 ( .A1(n278), .A2(n277), .ZN(n279) );
  NAND2_X1 U437 ( .A1(n279), .A2(EXP_in[4]), .ZN(n281) );
  INV_X1 U438 ( .A(EXP_in[5]), .ZN(n280) );
  NOR2_X1 U439 ( .A1(n281), .A2(n280), .ZN(n282) );
  NAND2_X1 U440 ( .A1(n282), .A2(EXP_in[6]), .ZN(n273) );
  XNOR2_X1 U441 ( .A(EXP_in[7]), .B(n273), .ZN(I3_EXP_out[7]) );
  INV_X1 U442 ( .A(EXP_in[1]), .ZN(n274) );
  AOI21_X1 U443 ( .B1(n275), .B2(n274), .A(n276), .ZN(I3_EXP_out[1]) );
  XOR2_X1 U444 ( .A(n276), .B(EXP_in[2]), .Z(I3_EXP_out[2]) );
  AOI21_X1 U445 ( .B1(n278), .B2(n277), .A(n279), .ZN(I3_EXP_out[3]) );
  XOR2_X1 U446 ( .A(n279), .B(EXP_in[4]), .Z(I3_EXP_out[4]) );
  AOI21_X1 U447 ( .B1(n281), .B2(n280), .A(n282), .ZN(I3_EXP_out[5]) );
  XOR2_X1 U448 ( .A(n282), .B(EXP_in[6]), .Z(I3_EXP_out[6]) );
endmodule

