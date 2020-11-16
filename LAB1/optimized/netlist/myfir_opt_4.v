/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Sun Nov  8 23:42:23 2020
/////////////////////////////////////////////////////////////


module filter_NB9 ( CLK, RST_n, VIN, DIN, b0, b1, b2, b3, b4, VOUT, DOUT );
  input [8:0] DIN;
  input [8:0] b0;
  input [8:0] b1;
  input [8:0] b2;
  input [8:0] b3;
  input [8:0] b4;
  output [8:0] DOUT;
  input CLK, RST_n, VIN;
  output VOUT;
  wire   x_k_4__8_, x_k_4__7_, x_k_4__6_, x_k_4__5_, x_k_4__4_, x_k_4__3_,
         x_k_4__2_, x_k_4__1_, x_k_4__0_, b_4__8_, b_4__7_, b_4__6_, b_4__5_,
         b_4__4_, b_3__8_, b_3__7_, b_3__6_, b_3__5_, b_3__4_, b_2__8_,
         b_2__7_, b_2__6_, b_2__5_, b_2__4_, b_1__8_, b_1__7_, b_1__6_,
         b_1__5_, b_1__4_, b_0__8_, b_0__7_, b_0__6_, b_0__5_, b_0__4_, VIN_d,
         x_ext_8__9_, x_ext_8__7_, x_ext_8__6_, x_ext_8__5_, x_ext_8__4_,
         x_ext_8__3_, x_ext_8__2_, x_ext_8__1_, x_ext_8__0_, x_ext_7__9_,
         x_ext_7__7_, x_ext_7__6_, x_ext_7__5_, x_ext_7__4_, x_ext_7__3_,
         x_ext_7__2_, x_ext_7__1_, x_ext_7__0_, x_ext_6__9_, x_ext_6__7_,
         x_ext_6__6_, x_ext_6__5_, x_ext_6__4_, x_ext_6__3_, x_ext_6__2_,
         x_ext_6__1_, x_ext_6__0_, x_ext_5__9_, x_ext_5__7_, x_ext_5__6_,
         x_ext_5__5_, x_ext_5__4_, x_ext_5__3_, x_ext_5__2_, x_ext_5__1_,
         x_ext_5__0_, x_ext_3__9_, x_ext_3__7_, x_ext_3__6_, x_ext_3__5_,
         x_ext_3__4_, x_ext_3__3_, x_ext_3__2_, x_ext_3__1_, x_ext_3__0_,
         x_ext_2__9_, x_ext_2__7_, x_ext_2__6_, x_ext_2__5_, x_ext_2__4_,
         x_ext_2__3_, x_ext_2__2_, x_ext_2__1_, x_ext_2__0_, x_ext_1__9_,
         x_ext_1__7_, x_ext_1__6_, x_ext_1__5_, x_ext_1__4_, x_ext_1__3_,
         x_ext_1__2_, x_ext_1__1_, x_ext_1__0_, x_ext_0__9_, x_ext_0__7_,
         x_ext_0__6_, x_ext_0__5_, x_ext_0__4_, x_ext_0__3_, x_ext_0__2_,
         x_ext_0__1_, x_ext_0__0_, s_2_3__8_, s_2_3__7_, s_2_3__6_, s_2_3__5_,
         s_2_3__4_, s_2_3__3_, s_2_3__2_, s_2_3__1_, s_2_3__0_, s_2_2__8_,
         s_2_2__7_, s_2_2__6_, s_2_2__5_, s_2_2__4_, s_2_2__3_, s_2_2__2_,
         s_2_2__1_, s_2_2__0_, s_2_1__8_, s_2_1__7_, s_2_1__6_, s_2_1__5_,
         s_2_1__4_, s_2_1__3_, s_2_1__2_, s_2_1__1_, s_2_1__0_, s_2_0__8_,
         s_2_0__7_, s_2_0__6_, s_2_0__5_, s_2_0__4_, s_2_0__3_, s_2_0__2_,
         s_2_0__1_, s_2_0__0_, s_1_3__9_, s_1_3__8_, s_1_3__7_, s_1_3__6_,
         s_1_3__5_, s_1_3__4_, s_1_2__9_, s_1_2__8_, s_1_2__7_, s_1_2__6_,
         s_1_2__5_, s_1_2__4_, s_1_1__9_, s_1_1__8_, s_1_1__7_, s_1_1__6_,
         s_1_1__5_, s_1_1__4_, s_1_0__9_, s_1_0__8_, s_1_0__7_, s_1_0__6_,
         s_1_0__5_, s_1_0__4_, p_4__8_, p_4__7_, p_4__6_, p_4__5_, p_4__4_,
         p_4__3_, p_4__2_, p_4__1_, p_4__0_, p_3__8_, p_3__7_, p_3__6_,
         p_3__5_, p_3__4_, p_3__3_, p_3__2_, p_3__1_, p_3__0_, p_2__8_,
         p_2__7_, p_2__6_, p_2__5_, p_2__4_, p_2__3_, p_2__2_, p_2__1_,
         p_2__0_, p_1__8_, p_1__7_, p_1__6_, p_1__5_, p_1__4_, p_1__3_,
         p_1__2_, p_1__1_, p_1__0_, p_0__8_, p_0__7_, p_0__6_, p_0__5_,
         p_0__4_, p_0__3_, p_0__2_, p_0__1_, p_0__0_, Reg_din_n10, Reg_din_n9,
         Reg_din_n8, Reg_din_n7, Reg_din_n6, Reg_din_n5, Reg_din_n4,
         Reg_din_n3, Reg_din_n2, Reg_din_n1, Reg_din_n21, Reg_din_n20,
         Reg_din_n19, Reg_din_n18, Reg_din_n17, Reg_din_n16, Reg_din_n15,
         Reg_din_n14, Reg_din_n13, Reg_din_n12, Reg_din_n11, Reg_b0_n32,
         Reg_b0_n31, Reg_b0_n30, Reg_b0_n29, Reg_b0_n28, Reg_b0_n27,
         Reg_b0_n26, Reg_b0_n25, Reg_b0_n24, Reg_b0_n23, Reg_b0_n22,
         Reg_b0_n10, Reg_b0_n9, Reg_b0_n8, Reg_b0_n7, Reg_b0_n6, Reg_b0_n5,
         Reg_b0_n4, Reg_b0_n3, Reg_b0_n2, Reg_b0_n1, Reg_b0_Q_0_, Reg_b0_Q_1_,
         Reg_b0_Q_2_, Reg_b0_Q_3_, Reg_b1_n32, Reg_b1_n31, Reg_b1_n30,
         Reg_b1_n29, Reg_b1_n28, Reg_b1_n27, Reg_b1_n26, Reg_b1_n25,
         Reg_b1_n24, Reg_b1_n23, Reg_b1_n22, Reg_b1_n10, Reg_b1_n9, Reg_b1_n8,
         Reg_b1_n7, Reg_b1_n6, Reg_b1_n5, Reg_b1_n4, Reg_b1_n3, Reg_b1_n2,
         Reg_b1_n1, Reg_b1_Q_0_, Reg_b1_Q_1_, Reg_b1_Q_2_, Reg_b1_Q_3_,
         Reg_b2_n32, Reg_b2_n31, Reg_b2_n30, Reg_b2_n29, Reg_b2_n28,
         Reg_b2_n27, Reg_b2_n26, Reg_b2_n25, Reg_b2_n24, Reg_b2_n23,
         Reg_b2_n22, Reg_b2_n10, Reg_b2_n9, Reg_b2_n8, Reg_b2_n7, Reg_b2_n6,
         Reg_b2_n5, Reg_b2_n4, Reg_b2_n3, Reg_b2_n2, Reg_b2_n1, Reg_b2_Q_0_,
         Reg_b2_Q_1_, Reg_b2_Q_2_, Reg_b2_Q_3_, Reg_b3_n32, Reg_b3_n31,
         Reg_b3_n30, Reg_b3_n29, Reg_b3_n28, Reg_b3_n27, Reg_b3_n26,
         Reg_b3_n25, Reg_b3_n24, Reg_b3_n23, Reg_b3_n22, Reg_b3_n10, Reg_b3_n9,
         Reg_b3_n8, Reg_b3_n7, Reg_b3_n6, Reg_b3_n5, Reg_b3_n4, Reg_b3_n3,
         Reg_b3_n2, Reg_b3_n1, Reg_b3_Q_0_, Reg_b3_Q_1_, Reg_b3_Q_2_,
         Reg_b3_Q_3_, Reg_b4_n32, Reg_b4_n31, Reg_b4_n30, Reg_b4_n29,
         Reg_b4_n28, Reg_b4_n27, Reg_b4_n26, Reg_b4_n25, Reg_b4_n24,
         Reg_b4_n23, Reg_b4_n22, Reg_b4_n10, Reg_b4_n9, Reg_b4_n8, Reg_b4_n7,
         Reg_b4_n6, Reg_b4_n5, Reg_b4_n4, Reg_b4_n3, Reg_b4_n2, Reg_b4_n1,
         Reg_b4_Q_0_, Reg_b4_Q_1_, Reg_b4_Q_2_, Reg_b4_Q_3_, Reg_dout_n32,
         Reg_dout_n31, Reg_dout_n30, Reg_dout_n29, Reg_dout_n28, Reg_dout_n27,
         Reg_dout_n26, Reg_dout_n25, Reg_dout_n24, Reg_dout_n23, Reg_dout_n22,
         Reg_dout_n10, Reg_dout_n9, Reg_dout_n8, Reg_dout_n7, Reg_dout_n6,
         Reg_dout_n5, Reg_dout_n4, Reg_dout_n3, Reg_dout_n2, Reg_dout_n1,
         Reg_xi_0_n32, Reg_xi_0_n31, Reg_xi_0_n30, Reg_xi_0_n29, Reg_xi_0_n28,
         Reg_xi_0_n27, Reg_xi_0_n26, Reg_xi_0_n25, Reg_xi_0_n24, Reg_xi_0_n23,
         Reg_xi_0_n22, Reg_xi_0_n10, Reg_xi_0_n9, Reg_xi_0_n8, Reg_xi_0_n7,
         Reg_xi_0_n6, Reg_xi_0_n5, Reg_xi_0_n4, Reg_xi_0_n3, Reg_xi_0_n2,
         Reg_xi_0_n1, Reg_xi_1_n32, Reg_xi_1_n31, Reg_xi_1_n30, Reg_xi_1_n29,
         Reg_xi_1_n28, Reg_xi_1_n27, Reg_xi_1_n26, Reg_xi_1_n25, Reg_xi_1_n24,
         Reg_xi_1_n23, Reg_xi_1_n22, Reg_xi_1_n10, Reg_xi_1_n9, Reg_xi_1_n8,
         Reg_xi_1_n7, Reg_xi_1_n6, Reg_xi_1_n5, Reg_xi_1_n4, Reg_xi_1_n3,
         Reg_xi_1_n2, Reg_xi_1_n1, Reg_xi_2_n32, Reg_xi_2_n31, Reg_xi_2_n30,
         Reg_xi_2_n29, Reg_xi_2_n28, Reg_xi_2_n27, Reg_xi_2_n26, Reg_xi_2_n25,
         Reg_xi_2_n24, Reg_xi_2_n23, Reg_xi_2_n22, Reg_xi_2_n10, Reg_xi_2_n9,
         Reg_xi_2_n8, Reg_xi_2_n7, Reg_xi_2_n6, Reg_xi_2_n5, Reg_xi_2_n4,
         Reg_xi_2_n3, Reg_xi_2_n2, Reg_xi_2_n1, Reg_xi_3_n32, Reg_xi_3_n31,
         Reg_xi_3_n30, Reg_xi_3_n29, Reg_xi_3_n28, Reg_xi_3_n27, Reg_xi_3_n26,
         Reg_xi_3_n25, Reg_xi_3_n24, Reg_xi_3_n23, Reg_xi_3_n22, Reg_xi_3_n10,
         Reg_xi_3_n9, Reg_xi_3_n8, Reg_xi_3_n7, Reg_xi_3_n6, Reg_xi_3_n5,
         Reg_xi_3_n4, Reg_xi_3_n3, Reg_xi_3_n2, Reg_xi_3_n1, Reg_xi_4_n32,
         Reg_xi_4_n31, Reg_xi_4_n30, Reg_xi_4_n29, Reg_xi_4_n28, Reg_xi_4_n27,
         Reg_xi_4_n26, Reg_xi_4_n25, Reg_xi_4_n24, Reg_xi_4_n23, Reg_xi_4_n22,
         Reg_xi_4_n10, Reg_xi_4_n9, Reg_xi_4_n8, Reg_xi_4_n7, Reg_xi_4_n6,
         Reg_xi_4_n5, Reg_xi_4_n4, Reg_xi_4_n3, Reg_xi_4_n2, Reg_xi_4_n1,
         Reg_xi_5_n32, Reg_xi_5_n31, Reg_xi_5_n30, Reg_xi_5_n29, Reg_xi_5_n28,
         Reg_xi_5_n27, Reg_xi_5_n26, Reg_xi_5_n25, Reg_xi_5_n24, Reg_xi_5_n23,
         Reg_xi_5_n22, Reg_xi_5_n10, Reg_xi_5_n9, Reg_xi_5_n8, Reg_xi_5_n7,
         Reg_xi_5_n6, Reg_xi_5_n5, Reg_xi_5_n4, Reg_xi_5_n3, Reg_xi_5_n2,
         Reg_xi_5_n1, Reg_xi_6_n32, Reg_xi_6_n31, Reg_xi_6_n30, Reg_xi_6_n29,
         Reg_xi_6_n28, Reg_xi_6_n27, Reg_xi_6_n26, Reg_xi_6_n25, Reg_xi_6_n24,
         Reg_xi_6_n23, Reg_xi_6_n22, Reg_xi_6_n10, Reg_xi_6_n9, Reg_xi_6_n8,
         Reg_xi_6_n7, Reg_xi_6_n6, Reg_xi_6_n5, Reg_xi_6_n4, Reg_xi_6_n3,
         Reg_xi_6_n2, Reg_xi_6_n1, Reg_xi_7_n32, Reg_xi_7_n31, Reg_xi_7_n30,
         Reg_xi_7_n29, Reg_xi_7_n28, Reg_xi_7_n27, Reg_xi_7_n26, Reg_xi_7_n25,
         Reg_xi_7_n24, Reg_xi_7_n23, Reg_xi_7_n22, Reg_xi_7_n10, Reg_xi_7_n9,
         Reg_xi_7_n8, Reg_xi_7_n7, Reg_xi_7_n6, Reg_xi_7_n5, Reg_xi_7_n4,
         Reg_xi_7_n3, Reg_xi_7_n2, Reg_xi_7_n1, mult_105_n101, mult_105_n100,
         mult_105_n99, mult_105_n98, mult_105_n97, mult_105_n96, mult_105_n95,
         mult_105_n94, mult_105_n93, mult_105_n92, mult_105_n91, mult_105_n90,
         mult_105_n56, mult_105_n55, mult_105_n54, mult_105_n53, mult_105_n52,
         mult_105_n51, mult_105_n50, mult_105_n49, mult_105_n48, mult_105_n47,
         mult_105_n46, mult_105_n45, mult_105_n43, mult_105_n42, mult_105_n41,
         mult_105_n39, mult_105_n38, mult_105_n37, mult_105_n36, mult_105_n35,
         mult_105_n34, mult_105_n32, mult_105_n31, mult_105_n30, mult_105_n29,
         mult_105_n28, mult_105_n27, mult_105_n26, mult_105_n25, mult_105_n24,
         mult_105_n23, mult_105_n22, mult_105_n21, mult_105_n20, mult_105_n19,
         mult_105_n18, mult_105_n17, mult_105_n16, mult_105_n15, mult_105_n14,
         mult_105_n13, mult_105_n12, mult_105_n11, mult_105_n10, mult_105_n9,
         mult_105_n8, mult_105_n7, mult_105_n6, mult_105_n5, mult_105_n4,
         mult_105_n3, mult_105_n2, add_97_n11, add_97_n10, add_97_n9,
         add_97_n8, add_97_n7, add_97_n6, add_97_n5, add_97_n4, add_97_n3,
         add_97_n2, add_97_n1, mult_103_n119, mult_103_n118, mult_103_n117,
         mult_103_n116, mult_103_n115, mult_103_n114, mult_103_n113,
         mult_103_n112, mult_103_n111, mult_103_n110, mult_103_n109,
         mult_103_n108, mult_103_n107, mult_103_n106, mult_103_n105,
         mult_103_n104, mult_103_n103, mult_103_n67, mult_103_n66,
         mult_103_n65, mult_103_n63, mult_103_n62, mult_103_n61, mult_103_n60,
         mult_103_n59, mult_103_n58, mult_103_n57, mult_103_n56, mult_103_n55,
         mult_103_n53, mult_103_n52, mult_103_n51, mult_103_n50, mult_103_n49,
         mult_103_n48, mult_103_n47, mult_103_n45, mult_103_n44, mult_103_n43,
         mult_103_n42, mult_103_n40, mult_103_n39, mult_103_n38, mult_103_n37,
         mult_103_n36, mult_103_n35, mult_103_n34, mult_103_n33, mult_103_n32,
         mult_103_n31, mult_103_n30, mult_103_n29, mult_103_n28, mult_103_n26,
         mult_103_n25, mult_103_n24, mult_103_n23, mult_103_n22, mult_103_n21,
         mult_103_n20, mult_103_n19, mult_103_n18, mult_103_n17, mult_103_n16,
         mult_103_n15, mult_103_n14, mult_103_n13, mult_103_n12, mult_103_n11,
         mult_103_n8, mult_103_n7, mult_103_n6, mult_103_n5, mult_103_n4,
         mult_103_n3, mult_103_n2, add_96_n11, add_96_n10, add_96_n9,
         add_96_n8, add_96_n7, add_96_n6, add_96_n5, add_96_n4, add_96_n3,
         add_96_n2, add_96_n1, mult_102_n119, mult_102_n118, mult_102_n117,
         mult_102_n116, mult_102_n115, mult_102_n114, mult_102_n113,
         mult_102_n112, mult_102_n111, mult_102_n110, mult_102_n109,
         mult_102_n108, mult_102_n107, mult_102_n106, mult_102_n105,
         mult_102_n104, mult_102_n103, mult_102_n67, mult_102_n66,
         mult_102_n65, mult_102_n63, mult_102_n62, mult_102_n61, mult_102_n60,
         mult_102_n59, mult_102_n58, mult_102_n57, mult_102_n56, mult_102_n55,
         mult_102_n53, mult_102_n52, mult_102_n51, mult_102_n50, mult_102_n49,
         mult_102_n48, mult_102_n47, mult_102_n45, mult_102_n44, mult_102_n43,
         mult_102_n42, mult_102_n40, mult_102_n39, mult_102_n38, mult_102_n37,
         mult_102_n36, mult_102_n35, mult_102_n34, mult_102_n33, mult_102_n32,
         mult_102_n31, mult_102_n30, mult_102_n29, mult_102_n28, mult_102_n26,
         mult_102_n25, mult_102_n24, mult_102_n23, mult_102_n22, mult_102_n21,
         mult_102_n20, mult_102_n19, mult_102_n18, mult_102_n17, mult_102_n16,
         mult_102_n15, mult_102_n14, mult_102_n13, mult_102_n12, mult_102_n11,
         mult_102_n8, mult_102_n7, mult_102_n6, mult_102_n5, mult_102_n4,
         mult_102_n3, mult_102_n2, add_95_n11, add_95_n10, add_95_n9,
         add_95_n8, add_95_n7, add_95_n6, add_95_n5, add_95_n4, add_95_n3,
         add_95_n2, add_95_n1, add_94_n11, add_94_n10, add_94_n9, add_94_n8,
         add_94_n7, add_94_n6, add_94_n5, add_94_n4, add_94_n3, add_94_n2,
         add_94_n1, mult_100_n119, mult_100_n118, mult_100_n117, mult_100_n116,
         mult_100_n115, mult_100_n114, mult_100_n113, mult_100_n112,
         mult_100_n111, mult_100_n110, mult_100_n109, mult_100_n108,
         mult_100_n107, mult_100_n106, mult_100_n105, mult_100_n104,
         mult_100_n103, mult_100_n67, mult_100_n66, mult_100_n65, mult_100_n63,
         mult_100_n62, mult_100_n61, mult_100_n60, mult_100_n59, mult_100_n58,
         mult_100_n57, mult_100_n56, mult_100_n55, mult_100_n53, mult_100_n52,
         mult_100_n51, mult_100_n50, mult_100_n49, mult_100_n48, mult_100_n47,
         mult_100_n45, mult_100_n44, mult_100_n43, mult_100_n42, mult_100_n40,
         mult_100_n39, mult_100_n38, mult_100_n37, mult_100_n36, mult_100_n35,
         mult_100_n34, mult_100_n33, mult_100_n32, mult_100_n31, mult_100_n30,
         mult_100_n29, mult_100_n28, mult_100_n26, mult_100_n25, mult_100_n24,
         mult_100_n23, mult_100_n22, mult_100_n21, mult_100_n20, mult_100_n19,
         mult_100_n18, mult_100_n17, mult_100_n16, mult_100_n15, mult_100_n14,
         mult_100_n13, mult_100_n12, mult_100_n11, mult_100_n8, mult_100_n7,
         mult_100_n6, mult_100_n5, mult_100_n4, mult_100_n3, mult_100_n2,
         add_3_root_add_0_root_add_111_n1, add_1_root_add_0_root_add_111_n1,
         mult_101_n119, mult_101_n118, mult_101_n117, mult_101_n116,
         mult_101_n115, mult_101_n114, mult_101_n113, mult_101_n112,
         mult_101_n111, mult_101_n110, mult_101_n109, mult_101_n108,
         mult_101_n107, mult_101_n106, mult_101_n105, mult_101_n104,
         mult_101_n103, mult_101_n67, mult_101_n66, mult_101_n65, mult_101_n63,
         mult_101_n62, mult_101_n61, mult_101_n60, mult_101_n59, mult_101_n58,
         mult_101_n57, mult_101_n56, mult_101_n55, mult_101_n53, mult_101_n52,
         mult_101_n51, mult_101_n50, mult_101_n49, mult_101_n48, mult_101_n47,
         mult_101_n45, mult_101_n44, mult_101_n43, mult_101_n42, mult_101_n40,
         mult_101_n39, mult_101_n38, mult_101_n37, mult_101_n36, mult_101_n35,
         mult_101_n34, mult_101_n33, mult_101_n32, mult_101_n31, mult_101_n30,
         mult_101_n29, mult_101_n28, mult_101_n26, mult_101_n25, mult_101_n24,
         mult_101_n23, mult_101_n22, mult_101_n21, mult_101_n20, mult_101_n19,
         mult_101_n18, mult_101_n17, mult_101_n16, mult_101_n15, mult_101_n14,
         mult_101_n13, mult_101_n12, mult_101_n11, mult_101_n8, mult_101_n7,
         mult_101_n6, mult_101_n5, mult_101_n4, mult_101_n3, mult_101_n2,
         add_2_root_add_0_root_add_111_n1, add_0_root_add_0_root_add_111_n2;
  wire   [9:5] add_97_carry;
  wire   [9:5] add_96_carry;
  wire   [9:5] add_95_carry;
  wire   [9:5] add_94_carry;
  wire   [8:2] add_3_root_add_0_root_add_111_carry;
  wire   [8:2] add_1_root_add_0_root_add_111_carry;
  wire   [8:2] add_2_root_add_0_root_add_111_carry;
  wire   [8:2] add_0_root_add_0_root_add_111_carry;

  AOI22_X1 Reg_din_U23 ( .A1(DIN[8]), .A2(Reg_din_n12), .B1(x_ext_0__9_), .B2(
        Reg_din_n13), .ZN(Reg_din_n21) );
  INV_X1 Reg_din_U22 ( .A(Reg_din_n21), .ZN(Reg_din_n1) );
  AOI22_X1 Reg_din_U21 ( .A1(DIN[7]), .A2(Reg_din_n12), .B1(x_ext_0__7_), .B2(
        Reg_din_n13), .ZN(Reg_din_n20) );
  INV_X1 Reg_din_U20 ( .A(Reg_din_n20), .ZN(Reg_din_n2) );
  AOI22_X1 Reg_din_U19 ( .A1(DIN[6]), .A2(Reg_din_n12), .B1(x_ext_0__6_), .B2(
        Reg_din_n13), .ZN(Reg_din_n19) );
  INV_X1 Reg_din_U18 ( .A(Reg_din_n19), .ZN(Reg_din_n3) );
  AOI22_X1 Reg_din_U17 ( .A1(DIN[5]), .A2(Reg_din_n12), .B1(x_ext_0__5_), .B2(
        Reg_din_n13), .ZN(Reg_din_n18) );
  INV_X1 Reg_din_U16 ( .A(Reg_din_n18), .ZN(Reg_din_n4) );
  AOI22_X1 Reg_din_U15 ( .A1(DIN[4]), .A2(Reg_din_n12), .B1(x_ext_0__4_), .B2(
        Reg_din_n13), .ZN(Reg_din_n17) );
  INV_X1 Reg_din_U14 ( .A(Reg_din_n17), .ZN(Reg_din_n5) );
  AOI22_X1 Reg_din_U13 ( .A1(DIN[3]), .A2(Reg_din_n12), .B1(x_ext_0__3_), .B2(
        Reg_din_n13), .ZN(Reg_din_n16) );
  INV_X1 Reg_din_U12 ( .A(Reg_din_n16), .ZN(Reg_din_n6) );
  AOI22_X1 Reg_din_U11 ( .A1(DIN[2]), .A2(Reg_din_n12), .B1(x_ext_0__2_), .B2(
        Reg_din_n13), .ZN(Reg_din_n15) );
  INV_X1 Reg_din_U10 ( .A(Reg_din_n15), .ZN(Reg_din_n7) );
  AOI22_X1 Reg_din_U9 ( .A1(DIN[1]), .A2(Reg_din_n12), .B1(x_ext_0__1_), .B2(
        Reg_din_n13), .ZN(Reg_din_n14) );
  INV_X1 Reg_din_U8 ( .A(Reg_din_n14), .ZN(Reg_din_n8) );
  AOI22_X1 Reg_din_U7 ( .A1(DIN[0]), .A2(Reg_din_n12), .B1(x_ext_0__0_), .B2(
        Reg_din_n13), .ZN(Reg_din_n11) );
  INV_X1 Reg_din_U6 ( .A(Reg_din_n11), .ZN(Reg_din_n9) );
  INV_X1 Reg_din_U5 ( .A(RST_n), .ZN(Reg_din_n10) );
  NOR2_X1 Reg_din_U4 ( .A1(VIN), .A2(Reg_din_n10), .ZN(Reg_din_n13) );
  NOR2_X1 Reg_din_U3 ( .A1(Reg_din_n10), .A2(Reg_din_n13), .ZN(Reg_din_n12) );
  DFF_X1 Reg_din_Q_reg_0_ ( .D(Reg_din_n9), .CK(CLK), .Q(x_ext_0__0_) );
  DFF_X1 Reg_din_Q_reg_1_ ( .D(Reg_din_n8), .CK(CLK), .Q(x_ext_0__1_) );
  DFF_X1 Reg_din_Q_reg_2_ ( .D(Reg_din_n7), .CK(CLK), .Q(x_ext_0__2_) );
  DFF_X1 Reg_din_Q_reg_3_ ( .D(Reg_din_n6), .CK(CLK), .Q(x_ext_0__3_) );
  DFF_X1 Reg_din_Q_reg_4_ ( .D(Reg_din_n5), .CK(CLK), .Q(x_ext_0__4_) );
  DFF_X1 Reg_din_Q_reg_5_ ( .D(Reg_din_n4), .CK(CLK), .Q(x_ext_0__5_) );
  DFF_X1 Reg_din_Q_reg_6_ ( .D(Reg_din_n3), .CK(CLK), .Q(x_ext_0__6_) );
  DFF_X1 Reg_din_Q_reg_7_ ( .D(Reg_din_n2), .CK(CLK), .Q(x_ext_0__7_) );
  DFF_X1 Reg_din_Q_reg_8_ ( .D(Reg_din_n1), .CK(CLK), .Q(x_ext_0__9_) );
  AOI22_X1 Reg_b0_U23 ( .A1(b0[8]), .A2(Reg_b0_n31), .B1(b_0__8_), .B2(
        Reg_b0_n30), .ZN(Reg_b0_n22) );
  INV_X1 Reg_b0_U22 ( .A(Reg_b0_n22), .ZN(Reg_b0_n1) );
  AOI22_X1 Reg_b0_U21 ( .A1(b0[7]), .A2(Reg_b0_n31), .B1(b_0__7_), .B2(
        Reg_b0_n30), .ZN(Reg_b0_n23) );
  INV_X1 Reg_b0_U20 ( .A(Reg_b0_n23), .ZN(Reg_b0_n2) );
  AOI22_X1 Reg_b0_U19 ( .A1(b0[6]), .A2(Reg_b0_n31), .B1(b_0__6_), .B2(
        Reg_b0_n30), .ZN(Reg_b0_n24) );
  INV_X1 Reg_b0_U18 ( .A(Reg_b0_n24), .ZN(Reg_b0_n3) );
  AOI22_X1 Reg_b0_U17 ( .A1(b0[5]), .A2(Reg_b0_n31), .B1(b_0__5_), .B2(
        Reg_b0_n30), .ZN(Reg_b0_n25) );
  INV_X1 Reg_b0_U16 ( .A(Reg_b0_n25), .ZN(Reg_b0_n4) );
  AOI22_X1 Reg_b0_U15 ( .A1(b0[4]), .A2(Reg_b0_n31), .B1(b_0__4_), .B2(
        Reg_b0_n30), .ZN(Reg_b0_n26) );
  INV_X1 Reg_b0_U14 ( .A(Reg_b0_n26), .ZN(Reg_b0_n5) );
  AOI22_X1 Reg_b0_U13 ( .A1(b0[3]), .A2(Reg_b0_n31), .B1(Reg_b0_Q_3_), .B2(
        Reg_b0_n30), .ZN(Reg_b0_n27) );
  INV_X1 Reg_b0_U12 ( .A(Reg_b0_n27), .ZN(Reg_b0_n6) );
  AOI22_X1 Reg_b0_U11 ( .A1(b0[2]), .A2(Reg_b0_n31), .B1(Reg_b0_Q_2_), .B2(
        Reg_b0_n30), .ZN(Reg_b0_n28) );
  INV_X1 Reg_b0_U10 ( .A(Reg_b0_n28), .ZN(Reg_b0_n7) );
  AOI22_X1 Reg_b0_U9 ( .A1(b0[1]), .A2(Reg_b0_n31), .B1(Reg_b0_Q_1_), .B2(
        Reg_b0_n30), .ZN(Reg_b0_n29) );
  INV_X1 Reg_b0_U8 ( .A(Reg_b0_n29), .ZN(Reg_b0_n8) );
  AOI22_X1 Reg_b0_U7 ( .A1(b0[0]), .A2(Reg_b0_n31), .B1(Reg_b0_Q_0_), .B2(
        Reg_b0_n30), .ZN(Reg_b0_n32) );
  INV_X1 Reg_b0_U6 ( .A(Reg_b0_n32), .ZN(Reg_b0_n9) );
  INV_X1 Reg_b0_U5 ( .A(RST_n), .ZN(Reg_b0_n10) );
  NOR2_X1 Reg_b0_U4 ( .A1(Reg_b0_n10), .A2(Reg_b0_n30), .ZN(Reg_b0_n31) );
  NOR2_X1 Reg_b0_U3 ( .A1(1'b1), .A2(Reg_b0_n10), .ZN(Reg_b0_n30) );
  DFF_X1 Reg_b0_Q_reg_0_ ( .D(Reg_b0_n9), .CK(CLK), .Q(Reg_b0_Q_0_) );
  DFF_X1 Reg_b0_Q_reg_1_ ( .D(Reg_b0_n8), .CK(CLK), .Q(Reg_b0_Q_1_) );
  DFF_X1 Reg_b0_Q_reg_2_ ( .D(Reg_b0_n7), .CK(CLK), .Q(Reg_b0_Q_2_) );
  DFF_X1 Reg_b0_Q_reg_3_ ( .D(Reg_b0_n6), .CK(CLK), .Q(Reg_b0_Q_3_) );
  DFF_X1 Reg_b0_Q_reg_4_ ( .D(Reg_b0_n5), .CK(CLK), .Q(b_0__4_) );
  DFF_X1 Reg_b0_Q_reg_5_ ( .D(Reg_b0_n4), .CK(CLK), .Q(b_0__5_) );
  DFF_X1 Reg_b0_Q_reg_6_ ( .D(Reg_b0_n3), .CK(CLK), .Q(b_0__6_) );
  DFF_X1 Reg_b0_Q_reg_7_ ( .D(Reg_b0_n2), .CK(CLK), .Q(b_0__7_) );
  DFF_X1 Reg_b0_Q_reg_8_ ( .D(Reg_b0_n1), .CK(CLK), .Q(b_0__8_) );
  AOI22_X1 Reg_b1_U23 ( .A1(b1[8]), .A2(Reg_b1_n31), .B1(b_1__8_), .B2(
        Reg_b1_n30), .ZN(Reg_b1_n22) );
  INV_X1 Reg_b1_U22 ( .A(Reg_b1_n22), .ZN(Reg_b1_n1) );
  AOI22_X1 Reg_b1_U21 ( .A1(b1[7]), .A2(Reg_b1_n31), .B1(b_1__7_), .B2(
        Reg_b1_n30), .ZN(Reg_b1_n23) );
  INV_X1 Reg_b1_U20 ( .A(Reg_b1_n23), .ZN(Reg_b1_n2) );
  AOI22_X1 Reg_b1_U19 ( .A1(b1[6]), .A2(Reg_b1_n31), .B1(b_1__6_), .B2(
        Reg_b1_n30), .ZN(Reg_b1_n24) );
  INV_X1 Reg_b1_U18 ( .A(Reg_b1_n24), .ZN(Reg_b1_n3) );
  AOI22_X1 Reg_b1_U17 ( .A1(b1[5]), .A2(Reg_b1_n31), .B1(b_1__5_), .B2(
        Reg_b1_n30), .ZN(Reg_b1_n25) );
  INV_X1 Reg_b1_U16 ( .A(Reg_b1_n25), .ZN(Reg_b1_n4) );
  AOI22_X1 Reg_b1_U15 ( .A1(b1[4]), .A2(Reg_b1_n31), .B1(b_1__4_), .B2(
        Reg_b1_n30), .ZN(Reg_b1_n26) );
  INV_X1 Reg_b1_U14 ( .A(Reg_b1_n26), .ZN(Reg_b1_n5) );
  AOI22_X1 Reg_b1_U13 ( .A1(b1[3]), .A2(Reg_b1_n31), .B1(Reg_b1_Q_3_), .B2(
        Reg_b1_n30), .ZN(Reg_b1_n27) );
  INV_X1 Reg_b1_U12 ( .A(Reg_b1_n27), .ZN(Reg_b1_n6) );
  AOI22_X1 Reg_b1_U11 ( .A1(b1[2]), .A2(Reg_b1_n31), .B1(Reg_b1_Q_2_), .B2(
        Reg_b1_n30), .ZN(Reg_b1_n28) );
  INV_X1 Reg_b1_U10 ( .A(Reg_b1_n28), .ZN(Reg_b1_n7) );
  AOI22_X1 Reg_b1_U9 ( .A1(b1[1]), .A2(Reg_b1_n31), .B1(Reg_b1_Q_1_), .B2(
        Reg_b1_n30), .ZN(Reg_b1_n29) );
  INV_X1 Reg_b1_U8 ( .A(Reg_b1_n29), .ZN(Reg_b1_n8) );
  AOI22_X1 Reg_b1_U7 ( .A1(b1[0]), .A2(Reg_b1_n31), .B1(Reg_b1_Q_0_), .B2(
        Reg_b1_n30), .ZN(Reg_b1_n32) );
  INV_X1 Reg_b1_U6 ( .A(Reg_b1_n32), .ZN(Reg_b1_n9) );
  INV_X1 Reg_b1_U5 ( .A(RST_n), .ZN(Reg_b1_n10) );
  NOR2_X1 Reg_b1_U4 ( .A1(Reg_b1_n10), .A2(Reg_b1_n30), .ZN(Reg_b1_n31) );
  NOR2_X1 Reg_b1_U3 ( .A1(1'b1), .A2(Reg_b1_n10), .ZN(Reg_b1_n30) );
  DFF_X1 Reg_b1_Q_reg_0_ ( .D(Reg_b1_n9), .CK(CLK), .Q(Reg_b1_Q_0_) );
  DFF_X1 Reg_b1_Q_reg_1_ ( .D(Reg_b1_n8), .CK(CLK), .Q(Reg_b1_Q_1_) );
  DFF_X1 Reg_b1_Q_reg_2_ ( .D(Reg_b1_n7), .CK(CLK), .Q(Reg_b1_Q_2_) );
  DFF_X1 Reg_b1_Q_reg_3_ ( .D(Reg_b1_n6), .CK(CLK), .Q(Reg_b1_Q_3_) );
  DFF_X1 Reg_b1_Q_reg_4_ ( .D(Reg_b1_n5), .CK(CLK), .Q(b_1__4_) );
  DFF_X1 Reg_b1_Q_reg_5_ ( .D(Reg_b1_n4), .CK(CLK), .Q(b_1__5_) );
  DFF_X1 Reg_b1_Q_reg_6_ ( .D(Reg_b1_n3), .CK(CLK), .Q(b_1__6_) );
  DFF_X1 Reg_b1_Q_reg_7_ ( .D(Reg_b1_n2), .CK(CLK), .Q(b_1__7_) );
  DFF_X1 Reg_b1_Q_reg_8_ ( .D(Reg_b1_n1), .CK(CLK), .Q(b_1__8_) );
  AOI22_X1 Reg_b2_U23 ( .A1(b2[8]), .A2(Reg_b2_n31), .B1(b_2__8_), .B2(
        Reg_b2_n30), .ZN(Reg_b2_n22) );
  INV_X1 Reg_b2_U22 ( .A(Reg_b2_n22), .ZN(Reg_b2_n1) );
  AOI22_X1 Reg_b2_U21 ( .A1(b2[7]), .A2(Reg_b2_n31), .B1(b_2__7_), .B2(
        Reg_b2_n30), .ZN(Reg_b2_n23) );
  INV_X1 Reg_b2_U20 ( .A(Reg_b2_n23), .ZN(Reg_b2_n2) );
  AOI22_X1 Reg_b2_U19 ( .A1(b2[6]), .A2(Reg_b2_n31), .B1(b_2__6_), .B2(
        Reg_b2_n30), .ZN(Reg_b2_n24) );
  INV_X1 Reg_b2_U18 ( .A(Reg_b2_n24), .ZN(Reg_b2_n3) );
  AOI22_X1 Reg_b2_U17 ( .A1(b2[5]), .A2(Reg_b2_n31), .B1(b_2__5_), .B2(
        Reg_b2_n30), .ZN(Reg_b2_n25) );
  INV_X1 Reg_b2_U16 ( .A(Reg_b2_n25), .ZN(Reg_b2_n4) );
  AOI22_X1 Reg_b2_U15 ( .A1(b2[4]), .A2(Reg_b2_n31), .B1(b_2__4_), .B2(
        Reg_b2_n30), .ZN(Reg_b2_n26) );
  INV_X1 Reg_b2_U14 ( .A(Reg_b2_n26), .ZN(Reg_b2_n5) );
  AOI22_X1 Reg_b2_U13 ( .A1(b2[3]), .A2(Reg_b2_n31), .B1(Reg_b2_Q_3_), .B2(
        Reg_b2_n30), .ZN(Reg_b2_n27) );
  INV_X1 Reg_b2_U12 ( .A(Reg_b2_n27), .ZN(Reg_b2_n6) );
  AOI22_X1 Reg_b2_U11 ( .A1(b2[2]), .A2(Reg_b2_n31), .B1(Reg_b2_Q_2_), .B2(
        Reg_b2_n30), .ZN(Reg_b2_n28) );
  INV_X1 Reg_b2_U10 ( .A(Reg_b2_n28), .ZN(Reg_b2_n7) );
  AOI22_X1 Reg_b2_U9 ( .A1(b2[1]), .A2(Reg_b2_n31), .B1(Reg_b2_Q_1_), .B2(
        Reg_b2_n30), .ZN(Reg_b2_n29) );
  INV_X1 Reg_b2_U8 ( .A(Reg_b2_n29), .ZN(Reg_b2_n8) );
  AOI22_X1 Reg_b2_U7 ( .A1(b2[0]), .A2(Reg_b2_n31), .B1(Reg_b2_Q_0_), .B2(
        Reg_b2_n30), .ZN(Reg_b2_n32) );
  INV_X1 Reg_b2_U6 ( .A(Reg_b2_n32), .ZN(Reg_b2_n9) );
  INV_X1 Reg_b2_U5 ( .A(RST_n), .ZN(Reg_b2_n10) );
  NOR2_X1 Reg_b2_U4 ( .A1(Reg_b2_n10), .A2(Reg_b2_n30), .ZN(Reg_b2_n31) );
  NOR2_X1 Reg_b2_U3 ( .A1(1'b1), .A2(Reg_b2_n10), .ZN(Reg_b2_n30) );
  DFF_X1 Reg_b2_Q_reg_0_ ( .D(Reg_b2_n9), .CK(CLK), .Q(Reg_b2_Q_0_) );
  DFF_X1 Reg_b2_Q_reg_1_ ( .D(Reg_b2_n8), .CK(CLK), .Q(Reg_b2_Q_1_) );
  DFF_X1 Reg_b2_Q_reg_2_ ( .D(Reg_b2_n7), .CK(CLK), .Q(Reg_b2_Q_2_) );
  DFF_X1 Reg_b2_Q_reg_3_ ( .D(Reg_b2_n6), .CK(CLK), .Q(Reg_b2_Q_3_) );
  DFF_X1 Reg_b2_Q_reg_4_ ( .D(Reg_b2_n5), .CK(CLK), .Q(b_2__4_) );
  DFF_X1 Reg_b2_Q_reg_5_ ( .D(Reg_b2_n4), .CK(CLK), .Q(b_2__5_) );
  DFF_X1 Reg_b2_Q_reg_6_ ( .D(Reg_b2_n3), .CK(CLK), .Q(b_2__6_) );
  DFF_X1 Reg_b2_Q_reg_7_ ( .D(Reg_b2_n2), .CK(CLK), .Q(b_2__7_) );
  DFF_X1 Reg_b2_Q_reg_8_ ( .D(Reg_b2_n1), .CK(CLK), .Q(b_2__8_) );
  AOI22_X1 Reg_b3_U23 ( .A1(b3[8]), .A2(Reg_b3_n31), .B1(b_3__8_), .B2(
        Reg_b3_n30), .ZN(Reg_b3_n22) );
  INV_X1 Reg_b3_U22 ( .A(Reg_b3_n22), .ZN(Reg_b3_n1) );
  AOI22_X1 Reg_b3_U21 ( .A1(b3[7]), .A2(Reg_b3_n31), .B1(b_3__7_), .B2(
        Reg_b3_n30), .ZN(Reg_b3_n23) );
  INV_X1 Reg_b3_U20 ( .A(Reg_b3_n23), .ZN(Reg_b3_n2) );
  AOI22_X1 Reg_b3_U19 ( .A1(b3[6]), .A2(Reg_b3_n31), .B1(b_3__6_), .B2(
        Reg_b3_n30), .ZN(Reg_b3_n24) );
  INV_X1 Reg_b3_U18 ( .A(Reg_b3_n24), .ZN(Reg_b3_n3) );
  AOI22_X1 Reg_b3_U17 ( .A1(b3[5]), .A2(Reg_b3_n31), .B1(b_3__5_), .B2(
        Reg_b3_n30), .ZN(Reg_b3_n25) );
  INV_X1 Reg_b3_U16 ( .A(Reg_b3_n25), .ZN(Reg_b3_n4) );
  AOI22_X1 Reg_b3_U15 ( .A1(b3[4]), .A2(Reg_b3_n31), .B1(b_3__4_), .B2(
        Reg_b3_n30), .ZN(Reg_b3_n26) );
  INV_X1 Reg_b3_U14 ( .A(Reg_b3_n26), .ZN(Reg_b3_n5) );
  AOI22_X1 Reg_b3_U13 ( .A1(b3[3]), .A2(Reg_b3_n31), .B1(Reg_b3_Q_3_), .B2(
        Reg_b3_n30), .ZN(Reg_b3_n27) );
  INV_X1 Reg_b3_U12 ( .A(Reg_b3_n27), .ZN(Reg_b3_n6) );
  AOI22_X1 Reg_b3_U11 ( .A1(b3[2]), .A2(Reg_b3_n31), .B1(Reg_b3_Q_2_), .B2(
        Reg_b3_n30), .ZN(Reg_b3_n28) );
  INV_X1 Reg_b3_U10 ( .A(Reg_b3_n28), .ZN(Reg_b3_n7) );
  AOI22_X1 Reg_b3_U9 ( .A1(b3[1]), .A2(Reg_b3_n31), .B1(Reg_b3_Q_1_), .B2(
        Reg_b3_n30), .ZN(Reg_b3_n29) );
  INV_X1 Reg_b3_U8 ( .A(Reg_b3_n29), .ZN(Reg_b3_n8) );
  AOI22_X1 Reg_b3_U7 ( .A1(b3[0]), .A2(Reg_b3_n31), .B1(Reg_b3_Q_0_), .B2(
        Reg_b3_n30), .ZN(Reg_b3_n32) );
  INV_X1 Reg_b3_U6 ( .A(Reg_b3_n32), .ZN(Reg_b3_n9) );
  INV_X1 Reg_b3_U5 ( .A(RST_n), .ZN(Reg_b3_n10) );
  NOR2_X1 Reg_b3_U4 ( .A1(Reg_b3_n10), .A2(Reg_b3_n30), .ZN(Reg_b3_n31) );
  NOR2_X1 Reg_b3_U3 ( .A1(1'b1), .A2(Reg_b3_n10), .ZN(Reg_b3_n30) );
  DFF_X1 Reg_b3_Q_reg_0_ ( .D(Reg_b3_n9), .CK(CLK), .Q(Reg_b3_Q_0_) );
  DFF_X1 Reg_b3_Q_reg_1_ ( .D(Reg_b3_n8), .CK(CLK), .Q(Reg_b3_Q_1_) );
  DFF_X1 Reg_b3_Q_reg_2_ ( .D(Reg_b3_n7), .CK(CLK), .Q(Reg_b3_Q_2_) );
  DFF_X1 Reg_b3_Q_reg_3_ ( .D(Reg_b3_n6), .CK(CLK), .Q(Reg_b3_Q_3_) );
  DFF_X1 Reg_b3_Q_reg_4_ ( .D(Reg_b3_n5), .CK(CLK), .Q(b_3__4_) );
  DFF_X1 Reg_b3_Q_reg_5_ ( .D(Reg_b3_n4), .CK(CLK), .Q(b_3__5_) );
  DFF_X1 Reg_b3_Q_reg_6_ ( .D(Reg_b3_n3), .CK(CLK), .Q(b_3__6_) );
  DFF_X1 Reg_b3_Q_reg_7_ ( .D(Reg_b3_n2), .CK(CLK), .Q(b_3__7_) );
  DFF_X1 Reg_b3_Q_reg_8_ ( .D(Reg_b3_n1), .CK(CLK), .Q(b_3__8_) );
  AOI22_X1 Reg_b4_U23 ( .A1(b4[8]), .A2(Reg_b4_n31), .B1(b_4__8_), .B2(
        Reg_b4_n30), .ZN(Reg_b4_n22) );
  INV_X1 Reg_b4_U22 ( .A(Reg_b4_n22), .ZN(Reg_b4_n1) );
  AOI22_X1 Reg_b4_U21 ( .A1(b4[7]), .A2(Reg_b4_n31), .B1(b_4__7_), .B2(
        Reg_b4_n30), .ZN(Reg_b4_n23) );
  INV_X1 Reg_b4_U20 ( .A(Reg_b4_n23), .ZN(Reg_b4_n2) );
  AOI22_X1 Reg_b4_U19 ( .A1(b4[6]), .A2(Reg_b4_n31), .B1(b_4__6_), .B2(
        Reg_b4_n30), .ZN(Reg_b4_n24) );
  INV_X1 Reg_b4_U18 ( .A(Reg_b4_n24), .ZN(Reg_b4_n3) );
  AOI22_X1 Reg_b4_U17 ( .A1(b4[5]), .A2(Reg_b4_n31), .B1(b_4__5_), .B2(
        Reg_b4_n30), .ZN(Reg_b4_n25) );
  INV_X1 Reg_b4_U16 ( .A(Reg_b4_n25), .ZN(Reg_b4_n4) );
  AOI22_X1 Reg_b4_U15 ( .A1(b4[4]), .A2(Reg_b4_n31), .B1(b_4__4_), .B2(
        Reg_b4_n30), .ZN(Reg_b4_n26) );
  INV_X1 Reg_b4_U14 ( .A(Reg_b4_n26), .ZN(Reg_b4_n5) );
  AOI22_X1 Reg_b4_U13 ( .A1(b4[3]), .A2(Reg_b4_n31), .B1(Reg_b4_Q_3_), .B2(
        Reg_b4_n30), .ZN(Reg_b4_n27) );
  INV_X1 Reg_b4_U12 ( .A(Reg_b4_n27), .ZN(Reg_b4_n6) );
  AOI22_X1 Reg_b4_U11 ( .A1(b4[2]), .A2(Reg_b4_n31), .B1(Reg_b4_Q_2_), .B2(
        Reg_b4_n30), .ZN(Reg_b4_n28) );
  INV_X1 Reg_b4_U10 ( .A(Reg_b4_n28), .ZN(Reg_b4_n7) );
  AOI22_X1 Reg_b4_U9 ( .A1(b4[1]), .A2(Reg_b4_n31), .B1(Reg_b4_Q_1_), .B2(
        Reg_b4_n30), .ZN(Reg_b4_n29) );
  INV_X1 Reg_b4_U8 ( .A(Reg_b4_n29), .ZN(Reg_b4_n8) );
  AOI22_X1 Reg_b4_U7 ( .A1(b4[0]), .A2(Reg_b4_n31), .B1(Reg_b4_Q_0_), .B2(
        Reg_b4_n30), .ZN(Reg_b4_n32) );
  INV_X1 Reg_b4_U6 ( .A(Reg_b4_n32), .ZN(Reg_b4_n9) );
  INV_X1 Reg_b4_U5 ( .A(RST_n), .ZN(Reg_b4_n10) );
  NOR2_X1 Reg_b4_U4 ( .A1(Reg_b4_n10), .A2(Reg_b4_n30), .ZN(Reg_b4_n31) );
  NOR2_X1 Reg_b4_U3 ( .A1(1'b1), .A2(Reg_b4_n10), .ZN(Reg_b4_n30) );
  DFF_X1 Reg_b4_Q_reg_0_ ( .D(Reg_b4_n9), .CK(CLK), .Q(Reg_b4_Q_0_) );
  DFF_X1 Reg_b4_Q_reg_1_ ( .D(Reg_b4_n8), .CK(CLK), .Q(Reg_b4_Q_1_) );
  DFF_X1 Reg_b4_Q_reg_2_ ( .D(Reg_b4_n7), .CK(CLK), .Q(Reg_b4_Q_2_) );
  DFF_X1 Reg_b4_Q_reg_3_ ( .D(Reg_b4_n6), .CK(CLK), .Q(Reg_b4_Q_3_) );
  DFF_X1 Reg_b4_Q_reg_4_ ( .D(Reg_b4_n5), .CK(CLK), .Q(b_4__4_) );
  DFF_X1 Reg_b4_Q_reg_5_ ( .D(Reg_b4_n4), .CK(CLK), .Q(b_4__5_) );
  DFF_X1 Reg_b4_Q_reg_6_ ( .D(Reg_b4_n3), .CK(CLK), .Q(b_4__6_) );
  DFF_X1 Reg_b4_Q_reg_7_ ( .D(Reg_b4_n2), .CK(CLK), .Q(b_4__7_) );
  DFF_X1 Reg_b4_Q_reg_8_ ( .D(Reg_b4_n1), .CK(CLK), .Q(b_4__8_) );
  INV_X1 Reg_dout_U23 ( .A(RST_n), .ZN(Reg_dout_n10) );
  AOI22_X1 Reg_dout_U22 ( .A1(s_2_3__3_), .A2(Reg_dout_n31), .B1(DOUT[3]), 
        .B2(Reg_dout_n30), .ZN(Reg_dout_n27) );
  INV_X1 Reg_dout_U21 ( .A(Reg_dout_n27), .ZN(Reg_dout_n6) );
  AOI22_X1 Reg_dout_U20 ( .A1(s_2_3__2_), .A2(Reg_dout_n31), .B1(DOUT[2]), 
        .B2(Reg_dout_n30), .ZN(Reg_dout_n28) );
  INV_X1 Reg_dout_U19 ( .A(Reg_dout_n28), .ZN(Reg_dout_n7) );
  AOI22_X1 Reg_dout_U18 ( .A1(s_2_3__1_), .A2(Reg_dout_n31), .B1(DOUT[1]), 
        .B2(Reg_dout_n30), .ZN(Reg_dout_n29) );
  INV_X1 Reg_dout_U17 ( .A(Reg_dout_n29), .ZN(Reg_dout_n8) );
  AOI22_X1 Reg_dout_U16 ( .A1(s_2_3__0_), .A2(Reg_dout_n31), .B1(DOUT[0]), 
        .B2(Reg_dout_n30), .ZN(Reg_dout_n32) );
  INV_X1 Reg_dout_U15 ( .A(Reg_dout_n32), .ZN(Reg_dout_n9) );
  AOI22_X1 Reg_dout_U14 ( .A1(s_2_3__8_), .A2(Reg_dout_n31), .B1(DOUT[8]), 
        .B2(Reg_dout_n30), .ZN(Reg_dout_n22) );
  INV_X1 Reg_dout_U13 ( .A(Reg_dout_n22), .ZN(Reg_dout_n1) );
  AOI22_X1 Reg_dout_U12 ( .A1(s_2_3__7_), .A2(Reg_dout_n31), .B1(DOUT[7]), 
        .B2(Reg_dout_n30), .ZN(Reg_dout_n23) );
  INV_X1 Reg_dout_U11 ( .A(Reg_dout_n23), .ZN(Reg_dout_n2) );
  AOI22_X1 Reg_dout_U10 ( .A1(s_2_3__6_), .A2(Reg_dout_n31), .B1(DOUT[6]), 
        .B2(Reg_dout_n30), .ZN(Reg_dout_n24) );
  INV_X1 Reg_dout_U9 ( .A(Reg_dout_n24), .ZN(Reg_dout_n3) );
  AOI22_X1 Reg_dout_U8 ( .A1(s_2_3__5_), .A2(Reg_dout_n31), .B1(DOUT[5]), .B2(
        Reg_dout_n30), .ZN(Reg_dout_n25) );
  INV_X1 Reg_dout_U7 ( .A(Reg_dout_n25), .ZN(Reg_dout_n4) );
  AOI22_X1 Reg_dout_U6 ( .A1(s_2_3__4_), .A2(Reg_dout_n31), .B1(DOUT[4]), .B2(
        Reg_dout_n30), .ZN(Reg_dout_n26) );
  INV_X1 Reg_dout_U5 ( .A(Reg_dout_n26), .ZN(Reg_dout_n5) );
  NOR2_X1 Reg_dout_U4 ( .A1(Reg_dout_n10), .A2(Reg_dout_n30), .ZN(Reg_dout_n31) );
  NOR2_X1 Reg_dout_U3 ( .A1(VIN_d), .A2(Reg_dout_n10), .ZN(Reg_dout_n30) );
  DFF_X1 Reg_dout_Q_reg_0_ ( .D(Reg_dout_n9), .CK(CLK), .Q(DOUT[0]) );
  DFF_X1 Reg_dout_Q_reg_1_ ( .D(Reg_dout_n8), .CK(CLK), .Q(DOUT[1]) );
  DFF_X1 Reg_dout_Q_reg_2_ ( .D(Reg_dout_n7), .CK(CLK), .Q(DOUT[2]) );
  DFF_X1 Reg_dout_Q_reg_3_ ( .D(Reg_dout_n6), .CK(CLK), .Q(DOUT[3]) );
  DFF_X1 Reg_dout_Q_reg_4_ ( .D(Reg_dout_n5), .CK(CLK), .Q(DOUT[4]) );
  DFF_X1 Reg_dout_Q_reg_5_ ( .D(Reg_dout_n4), .CK(CLK), .Q(DOUT[5]) );
  DFF_X1 Reg_dout_Q_reg_6_ ( .D(Reg_dout_n3), .CK(CLK), .Q(DOUT[6]) );
  DFF_X1 Reg_dout_Q_reg_7_ ( .D(Reg_dout_n2), .CK(CLK), .Q(DOUT[7]) );
  DFF_X1 Reg_dout_Q_reg_8_ ( .D(Reg_dout_n1), .CK(CLK), .Q(DOUT[8]) );
  AOI22_X1 Reg_xi_0_U23 ( .A1(x_ext_0__9_), .A2(Reg_xi_0_n31), .B1(x_ext_1__9_), .B2(Reg_xi_0_n30), .ZN(Reg_xi_0_n22) );
  INV_X1 Reg_xi_0_U22 ( .A(Reg_xi_0_n22), .ZN(Reg_xi_0_n1) );
  AOI22_X1 Reg_xi_0_U21 ( .A1(x_ext_0__7_), .A2(Reg_xi_0_n31), .B1(x_ext_1__7_), .B2(Reg_xi_0_n30), .ZN(Reg_xi_0_n23) );
  INV_X1 Reg_xi_0_U20 ( .A(Reg_xi_0_n23), .ZN(Reg_xi_0_n2) );
  AOI22_X1 Reg_xi_0_U19 ( .A1(x_ext_0__6_), .A2(Reg_xi_0_n31), .B1(x_ext_1__6_), .B2(Reg_xi_0_n30), .ZN(Reg_xi_0_n24) );
  INV_X1 Reg_xi_0_U18 ( .A(Reg_xi_0_n24), .ZN(Reg_xi_0_n3) );
  AOI22_X1 Reg_xi_0_U17 ( .A1(x_ext_0__5_), .A2(Reg_xi_0_n31), .B1(x_ext_1__5_), .B2(Reg_xi_0_n30), .ZN(Reg_xi_0_n25) );
  INV_X1 Reg_xi_0_U16 ( .A(Reg_xi_0_n25), .ZN(Reg_xi_0_n4) );
  AOI22_X1 Reg_xi_0_U15 ( .A1(x_ext_0__4_), .A2(Reg_xi_0_n31), .B1(x_ext_1__4_), .B2(Reg_xi_0_n30), .ZN(Reg_xi_0_n26) );
  INV_X1 Reg_xi_0_U14 ( .A(Reg_xi_0_n26), .ZN(Reg_xi_0_n5) );
  AOI22_X1 Reg_xi_0_U13 ( .A1(x_ext_0__3_), .A2(Reg_xi_0_n31), .B1(x_ext_1__3_), .B2(Reg_xi_0_n30), .ZN(Reg_xi_0_n27) );
  INV_X1 Reg_xi_0_U12 ( .A(Reg_xi_0_n27), .ZN(Reg_xi_0_n6) );
  AOI22_X1 Reg_xi_0_U11 ( .A1(x_ext_0__2_), .A2(Reg_xi_0_n31), .B1(x_ext_1__2_), .B2(Reg_xi_0_n30), .ZN(Reg_xi_0_n28) );
  INV_X1 Reg_xi_0_U10 ( .A(Reg_xi_0_n28), .ZN(Reg_xi_0_n7) );
  AOI22_X1 Reg_xi_0_U9 ( .A1(x_ext_0__1_), .A2(Reg_xi_0_n31), .B1(x_ext_1__1_), 
        .B2(Reg_xi_0_n30), .ZN(Reg_xi_0_n29) );
  INV_X1 Reg_xi_0_U8 ( .A(Reg_xi_0_n29), .ZN(Reg_xi_0_n8) );
  AOI22_X1 Reg_xi_0_U7 ( .A1(x_ext_0__0_), .A2(Reg_xi_0_n31), .B1(x_ext_1__0_), 
        .B2(Reg_xi_0_n30), .ZN(Reg_xi_0_n32) );
  INV_X1 Reg_xi_0_U6 ( .A(Reg_xi_0_n32), .ZN(Reg_xi_0_n9) );
  INV_X1 Reg_xi_0_U5 ( .A(RST_n), .ZN(Reg_xi_0_n10) );
  NOR2_X1 Reg_xi_0_U4 ( .A1(VIN), .A2(Reg_xi_0_n10), .ZN(Reg_xi_0_n30) );
  NOR2_X1 Reg_xi_0_U3 ( .A1(Reg_xi_0_n10), .A2(Reg_xi_0_n30), .ZN(Reg_xi_0_n31) );
  DFF_X1 Reg_xi_0_Q_reg_0_ ( .D(Reg_xi_0_n9), .CK(CLK), .Q(x_ext_1__0_) );
  DFF_X1 Reg_xi_0_Q_reg_1_ ( .D(Reg_xi_0_n8), .CK(CLK), .Q(x_ext_1__1_) );
  DFF_X1 Reg_xi_0_Q_reg_2_ ( .D(Reg_xi_0_n7), .CK(CLK), .Q(x_ext_1__2_) );
  DFF_X1 Reg_xi_0_Q_reg_3_ ( .D(Reg_xi_0_n6), .CK(CLK), .Q(x_ext_1__3_) );
  DFF_X1 Reg_xi_0_Q_reg_4_ ( .D(Reg_xi_0_n5), .CK(CLK), .Q(x_ext_1__4_) );
  DFF_X1 Reg_xi_0_Q_reg_5_ ( .D(Reg_xi_0_n4), .CK(CLK), .Q(x_ext_1__5_) );
  DFF_X1 Reg_xi_0_Q_reg_6_ ( .D(Reg_xi_0_n3), .CK(CLK), .Q(x_ext_1__6_) );
  DFF_X1 Reg_xi_0_Q_reg_7_ ( .D(Reg_xi_0_n2), .CK(CLK), .Q(x_ext_1__7_) );
  DFF_X1 Reg_xi_0_Q_reg_8_ ( .D(Reg_xi_0_n1), .CK(CLK), .Q(x_ext_1__9_) );
  AOI22_X1 Reg_xi_1_U23 ( .A1(x_ext_1__9_), .A2(Reg_xi_1_n31), .B1(x_ext_2__9_), .B2(Reg_xi_1_n30), .ZN(Reg_xi_1_n22) );
  INV_X1 Reg_xi_1_U22 ( .A(Reg_xi_1_n22), .ZN(Reg_xi_1_n1) );
  AOI22_X1 Reg_xi_1_U21 ( .A1(x_ext_1__7_), .A2(Reg_xi_1_n31), .B1(x_ext_2__7_), .B2(Reg_xi_1_n30), .ZN(Reg_xi_1_n23) );
  INV_X1 Reg_xi_1_U20 ( .A(Reg_xi_1_n23), .ZN(Reg_xi_1_n2) );
  AOI22_X1 Reg_xi_1_U19 ( .A1(x_ext_1__6_), .A2(Reg_xi_1_n31), .B1(x_ext_2__6_), .B2(Reg_xi_1_n30), .ZN(Reg_xi_1_n24) );
  INV_X1 Reg_xi_1_U18 ( .A(Reg_xi_1_n24), .ZN(Reg_xi_1_n3) );
  AOI22_X1 Reg_xi_1_U17 ( .A1(x_ext_1__5_), .A2(Reg_xi_1_n31), .B1(x_ext_2__5_), .B2(Reg_xi_1_n30), .ZN(Reg_xi_1_n25) );
  INV_X1 Reg_xi_1_U16 ( .A(Reg_xi_1_n25), .ZN(Reg_xi_1_n4) );
  AOI22_X1 Reg_xi_1_U15 ( .A1(x_ext_1__4_), .A2(Reg_xi_1_n31), .B1(x_ext_2__4_), .B2(Reg_xi_1_n30), .ZN(Reg_xi_1_n26) );
  INV_X1 Reg_xi_1_U14 ( .A(Reg_xi_1_n26), .ZN(Reg_xi_1_n5) );
  AOI22_X1 Reg_xi_1_U13 ( .A1(x_ext_1__3_), .A2(Reg_xi_1_n31), .B1(x_ext_2__3_), .B2(Reg_xi_1_n30), .ZN(Reg_xi_1_n27) );
  INV_X1 Reg_xi_1_U12 ( .A(Reg_xi_1_n27), .ZN(Reg_xi_1_n6) );
  AOI22_X1 Reg_xi_1_U11 ( .A1(x_ext_1__2_), .A2(Reg_xi_1_n31), .B1(x_ext_2__2_), .B2(Reg_xi_1_n30), .ZN(Reg_xi_1_n28) );
  INV_X1 Reg_xi_1_U10 ( .A(Reg_xi_1_n28), .ZN(Reg_xi_1_n7) );
  AOI22_X1 Reg_xi_1_U9 ( .A1(x_ext_1__1_), .A2(Reg_xi_1_n31), .B1(x_ext_2__1_), 
        .B2(Reg_xi_1_n30), .ZN(Reg_xi_1_n29) );
  INV_X1 Reg_xi_1_U8 ( .A(Reg_xi_1_n29), .ZN(Reg_xi_1_n8) );
  AOI22_X1 Reg_xi_1_U7 ( .A1(x_ext_1__0_), .A2(Reg_xi_1_n31), .B1(x_ext_2__0_), 
        .B2(Reg_xi_1_n30), .ZN(Reg_xi_1_n32) );
  INV_X1 Reg_xi_1_U6 ( .A(Reg_xi_1_n32), .ZN(Reg_xi_1_n9) );
  INV_X1 Reg_xi_1_U5 ( .A(RST_n), .ZN(Reg_xi_1_n10) );
  NOR2_X1 Reg_xi_1_U4 ( .A1(VIN), .A2(Reg_xi_1_n10), .ZN(Reg_xi_1_n30) );
  NOR2_X1 Reg_xi_1_U3 ( .A1(Reg_xi_1_n10), .A2(Reg_xi_1_n30), .ZN(Reg_xi_1_n31) );
  DFF_X1 Reg_xi_1_Q_reg_0_ ( .D(Reg_xi_1_n9), .CK(CLK), .Q(x_ext_2__0_) );
  DFF_X1 Reg_xi_1_Q_reg_1_ ( .D(Reg_xi_1_n8), .CK(CLK), .Q(x_ext_2__1_) );
  DFF_X1 Reg_xi_1_Q_reg_2_ ( .D(Reg_xi_1_n7), .CK(CLK), .Q(x_ext_2__2_) );
  DFF_X1 Reg_xi_1_Q_reg_3_ ( .D(Reg_xi_1_n6), .CK(CLK), .Q(x_ext_2__3_) );
  DFF_X1 Reg_xi_1_Q_reg_4_ ( .D(Reg_xi_1_n5), .CK(CLK), .Q(x_ext_2__4_) );
  DFF_X1 Reg_xi_1_Q_reg_5_ ( .D(Reg_xi_1_n4), .CK(CLK), .Q(x_ext_2__5_) );
  DFF_X1 Reg_xi_1_Q_reg_6_ ( .D(Reg_xi_1_n3), .CK(CLK), .Q(x_ext_2__6_) );
  DFF_X1 Reg_xi_1_Q_reg_7_ ( .D(Reg_xi_1_n2), .CK(CLK), .Q(x_ext_2__7_) );
  DFF_X1 Reg_xi_1_Q_reg_8_ ( .D(Reg_xi_1_n1), .CK(CLK), .Q(x_ext_2__9_) );
  AOI22_X1 Reg_xi_2_U23 ( .A1(x_ext_2__9_), .A2(Reg_xi_2_n31), .B1(x_ext_3__9_), .B2(Reg_xi_2_n30), .ZN(Reg_xi_2_n22) );
  INV_X1 Reg_xi_2_U22 ( .A(Reg_xi_2_n22), .ZN(Reg_xi_2_n1) );
  AOI22_X1 Reg_xi_2_U21 ( .A1(x_ext_2__7_), .A2(Reg_xi_2_n31), .B1(x_ext_3__7_), .B2(Reg_xi_2_n30), .ZN(Reg_xi_2_n23) );
  INV_X1 Reg_xi_2_U20 ( .A(Reg_xi_2_n23), .ZN(Reg_xi_2_n2) );
  AOI22_X1 Reg_xi_2_U19 ( .A1(x_ext_2__6_), .A2(Reg_xi_2_n31), .B1(x_ext_3__6_), .B2(Reg_xi_2_n30), .ZN(Reg_xi_2_n24) );
  INV_X1 Reg_xi_2_U18 ( .A(Reg_xi_2_n24), .ZN(Reg_xi_2_n3) );
  AOI22_X1 Reg_xi_2_U17 ( .A1(x_ext_2__5_), .A2(Reg_xi_2_n31), .B1(x_ext_3__5_), .B2(Reg_xi_2_n30), .ZN(Reg_xi_2_n25) );
  INV_X1 Reg_xi_2_U16 ( .A(Reg_xi_2_n25), .ZN(Reg_xi_2_n4) );
  AOI22_X1 Reg_xi_2_U15 ( .A1(x_ext_2__4_), .A2(Reg_xi_2_n31), .B1(x_ext_3__4_), .B2(Reg_xi_2_n30), .ZN(Reg_xi_2_n26) );
  INV_X1 Reg_xi_2_U14 ( .A(Reg_xi_2_n26), .ZN(Reg_xi_2_n5) );
  AOI22_X1 Reg_xi_2_U13 ( .A1(x_ext_2__3_), .A2(Reg_xi_2_n31), .B1(x_ext_3__3_), .B2(Reg_xi_2_n30), .ZN(Reg_xi_2_n27) );
  INV_X1 Reg_xi_2_U12 ( .A(Reg_xi_2_n27), .ZN(Reg_xi_2_n6) );
  AOI22_X1 Reg_xi_2_U11 ( .A1(x_ext_2__2_), .A2(Reg_xi_2_n31), .B1(x_ext_3__2_), .B2(Reg_xi_2_n30), .ZN(Reg_xi_2_n28) );
  INV_X1 Reg_xi_2_U10 ( .A(Reg_xi_2_n28), .ZN(Reg_xi_2_n7) );
  AOI22_X1 Reg_xi_2_U9 ( .A1(x_ext_2__1_), .A2(Reg_xi_2_n31), .B1(x_ext_3__1_), 
        .B2(Reg_xi_2_n30), .ZN(Reg_xi_2_n29) );
  INV_X1 Reg_xi_2_U8 ( .A(Reg_xi_2_n29), .ZN(Reg_xi_2_n8) );
  AOI22_X1 Reg_xi_2_U7 ( .A1(x_ext_2__0_), .A2(Reg_xi_2_n31), .B1(x_ext_3__0_), 
        .B2(Reg_xi_2_n30), .ZN(Reg_xi_2_n32) );
  INV_X1 Reg_xi_2_U6 ( .A(Reg_xi_2_n32), .ZN(Reg_xi_2_n9) );
  INV_X1 Reg_xi_2_U5 ( .A(RST_n), .ZN(Reg_xi_2_n10) );
  NOR2_X1 Reg_xi_2_U4 ( .A1(VIN), .A2(Reg_xi_2_n10), .ZN(Reg_xi_2_n30) );
  NOR2_X1 Reg_xi_2_U3 ( .A1(Reg_xi_2_n10), .A2(Reg_xi_2_n30), .ZN(Reg_xi_2_n31) );
  DFF_X1 Reg_xi_2_Q_reg_0_ ( .D(Reg_xi_2_n9), .CK(CLK), .Q(x_ext_3__0_) );
  DFF_X1 Reg_xi_2_Q_reg_1_ ( .D(Reg_xi_2_n8), .CK(CLK), .Q(x_ext_3__1_) );
  DFF_X1 Reg_xi_2_Q_reg_2_ ( .D(Reg_xi_2_n7), .CK(CLK), .Q(x_ext_3__2_) );
  DFF_X1 Reg_xi_2_Q_reg_3_ ( .D(Reg_xi_2_n6), .CK(CLK), .Q(x_ext_3__3_) );
  DFF_X1 Reg_xi_2_Q_reg_4_ ( .D(Reg_xi_2_n5), .CK(CLK), .Q(x_ext_3__4_) );
  DFF_X1 Reg_xi_2_Q_reg_5_ ( .D(Reg_xi_2_n4), .CK(CLK), .Q(x_ext_3__5_) );
  DFF_X1 Reg_xi_2_Q_reg_6_ ( .D(Reg_xi_2_n3), .CK(CLK), .Q(x_ext_3__6_) );
  DFF_X1 Reg_xi_2_Q_reg_7_ ( .D(Reg_xi_2_n2), .CK(CLK), .Q(x_ext_3__7_) );
  DFF_X1 Reg_xi_2_Q_reg_8_ ( .D(Reg_xi_2_n1), .CK(CLK), .Q(x_ext_3__9_) );
  AOI22_X1 Reg_xi_3_U23 ( .A1(x_ext_3__9_), .A2(Reg_xi_3_n31), .B1(x_k_4__8_), 
        .B2(Reg_xi_3_n30), .ZN(Reg_xi_3_n22) );
  INV_X1 Reg_xi_3_U22 ( .A(Reg_xi_3_n22), .ZN(Reg_xi_3_n1) );
  AOI22_X1 Reg_xi_3_U21 ( .A1(x_ext_3__7_), .A2(Reg_xi_3_n31), .B1(x_k_4__7_), 
        .B2(Reg_xi_3_n30), .ZN(Reg_xi_3_n23) );
  INV_X1 Reg_xi_3_U20 ( .A(Reg_xi_3_n23), .ZN(Reg_xi_3_n2) );
  AOI22_X1 Reg_xi_3_U19 ( .A1(x_ext_3__6_), .A2(Reg_xi_3_n31), .B1(x_k_4__6_), 
        .B2(Reg_xi_3_n30), .ZN(Reg_xi_3_n24) );
  INV_X1 Reg_xi_3_U18 ( .A(Reg_xi_3_n24), .ZN(Reg_xi_3_n3) );
  AOI22_X1 Reg_xi_3_U17 ( .A1(x_ext_3__5_), .A2(Reg_xi_3_n31), .B1(x_k_4__5_), 
        .B2(Reg_xi_3_n30), .ZN(Reg_xi_3_n25) );
  INV_X1 Reg_xi_3_U16 ( .A(Reg_xi_3_n25), .ZN(Reg_xi_3_n4) );
  AOI22_X1 Reg_xi_3_U15 ( .A1(x_ext_3__4_), .A2(Reg_xi_3_n31), .B1(x_k_4__4_), 
        .B2(Reg_xi_3_n30), .ZN(Reg_xi_3_n26) );
  INV_X1 Reg_xi_3_U14 ( .A(Reg_xi_3_n26), .ZN(Reg_xi_3_n5) );
  AOI22_X1 Reg_xi_3_U13 ( .A1(x_ext_3__3_), .A2(Reg_xi_3_n31), .B1(x_k_4__3_), 
        .B2(Reg_xi_3_n30), .ZN(Reg_xi_3_n27) );
  INV_X1 Reg_xi_3_U12 ( .A(Reg_xi_3_n27), .ZN(Reg_xi_3_n6) );
  AOI22_X1 Reg_xi_3_U11 ( .A1(x_ext_3__2_), .A2(Reg_xi_3_n31), .B1(x_k_4__2_), 
        .B2(Reg_xi_3_n30), .ZN(Reg_xi_3_n28) );
  INV_X1 Reg_xi_3_U10 ( .A(Reg_xi_3_n28), .ZN(Reg_xi_3_n7) );
  AOI22_X1 Reg_xi_3_U9 ( .A1(x_ext_3__1_), .A2(Reg_xi_3_n31), .B1(x_k_4__1_), 
        .B2(Reg_xi_3_n30), .ZN(Reg_xi_3_n29) );
  INV_X1 Reg_xi_3_U8 ( .A(Reg_xi_3_n29), .ZN(Reg_xi_3_n8) );
  AOI22_X1 Reg_xi_3_U7 ( .A1(x_ext_3__0_), .A2(Reg_xi_3_n31), .B1(x_k_4__0_), 
        .B2(Reg_xi_3_n30), .ZN(Reg_xi_3_n32) );
  INV_X1 Reg_xi_3_U6 ( .A(Reg_xi_3_n32), .ZN(Reg_xi_3_n9) );
  INV_X1 Reg_xi_3_U5 ( .A(RST_n), .ZN(Reg_xi_3_n10) );
  NOR2_X1 Reg_xi_3_U4 ( .A1(VIN), .A2(Reg_xi_3_n10), .ZN(Reg_xi_3_n30) );
  NOR2_X1 Reg_xi_3_U3 ( .A1(Reg_xi_3_n10), .A2(Reg_xi_3_n30), .ZN(Reg_xi_3_n31) );
  DFF_X1 Reg_xi_3_Q_reg_0_ ( .D(Reg_xi_3_n9), .CK(CLK), .Q(x_k_4__0_) );
  DFF_X1 Reg_xi_3_Q_reg_1_ ( .D(Reg_xi_3_n8), .CK(CLK), .Q(x_k_4__1_) );
  DFF_X1 Reg_xi_3_Q_reg_2_ ( .D(Reg_xi_3_n7), .CK(CLK), .Q(x_k_4__2_) );
  DFF_X1 Reg_xi_3_Q_reg_3_ ( .D(Reg_xi_3_n6), .CK(CLK), .Q(x_k_4__3_) );
  DFF_X1 Reg_xi_3_Q_reg_4_ ( .D(Reg_xi_3_n5), .CK(CLK), .Q(x_k_4__4_) );
  DFF_X1 Reg_xi_3_Q_reg_5_ ( .D(Reg_xi_3_n4), .CK(CLK), .Q(x_k_4__5_) );
  DFF_X1 Reg_xi_3_Q_reg_6_ ( .D(Reg_xi_3_n3), .CK(CLK), .Q(x_k_4__6_) );
  DFF_X1 Reg_xi_3_Q_reg_7_ ( .D(Reg_xi_3_n2), .CK(CLK), .Q(x_k_4__7_) );
  DFF_X1 Reg_xi_3_Q_reg_8_ ( .D(Reg_xi_3_n1), .CK(CLK), .Q(x_k_4__8_) );
  AOI22_X1 Reg_xi_4_U23 ( .A1(x_k_4__8_), .A2(Reg_xi_4_n31), .B1(x_ext_5__9_), 
        .B2(Reg_xi_4_n30), .ZN(Reg_xi_4_n22) );
  INV_X1 Reg_xi_4_U22 ( .A(Reg_xi_4_n22), .ZN(Reg_xi_4_n1) );
  AOI22_X1 Reg_xi_4_U21 ( .A1(x_k_4__7_), .A2(Reg_xi_4_n31), .B1(x_ext_5__7_), 
        .B2(Reg_xi_4_n30), .ZN(Reg_xi_4_n23) );
  INV_X1 Reg_xi_4_U20 ( .A(Reg_xi_4_n23), .ZN(Reg_xi_4_n2) );
  AOI22_X1 Reg_xi_4_U19 ( .A1(x_k_4__6_), .A2(Reg_xi_4_n31), .B1(x_ext_5__6_), 
        .B2(Reg_xi_4_n30), .ZN(Reg_xi_4_n24) );
  INV_X1 Reg_xi_4_U18 ( .A(Reg_xi_4_n24), .ZN(Reg_xi_4_n3) );
  AOI22_X1 Reg_xi_4_U17 ( .A1(x_k_4__5_), .A2(Reg_xi_4_n31), .B1(x_ext_5__5_), 
        .B2(Reg_xi_4_n30), .ZN(Reg_xi_4_n25) );
  INV_X1 Reg_xi_4_U16 ( .A(Reg_xi_4_n25), .ZN(Reg_xi_4_n4) );
  AOI22_X1 Reg_xi_4_U15 ( .A1(x_k_4__4_), .A2(Reg_xi_4_n31), .B1(x_ext_5__4_), 
        .B2(Reg_xi_4_n30), .ZN(Reg_xi_4_n26) );
  INV_X1 Reg_xi_4_U14 ( .A(Reg_xi_4_n26), .ZN(Reg_xi_4_n5) );
  AOI22_X1 Reg_xi_4_U13 ( .A1(x_k_4__3_), .A2(Reg_xi_4_n31), .B1(x_ext_5__3_), 
        .B2(Reg_xi_4_n30), .ZN(Reg_xi_4_n27) );
  INV_X1 Reg_xi_4_U12 ( .A(Reg_xi_4_n27), .ZN(Reg_xi_4_n6) );
  AOI22_X1 Reg_xi_4_U11 ( .A1(x_k_4__2_), .A2(Reg_xi_4_n31), .B1(x_ext_5__2_), 
        .B2(Reg_xi_4_n30), .ZN(Reg_xi_4_n28) );
  INV_X1 Reg_xi_4_U10 ( .A(Reg_xi_4_n28), .ZN(Reg_xi_4_n7) );
  AOI22_X1 Reg_xi_4_U9 ( .A1(x_k_4__1_), .A2(Reg_xi_4_n31), .B1(x_ext_5__1_), 
        .B2(Reg_xi_4_n30), .ZN(Reg_xi_4_n29) );
  INV_X1 Reg_xi_4_U8 ( .A(Reg_xi_4_n29), .ZN(Reg_xi_4_n8) );
  AOI22_X1 Reg_xi_4_U7 ( .A1(x_k_4__0_), .A2(Reg_xi_4_n31), .B1(x_ext_5__0_), 
        .B2(Reg_xi_4_n30), .ZN(Reg_xi_4_n32) );
  INV_X1 Reg_xi_4_U6 ( .A(Reg_xi_4_n32), .ZN(Reg_xi_4_n9) );
  INV_X1 Reg_xi_4_U5 ( .A(RST_n), .ZN(Reg_xi_4_n10) );
  NOR2_X1 Reg_xi_4_U4 ( .A1(VIN), .A2(Reg_xi_4_n10), .ZN(Reg_xi_4_n30) );
  NOR2_X1 Reg_xi_4_U3 ( .A1(Reg_xi_4_n10), .A2(Reg_xi_4_n30), .ZN(Reg_xi_4_n31) );
  DFF_X1 Reg_xi_4_Q_reg_0_ ( .D(Reg_xi_4_n9), .CK(CLK), .Q(x_ext_5__0_) );
  DFF_X1 Reg_xi_4_Q_reg_1_ ( .D(Reg_xi_4_n8), .CK(CLK), .Q(x_ext_5__1_) );
  DFF_X1 Reg_xi_4_Q_reg_2_ ( .D(Reg_xi_4_n7), .CK(CLK), .Q(x_ext_5__2_) );
  DFF_X1 Reg_xi_4_Q_reg_3_ ( .D(Reg_xi_4_n6), .CK(CLK), .Q(x_ext_5__3_) );
  DFF_X1 Reg_xi_4_Q_reg_4_ ( .D(Reg_xi_4_n5), .CK(CLK), .Q(x_ext_5__4_) );
  DFF_X1 Reg_xi_4_Q_reg_5_ ( .D(Reg_xi_4_n4), .CK(CLK), .Q(x_ext_5__5_) );
  DFF_X1 Reg_xi_4_Q_reg_6_ ( .D(Reg_xi_4_n3), .CK(CLK), .Q(x_ext_5__6_) );
  DFF_X1 Reg_xi_4_Q_reg_7_ ( .D(Reg_xi_4_n2), .CK(CLK), .Q(x_ext_5__7_) );
  DFF_X1 Reg_xi_4_Q_reg_8_ ( .D(Reg_xi_4_n1), .CK(CLK), .Q(x_ext_5__9_) );
  AOI22_X1 Reg_xi_5_U23 ( .A1(x_ext_5__9_), .A2(Reg_xi_5_n31), .B1(x_ext_6__9_), .B2(Reg_xi_5_n30), .ZN(Reg_xi_5_n22) );
  INV_X1 Reg_xi_5_U22 ( .A(Reg_xi_5_n22), .ZN(Reg_xi_5_n1) );
  AOI22_X1 Reg_xi_5_U21 ( .A1(x_ext_5__7_), .A2(Reg_xi_5_n31), .B1(x_ext_6__7_), .B2(Reg_xi_5_n30), .ZN(Reg_xi_5_n23) );
  INV_X1 Reg_xi_5_U20 ( .A(Reg_xi_5_n23), .ZN(Reg_xi_5_n2) );
  AOI22_X1 Reg_xi_5_U19 ( .A1(x_ext_5__6_), .A2(Reg_xi_5_n31), .B1(x_ext_6__6_), .B2(Reg_xi_5_n30), .ZN(Reg_xi_5_n24) );
  INV_X1 Reg_xi_5_U18 ( .A(Reg_xi_5_n24), .ZN(Reg_xi_5_n3) );
  AOI22_X1 Reg_xi_5_U17 ( .A1(x_ext_5__5_), .A2(Reg_xi_5_n31), .B1(x_ext_6__5_), .B2(Reg_xi_5_n30), .ZN(Reg_xi_5_n25) );
  INV_X1 Reg_xi_5_U16 ( .A(Reg_xi_5_n25), .ZN(Reg_xi_5_n4) );
  AOI22_X1 Reg_xi_5_U15 ( .A1(x_ext_5__4_), .A2(Reg_xi_5_n31), .B1(x_ext_6__4_), .B2(Reg_xi_5_n30), .ZN(Reg_xi_5_n26) );
  INV_X1 Reg_xi_5_U14 ( .A(Reg_xi_5_n26), .ZN(Reg_xi_5_n5) );
  AOI22_X1 Reg_xi_5_U13 ( .A1(x_ext_5__3_), .A2(Reg_xi_5_n31), .B1(x_ext_6__3_), .B2(Reg_xi_5_n30), .ZN(Reg_xi_5_n27) );
  INV_X1 Reg_xi_5_U12 ( .A(Reg_xi_5_n27), .ZN(Reg_xi_5_n6) );
  AOI22_X1 Reg_xi_5_U11 ( .A1(x_ext_5__2_), .A2(Reg_xi_5_n31), .B1(x_ext_6__2_), .B2(Reg_xi_5_n30), .ZN(Reg_xi_5_n28) );
  INV_X1 Reg_xi_5_U10 ( .A(Reg_xi_5_n28), .ZN(Reg_xi_5_n7) );
  AOI22_X1 Reg_xi_5_U9 ( .A1(x_ext_5__1_), .A2(Reg_xi_5_n31), .B1(x_ext_6__1_), 
        .B2(Reg_xi_5_n30), .ZN(Reg_xi_5_n29) );
  INV_X1 Reg_xi_5_U8 ( .A(Reg_xi_5_n29), .ZN(Reg_xi_5_n8) );
  AOI22_X1 Reg_xi_5_U7 ( .A1(x_ext_5__0_), .A2(Reg_xi_5_n31), .B1(x_ext_6__0_), 
        .B2(Reg_xi_5_n30), .ZN(Reg_xi_5_n32) );
  INV_X1 Reg_xi_5_U6 ( .A(Reg_xi_5_n32), .ZN(Reg_xi_5_n9) );
  INV_X1 Reg_xi_5_U5 ( .A(RST_n), .ZN(Reg_xi_5_n10) );
  NOR2_X1 Reg_xi_5_U4 ( .A1(VIN), .A2(Reg_xi_5_n10), .ZN(Reg_xi_5_n30) );
  NOR2_X1 Reg_xi_5_U3 ( .A1(Reg_xi_5_n10), .A2(Reg_xi_5_n30), .ZN(Reg_xi_5_n31) );
  DFF_X1 Reg_xi_5_Q_reg_0_ ( .D(Reg_xi_5_n9), .CK(CLK), .Q(x_ext_6__0_) );
  DFF_X1 Reg_xi_5_Q_reg_1_ ( .D(Reg_xi_5_n8), .CK(CLK), .Q(x_ext_6__1_) );
  DFF_X1 Reg_xi_5_Q_reg_2_ ( .D(Reg_xi_5_n7), .CK(CLK), .Q(x_ext_6__2_) );
  DFF_X1 Reg_xi_5_Q_reg_3_ ( .D(Reg_xi_5_n6), .CK(CLK), .Q(x_ext_6__3_) );
  DFF_X1 Reg_xi_5_Q_reg_4_ ( .D(Reg_xi_5_n5), .CK(CLK), .Q(x_ext_6__4_) );
  DFF_X1 Reg_xi_5_Q_reg_5_ ( .D(Reg_xi_5_n4), .CK(CLK), .Q(x_ext_6__5_) );
  DFF_X1 Reg_xi_5_Q_reg_6_ ( .D(Reg_xi_5_n3), .CK(CLK), .Q(x_ext_6__6_) );
  DFF_X1 Reg_xi_5_Q_reg_7_ ( .D(Reg_xi_5_n2), .CK(CLK), .Q(x_ext_6__7_) );
  DFF_X1 Reg_xi_5_Q_reg_8_ ( .D(Reg_xi_5_n1), .CK(CLK), .Q(x_ext_6__9_) );
  AOI22_X1 Reg_xi_6_U23 ( .A1(x_ext_6__9_), .A2(Reg_xi_6_n31), .B1(x_ext_7__9_), .B2(Reg_xi_6_n30), .ZN(Reg_xi_6_n22) );
  INV_X1 Reg_xi_6_U22 ( .A(Reg_xi_6_n22), .ZN(Reg_xi_6_n1) );
  AOI22_X1 Reg_xi_6_U21 ( .A1(x_ext_6__7_), .A2(Reg_xi_6_n31), .B1(x_ext_7__7_), .B2(Reg_xi_6_n30), .ZN(Reg_xi_6_n23) );
  INV_X1 Reg_xi_6_U20 ( .A(Reg_xi_6_n23), .ZN(Reg_xi_6_n2) );
  AOI22_X1 Reg_xi_6_U19 ( .A1(x_ext_6__6_), .A2(Reg_xi_6_n31), .B1(x_ext_7__6_), .B2(Reg_xi_6_n30), .ZN(Reg_xi_6_n24) );
  INV_X1 Reg_xi_6_U18 ( .A(Reg_xi_6_n24), .ZN(Reg_xi_6_n3) );
  AOI22_X1 Reg_xi_6_U17 ( .A1(x_ext_6__5_), .A2(Reg_xi_6_n31), .B1(x_ext_7__5_), .B2(Reg_xi_6_n30), .ZN(Reg_xi_6_n25) );
  INV_X1 Reg_xi_6_U16 ( .A(Reg_xi_6_n25), .ZN(Reg_xi_6_n4) );
  AOI22_X1 Reg_xi_6_U15 ( .A1(x_ext_6__4_), .A2(Reg_xi_6_n31), .B1(x_ext_7__4_), .B2(Reg_xi_6_n30), .ZN(Reg_xi_6_n26) );
  INV_X1 Reg_xi_6_U14 ( .A(Reg_xi_6_n26), .ZN(Reg_xi_6_n5) );
  AOI22_X1 Reg_xi_6_U13 ( .A1(x_ext_6__3_), .A2(Reg_xi_6_n31), .B1(x_ext_7__3_), .B2(Reg_xi_6_n30), .ZN(Reg_xi_6_n27) );
  INV_X1 Reg_xi_6_U12 ( .A(Reg_xi_6_n27), .ZN(Reg_xi_6_n6) );
  AOI22_X1 Reg_xi_6_U11 ( .A1(x_ext_6__2_), .A2(Reg_xi_6_n31), .B1(x_ext_7__2_), .B2(Reg_xi_6_n30), .ZN(Reg_xi_6_n28) );
  INV_X1 Reg_xi_6_U10 ( .A(Reg_xi_6_n28), .ZN(Reg_xi_6_n7) );
  AOI22_X1 Reg_xi_6_U9 ( .A1(x_ext_6__1_), .A2(Reg_xi_6_n31), .B1(x_ext_7__1_), 
        .B2(Reg_xi_6_n30), .ZN(Reg_xi_6_n29) );
  INV_X1 Reg_xi_6_U8 ( .A(Reg_xi_6_n29), .ZN(Reg_xi_6_n8) );
  AOI22_X1 Reg_xi_6_U7 ( .A1(x_ext_6__0_), .A2(Reg_xi_6_n31), .B1(x_ext_7__0_), 
        .B2(Reg_xi_6_n30), .ZN(Reg_xi_6_n32) );
  INV_X1 Reg_xi_6_U6 ( .A(Reg_xi_6_n32), .ZN(Reg_xi_6_n9) );
  INV_X1 Reg_xi_6_U5 ( .A(RST_n), .ZN(Reg_xi_6_n10) );
  NOR2_X1 Reg_xi_6_U4 ( .A1(VIN), .A2(Reg_xi_6_n10), .ZN(Reg_xi_6_n30) );
  NOR2_X1 Reg_xi_6_U3 ( .A1(Reg_xi_6_n10), .A2(Reg_xi_6_n30), .ZN(Reg_xi_6_n31) );
  DFF_X1 Reg_xi_6_Q_reg_0_ ( .D(Reg_xi_6_n9), .CK(CLK), .Q(x_ext_7__0_) );
  DFF_X1 Reg_xi_6_Q_reg_1_ ( .D(Reg_xi_6_n8), .CK(CLK), .Q(x_ext_7__1_) );
  DFF_X1 Reg_xi_6_Q_reg_2_ ( .D(Reg_xi_6_n7), .CK(CLK), .Q(x_ext_7__2_) );
  DFF_X1 Reg_xi_6_Q_reg_3_ ( .D(Reg_xi_6_n6), .CK(CLK), .Q(x_ext_7__3_) );
  DFF_X1 Reg_xi_6_Q_reg_4_ ( .D(Reg_xi_6_n5), .CK(CLK), .Q(x_ext_7__4_) );
  DFF_X1 Reg_xi_6_Q_reg_5_ ( .D(Reg_xi_6_n4), .CK(CLK), .Q(x_ext_7__5_) );
  DFF_X1 Reg_xi_6_Q_reg_6_ ( .D(Reg_xi_6_n3), .CK(CLK), .Q(x_ext_7__6_) );
  DFF_X1 Reg_xi_6_Q_reg_7_ ( .D(Reg_xi_6_n2), .CK(CLK), .Q(x_ext_7__7_) );
  DFF_X1 Reg_xi_6_Q_reg_8_ ( .D(Reg_xi_6_n1), .CK(CLK), .Q(x_ext_7__9_) );
  AOI22_X1 Reg_xi_7_U23 ( .A1(x_ext_7__9_), .A2(Reg_xi_7_n31), .B1(x_ext_8__9_), .B2(Reg_xi_7_n30), .ZN(Reg_xi_7_n22) );
  INV_X1 Reg_xi_7_U22 ( .A(Reg_xi_7_n22), .ZN(Reg_xi_7_n1) );
  AOI22_X1 Reg_xi_7_U21 ( .A1(x_ext_7__7_), .A2(Reg_xi_7_n31), .B1(x_ext_8__7_), .B2(Reg_xi_7_n30), .ZN(Reg_xi_7_n23) );
  INV_X1 Reg_xi_7_U20 ( .A(Reg_xi_7_n23), .ZN(Reg_xi_7_n2) );
  AOI22_X1 Reg_xi_7_U19 ( .A1(x_ext_7__6_), .A2(Reg_xi_7_n31), .B1(x_ext_8__6_), .B2(Reg_xi_7_n30), .ZN(Reg_xi_7_n24) );
  INV_X1 Reg_xi_7_U18 ( .A(Reg_xi_7_n24), .ZN(Reg_xi_7_n3) );
  AOI22_X1 Reg_xi_7_U17 ( .A1(x_ext_7__5_), .A2(Reg_xi_7_n31), .B1(x_ext_8__5_), .B2(Reg_xi_7_n30), .ZN(Reg_xi_7_n25) );
  INV_X1 Reg_xi_7_U16 ( .A(Reg_xi_7_n25), .ZN(Reg_xi_7_n4) );
  AOI22_X1 Reg_xi_7_U15 ( .A1(x_ext_7__4_), .A2(Reg_xi_7_n31), .B1(x_ext_8__4_), .B2(Reg_xi_7_n30), .ZN(Reg_xi_7_n26) );
  INV_X1 Reg_xi_7_U14 ( .A(Reg_xi_7_n26), .ZN(Reg_xi_7_n5) );
  AOI22_X1 Reg_xi_7_U13 ( .A1(x_ext_7__3_), .A2(Reg_xi_7_n31), .B1(x_ext_8__3_), .B2(Reg_xi_7_n30), .ZN(Reg_xi_7_n27) );
  INV_X1 Reg_xi_7_U12 ( .A(Reg_xi_7_n27), .ZN(Reg_xi_7_n6) );
  AOI22_X1 Reg_xi_7_U11 ( .A1(x_ext_7__2_), .A2(Reg_xi_7_n31), .B1(x_ext_8__2_), .B2(Reg_xi_7_n30), .ZN(Reg_xi_7_n28) );
  INV_X1 Reg_xi_7_U10 ( .A(Reg_xi_7_n28), .ZN(Reg_xi_7_n7) );
  AOI22_X1 Reg_xi_7_U9 ( .A1(x_ext_7__1_), .A2(Reg_xi_7_n31), .B1(x_ext_8__1_), 
        .B2(Reg_xi_7_n30), .ZN(Reg_xi_7_n29) );
  INV_X1 Reg_xi_7_U8 ( .A(Reg_xi_7_n29), .ZN(Reg_xi_7_n8) );
  AOI22_X1 Reg_xi_7_U7 ( .A1(x_ext_7__0_), .A2(Reg_xi_7_n31), .B1(x_ext_8__0_), 
        .B2(Reg_xi_7_n30), .ZN(Reg_xi_7_n32) );
  INV_X1 Reg_xi_7_U6 ( .A(Reg_xi_7_n32), .ZN(Reg_xi_7_n9) );
  INV_X1 Reg_xi_7_U5 ( .A(RST_n), .ZN(Reg_xi_7_n10) );
  NOR2_X1 Reg_xi_7_U4 ( .A1(VIN), .A2(Reg_xi_7_n10), .ZN(Reg_xi_7_n30) );
  NOR2_X1 Reg_xi_7_U3 ( .A1(Reg_xi_7_n10), .A2(Reg_xi_7_n30), .ZN(Reg_xi_7_n31) );
  DFF_X1 Reg_xi_7_Q_reg_0_ ( .D(Reg_xi_7_n9), .CK(CLK), .Q(x_ext_8__0_) );
  DFF_X1 Reg_xi_7_Q_reg_1_ ( .D(Reg_xi_7_n8), .CK(CLK), .Q(x_ext_8__1_) );
  DFF_X1 Reg_xi_7_Q_reg_2_ ( .D(Reg_xi_7_n7), .CK(CLK), .Q(x_ext_8__2_) );
  DFF_X1 Reg_xi_7_Q_reg_3_ ( .D(Reg_xi_7_n6), .CK(CLK), .Q(x_ext_8__3_) );
  DFF_X1 Reg_xi_7_Q_reg_4_ ( .D(Reg_xi_7_n5), .CK(CLK), .Q(x_ext_8__4_) );
  DFF_X1 Reg_xi_7_Q_reg_5_ ( .D(Reg_xi_7_n4), .CK(CLK), .Q(x_ext_8__5_) );
  DFF_X1 Reg_xi_7_Q_reg_6_ ( .D(Reg_xi_7_n3), .CK(CLK), .Q(x_ext_8__6_) );
  DFF_X1 Reg_xi_7_Q_reg_7_ ( .D(Reg_xi_7_n2), .CK(CLK), .Q(x_ext_8__7_) );
  DFF_X1 Reg_xi_7_Q_reg_8_ ( .D(Reg_xi_7_n1), .CK(CLK), .Q(x_ext_8__9_) );
  DFFR_X1 FF1_Q_reg ( .D(VIN), .CK(CLK), .RN(RST_n), .Q(VIN_d) );
  DFFR_X1 FF2_Q_reg ( .D(VIN_d), .CK(CLK), .RN(RST_n), .Q(VOUT) );
  NAND2_X1 mult_105_U96 ( .A1(b_4__6_), .A2(x_k_4__7_), .ZN(mult_105_n101) );
  NAND2_X1 mult_105_U95 ( .A1(b_4__7_), .A2(x_k_4__6_), .ZN(mult_105_n100) );
  NAND2_X1 mult_105_U94 ( .A1(mult_105_n101), .A2(mult_105_n100), .ZN(
        mult_105_n19) );
  XNOR2_X1 mult_105_U93 ( .A(mult_105_n100), .B(mult_105_n101), .ZN(
        mult_105_n20) );
  NAND2_X1 mult_105_U92 ( .A1(x_k_4__7_), .A2(b_4__8_), .ZN(mult_105_n34) );
  NAND2_X1 mult_105_U91 ( .A1(x_k_4__6_), .A2(b_4__8_), .ZN(mult_105_n35) );
  NAND2_X1 mult_105_U90 ( .A1(x_k_4__5_), .A2(b_4__8_), .ZN(mult_105_n36) );
  NAND2_X1 mult_105_U89 ( .A1(x_k_4__4_), .A2(b_4__8_), .ZN(mult_105_n37) );
  NAND2_X1 mult_105_U88 ( .A1(b_4__7_), .A2(x_k_4__8_), .ZN(mult_105_n38) );
  NOR2_X1 mult_105_U87 ( .A1(mult_105_n94), .A2(mult_105_n90), .ZN(
        mult_105_n39) );
  NOR2_X1 mult_105_U86 ( .A1(mult_105_n96), .A2(mult_105_n90), .ZN(
        mult_105_n41) );
  NOR2_X1 mult_105_U85 ( .A1(mult_105_n97), .A2(mult_105_n90), .ZN(
        mult_105_n42) );
  NAND2_X1 mult_105_U84 ( .A1(b_4__6_), .A2(x_k_4__8_), .ZN(mult_105_n43) );
  NOR2_X1 mult_105_U83 ( .A1(mult_105_n95), .A2(mult_105_n91), .ZN(
        mult_105_n45) );
  NOR2_X1 mult_105_U82 ( .A1(mult_105_n96), .A2(mult_105_n91), .ZN(
        mult_105_n46) );
  NOR2_X1 mult_105_U81 ( .A1(mult_105_n97), .A2(mult_105_n91), .ZN(
        mult_105_n47) );
  NAND2_X1 mult_105_U80 ( .A1(b_4__5_), .A2(x_k_4__8_), .ZN(mult_105_n48) );
  NOR2_X1 mult_105_U79 ( .A1(mult_105_n94), .A2(mult_105_n92), .ZN(
        mult_105_n49) );
  NOR2_X1 mult_105_U78 ( .A1(mult_105_n95), .A2(mult_105_n92), .ZN(
        mult_105_n50) );
  NOR2_X1 mult_105_U77 ( .A1(mult_105_n96), .A2(mult_105_n92), .ZN(
        mult_105_n51) );
  NOR2_X1 mult_105_U76 ( .A1(mult_105_n97), .A2(mult_105_n92), .ZN(
        mult_105_n52) );
  NAND2_X1 mult_105_U75 ( .A1(b_4__4_), .A2(x_k_4__8_), .ZN(mult_105_n53) );
  NOR2_X1 mult_105_U74 ( .A1(mult_105_n93), .A2(mult_105_n94), .ZN(
        mult_105_n54) );
  NOR2_X1 mult_105_U73 ( .A1(mult_105_n93), .A2(mult_105_n95), .ZN(
        mult_105_n55) );
  NOR2_X1 mult_105_U72 ( .A1(mult_105_n93), .A2(mult_105_n96), .ZN(
        mult_105_n56) );
  NOR2_X1 mult_105_U71 ( .A1(mult_105_n93), .A2(mult_105_n97), .ZN(p_4__0_) );
  NAND2_X1 mult_105_U70 ( .A1(x_k_4__8_), .A2(b_4__8_), .ZN(mult_105_n98) );
  XNOR2_X1 mult_105_U69 ( .A(mult_105_n9), .B(mult_105_n2), .ZN(mult_105_n99)
         );
  XOR2_X1 mult_105_U68 ( .A(mult_105_n98), .B(mult_105_n99), .Z(p_4__8_) );
  INV_X1 mult_105_U67 ( .A(b_4__7_), .ZN(mult_105_n90) );
  INV_X1 mult_105_U66 ( .A(b_4__6_), .ZN(mult_105_n91) );
  INV_X1 mult_105_U65 ( .A(x_k_4__7_), .ZN(mult_105_n94) );
  INV_X1 mult_105_U64 ( .A(x_k_4__6_), .ZN(mult_105_n95) );
  INV_X1 mult_105_U63 ( .A(b_4__5_), .ZN(mult_105_n92) );
  INV_X1 mult_105_U62 ( .A(b_4__4_), .ZN(mult_105_n93) );
  INV_X1 mult_105_U61 ( .A(x_k_4__4_), .ZN(mult_105_n97) );
  INV_X1 mult_105_U60 ( .A(x_k_4__5_), .ZN(mult_105_n96) );
  HA_X1 mult_105_U22 ( .A(mult_105_n51), .B(mult_105_n55), .CO(mult_105_n31), 
        .S(mult_105_n32) );
  HA_X1 mult_105_U21 ( .A(mult_105_n42), .B(mult_105_n46), .CO(mult_105_n29), 
        .S(mult_105_n30) );
  FA_X1 mult_105_U20 ( .A(mult_105_n50), .B(mult_105_n54), .CI(mult_105_n31), 
        .CO(mult_105_n27), .S(mult_105_n28) );
  HA_X1 mult_105_U19 ( .A(mult_105_n49), .B(mult_105_n41), .CO(mult_105_n25), 
        .S(mult_105_n26) );
  FA_X1 mult_105_U18 ( .A(mult_105_n53), .B(mult_105_n45), .CI(mult_105_n37), 
        .CO(mult_105_n23), .S(mult_105_n24) );
  FA_X1 mult_105_U17 ( .A(mult_105_n26), .B(mult_105_n29), .CI(mult_105_n27), 
        .CO(mult_105_n21), .S(mult_105_n22) );
  FA_X1 mult_105_U14 ( .A(mult_105_n36), .B(mult_105_n48), .CI(mult_105_n25), 
        .CO(mult_105_n17), .S(mult_105_n18) );
  FA_X1 mult_105_U13 ( .A(mult_105_n23), .B(mult_105_n20), .CI(mult_105_n18), 
        .CO(mult_105_n15), .S(mult_105_n16) );
  FA_X1 mult_105_U12 ( .A(mult_105_n43), .B(mult_105_n39), .CI(mult_105_n35), 
        .CO(mult_105_n13), .S(mult_105_n14) );
  FA_X1 mult_105_U11 ( .A(mult_105_n17), .B(mult_105_n19), .CI(mult_105_n14), 
        .CO(mult_105_n11), .S(mult_105_n12) );
  FA_X1 mult_105_U10 ( .A(mult_105_n34), .B(mult_105_n38), .CI(mult_105_n13), 
        .CO(mult_105_n9), .S(mult_105_n10) );
  HA_X1 mult_105_U9 ( .A(mult_105_n56), .B(mult_105_n52), .CO(mult_105_n8), 
        .S(p_4__1_) );
  FA_X1 mult_105_U8 ( .A(mult_105_n8), .B(mult_105_n47), .CI(mult_105_n32), 
        .CO(mult_105_n7), .S(p_4__2_) );
  FA_X1 mult_105_U7 ( .A(mult_105_n7), .B(mult_105_n30), .CI(mult_105_n28), 
        .CO(mult_105_n6), .S(p_4__3_) );
  FA_X1 mult_105_U6 ( .A(mult_105_n22), .B(mult_105_n24), .CI(mult_105_n6), 
        .CO(mult_105_n5), .S(p_4__4_) );
  FA_X1 mult_105_U5 ( .A(mult_105_n16), .B(mult_105_n21), .CI(mult_105_n5), 
        .CO(mult_105_n4), .S(p_4__5_) );
  FA_X1 mult_105_U4 ( .A(mult_105_n12), .B(mult_105_n15), .CI(mult_105_n4), 
        .CO(mult_105_n3), .S(p_4__6_) );
  FA_X1 mult_105_U3 ( .A(mult_105_n10), .B(mult_105_n11), .CI(mult_105_n3), 
        .CO(mult_105_n2), .S(p_4__7_) );
  OAI211_X1 add_97_U11 ( .C1(x_ext_3__1_), .C2(x_ext_5__1_), .A(x_ext_3__0_), 
        .B(x_ext_5__0_), .ZN(add_97_n11) );
  AOI21_X1 add_97_U10 ( .B1(x_ext_3__1_), .B2(x_ext_5__1_), .A(add_97_n5), 
        .ZN(add_97_n9) );
  OAI21_X1 add_97_U9 ( .B1(x_ext_3__2_), .B2(add_97_n4), .A(x_ext_5__2_), .ZN(
        add_97_n10) );
  OAI21_X1 add_97_U8 ( .B1(add_97_n9), .B2(add_97_n3), .A(add_97_n10), .ZN(
        add_97_n7) );
  OAI21_X1 add_97_U7 ( .B1(x_ext_3__3_), .B2(add_97_n7), .A(x_ext_5__3_), .ZN(
        add_97_n8) );
  AOI21_X1 add_97_U6 ( .B1(add_97_n7), .B2(x_ext_3__3_), .A(add_97_n2), .ZN(
        add_97_n6) );
  INV_X1 add_97_U5 ( .A(add_97_n8), .ZN(add_97_n2) );
  INV_X1 add_97_U4 ( .A(add_97_n6), .ZN(add_97_n1) );
  INV_X1 add_97_U3 ( .A(add_97_n9), .ZN(add_97_n4) );
  INV_X1 add_97_U2 ( .A(x_ext_3__2_), .ZN(add_97_n3) );
  INV_X1 add_97_U1 ( .A(add_97_n11), .ZN(add_97_n5) );
  FA_X1 add_97_U1_4 ( .A(x_ext_3__4_), .B(x_ext_5__4_), .CI(add_97_n1), .CO(
        add_97_carry[5]), .S(s_1_3__4_) );
  FA_X1 add_97_U1_5 ( .A(x_ext_3__5_), .B(x_ext_5__5_), .CI(add_97_carry[5]), 
        .CO(add_97_carry[6]), .S(s_1_3__5_) );
  FA_X1 add_97_U1_6 ( .A(x_ext_3__6_), .B(x_ext_5__6_), .CI(add_97_carry[6]), 
        .CO(add_97_carry[7]), .S(s_1_3__6_) );
  FA_X1 add_97_U1_7 ( .A(x_ext_3__7_), .B(x_ext_5__7_), .CI(add_97_carry[7]), 
        .CO(add_97_carry[8]), .S(s_1_3__7_) );
  FA_X1 add_97_U1_8 ( .A(x_ext_3__9_), .B(x_ext_5__9_), .CI(add_97_carry[8]), 
        .CO(add_97_carry[9]), .S(s_1_3__8_) );
  FA_X1 add_97_U1_9 ( .A(x_ext_3__9_), .B(x_ext_5__9_), .CI(add_97_carry[9]), 
        .S(s_1_3__9_) );
  NAND2_X1 mult_103_U114 ( .A1(s_1_3__6_), .A2(b_3__7_), .ZN(mult_103_n28) );
  NAND2_X1 mult_103_U113 ( .A1(b_3__4_), .A2(s_1_3__8_), .ZN(mult_103_n119) );
  NAND2_X1 mult_103_U112 ( .A1(b_3__6_), .A2(s_1_3__6_), .ZN(mult_103_n118) );
  NAND2_X1 mult_103_U111 ( .A1(mult_103_n119), .A2(mult_103_n118), .ZN(
        mult_103_n33) );
  XNOR2_X1 mult_103_U110 ( .A(mult_103_n118), .B(mult_103_n119), .ZN(
        mult_103_n34) );
  NAND2_X1 mult_103_U109 ( .A1(s_1_3__7_), .A2(b_3__8_), .ZN(mult_103_n42) );
  NAND2_X1 mult_103_U108 ( .A1(s_1_3__6_), .A2(b_3__8_), .ZN(mult_103_n43) );
  NAND2_X1 mult_103_U107 ( .A1(s_1_3__5_), .A2(b_3__8_), .ZN(mult_103_n44) );
  NAND2_X1 mult_103_U106 ( .A1(s_1_3__4_), .A2(b_3__8_), .ZN(mult_103_n45) );
  NOR2_X1 mult_103_U105 ( .A1(mult_103_n103), .A2(mult_103_n108), .ZN(
        mult_103_n47) );
  NOR2_X1 mult_103_U104 ( .A1(mult_103_n103), .A2(mult_103_n109), .ZN(
        mult_103_n48) );
  NOR2_X1 mult_103_U103 ( .A1(mult_103_n103), .A2(mult_103_n111), .ZN(
        mult_103_n49) );
  NOR2_X1 mult_103_U102 ( .A1(mult_103_n103), .A2(mult_103_n112), .ZN(
        mult_103_n50) );
  NAND2_X1 mult_103_U101 ( .A1(b_3__6_), .A2(s_1_3__9_), .ZN(mult_103_n51) );
  NOR2_X1 mult_103_U100 ( .A1(mult_103_n108), .A2(mult_103_n105), .ZN(
        mult_103_n52) );
  NOR2_X1 mult_103_U99 ( .A1(mult_103_n109), .A2(mult_103_n105), .ZN(
        mult_103_n53) );
  NOR2_X1 mult_103_U98 ( .A1(mult_103_n111), .A2(mult_103_n105), .ZN(
        mult_103_n55) );
  NOR2_X1 mult_103_U97 ( .A1(mult_103_n112), .A2(mult_103_n105), .ZN(
        mult_103_n56) );
  NAND2_X1 mult_103_U96 ( .A1(b_3__5_), .A2(s_1_3__9_), .ZN(mult_103_n57) );
  NOR2_X1 mult_103_U95 ( .A1(mult_103_n108), .A2(mult_103_n106), .ZN(
        mult_103_n58) );
  NOR2_X1 mult_103_U94 ( .A1(mult_103_n109), .A2(mult_103_n106), .ZN(
        mult_103_n59) );
  NOR2_X1 mult_103_U93 ( .A1(mult_103_n110), .A2(mult_103_n106), .ZN(
        mult_103_n60) );
  NOR2_X1 mult_103_U92 ( .A1(mult_103_n111), .A2(mult_103_n106), .ZN(
        mult_103_n61) );
  NOR2_X1 mult_103_U91 ( .A1(mult_103_n112), .A2(mult_103_n106), .ZN(
        mult_103_n62) );
  NAND2_X1 mult_103_U90 ( .A1(b_3__4_), .A2(s_1_3__9_), .ZN(mult_103_n63) );
  NOR2_X1 mult_103_U89 ( .A1(mult_103_n107), .A2(mult_103_n109), .ZN(
        mult_103_n65) );
  NOR2_X1 mult_103_U88 ( .A1(mult_103_n107), .A2(mult_103_n110), .ZN(
        mult_103_n66) );
  NOR2_X1 mult_103_U87 ( .A1(mult_103_n107), .A2(mult_103_n111), .ZN(
        mult_103_n67) );
  NOR2_X1 mult_103_U86 ( .A1(mult_103_n107), .A2(mult_103_n112), .ZN(p_3__0_)
         );
  XNOR2_X1 mult_103_U85 ( .A(mult_103_n2), .B(mult_103_n13), .ZN(mult_103_n117) );
  XOR2_X1 mult_103_U84 ( .A(mult_103_n117), .B(mult_103_n11), .Z(mult_103_n113) );
  NAND2_X1 mult_103_U83 ( .A1(s_1_3__9_), .A2(b_3__7_), .ZN(mult_103_n115) );
  AND2_X1 mult_103_U82 ( .A1(b_3__8_), .A2(s_1_3__8_), .ZN(mult_103_n116) );
  XOR2_X1 mult_103_U81 ( .A(mult_103_n115), .B(mult_103_n116), .Z(
        mult_103_n114) );
  XOR2_X1 mult_103_U80 ( .A(mult_103_n113), .B(mult_103_n114), .Z(p_3__8_) );
  INV_X1 mult_103_U79 ( .A(b_3__6_), .ZN(mult_103_n105) );
  INV_X1 mult_103_U78 ( .A(b_3__7_), .ZN(mult_103_n103) );
  INV_X1 mult_103_U77 ( .A(b_3__4_), .ZN(mult_103_n107) );
  INV_X1 mult_103_U76 ( .A(b_3__5_), .ZN(mult_103_n106) );
  INV_X1 mult_103_U75 ( .A(s_1_3__6_), .ZN(mult_103_n110) );
  INV_X1 mult_103_U74 ( .A(s_1_3__8_), .ZN(mult_103_n108) );
  INV_X1 mult_103_U73 ( .A(s_1_3__7_), .ZN(mult_103_n109) );
  INV_X1 mult_103_U72 ( .A(s_1_3__5_), .ZN(mult_103_n111) );
  INV_X1 mult_103_U71 ( .A(s_1_3__4_), .ZN(mult_103_n112) );
  INV_X1 mult_103_U70 ( .A(mult_103_n28), .ZN(mult_103_n104) );
  HA_X1 mult_103_U27 ( .A(mult_103_n61), .B(mult_103_n66), .CO(mult_103_n39), 
        .S(mult_103_n40) );
  HA_X1 mult_103_U26 ( .A(mult_103_n50), .B(mult_103_n55), .CO(mult_103_n37), 
        .S(mult_103_n38) );
  FA_X1 mult_103_U25 ( .A(mult_103_n60), .B(mult_103_n65), .CI(mult_103_n39), 
        .CO(mult_103_n35), .S(mult_103_n36) );
  FA_X1 mult_103_U22 ( .A(mult_103_n49), .B(mult_103_n59), .CI(mult_103_n45), 
        .CO(mult_103_n31), .S(mult_103_n32) );
  FA_X1 mult_103_U21 ( .A(mult_103_n34), .B(mult_103_n37), .CI(mult_103_n35), 
        .CO(mult_103_n29), .S(mult_103_n30) );
  FA_X1 mult_103_U19 ( .A(mult_103_n58), .B(mult_103_n53), .CI(mult_103_n63), 
        .CO(mult_103_n25), .S(mult_103_n26) );
  FA_X1 mult_103_U18 ( .A(mult_103_n28), .B(mult_103_n44), .CI(mult_103_n33), 
        .CO(mult_103_n23), .S(mult_103_n24) );
  FA_X1 mult_103_U17 ( .A(mult_103_n26), .B(mult_103_n31), .CI(mult_103_n24), 
        .CO(mult_103_n21), .S(mult_103_n22) );
  FA_X1 mult_103_U16 ( .A(mult_103_n52), .B(mult_103_n104), .CI(mult_103_n48), 
        .CO(mult_103_n19), .S(mult_103_n20) );
  FA_X1 mult_103_U15 ( .A(mult_103_n43), .B(mult_103_n57), .CI(mult_103_n25), 
        .CO(mult_103_n17), .S(mult_103_n18) );
  FA_X1 mult_103_U14 ( .A(mult_103_n20), .B(mult_103_n23), .CI(mult_103_n18), 
        .CO(mult_103_n15), .S(mult_103_n16) );
  FA_X1 mult_103_U13 ( .A(mult_103_n51), .B(mult_103_n47), .CI(mult_103_n42), 
        .CO(mult_103_n13), .S(mult_103_n14) );
  FA_X1 mult_103_U12 ( .A(mult_103_n14), .B(mult_103_n19), .CI(mult_103_n17), 
        .CO(mult_103_n11), .S(mult_103_n12) );
  HA_X1 mult_103_U9 ( .A(mult_103_n67), .B(mult_103_n62), .CO(mult_103_n8), 
        .S(p_3__1_) );
  FA_X1 mult_103_U8 ( .A(mult_103_n8), .B(mult_103_n56), .CI(mult_103_n40), 
        .CO(mult_103_n7), .S(p_3__2_) );
  FA_X1 mult_103_U7 ( .A(mult_103_n7), .B(mult_103_n38), .CI(mult_103_n36), 
        .CO(mult_103_n6), .S(p_3__3_) );
  FA_X1 mult_103_U6 ( .A(mult_103_n30), .B(mult_103_n32), .CI(mult_103_n6), 
        .CO(mult_103_n5), .S(p_3__4_) );
  FA_X1 mult_103_U5 ( .A(mult_103_n22), .B(mult_103_n29), .CI(mult_103_n5), 
        .CO(mult_103_n4), .S(p_3__5_) );
  FA_X1 mult_103_U4 ( .A(mult_103_n16), .B(mult_103_n21), .CI(mult_103_n4), 
        .CO(mult_103_n3), .S(p_3__6_) );
  FA_X1 mult_103_U3 ( .A(mult_103_n12), .B(mult_103_n15), .CI(mult_103_n3), 
        .CO(mult_103_n2), .S(p_3__7_) );
  OAI211_X1 add_96_U11 ( .C1(x_ext_2__1_), .C2(x_ext_6__1_), .A(x_ext_2__0_), 
        .B(x_ext_6__0_), .ZN(add_96_n11) );
  AOI21_X1 add_96_U10 ( .B1(x_ext_2__1_), .B2(x_ext_6__1_), .A(add_96_n5), 
        .ZN(add_96_n9) );
  OAI21_X1 add_96_U9 ( .B1(x_ext_2__2_), .B2(add_96_n4), .A(x_ext_6__2_), .ZN(
        add_96_n10) );
  OAI21_X1 add_96_U8 ( .B1(add_96_n9), .B2(add_96_n3), .A(add_96_n10), .ZN(
        add_96_n7) );
  OAI21_X1 add_96_U7 ( .B1(x_ext_2__3_), .B2(add_96_n7), .A(x_ext_6__3_), .ZN(
        add_96_n8) );
  AOI21_X1 add_96_U6 ( .B1(add_96_n7), .B2(x_ext_2__3_), .A(add_96_n2), .ZN(
        add_96_n6) );
  INV_X1 add_96_U5 ( .A(add_96_n8), .ZN(add_96_n2) );
  INV_X1 add_96_U4 ( .A(add_96_n6), .ZN(add_96_n1) );
  INV_X1 add_96_U3 ( .A(add_96_n9), .ZN(add_96_n4) );
  INV_X1 add_96_U2 ( .A(x_ext_2__2_), .ZN(add_96_n3) );
  INV_X1 add_96_U1 ( .A(add_96_n11), .ZN(add_96_n5) );
  FA_X1 add_96_U1_4 ( .A(x_ext_2__4_), .B(x_ext_6__4_), .CI(add_96_n1), .CO(
        add_96_carry[5]), .S(s_1_2__4_) );
  FA_X1 add_96_U1_5 ( .A(x_ext_2__5_), .B(x_ext_6__5_), .CI(add_96_carry[5]), 
        .CO(add_96_carry[6]), .S(s_1_2__5_) );
  FA_X1 add_96_U1_6 ( .A(x_ext_2__6_), .B(x_ext_6__6_), .CI(add_96_carry[6]), 
        .CO(add_96_carry[7]), .S(s_1_2__6_) );
  FA_X1 add_96_U1_7 ( .A(x_ext_2__7_), .B(x_ext_6__7_), .CI(add_96_carry[7]), 
        .CO(add_96_carry[8]), .S(s_1_2__7_) );
  FA_X1 add_96_U1_8 ( .A(x_ext_2__9_), .B(x_ext_6__9_), .CI(add_96_carry[8]), 
        .CO(add_96_carry[9]), .S(s_1_2__8_) );
  FA_X1 add_96_U1_9 ( .A(x_ext_2__9_), .B(x_ext_6__9_), .CI(add_96_carry[9]), 
        .S(s_1_2__9_) );
  NAND2_X1 mult_102_U114 ( .A1(s_1_2__6_), .A2(b_2__7_), .ZN(mult_102_n28) );
  NAND2_X1 mult_102_U113 ( .A1(b_2__4_), .A2(s_1_2__8_), .ZN(mult_102_n119) );
  NAND2_X1 mult_102_U112 ( .A1(b_2__6_), .A2(s_1_2__6_), .ZN(mult_102_n118) );
  NAND2_X1 mult_102_U111 ( .A1(mult_102_n119), .A2(mult_102_n118), .ZN(
        mult_102_n33) );
  XNOR2_X1 mult_102_U110 ( .A(mult_102_n118), .B(mult_102_n119), .ZN(
        mult_102_n34) );
  NAND2_X1 mult_102_U109 ( .A1(s_1_2__7_), .A2(b_2__8_), .ZN(mult_102_n42) );
  NAND2_X1 mult_102_U108 ( .A1(s_1_2__6_), .A2(b_2__8_), .ZN(mult_102_n43) );
  NAND2_X1 mult_102_U107 ( .A1(s_1_2__5_), .A2(b_2__8_), .ZN(mult_102_n44) );
  NAND2_X1 mult_102_U106 ( .A1(s_1_2__4_), .A2(b_2__8_), .ZN(mult_102_n45) );
  NOR2_X1 mult_102_U105 ( .A1(mult_102_n103), .A2(mult_102_n108), .ZN(
        mult_102_n47) );
  NOR2_X1 mult_102_U104 ( .A1(mult_102_n103), .A2(mult_102_n109), .ZN(
        mult_102_n48) );
  NOR2_X1 mult_102_U103 ( .A1(mult_102_n103), .A2(mult_102_n111), .ZN(
        mult_102_n49) );
  NOR2_X1 mult_102_U102 ( .A1(mult_102_n103), .A2(mult_102_n112), .ZN(
        mult_102_n50) );
  NAND2_X1 mult_102_U101 ( .A1(b_2__6_), .A2(s_1_2__9_), .ZN(mult_102_n51) );
  NOR2_X1 mult_102_U100 ( .A1(mult_102_n108), .A2(mult_102_n105), .ZN(
        mult_102_n52) );
  NOR2_X1 mult_102_U99 ( .A1(mult_102_n109), .A2(mult_102_n105), .ZN(
        mult_102_n53) );
  NOR2_X1 mult_102_U98 ( .A1(mult_102_n111), .A2(mult_102_n105), .ZN(
        mult_102_n55) );
  NOR2_X1 mult_102_U97 ( .A1(mult_102_n112), .A2(mult_102_n105), .ZN(
        mult_102_n56) );
  NAND2_X1 mult_102_U96 ( .A1(b_2__5_), .A2(s_1_2__9_), .ZN(mult_102_n57) );
  NOR2_X1 mult_102_U95 ( .A1(mult_102_n108), .A2(mult_102_n106), .ZN(
        mult_102_n58) );
  NOR2_X1 mult_102_U94 ( .A1(mult_102_n109), .A2(mult_102_n106), .ZN(
        mult_102_n59) );
  NOR2_X1 mult_102_U93 ( .A1(mult_102_n110), .A2(mult_102_n106), .ZN(
        mult_102_n60) );
  NOR2_X1 mult_102_U92 ( .A1(mult_102_n111), .A2(mult_102_n106), .ZN(
        mult_102_n61) );
  NOR2_X1 mult_102_U91 ( .A1(mult_102_n112), .A2(mult_102_n106), .ZN(
        mult_102_n62) );
  NAND2_X1 mult_102_U90 ( .A1(b_2__4_), .A2(s_1_2__9_), .ZN(mult_102_n63) );
  NOR2_X1 mult_102_U89 ( .A1(mult_102_n107), .A2(mult_102_n109), .ZN(
        mult_102_n65) );
  NOR2_X1 mult_102_U88 ( .A1(mult_102_n107), .A2(mult_102_n110), .ZN(
        mult_102_n66) );
  NOR2_X1 mult_102_U87 ( .A1(mult_102_n107), .A2(mult_102_n111), .ZN(
        mult_102_n67) );
  NOR2_X1 mult_102_U86 ( .A1(mult_102_n107), .A2(mult_102_n112), .ZN(p_2__0_)
         );
  XNOR2_X1 mult_102_U85 ( .A(mult_102_n2), .B(mult_102_n13), .ZN(mult_102_n117) );
  XOR2_X1 mult_102_U84 ( .A(mult_102_n117), .B(mult_102_n11), .Z(mult_102_n113) );
  NAND2_X1 mult_102_U83 ( .A1(s_1_2__9_), .A2(b_2__7_), .ZN(mult_102_n115) );
  AND2_X1 mult_102_U82 ( .A1(b_2__8_), .A2(s_1_2__8_), .ZN(mult_102_n116) );
  XOR2_X1 mult_102_U81 ( .A(mult_102_n115), .B(mult_102_n116), .Z(
        mult_102_n114) );
  XOR2_X1 mult_102_U80 ( .A(mult_102_n113), .B(mult_102_n114), .Z(p_2__8_) );
  INV_X1 mult_102_U79 ( .A(b_2__6_), .ZN(mult_102_n105) );
  INV_X1 mult_102_U78 ( .A(b_2__7_), .ZN(mult_102_n103) );
  INV_X1 mult_102_U77 ( .A(b_2__4_), .ZN(mult_102_n107) );
  INV_X1 mult_102_U76 ( .A(b_2__5_), .ZN(mult_102_n106) );
  INV_X1 mult_102_U75 ( .A(s_1_2__6_), .ZN(mult_102_n110) );
  INV_X1 mult_102_U74 ( .A(s_1_2__8_), .ZN(mult_102_n108) );
  INV_X1 mult_102_U73 ( .A(s_1_2__7_), .ZN(mult_102_n109) );
  INV_X1 mult_102_U72 ( .A(s_1_2__5_), .ZN(mult_102_n111) );
  INV_X1 mult_102_U71 ( .A(s_1_2__4_), .ZN(mult_102_n112) );
  INV_X1 mult_102_U70 ( .A(mult_102_n28), .ZN(mult_102_n104) );
  HA_X1 mult_102_U27 ( .A(mult_102_n61), .B(mult_102_n66), .CO(mult_102_n39), 
        .S(mult_102_n40) );
  HA_X1 mult_102_U26 ( .A(mult_102_n50), .B(mult_102_n55), .CO(mult_102_n37), 
        .S(mult_102_n38) );
  FA_X1 mult_102_U25 ( .A(mult_102_n60), .B(mult_102_n65), .CI(mult_102_n39), 
        .CO(mult_102_n35), .S(mult_102_n36) );
  FA_X1 mult_102_U22 ( .A(mult_102_n49), .B(mult_102_n59), .CI(mult_102_n45), 
        .CO(mult_102_n31), .S(mult_102_n32) );
  FA_X1 mult_102_U21 ( .A(mult_102_n34), .B(mult_102_n37), .CI(mult_102_n35), 
        .CO(mult_102_n29), .S(mult_102_n30) );
  FA_X1 mult_102_U19 ( .A(mult_102_n58), .B(mult_102_n53), .CI(mult_102_n63), 
        .CO(mult_102_n25), .S(mult_102_n26) );
  FA_X1 mult_102_U18 ( .A(mult_102_n28), .B(mult_102_n44), .CI(mult_102_n33), 
        .CO(mult_102_n23), .S(mult_102_n24) );
  FA_X1 mult_102_U17 ( .A(mult_102_n26), .B(mult_102_n31), .CI(mult_102_n24), 
        .CO(mult_102_n21), .S(mult_102_n22) );
  FA_X1 mult_102_U16 ( .A(mult_102_n52), .B(mult_102_n104), .CI(mult_102_n48), 
        .CO(mult_102_n19), .S(mult_102_n20) );
  FA_X1 mult_102_U15 ( .A(mult_102_n43), .B(mult_102_n57), .CI(mult_102_n25), 
        .CO(mult_102_n17), .S(mult_102_n18) );
  FA_X1 mult_102_U14 ( .A(mult_102_n20), .B(mult_102_n23), .CI(mult_102_n18), 
        .CO(mult_102_n15), .S(mult_102_n16) );
  FA_X1 mult_102_U13 ( .A(mult_102_n51), .B(mult_102_n47), .CI(mult_102_n42), 
        .CO(mult_102_n13), .S(mult_102_n14) );
  FA_X1 mult_102_U12 ( .A(mult_102_n14), .B(mult_102_n19), .CI(mult_102_n17), 
        .CO(mult_102_n11), .S(mult_102_n12) );
  HA_X1 mult_102_U9 ( .A(mult_102_n67), .B(mult_102_n62), .CO(mult_102_n8), 
        .S(p_2__1_) );
  FA_X1 mult_102_U8 ( .A(mult_102_n8), .B(mult_102_n56), .CI(mult_102_n40), 
        .CO(mult_102_n7), .S(p_2__2_) );
  FA_X1 mult_102_U7 ( .A(mult_102_n7), .B(mult_102_n38), .CI(mult_102_n36), 
        .CO(mult_102_n6), .S(p_2__3_) );
  FA_X1 mult_102_U6 ( .A(mult_102_n30), .B(mult_102_n32), .CI(mult_102_n6), 
        .CO(mult_102_n5), .S(p_2__4_) );
  FA_X1 mult_102_U5 ( .A(mult_102_n22), .B(mult_102_n29), .CI(mult_102_n5), 
        .CO(mult_102_n4), .S(p_2__5_) );
  FA_X1 mult_102_U4 ( .A(mult_102_n16), .B(mult_102_n21), .CI(mult_102_n4), 
        .CO(mult_102_n3), .S(p_2__6_) );
  FA_X1 mult_102_U3 ( .A(mult_102_n12), .B(mult_102_n15), .CI(mult_102_n3), 
        .CO(mult_102_n2), .S(p_2__7_) );
  OAI211_X1 add_95_U11 ( .C1(x_ext_1__1_), .C2(x_ext_7__1_), .A(x_ext_1__0_), 
        .B(x_ext_7__0_), .ZN(add_95_n11) );
  AOI21_X1 add_95_U10 ( .B1(x_ext_1__1_), .B2(x_ext_7__1_), .A(add_95_n5), 
        .ZN(add_95_n9) );
  OAI21_X1 add_95_U9 ( .B1(x_ext_1__2_), .B2(add_95_n4), .A(x_ext_7__2_), .ZN(
        add_95_n10) );
  OAI21_X1 add_95_U8 ( .B1(add_95_n9), .B2(add_95_n3), .A(add_95_n10), .ZN(
        add_95_n7) );
  OAI21_X1 add_95_U7 ( .B1(x_ext_1__3_), .B2(add_95_n7), .A(x_ext_7__3_), .ZN(
        add_95_n8) );
  AOI21_X1 add_95_U6 ( .B1(add_95_n7), .B2(x_ext_1__3_), .A(add_95_n2), .ZN(
        add_95_n6) );
  INV_X1 add_95_U5 ( .A(add_95_n8), .ZN(add_95_n2) );
  INV_X1 add_95_U4 ( .A(add_95_n6), .ZN(add_95_n1) );
  INV_X1 add_95_U3 ( .A(add_95_n9), .ZN(add_95_n4) );
  INV_X1 add_95_U2 ( .A(x_ext_1__2_), .ZN(add_95_n3) );
  INV_X1 add_95_U1 ( .A(add_95_n11), .ZN(add_95_n5) );
  FA_X1 add_95_U1_4 ( .A(x_ext_1__4_), .B(x_ext_7__4_), .CI(add_95_n1), .CO(
        add_95_carry[5]), .S(s_1_1__4_) );
  FA_X1 add_95_U1_5 ( .A(x_ext_1__5_), .B(x_ext_7__5_), .CI(add_95_carry[5]), 
        .CO(add_95_carry[6]), .S(s_1_1__5_) );
  FA_X1 add_95_U1_6 ( .A(x_ext_1__6_), .B(x_ext_7__6_), .CI(add_95_carry[6]), 
        .CO(add_95_carry[7]), .S(s_1_1__6_) );
  FA_X1 add_95_U1_7 ( .A(x_ext_1__7_), .B(x_ext_7__7_), .CI(add_95_carry[7]), 
        .CO(add_95_carry[8]), .S(s_1_1__7_) );
  FA_X1 add_95_U1_8 ( .A(x_ext_1__9_), .B(x_ext_7__9_), .CI(add_95_carry[8]), 
        .CO(add_95_carry[9]), .S(s_1_1__8_) );
  FA_X1 add_95_U1_9 ( .A(x_ext_1__9_), .B(x_ext_7__9_), .CI(add_95_carry[9]), 
        .S(s_1_1__9_) );
  OAI211_X1 add_94_U11 ( .C1(x_ext_0__1_), .C2(x_ext_8__1_), .A(x_ext_0__0_), 
        .B(x_ext_8__0_), .ZN(add_94_n11) );
  AOI21_X1 add_94_U10 ( .B1(x_ext_0__1_), .B2(x_ext_8__1_), .A(add_94_n4), 
        .ZN(add_94_n9) );
  OAI21_X1 add_94_U9 ( .B1(x_ext_0__2_), .B2(add_94_n3), .A(x_ext_8__2_), .ZN(
        add_94_n10) );
  OAI21_X1 add_94_U8 ( .B1(add_94_n9), .B2(add_94_n5), .A(add_94_n10), .ZN(
        add_94_n7) );
  OAI21_X1 add_94_U7 ( .B1(x_ext_0__3_), .B2(add_94_n7), .A(x_ext_8__3_), .ZN(
        add_94_n8) );
  AOI21_X1 add_94_U6 ( .B1(add_94_n7), .B2(x_ext_0__3_), .A(add_94_n2), .ZN(
        add_94_n6) );
  INV_X1 add_94_U5 ( .A(add_94_n8), .ZN(add_94_n2) );
  INV_X1 add_94_U4 ( .A(add_94_n6), .ZN(add_94_n1) );
  INV_X1 add_94_U3 ( .A(add_94_n9), .ZN(add_94_n3) );
  INV_X1 add_94_U2 ( .A(x_ext_0__2_), .ZN(add_94_n5) );
  INV_X1 add_94_U1 ( .A(add_94_n11), .ZN(add_94_n4) );
  FA_X1 add_94_U1_4 ( .A(x_ext_0__4_), .B(x_ext_8__4_), .CI(add_94_n1), .CO(
        add_94_carry[5]), .S(s_1_0__4_) );
  FA_X1 add_94_U1_5 ( .A(x_ext_0__5_), .B(x_ext_8__5_), .CI(add_94_carry[5]), 
        .CO(add_94_carry[6]), .S(s_1_0__5_) );
  FA_X1 add_94_U1_6 ( .A(x_ext_0__6_), .B(x_ext_8__6_), .CI(add_94_carry[6]), 
        .CO(add_94_carry[7]), .S(s_1_0__6_) );
  FA_X1 add_94_U1_7 ( .A(x_ext_0__7_), .B(x_ext_8__7_), .CI(add_94_carry[7]), 
        .CO(add_94_carry[8]), .S(s_1_0__7_) );
  FA_X1 add_94_U1_8 ( .A(x_ext_0__9_), .B(x_ext_8__9_), .CI(add_94_carry[8]), 
        .CO(add_94_carry[9]), .S(s_1_0__8_) );
  FA_X1 add_94_U1_9 ( .A(x_ext_0__9_), .B(x_ext_8__9_), .CI(add_94_carry[9]), 
        .S(s_1_0__9_) );
  NAND2_X1 mult_100_U114 ( .A1(s_1_0__6_), .A2(b_0__7_), .ZN(mult_100_n28) );
  NAND2_X1 mult_100_U113 ( .A1(b_0__4_), .A2(s_1_0__8_), .ZN(mult_100_n119) );
  NAND2_X1 mult_100_U112 ( .A1(b_0__6_), .A2(s_1_0__6_), .ZN(mult_100_n118) );
  NAND2_X1 mult_100_U111 ( .A1(mult_100_n119), .A2(mult_100_n118), .ZN(
        mult_100_n33) );
  XNOR2_X1 mult_100_U110 ( .A(mult_100_n118), .B(mult_100_n119), .ZN(
        mult_100_n34) );
  NAND2_X1 mult_100_U109 ( .A1(s_1_0__7_), .A2(b_0__8_), .ZN(mult_100_n42) );
  NAND2_X1 mult_100_U108 ( .A1(s_1_0__6_), .A2(b_0__8_), .ZN(mult_100_n43) );
  NAND2_X1 mult_100_U107 ( .A1(s_1_0__5_), .A2(b_0__8_), .ZN(mult_100_n44) );
  NAND2_X1 mult_100_U106 ( .A1(s_1_0__4_), .A2(b_0__8_), .ZN(mult_100_n45) );
  NOR2_X1 mult_100_U105 ( .A1(mult_100_n103), .A2(mult_100_n108), .ZN(
        mult_100_n47) );
  NOR2_X1 mult_100_U104 ( .A1(mult_100_n103), .A2(mult_100_n109), .ZN(
        mult_100_n48) );
  NOR2_X1 mult_100_U103 ( .A1(mult_100_n103), .A2(mult_100_n111), .ZN(
        mult_100_n49) );
  NOR2_X1 mult_100_U102 ( .A1(mult_100_n103), .A2(mult_100_n112), .ZN(
        mult_100_n50) );
  NAND2_X1 mult_100_U101 ( .A1(b_0__6_), .A2(s_1_0__9_), .ZN(mult_100_n51) );
  NOR2_X1 mult_100_U100 ( .A1(mult_100_n108), .A2(mult_100_n105), .ZN(
        mult_100_n52) );
  NOR2_X1 mult_100_U99 ( .A1(mult_100_n109), .A2(mult_100_n105), .ZN(
        mult_100_n53) );
  NOR2_X1 mult_100_U98 ( .A1(mult_100_n111), .A2(mult_100_n105), .ZN(
        mult_100_n55) );
  NOR2_X1 mult_100_U97 ( .A1(mult_100_n112), .A2(mult_100_n105), .ZN(
        mult_100_n56) );
  NAND2_X1 mult_100_U96 ( .A1(b_0__5_), .A2(s_1_0__9_), .ZN(mult_100_n57) );
  NOR2_X1 mult_100_U95 ( .A1(mult_100_n108), .A2(mult_100_n106), .ZN(
        mult_100_n58) );
  NOR2_X1 mult_100_U94 ( .A1(mult_100_n109), .A2(mult_100_n106), .ZN(
        mult_100_n59) );
  NOR2_X1 mult_100_U93 ( .A1(mult_100_n110), .A2(mult_100_n106), .ZN(
        mult_100_n60) );
  NOR2_X1 mult_100_U92 ( .A1(mult_100_n111), .A2(mult_100_n106), .ZN(
        mult_100_n61) );
  NOR2_X1 mult_100_U91 ( .A1(mult_100_n112), .A2(mult_100_n106), .ZN(
        mult_100_n62) );
  NAND2_X1 mult_100_U90 ( .A1(b_0__4_), .A2(s_1_0__9_), .ZN(mult_100_n63) );
  NOR2_X1 mult_100_U89 ( .A1(mult_100_n107), .A2(mult_100_n109), .ZN(
        mult_100_n65) );
  NOR2_X1 mult_100_U88 ( .A1(mult_100_n107), .A2(mult_100_n110), .ZN(
        mult_100_n66) );
  NOR2_X1 mult_100_U87 ( .A1(mult_100_n107), .A2(mult_100_n111), .ZN(
        mult_100_n67) );
  NOR2_X1 mult_100_U86 ( .A1(mult_100_n107), .A2(mult_100_n112), .ZN(p_0__0_)
         );
  XNOR2_X1 mult_100_U85 ( .A(mult_100_n2), .B(mult_100_n13), .ZN(mult_100_n117) );
  XOR2_X1 mult_100_U84 ( .A(mult_100_n117), .B(mult_100_n11), .Z(mult_100_n113) );
  NAND2_X1 mult_100_U83 ( .A1(s_1_0__9_), .A2(b_0__7_), .ZN(mult_100_n115) );
  AND2_X1 mult_100_U82 ( .A1(b_0__8_), .A2(s_1_0__8_), .ZN(mult_100_n116) );
  XOR2_X1 mult_100_U81 ( .A(mult_100_n115), .B(mult_100_n116), .Z(
        mult_100_n114) );
  XOR2_X1 mult_100_U80 ( .A(mult_100_n113), .B(mult_100_n114), .Z(p_0__8_) );
  INV_X1 mult_100_U79 ( .A(b_0__6_), .ZN(mult_100_n105) );
  INV_X1 mult_100_U78 ( .A(b_0__7_), .ZN(mult_100_n103) );
  INV_X1 mult_100_U77 ( .A(b_0__4_), .ZN(mult_100_n107) );
  INV_X1 mult_100_U76 ( .A(b_0__5_), .ZN(mult_100_n106) );
  INV_X1 mult_100_U75 ( .A(s_1_0__6_), .ZN(mult_100_n110) );
  INV_X1 mult_100_U74 ( .A(s_1_0__8_), .ZN(mult_100_n108) );
  INV_X1 mult_100_U73 ( .A(s_1_0__7_), .ZN(mult_100_n109) );
  INV_X1 mult_100_U72 ( .A(s_1_0__5_), .ZN(mult_100_n111) );
  INV_X1 mult_100_U71 ( .A(s_1_0__4_), .ZN(mult_100_n112) );
  INV_X1 mult_100_U70 ( .A(mult_100_n28), .ZN(mult_100_n104) );
  HA_X1 mult_100_U27 ( .A(mult_100_n61), .B(mult_100_n66), .CO(mult_100_n39), 
        .S(mult_100_n40) );
  HA_X1 mult_100_U26 ( .A(mult_100_n50), .B(mult_100_n55), .CO(mult_100_n37), 
        .S(mult_100_n38) );
  FA_X1 mult_100_U25 ( .A(mult_100_n60), .B(mult_100_n65), .CI(mult_100_n39), 
        .CO(mult_100_n35), .S(mult_100_n36) );
  FA_X1 mult_100_U22 ( .A(mult_100_n49), .B(mult_100_n59), .CI(mult_100_n45), 
        .CO(mult_100_n31), .S(mult_100_n32) );
  FA_X1 mult_100_U21 ( .A(mult_100_n34), .B(mult_100_n37), .CI(mult_100_n35), 
        .CO(mult_100_n29), .S(mult_100_n30) );
  FA_X1 mult_100_U19 ( .A(mult_100_n58), .B(mult_100_n53), .CI(mult_100_n63), 
        .CO(mult_100_n25), .S(mult_100_n26) );
  FA_X1 mult_100_U18 ( .A(mult_100_n28), .B(mult_100_n44), .CI(mult_100_n33), 
        .CO(mult_100_n23), .S(mult_100_n24) );
  FA_X1 mult_100_U17 ( .A(mult_100_n26), .B(mult_100_n31), .CI(mult_100_n24), 
        .CO(mult_100_n21), .S(mult_100_n22) );
  FA_X1 mult_100_U16 ( .A(mult_100_n52), .B(mult_100_n104), .CI(mult_100_n48), 
        .CO(mult_100_n19), .S(mult_100_n20) );
  FA_X1 mult_100_U15 ( .A(mult_100_n43), .B(mult_100_n57), .CI(mult_100_n25), 
        .CO(mult_100_n17), .S(mult_100_n18) );
  FA_X1 mult_100_U14 ( .A(mult_100_n20), .B(mult_100_n23), .CI(mult_100_n18), 
        .CO(mult_100_n15), .S(mult_100_n16) );
  FA_X1 mult_100_U13 ( .A(mult_100_n51), .B(mult_100_n47), .CI(mult_100_n42), 
        .CO(mult_100_n13), .S(mult_100_n14) );
  FA_X1 mult_100_U12 ( .A(mult_100_n14), .B(mult_100_n19), .CI(mult_100_n17), 
        .CO(mult_100_n11), .S(mult_100_n12) );
  HA_X1 mult_100_U9 ( .A(mult_100_n67), .B(mult_100_n62), .CO(mult_100_n8), 
        .S(p_0__1_) );
  FA_X1 mult_100_U8 ( .A(mult_100_n8), .B(mult_100_n56), .CI(mult_100_n40), 
        .CO(mult_100_n7), .S(p_0__2_) );
  FA_X1 mult_100_U7 ( .A(mult_100_n7), .B(mult_100_n38), .CI(mult_100_n36), 
        .CO(mult_100_n6), .S(p_0__3_) );
  FA_X1 mult_100_U6 ( .A(mult_100_n30), .B(mult_100_n32), .CI(mult_100_n6), 
        .CO(mult_100_n5), .S(p_0__4_) );
  FA_X1 mult_100_U5 ( .A(mult_100_n22), .B(mult_100_n29), .CI(mult_100_n5), 
        .CO(mult_100_n4), .S(p_0__5_) );
  FA_X1 mult_100_U4 ( .A(mult_100_n16), .B(mult_100_n21), .CI(mult_100_n4), 
        .CO(mult_100_n3), .S(p_0__6_) );
  FA_X1 mult_100_U3 ( .A(mult_100_n12), .B(mult_100_n15), .CI(mult_100_n3), 
        .CO(mult_100_n2), .S(p_0__7_) );
  XOR2_X1 add_3_root_add_0_root_add_111_U2 ( .A(p_0__0_), .B(p_4__0_), .Z(
        s_2_0__0_) );
  AND2_X1 add_3_root_add_0_root_add_111_U1 ( .A1(p_0__0_), .A2(p_4__0_), .ZN(
        add_3_root_add_0_root_add_111_n1) );
  FA_X1 add_3_root_add_0_root_add_111_U1_1 ( .A(p_4__1_), .B(p_0__1_), .CI(
        add_3_root_add_0_root_add_111_n1), .CO(
        add_3_root_add_0_root_add_111_carry[2]), .S(s_2_0__1_) );
  FA_X1 add_3_root_add_0_root_add_111_U1_2 ( .A(p_4__2_), .B(p_0__2_), .CI(
        add_3_root_add_0_root_add_111_carry[2]), .CO(
        add_3_root_add_0_root_add_111_carry[3]), .S(s_2_0__2_) );
  FA_X1 add_3_root_add_0_root_add_111_U1_3 ( .A(p_4__3_), .B(p_0__3_), .CI(
        add_3_root_add_0_root_add_111_carry[3]), .CO(
        add_3_root_add_0_root_add_111_carry[4]), .S(s_2_0__3_) );
  FA_X1 add_3_root_add_0_root_add_111_U1_4 ( .A(p_4__4_), .B(p_0__4_), .CI(
        add_3_root_add_0_root_add_111_carry[4]), .CO(
        add_3_root_add_0_root_add_111_carry[5]), .S(s_2_0__4_) );
  FA_X1 add_3_root_add_0_root_add_111_U1_5 ( .A(p_4__5_), .B(p_0__5_), .CI(
        add_3_root_add_0_root_add_111_carry[5]), .CO(
        add_3_root_add_0_root_add_111_carry[6]), .S(s_2_0__5_) );
  FA_X1 add_3_root_add_0_root_add_111_U1_6 ( .A(p_4__6_), .B(p_0__6_), .CI(
        add_3_root_add_0_root_add_111_carry[6]), .CO(
        add_3_root_add_0_root_add_111_carry[7]), .S(s_2_0__6_) );
  FA_X1 add_3_root_add_0_root_add_111_U1_7 ( .A(p_4__7_), .B(p_0__7_), .CI(
        add_3_root_add_0_root_add_111_carry[7]), .CO(
        add_3_root_add_0_root_add_111_carry[8]), .S(s_2_0__7_) );
  FA_X1 add_3_root_add_0_root_add_111_U1_8 ( .A(p_4__8_), .B(p_0__8_), .CI(
        add_3_root_add_0_root_add_111_carry[8]), .S(s_2_0__8_) );
  XOR2_X1 add_1_root_add_0_root_add_111_U2 ( .A(s_2_0__0_), .B(p_2__0_), .Z(
        s_2_1__0_) );
  AND2_X1 add_1_root_add_0_root_add_111_U1 ( .A1(s_2_0__0_), .A2(p_2__0_), 
        .ZN(add_1_root_add_0_root_add_111_n1) );
  FA_X1 add_1_root_add_0_root_add_111_U1_1 ( .A(p_2__1_), .B(s_2_0__1_), .CI(
        add_1_root_add_0_root_add_111_n1), .CO(
        add_1_root_add_0_root_add_111_carry[2]), .S(s_2_1__1_) );
  FA_X1 add_1_root_add_0_root_add_111_U1_2 ( .A(p_2__2_), .B(s_2_0__2_), .CI(
        add_1_root_add_0_root_add_111_carry[2]), .CO(
        add_1_root_add_0_root_add_111_carry[3]), .S(s_2_1__2_) );
  FA_X1 add_1_root_add_0_root_add_111_U1_3 ( .A(p_2__3_), .B(s_2_0__3_), .CI(
        add_1_root_add_0_root_add_111_carry[3]), .CO(
        add_1_root_add_0_root_add_111_carry[4]), .S(s_2_1__3_) );
  FA_X1 add_1_root_add_0_root_add_111_U1_4 ( .A(p_2__4_), .B(s_2_0__4_), .CI(
        add_1_root_add_0_root_add_111_carry[4]), .CO(
        add_1_root_add_0_root_add_111_carry[5]), .S(s_2_1__4_) );
  FA_X1 add_1_root_add_0_root_add_111_U1_5 ( .A(p_2__5_), .B(s_2_0__5_), .CI(
        add_1_root_add_0_root_add_111_carry[5]), .CO(
        add_1_root_add_0_root_add_111_carry[6]), .S(s_2_1__5_) );
  FA_X1 add_1_root_add_0_root_add_111_U1_6 ( .A(p_2__6_), .B(s_2_0__6_), .CI(
        add_1_root_add_0_root_add_111_carry[6]), .CO(
        add_1_root_add_0_root_add_111_carry[7]), .S(s_2_1__6_) );
  FA_X1 add_1_root_add_0_root_add_111_U1_7 ( .A(p_2__7_), .B(s_2_0__7_), .CI(
        add_1_root_add_0_root_add_111_carry[7]), .CO(
        add_1_root_add_0_root_add_111_carry[8]), .S(s_2_1__7_) );
  FA_X1 add_1_root_add_0_root_add_111_U1_8 ( .A(p_2__8_), .B(s_2_0__8_), .CI(
        add_1_root_add_0_root_add_111_carry[8]), .S(s_2_1__8_) );
  NAND2_X1 mult_101_U114 ( .A1(s_1_1__6_), .A2(b_1__7_), .ZN(mult_101_n28) );
  NAND2_X1 mult_101_U113 ( .A1(b_1__4_), .A2(s_1_1__8_), .ZN(mult_101_n119) );
  NAND2_X1 mult_101_U112 ( .A1(b_1__6_), .A2(s_1_1__6_), .ZN(mult_101_n118) );
  NAND2_X1 mult_101_U111 ( .A1(mult_101_n119), .A2(mult_101_n118), .ZN(
        mult_101_n33) );
  XNOR2_X1 mult_101_U110 ( .A(mult_101_n118), .B(mult_101_n119), .ZN(
        mult_101_n34) );
  NAND2_X1 mult_101_U109 ( .A1(s_1_1__7_), .A2(b_1__8_), .ZN(mult_101_n42) );
  NAND2_X1 mult_101_U108 ( .A1(s_1_1__6_), .A2(b_1__8_), .ZN(mult_101_n43) );
  NAND2_X1 mult_101_U107 ( .A1(s_1_1__5_), .A2(b_1__8_), .ZN(mult_101_n44) );
  NAND2_X1 mult_101_U106 ( .A1(s_1_1__4_), .A2(b_1__8_), .ZN(mult_101_n45) );
  NOR2_X1 mult_101_U105 ( .A1(mult_101_n103), .A2(mult_101_n108), .ZN(
        mult_101_n47) );
  NOR2_X1 mult_101_U104 ( .A1(mult_101_n103), .A2(mult_101_n109), .ZN(
        mult_101_n48) );
  NOR2_X1 mult_101_U103 ( .A1(mult_101_n103), .A2(mult_101_n111), .ZN(
        mult_101_n49) );
  NOR2_X1 mult_101_U102 ( .A1(mult_101_n103), .A2(mult_101_n112), .ZN(
        mult_101_n50) );
  NAND2_X1 mult_101_U101 ( .A1(b_1__6_), .A2(s_1_1__9_), .ZN(mult_101_n51) );
  NOR2_X1 mult_101_U100 ( .A1(mult_101_n108), .A2(mult_101_n105), .ZN(
        mult_101_n52) );
  NOR2_X1 mult_101_U99 ( .A1(mult_101_n109), .A2(mult_101_n105), .ZN(
        mult_101_n53) );
  NOR2_X1 mult_101_U98 ( .A1(mult_101_n111), .A2(mult_101_n105), .ZN(
        mult_101_n55) );
  NOR2_X1 mult_101_U97 ( .A1(mult_101_n112), .A2(mult_101_n105), .ZN(
        mult_101_n56) );
  NAND2_X1 mult_101_U96 ( .A1(b_1__5_), .A2(s_1_1__9_), .ZN(mult_101_n57) );
  NOR2_X1 mult_101_U95 ( .A1(mult_101_n108), .A2(mult_101_n106), .ZN(
        mult_101_n58) );
  NOR2_X1 mult_101_U94 ( .A1(mult_101_n109), .A2(mult_101_n106), .ZN(
        mult_101_n59) );
  NOR2_X1 mult_101_U93 ( .A1(mult_101_n110), .A2(mult_101_n106), .ZN(
        mult_101_n60) );
  NOR2_X1 mult_101_U92 ( .A1(mult_101_n111), .A2(mult_101_n106), .ZN(
        mult_101_n61) );
  NOR2_X1 mult_101_U91 ( .A1(mult_101_n112), .A2(mult_101_n106), .ZN(
        mult_101_n62) );
  NAND2_X1 mult_101_U90 ( .A1(b_1__4_), .A2(s_1_1__9_), .ZN(mult_101_n63) );
  NOR2_X1 mult_101_U89 ( .A1(mult_101_n107), .A2(mult_101_n109), .ZN(
        mult_101_n65) );
  NOR2_X1 mult_101_U88 ( .A1(mult_101_n107), .A2(mult_101_n110), .ZN(
        mult_101_n66) );
  NOR2_X1 mult_101_U87 ( .A1(mult_101_n107), .A2(mult_101_n111), .ZN(
        mult_101_n67) );
  NOR2_X1 mult_101_U86 ( .A1(mult_101_n107), .A2(mult_101_n112), .ZN(p_1__0_)
         );
  XNOR2_X1 mult_101_U85 ( .A(mult_101_n2), .B(mult_101_n13), .ZN(mult_101_n117) );
  XOR2_X1 mult_101_U84 ( .A(mult_101_n117), .B(mult_101_n11), .Z(mult_101_n113) );
  NAND2_X1 mult_101_U83 ( .A1(s_1_1__9_), .A2(b_1__7_), .ZN(mult_101_n115) );
  AND2_X1 mult_101_U82 ( .A1(b_1__8_), .A2(s_1_1__8_), .ZN(mult_101_n116) );
  XOR2_X1 mult_101_U81 ( .A(mult_101_n115), .B(mult_101_n116), .Z(
        mult_101_n114) );
  XOR2_X1 mult_101_U80 ( .A(mult_101_n113), .B(mult_101_n114), .Z(p_1__8_) );
  INV_X1 mult_101_U79 ( .A(b_1__6_), .ZN(mult_101_n105) );
  INV_X1 mult_101_U78 ( .A(b_1__7_), .ZN(mult_101_n103) );
  INV_X1 mult_101_U77 ( .A(b_1__4_), .ZN(mult_101_n107) );
  INV_X1 mult_101_U76 ( .A(b_1__5_), .ZN(mult_101_n106) );
  INV_X1 mult_101_U75 ( .A(s_1_1__6_), .ZN(mult_101_n110) );
  INV_X1 mult_101_U74 ( .A(s_1_1__8_), .ZN(mult_101_n108) );
  INV_X1 mult_101_U73 ( .A(s_1_1__7_), .ZN(mult_101_n109) );
  INV_X1 mult_101_U72 ( .A(s_1_1__5_), .ZN(mult_101_n111) );
  INV_X1 mult_101_U71 ( .A(s_1_1__4_), .ZN(mult_101_n112) );
  INV_X1 mult_101_U70 ( .A(mult_101_n28), .ZN(mult_101_n104) );
  HA_X1 mult_101_U27 ( .A(mult_101_n61), .B(mult_101_n66), .CO(mult_101_n39), 
        .S(mult_101_n40) );
  HA_X1 mult_101_U26 ( .A(mult_101_n50), .B(mult_101_n55), .CO(mult_101_n37), 
        .S(mult_101_n38) );
  FA_X1 mult_101_U25 ( .A(mult_101_n60), .B(mult_101_n65), .CI(mult_101_n39), 
        .CO(mult_101_n35), .S(mult_101_n36) );
  FA_X1 mult_101_U22 ( .A(mult_101_n49), .B(mult_101_n59), .CI(mult_101_n45), 
        .CO(mult_101_n31), .S(mult_101_n32) );
  FA_X1 mult_101_U21 ( .A(mult_101_n34), .B(mult_101_n37), .CI(mult_101_n35), 
        .CO(mult_101_n29), .S(mult_101_n30) );
  FA_X1 mult_101_U19 ( .A(mult_101_n58), .B(mult_101_n53), .CI(mult_101_n63), 
        .CO(mult_101_n25), .S(mult_101_n26) );
  FA_X1 mult_101_U18 ( .A(mult_101_n28), .B(mult_101_n44), .CI(mult_101_n33), 
        .CO(mult_101_n23), .S(mult_101_n24) );
  FA_X1 mult_101_U17 ( .A(mult_101_n26), .B(mult_101_n31), .CI(mult_101_n24), 
        .CO(mult_101_n21), .S(mult_101_n22) );
  FA_X1 mult_101_U16 ( .A(mult_101_n52), .B(mult_101_n104), .CI(mult_101_n48), 
        .CO(mult_101_n19), .S(mult_101_n20) );
  FA_X1 mult_101_U15 ( .A(mult_101_n43), .B(mult_101_n57), .CI(mult_101_n25), 
        .CO(mult_101_n17), .S(mult_101_n18) );
  FA_X1 mult_101_U14 ( .A(mult_101_n20), .B(mult_101_n23), .CI(mult_101_n18), 
        .CO(mult_101_n15), .S(mult_101_n16) );
  FA_X1 mult_101_U13 ( .A(mult_101_n51), .B(mult_101_n47), .CI(mult_101_n42), 
        .CO(mult_101_n13), .S(mult_101_n14) );
  FA_X1 mult_101_U12 ( .A(mult_101_n14), .B(mult_101_n19), .CI(mult_101_n17), 
        .CO(mult_101_n11), .S(mult_101_n12) );
  HA_X1 mult_101_U9 ( .A(mult_101_n67), .B(mult_101_n62), .CO(mult_101_n8), 
        .S(p_1__1_) );
  FA_X1 mult_101_U8 ( .A(mult_101_n8), .B(mult_101_n56), .CI(mult_101_n40), 
        .CO(mult_101_n7), .S(p_1__2_) );
  FA_X1 mult_101_U7 ( .A(mult_101_n7), .B(mult_101_n38), .CI(mult_101_n36), 
        .CO(mult_101_n6), .S(p_1__3_) );
  FA_X1 mult_101_U6 ( .A(mult_101_n30), .B(mult_101_n32), .CI(mult_101_n6), 
        .CO(mult_101_n5), .S(p_1__4_) );
  FA_X1 mult_101_U5 ( .A(mult_101_n22), .B(mult_101_n29), .CI(mult_101_n5), 
        .CO(mult_101_n4), .S(p_1__5_) );
  FA_X1 mult_101_U4 ( .A(mult_101_n16), .B(mult_101_n21), .CI(mult_101_n4), 
        .CO(mult_101_n3), .S(p_1__6_) );
  FA_X1 mult_101_U3 ( .A(mult_101_n12), .B(mult_101_n15), .CI(mult_101_n3), 
        .CO(mult_101_n2), .S(p_1__7_) );
  XOR2_X1 add_2_root_add_0_root_add_111_U2 ( .A(p_1__0_), .B(p_3__0_), .Z(
        s_2_2__0_) );
  AND2_X1 add_2_root_add_0_root_add_111_U1 ( .A1(p_1__0_), .A2(p_3__0_), .ZN(
        add_2_root_add_0_root_add_111_n1) );
  FA_X1 add_2_root_add_0_root_add_111_U1_1 ( .A(p_3__1_), .B(p_1__1_), .CI(
        add_2_root_add_0_root_add_111_n1), .CO(
        add_2_root_add_0_root_add_111_carry[2]), .S(s_2_2__1_) );
  FA_X1 add_2_root_add_0_root_add_111_U1_2 ( .A(p_3__2_), .B(p_1__2_), .CI(
        add_2_root_add_0_root_add_111_carry[2]), .CO(
        add_2_root_add_0_root_add_111_carry[3]), .S(s_2_2__2_) );
  FA_X1 add_2_root_add_0_root_add_111_U1_3 ( .A(p_3__3_), .B(p_1__3_), .CI(
        add_2_root_add_0_root_add_111_carry[3]), .CO(
        add_2_root_add_0_root_add_111_carry[4]), .S(s_2_2__3_) );
  FA_X1 add_2_root_add_0_root_add_111_U1_4 ( .A(p_3__4_), .B(p_1__4_), .CI(
        add_2_root_add_0_root_add_111_carry[4]), .CO(
        add_2_root_add_0_root_add_111_carry[5]), .S(s_2_2__4_) );
  FA_X1 add_2_root_add_0_root_add_111_U1_5 ( .A(p_3__5_), .B(p_1__5_), .CI(
        add_2_root_add_0_root_add_111_carry[5]), .CO(
        add_2_root_add_0_root_add_111_carry[6]), .S(s_2_2__5_) );
  FA_X1 add_2_root_add_0_root_add_111_U1_6 ( .A(p_3__6_), .B(p_1__6_), .CI(
        add_2_root_add_0_root_add_111_carry[6]), .CO(
        add_2_root_add_0_root_add_111_carry[7]), .S(s_2_2__6_) );
  FA_X1 add_2_root_add_0_root_add_111_U1_7 ( .A(p_3__7_), .B(p_1__7_), .CI(
        add_2_root_add_0_root_add_111_carry[7]), .CO(
        add_2_root_add_0_root_add_111_carry[8]), .S(s_2_2__7_) );
  FA_X1 add_2_root_add_0_root_add_111_U1_8 ( .A(p_3__8_), .B(p_1__8_), .CI(
        add_2_root_add_0_root_add_111_carry[8]), .S(s_2_2__8_) );
  AND2_X1 add_0_root_add_0_root_add_111_U2 ( .A1(s_2_1__0_), .A2(s_2_2__0_), 
        .ZN(add_0_root_add_0_root_add_111_n2) );
  XOR2_X1 add_0_root_add_0_root_add_111_U1 ( .A(s_2_1__0_), .B(s_2_2__0_), .Z(
        s_2_3__0_) );
  FA_X1 add_0_root_add_0_root_add_111_U1_1 ( .A(s_2_2__1_), .B(s_2_1__1_), 
        .CI(add_0_root_add_0_root_add_111_n2), .CO(
        add_0_root_add_0_root_add_111_carry[2]), .S(s_2_3__1_) );
  FA_X1 add_0_root_add_0_root_add_111_U1_2 ( .A(s_2_2__2_), .B(s_2_1__2_), 
        .CI(add_0_root_add_0_root_add_111_carry[2]), .CO(
        add_0_root_add_0_root_add_111_carry[3]), .S(s_2_3__2_) );
  FA_X1 add_0_root_add_0_root_add_111_U1_3 ( .A(s_2_2__3_), .B(s_2_1__3_), 
        .CI(add_0_root_add_0_root_add_111_carry[3]), .CO(
        add_0_root_add_0_root_add_111_carry[4]), .S(s_2_3__3_) );
  FA_X1 add_0_root_add_0_root_add_111_U1_4 ( .A(s_2_2__4_), .B(s_2_1__4_), 
        .CI(add_0_root_add_0_root_add_111_carry[4]), .CO(
        add_0_root_add_0_root_add_111_carry[5]), .S(s_2_3__4_) );
  FA_X1 add_0_root_add_0_root_add_111_U1_5 ( .A(s_2_2__5_), .B(s_2_1__5_), 
        .CI(add_0_root_add_0_root_add_111_carry[5]), .CO(
        add_0_root_add_0_root_add_111_carry[6]), .S(s_2_3__5_) );
  FA_X1 add_0_root_add_0_root_add_111_U1_6 ( .A(s_2_2__6_), .B(s_2_1__6_), 
        .CI(add_0_root_add_0_root_add_111_carry[6]), .CO(
        add_0_root_add_0_root_add_111_carry[7]), .S(s_2_3__6_) );
  FA_X1 add_0_root_add_0_root_add_111_U1_7 ( .A(s_2_2__7_), .B(s_2_1__7_), 
        .CI(add_0_root_add_0_root_add_111_carry[7]), .CO(
        add_0_root_add_0_root_add_111_carry[8]), .S(s_2_3__7_) );
  FA_X1 add_0_root_add_0_root_add_111_U1_8 ( .A(s_2_2__8_), .B(s_2_1__8_), 
        .CI(add_0_root_add_0_root_add_111_carry[8]), .S(s_2_3__8_) );
endmodule

