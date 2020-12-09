/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Fri Nov 20 00:25:54 2020
/////////////////////////////////////////////////////////////


module FPmul_DW01_inc_0 ( A, SUM );
  input [24:0] A;
  output [24:0] SUM;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;

  HA_X1 U2 ( .A(n2), .B(A[23]), .CO(SUM[24]), .S(SUM[23]) );
  HA_X1 U3 ( .A(n3), .B(A[22]), .CO(n2), .S(SUM[22]) );
  HA_X1 U4 ( .A(n4), .B(A[21]), .CO(n3), .S(SUM[21]) );
  HA_X1 U5 ( .A(n5), .B(A[20]), .CO(n4), .S(SUM[20]) );
  HA_X1 U6 ( .A(n6), .B(A[19]), .CO(n5), .S(SUM[19]) );
  HA_X1 U7 ( .A(n7), .B(A[18]), .CO(n6), .S(SUM[18]) );
  HA_X1 U8 ( .A(n8), .B(A[17]), .CO(n7), .S(SUM[17]) );
  HA_X1 U9 ( .A(n9), .B(A[16]), .CO(n8), .S(SUM[16]) );
  HA_X1 U10 ( .A(n10), .B(A[15]), .CO(n9), .S(SUM[15]) );
  HA_X1 U11 ( .A(n11), .B(A[14]), .CO(n10), .S(SUM[14]) );
  HA_X1 U12 ( .A(n12), .B(A[13]), .CO(n11), .S(SUM[13]) );
  HA_X1 U13 ( .A(n13), .B(A[12]), .CO(n12), .S(SUM[12]) );
  HA_X1 U14 ( .A(n14), .B(A[11]), .CO(n13), .S(SUM[11]) );
  HA_X1 U15 ( .A(n15), .B(A[10]), .CO(n14), .S(SUM[10]) );
  HA_X1 U16 ( .A(n16), .B(A[9]), .CO(n15), .S(SUM[9]) );
  HA_X1 U17 ( .A(n17), .B(A[8]), .CO(n16), .S(SUM[8]) );
  HA_X1 U18 ( .A(n18), .B(A[7]), .CO(n17), .S(SUM[7]) );
  HA_X1 U19 ( .A(n19), .B(A[6]), .CO(n18), .S(SUM[6]) );
  HA_X1 U20 ( .A(n20), .B(A[5]), .CO(n19), .S(SUM[5]) );
  HA_X1 U21 ( .A(n21), .B(A[4]), .CO(n20), .S(SUM[4]) );
  HA_X1 U22 ( .A(n22), .B(A[3]), .CO(n21), .S(SUM[3]) );
  HA_X1 U23 ( .A(n23), .B(A[2]), .CO(n22), .S(SUM[2]) );
  HA_X1 U24 ( .A(A[0]), .B(A[1]), .CO(n23), .S(SUM[1]) );
  INV_X1 U29 ( .A(A[0]), .ZN(SUM[0]) );
endmodule


module FPmul ( FP_A, FP_B, clk, FP_Z );
  input [31:0] FP_A;
  input [31:0] FP_B;
  output [31:0] FP_Z;
  input clk;
  wire   n603, n604, n605, n606, n607, n608, n609, n610, n611, n612, n613,
         n614, n615, n616, n617, n618, n619, n620, n621, n622, n623, n624,
         n625, n626, n627, n628, n629, n630, n631, n632, n633, n634,
         SIGN_out_stage1, isINF_stage1, isNaN_stage1, isZ_tab_stage1,
         EXP_pos_stage2, isZ_tab_stage2, EXP_neg, isINF_tab, isNaN, I1_I0_N13,
         I1_I1_N13, I3_I11_N26, I3_I11_N25, I3_I11_N24, I3_I11_N23, I3_I11_N22,
         I3_I11_N21, I3_I11_N20, I3_I11_N19, I3_I11_N18, I3_I11_N17,
         I3_I11_N16, I3_I11_N15, I3_I11_N14, I3_I11_N13, I3_I11_N12,
         I3_I11_N11, I3_I11_N10, I3_I11_N9, I3_I11_N8, I3_I11_N7, I3_I11_N6,
         I3_I11_N5, I3_I11_N4, I3_I11_N3, I3_I11_N2, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n76, n77, n78, n79, n80, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n100, n101, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n211, n429, n430,
         n439, n441, n442, n443, n445, n446, n447, n448, n449, n450, n451,
         n452, n453, n454, n455, n456, n457, n458, n459, n460, n461, n462,
         n463, n464, n465, n466, n467, n468, n469, n470, n471, n472, n473,
         n474, n475, n476, n477, n478, n479, n480, n481, n482, n483, n484,
         n485, n486, n487, n488, n489, n490, n491, n492, n493, n494, n495,
         n496, n497, n498, n499, n500, n501, n502, n503, n504, n505, n506,
         n507, n508, n509, n510, n511, n512, n513, n514, n515, n516, n517,
         n518, n519, n520, n521, n522, n523, n524, n525, n526, n527, n528,
         n529, n530, n531, n532, n533, n534, n535, n536, n537, n538, n539,
         n540, n541, n542, n543, n544, n545, n546, n547, n548, n549, n550,
         n551, n552, n553, n554, n555, n556, n557, n558, n559, n560, n561,
         n562, n563, n564, n565, n566, n567, n568, n569, n570, n571, n572,
         n573, n574, n575, n576, n577, n578, n579, n580, n581, n582, n583,
         n584, n585, n586, n587, n588, n589, n590, n591, n592, n593, n594,
         n595, n596, n597, n598, n599, n600, n601, n602,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2;
  wire   [7:0] EXP_in;
  wire   [27:2] SIG_in;
  wire   [7:0] EXP_out_round;
  wire   [27:3] SIG_out_round;
  wire   [26:3] I3_SIG_out_norm;

  XOR2_X1 U147 ( .A(FP_B[31]), .B(FP_A[31]), .Z(SIGN_out_stage1) );
  NAND4_X1 U81 ( .A1(n594), .A2(n596), .A3(n598), .A4(n600), .ZN(n71) );
  NAND4_X1 U80 ( .A1(n586), .A2(n588), .A3(n590), .A4(n592), .ZN(n72) );
  NOR2_X1 U79 ( .A1(n71), .A2(n72), .ZN(n61) );
  NAND4_X1 U103 ( .A1(n532), .A2(n534), .A3(n536), .A4(n538), .ZN(n88) );
  NAND4_X1 U102 ( .A1(n524), .A2(n526), .A3(n528), .A4(n530), .ZN(n89) );
  AOI21_X1 U73 ( .B1(n63), .B2(n64), .A(n65), .ZN(n62) );
  NOR2_X1 U72 ( .A1(n61), .A2(n62), .ZN(isZ_tab_stage1) );
  NOR4_X1 U95 ( .A1(n522), .A2(n484), .A3(n482), .A4(n480), .ZN(n86) );
  NOR4_X1 U96 ( .A1(n520), .A2(n518), .A3(n512), .A4(n516), .ZN(n85) );
  NOR4_X1 U86 ( .A1(n584), .A2(n546), .A3(n544), .A4(n542), .ZN(n79) );
  NOR4_X1 U87 ( .A1(n582), .A2(n580), .A3(n574), .A4(n578), .ZN(n78) );
  NOR4_X1 U99 ( .A1(n500), .A2(n504), .A3(n502), .A4(n498), .ZN(n83) );
  NOR4_X1 U90 ( .A1(n562), .A2(n566), .A3(n564), .A4(n560), .ZN(n76) );
  NOR4_X1 U106 ( .A1(n532), .A2(n534), .A3(n536), .A4(n538), .ZN(n90) );
  NOR4_X1 U105 ( .A1(n524), .A2(n526), .A3(n528), .A4(n530), .ZN(n91) );
  NAND2_X1 U104 ( .A1(n90), .A2(n91), .ZN(I1_I1_N13) );
  NOR4_X1 U109 ( .A1(n594), .A2(n596), .A3(n598), .A4(n600), .ZN(n92) );
  NOR4_X1 U108 ( .A1(n586), .A2(n588), .A3(n590), .A4(n592), .ZN(n93) );
  NAND2_X1 U107 ( .A1(n92), .A2(n93), .ZN(I1_I0_N13) );
  OR2_X1 U101 ( .A1(n88), .A2(n89), .ZN(n64) );
  OR2_X1 U70 ( .A1(SIG_in[27]), .A2(SIG_in[26]), .ZN(I3_SIG_out_norm[26]) );
  OAI21_X1 U148 ( .B1(n167), .B2(n166), .A(n120), .ZN(n168) );
  OR2_X1 U149 ( .A1(n161), .A2(n160), .ZN(n167) );
  NOR2_X1 U150 ( .A1(SIG_out_round[16]), .A2(SIG_out_round[17]), .ZN(n156) );
  OR4_X1 U151 ( .A1(n494), .A2(n486), .A3(n490), .A4(n488), .ZN(n87) );
  NAND2_X1 U152 ( .A1(n94), .A2(n83), .ZN(n104) );
  OR4_X1 U153 ( .A1(n556), .A2(n548), .A3(n552), .A4(n550), .ZN(n80) );
  NAND2_X1 U154 ( .A1(n95), .A2(n76), .ZN(n107) );
  AND2_X1 U155 ( .A1(n114), .A2(n111), .ZN(n110) );
  NOR2_X1 U156 ( .A1(isINF_tab), .A2(isNaN), .ZN(n111) );
  NOR2_X1 U157 ( .A1(n73), .A2(n64), .ZN(n68) );
  NOR2_X1 U158 ( .A1(n70), .A2(n211), .ZN(n69) );
  NAND2_X1 U159 ( .A1(n84), .A2(n103), .ZN(n73) );
  NOR2_X1 U160 ( .A1(n105), .A2(n104), .ZN(n103) );
  NOR4_X1 U161 ( .A1(n478), .A2(n492), .A3(n496), .A4(n87), .ZN(n84) );
  NAND2_X1 U162 ( .A1(n86), .A2(n85), .ZN(n105) );
  NAND2_X1 U163 ( .A1(n77), .A2(n106), .ZN(n70) );
  NOR2_X1 U164 ( .A1(n108), .A2(n107), .ZN(n106) );
  NOR4_X1 U165 ( .A1(n540), .A2(n554), .A3(n558), .A4(n80), .ZN(n77) );
  NAND2_X1 U166 ( .A1(n79), .A2(n78), .ZN(n108) );
  AND2_X1 U167 ( .A1(EXP_out_round[5]), .A2(EXP_out_round[4]), .ZN(n115) );
  XNOR2_X1 U168 ( .A(n148), .B(n117), .ZN(n182) );
  NAND2_X1 U169 ( .A1(EXP_out_round[0]), .A2(SIG_out_round[27]), .ZN(n101) );
  OR2_X1 U170 ( .A1(n69), .A2(n68), .ZN(n66) );
  AOI22_X1 U171 ( .A1(n68), .A2(n63), .B1(n65), .B2(n69), .ZN(n67) );
  NOR2_X1 U172 ( .A1(n73), .A2(I1_I1_N13), .ZN(n65) );
  NOR2_X1 U173 ( .A1(n70), .A2(I1_I0_N13), .ZN(n63) );
  OR2_X1 U174 ( .A1(n176), .A2(isNaN), .ZN(n612) );
  AND2_X1 U175 ( .A1(n67), .A2(n66), .ZN(isINF_stage1) );
  OAI221_X1 U176 ( .B1(n66), .B2(n64), .C1(n66), .C2(n211), .A(n67), .ZN(
        isNaN_stage1) );
  NOR4_X1 U177 ( .A1(n514), .A2(n506), .A3(n510), .A4(n508), .ZN(n94) );
  NOR4_X1 U178 ( .A1(n576), .A2(n568), .A3(n572), .A4(n570), .ZN(n95) );
  AND2_X1 U179 ( .A1(n185), .A2(n189), .ZN(n113) );
  OR2_X1 U180 ( .A1(n134), .A2(n96), .ZN(n114) );
  AND3_X1 U181 ( .A1(EXP_out_round[5]), .A2(EXP_out_round[4]), .A3(
        EXP_out_round[6]), .ZN(n118) );
  XNOR2_X1 U182 ( .A(n109), .B(EXP_out_round[7]), .ZN(n134) );
  NAND4_X1 U183 ( .A1(n159), .A2(n158), .A3(n157), .A4(n156), .ZN(n160) );
  AOI22_X1 U184 ( .A1(n100), .A2(n110), .B1(n192), .B2(n122), .ZN(n97) );
  AOI22_X1 U185 ( .A1(n110), .A2(n100), .B1(n192), .B2(n122), .ZN(n178) );
  NAND4_X1 U186 ( .A1(n134), .A2(n151), .A3(n113), .A4(n187), .ZN(n100) );
  NOR3_X1 U187 ( .A1(n30), .A2(n127), .A3(n129), .ZN(n98) );
  AOI21_X2 U188 ( .B1(SIG_in[2]), .B2(n137), .A(n138), .ZN(n194) );
  NOR3_X1 U190 ( .A1(n30), .A2(n127), .A3(n129), .ZN(n116) );
  NAND2_X1 U191 ( .A1(n100), .A2(n114), .ZN(n169) );
  NAND3_X1 U192 ( .A1(n177), .A2(n180), .A3(n182), .ZN(n150) );
  AND3_X1 U193 ( .A1(EXP_out_round[1]), .A2(SIG_out_round[27]), .A3(
        EXP_out_round[0]), .ZN(n148) );
  XNOR2_X1 U194 ( .A(n101), .B(EXP_out_round[1]), .ZN(n180) );
  NAND3_X1 U196 ( .A1(n118), .A2(n147), .A3(n116), .ZN(n109) );
  INV_X1 U197 ( .A(n170), .ZN(n192) );
  NAND3_X1 U199 ( .A1(n98), .A2(n115), .A3(n147), .ZN(n128) );
  AND2_X1 U200 ( .A1(EXP_out_round[3]), .A2(EXP_out_round[2]), .ZN(n147) );
  INV_X1 U201 ( .A(n136), .ZN(n135) );
  AND2_X1 U202 ( .A1(I3_I11_N26), .A2(n136), .ZN(SIG_out_round[27]) );
  INV_X1 U203 ( .A(n194), .ZN(n136) );
  AND2_X1 U204 ( .A1(SIG_in[27]), .A2(SIG_in[3]), .ZN(n138) );
  INV_X1 U205 ( .A(SIG_in[27]), .ZN(n137) );
  AND3_X1 U206 ( .A1(n142), .A2(EXP_in[5]), .A3(EXP_in[4]), .ZN(n141) );
  AND3_X1 U207 ( .A1(n144), .A2(EXP_in[3]), .A3(EXP_in[2]), .ZN(n142) );
  INV_X1 U208 ( .A(EXP_in[1]), .ZN(n139) );
  INV_X1 U209 ( .A(n187), .ZN(n188) );
  INV_X1 U210 ( .A(n61), .ZN(n211) );
  AND2_X1 U212 ( .A1(n163), .A2(n162), .ZN(n165) );
  INV_X1 U213 ( .A(n180), .ZN(n181) );
  INV_X1 U214 ( .A(n134), .ZN(n193) );
  INV_X1 U215 ( .A(n177), .ZN(n179) );
  INV_X1 U216 ( .A(n182), .ZN(n183) );
  INV_X1 U217 ( .A(n189), .ZN(n190) );
  INV_X1 U218 ( .A(n185), .ZN(n186) );
  XNOR2_X1 U219 ( .A(EXP_in[1]), .B(n146), .ZN(EXP_out_round[1]) );
  XNOR2_X1 U220 ( .A(EXP_in[3]), .B(n145), .ZN(EXP_out_round[3]) );
  NAND2_X1 U221 ( .A1(n144), .A2(EXP_in[2]), .ZN(n145) );
  XNOR2_X1 U222 ( .A(EXP_in[5]), .B(n143), .ZN(EXP_out_round[5]) );
  NAND2_X1 U223 ( .A1(n142), .A2(EXP_in[4]), .ZN(n143) );
  XNOR2_X1 U224 ( .A(EXP_in[7]), .B(n140), .ZN(EXP_out_round[7]) );
  NAND2_X1 U225 ( .A1(EXP_in[6]), .A2(n141), .ZN(n140) );
  NOR2_X1 U226 ( .A1(n139), .A2(n146), .ZN(n144) );
  NAND2_X1 U227 ( .A1(SIG_in[27]), .A2(EXP_in[0]), .ZN(n146) );
  NOR2_X1 U228 ( .A1(SIG_out_round[9]), .A2(SIG_out_round[10]), .ZN(n159) );
  NOR2_X1 U229 ( .A1(SIG_out_round[11]), .A2(SIG_out_round[12]), .ZN(n158) );
  NAND4_X1 U230 ( .A1(n155), .A2(n154), .A3(n153), .A4(n152), .ZN(n161) );
  NOR2_X1 U231 ( .A1(SIG_out_round[22]), .A2(SIG_out_round[23]), .ZN(n152) );
  NOR2_X1 U232 ( .A1(SIG_out_round[20]), .A2(SIG_out_round[21]), .ZN(n153) );
  NOR2_X1 U233 ( .A1(SIG_out_round[18]), .A2(SIG_out_round[19]), .ZN(n154) );
  NOR2_X1 U234 ( .A1(SIG_out_round[25]), .A2(SIG_out_round[24]), .ZN(n155) );
  NAND4_X1 U235 ( .A1(n165), .A2(n164), .A3(n30), .A4(n18), .ZN(n166) );
  NOR3_X1 U236 ( .A1(SIG_out_round[26]), .A2(SIG_out_round[3]), .A3(
        SIG_out_round[4]), .ZN(n164) );
  NOR2_X1 U237 ( .A1(SIG_out_round[7]), .A2(SIG_out_round[8]), .ZN(n162) );
  NOR2_X1 U238 ( .A1(SIG_out_round[5]), .A2(SIG_out_round[6]), .ZN(n163) );
  NOR2_X1 U239 ( .A1(SIG_out_round[13]), .A2(SIG_out_round[15]), .ZN(n157) );
  XNOR2_X1 U241 ( .A(EXP_in[0]), .B(n137), .ZN(EXP_out_round[0]) );
  NOR2_X1 U244 ( .A1(n150), .A2(n184), .ZN(n151) );
  XNOR2_X1 U245 ( .A(n149), .B(n121), .ZN(n184) );
  XNOR2_X1 U247 ( .A(n130), .B(n131), .ZN(n187) );
  NOR2_X1 U248 ( .A1(n132), .A2(n119), .ZN(n130) );
  NAND2_X1 U249 ( .A1(n148), .A2(n147), .ZN(n132) );
  XNOR2_X1 U250 ( .A(n132), .B(EXP_out_round[4]), .ZN(n185) );
  NAND2_X1 U251 ( .A1(n148), .A2(EXP_out_round[2]), .ZN(n149) );
  AOI21_X1 U252 ( .B1(n134), .B2(EXP_neg), .A(n168), .ZN(n170) );
  OAI21_X1 U253 ( .B1(n477), .B2(n471), .A(n469), .ZN(n605) );
  OAI21_X1 U254 ( .B1(n477), .B2(n476), .A(n469), .ZN(n606) );
  OAI21_X1 U255 ( .B1(n477), .B2(n470), .A(n469), .ZN(n607) );
  OAI21_X1 U256 ( .B1(n477), .B2(n439), .A(n469), .ZN(n608) );
  OAI21_X1 U257 ( .B1(n477), .B2(n472), .A(n469), .ZN(n609) );
  OAI21_X1 U258 ( .B1(n477), .B2(n475), .A(n469), .ZN(n610) );
  OAI21_X1 U259 ( .B1(n477), .B2(n473), .A(n469), .ZN(n611) );
  OAI21_X1 U260 ( .B1(n474), .B2(n477), .A(n469), .ZN(n604) );
  NOR3_X1 U261 ( .A1(n175), .A2(n192), .A3(n174), .ZN(n176) );
  OAI21_X1 U262 ( .B1(n169), .B2(isINF_tab), .A(n170), .ZN(n133) );
  XNOR2_X1 U263 ( .A(n128), .B(EXP_out_round[6]), .ZN(n189) );
  INV_X1 U264 ( .A(n97), .ZN(n191) );
  INV_X1 U265 ( .A(n133), .ZN(n175) );
  OAI22_X1 U266 ( .A1(n466), .A2(n429), .B1(n430), .B2(n467), .ZN(n613) );
  OAI22_X1 U267 ( .A1(n465), .A2(n429), .B1(n430), .B2(n466), .ZN(n614) );
  OAI22_X1 U268 ( .A1(n464), .A2(n429), .B1(n430), .B2(n465), .ZN(n615) );
  OAI22_X1 U269 ( .A1(n463), .A2(n429), .B1(n430), .B2(n464), .ZN(n616) );
  OAI22_X1 U270 ( .A1(n462), .A2(n429), .B1(n430), .B2(n463), .ZN(n617) );
  OAI22_X1 U271 ( .A1(n461), .A2(n429), .B1(n430), .B2(n462), .ZN(n618) );
  OAI22_X1 U272 ( .A1(n460), .A2(n429), .B1(n430), .B2(n461), .ZN(n619) );
  OAI22_X1 U273 ( .A1(n459), .A2(n429), .B1(n430), .B2(n460), .ZN(n620) );
  OAI22_X1 U274 ( .A1(n458), .A2(n429), .B1(n430), .B2(n459), .ZN(n621) );
  OAI22_X1 U275 ( .A1(n468), .A2(n429), .B1(n430), .B2(n458), .ZN(n622) );
  OAI22_X1 U276 ( .A1(n457), .A2(n429), .B1(n430), .B2(n468), .ZN(n623) );
  OAI22_X1 U277 ( .A1(n455), .A2(n429), .B1(n430), .B2(n456), .ZN(n625) );
  OAI22_X1 U278 ( .A1(n454), .A2(n429), .B1(n430), .B2(n455), .ZN(n626) );
  OAI22_X1 U279 ( .A1(n453), .A2(n429), .B1(n430), .B2(n454), .ZN(n627) );
  OAI22_X1 U280 ( .A1(n452), .A2(n429), .B1(n430), .B2(n453), .ZN(n628) );
  OAI22_X1 U281 ( .A1(n451), .A2(n429), .B1(n430), .B2(n452), .ZN(n629) );
  OAI22_X1 U282 ( .A1(n450), .A2(n429), .B1(n430), .B2(n451), .ZN(n630) );
  OAI22_X1 U283 ( .A1(n449), .A2(n429), .B1(n430), .B2(n450), .ZN(n631) );
  OAI22_X1 U284 ( .A1(n448), .A2(n429), .B1(n430), .B2(n449), .ZN(n632) );
  OAI22_X1 U285 ( .A1(n447), .A2(n429), .B1(n430), .B2(n448), .ZN(n633) );
  OAI22_X1 U286 ( .A1(n457), .A2(n430), .B1(n429), .B2(n456), .ZN(n624) );
  OAI22_X1 U287 ( .A1(n447), .A2(n430), .B1(n429), .B2(n446), .ZN(n634) );
  OAI22_X1 U288 ( .A1(SIG_out_round[27]), .A2(SIG_out_round[25]), .B1(
        SIG_out_round[26]), .B2(n30), .ZN(n174) );
  XNOR2_X1 U289 ( .A(n129), .B(SIG_out_round[27]), .ZN(n177) );
  MUX2_X1 U290 ( .A(SIG_in[25]), .B(SIG_in[26]), .S(SIG_in[27]), .Z(
        I3_SIG_out_norm[25]) );
  MUX2_X1 U291 ( .A(SIG_in[24]), .B(SIG_in[25]), .S(SIG_in[27]), .Z(
        I3_SIG_out_norm[24]) );
  MUX2_X1 U292 ( .A(SIG_in[23]), .B(SIG_in[24]), .S(SIG_in[27]), .Z(
        I3_SIG_out_norm[23]) );
  MUX2_X1 U293 ( .A(SIG_in[22]), .B(SIG_in[23]), .S(SIG_in[27]), .Z(
        I3_SIG_out_norm[22]) );
  MUX2_X1 U294 ( .A(SIG_in[21]), .B(SIG_in[22]), .S(SIG_in[27]), .Z(
        I3_SIG_out_norm[21]) );
  MUX2_X1 U295 ( .A(SIG_in[20]), .B(SIG_in[21]), .S(SIG_in[27]), .Z(
        I3_SIG_out_norm[20]) );
  MUX2_X1 U296 ( .A(SIG_in[19]), .B(SIG_in[20]), .S(SIG_in[27]), .Z(
        I3_SIG_out_norm[19]) );
  MUX2_X1 U297 ( .A(SIG_in[18]), .B(SIG_in[19]), .S(SIG_in[27]), .Z(
        I3_SIG_out_norm[18]) );
  MUX2_X1 U298 ( .A(SIG_in[17]), .B(SIG_in[18]), .S(SIG_in[27]), .Z(
        I3_SIG_out_norm[17]) );
  MUX2_X1 U299 ( .A(SIG_in[16]), .B(SIG_in[17]), .S(SIG_in[27]), .Z(
        I3_SIG_out_norm[16]) );
  MUX2_X1 U300 ( .A(SIG_in[15]), .B(SIG_in[16]), .S(SIG_in[27]), .Z(
        I3_SIG_out_norm[15]) );
  MUX2_X1 U301 ( .A(SIG_in[14]), .B(SIG_in[15]), .S(SIG_in[27]), .Z(
        I3_SIG_out_norm[14]) );
  MUX2_X1 U302 ( .A(SIG_in[13]), .B(SIG_in[14]), .S(SIG_in[27]), .Z(
        I3_SIG_out_norm[13]) );
  MUX2_X1 U303 ( .A(SIG_in[12]), .B(SIG_in[13]), .S(SIG_in[27]), .Z(
        I3_SIG_out_norm[12]) );
  MUX2_X1 U304 ( .A(SIG_in[11]), .B(SIG_in[12]), .S(SIG_in[27]), .Z(
        I3_SIG_out_norm[11]) );
  MUX2_X1 U305 ( .A(SIG_in[10]), .B(SIG_in[11]), .S(SIG_in[27]), .Z(
        I3_SIG_out_norm[10]) );
  MUX2_X1 U306 ( .A(SIG_in[9]), .B(SIG_in[10]), .S(SIG_in[27]), .Z(
        I3_SIG_out_norm[9]) );
  MUX2_X1 U307 ( .A(SIG_in[8]), .B(SIG_in[9]), .S(SIG_in[27]), .Z(
        I3_SIG_out_norm[8]) );
  MUX2_X1 U308 ( .A(SIG_in[7]), .B(SIG_in[8]), .S(SIG_in[27]), .Z(
        I3_SIG_out_norm[7]) );
  MUX2_X1 U309 ( .A(SIG_in[6]), .B(SIG_in[7]), .S(SIG_in[27]), .Z(
        I3_SIG_out_norm[6]) );
  MUX2_X1 U310 ( .A(SIG_in[5]), .B(SIG_in[6]), .S(SIG_in[27]), .Z(
        I3_SIG_out_norm[5]) );
  MUX2_X1 U311 ( .A(SIG_in[4]), .B(SIG_in[5]), .S(SIG_in[27]), .Z(
        I3_SIG_out_norm[4]) );
  MUX2_X1 U312 ( .A(SIG_in[3]), .B(SIG_in[4]), .S(SIG_in[27]), .Z(
        I3_SIG_out_norm[3]) );
  XOR2_X1 U313 ( .A(EXP_in[6]), .B(n141), .Z(EXP_out_round[6]) );
  XOR2_X1 U314 ( .A(n142), .B(EXP_in[4]), .Z(EXP_out_round[4]) );
  XOR2_X1 U315 ( .A(n144), .B(EXP_in[2]), .Z(EXP_out_round[2]) );
  OR3_X1 U316 ( .A1(n178), .A2(n192), .A3(n30), .ZN(n172) );
  OR3_X1 U317 ( .A1(n97), .A2(n192), .A3(SIG_out_round[27]), .ZN(n173) );
  DFF_X1 clk1_r_REG2_S1 ( .D(FP_A[30]), .CK(clk), .Q(n601) );
  DFF_X1 clk1_r_REG3_S2 ( .D(n601), .CK(clk), .Q(n600) );
  DFF_X1 clk1_r_REG4_S1 ( .D(FP_A[29]), .CK(clk), .Q(n599) );
  DFF_X1 clk1_r_REG5_S2 ( .D(n599), .CK(clk), .Q(n598) );
  DFF_X1 clk1_r_REG6_S1 ( .D(FP_A[28]), .CK(clk), .Q(n597) );
  DFF_X1 clk1_r_REG7_S2 ( .D(n597), .CK(clk), .Q(n596) );
  DFF_X1 clk1_r_REG8_S1 ( .D(FP_A[27]), .CK(clk), .Q(n595) );
  DFF_X1 clk1_r_REG9_S2 ( .D(n595), .CK(clk), .Q(n594) );
  DFF_X1 clk1_r_REG10_S1 ( .D(FP_A[26]), .CK(clk), .Q(n593) );
  DFF_X1 clk1_r_REG11_S2 ( .D(n593), .CK(clk), .Q(n592) );
  DFF_X1 clk1_r_REG12_S1 ( .D(FP_A[25]), .CK(clk), .Q(n591) );
  DFF_X1 clk1_r_REG13_S2 ( .D(n591), .CK(clk), .Q(n590) );
  DFF_X1 clk1_r_REG14_S1 ( .D(FP_A[24]), .CK(clk), .Q(n589) );
  DFF_X1 clk1_r_REG15_S2 ( .D(n589), .CK(clk), .Q(n588) );
  DFF_X1 clk1_r_REG16_S1 ( .D(FP_A[23]), .CK(clk), .Q(n587) );
  DFF_X1 clk1_r_REG17_S2 ( .D(n587), .CK(clk), .Q(n586) );
  DFF_X1 clk1_r_REG18_S1 ( .D(FP_A[22]), .CK(clk), .Q(n585) );
  DFF_X1 clk1_r_REG19_S2 ( .D(n585), .CK(clk), .Q(n584) );
  DFF_X1 clk1_r_REG20_S1 ( .D(FP_A[21]), .CK(clk), .Q(n583) );
  DFF_X1 clk1_r_REG21_S2 ( .D(n583), .CK(clk), .Q(n582) );
  DFF_X1 clk1_r_REG22_S1 ( .D(FP_A[20]), .CK(clk), .Q(n581) );
  DFF_X1 clk1_r_REG23_S2 ( .D(n581), .CK(clk), .Q(n580) );
  DFF_X1 clk1_r_REG24_S1 ( .D(FP_A[19]), .CK(clk), .Q(n579) );
  DFF_X1 clk1_r_REG25_S2 ( .D(n579), .CK(clk), .Q(n578) );
  DFF_X1 clk1_r_REG26_S1 ( .D(FP_A[18]), .CK(clk), .Q(n577) );
  DFF_X1 clk1_r_REG27_S2 ( .D(n577), .CK(clk), .Q(n576) );
  DFF_X1 clk1_r_REG28_S1 ( .D(FP_A[17]), .CK(clk), .Q(n575) );
  DFF_X1 clk1_r_REG29_S2 ( .D(n575), .CK(clk), .Q(n574) );
  DFF_X1 clk1_r_REG30_S1 ( .D(FP_A[16]), .CK(clk), .Q(n573) );
  DFF_X1 clk1_r_REG31_S2 ( .D(n573), .CK(clk), .Q(n572) );
  DFF_X1 clk1_r_REG32_S1 ( .D(FP_A[15]), .CK(clk), .Q(n571) );
  DFF_X1 clk1_r_REG33_S2 ( .D(n571), .CK(clk), .Q(n570) );
  DFF_X1 clk1_r_REG34_S1 ( .D(FP_A[14]), .CK(clk), .Q(n569) );
  DFF_X1 clk1_r_REG35_S2 ( .D(n569), .CK(clk), .Q(n568) );
  DFF_X1 clk1_r_REG36_S1 ( .D(FP_A[13]), .CK(clk), .Q(n567) );
  DFF_X1 clk1_r_REG37_S2 ( .D(n567), .CK(clk), .Q(n566) );
  DFF_X1 clk1_r_REG38_S1 ( .D(FP_A[12]), .CK(clk), .Q(n565) );
  DFF_X1 clk1_r_REG39_S2 ( .D(n565), .CK(clk), .Q(n564) );
  DFF_X1 clk1_r_REG40_S1 ( .D(FP_A[11]), .CK(clk), .Q(n563) );
  DFF_X1 clk1_r_REG41_S2 ( .D(n563), .CK(clk), .Q(n562) );
  DFF_X1 clk1_r_REG42_S1 ( .D(FP_A[10]), .CK(clk), .Q(n561) );
  DFF_X1 clk1_r_REG43_S2 ( .D(n561), .CK(clk), .Q(n560) );
  DFF_X1 clk1_r_REG44_S1 ( .D(FP_A[9]), .CK(clk), .Q(n559) );
  DFF_X1 clk1_r_REG45_S2 ( .D(n559), .CK(clk), .Q(n558) );
  DFF_X1 clk1_r_REG46_S1 ( .D(FP_A[8]), .CK(clk), .Q(n557) );
  DFF_X1 clk1_r_REG47_S2 ( .D(n557), .CK(clk), .Q(n556) );
  DFF_X1 clk1_r_REG48_S1 ( .D(FP_A[7]), .CK(clk), .Q(n555) );
  DFF_X1 clk1_r_REG49_S2 ( .D(n555), .CK(clk), .Q(n554) );
  DFF_X1 clk1_r_REG50_S1 ( .D(FP_A[6]), .CK(clk), .Q(n553) );
  DFF_X1 clk1_r_REG51_S2 ( .D(n553), .CK(clk), .Q(n552) );
  DFF_X1 clk1_r_REG52_S1 ( .D(FP_A[5]), .CK(clk), .Q(n551) );
  DFF_X1 clk1_r_REG53_S2 ( .D(n551), .CK(clk), .Q(n550) );
  DFF_X1 clk1_r_REG54_S1 ( .D(FP_A[4]), .CK(clk), .Q(n549) );
  DFF_X1 clk1_r_REG55_S2 ( .D(n549), .CK(clk), .Q(n548) );
  DFF_X1 clk1_r_REG56_S1 ( .D(FP_A[3]), .CK(clk), .Q(n547) );
  DFF_X1 clk1_r_REG57_S2 ( .D(n547), .CK(clk), .Q(n546) );
  DFF_X1 clk1_r_REG58_S1 ( .D(FP_A[2]), .CK(clk), .Q(n545) );
  DFF_X1 clk1_r_REG59_S2 ( .D(n545), .CK(clk), .Q(n544) );
  DFF_X1 clk1_r_REG60_S1 ( .D(FP_A[1]), .CK(clk), .Q(n543) );
  DFF_X1 clk1_r_REG61_S2 ( .D(n543), .CK(clk), .Q(n542) );
  DFF_X1 clk1_r_REG62_S1 ( .D(FP_A[0]), .CK(clk), .Q(n541) );
  DFF_X1 clk1_r_REG63_S2 ( .D(n541), .CK(clk), .Q(n540) );
  DFF_X1 clk1_r_REG64_S1 ( .D(FP_B[30]), .CK(clk), .Q(n539) );
  DFF_X1 clk1_r_REG65_S2 ( .D(n539), .CK(clk), .Q(n538) );
  DFF_X1 clk1_r_REG66_S1 ( .D(FP_B[29]), .CK(clk), .Q(n537) );
  DFF_X1 clk1_r_REG67_S2 ( .D(n537), .CK(clk), .Q(n536) );
  DFF_X1 clk1_r_REG68_S1 ( .D(FP_B[28]), .CK(clk), .Q(n535) );
  DFF_X1 clk1_r_REG69_S2 ( .D(n535), .CK(clk), .Q(n534) );
  DFF_X1 clk1_r_REG70_S1 ( .D(FP_B[27]), .CK(clk), .Q(n533) );
  DFF_X1 clk1_r_REG71_S2 ( .D(n533), .CK(clk), .Q(n532) );
  DFF_X1 clk1_r_REG72_S1 ( .D(FP_B[26]), .CK(clk), .Q(n531) );
  DFF_X1 clk1_r_REG73_S2 ( .D(n531), .CK(clk), .Q(n530) );
  DFF_X1 clk1_r_REG74_S1 ( .D(FP_B[25]), .CK(clk), .Q(n529) );
  DFF_X1 clk1_r_REG75_S2 ( .D(n529), .CK(clk), .Q(n528) );
  DFF_X1 clk1_r_REG76_S1 ( .D(FP_B[24]), .CK(clk), .Q(n527) );
  DFF_X1 clk1_r_REG77_S2 ( .D(n527), .CK(clk), .Q(n526) );
  DFF_X1 clk1_r_REG78_S1 ( .D(FP_B[23]), .CK(clk), .Q(n525) );
  DFF_X1 clk1_r_REG79_S2 ( .D(n525), .CK(clk), .Q(n524) );
  DFF_X1 clk1_r_REG80_S1 ( .D(FP_B[22]), .CK(clk), .Q(n523) );
  DFF_X1 clk1_r_REG81_S2 ( .D(n523), .CK(clk), .Q(n522) );
  DFF_X1 clk1_r_REG82_S1 ( .D(FP_B[21]), .CK(clk), .Q(n521) );
  DFF_X1 clk1_r_REG83_S2 ( .D(n521), .CK(clk), .Q(n520) );
  DFF_X1 clk1_r_REG84_S1 ( .D(FP_B[20]), .CK(clk), .Q(n519) );
  DFF_X1 clk1_r_REG85_S2 ( .D(n519), .CK(clk), .Q(n518) );
  DFF_X1 clk1_r_REG86_S1 ( .D(FP_B[19]), .CK(clk), .Q(n517) );
  DFF_X1 clk1_r_REG87_S2 ( .D(n517), .CK(clk), .Q(n516) );
  DFF_X1 clk1_r_REG88_S1 ( .D(FP_B[18]), .CK(clk), .Q(n515) );
  DFF_X1 clk1_r_REG89_S2 ( .D(n515), .CK(clk), .Q(n514) );
  DFF_X1 clk1_r_REG90_S1 ( .D(FP_B[17]), .CK(clk), .Q(n513) );
  DFF_X1 clk1_r_REG91_S2 ( .D(n513), .CK(clk), .Q(n512) );
  DFF_X1 clk1_r_REG92_S1 ( .D(FP_B[16]), .CK(clk), .Q(n511) );
  DFF_X1 clk1_r_REG93_S2 ( .D(n511), .CK(clk), .Q(n510) );
  DFF_X1 clk1_r_REG94_S1 ( .D(FP_B[15]), .CK(clk), .Q(n509) );
  DFF_X1 clk1_r_REG95_S2 ( .D(n509), .CK(clk), .Q(n508) );
  DFF_X1 clk1_r_REG96_S1 ( .D(FP_B[14]), .CK(clk), .Q(n507) );
  DFF_X1 clk1_r_REG97_S2 ( .D(n507), .CK(clk), .Q(n506) );
  DFF_X1 clk1_r_REG98_S1 ( .D(FP_B[13]), .CK(clk), .Q(n505) );
  DFF_X1 clk1_r_REG99_S2 ( .D(n505), .CK(clk), .Q(n504) );
  DFF_X1 clk1_r_REG100_S1 ( .D(FP_B[12]), .CK(clk), .Q(n503) );
  DFF_X1 clk1_r_REG101_S2 ( .D(n503), .CK(clk), .Q(n502) );
  DFF_X1 clk1_r_REG102_S1 ( .D(FP_B[11]), .CK(clk), .Q(n501) );
  DFF_X1 clk1_r_REG103_S2 ( .D(n501), .CK(clk), .Q(n500) );
  DFF_X1 clk1_r_REG104_S1 ( .D(FP_B[10]), .CK(clk), .Q(n499) );
  DFF_X1 clk1_r_REG105_S2 ( .D(n499), .CK(clk), .Q(n498) );
  DFF_X1 clk1_r_REG106_S1 ( .D(FP_B[9]), .CK(clk), .Q(n497) );
  DFF_X1 clk1_r_REG107_S2 ( .D(n497), .CK(clk), .Q(n496) );
  DFF_X1 clk1_r_REG108_S1 ( .D(FP_B[8]), .CK(clk), .Q(n495) );
  DFF_X1 clk1_r_REG109_S2 ( .D(n495), .CK(clk), .Q(n494) );
  DFF_X1 clk1_r_REG110_S1 ( .D(FP_B[7]), .CK(clk), .Q(n493) );
  DFF_X1 clk1_r_REG111_S2 ( .D(n493), .CK(clk), .Q(n492) );
  DFF_X1 clk1_r_REG112_S1 ( .D(FP_B[6]), .CK(clk), .Q(n491) );
  DFF_X1 clk1_r_REG113_S2 ( .D(n491), .CK(clk), .Q(n490) );
  DFF_X1 clk1_r_REG114_S1 ( .D(FP_B[5]), .CK(clk), .Q(n489) );
  DFF_X1 clk1_r_REG115_S2 ( .D(n489), .CK(clk), .Q(n488) );
  DFF_X1 clk1_r_REG116_S1 ( .D(FP_B[4]), .CK(clk), .Q(n487) );
  DFF_X1 clk1_r_REG117_S2 ( .D(n487), .CK(clk), .Q(n486) );
  DFF_X1 clk1_r_REG118_S1 ( .D(FP_B[3]), .CK(clk), .Q(n485) );
  DFF_X1 clk1_r_REG119_S2 ( .D(n485), .CK(clk), .Q(n484) );
  DFF_X1 clk1_r_REG120_S1 ( .D(FP_B[2]), .CK(clk), .Q(n483) );
  DFF_X1 clk1_r_REG121_S2 ( .D(n483), .CK(clk), .Q(n482) );
  DFF_X1 clk1_r_REG122_S1 ( .D(FP_B[1]), .CK(clk), .Q(n481) );
  DFF_X1 clk1_r_REG123_S2 ( .D(n481), .CK(clk), .Q(n480) );
  DFF_X1 clk1_r_REG124_S1 ( .D(FP_B[0]), .CK(clk), .Q(n479) );
  DFF_X1 clk1_r_REG125_S2 ( .D(n479), .CK(clk), .Q(n478) );
  DFF_X1 clk1_r_REG126_S1 ( .D(n192), .CK(clk), .Q(n477) );
  DFF_X1 clk1_r_REG127_S1 ( .D(n188), .CK(clk), .Q(n476) );
  DFF_X1 clk1_r_REG128_S1 ( .D(n181), .CK(clk), .Q(n475) );
  DFF_X1 clk1_r_REG129_S1 ( .D(n193), .CK(clk), .Q(n474) );
  DFF_X1 clk1_r_REG130_S1 ( .D(n179), .CK(clk), .Q(n473) );
  DFF_X1 clk1_r_REG131_S1 ( .D(n183), .CK(clk), .Q(n472) );
  DFF_X1 clk1_r_REG132_S1 ( .D(n190), .CK(clk), .Q(n471) );
  DFF_X1 clk1_r_REG133_S1 ( .D(n186), .CK(clk), .Q(n470) );
  DFF_X1 clk1_r_REG134_S1 ( .D(n191), .CK(clk), .Q(n469) );
  DFF_X1 clk1_r_REG135_S1 ( .D(n19), .CK(clk), .Q(n468) );
  DFF_X1 clk1_r_REG136_S1 ( .D(n29), .CK(clk), .Q(n467) );
  DFF_X1 clk1_r_REG137_S1 ( .D(n28), .CK(clk), .Q(n466) );
  DFF_X1 clk1_r_REG138_S1 ( .D(n27), .CK(clk), .Q(n465) );
  DFF_X1 clk1_r_REG139_S1 ( .D(n26), .CK(clk), .Q(n464) );
  DFF_X1 clk1_r_REG140_S1 ( .D(n25), .CK(clk), .Q(n463) );
  DFF_X1 clk1_r_REG141_S1 ( .D(n24), .CK(clk), .Q(n462) );
  DFF_X1 clk1_r_REG142_S1 ( .D(n23), .CK(clk), .Q(n461) );
  DFF_X1 clk1_r_REG143_S1 ( .D(n22), .CK(clk), .Q(n460) );
  DFF_X1 clk1_r_REG144_S1 ( .D(n21), .CK(clk), .Q(n459) );
  DFF_X1 clk1_r_REG145_S1 ( .D(n20), .CK(clk), .Q(n458) );
  DFF_X1 clk1_r_REG146_S1 ( .D(n18), .CK(clk), .Q(n457) );
  DFF_X1 clk1_r_REG147_S1 ( .D(n17), .CK(clk), .Q(n456) );
  DFF_X1 clk1_r_REG148_S1 ( .D(n16), .CK(clk), .Q(n455) );
  DFF_X1 clk1_r_REG149_S1 ( .D(n15), .CK(clk), .Q(n454) );
  DFF_X1 clk1_r_REG150_S1 ( .D(n14), .CK(clk), .Q(n453) );
  DFF_X1 clk1_r_REG151_S1 ( .D(n13), .CK(clk), .Q(n452) );
  DFF_X1 clk1_r_REG152_S1 ( .D(n12), .CK(clk), .Q(n451) );
  DFF_X1 clk1_r_REG153_S1 ( .D(n11), .CK(clk), .Q(n450) );
  DFF_X1 clk1_r_REG154_S1 ( .D(n10), .CK(clk), .Q(n449) );
  DFF_X1 clk1_r_REG155_S1 ( .D(n9), .CK(clk), .Q(n448) );
  DFF_X1 clk1_r_REG156_S1 ( .D(n8), .CK(clk), .Q(n447) );
  DFF_X1 clk1_r_REG157_S1 ( .D(n7), .CK(clk), .Q(n446) );
  DFF_X1 clk1_r_REG158_S1 ( .D(n603), .CK(clk), .Q(n445) );
  DFF_X1 clk1_r_REG159_S1 ( .D(n445), .CK(clk), .Q(FP_Z[31]) );
  DFF_X1 clk1_r_REG0_S1 ( .D(SIGN_out_stage1), .CK(clk), .Q(n443) );
  DFF_X1 clk1_r_REG1_S2 ( .D(n443), .CK(clk), .Q(n442) );
  DFF_X1 clk1_r_REG160_S1 ( .D(n612), .CK(clk), .Q(n441) );
  DFF_X1 clk1_r_REG161_S1 ( .D(n441), .CK(clk), .Q(FP_Z[22]) );
  DFF_X1 clk1_r_REG162_S1 ( .D(n184), .CK(clk), .Q(n439) );
  DFF_X1 clk1_r_REG163_S1 ( .D(n605), .CK(clk), .Q(FP_Z[29]) );
  DFF_X1 clk1_r_REG164_S1 ( .D(n606), .CK(clk), .Q(FP_Z[28]) );
  DFF_X1 clk1_r_REG165_S1 ( .D(n607), .CK(clk), .Q(FP_Z[27]) );
  DFF_X1 clk1_r_REG166_S1 ( .D(n608), .CK(clk), .Q(FP_Z[26]) );
  DFF_X1 clk1_r_REG167_S1 ( .D(n609), .CK(clk), .Q(FP_Z[25]) );
  DFF_X1 clk1_r_REG168_S1 ( .D(n610), .CK(clk), .Q(FP_Z[24]) );
  DFF_X1 clk1_r_REG169_S1 ( .D(n611), .CK(clk), .Q(FP_Z[23]) );
  DFF_X1 clk1_r_REG170_S1 ( .D(n604), .CK(clk), .Q(FP_Z[30]) );
  DFF_X1 clk1_r_REG171_S1 ( .D(n172), .CK(clk), .Q(n430) );
  DFF_X1 clk1_r_REG172_S1 ( .D(n173), .CK(clk), .Q(n429) );
  DFF_X1 clk1_r_REG173_S1 ( .D(n613), .CK(clk), .Q(FP_Z[21]) );
  DFF_X1 clk1_r_REG174_S1 ( .D(n614), .CK(clk), .Q(FP_Z[20]) );
  DFF_X1 clk1_r_REG175_S1 ( .D(n615), .CK(clk), .Q(FP_Z[19]) );
  DFF_X1 clk1_r_REG176_S1 ( .D(n616), .CK(clk), .Q(FP_Z[18]) );
  DFF_X1 clk1_r_REG177_S1 ( .D(n617), .CK(clk), .Q(FP_Z[17]) );
  DFF_X1 clk1_r_REG178_S1 ( .D(n618), .CK(clk), .Q(FP_Z[16]) );
  DFF_X1 clk1_r_REG179_S1 ( .D(n619), .CK(clk), .Q(FP_Z[15]) );
  DFF_X1 clk1_r_REG180_S1 ( .D(n620), .CK(clk), .Q(FP_Z[14]) );
  DFF_X1 clk1_r_REG181_S1 ( .D(n621), .CK(clk), .Q(FP_Z[13]) );
  DFF_X1 clk1_r_REG182_S1 ( .D(n622), .CK(clk), .Q(FP_Z[12]) );
  DFF_X1 clk1_r_REG183_S1 ( .D(n623), .CK(clk), .Q(FP_Z[11]) );
  DFF_X1 clk1_r_REG184_S1 ( .D(n625), .CK(clk), .Q(FP_Z[9]) );
  DFF_X1 clk1_r_REG185_S1 ( .D(n626), .CK(clk), .Q(FP_Z[8]) );
  DFF_X1 clk1_r_REG186_S1 ( .D(n627), .CK(clk), .Q(FP_Z[7]) );
  DFF_X1 clk1_r_REG187_S1 ( .D(n628), .CK(clk), .Q(FP_Z[6]) );
  DFF_X1 clk1_r_REG188_S1 ( .D(n629), .CK(clk), .Q(FP_Z[5]) );
  DFF_X1 clk1_r_REG189_S1 ( .D(n630), .CK(clk), .Q(FP_Z[4]) );
  DFF_X1 clk1_r_REG190_S1 ( .D(n631), .CK(clk), .Q(FP_Z[3]) );
  DFF_X1 clk1_r_REG191_S1 ( .D(n632), .CK(clk), .Q(FP_Z[2]) );
  DFF_X1 clk1_r_REG192_S1 ( .D(n633), .CK(clk), .Q(FP_Z[1]) );
  DFF_X1 clk1_r_REG193_S1 ( .D(n624), .CK(clk), .Q(FP_Z[10]) );
  DFF_X1 clk1_r_REG194_S1 ( .D(n634), .CK(clk), .Q(FP_Z[0]) );
  INV_X1 U189 ( .A(EXP_pos_stage2), .ZN(n96) );
  INV_X1 U334 ( .A(isZ_tab_stage2), .ZN(n120) );
  INV_X1 U335 ( .A(isNaN), .ZN(n122) );
  INV_X1 U336 ( .A(SIG_out_round[3]), .ZN(n7) );
  INV_X1 U337 ( .A(SIG_out_round[4]), .ZN(n8) );
  INV_X1 U338 ( .A(SIG_out_round[5]), .ZN(n9) );
  INV_X1 U339 ( .A(SIG_out_round[6]), .ZN(n10) );
  INV_X1 U340 ( .A(SIG_out_round[7]), .ZN(n11) );
  INV_X1 U341 ( .A(SIG_out_round[8]), .ZN(n12) );
  INV_X1 U342 ( .A(SIG_out_round[9]), .ZN(n13) );
  INV_X1 U343 ( .A(SIG_out_round[10]), .ZN(n14) );
  INV_X1 U344 ( .A(SIG_out_round[11]), .ZN(n15) );
  INV_X1 U345 ( .A(SIG_out_round[12]), .ZN(n16) );
  INV_X1 U346 ( .A(SIG_out_round[13]), .ZN(n17) );
  INV_X1 U347 ( .A(n602), .ZN(n18) );
  INV_X1 U348 ( .A(SIG_out_round[16]), .ZN(n20) );
  INV_X1 U349 ( .A(SIG_out_round[17]), .ZN(n21) );
  INV_X1 U350 ( .A(SIG_out_round[18]), .ZN(n22) );
  INV_X1 U351 ( .A(SIG_out_round[19]), .ZN(n23) );
  INV_X1 U352 ( .A(SIG_out_round[20]), .ZN(n24) );
  INV_X1 U353 ( .A(SIG_out_round[21]), .ZN(n25) );
  INV_X1 U354 ( .A(SIG_out_round[22]), .ZN(n26) );
  INV_X1 U355 ( .A(SIG_out_round[23]), .ZN(n27) );
  INV_X1 U356 ( .A(SIG_out_round[24]), .ZN(n28) );
  INV_X1 U357 ( .A(SIG_out_round[25]), .ZN(n29) );
  INV_X1 U358 ( .A(SIG_out_round[27]), .ZN(n30) );
  INV_X1 U359 ( .A(EXP_out_round[1]), .ZN(n127) );
  INV_X1 U360 ( .A(EXP_out_round[3]), .ZN(n121) );
  INV_X1 U361 ( .A(EXP_out_round[5]), .ZN(n131) );
  INV_X1 U362 ( .A(SIG_out_round[15]), .ZN(n19) );
  INV_X1 U363 ( .A(EXP_out_round[0]), .ZN(n129) );
  INV_X1 U364 ( .A(EXP_out_round[2]), .ZN(n117) );
  INV_X1 U365 ( .A(EXP_out_round[4]), .ZN(n119) );
  MUX2_X1 U366 ( .A(I3_I11_N2), .B(I3_SIG_out_norm[3]), .S(n135), .Z(
        SIG_out_round[3]) );
  MUX2_X1 U367 ( .A(I3_I11_N3), .B(I3_SIG_out_norm[4]), .S(n135), .Z(
        SIG_out_round[4]) );
  MUX2_X1 U368 ( .A(I3_I11_N4), .B(I3_SIG_out_norm[5]), .S(n135), .Z(
        SIG_out_round[5]) );
  MUX2_X1 U369 ( .A(I3_I11_N5), .B(I3_SIG_out_norm[6]), .S(n135), .Z(
        SIG_out_round[6]) );
  MUX2_X1 U370 ( .A(I3_I11_N6), .B(I3_SIG_out_norm[7]), .S(n135), .Z(
        SIG_out_round[7]) );
  MUX2_X1 U371 ( .A(I3_I11_N7), .B(I3_SIG_out_norm[8]), .S(n135), .Z(
        SIG_out_round[8]) );
  MUX2_X1 U372 ( .A(I3_I11_N8), .B(I3_SIG_out_norm[9]), .S(n135), .Z(
        SIG_out_round[9]) );
  MUX2_X1 U373 ( .A(I3_I11_N9), .B(I3_SIG_out_norm[10]), .S(n135), .Z(
        SIG_out_round[10]) );
  MUX2_X1 U374 ( .A(I3_I11_N10), .B(I3_SIG_out_norm[11]), .S(n135), .Z(
        SIG_out_round[11]) );
  MUX2_X1 U375 ( .A(I3_I11_N11), .B(I3_SIG_out_norm[12]), .S(n135), .Z(
        SIG_out_round[12]) );
  MUX2_X1 U376 ( .A(I3_I11_N12), .B(I3_SIG_out_norm[13]), .S(n135), .Z(
        SIG_out_round[13]) );
  MUX2_X1 U377 ( .A(I3_I11_N13), .B(I3_SIG_out_norm[14]), .S(n194), .Z(n602)
         );
  MUX2_X1 U378 ( .A(I3_I11_N15), .B(I3_SIG_out_norm[16]), .S(n194), .Z(
        SIG_out_round[16]) );
  MUX2_X1 U379 ( .A(I3_I11_N16), .B(I3_SIG_out_norm[17]), .S(n194), .Z(
        SIG_out_round[17]) );
  MUX2_X1 U380 ( .A(I3_I11_N17), .B(I3_SIG_out_norm[18]), .S(n194), .Z(
        SIG_out_round[18]) );
  MUX2_X1 U381 ( .A(I3_I11_N18), .B(I3_SIG_out_norm[19]), .S(n194), .Z(
        SIG_out_round[19]) );
  MUX2_X1 U382 ( .A(I3_I11_N19), .B(I3_SIG_out_norm[20]), .S(n194), .Z(
        SIG_out_round[20]) );
  MUX2_X1 U383 ( .A(I3_I11_N20), .B(I3_SIG_out_norm[21]), .S(n194), .Z(
        SIG_out_round[21]) );
  MUX2_X1 U384 ( .A(I3_I11_N21), .B(I3_SIG_out_norm[22]), .S(n194), .Z(
        SIG_out_round[22]) );
  MUX2_X1 U385 ( .A(I3_I11_N22), .B(I3_SIG_out_norm[23]), .S(n194), .Z(
        SIG_out_round[23]) );
  MUX2_X1 U386 ( .A(I3_I11_N23), .B(I3_SIG_out_norm[24]), .S(n194), .Z(
        SIG_out_round[24]) );
  MUX2_X1 U387 ( .A(I3_I11_N24), .B(I3_SIG_out_norm[25]), .S(n194), .Z(
        SIG_out_round[25]) );
  MUX2_X1 U388 ( .A(I3_I11_N25), .B(I3_SIG_out_norm[26]), .S(n194), .Z(
        SIG_out_round[26]) );
  MUX2_X1 U389 ( .A(I3_I11_N14), .B(I3_SIG_out_norm[15]), .S(n135), .Z(
        SIG_out_round[15]) );
  FPmul_stage2 I2 ( .A_EXP({n600, n598, n596, n594, n592, n590, n588, n586}), 
        .A_SIG({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, I1_I0_N13, 
        n584, n582, n580, n578, n576, n574, n572, n570, n568, n566, n564, n562, 
        n560, n558, n556, n554, n552, n550, n548, n546, n544, n542, n540}), 
        .B_EXP({n538, n536, n534, n532, n530, n528, n526, n524}), .B_SIG({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, I1_I1_N13, n522, n520, n518, 
        n516, n514, n512, n510, n508, n506, n504, n502, n500, n498, n496, n494, 
        n492, n490, n488, n486, n484, n482, n480, n478}), .SIGN_out_stage1(
        n442), .clk(clk), .isINF_stage1(isINF_stage1), .isNaN_stage1(
        isNaN_stage1), .isZ_tab_stage1(isZ_tab_stage1), .EXP_in(EXP_in), 
        .EXP_neg_stage2(EXP_neg), .EXP_pos_stage2(EXP_pos_stage2), 
        .SIGN_out_stage2(n603), .SIG_in({SIG_in, SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2}), .isNaN_stage2(isNaN), .isINF_stage2(
        isINF_tab), .isZ_tab_stage2(isZ_tab_stage2) );
  FPmul_DW01_inc_0 I3_I11_add_45 ( .A({1'b0, I3_SIG_out_norm}), .SUM({
        I3_I11_N26, I3_I11_N25, I3_I11_N24, I3_I11_N23, I3_I11_N22, I3_I11_N21, 
        I3_I11_N20, I3_I11_N19, I3_I11_N18, I3_I11_N17, I3_I11_N16, I3_I11_N15, 
        I3_I11_N14, I3_I11_N13, I3_I11_N12, I3_I11_N11, I3_I11_N10, I3_I11_N9, 
        I3_I11_N8, I3_I11_N7, I3_I11_N6, I3_I11_N5, I3_I11_N4, I3_I11_N3, 
        I3_I11_N2}) );
endmodule

