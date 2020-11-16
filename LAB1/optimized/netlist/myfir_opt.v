/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Fri Oct 30 16:47:00 2020
/////////////////////////////////////////////////////////////


module myfir_opt ( CLK, RST_n, VIN, DIN, b0, b1, b2, b3, b4, VOUT, DOUT );
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
         p_0__4_, p_0__3_, p_0__2_, p_0__1_, p_0__0_, Reg_din_n22, Reg_din_n10,
         Reg_din_n9, Reg_din_n8, Reg_din_n7, Reg_din_n6, Reg_din_n5,
         Reg_din_n4, Reg_din_n3, Reg_din_n2, Reg_din_n21, Reg_din_n20,
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
         Reg_xi_3_n4, Reg_xi_3_n3, Reg_xi_3_n2, Reg_xi_3_n1, Reg_xi_4_n34,
         Reg_xi_4_n33, Reg_xi_4_n32, Reg_xi_4_n31, Reg_xi_4_n30, Reg_xi_4_n29,
         Reg_xi_4_n28, Reg_xi_4_n27, Reg_xi_4_n26, Reg_xi_4_n25, Reg_xi_4_n24,
         Reg_xi_4_n23, Reg_xi_4_n22, Reg_xi_4_n10, Reg_xi_4_n9, Reg_xi_4_n8,
         Reg_xi_4_n7, Reg_xi_4_n6, Reg_xi_4_n5, Reg_xi_4_n4, Reg_xi_4_n3,
         Reg_xi_4_n2, Reg_xi_4_n1, Reg_xi_5_n34, Reg_xi_5_n33, Reg_xi_5_n32,
         Reg_xi_5_n31, Reg_xi_5_n30, Reg_xi_5_n29, Reg_xi_5_n28, Reg_xi_5_n27,
         Reg_xi_5_n26, Reg_xi_5_n25, Reg_xi_5_n24, Reg_xi_5_n23, Reg_xi_5_n22,
         Reg_xi_5_n10, Reg_xi_5_n9, Reg_xi_5_n8, Reg_xi_5_n7, Reg_xi_5_n6,
         Reg_xi_5_n5, Reg_xi_5_n4, Reg_xi_5_n3, Reg_xi_5_n2, Reg_xi_5_n1,
         Reg_xi_6_n34, Reg_xi_6_n33, Reg_xi_6_n32, Reg_xi_6_n31, Reg_xi_6_n30,
         Reg_xi_6_n29, Reg_xi_6_n28, Reg_xi_6_n27, Reg_xi_6_n26, Reg_xi_6_n25,
         Reg_xi_6_n24, Reg_xi_6_n23, Reg_xi_6_n22, Reg_xi_6_n10, Reg_xi_6_n9,
         Reg_xi_6_n8, Reg_xi_6_n7, Reg_xi_6_n6, Reg_xi_6_n5, Reg_xi_6_n4,
         Reg_xi_6_n3, Reg_xi_6_n2, Reg_xi_6_n1, Reg_xi_7_n32, Reg_xi_7_n31,
         Reg_xi_7_n30, Reg_xi_7_n29, Reg_xi_7_n28, Reg_xi_7_n27, Reg_xi_7_n26,
         Reg_xi_7_n25, Reg_xi_7_n24, Reg_xi_7_n23, Reg_xi_7_n22, Reg_xi_7_n10,
         Reg_xi_7_n9, Reg_xi_7_n8, Reg_xi_7_n7, Reg_xi_7_n6, Reg_xi_7_n5,
         Reg_xi_7_n4, Reg_xi_7_n3, Reg_xi_7_n2, Reg_xi_7_n1, mult_105_n101,
         mult_105_n100, mult_105_n99, mult_105_n98, mult_105_n97, mult_105_n96,
         mult_105_n95, mult_105_n94, mult_105_n93, mult_105_n92, mult_105_n91,
         mult_105_n90, mult_105_n56, mult_105_n55, mult_105_n54, mult_105_n53,
         mult_105_n52, mult_105_n51, mult_105_n50, mult_105_n49, mult_105_n48,
         mult_105_n47, mult_105_n46, mult_105_n45, mult_105_n43, mult_105_n42,
         mult_105_n41, mult_105_n39, mult_105_n38, mult_105_n37, mult_105_n36,
         mult_105_n35, mult_105_n34, mult_105_n32, mult_105_n31, mult_105_n30,
         mult_105_n29, mult_105_n28, mult_105_n27, mult_105_n26, mult_105_n25,
         mult_105_n24, mult_105_n23, mult_105_n22, mult_105_n21, mult_105_n20,
         mult_105_n19, mult_105_n18, mult_105_n17, mult_105_n16, mult_105_n15,
         mult_105_n14, mult_105_n13, mult_105_n12, mult_105_n11, mult_105_n10,
         mult_105_n9, mult_105_n8, mult_105_n7, mult_105_n6, mult_105_n5,
         mult_105_n4, mult_105_n3, mult_105_n2, add_97_n30, add_97_n29,
         add_97_n28, add_97_n27, add_97_n26, add_97_n25, add_97_n24,
         add_97_n23, add_97_n22, add_97_n21, add_97_n20, add_97_n19,
         add_97_n18, add_97_n17, add_97_n16, add_97_n15, add_97_n14,
         add_97_n13, add_97_n12, add_97_n11, add_97_n10, add_97_n9, add_97_n8,
         add_97_n7, add_97_n6, add_97_n5, add_97_n4, add_97_n3, add_97_n2,
         add_97_n1, mult_103_n137, mult_103_n136, mult_103_n135, mult_103_n134,
         mult_103_n133, mult_103_n132, mult_103_n131, mult_103_n130,
         mult_103_n129, mult_103_n128, mult_103_n127, mult_103_n126,
         mult_103_n125, mult_103_n124, mult_103_n123, mult_103_n122,
         mult_103_n121, mult_103_n120, mult_103_n119, mult_103_n118,
         mult_103_n117, mult_103_n116, mult_103_n115, mult_103_n114,
         mult_103_n113, mult_103_n112, mult_103_n111, mult_103_n110,
         mult_103_n109, mult_103_n108, mult_103_n107, mult_103_n106,
         mult_103_n105, mult_103_n104, mult_103_n103, mult_103_n67,
         mult_103_n66, mult_103_n65, mult_103_n63, mult_103_n62, mult_103_n61,
         mult_103_n60, mult_103_n59, mult_103_n58, mult_103_n57, mult_103_n56,
         mult_103_n55, mult_103_n53, mult_103_n52, mult_103_n51, mult_103_n50,
         mult_103_n49, mult_103_n48, mult_103_n47, mult_103_n45, mult_103_n44,
         mult_103_n43, mult_103_n42, mult_103_n40, mult_103_n39, mult_103_n38,
         mult_103_n37, mult_103_n36, mult_103_n35, mult_103_n34, mult_103_n33,
         mult_103_n32, mult_103_n31, mult_103_n30, mult_103_n29, mult_103_n28,
         mult_103_n26, mult_103_n25, mult_103_n24, mult_103_n23, mult_103_n22,
         mult_103_n21, mult_103_n20, mult_103_n19, mult_103_n18, mult_103_n17,
         mult_103_n16, mult_103_n15, mult_103_n14, mult_103_n13, mult_103_n12,
         mult_103_n11, mult_103_n8, mult_103_n7, mult_103_n6, mult_103_n5,
         mult_103_n4, mult_103_n3, mult_103_n2, add_96_n40, add_96_n39,
         add_96_n38, add_96_n37, add_96_n36, add_96_n35, add_96_n34,
         add_96_n33, add_96_n32, add_96_n31, add_96_n30, add_96_n29,
         add_96_n28, add_96_n27, add_96_n26, add_96_n25, add_96_n24,
         add_96_n23, add_96_n22, add_96_n21, add_96_n20, add_96_n19,
         add_96_n18, add_96_n17, add_96_n16, add_96_n15, add_96_n14,
         add_96_n13, add_96_n12, add_96_n11, add_96_n10, add_96_n9, add_96_n8,
         add_96_n7, add_96_n6, add_96_n5, add_96_n4, add_96_n3, add_96_n2,
         add_96_n1, mult_102_n135, mult_102_n134, mult_102_n133, mult_102_n132,
         mult_102_n131, mult_102_n130, mult_102_n129, mult_102_n128,
         mult_102_n127, mult_102_n126, mult_102_n125, mult_102_n124,
         mult_102_n123, mult_102_n122, mult_102_n121, mult_102_n120,
         mult_102_n119, mult_102_n118, mult_102_n117, mult_102_n116,
         mult_102_n115, mult_102_n114, mult_102_n113, mult_102_n112,
         mult_102_n111, mult_102_n110, mult_102_n109, mult_102_n108,
         mult_102_n107, mult_102_n106, mult_102_n105, mult_102_n104,
         mult_102_n103, mult_102_n67, mult_102_n66, mult_102_n65, mult_102_n63,
         mult_102_n62, mult_102_n61, mult_102_n60, mult_102_n59, mult_102_n58,
         mult_102_n57, mult_102_n56, mult_102_n55, mult_102_n53, mult_102_n52,
         mult_102_n51, mult_102_n50, mult_102_n49, mult_102_n48, mult_102_n47,
         mult_102_n45, mult_102_n44, mult_102_n43, mult_102_n42, mult_102_n40,
         mult_102_n39, mult_102_n38, mult_102_n37, mult_102_n36, mult_102_n35,
         mult_102_n34, mult_102_n33, mult_102_n32, mult_102_n31, mult_102_n30,
         mult_102_n29, mult_102_n28, mult_102_n26, mult_102_n25, mult_102_n24,
         mult_102_n23, mult_102_n22, mult_102_n21, mult_102_n20, mult_102_n19,
         mult_102_n18, mult_102_n17, mult_102_n16, mult_102_n15, mult_102_n14,
         mult_102_n13, mult_102_n12, mult_102_n11, mult_102_n8, mult_102_n7,
         mult_102_n6, mult_102_n5, mult_102_n4, mult_102_n3, mult_102_n2,
         add_95_n39, add_95_n38, add_95_n37, add_95_n36, add_95_n35,
         add_95_n34, add_95_n33, add_95_n32, add_95_n31, add_95_n30,
         add_95_n29, add_95_n28, add_95_n27, add_95_n26, add_95_n25,
         add_95_n24, add_95_n23, add_95_n22, add_95_n21, add_95_n20,
         add_95_n19, add_95_n18, add_95_n17, add_95_n16, add_95_n15,
         add_95_n14, add_95_n13, add_95_n12, add_95_n11, add_95_n10, add_95_n9,
         add_95_n8, add_95_n7, add_95_n6, add_95_n5, add_95_n4, add_95_n3,
         add_95_n2, add_95_n1, add_94_n34, add_94_n33, add_94_n32, add_94_n31,
         add_94_n30, add_94_n29, add_94_n28, add_94_n27, add_94_n26,
         add_94_n25, add_94_n24, add_94_n23, add_94_n22, add_94_n21,
         add_94_n20, add_94_n19, add_94_n18, add_94_n17, add_94_n16,
         add_94_n15, add_94_n14, add_94_n13, add_94_n12, add_94_n11,
         add_94_n10, add_94_n9, add_94_n8, add_94_n7, add_94_n6, add_94_n5,
         add_94_n4, add_94_n3, add_94_n2, add_94_n1, mult_100_n151,
         mult_100_n150, mult_100_n149, mult_100_n148, mult_100_n147,
         mult_100_n146, mult_100_n145, mult_100_n144, mult_100_n143,
         mult_100_n142, mult_100_n141, mult_100_n140, mult_100_n139,
         mult_100_n138, mult_100_n137, mult_100_n136, mult_100_n135,
         mult_100_n134, mult_100_n133, mult_100_n132, mult_100_n131,
         mult_100_n130, mult_100_n129, mult_100_n128, mult_100_n127,
         mult_100_n126, mult_100_n125, mult_100_n124, mult_100_n123,
         mult_100_n122, mult_100_n121, mult_100_n120, mult_100_n119,
         mult_100_n118, mult_100_n117, mult_100_n116, mult_100_n115,
         mult_100_n114, mult_100_n113, mult_100_n112, mult_100_n111,
         mult_100_n110, mult_100_n109, mult_100_n108, mult_100_n107,
         mult_100_n106, mult_100_n105, mult_100_n104, mult_100_n103,
         mult_100_n67, mult_100_n66, mult_100_n65, mult_100_n63, mult_100_n62,
         mult_100_n61, mult_100_n60, mult_100_n59, mult_100_n58, mult_100_n57,
         mult_100_n56, mult_100_n55, mult_100_n53, mult_100_n52, mult_100_n51,
         mult_100_n50, mult_100_n49, mult_100_n48, mult_100_n47, mult_100_n45,
         mult_100_n44, mult_100_n43, mult_100_n42, mult_100_n40, mult_100_n39,
         mult_100_n38, mult_100_n37, mult_100_n36, mult_100_n35, mult_100_n34,
         mult_100_n33, mult_100_n32, mult_100_n31, mult_100_n30, mult_100_n29,
         mult_100_n28, mult_100_n26, mult_100_n25, mult_100_n24, mult_100_n23,
         mult_100_n22, mult_100_n21, mult_100_n20, mult_100_n19, mult_100_n18,
         mult_100_n17, mult_100_n16, mult_100_n15, mult_100_n14, mult_100_n13,
         mult_100_n12, mult_100_n11, mult_100_n8, mult_100_n7, mult_100_n6,
         mult_100_n5, mult_100_n4, mult_100_n2,
         add_3_root_add_0_root_add_111_n1, add_1_root_add_0_root_add_111_n1,
         mult_101_n138, mult_101_n137, mult_101_n136, mult_101_n135,
         mult_101_n134, mult_101_n133, mult_101_n132, mult_101_n131,
         mult_101_n130, mult_101_n129, mult_101_n128, mult_101_n127,
         mult_101_n126, mult_101_n125, mult_101_n124, mult_101_n123,
         mult_101_n122, mult_101_n121, mult_101_n120, mult_101_n119,
         mult_101_n118, mult_101_n117, mult_101_n116, mult_101_n115,
         mult_101_n114, mult_101_n113, mult_101_n112, mult_101_n111,
         mult_101_n110, mult_101_n109, mult_101_n108, mult_101_n107,
         mult_101_n106, mult_101_n105, mult_101_n104, mult_101_n103,
         mult_101_n67, mult_101_n66, mult_101_n65, mult_101_n63, mult_101_n62,
         mult_101_n61, mult_101_n60, mult_101_n59, mult_101_n58, mult_101_n57,
         mult_101_n56, mult_101_n55, mult_101_n53, mult_101_n52, mult_101_n51,
         mult_101_n50, mult_101_n49, mult_101_n48, mult_101_n47, mult_101_n45,
         mult_101_n44, mult_101_n43, mult_101_n42, mult_101_n40, mult_101_n39,
         mult_101_n38, mult_101_n37, mult_101_n36, mult_101_n35, mult_101_n34,
         mult_101_n33, mult_101_n32, mult_101_n31, mult_101_n30, mult_101_n29,
         mult_101_n28, mult_101_n26, mult_101_n25, mult_101_n24, mult_101_n23,
         mult_101_n22, mult_101_n21, mult_101_n20, mult_101_n19, mult_101_n18,
         mult_101_n17, mult_101_n16, mult_101_n15, mult_101_n14, mult_101_n13,
         mult_101_n12, mult_101_n11, mult_101_n8, mult_101_n7, mult_101_n6,
         mult_101_n5, mult_101_n4, mult_101_n3, mult_101_n2,
         add_2_root_add_0_root_add_111_n2, add_2_root_add_0_root_add_111_n1,
         add_0_root_add_0_root_add_111_n6, add_0_root_add_0_root_add_111_n4,
         add_0_root_add_0_root_add_111_n3, add_0_root_add_0_root_add_111_n2,
         add_0_root_add_0_root_add_111_n1;
  wire   [9:5] add_97_carry;
  wire   [9:5] add_96_carry;
  wire   [9:5] add_95_carry;
  wire   [9:5] add_94_carry;
  wire   [8:2] add_3_root_add_0_root_add_111_carry;
  wire   [8:2] add_1_root_add_0_root_add_111_carry;
  wire   [8:2] add_2_root_add_0_root_add_111_carry;
  wire   [8:2] add_0_root_add_0_root_add_111_carry;

  AOI22_X1 Reg_din_U23 ( .A1(DIN[1]), .A2(Reg_din_n12), .B1(x_ext_0__1_), .B2(
        Reg_din_n13), .ZN(Reg_din_n14) );
  AOI22_X1 Reg_din_U22 ( .A1(DIN[0]), .A2(Reg_din_n12), .B1(x_ext_0__0_), .B2(
        Reg_din_n13), .ZN(Reg_din_n11) );
  AOI22_X1 Reg_din_U21 ( .A1(DIN[8]), .A2(Reg_din_n12), .B1(x_ext_0__9_), .B2(
        Reg_din_n13), .ZN(Reg_din_n21) );
  INV_X1 Reg_din_U20 ( .A(Reg_din_n21), .ZN(Reg_din_n2) );
  AOI22_X1 Reg_din_U19 ( .A1(DIN[7]), .A2(Reg_din_n12), .B1(x_ext_0__7_), .B2(
        Reg_din_n13), .ZN(Reg_din_n20) );
  INV_X1 Reg_din_U18 ( .A(Reg_din_n20), .ZN(Reg_din_n3) );
  AOI22_X1 Reg_din_U17 ( .A1(DIN[6]), .A2(Reg_din_n12), .B1(x_ext_0__6_), .B2(
        Reg_din_n13), .ZN(Reg_din_n19) );
  INV_X1 Reg_din_U16 ( .A(Reg_din_n19), .ZN(Reg_din_n4) );
  AOI22_X1 Reg_din_U15 ( .A1(DIN[5]), .A2(Reg_din_n12), .B1(x_ext_0__5_), .B2(
        Reg_din_n13), .ZN(Reg_din_n18) );
  INV_X1 Reg_din_U14 ( .A(Reg_din_n18), .ZN(Reg_din_n5) );
  AOI22_X1 Reg_din_U13 ( .A1(DIN[4]), .A2(Reg_din_n12), .B1(x_ext_0__4_), .B2(
        Reg_din_n13), .ZN(Reg_din_n17) );
  INV_X1 Reg_din_U12 ( .A(Reg_din_n17), .ZN(Reg_din_n6) );
  AOI22_X1 Reg_din_U11 ( .A1(DIN[3]), .A2(Reg_din_n12), .B1(x_ext_0__3_), .B2(
        Reg_din_n13), .ZN(Reg_din_n16) );
  INV_X1 Reg_din_U10 ( .A(Reg_din_n16), .ZN(Reg_din_n7) );
  AOI22_X1 Reg_din_U9 ( .A1(DIN[2]), .A2(Reg_din_n12), .B1(x_ext_0__2_), .B2(
        Reg_din_n13), .ZN(Reg_din_n15) );
  INV_X1 Reg_din_U8 ( .A(Reg_din_n15), .ZN(Reg_din_n8) );
  INV_X1 Reg_din_U7 ( .A(Reg_din_n11), .ZN(Reg_din_n10) );
  INV_X1 Reg_din_U6 ( .A(Reg_din_n14), .ZN(Reg_din_n9) );
  INV_X1 Reg_din_U5 ( .A(RST_n), .ZN(Reg_din_n22) );
  NOR2_X1 Reg_din_U4 ( .A1(VIN), .A2(Reg_din_n22), .ZN(Reg_din_n13) );
  NOR2_X1 Reg_din_U3 ( .A1(Reg_din_n22), .A2(Reg_din_n13), .ZN(Reg_din_n12) );
  DFF_X1 Reg_din_Q_reg_3_ ( .D(Reg_din_n7), .CK(CLK), .Q(x_ext_0__3_) );
  DFF_X1 Reg_din_Q_reg_1_ ( .D(Reg_din_n9), .CK(CLK), .Q(x_ext_0__1_) );
  DFF_X1 Reg_din_Q_reg_0_ ( .D(Reg_din_n10), .CK(CLK), .Q(x_ext_0__0_) );
  DFF_X1 Reg_din_Q_reg_2_ ( .D(Reg_din_n8), .CK(CLK), .Q(x_ext_0__2_) );
  DFF_X1 Reg_din_Q_reg_4_ ( .D(Reg_din_n6), .CK(CLK), .Q(x_ext_0__4_) );
  DFF_X1 Reg_din_Q_reg_5_ ( .D(Reg_din_n5), .CK(CLK), .Q(x_ext_0__5_) );
  DFF_X1 Reg_din_Q_reg_6_ ( .D(Reg_din_n4), .CK(CLK), .Q(x_ext_0__6_) );
  DFF_X1 Reg_din_Q_reg_7_ ( .D(Reg_din_n3), .CK(CLK), .Q(x_ext_0__7_) );
  DFF_X1 Reg_din_Q_reg_8_ ( .D(Reg_din_n2), .CK(CLK), .Q(x_ext_0__9_) );
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
  INV_X1 Reg_dout_U23 ( .A(Reg_dout_n22), .ZN(Reg_dout_n1) );
  AOI22_X1 Reg_dout_U22 ( .A1(s_2_3__8_), .A2(Reg_dout_n31), .B1(DOUT[8]), 
        .B2(Reg_dout_n30), .ZN(Reg_dout_n22) );
  INV_X1 Reg_dout_U21 ( .A(RST_n), .ZN(Reg_dout_n10) );
  AOI22_X1 Reg_dout_U20 ( .A1(s_2_3__2_), .A2(Reg_dout_n31), .B1(DOUT[2]), 
        .B2(Reg_dout_n30), .ZN(Reg_dout_n28) );
  INV_X1 Reg_dout_U19 ( .A(Reg_dout_n28), .ZN(Reg_dout_n7) );
  AOI22_X1 Reg_dout_U18 ( .A1(s_2_3__1_), .A2(Reg_dout_n31), .B1(DOUT[1]), 
        .B2(Reg_dout_n30), .ZN(Reg_dout_n29) );
  INV_X1 Reg_dout_U17 ( .A(Reg_dout_n29), .ZN(Reg_dout_n8) );
  AOI22_X1 Reg_dout_U16 ( .A1(s_2_3__4_), .A2(Reg_dout_n31), .B1(DOUT[4]), 
        .B2(Reg_dout_n30), .ZN(Reg_dout_n26) );
  INV_X1 Reg_dout_U15 ( .A(Reg_dout_n26), .ZN(Reg_dout_n5) );
  AOI22_X1 Reg_dout_U14 ( .A1(s_2_3__3_), .A2(Reg_dout_n31), .B1(DOUT[3]), 
        .B2(Reg_dout_n30), .ZN(Reg_dout_n27) );
  INV_X1 Reg_dout_U13 ( .A(Reg_dout_n27), .ZN(Reg_dout_n6) );
  AOI22_X1 Reg_dout_U12 ( .A1(s_2_3__5_), .A2(Reg_dout_n31), .B1(DOUT[5]), 
        .B2(Reg_dout_n30), .ZN(Reg_dout_n25) );
  INV_X1 Reg_dout_U11 ( .A(Reg_dout_n25), .ZN(Reg_dout_n4) );
  AOI22_X1 Reg_dout_U10 ( .A1(s_2_3__6_), .A2(Reg_dout_n31), .B1(DOUT[6]), 
        .B2(Reg_dout_n30), .ZN(Reg_dout_n24) );
  INV_X1 Reg_dout_U9 ( .A(Reg_dout_n24), .ZN(Reg_dout_n3) );
  AOI22_X1 Reg_dout_U8 ( .A1(s_2_3__7_), .A2(Reg_dout_n31), .B1(DOUT[7]), .B2(
        Reg_dout_n30), .ZN(Reg_dout_n23) );
  INV_X1 Reg_dout_U7 ( .A(Reg_dout_n23), .ZN(Reg_dout_n2) );
  AOI22_X1 Reg_dout_U6 ( .A1(s_2_3__0_), .A2(Reg_dout_n31), .B1(DOUT[0]), .B2(
        Reg_dout_n30), .ZN(Reg_dout_n32) );
  INV_X1 Reg_dout_U5 ( .A(Reg_dout_n32), .ZN(Reg_dout_n9) );
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
  AOI22_X1 Reg_xi_0_U23 ( .A1(x_ext_0__1_), .A2(Reg_xi_0_n31), .B1(x_ext_1__1_), .B2(Reg_xi_0_n30), .ZN(Reg_xi_0_n29) );
  AOI22_X1 Reg_xi_0_U22 ( .A1(x_ext_0__0_), .A2(Reg_xi_0_n31), .B1(x_ext_1__0_), .B2(Reg_xi_0_n30), .ZN(Reg_xi_0_n32) );
  AOI22_X1 Reg_xi_0_U21 ( .A1(x_ext_0__9_), .A2(Reg_xi_0_n31), .B1(x_ext_1__9_), .B2(Reg_xi_0_n30), .ZN(Reg_xi_0_n22) );
  INV_X1 Reg_xi_0_U20 ( .A(Reg_xi_0_n22), .ZN(Reg_xi_0_n1) );
  AOI22_X1 Reg_xi_0_U19 ( .A1(x_ext_0__7_), .A2(Reg_xi_0_n31), .B1(x_ext_1__7_), .B2(Reg_xi_0_n30), .ZN(Reg_xi_0_n23) );
  INV_X1 Reg_xi_0_U18 ( .A(Reg_xi_0_n23), .ZN(Reg_xi_0_n2) );
  AOI22_X1 Reg_xi_0_U17 ( .A1(x_ext_0__6_), .A2(Reg_xi_0_n31), .B1(x_ext_1__6_), .B2(Reg_xi_0_n30), .ZN(Reg_xi_0_n24) );
  INV_X1 Reg_xi_0_U16 ( .A(Reg_xi_0_n24), .ZN(Reg_xi_0_n3) );
  AOI22_X1 Reg_xi_0_U15 ( .A1(x_ext_0__5_), .A2(Reg_xi_0_n31), .B1(x_ext_1__5_), .B2(Reg_xi_0_n30), .ZN(Reg_xi_0_n25) );
  INV_X1 Reg_xi_0_U14 ( .A(Reg_xi_0_n25), .ZN(Reg_xi_0_n4) );
  AOI22_X1 Reg_xi_0_U13 ( .A1(x_ext_0__4_), .A2(Reg_xi_0_n31), .B1(x_ext_1__4_), .B2(Reg_xi_0_n30), .ZN(Reg_xi_0_n26) );
  INV_X1 Reg_xi_0_U12 ( .A(Reg_xi_0_n26), .ZN(Reg_xi_0_n5) );
  AOI22_X1 Reg_xi_0_U11 ( .A1(x_ext_0__3_), .A2(Reg_xi_0_n31), .B1(x_ext_1__3_), .B2(Reg_xi_0_n30), .ZN(Reg_xi_0_n27) );
  INV_X1 Reg_xi_0_U10 ( .A(Reg_xi_0_n27), .ZN(Reg_xi_0_n6) );
  AOI22_X1 Reg_xi_0_U9 ( .A1(x_ext_0__2_), .A2(Reg_xi_0_n31), .B1(x_ext_1__2_), 
        .B2(Reg_xi_0_n30), .ZN(Reg_xi_0_n28) );
  INV_X1 Reg_xi_0_U8 ( .A(Reg_xi_0_n28), .ZN(Reg_xi_0_n7) );
  INV_X1 Reg_xi_0_U7 ( .A(Reg_xi_0_n32), .ZN(Reg_xi_0_n9) );
  INV_X1 Reg_xi_0_U6 ( .A(Reg_xi_0_n29), .ZN(Reg_xi_0_n8) );
  INV_X1 Reg_xi_0_U5 ( .A(RST_n), .ZN(Reg_xi_0_n10) );
  NOR2_X1 Reg_xi_0_U4 ( .A1(VIN), .A2(Reg_xi_0_n10), .ZN(Reg_xi_0_n30) );
  NOR2_X1 Reg_xi_0_U3 ( .A1(Reg_xi_0_n10), .A2(Reg_xi_0_n30), .ZN(Reg_xi_0_n31) );
  DFF_X1 Reg_xi_0_Q_reg_1_ ( .D(Reg_xi_0_n8), .CK(CLK), .Q(x_ext_1__1_) );
  DFF_X1 Reg_xi_0_Q_reg_0_ ( .D(Reg_xi_0_n9), .CK(CLK), .Q(x_ext_1__0_) );
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
  AOI22_X1 Reg_xi_1_U9 ( .A1(x_ext_1__0_), .A2(Reg_xi_1_n31), .B1(x_ext_2__0_), 
        .B2(Reg_xi_1_n30), .ZN(Reg_xi_1_n32) );
  INV_X1 Reg_xi_1_U8 ( .A(Reg_xi_1_n32), .ZN(Reg_xi_1_n9) );
  AOI22_X1 Reg_xi_1_U7 ( .A1(x_ext_1__1_), .A2(Reg_xi_1_n31), .B1(x_ext_2__1_), 
        .B2(Reg_xi_1_n30), .ZN(Reg_xi_1_n29) );
  INV_X1 Reg_xi_1_U6 ( .A(Reg_xi_1_n29), .ZN(Reg_xi_1_n8) );
  INV_X1 Reg_xi_1_U5 ( .A(RST_n), .ZN(Reg_xi_1_n10) );
  NOR2_X1 Reg_xi_1_U4 ( .A1(VIN), .A2(Reg_xi_1_n10), .ZN(Reg_xi_1_n30) );
  NOR2_X1 Reg_xi_1_U3 ( .A1(Reg_xi_1_n10), .A2(Reg_xi_1_n30), .ZN(Reg_xi_1_n31) );
  DFF_X1 Reg_xi_1_Q_reg_8_ ( .D(Reg_xi_1_n1), .CK(CLK), .Q(x_ext_2__9_) );
  DFF_X1 Reg_xi_1_Q_reg_1_ ( .D(Reg_xi_1_n8), .CK(CLK), .Q(x_ext_2__1_) );
  DFF_X1 Reg_xi_1_Q_reg_0_ ( .D(Reg_xi_1_n9), .CK(CLK), .Q(x_ext_2__0_) );
  DFF_X1 Reg_xi_1_Q_reg_2_ ( .D(Reg_xi_1_n7), .CK(CLK), .Q(x_ext_2__2_) );
  DFF_X1 Reg_xi_1_Q_reg_3_ ( .D(Reg_xi_1_n6), .CK(CLK), .Q(x_ext_2__3_) );
  DFF_X1 Reg_xi_1_Q_reg_4_ ( .D(Reg_xi_1_n5), .CK(CLK), .Q(x_ext_2__4_) );
  DFF_X1 Reg_xi_1_Q_reg_5_ ( .D(Reg_xi_1_n4), .CK(CLK), .Q(x_ext_2__5_) );
  DFF_X1 Reg_xi_1_Q_reg_6_ ( .D(Reg_xi_1_n3), .CK(CLK), .Q(x_ext_2__6_) );
  DFF_X1 Reg_xi_1_Q_reg_7_ ( .D(Reg_xi_1_n2), .CK(CLK), .Q(x_ext_2__7_) );
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
  AOI22_X1 Reg_xi_2_U9 ( .A1(x_ext_2__0_), .A2(Reg_xi_2_n31), .B1(x_ext_3__0_), 
        .B2(Reg_xi_2_n30), .ZN(Reg_xi_2_n32) );
  INV_X1 Reg_xi_2_U8 ( .A(Reg_xi_2_n32), .ZN(Reg_xi_2_n9) );
  AOI22_X1 Reg_xi_2_U7 ( .A1(x_ext_2__1_), .A2(Reg_xi_2_n31), .B1(x_ext_3__1_), 
        .B2(Reg_xi_2_n30), .ZN(Reg_xi_2_n29) );
  INV_X1 Reg_xi_2_U6 ( .A(Reg_xi_2_n29), .ZN(Reg_xi_2_n8) );
  INV_X1 Reg_xi_2_U5 ( .A(RST_n), .ZN(Reg_xi_2_n10) );
  NOR2_X1 Reg_xi_2_U4 ( .A1(VIN), .A2(Reg_xi_2_n10), .ZN(Reg_xi_2_n30) );
  NOR2_X1 Reg_xi_2_U3 ( .A1(Reg_xi_2_n10), .A2(Reg_xi_2_n30), .ZN(Reg_xi_2_n31) );
  DFF_X1 Reg_xi_2_Q_reg_1_ ( .D(Reg_xi_2_n8), .CK(CLK), .Q(x_ext_3__1_) );
  DFF_X1 Reg_xi_2_Q_reg_0_ ( .D(Reg_xi_2_n9), .CK(CLK), .Q(x_ext_3__0_) );
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
  AOI22_X1 Reg_xi_4_U24 ( .A1(x_k_4__8_), .A2(Reg_xi_4_n33), .B1(x_ext_5__9_), 
        .B2(Reg_xi_4_n32), .ZN(Reg_xi_4_n24) );
  INV_X1 Reg_xi_4_U23 ( .A(Reg_xi_4_n24), .ZN(Reg_xi_4_n3) );
  AOI22_X1 Reg_xi_4_U22 ( .A1(x_k_4__7_), .A2(Reg_xi_4_n33), .B1(x_ext_5__7_), 
        .B2(Reg_xi_4_n32), .ZN(Reg_xi_4_n25) );
  INV_X1 Reg_xi_4_U21 ( .A(Reg_xi_4_n25), .ZN(Reg_xi_4_n4) );
  AOI22_X1 Reg_xi_4_U20 ( .A1(x_k_4__6_), .A2(Reg_xi_4_n33), .B1(x_ext_5__6_), 
        .B2(Reg_xi_4_n32), .ZN(Reg_xi_4_n26) );
  INV_X1 Reg_xi_4_U19 ( .A(Reg_xi_4_n26), .ZN(Reg_xi_4_n5) );
  AOI22_X1 Reg_xi_4_U18 ( .A1(x_k_4__5_), .A2(Reg_xi_4_n33), .B1(x_ext_5__5_), 
        .B2(Reg_xi_4_n32), .ZN(Reg_xi_4_n27) );
  INV_X1 Reg_xi_4_U17 ( .A(Reg_xi_4_n27), .ZN(Reg_xi_4_n6) );
  AOI22_X1 Reg_xi_4_U16 ( .A1(x_k_4__4_), .A2(Reg_xi_4_n33), .B1(x_ext_5__4_), 
        .B2(Reg_xi_4_n32), .ZN(Reg_xi_4_n28) );
  INV_X1 Reg_xi_4_U15 ( .A(Reg_xi_4_n28), .ZN(Reg_xi_4_n7) );
  AOI22_X1 Reg_xi_4_U14 ( .A1(x_k_4__3_), .A2(Reg_xi_4_n33), .B1(x_ext_5__3_), 
        .B2(Reg_xi_4_n32), .ZN(Reg_xi_4_n29) );
  INV_X1 Reg_xi_4_U13 ( .A(Reg_xi_4_n29), .ZN(Reg_xi_4_n8) );
  AOI22_X1 Reg_xi_4_U12 ( .A1(x_k_4__2_), .A2(Reg_xi_4_n33), .B1(x_ext_5__2_), 
        .B2(Reg_xi_4_n32), .ZN(Reg_xi_4_n30) );
  INV_X1 Reg_xi_4_U11 ( .A(Reg_xi_4_n30), .ZN(Reg_xi_4_n9) );
  AOI22_X1 Reg_xi_4_U10 ( .A1(x_k_4__0_), .A2(Reg_xi_4_n33), .B1(x_ext_5__0_), 
        .B2(Reg_xi_4_n32), .ZN(Reg_xi_4_n34) );
  INV_X1 Reg_xi_4_U9 ( .A(Reg_xi_4_n34), .ZN(Reg_xi_4_n22) );
  AOI22_X1 Reg_xi_4_U8 ( .A1(x_k_4__1_), .A2(Reg_xi_4_n33), .B1(Reg_xi_4_n2), 
        .B2(Reg_xi_4_n32), .ZN(Reg_xi_4_n31) );
  INV_X1 Reg_xi_4_U7 ( .A(Reg_xi_4_n31), .ZN(Reg_xi_4_n10) );
  INV_X1 Reg_xi_4_U6 ( .A(RST_n), .ZN(Reg_xi_4_n23) );
  NOR2_X1 Reg_xi_4_U5 ( .A1(VIN), .A2(Reg_xi_4_n23), .ZN(Reg_xi_4_n32) );
  NOR2_X1 Reg_xi_4_U4 ( .A1(Reg_xi_4_n23), .A2(Reg_xi_4_n32), .ZN(Reg_xi_4_n33) );
  INV_X1 Reg_xi_4_U3 ( .A(Reg_xi_4_n1), .ZN(Reg_xi_4_n2) );
  DFF_X1 Reg_xi_4_Q_reg_1_ ( .D(Reg_xi_4_n10), .CK(CLK), .Q(x_ext_5__1_), .QN(
        Reg_xi_4_n1) );
  DFF_X1 Reg_xi_4_Q_reg_0_ ( .D(Reg_xi_4_n22), .CK(CLK), .Q(x_ext_5__0_) );
  DFF_X1 Reg_xi_4_Q_reg_2_ ( .D(Reg_xi_4_n9), .CK(CLK), .Q(x_ext_5__2_) );
  DFF_X1 Reg_xi_4_Q_reg_3_ ( .D(Reg_xi_4_n8), .CK(CLK), .Q(x_ext_5__3_) );
  DFF_X1 Reg_xi_4_Q_reg_4_ ( .D(Reg_xi_4_n7), .CK(CLK), .Q(x_ext_5__4_) );
  DFF_X1 Reg_xi_4_Q_reg_5_ ( .D(Reg_xi_4_n6), .CK(CLK), .Q(x_ext_5__5_) );
  DFF_X1 Reg_xi_4_Q_reg_6_ ( .D(Reg_xi_4_n5), .CK(CLK), .Q(x_ext_5__6_) );
  DFF_X1 Reg_xi_4_Q_reg_7_ ( .D(Reg_xi_4_n4), .CK(CLK), .Q(x_ext_5__7_) );
  DFF_X1 Reg_xi_4_Q_reg_8_ ( .D(Reg_xi_4_n3), .CK(CLK), .Q(x_ext_5__9_) );
  AOI22_X1 Reg_xi_5_U24 ( .A1(x_ext_5__9_), .A2(Reg_xi_5_n33), .B1(x_ext_6__9_), .B2(Reg_xi_5_n32), .ZN(Reg_xi_5_n24) );
  INV_X1 Reg_xi_5_U23 ( .A(Reg_xi_5_n24), .ZN(Reg_xi_5_n3) );
  AOI22_X1 Reg_xi_5_U22 ( .A1(x_ext_5__7_), .A2(Reg_xi_5_n33), .B1(x_ext_6__7_), .B2(Reg_xi_5_n32), .ZN(Reg_xi_5_n25) );
  INV_X1 Reg_xi_5_U21 ( .A(Reg_xi_5_n25), .ZN(Reg_xi_5_n4) );
  AOI22_X1 Reg_xi_5_U20 ( .A1(x_ext_5__6_), .A2(Reg_xi_5_n33), .B1(x_ext_6__6_), .B2(Reg_xi_5_n32), .ZN(Reg_xi_5_n26) );
  INV_X1 Reg_xi_5_U19 ( .A(Reg_xi_5_n26), .ZN(Reg_xi_5_n5) );
  AOI22_X1 Reg_xi_5_U18 ( .A1(x_ext_5__5_), .A2(Reg_xi_5_n33), .B1(x_ext_6__5_), .B2(Reg_xi_5_n32), .ZN(Reg_xi_5_n27) );
  INV_X1 Reg_xi_5_U17 ( .A(Reg_xi_5_n27), .ZN(Reg_xi_5_n6) );
  AOI22_X1 Reg_xi_5_U16 ( .A1(x_ext_5__4_), .A2(Reg_xi_5_n33), .B1(x_ext_6__4_), .B2(Reg_xi_5_n32), .ZN(Reg_xi_5_n28) );
  INV_X1 Reg_xi_5_U15 ( .A(Reg_xi_5_n28), .ZN(Reg_xi_5_n7) );
  AOI22_X1 Reg_xi_5_U14 ( .A1(x_ext_5__3_), .A2(Reg_xi_5_n33), .B1(x_ext_6__3_), .B2(Reg_xi_5_n32), .ZN(Reg_xi_5_n29) );
  INV_X1 Reg_xi_5_U13 ( .A(Reg_xi_5_n29), .ZN(Reg_xi_5_n8) );
  AOI22_X1 Reg_xi_5_U12 ( .A1(x_ext_5__2_), .A2(Reg_xi_5_n33), .B1(x_ext_6__2_), .B2(Reg_xi_5_n32), .ZN(Reg_xi_5_n30) );
  INV_X1 Reg_xi_5_U11 ( .A(Reg_xi_5_n30), .ZN(Reg_xi_5_n9) );
  AOI22_X1 Reg_xi_5_U10 ( .A1(x_ext_5__0_), .A2(Reg_xi_5_n33), .B1(x_ext_6__0_), .B2(Reg_xi_5_n32), .ZN(Reg_xi_5_n34) );
  INV_X1 Reg_xi_5_U9 ( .A(Reg_xi_5_n34), .ZN(Reg_xi_5_n22) );
  AOI22_X1 Reg_xi_5_U8 ( .A1(x_ext_5__1_), .A2(Reg_xi_5_n33), .B1(Reg_xi_5_n2), 
        .B2(Reg_xi_5_n32), .ZN(Reg_xi_5_n31) );
  INV_X1 Reg_xi_5_U7 ( .A(Reg_xi_5_n31), .ZN(Reg_xi_5_n10) );
  INV_X1 Reg_xi_5_U6 ( .A(RST_n), .ZN(Reg_xi_5_n23) );
  NOR2_X1 Reg_xi_5_U5 ( .A1(VIN), .A2(Reg_xi_5_n23), .ZN(Reg_xi_5_n32) );
  NOR2_X1 Reg_xi_5_U4 ( .A1(Reg_xi_5_n23), .A2(Reg_xi_5_n32), .ZN(Reg_xi_5_n33) );
  INV_X1 Reg_xi_5_U3 ( .A(Reg_xi_5_n1), .ZN(Reg_xi_5_n2) );
  DFF_X1 Reg_xi_5_Q_reg_8_ ( .D(Reg_xi_5_n3), .CK(CLK), .Q(x_ext_6__9_) );
  DFF_X1 Reg_xi_5_Q_reg_1_ ( .D(Reg_xi_5_n10), .CK(CLK), .Q(x_ext_6__1_), .QN(
        Reg_xi_5_n1) );
  DFF_X1 Reg_xi_5_Q_reg_0_ ( .D(Reg_xi_5_n22), .CK(CLK), .Q(x_ext_6__0_) );
  DFF_X1 Reg_xi_5_Q_reg_2_ ( .D(Reg_xi_5_n9), .CK(CLK), .Q(x_ext_6__2_) );
  DFF_X1 Reg_xi_5_Q_reg_3_ ( .D(Reg_xi_5_n8), .CK(CLK), .Q(x_ext_6__3_) );
  DFF_X1 Reg_xi_5_Q_reg_4_ ( .D(Reg_xi_5_n7), .CK(CLK), .Q(x_ext_6__4_) );
  DFF_X1 Reg_xi_5_Q_reg_5_ ( .D(Reg_xi_5_n6), .CK(CLK), .Q(x_ext_6__5_) );
  DFF_X1 Reg_xi_5_Q_reg_6_ ( .D(Reg_xi_5_n5), .CK(CLK), .Q(x_ext_6__6_) );
  DFF_X1 Reg_xi_5_Q_reg_7_ ( .D(Reg_xi_5_n4), .CK(CLK), .Q(x_ext_6__7_) );
  AOI22_X1 Reg_xi_6_U24 ( .A1(x_ext_6__9_), .A2(Reg_xi_6_n33), .B1(x_ext_7__9_), .B2(Reg_xi_6_n32), .ZN(Reg_xi_6_n24) );
  INV_X1 Reg_xi_6_U23 ( .A(Reg_xi_6_n24), .ZN(Reg_xi_6_n3) );
  AOI22_X1 Reg_xi_6_U22 ( .A1(x_ext_6__7_), .A2(Reg_xi_6_n33), .B1(x_ext_7__7_), .B2(Reg_xi_6_n32), .ZN(Reg_xi_6_n25) );
  INV_X1 Reg_xi_6_U21 ( .A(Reg_xi_6_n25), .ZN(Reg_xi_6_n4) );
  AOI22_X1 Reg_xi_6_U20 ( .A1(x_ext_6__6_), .A2(Reg_xi_6_n33), .B1(x_ext_7__6_), .B2(Reg_xi_6_n32), .ZN(Reg_xi_6_n26) );
  INV_X1 Reg_xi_6_U19 ( .A(Reg_xi_6_n26), .ZN(Reg_xi_6_n5) );
  AOI22_X1 Reg_xi_6_U18 ( .A1(x_ext_6__5_), .A2(Reg_xi_6_n33), .B1(x_ext_7__5_), .B2(Reg_xi_6_n32), .ZN(Reg_xi_6_n27) );
  INV_X1 Reg_xi_6_U17 ( .A(Reg_xi_6_n27), .ZN(Reg_xi_6_n6) );
  AOI22_X1 Reg_xi_6_U16 ( .A1(x_ext_6__4_), .A2(Reg_xi_6_n33), .B1(x_ext_7__4_), .B2(Reg_xi_6_n32), .ZN(Reg_xi_6_n28) );
  INV_X1 Reg_xi_6_U15 ( .A(Reg_xi_6_n28), .ZN(Reg_xi_6_n7) );
  AOI22_X1 Reg_xi_6_U14 ( .A1(x_ext_6__3_), .A2(Reg_xi_6_n33), .B1(x_ext_7__3_), .B2(Reg_xi_6_n32), .ZN(Reg_xi_6_n29) );
  INV_X1 Reg_xi_6_U13 ( .A(Reg_xi_6_n29), .ZN(Reg_xi_6_n8) );
  AOI22_X1 Reg_xi_6_U12 ( .A1(x_ext_6__2_), .A2(Reg_xi_6_n33), .B1(x_ext_7__2_), .B2(Reg_xi_6_n32), .ZN(Reg_xi_6_n30) );
  INV_X1 Reg_xi_6_U11 ( .A(Reg_xi_6_n30), .ZN(Reg_xi_6_n9) );
  AOI22_X1 Reg_xi_6_U10 ( .A1(x_ext_6__0_), .A2(Reg_xi_6_n33), .B1(x_ext_7__0_), .B2(Reg_xi_6_n32), .ZN(Reg_xi_6_n34) );
  INV_X1 Reg_xi_6_U9 ( .A(Reg_xi_6_n34), .ZN(Reg_xi_6_n22) );
  AOI22_X1 Reg_xi_6_U8 ( .A1(x_ext_6__1_), .A2(Reg_xi_6_n33), .B1(Reg_xi_6_n2), 
        .B2(Reg_xi_6_n32), .ZN(Reg_xi_6_n31) );
  INV_X1 Reg_xi_6_U7 ( .A(Reg_xi_6_n31), .ZN(Reg_xi_6_n10) );
  INV_X1 Reg_xi_6_U6 ( .A(RST_n), .ZN(Reg_xi_6_n23) );
  NOR2_X1 Reg_xi_6_U5 ( .A1(VIN), .A2(Reg_xi_6_n23), .ZN(Reg_xi_6_n32) );
  NOR2_X1 Reg_xi_6_U4 ( .A1(Reg_xi_6_n23), .A2(Reg_xi_6_n32), .ZN(Reg_xi_6_n33) );
  INV_X1 Reg_xi_6_U3 ( .A(Reg_xi_6_n1), .ZN(Reg_xi_6_n2) );
  DFF_X1 Reg_xi_6_Q_reg_1_ ( .D(Reg_xi_6_n10), .CK(CLK), .Q(x_ext_7__1_), .QN(
        Reg_xi_6_n1) );
  DFF_X1 Reg_xi_6_Q_reg_0_ ( .D(Reg_xi_6_n22), .CK(CLK), .Q(x_ext_7__0_) );
  DFF_X1 Reg_xi_6_Q_reg_2_ ( .D(Reg_xi_6_n9), .CK(CLK), .Q(x_ext_7__2_) );
  DFF_X1 Reg_xi_6_Q_reg_3_ ( .D(Reg_xi_6_n8), .CK(CLK), .Q(x_ext_7__3_) );
  DFF_X1 Reg_xi_6_Q_reg_4_ ( .D(Reg_xi_6_n7), .CK(CLK), .Q(x_ext_7__4_) );
  DFF_X1 Reg_xi_6_Q_reg_5_ ( .D(Reg_xi_6_n6), .CK(CLK), .Q(x_ext_7__5_) );
  DFF_X1 Reg_xi_6_Q_reg_6_ ( .D(Reg_xi_6_n5), .CK(CLK), .Q(x_ext_7__6_) );
  DFF_X1 Reg_xi_6_Q_reg_7_ ( .D(Reg_xi_6_n4), .CK(CLK), .Q(x_ext_7__7_) );
  DFF_X1 Reg_xi_6_Q_reg_8_ ( .D(Reg_xi_6_n3), .CK(CLK), .Q(x_ext_7__9_) );
  AOI22_X1 Reg_xi_7_U23 ( .A1(x_ext_7__1_), .A2(Reg_xi_7_n31), .B1(x_ext_8__1_), .B2(Reg_xi_7_n30), .ZN(Reg_xi_7_n29) );
  AOI22_X1 Reg_xi_7_U22 ( .A1(x_ext_7__9_), .A2(Reg_xi_7_n31), .B1(x_ext_8__9_), .B2(Reg_xi_7_n30), .ZN(Reg_xi_7_n22) );
  INV_X1 Reg_xi_7_U21 ( .A(Reg_xi_7_n22), .ZN(Reg_xi_7_n2) );
  AOI22_X1 Reg_xi_7_U20 ( .A1(x_ext_7__7_), .A2(Reg_xi_7_n31), .B1(x_ext_8__7_), .B2(Reg_xi_7_n30), .ZN(Reg_xi_7_n23) );
  INV_X1 Reg_xi_7_U19 ( .A(Reg_xi_7_n23), .ZN(Reg_xi_7_n3) );
  AOI22_X1 Reg_xi_7_U18 ( .A1(x_ext_7__6_), .A2(Reg_xi_7_n31), .B1(x_ext_8__6_), .B2(Reg_xi_7_n30), .ZN(Reg_xi_7_n24) );
  INV_X1 Reg_xi_7_U17 ( .A(Reg_xi_7_n24), .ZN(Reg_xi_7_n4) );
  AOI22_X1 Reg_xi_7_U16 ( .A1(x_ext_7__5_), .A2(Reg_xi_7_n31), .B1(x_ext_8__5_), .B2(Reg_xi_7_n30), .ZN(Reg_xi_7_n25) );
  INV_X1 Reg_xi_7_U15 ( .A(Reg_xi_7_n25), .ZN(Reg_xi_7_n5) );
  AOI22_X1 Reg_xi_7_U14 ( .A1(x_ext_7__4_), .A2(Reg_xi_7_n31), .B1(x_ext_8__4_), .B2(Reg_xi_7_n30), .ZN(Reg_xi_7_n26) );
  INV_X1 Reg_xi_7_U13 ( .A(Reg_xi_7_n26), .ZN(Reg_xi_7_n6) );
  AOI22_X1 Reg_xi_7_U12 ( .A1(x_ext_7__3_), .A2(Reg_xi_7_n31), .B1(x_ext_8__3_), .B2(Reg_xi_7_n30), .ZN(Reg_xi_7_n27) );
  INV_X1 Reg_xi_7_U11 ( .A(Reg_xi_7_n27), .ZN(Reg_xi_7_n7) );
  AOI22_X1 Reg_xi_7_U10 ( .A1(x_ext_7__2_), .A2(Reg_xi_7_n31), .B1(x_ext_8__2_), .B2(Reg_xi_7_n30), .ZN(Reg_xi_7_n28) );
  INV_X1 Reg_xi_7_U9 ( .A(Reg_xi_7_n28), .ZN(Reg_xi_7_n8) );
  AOI22_X1 Reg_xi_7_U8 ( .A1(x_ext_7__0_), .A2(Reg_xi_7_n31), .B1(x_ext_8__0_), 
        .B2(Reg_xi_7_n30), .ZN(Reg_xi_7_n32) );
  INV_X1 Reg_xi_7_U7 ( .A(Reg_xi_7_n32), .ZN(Reg_xi_7_n9) );
  INV_X1 Reg_xi_7_U6 ( .A(RST_n), .ZN(Reg_xi_7_n10) );
  NOR2_X1 Reg_xi_7_U5 ( .A1(VIN), .A2(Reg_xi_7_n10), .ZN(Reg_xi_7_n30) );
  NOR2_X1 Reg_xi_7_U4 ( .A1(Reg_xi_7_n10), .A2(Reg_xi_7_n30), .ZN(Reg_xi_7_n31) );
  INV_X1 Reg_xi_7_U3 ( .A(Reg_xi_7_n29), .ZN(Reg_xi_7_n1) );
  DFF_X1 Reg_xi_7_Q_reg_1_ ( .D(Reg_xi_7_n1), .CK(CLK), .Q(x_ext_8__1_) );
  DFF_X1 Reg_xi_7_Q_reg_0_ ( .D(Reg_xi_7_n9), .CK(CLK), .Q(x_ext_8__0_) );
  DFF_X1 Reg_xi_7_Q_reg_2_ ( .D(Reg_xi_7_n8), .CK(CLK), .Q(x_ext_8__2_) );
  DFF_X1 Reg_xi_7_Q_reg_3_ ( .D(Reg_xi_7_n7), .CK(CLK), .Q(x_ext_8__3_) );
  DFF_X1 Reg_xi_7_Q_reg_4_ ( .D(Reg_xi_7_n6), .CK(CLK), .Q(x_ext_8__4_) );
  DFF_X1 Reg_xi_7_Q_reg_5_ ( .D(Reg_xi_7_n5), .CK(CLK), .Q(x_ext_8__5_) );
  DFF_X1 Reg_xi_7_Q_reg_6_ ( .D(Reg_xi_7_n4), .CK(CLK), .Q(x_ext_8__6_) );
  DFF_X1 Reg_xi_7_Q_reg_7_ ( .D(Reg_xi_7_n3), .CK(CLK), .Q(x_ext_8__7_) );
  DFF_X1 Reg_xi_7_Q_reg_8_ ( .D(Reg_xi_7_n2), .CK(CLK), .Q(x_ext_8__9_) );
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
  INV_X1 mult_105_U61 ( .A(x_k_4__5_), .ZN(mult_105_n96) );
  INV_X1 mult_105_U60 ( .A(x_k_4__4_), .ZN(mult_105_n97) );
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
  OAI211_X1 add_97_U39 ( .C1(x_ext_3__1_), .C2(x_ext_5__1_), .A(x_ext_3__0_), 
        .B(x_ext_5__0_), .ZN(add_97_n30) );
  OAI21_X1 add_97_U38 ( .B1(add_97_n20), .B2(x_ext_3__2_), .A(x_ext_5__2_), 
        .ZN(add_97_n29) );
  OAI21_X1 add_97_U37 ( .B1(add_97_n28), .B2(add_97_n24), .A(add_97_n29), .ZN(
        add_97_n26) );
  OAI21_X1 add_97_U36 ( .B1(add_97_n26), .B2(x_ext_3__3_), .A(x_ext_5__3_), 
        .ZN(add_97_n27) );
  INV_X1 add_97_U35 ( .A(add_97_n27), .ZN(add_97_n23) );
  INV_X1 add_97_U34 ( .A(add_97_n30), .ZN(add_97_n25) );
  INV_X1 add_97_U33 ( .A(x_ext_3__2_), .ZN(add_97_n24) );
  AND2_X1 add_97_U32 ( .A1(x_ext_3__1_), .A2(x_ext_5__1_), .ZN(add_97_n22) );
  XOR2_X1 add_97_U31 ( .A(add_97_carry[9]), .B(add_97_n21), .Z(s_1_3__9_) );
  XOR2_X1 add_97_U30 ( .A(x_ext_5__9_), .B(x_ext_3__9_), .Z(add_97_n21) );
  AND2_X1 add_97_U29 ( .A1(add_97_n26), .A2(x_ext_3__3_), .ZN(add_97_n19) );
  NAND3_X1 add_97_U28 ( .A1(add_97_n16), .A2(add_97_n17), .A3(add_97_n18), 
        .ZN(add_97_carry[6]) );
  NAND2_X1 add_97_U27 ( .A1(x_ext_3__5_), .A2(x_ext_5__5_), .ZN(add_97_n18) );
  NAND2_X1 add_97_U26 ( .A1(add_97_carry[5]), .A2(x_ext_5__5_), .ZN(add_97_n17) );
  NAND2_X1 add_97_U25 ( .A1(add_97_carry[5]), .A2(x_ext_3__5_), .ZN(add_97_n16) );
  XOR2_X1 add_97_U24 ( .A(add_97_carry[5]), .B(add_97_n15), .Z(s_1_3__5_) );
  XOR2_X1 add_97_U23 ( .A(x_ext_3__5_), .B(x_ext_5__5_), .Z(add_97_n15) );
  NAND3_X1 add_97_U22 ( .A1(add_97_n12), .A2(add_97_n13), .A3(add_97_n14), 
        .ZN(add_97_carry[9]) );
  NAND2_X1 add_97_U21 ( .A1(x_ext_3__9_), .A2(x_ext_5__9_), .ZN(add_97_n14) );
  NAND2_X1 add_97_U20 ( .A1(add_97_carry[8]), .A2(x_ext_5__9_), .ZN(add_97_n13) );
  NAND2_X1 add_97_U19 ( .A1(add_97_carry[8]), .A2(x_ext_3__9_), .ZN(add_97_n12) );
  INV_X1 add_97_U18 ( .A(add_97_n6), .ZN(add_97_n28) );
  NAND3_X1 add_97_U17 ( .A1(add_97_n8), .A2(add_97_n9), .A3(add_97_n10), .ZN(
        add_97_carry[7]) );
  NAND2_X1 add_97_U16 ( .A1(x_ext_3__6_), .A2(x_ext_5__6_), .ZN(add_97_n10) );
  NAND2_X1 add_97_U15 ( .A1(add_97_carry[6]), .A2(x_ext_5__6_), .ZN(add_97_n9)
         );
  NAND2_X1 add_97_U14 ( .A1(add_97_carry[6]), .A2(x_ext_3__6_), .ZN(add_97_n8)
         );
  XOR2_X1 add_97_U13 ( .A(add_97_carry[6]), .B(add_97_n7), .Z(s_1_3__6_) );
  XOR2_X1 add_97_U12 ( .A(x_ext_3__6_), .B(x_ext_5__6_), .Z(add_97_n7) );
  OR2_X1 add_97_U11 ( .A1(add_97_n22), .A2(add_97_n25), .ZN(add_97_n20) );
  OR2_X1 add_97_U10 ( .A1(add_97_n22), .A2(add_97_n25), .ZN(add_97_n6) );
  OR2_X2 add_97_U9 ( .A1(add_97_n19), .A2(add_97_n23), .ZN(add_97_n11) );
  NAND3_X1 add_97_U8 ( .A1(add_97_n3), .A2(add_97_n4), .A3(add_97_n5), .ZN(
        add_97_carry[5]) );
  NAND2_X1 add_97_U7 ( .A1(x_ext_3__4_), .A2(x_ext_5__4_), .ZN(add_97_n5) );
  NAND2_X1 add_97_U6 ( .A1(add_97_n11), .A2(x_ext_5__4_), .ZN(add_97_n4) );
  NAND2_X1 add_97_U5 ( .A1(add_97_n11), .A2(x_ext_3__4_), .ZN(add_97_n3) );
  XOR2_X1 add_97_U4 ( .A(add_97_n11), .B(add_97_n2), .Z(s_1_3__4_) );
  XOR2_X1 add_97_U3 ( .A(x_ext_3__4_), .B(x_ext_5__4_), .Z(add_97_n2) );
  XNOR2_X1 add_97_U2 ( .A(add_97_carry[8]), .B(add_97_n1), .ZN(s_1_3__8_) );
  XNOR2_X1 add_97_U1 ( .A(x_ext_3__9_), .B(x_ext_5__9_), .ZN(add_97_n1) );
  FA_X1 add_97_U1_7 ( .A(x_ext_3__7_), .B(x_ext_5__7_), .CI(add_97_carry[7]), 
        .CO(add_97_carry[8]), .S(s_1_3__7_) );
  NAND2_X1 mult_103_U138 ( .A1(s_1_3__6_), .A2(b_3__7_), .ZN(mult_103_n28) );
  NAND2_X1 mult_103_U137 ( .A1(b_3__4_), .A2(s_1_3__8_), .ZN(mult_103_n137) );
  NAND2_X1 mult_103_U136 ( .A1(b_3__6_), .A2(s_1_3__6_), .ZN(mult_103_n136) );
  NAND2_X1 mult_103_U135 ( .A1(mult_103_n137), .A2(mult_103_n136), .ZN(
        mult_103_n33) );
  XNOR2_X1 mult_103_U134 ( .A(mult_103_n136), .B(mult_103_n137), .ZN(
        mult_103_n34) );
  NAND2_X1 mult_103_U133 ( .A1(s_1_3__7_), .A2(b_3__8_), .ZN(mult_103_n42) );
  NAND2_X1 mult_103_U132 ( .A1(s_1_3__6_), .A2(b_3__8_), .ZN(mult_103_n43) );
  NAND2_X1 mult_103_U131 ( .A1(s_1_3__5_), .A2(b_3__8_), .ZN(mult_103_n44) );
  NAND2_X1 mult_103_U130 ( .A1(s_1_3__4_), .A2(b_3__8_), .ZN(mult_103_n45) );
  NOR2_X1 mult_103_U129 ( .A1(mult_103_n123), .A2(mult_103_n128), .ZN(
        mult_103_n47) );
  NOR2_X1 mult_103_U128 ( .A1(mult_103_n123), .A2(mult_103_n129), .ZN(
        mult_103_n48) );
  NOR2_X1 mult_103_U127 ( .A1(mult_103_n123), .A2(mult_103_n131), .ZN(
        mult_103_n49) );
  NOR2_X1 mult_103_U126 ( .A1(mult_103_n123), .A2(mult_103_n132), .ZN(
        mult_103_n50) );
  NAND2_X1 mult_103_U125 ( .A1(b_3__6_), .A2(mult_103_n119), .ZN(mult_103_n51)
         );
  NOR2_X1 mult_103_U124 ( .A1(mult_103_n128), .A2(mult_103_n125), .ZN(
        mult_103_n52) );
  NOR2_X1 mult_103_U123 ( .A1(mult_103_n131), .A2(mult_103_n125), .ZN(
        mult_103_n55) );
  NOR2_X1 mult_103_U122 ( .A1(mult_103_n132), .A2(mult_103_n125), .ZN(
        mult_103_n56) );
  NAND2_X1 mult_103_U121 ( .A1(b_3__5_), .A2(mult_103_n109), .ZN(mult_103_n57)
         );
  NOR2_X1 mult_103_U120 ( .A1(mult_103_n129), .A2(mult_103_n126), .ZN(
        mult_103_n59) );
  NOR2_X1 mult_103_U119 ( .A1(mult_103_n130), .A2(mult_103_n126), .ZN(
        mult_103_n60) );
  NOR2_X1 mult_103_U118 ( .A1(mult_103_n131), .A2(mult_103_n126), .ZN(
        mult_103_n61) );
  NOR2_X1 mult_103_U117 ( .A1(mult_103_n132), .A2(mult_103_n126), .ZN(
        mult_103_n62) );
  NAND2_X1 mult_103_U116 ( .A1(b_3__4_), .A2(s_1_3__9_), .ZN(mult_103_n63) );
  NOR2_X1 mult_103_U115 ( .A1(mult_103_n127), .A2(mult_103_n130), .ZN(
        mult_103_n66) );
  NOR2_X1 mult_103_U114 ( .A1(mult_103_n127), .A2(mult_103_n131), .ZN(
        mult_103_n67) );
  NOR2_X1 mult_103_U113 ( .A1(mult_103_n127), .A2(mult_103_n132), .ZN(p_3__0_)
         );
  XNOR2_X1 mult_103_U112 ( .A(mult_103_n2), .B(mult_103_n13), .ZN(
        mult_103_n135) );
  NAND2_X1 mult_103_U111 ( .A1(mult_103_n119), .A2(b_3__7_), .ZN(mult_103_n134) );
  INV_X1 mult_103_U110 ( .A(b_3__6_), .ZN(mult_103_n125) );
  INV_X1 mult_103_U109 ( .A(b_3__7_), .ZN(mult_103_n123) );
  INV_X1 mult_103_U108 ( .A(b_3__4_), .ZN(mult_103_n127) );
  INV_X1 mult_103_U107 ( .A(b_3__5_), .ZN(mult_103_n126) );
  NAND2_X1 mult_103_U106 ( .A1(b_3__8_), .A2(mult_103_n120), .ZN(mult_103_n122) );
  XNOR2_X1 mult_103_U105 ( .A(mult_103_n134), .B(mult_103_n122), .ZN(
        mult_103_n133) );
  XNOR2_X1 mult_103_U104 ( .A(mult_103_n135), .B(mult_103_n11), .ZN(
        mult_103_n121) );
  XNOR2_X1 mult_103_U103 ( .A(mult_103_n121), .B(mult_103_n133), .ZN(p_3__8_)
         );
  INV_X1 mult_103_U102 ( .A(s_1_3__6_), .ZN(mult_103_n130) );
  INV_X1 mult_103_U101 ( .A(s_1_3__8_), .ZN(mult_103_n128) );
  INV_X1 mult_103_U100 ( .A(s_1_3__5_), .ZN(mult_103_n131) );
  INV_X1 mult_103_U99 ( .A(s_1_3__7_), .ZN(mult_103_n129) );
  INV_X1 mult_103_U98 ( .A(s_1_3__4_), .ZN(mult_103_n132) );
  INV_X1 mult_103_U97 ( .A(mult_103_n28), .ZN(mult_103_n124) );
  INV_X1 mult_103_U96 ( .A(mult_103_n128), .ZN(mult_103_n120) );
  CLKBUF_X1 mult_103_U95 ( .A(mult_103_n109), .Z(mult_103_n119) );
  AND2_X1 mult_103_U94 ( .A1(b_3__4_), .A2(s_1_3__7_), .ZN(mult_103_n65) );
  NAND3_X1 mult_103_U93 ( .A1(mult_103_n116), .A2(mult_103_n117), .A3(
        mult_103_n118), .ZN(mult_103_n3) );
  NAND2_X1 mult_103_U92 ( .A1(mult_103_n16), .A2(mult_103_n21), .ZN(
        mult_103_n118) );
  NAND2_X1 mult_103_U91 ( .A1(mult_103_n4), .A2(mult_103_n21), .ZN(
        mult_103_n117) );
  NAND2_X1 mult_103_U90 ( .A1(mult_103_n4), .A2(mult_103_n16), .ZN(
        mult_103_n116) );
  XNOR2_X1 mult_103_U89 ( .A(mult_103_n16), .B(mult_103_n21), .ZN(
        mult_103_n115) );
  XNOR2_X1 mult_103_U88 ( .A(mult_103_n114), .B(mult_103_n115), .ZN(p_3__6_)
         );
  CLKBUF_X1 mult_103_U87 ( .A(mult_103_n4), .Z(mult_103_n114) );
  NAND3_X1 mult_103_U86 ( .A1(mult_103_n111), .A2(mult_103_n112), .A3(
        mult_103_n113), .ZN(mult_103_n2) );
  NAND2_X1 mult_103_U85 ( .A1(mult_103_n12), .A2(mult_103_n15), .ZN(
        mult_103_n113) );
  NAND2_X1 mult_103_U84 ( .A1(mult_103_n3), .A2(mult_103_n15), .ZN(
        mult_103_n112) );
  NAND2_X1 mult_103_U83 ( .A1(mult_103_n107), .A2(mult_103_n12), .ZN(
        mult_103_n111) );
  XOR2_X1 mult_103_U82 ( .A(mult_103_n108), .B(mult_103_n110), .Z(p_3__7_) );
  XOR2_X1 mult_103_U81 ( .A(mult_103_n12), .B(mult_103_n15), .Z(mult_103_n110)
         );
  CLKBUF_X1 mult_103_U80 ( .A(s_1_3__9_), .Z(mult_103_n109) );
  NAND3_X1 mult_103_U79 ( .A1(mult_103_n116), .A2(mult_103_n117), .A3(
        mult_103_n118), .ZN(mult_103_n108) );
  NAND3_X1 mult_103_U78 ( .A1(mult_103_n116), .A2(mult_103_n117), .A3(
        mult_103_n118), .ZN(mult_103_n107) );
  AND2_X1 mult_103_U77 ( .A1(s_1_3__8_), .A2(b_3__5_), .ZN(mult_103_n58) );
  NOR2_X2 mult_103_U76 ( .A1(mult_103_n129), .A2(mult_103_n125), .ZN(
        mult_103_n53) );
  NAND3_X1 mult_103_U75 ( .A1(mult_103_n104), .A2(mult_103_n105), .A3(
        mult_103_n106), .ZN(mult_103_n25) );
  NAND2_X1 mult_103_U74 ( .A1(mult_103_n58), .A2(mult_103_n53), .ZN(
        mult_103_n106) );
  NAND2_X1 mult_103_U73 ( .A1(mult_103_n63), .A2(mult_103_n53), .ZN(
        mult_103_n105) );
  NAND2_X1 mult_103_U72 ( .A1(mult_103_n63), .A2(mult_103_n58), .ZN(
        mult_103_n104) );
  XOR2_X1 mult_103_U71 ( .A(mult_103_n63), .B(mult_103_n103), .Z(mult_103_n26)
         );
  XOR2_X1 mult_103_U70 ( .A(mult_103_n58), .B(mult_103_n53), .Z(mult_103_n103)
         );
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
  FA_X1 mult_103_U18 ( .A(mult_103_n28), .B(mult_103_n44), .CI(mult_103_n33), 
        .CO(mult_103_n23), .S(mult_103_n24) );
  FA_X1 mult_103_U17 ( .A(mult_103_n24), .B(mult_103_n31), .CI(mult_103_n26), 
        .CO(mult_103_n21), .S(mult_103_n22) );
  FA_X1 mult_103_U16 ( .A(mult_103_n52), .B(mult_103_n124), .CI(mult_103_n48), 
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
  OAI211_X1 add_96_U51 ( .C1(x_ext_2__1_), .C2(x_ext_6__1_), .A(x_ext_2__0_), 
        .B(x_ext_6__0_), .ZN(add_96_n40) );
  OAI21_X1 add_96_U50 ( .B1(x_ext_2__2_), .B2(add_96_n35), .A(x_ext_6__2_), 
        .ZN(add_96_n39) );
  OAI21_X1 add_96_U49 ( .B1(add_96_n36), .B2(x_ext_2__3_), .A(x_ext_6__3_), 
        .ZN(add_96_n37) );
  INV_X1 add_96_U48 ( .A(add_96_n38), .ZN(add_96_n35) );
  INV_X1 add_96_U47 ( .A(add_96_n37), .ZN(add_96_n33) );
  INV_X1 add_96_U46 ( .A(x_ext_2__2_), .ZN(add_96_n34) );
  NAND2_X1 add_96_U45 ( .A1(add_96_n32), .A2(add_96_n39), .ZN(add_96_n36) );
  OR2_X1 add_96_U44 ( .A1(add_96_n38), .A2(add_96_n34), .ZN(add_96_n32) );
  AND2_X1 add_96_U43 ( .A1(add_96_n36), .A2(x_ext_2__3_), .ZN(add_96_n31) );
  NAND3_X1 add_96_U42 ( .A1(add_96_n28), .A2(add_96_n29), .A3(add_96_n30), 
        .ZN(add_96_carry[9]) );
  NAND2_X1 add_96_U41 ( .A1(x_ext_6__9_), .A2(x_ext_2__9_), .ZN(add_96_n30) );
  NAND2_X1 add_96_U40 ( .A1(add_96_carry[8]), .A2(x_ext_2__9_), .ZN(add_96_n29) );
  NAND2_X1 add_96_U39 ( .A1(add_96_carry[8]), .A2(x_ext_6__9_), .ZN(add_96_n28) );
  XOR2_X1 add_96_U38 ( .A(add_96_carry[8]), .B(add_96_n27), .Z(s_1_2__8_) );
  NAND3_X1 add_96_U37 ( .A1(add_96_n23), .A2(add_96_n24), .A3(add_96_n25), 
        .ZN(add_96_carry[8]) );
  NAND2_X1 add_96_U36 ( .A1(x_ext_2__7_), .A2(x_ext_6__7_), .ZN(add_96_n25) );
  NAND2_X1 add_96_U35 ( .A1(add_96_carry[7]), .A2(x_ext_6__7_), .ZN(add_96_n24) );
  NAND2_X1 add_96_U34 ( .A1(add_96_n3), .A2(x_ext_2__7_), .ZN(add_96_n23) );
  XOR2_X1 add_96_U33 ( .A(add_96_n4), .B(add_96_n22), .Z(s_1_2__7_) );
  XOR2_X1 add_96_U32 ( .A(x_ext_2__7_), .B(x_ext_6__7_), .Z(add_96_n22) );
  XNOR2_X1 add_96_U31 ( .A(x_ext_6__9_), .B(x_ext_2__9_), .ZN(add_96_n21) );
  OR2_X2 add_96_U30 ( .A1(add_96_n31), .A2(add_96_n33), .ZN(add_96_n26) );
  NAND3_X1 add_96_U29 ( .A1(add_96_n18), .A2(add_96_n19), .A3(add_96_n20), 
        .ZN(add_96_carry[5]) );
  NAND2_X1 add_96_U28 ( .A1(x_ext_2__4_), .A2(x_ext_6__4_), .ZN(add_96_n20) );
  NAND2_X1 add_96_U27 ( .A1(add_96_n26), .A2(x_ext_6__4_), .ZN(add_96_n19) );
  NAND2_X1 add_96_U26 ( .A1(add_96_n26), .A2(x_ext_2__4_), .ZN(add_96_n18) );
  XOR2_X1 add_96_U25 ( .A(add_96_n26), .B(add_96_n17), .Z(s_1_2__4_) );
  XOR2_X1 add_96_U24 ( .A(x_ext_2__4_), .B(x_ext_6__4_), .Z(add_96_n17) );
  NAND3_X1 add_96_U23 ( .A1(add_96_n14), .A2(add_96_n15), .A3(add_96_n16), 
        .ZN(add_96_carry[7]) );
  NAND2_X1 add_96_U22 ( .A1(x_ext_6__6_), .A2(add_96_carry[6]), .ZN(add_96_n16) );
  NAND2_X1 add_96_U21 ( .A1(x_ext_2__6_), .A2(add_96_n5), .ZN(add_96_n15) );
  NAND2_X1 add_96_U20 ( .A1(x_ext_2__6_), .A2(x_ext_6__6_), .ZN(add_96_n14) );
  XOR2_X1 add_96_U19 ( .A(add_96_n13), .B(add_96_n6), .Z(s_1_2__6_) );
  XOR2_X1 add_96_U18 ( .A(x_ext_2__6_), .B(x_ext_6__6_), .Z(add_96_n13) );
  NAND3_X1 add_96_U17 ( .A1(add_96_n12), .A2(add_96_n11), .A3(add_96_n10), 
        .ZN(add_96_carry[6]) );
  NAND2_X1 add_96_U16 ( .A1(x_ext_6__5_), .A2(add_96_n7), .ZN(add_96_n12) );
  NAND2_X1 add_96_U15 ( .A1(x_ext_2__5_), .A2(add_96_carry[5]), .ZN(add_96_n11) );
  XOR2_X1 add_96_U14 ( .A(add_96_n9), .B(add_96_n8), .Z(s_1_2__5_) );
  XOR2_X1 add_96_U13 ( .A(x_ext_2__5_), .B(x_ext_6__5_), .Z(add_96_n9) );
  NAND3_X1 add_96_U12 ( .A1(add_96_n18), .A2(add_96_n19), .A3(add_96_n20), 
        .ZN(add_96_n8) );
  NAND3_X1 add_96_U11 ( .A1(add_96_n18), .A2(add_96_n19), .A3(add_96_n20), 
        .ZN(add_96_n7) );
  NAND3_X1 add_96_U10 ( .A1(add_96_n12), .A2(add_96_n1), .A3(add_96_n10), .ZN(
        add_96_n6) );
  NAND3_X1 add_96_U9 ( .A1(add_96_n12), .A2(add_96_n11), .A3(add_96_n10), .ZN(
        add_96_n5) );
  NAND3_X1 add_96_U8 ( .A1(add_96_n14), .A2(add_96_n15), .A3(add_96_n16), .ZN(
        add_96_n4) );
  NAND3_X1 add_96_U7 ( .A1(add_96_n14), .A2(add_96_n15), .A3(add_96_n16), .ZN(
        add_96_n3) );
  NAND2_X1 add_96_U6 ( .A1(x_ext_2__1_), .A2(x_ext_6__1_), .ZN(add_96_n2) );
  AND2_X1 add_96_U5 ( .A1(add_96_n40), .A2(add_96_n2), .ZN(add_96_n38) );
  CLKBUF_X1 add_96_U4 ( .A(add_96_n11), .Z(add_96_n1) );
  XOR2_X1 add_96_U3 ( .A(x_ext_6__9_), .B(x_ext_2__9_), .Z(add_96_n27) );
  XNOR2_X1 add_96_U2 ( .A(add_96_carry[9]), .B(add_96_n21), .ZN(s_1_2__9_) );
  NAND2_X1 add_96_U1 ( .A1(x_ext_2__5_), .A2(x_ext_6__5_), .ZN(add_96_n10) );
  NAND2_X1 mult_102_U138 ( .A1(s_1_2__6_), .A2(b_2__7_), .ZN(mult_102_n28) );
  NAND2_X1 mult_102_U137 ( .A1(b_2__4_), .A2(s_1_2__8_), .ZN(mult_102_n135) );
  NAND2_X1 mult_102_U136 ( .A1(b_2__6_), .A2(s_1_2__6_), .ZN(mult_102_n134) );
  NAND2_X1 mult_102_U135 ( .A1(mult_102_n135), .A2(mult_102_n134), .ZN(
        mult_102_n33) );
  XNOR2_X1 mult_102_U134 ( .A(mult_102_n134), .B(mult_102_n135), .ZN(
        mult_102_n34) );
  NAND2_X1 mult_102_U133 ( .A1(s_1_2__7_), .A2(b_2__8_), .ZN(mult_102_n42) );
  NAND2_X1 mult_102_U132 ( .A1(s_1_2__6_), .A2(b_2__8_), .ZN(mult_102_n43) );
  NAND2_X1 mult_102_U131 ( .A1(s_1_2__5_), .A2(b_2__8_), .ZN(mult_102_n44) );
  NAND2_X1 mult_102_U130 ( .A1(s_1_2__4_), .A2(b_2__8_), .ZN(mult_102_n45) );
  NOR2_X1 mult_102_U129 ( .A1(mult_102_n121), .A2(mult_102_n126), .ZN(
        mult_102_n47) );
  NOR2_X1 mult_102_U128 ( .A1(mult_102_n121), .A2(mult_102_n127), .ZN(
        mult_102_n48) );
  NOR2_X1 mult_102_U127 ( .A1(mult_102_n121), .A2(mult_102_n129), .ZN(
        mult_102_n49) );
  NOR2_X1 mult_102_U126 ( .A1(mult_102_n121), .A2(mult_102_n130), .ZN(
        mult_102_n50) );
  NAND2_X1 mult_102_U125 ( .A1(b_2__6_), .A2(s_1_2__9_), .ZN(mult_102_n51) );
  NOR2_X1 mult_102_U124 ( .A1(mult_102_n126), .A2(mult_102_n123), .ZN(
        mult_102_n52) );
  NOR2_X1 mult_102_U123 ( .A1(mult_102_n127), .A2(mult_102_n123), .ZN(
        mult_102_n53) );
  NOR2_X1 mult_102_U122 ( .A1(mult_102_n129), .A2(mult_102_n123), .ZN(
        mult_102_n55) );
  NOR2_X1 mult_102_U121 ( .A1(mult_102_n130), .A2(mult_102_n123), .ZN(
        mult_102_n56) );
  NAND2_X1 mult_102_U120 ( .A1(b_2__5_), .A2(s_1_2__9_), .ZN(mult_102_n57) );
  NOR2_X1 mult_102_U119 ( .A1(mult_102_n127), .A2(mult_102_n124), .ZN(
        mult_102_n59) );
  NOR2_X1 mult_102_U118 ( .A1(mult_102_n128), .A2(mult_102_n124), .ZN(
        mult_102_n60) );
  NOR2_X1 mult_102_U117 ( .A1(mult_102_n129), .A2(mult_102_n124), .ZN(
        mult_102_n61) );
  NOR2_X1 mult_102_U116 ( .A1(mult_102_n130), .A2(mult_102_n124), .ZN(
        mult_102_n62) );
  NAND2_X1 mult_102_U115 ( .A1(b_2__4_), .A2(s_1_2__9_), .ZN(mult_102_n63) );
  NOR2_X1 mult_102_U114 ( .A1(mult_102_n125), .A2(mult_102_n127), .ZN(
        mult_102_n65) );
  NOR2_X1 mult_102_U113 ( .A1(mult_102_n125), .A2(mult_102_n129), .ZN(
        mult_102_n67) );
  NOR2_X1 mult_102_U112 ( .A1(mult_102_n125), .A2(mult_102_n130), .ZN(p_2__0_)
         );
  XNOR2_X1 mult_102_U111 ( .A(mult_102_n2), .B(mult_102_n13), .ZN(
        mult_102_n133) );
  NAND2_X1 mult_102_U110 ( .A1(s_1_2__9_), .A2(b_2__7_), .ZN(mult_102_n131) );
  AND2_X1 mult_102_U109 ( .A1(s_1_2__8_), .A2(b_2__8_), .ZN(mult_102_n132) );
  INV_X1 mult_102_U108 ( .A(b_2__6_), .ZN(mult_102_n123) );
  INV_X1 mult_102_U107 ( .A(b_2__7_), .ZN(mult_102_n121) );
  INV_X1 mult_102_U106 ( .A(b_2__4_), .ZN(mult_102_n125) );
  INV_X1 mult_102_U105 ( .A(b_2__5_), .ZN(mult_102_n124) );
  INV_X1 mult_102_U104 ( .A(s_1_2__6_), .ZN(mult_102_n128) );
  INV_X1 mult_102_U103 ( .A(s_1_2__8_), .ZN(mult_102_n126) );
  INV_X1 mult_102_U102 ( .A(s_1_2__5_), .ZN(mult_102_n129) );
  INV_X1 mult_102_U101 ( .A(s_1_2__7_), .ZN(mult_102_n127) );
  INV_X1 mult_102_U100 ( .A(s_1_2__4_), .ZN(mult_102_n130) );
  INV_X1 mult_102_U99 ( .A(mult_102_n28), .ZN(mult_102_n122) );
  XNOR2_X1 mult_102_U98 ( .A(mult_102_n133), .B(mult_102_n11), .ZN(
        mult_102_n120) );
  XNOR2_X1 mult_102_U97 ( .A(mult_102_n120), .B(mult_102_n103), .ZN(p_2__8_)
         );
  NAND3_X1 mult_102_U96 ( .A1(mult_102_n117), .A2(mult_102_n118), .A3(
        mult_102_n119), .ZN(mult_102_n15) );
  NAND2_X1 mult_102_U95 ( .A1(mult_102_n20), .A2(mult_102_n23), .ZN(
        mult_102_n119) );
  NAND2_X1 mult_102_U94 ( .A1(mult_102_n18), .A2(mult_102_n23), .ZN(
        mult_102_n118) );
  NAND2_X1 mult_102_U93 ( .A1(mult_102_n18), .A2(mult_102_n20), .ZN(
        mult_102_n117) );
  XOR2_X1 mult_102_U92 ( .A(mult_102_n18), .B(mult_102_n116), .Z(mult_102_n16)
         );
  XOR2_X1 mult_102_U91 ( .A(mult_102_n20), .B(mult_102_n23), .Z(mult_102_n116)
         );
  AND2_X1 mult_102_U90 ( .A1(b_2__4_), .A2(s_1_2__6_), .ZN(mult_102_n66) );
  NAND3_X1 mult_102_U89 ( .A1(mult_102_n113), .A2(mult_102_n114), .A3(
        mult_102_n115), .ZN(mult_102_n4) );
  NAND2_X1 mult_102_U88 ( .A1(mult_102_n5), .A2(mult_102_n29), .ZN(
        mult_102_n115) );
  NAND2_X1 mult_102_U87 ( .A1(mult_102_n22), .A2(mult_102_n29), .ZN(
        mult_102_n114) );
  NAND2_X1 mult_102_U86 ( .A1(mult_102_n22), .A2(mult_102_n5), .ZN(
        mult_102_n113) );
  XOR2_X1 mult_102_U85 ( .A(mult_102_n22), .B(mult_102_n112), .Z(p_2__5_) );
  XOR2_X1 mult_102_U84 ( .A(mult_102_n5), .B(mult_102_n29), .Z(mult_102_n112)
         );
  NAND3_X1 mult_102_U83 ( .A1(mult_102_n109), .A2(mult_102_n110), .A3(
        mult_102_n111), .ZN(mult_102_n25) );
  NAND2_X1 mult_102_U82 ( .A1(mult_102_n58), .A2(mult_102_n53), .ZN(
        mult_102_n111) );
  NAND2_X1 mult_102_U81 ( .A1(mult_102_n63), .A2(mult_102_n53), .ZN(
        mult_102_n110) );
  NAND2_X1 mult_102_U80 ( .A1(mult_102_n63), .A2(mult_102_n58), .ZN(
        mult_102_n109) );
  XOR2_X1 mult_102_U79 ( .A(mult_102_n63), .B(mult_102_n108), .Z(mult_102_n26)
         );
  XOR2_X1 mult_102_U78 ( .A(mult_102_n58), .B(mult_102_n53), .Z(mult_102_n108)
         );
  NAND3_X1 mult_102_U77 ( .A1(mult_102_n105), .A2(mult_102_n106), .A3(
        mult_102_n107), .ZN(mult_102_n3) );
  NAND2_X1 mult_102_U76 ( .A1(mult_102_n16), .A2(mult_102_n21), .ZN(
        mult_102_n107) );
  NAND2_X1 mult_102_U75 ( .A1(mult_102_n4), .A2(mult_102_n21), .ZN(
        mult_102_n106) );
  NAND2_X1 mult_102_U74 ( .A1(mult_102_n4), .A2(mult_102_n16), .ZN(
        mult_102_n105) );
  XOR2_X1 mult_102_U73 ( .A(mult_102_n4), .B(mult_102_n104), .Z(p_2__6_) );
  XOR2_X1 mult_102_U72 ( .A(mult_102_n16), .B(mult_102_n21), .Z(mult_102_n104)
         );
  XOR2_X1 mult_102_U71 ( .A(mult_102_n131), .B(mult_102_n132), .Z(
        mult_102_n103) );
  AND2_X1 mult_102_U70 ( .A1(s_1_2__8_), .A2(b_2__5_), .ZN(mult_102_n58) );
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
  FA_X1 mult_102_U18 ( .A(mult_102_n28), .B(mult_102_n44), .CI(mult_102_n33), 
        .CO(mult_102_n23), .S(mult_102_n24) );
  FA_X1 mult_102_U17 ( .A(mult_102_n26), .B(mult_102_n31), .CI(mult_102_n24), 
        .CO(mult_102_n21), .S(mult_102_n22) );
  FA_X1 mult_102_U16 ( .A(mult_102_n52), .B(mult_102_n122), .CI(mult_102_n48), 
        .CO(mult_102_n19), .S(mult_102_n20) );
  FA_X1 mult_102_U15 ( .A(mult_102_n43), .B(mult_102_n57), .CI(mult_102_n25), 
        .CO(mult_102_n17), .S(mult_102_n18) );
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
  FA_X1 mult_102_U6 ( .A(mult_102_n6), .B(mult_102_n32), .CI(mult_102_n30), 
        .CO(mult_102_n5), .S(p_2__4_) );
  FA_X1 mult_102_U3 ( .A(mult_102_n12), .B(mult_102_n15), .CI(mult_102_n3), 
        .CO(mult_102_n2), .S(p_2__7_) );
  OAI211_X1 add_95_U50 ( .C1(x_ext_1__1_), .C2(x_ext_7__1_), .A(x_ext_1__0_), 
        .B(x_ext_7__0_), .ZN(add_95_n39) );
  OAI21_X1 add_95_U49 ( .B1(x_ext_1__2_), .B2(add_95_n23), .A(x_ext_7__2_), 
        .ZN(add_95_n38) );
  OAI21_X1 add_95_U48 ( .B1(x_ext_1__3_), .B2(add_95_n35), .A(x_ext_7__3_), 
        .ZN(add_95_n36) );
  AOI21_X1 add_95_U47 ( .B1(add_95_n35), .B2(x_ext_1__3_), .A(add_95_n31), 
        .ZN(add_95_n34) );
  INV_X1 add_95_U46 ( .A(add_95_n36), .ZN(add_95_n31) );
  INV_X1 add_95_U45 ( .A(add_95_n39), .ZN(add_95_n33) );
  INV_X1 add_95_U44 ( .A(add_95_n34), .ZN(add_95_n30) );
  INV_X1 add_95_U43 ( .A(x_ext_1__2_), .ZN(add_95_n32) );
  NOR2_X1 add_95_U42 ( .A1(add_95_n29), .A2(add_95_n33), .ZN(add_95_n37) );
  AND2_X1 add_95_U41 ( .A1(x_ext_1__1_), .A2(x_ext_7__1_), .ZN(add_95_n29) );
  NAND2_X1 add_95_U40 ( .A1(add_95_n38), .A2(add_95_n28), .ZN(add_95_n35) );
  OR2_X1 add_95_U39 ( .A1(add_95_n37), .A2(add_95_n32), .ZN(add_95_n28) );
  XOR2_X1 add_95_U38 ( .A(add_95_carry[9]), .B(add_95_n27), .Z(s_1_1__9_) );
  XOR2_X1 add_95_U37 ( .A(x_ext_7__9_), .B(x_ext_1__9_), .Z(add_95_n27) );
  NAND3_X1 add_95_U36 ( .A1(add_95_n24), .A2(add_95_n25), .A3(add_95_n26), 
        .ZN(add_95_carry[9]) );
  NAND2_X1 add_95_U35 ( .A1(x_ext_7__9_), .A2(x_ext_1__9_), .ZN(add_95_n26) );
  NAND2_X1 add_95_U34 ( .A1(add_95_carry[8]), .A2(x_ext_1__9_), .ZN(add_95_n25) );
  NAND2_X1 add_95_U33 ( .A1(add_95_carry[8]), .A2(x_ext_7__9_), .ZN(add_95_n24) );
  OR2_X1 add_95_U32 ( .A1(add_95_n29), .A2(add_95_n33), .ZN(add_95_n23) );
  NAND3_X1 add_95_U31 ( .A1(add_95_n20), .A2(add_95_n21), .A3(add_95_n22), 
        .ZN(add_95_carry[7]) );
  NAND2_X1 add_95_U30 ( .A1(x_ext_1__6_), .A2(x_ext_7__6_), .ZN(add_95_n22) );
  NAND2_X1 add_95_U29 ( .A1(add_95_carry[6]), .A2(x_ext_7__6_), .ZN(add_95_n21) );
  NAND2_X1 add_95_U28 ( .A1(add_95_n13), .A2(x_ext_1__6_), .ZN(add_95_n20) );
  XOR2_X1 add_95_U27 ( .A(add_95_n14), .B(add_95_n19), .Z(s_1_1__6_) );
  XOR2_X1 add_95_U26 ( .A(x_ext_1__6_), .B(x_ext_7__6_), .Z(add_95_n19) );
  NAND3_X1 add_95_U25 ( .A1(add_95_n16), .A2(add_95_n17), .A3(add_95_n18), 
        .ZN(add_95_carry[6]) );
  NAND2_X1 add_95_U24 ( .A1(x_ext_1__5_), .A2(x_ext_7__5_), .ZN(add_95_n18) );
  NAND2_X1 add_95_U23 ( .A1(add_95_carry[5]), .A2(x_ext_7__5_), .ZN(add_95_n17) );
  NAND2_X1 add_95_U22 ( .A1(add_95_carry[5]), .A2(x_ext_1__5_), .ZN(add_95_n16) );
  XOR2_X1 add_95_U21 ( .A(add_95_carry[5]), .B(add_95_n15), .Z(s_1_1__5_) );
  XOR2_X1 add_95_U20 ( .A(x_ext_1__5_), .B(x_ext_7__5_), .Z(add_95_n15) );
  NAND3_X1 add_95_U19 ( .A1(add_95_n16), .A2(add_95_n17), .A3(add_95_n18), 
        .ZN(add_95_n14) );
  NAND3_X1 add_95_U18 ( .A1(add_95_n16), .A2(add_95_n17), .A3(add_95_n18), 
        .ZN(add_95_n13) );
  NAND3_X1 add_95_U17 ( .A1(add_95_n10), .A2(add_95_n11), .A3(add_95_n12), 
        .ZN(add_95_carry[5]) );
  NAND2_X1 add_95_U16 ( .A1(x_ext_1__4_), .A2(x_ext_7__4_), .ZN(add_95_n12) );
  NAND2_X1 add_95_U15 ( .A1(add_95_n30), .A2(x_ext_7__4_), .ZN(add_95_n11) );
  NAND2_X1 add_95_U14 ( .A1(add_95_n30), .A2(x_ext_1__4_), .ZN(add_95_n10) );
  XOR2_X1 add_95_U13 ( .A(add_95_n2), .B(add_95_n9), .Z(s_1_1__4_) );
  XOR2_X1 add_95_U12 ( .A(x_ext_1__4_), .B(x_ext_7__4_), .Z(add_95_n9) );
  XNOR2_X1 add_95_U11 ( .A(add_95_carry[8]), .B(add_95_n1), .ZN(s_1_1__8_) );
  NAND2_X1 add_95_U10 ( .A1(x_ext_1__7_), .A2(x_ext_7__7_), .ZN(add_95_n8) );
  NAND2_X1 add_95_U9 ( .A1(add_95_carry[7]), .A2(x_ext_7__7_), .ZN(add_95_n7)
         );
  NAND2_X1 add_95_U8 ( .A1(add_95_n4), .A2(x_ext_1__7_), .ZN(add_95_n6) );
  XOR2_X1 add_95_U7 ( .A(add_95_n3), .B(add_95_n5), .Z(s_1_1__7_) );
  XOR2_X1 add_95_U6 ( .A(x_ext_1__7_), .B(x_ext_7__7_), .Z(add_95_n5) );
  NAND3_X1 add_95_U5 ( .A1(add_95_n20), .A2(add_95_n21), .A3(add_95_n22), .ZN(
        add_95_n4) );
  CLKBUF_X1 add_95_U4 ( .A(add_95_n4), .Z(add_95_n3) );
  CLKBUF_X1 add_95_U3 ( .A(add_95_n30), .Z(add_95_n2) );
  XNOR2_X1 add_95_U2 ( .A(x_ext_7__9_), .B(x_ext_1__9_), .ZN(add_95_n1) );
  NAND3_X1 add_95_U1 ( .A1(add_95_n6), .A2(add_95_n7), .A3(add_95_n8), .ZN(
        add_95_carry[8]) );
  OAI211_X1 add_94_U44 ( .C1(x_ext_0__1_), .C2(x_ext_8__1_), .A(x_ext_0__0_), 
        .B(x_ext_8__0_), .ZN(add_94_n34) );
  OAI21_X1 add_94_U43 ( .B1(add_94_n9), .B2(x_ext_0__2_), .A(x_ext_8__2_), 
        .ZN(add_94_n33) );
  OAI21_X1 add_94_U42 ( .B1(add_94_n29), .B2(add_94_n30), .A(add_94_n33), .ZN(
        add_94_n31) );
  OAI21_X1 add_94_U41 ( .B1(add_94_n31), .B2(x_ext_0__3_), .A(x_ext_8__3_), 
        .ZN(add_94_n32) );
  INV_X1 add_94_U40 ( .A(add_94_n9), .ZN(add_94_n29) );
  INV_X1 add_94_U39 ( .A(x_ext_0__2_), .ZN(add_94_n30) );
  NAND3_X1 add_94_U38 ( .A1(add_94_n26), .A2(add_94_n27), .A3(add_94_n28), 
        .ZN(add_94_carry[9]) );
  NAND2_X1 add_94_U37 ( .A1(x_ext_0__9_), .A2(x_ext_8__9_), .ZN(add_94_n28) );
  NAND2_X1 add_94_U36 ( .A1(add_94_n20), .A2(x_ext_8__9_), .ZN(add_94_n27) );
  NAND2_X1 add_94_U35 ( .A1(add_94_n20), .A2(x_ext_0__9_), .ZN(add_94_n26) );
  NAND2_X1 add_94_U34 ( .A1(x_ext_0__1_), .A2(x_ext_8__1_), .ZN(add_94_n25) );
  XNOR2_X1 add_94_U33 ( .A(add_94_carry[8]), .B(add_94_n1), .ZN(s_1_0__8_) );
  NAND3_X1 add_94_U32 ( .A1(add_94_n23), .A2(add_94_n22), .A3(add_94_n24), 
        .ZN(add_94_carry[8]) );
  NAND2_X1 add_94_U31 ( .A1(x_ext_0__7_), .A2(x_ext_8__7_), .ZN(add_94_n24) );
  NAND2_X1 add_94_U30 ( .A1(add_94_n15), .A2(x_ext_8__7_), .ZN(add_94_n23) );
  NAND2_X1 add_94_U29 ( .A1(add_94_n15), .A2(x_ext_0__7_), .ZN(add_94_n22) );
  XOR2_X1 add_94_U28 ( .A(x_ext_0__7_), .B(x_ext_8__7_), .Z(add_94_n21) );
  XNOR2_X1 add_94_U27 ( .A(add_94_carry[9]), .B(add_94_n1), .ZN(s_1_0__9_) );
  NAND3_X1 add_94_U26 ( .A1(add_94_n22), .A2(add_94_n23), .A3(add_94_n24), 
        .ZN(add_94_n20) );
  NAND2_X1 add_94_U25 ( .A1(x_ext_0__6_), .A2(x_ext_8__6_), .ZN(add_94_n19) );
  NAND2_X1 add_94_U24 ( .A1(add_94_carry[6]), .A2(x_ext_8__6_), .ZN(add_94_n18) );
  NAND2_X1 add_94_U23 ( .A1(add_94_n8), .A2(x_ext_0__6_), .ZN(add_94_n17) );
  XOR2_X1 add_94_U22 ( .A(add_94_n8), .B(add_94_n16), .Z(s_1_0__6_) );
  XOR2_X1 add_94_U21 ( .A(x_ext_0__6_), .B(x_ext_8__6_), .Z(add_94_n16) );
  NAND3_X1 add_94_U20 ( .A1(add_94_n17), .A2(add_94_n18), .A3(add_94_n19), 
        .ZN(add_94_n15) );
  NAND3_X1 add_94_U19 ( .A1(add_94_n12), .A2(add_94_n13), .A3(add_94_n14), 
        .ZN(add_94_carry[6]) );
  NAND2_X1 add_94_U18 ( .A1(x_ext_0__5_), .A2(x_ext_8__5_), .ZN(add_94_n14) );
  NAND2_X1 add_94_U17 ( .A1(add_94_carry[5]), .A2(x_ext_8__5_), .ZN(add_94_n13) );
  NAND2_X1 add_94_U16 ( .A1(add_94_carry[5]), .A2(x_ext_0__5_), .ZN(add_94_n12) );
  XOR2_X1 add_94_U15 ( .A(add_94_carry[5]), .B(add_94_n11), .Z(s_1_0__5_) );
  XOR2_X1 add_94_U14 ( .A(x_ext_0__5_), .B(x_ext_8__5_), .Z(add_94_n11) );
  NAND2_X1 add_94_U13 ( .A1(add_94_n34), .A2(add_94_n25), .ZN(add_94_n9) );
  NAND3_X1 add_94_U12 ( .A1(add_94_n12), .A2(add_94_n13), .A3(add_94_n14), 
        .ZN(add_94_n8) );
  AND3_X1 add_94_U11 ( .A1(add_94_n17), .A2(add_94_n18), .A3(add_94_n19), .ZN(
        add_94_n7) );
  XNOR2_X1 add_94_U10 ( .A(add_94_n7), .B(add_94_n21), .ZN(s_1_0__7_) );
  NAND3_X1 add_94_U9 ( .A1(add_94_n4), .A2(add_94_n5), .A3(add_94_n6), .ZN(
        add_94_carry[5]) );
  NAND2_X1 add_94_U8 ( .A1(x_ext_0__4_), .A2(x_ext_8__4_), .ZN(add_94_n6) );
  NAND2_X1 add_94_U7 ( .A1(add_94_n10), .A2(x_ext_8__4_), .ZN(add_94_n5) );
  NAND2_X1 add_94_U6 ( .A1(add_94_n10), .A2(x_ext_0__4_), .ZN(add_94_n4) );
  XOR2_X1 add_94_U5 ( .A(add_94_n10), .B(add_94_n3), .Z(s_1_0__4_) );
  XOR2_X1 add_94_U4 ( .A(x_ext_0__4_), .B(x_ext_8__4_), .Z(add_94_n3) );
  NAND2_X1 add_94_U3 ( .A1(add_94_n31), .A2(x_ext_0__3_), .ZN(add_94_n2) );
  NAND2_X1 add_94_U2 ( .A1(add_94_n32), .A2(add_94_n2), .ZN(add_94_n10) );
  XNOR2_X1 add_94_U1 ( .A(x_ext_0__9_), .B(x_ext_8__9_), .ZN(add_94_n1) );
  NAND2_X1 mult_100_U157 ( .A1(s_1_0__6_), .A2(b_0__7_), .ZN(mult_100_n28) );
  NAND2_X1 mult_100_U156 ( .A1(b_0__4_), .A2(s_1_0__8_), .ZN(mult_100_n151) );
  NAND2_X1 mult_100_U155 ( .A1(b_0__6_), .A2(s_1_0__6_), .ZN(mult_100_n150) );
  NAND2_X1 mult_100_U154 ( .A1(mult_100_n151), .A2(mult_100_n150), .ZN(
        mult_100_n33) );
  XNOR2_X1 mult_100_U153 ( .A(mult_100_n150), .B(mult_100_n151), .ZN(
        mult_100_n34) );
  NAND2_X1 mult_100_U152 ( .A1(mult_100_n105), .A2(b_0__8_), .ZN(mult_100_n42)
         );
  NAND2_X1 mult_100_U151 ( .A1(s_1_0__6_), .A2(b_0__8_), .ZN(mult_100_n43) );
  NAND2_X1 mult_100_U150 ( .A1(s_1_0__5_), .A2(b_0__8_), .ZN(mult_100_n44) );
  NAND2_X1 mult_100_U149 ( .A1(s_1_0__4_), .A2(b_0__8_), .ZN(mult_100_n45) );
  NOR2_X1 mult_100_U148 ( .A1(mult_100_n137), .A2(mult_100_n142), .ZN(
        mult_100_n47) );
  NOR2_X1 mult_100_U147 ( .A1(mult_100_n137), .A2(mult_100_n143), .ZN(
        mult_100_n48) );
  NOR2_X1 mult_100_U146 ( .A1(mult_100_n137), .A2(mult_100_n145), .ZN(
        mult_100_n49) );
  NOR2_X1 mult_100_U145 ( .A1(mult_100_n137), .A2(mult_100_n146), .ZN(
        mult_100_n50) );
  NAND2_X1 mult_100_U144 ( .A1(b_0__6_), .A2(mult_100_n107), .ZN(mult_100_n51)
         );
  NOR2_X1 mult_100_U143 ( .A1(mult_100_n142), .A2(mult_100_n139), .ZN(
        mult_100_n52) );
  NOR2_X1 mult_100_U142 ( .A1(mult_100_n143), .A2(mult_100_n139), .ZN(
        mult_100_n53) );
  NOR2_X1 mult_100_U141 ( .A1(mult_100_n145), .A2(mult_100_n139), .ZN(
        mult_100_n55) );
  NOR2_X1 mult_100_U140 ( .A1(mult_100_n146), .A2(mult_100_n139), .ZN(
        mult_100_n56) );
  NAND2_X1 mult_100_U139 ( .A1(b_0__5_), .A2(mult_100_n107), .ZN(mult_100_n57)
         );
  NOR2_X1 mult_100_U138 ( .A1(mult_100_n142), .A2(mult_100_n140), .ZN(
        mult_100_n58) );
  NOR2_X1 mult_100_U137 ( .A1(mult_100_n143), .A2(mult_100_n140), .ZN(
        mult_100_n59) );
  NOR2_X1 mult_100_U136 ( .A1(mult_100_n144), .A2(mult_100_n140), .ZN(
        mult_100_n60) );
  NOR2_X1 mult_100_U135 ( .A1(mult_100_n145), .A2(mult_100_n140), .ZN(
        mult_100_n61) );
  NOR2_X1 mult_100_U134 ( .A1(mult_100_n146), .A2(mult_100_n140), .ZN(
        mult_100_n62) );
  NAND2_X1 mult_100_U133 ( .A1(b_0__4_), .A2(s_1_0__9_), .ZN(mult_100_n63) );
  NOR2_X1 mult_100_U132 ( .A1(mult_100_n141), .A2(mult_100_n145), .ZN(
        mult_100_n67) );
  NOR2_X1 mult_100_U131 ( .A1(mult_100_n141), .A2(mult_100_n146), .ZN(p_0__0_)
         );
  XNOR2_X1 mult_100_U130 ( .A(mult_100_n2), .B(mult_100_n13), .ZN(
        mult_100_n149) );
  NAND2_X1 mult_100_U129 ( .A1(mult_100_n107), .A2(b_0__7_), .ZN(mult_100_n148) );
  NAND2_X1 mult_100_U128 ( .A1(mult_100_n24), .A2(mult_100_n31), .ZN(
        mult_100_n136) );
  NAND2_X1 mult_100_U127 ( .A1(mult_100_n104), .A2(mult_100_n31), .ZN(
        mult_100_n135) );
  NAND2_X1 mult_100_U126 ( .A1(mult_100_n104), .A2(mult_100_n24), .ZN(
        mult_100_n134) );
  NAND3_X1 mult_100_U125 ( .A1(mult_100_n131), .A2(mult_100_n132), .A3(
        mult_100_n133), .ZN(mult_100_n15) );
  NAND2_X1 mult_100_U124 ( .A1(mult_100_n20), .A2(mult_100_n23), .ZN(
        mult_100_n133) );
  NAND2_X1 mult_100_U123 ( .A1(mult_100_n18), .A2(mult_100_n23), .ZN(
        mult_100_n132) );
  NAND2_X1 mult_100_U122 ( .A1(mult_100_n18), .A2(mult_100_n20), .ZN(
        mult_100_n131) );
  XNOR2_X1 mult_100_U121 ( .A(mult_100_n24), .B(mult_100_n31), .ZN(
        mult_100_n130) );
  XNOR2_X1 mult_100_U120 ( .A(mult_100_n26), .B(mult_100_n130), .ZN(
        mult_100_n22) );
  NAND3_X1 mult_100_U119 ( .A1(mult_100_n127), .A2(mult_100_n128), .A3(
        mult_100_n129), .ZN(mult_100_n29) );
  NAND2_X1 mult_100_U118 ( .A1(mult_100_n111), .A2(mult_100_n37), .ZN(
        mult_100_n129) );
  NAND2_X1 mult_100_U117 ( .A1(mult_100_n34), .A2(mult_100_n37), .ZN(
        mult_100_n128) );
  NAND2_X1 mult_100_U116 ( .A1(mult_100_n34), .A2(mult_100_n111), .ZN(
        mult_100_n127) );
  XNOR2_X1 mult_100_U115 ( .A(mult_100_n20), .B(mult_100_n23), .ZN(
        mult_100_n126) );
  XNOR2_X1 mult_100_U114 ( .A(mult_100_n18), .B(mult_100_n126), .ZN(
        mult_100_n16) );
  INV_X1 mult_100_U113 ( .A(s_1_0__8_), .ZN(mult_100_n142) );
  XNOR2_X1 mult_100_U112 ( .A(mult_100_n35), .B(mult_100_n37), .ZN(
        mult_100_n125) );
  XNOR2_X1 mult_100_U111 ( .A(mult_100_n125), .B(mult_100_n34), .ZN(
        mult_100_n30) );
  NAND2_X1 mult_100_U110 ( .A1(mult_100_n4), .A2(mult_100_n21), .ZN(
        mult_100_n124) );
  NAND2_X1 mult_100_U109 ( .A1(mult_100_n16), .A2(mult_100_n21), .ZN(
        mult_100_n123) );
  NAND2_X1 mult_100_U108 ( .A1(mult_100_n4), .A2(mult_100_n116), .ZN(
        mult_100_n122) );
  NAND3_X1 mult_100_U107 ( .A1(mult_100_n120), .A2(mult_100_n119), .A3(
        mult_100_n121), .ZN(mult_100_n2) );
  NAND2_X1 mult_100_U106 ( .A1(mult_100_n12), .A2(mult_100_n15), .ZN(
        mult_100_n121) );
  NAND2_X1 mult_100_U105 ( .A1(mult_100_n117), .A2(mult_100_n15), .ZN(
        mult_100_n120) );
  NAND2_X1 mult_100_U104 ( .A1(mult_100_n106), .A2(mult_100_n12), .ZN(
        mult_100_n119) );
  XOR2_X1 mult_100_U103 ( .A(mult_100_n12), .B(mult_100_n15), .Z(mult_100_n118) );
  NAND3_X1 mult_100_U102 ( .A1(mult_100_n122), .A2(mult_100_n123), .A3(
        mult_100_n124), .ZN(mult_100_n117) );
  XNOR2_X1 mult_100_U101 ( .A(mult_100_n18), .B(mult_100_n126), .ZN(
        mult_100_n116) );
  INV_X1 mult_100_U100 ( .A(b_0__6_), .ZN(mult_100_n139) );
  INV_X1 mult_100_U99 ( .A(b_0__7_), .ZN(mult_100_n137) );
  INV_X1 mult_100_U98 ( .A(b_0__4_), .ZN(mult_100_n141) );
  INV_X1 mult_100_U97 ( .A(b_0__5_), .ZN(mult_100_n140) );
  NAND2_X1 mult_100_U96 ( .A1(b_0__8_), .A2(s_1_0__8_), .ZN(mult_100_n115) );
  XNOR2_X1 mult_100_U95 ( .A(mult_100_n148), .B(mult_100_n115), .ZN(
        mult_100_n147) );
  XNOR2_X1 mult_100_U94 ( .A(mult_100_n149), .B(mult_100_n11), .ZN(
        mult_100_n114) );
  XNOR2_X1 mult_100_U93 ( .A(mult_100_n114), .B(mult_100_n147), .ZN(p_0__8_)
         );
  INV_X1 mult_100_U92 ( .A(s_1_0__6_), .ZN(mult_100_n144) );
  INV_X1 mult_100_U91 ( .A(s_1_0__5_), .ZN(mult_100_n145) );
  INV_X1 mult_100_U90 ( .A(mult_100_n105), .ZN(mult_100_n143) );
  INV_X1 mult_100_U89 ( .A(s_1_0__4_), .ZN(mult_100_n146) );
  NAND3_X1 mult_100_U88 ( .A1(mult_100_n134), .A2(mult_100_n135), .A3(
        mult_100_n136), .ZN(mult_100_n21) );
  INV_X1 mult_100_U87 ( .A(mult_100_n28), .ZN(mult_100_n138) );
  AND3_X1 mult_100_U86 ( .A1(mult_100_n122), .A2(mult_100_n123), .A3(
        mult_100_n124), .ZN(mult_100_n113) );
  XNOR2_X1 mult_100_U85 ( .A(mult_100_n113), .B(mult_100_n118), .ZN(p_0__7_)
         );
  XNOR2_X1 mult_100_U84 ( .A(mult_100_n4), .B(mult_100_n21), .ZN(mult_100_n112) );
  XNOR2_X1 mult_100_U83 ( .A(mult_100_n16), .B(mult_100_n112), .ZN(p_0__6_) );
  AND2_X1 mult_100_U82 ( .A1(s_1_0__7_), .A2(b_0__4_), .ZN(mult_100_n65) );
  CLKBUF_X1 mult_100_U81 ( .A(mult_100_n35), .Z(mult_100_n111) );
  AND2_X1 mult_100_U80 ( .A1(b_0__4_), .A2(s_1_0__6_), .ZN(mult_100_n66) );
  NAND3_X1 mult_100_U79 ( .A1(mult_100_n108), .A2(mult_100_n109), .A3(
        mult_100_n110), .ZN(mult_100_n23) );
  NAND2_X1 mult_100_U78 ( .A1(mult_100_n28), .A2(mult_100_n44), .ZN(
        mult_100_n110) );
  NAND2_X1 mult_100_U77 ( .A1(mult_100_n33), .A2(mult_100_n44), .ZN(
        mult_100_n109) );
  NAND2_X1 mult_100_U76 ( .A1(mult_100_n33), .A2(mult_100_n28), .ZN(
        mult_100_n108) );
  CLKBUF_X1 mult_100_U75 ( .A(s_1_0__9_), .Z(mult_100_n107) );
  NAND3_X1 mult_100_U74 ( .A1(mult_100_n122), .A2(mult_100_n123), .A3(
        mult_100_n124), .ZN(mult_100_n106) );
  CLKBUF_X1 mult_100_U73 ( .A(s_1_0__7_), .Z(mult_100_n105) );
  CLKBUF_X1 mult_100_U72 ( .A(mult_100_n26), .Z(mult_100_n104) );
  XNOR2_X1 mult_100_U71 ( .A(mult_100_n28), .B(mult_100_n44), .ZN(
        mult_100_n103) );
  XNOR2_X1 mult_100_U70 ( .A(mult_100_n33), .B(mult_100_n103), .ZN(
        mult_100_n24) );
  HA_X1 mult_100_U27 ( .A(mult_100_n66), .B(mult_100_n61), .CO(mult_100_n39), 
        .S(mult_100_n40) );
  HA_X1 mult_100_U26 ( .A(mult_100_n50), .B(mult_100_n55), .CO(mult_100_n37), 
        .S(mult_100_n38) );
  FA_X1 mult_100_U25 ( .A(mult_100_n60), .B(mult_100_n65), .CI(mult_100_n39), 
        .CO(mult_100_n35), .S(mult_100_n36) );
  FA_X1 mult_100_U22 ( .A(mult_100_n49), .B(mult_100_n59), .CI(mult_100_n45), 
        .CO(mult_100_n31), .S(mult_100_n32) );
  FA_X1 mult_100_U19 ( .A(mult_100_n58), .B(mult_100_n53), .CI(mult_100_n63), 
        .CO(mult_100_n25), .S(mult_100_n26) );
  FA_X1 mult_100_U16 ( .A(mult_100_n52), .B(mult_100_n138), .CI(mult_100_n48), 
        .CO(mult_100_n19), .S(mult_100_n20) );
  FA_X1 mult_100_U15 ( .A(mult_100_n43), .B(mult_100_n57), .CI(mult_100_n25), 
        .CO(mult_100_n17), .S(mult_100_n18) );
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
  FA_X1 add_3_root_add_0_root_add_111_U1_8 ( .A(p_0__8_), .B(p_4__8_), .CI(
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
  NAND2_X1 mult_101_U141 ( .A1(s_1_1__6_), .A2(b_1__7_), .ZN(mult_101_n28) );
  NAND2_X1 mult_101_U140 ( .A1(s_1_1__8_), .A2(b_1__4_), .ZN(mult_101_n138) );
  NAND2_X1 mult_101_U139 ( .A1(b_1__6_), .A2(s_1_1__6_), .ZN(mult_101_n137) );
  NAND2_X1 mult_101_U138 ( .A1(mult_101_n138), .A2(mult_101_n137), .ZN(
        mult_101_n33) );
  XNOR2_X1 mult_101_U137 ( .A(mult_101_n137), .B(mult_101_n112), .ZN(
        mult_101_n34) );
  NAND2_X1 mult_101_U136 ( .A1(s_1_1__7_), .A2(b_1__8_), .ZN(mult_101_n42) );
  NAND2_X1 mult_101_U135 ( .A1(s_1_1__6_), .A2(b_1__8_), .ZN(mult_101_n43) );
  NAND2_X1 mult_101_U134 ( .A1(s_1_1__5_), .A2(b_1__8_), .ZN(mult_101_n44) );
  NAND2_X1 mult_101_U133 ( .A1(s_1_1__4_), .A2(b_1__8_), .ZN(mult_101_n45) );
  NOR2_X1 mult_101_U132 ( .A1(mult_101_n124), .A2(mult_101_n129), .ZN(
        mult_101_n47) );
  NOR2_X1 mult_101_U131 ( .A1(mult_101_n124), .A2(mult_101_n130), .ZN(
        mult_101_n48) );
  NOR2_X1 mult_101_U130 ( .A1(mult_101_n124), .A2(mult_101_n132), .ZN(
        mult_101_n49) );
  NOR2_X1 mult_101_U129 ( .A1(mult_101_n124), .A2(mult_101_n133), .ZN(
        mult_101_n50) );
  NAND2_X1 mult_101_U128 ( .A1(b_1__6_), .A2(mult_101_n121), .ZN(mult_101_n51)
         );
  NOR2_X1 mult_101_U127 ( .A1(mult_101_n129), .A2(mult_101_n126), .ZN(
        mult_101_n52) );
  NOR2_X1 mult_101_U126 ( .A1(mult_101_n130), .A2(mult_101_n126), .ZN(
        mult_101_n53) );
  NOR2_X1 mult_101_U125 ( .A1(mult_101_n132), .A2(mult_101_n126), .ZN(
        mult_101_n55) );
  NOR2_X1 mult_101_U124 ( .A1(mult_101_n133), .A2(mult_101_n126), .ZN(
        mult_101_n56) );
  NAND2_X1 mult_101_U123 ( .A1(b_1__5_), .A2(mult_101_n121), .ZN(mult_101_n57)
         );
  NOR2_X1 mult_101_U122 ( .A1(mult_101_n130), .A2(mult_101_n127), .ZN(
        mult_101_n59) );
  NOR2_X1 mult_101_U121 ( .A1(mult_101_n131), .A2(mult_101_n127), .ZN(
        mult_101_n60) );
  NOR2_X1 mult_101_U120 ( .A1(mult_101_n132), .A2(mult_101_n127), .ZN(
        mult_101_n61) );
  NOR2_X1 mult_101_U119 ( .A1(mult_101_n133), .A2(mult_101_n127), .ZN(
        mult_101_n62) );
  NAND2_X1 mult_101_U118 ( .A1(b_1__4_), .A2(s_1_1__9_), .ZN(mult_101_n63) );
  NOR2_X1 mult_101_U117 ( .A1(mult_101_n128), .A2(mult_101_n131), .ZN(
        mult_101_n66) );
  NOR2_X1 mult_101_U116 ( .A1(mult_101_n128), .A2(mult_101_n132), .ZN(
        mult_101_n67) );
  NOR2_X1 mult_101_U115 ( .A1(mult_101_n128), .A2(mult_101_n133), .ZN(p_1__0_)
         );
  XNOR2_X1 mult_101_U114 ( .A(mult_101_n2), .B(mult_101_n13), .ZN(
        mult_101_n136) );
  NAND2_X1 mult_101_U113 ( .A1(mult_101_n121), .A2(b_1__7_), .ZN(mult_101_n135) );
  INV_X1 mult_101_U112 ( .A(b_1__6_), .ZN(mult_101_n126) );
  INV_X1 mult_101_U111 ( .A(b_1__7_), .ZN(mult_101_n124) );
  INV_X1 mult_101_U110 ( .A(b_1__4_), .ZN(mult_101_n128) );
  INV_X1 mult_101_U109 ( .A(b_1__5_), .ZN(mult_101_n127) );
  NAND2_X1 mult_101_U108 ( .A1(b_1__8_), .A2(mult_101_n111), .ZN(mult_101_n123) );
  XNOR2_X1 mult_101_U107 ( .A(mult_101_n135), .B(mult_101_n123), .ZN(
        mult_101_n134) );
  XNOR2_X1 mult_101_U106 ( .A(mult_101_n136), .B(mult_101_n11), .ZN(
        mult_101_n122) );
  XNOR2_X1 mult_101_U105 ( .A(mult_101_n122), .B(mult_101_n134), .ZN(p_1__8_)
         );
  INV_X1 mult_101_U104 ( .A(s_1_1__6_), .ZN(mult_101_n131) );
  INV_X1 mult_101_U103 ( .A(mult_101_n111), .ZN(mult_101_n129) );
  INV_X1 mult_101_U102 ( .A(s_1_1__5_), .ZN(mult_101_n132) );
  INV_X1 mult_101_U101 ( .A(s_1_1__7_), .ZN(mult_101_n130) );
  INV_X1 mult_101_U100 ( .A(s_1_1__4_), .ZN(mult_101_n133) );
  INV_X1 mult_101_U99 ( .A(mult_101_n28), .ZN(mult_101_n125) );
  AND2_X1 mult_101_U98 ( .A1(s_1_1__8_), .A2(b_1__5_), .ZN(mult_101_n58) );
  CLKBUF_X1 mult_101_U97 ( .A(s_1_1__9_), .Z(mult_101_n121) );
  NAND3_X1 mult_101_U96 ( .A1(mult_101_n118), .A2(mult_101_n119), .A3(
        mult_101_n120), .ZN(mult_101_n21) );
  NAND2_X1 mult_101_U95 ( .A1(mult_101_n24), .A2(mult_101_n26), .ZN(
        mult_101_n120) );
  NAND2_X1 mult_101_U94 ( .A1(mult_101_n31), .A2(mult_101_n26), .ZN(
        mult_101_n119) );
  NAND2_X1 mult_101_U93 ( .A1(mult_101_n31), .A2(mult_101_n24), .ZN(
        mult_101_n118) );
  NAND3_X1 mult_101_U92 ( .A1(mult_101_n115), .A2(mult_101_n116), .A3(
        mult_101_n117), .ZN(mult_101_n25) );
  NAND2_X1 mult_101_U91 ( .A1(mult_101_n53), .A2(mult_101_n63), .ZN(
        mult_101_n117) );
  NAND2_X1 mult_101_U90 ( .A1(mult_101_n58), .A2(mult_101_n63), .ZN(
        mult_101_n116) );
  NAND2_X1 mult_101_U89 ( .A1(mult_101_n58), .A2(mult_101_n53), .ZN(
        mult_101_n115) );
  XOR2_X1 mult_101_U88 ( .A(mult_101_n114), .B(mult_101_n63), .Z(mult_101_n26)
         );
  XOR2_X1 mult_101_U87 ( .A(mult_101_n58), .B(mult_101_n53), .Z(mult_101_n114)
         );
  XNOR2_X1 mult_101_U86 ( .A(mult_101_n31), .B(mult_101_n24), .ZN(
        mult_101_n113) );
  XNOR2_X1 mult_101_U85 ( .A(mult_101_n113), .B(mult_101_n26), .ZN(
        mult_101_n22) );
  AND2_X1 mult_101_U84 ( .A1(b_1__4_), .A2(s_1_1__7_), .ZN(mult_101_n65) );
  NAND2_X1 mult_101_U83 ( .A1(b_1__4_), .A2(s_1_1__8_), .ZN(mult_101_n112) );
  CLKBUF_X1 mult_101_U82 ( .A(s_1_1__8_), .Z(mult_101_n111) );
  NAND3_X1 mult_101_U81 ( .A1(mult_101_n108), .A2(mult_101_n109), .A3(
        mult_101_n110), .ZN(mult_101_n15) );
  NAND2_X1 mult_101_U80 ( .A1(mult_101_n23), .A2(mult_101_n18), .ZN(
        mult_101_n110) );
  NAND2_X1 mult_101_U79 ( .A1(mult_101_n20), .A2(mult_101_n18), .ZN(
        mult_101_n109) );
  NAND2_X1 mult_101_U78 ( .A1(mult_101_n20), .A2(mult_101_n23), .ZN(
        mult_101_n108) );
  NAND3_X1 mult_101_U77 ( .A1(mult_101_n105), .A2(mult_101_n106), .A3(
        mult_101_n107), .ZN(mult_101_n17) );
  NAND2_X1 mult_101_U76 ( .A1(mult_101_n57), .A2(mult_101_n25), .ZN(
        mult_101_n107) );
  NAND2_X1 mult_101_U75 ( .A1(mult_101_n43), .A2(mult_101_n25), .ZN(
        mult_101_n106) );
  NAND2_X1 mult_101_U74 ( .A1(mult_101_n43), .A2(mult_101_n57), .ZN(
        mult_101_n105) );
  XOR2_X1 mult_101_U73 ( .A(mult_101_n104), .B(mult_101_n18), .Z(mult_101_n16)
         );
  XOR2_X1 mult_101_U72 ( .A(mult_101_n20), .B(mult_101_n23), .Z(mult_101_n104)
         );
  XOR2_X1 mult_101_U71 ( .A(mult_101_n103), .B(mult_101_n25), .Z(mult_101_n18)
         );
  XOR2_X1 mult_101_U70 ( .A(mult_101_n43), .B(mult_101_n57), .Z(mult_101_n103)
         );
  HA_X1 mult_101_U27 ( .A(mult_101_n61), .B(mult_101_n66), .CO(mult_101_n39), 
        .S(mult_101_n40) );
  HA_X1 mult_101_U26 ( .A(mult_101_n50), .B(mult_101_n55), .CO(mult_101_n37), 
        .S(mult_101_n38) );
  FA_X1 mult_101_U25 ( .A(mult_101_n60), .B(mult_101_n65), .CI(mult_101_n39), 
        .CO(mult_101_n35), .S(mult_101_n36) );
  FA_X1 mult_101_U22 ( .A(mult_101_n49), .B(mult_101_n59), .CI(mult_101_n45), 
        .CO(mult_101_n31), .S(mult_101_n32) );
  FA_X1 mult_101_U21 ( .A(mult_101_n37), .B(mult_101_n34), .CI(mult_101_n35), 
        .CO(mult_101_n29), .S(mult_101_n30) );
  FA_X1 mult_101_U18 ( .A(mult_101_n28), .B(mult_101_n44), .CI(mult_101_n33), 
        .CO(mult_101_n23), .S(mult_101_n24) );
  FA_X1 mult_101_U16 ( .A(mult_101_n52), .B(mult_101_n125), .CI(mult_101_n48), 
        .CO(mult_101_n19), .S(mult_101_n20) );
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
  FA_X1 mult_101_U6 ( .A(mult_101_n6), .B(mult_101_n32), .CI(mult_101_n30), 
        .CO(mult_101_n5), .S(p_1__4_) );
  FA_X1 mult_101_U5 ( .A(mult_101_n22), .B(mult_101_n29), .CI(mult_101_n5), 
        .CO(mult_101_n4), .S(p_1__5_) );
  FA_X1 mult_101_U4 ( .A(mult_101_n16), .B(mult_101_n21), .CI(mult_101_n4), 
        .CO(mult_101_n3), .S(p_1__6_) );
  FA_X1 mult_101_U3 ( .A(mult_101_n12), .B(mult_101_n15), .CI(mult_101_n3), 
        .CO(mult_101_n2), .S(p_1__7_) );
  XOR2_X1 add_2_root_add_0_root_add_111_U4 ( .A(p_1__0_), .B(p_3__0_), .Z(
        s_2_2__0_) );
  AND2_X1 add_2_root_add_0_root_add_111_U3 ( .A1(p_1__0_), .A2(p_3__0_), .ZN(
        add_2_root_add_0_root_add_111_n2) );
  XNOR2_X1 add_2_root_add_0_root_add_111_U2 ( .A(p_3__8_), .B(
        add_2_root_add_0_root_add_111_carry[8]), .ZN(
        add_2_root_add_0_root_add_111_n1) );
  XNOR2_X1 add_2_root_add_0_root_add_111_U1 ( .A(
        add_2_root_add_0_root_add_111_n1), .B(p_1__8_), .ZN(s_2_2__8_) );
  FA_X1 add_2_root_add_0_root_add_111_U1_1 ( .A(p_3__1_), .B(p_1__1_), .CI(
        add_2_root_add_0_root_add_111_n2), .CO(
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
  FA_X1 add_2_root_add_0_root_add_111_U1_7 ( .A(p_1__7_), .B(p_3__7_), .CI(
        add_2_root_add_0_root_add_111_carry[7]), .CO(
        add_2_root_add_0_root_add_111_carry[8]), .S(s_2_2__7_) );
  AND2_X1 add_0_root_add_0_root_add_111_U8 ( .A1(s_2_1__0_), .A2(s_2_2__0_), 
        .ZN(add_0_root_add_0_root_add_111_n6) );
  XOR2_X1 add_0_root_add_0_root_add_111_U7 ( .A(s_2_1__0_), .B(s_2_2__0_), .Z(
        s_2_3__0_) );
  NAND3_X1 add_0_root_add_0_root_add_111_U6 ( .A1(
        add_0_root_add_0_root_add_111_n2), .A2(
        add_0_root_add_0_root_add_111_n3), .A3(
        add_0_root_add_0_root_add_111_n4), .ZN(
        add_0_root_add_0_root_add_111_carry[8]) );
  NAND2_X1 add_0_root_add_0_root_add_111_U5 ( .A1(s_2_2__7_), .A2(s_2_1__7_), 
        .ZN(add_0_root_add_0_root_add_111_n4) );
  NAND2_X1 add_0_root_add_0_root_add_111_U4 ( .A1(
        add_0_root_add_0_root_add_111_carry[7]), .A2(s_2_1__7_), .ZN(
        add_0_root_add_0_root_add_111_n3) );
  NAND2_X1 add_0_root_add_0_root_add_111_U3 ( .A1(
        add_0_root_add_0_root_add_111_carry[7]), .A2(s_2_2__7_), .ZN(
        add_0_root_add_0_root_add_111_n2) );
  XOR2_X1 add_0_root_add_0_root_add_111_U2 ( .A(
        add_0_root_add_0_root_add_111_carry[7]), .B(
        add_0_root_add_0_root_add_111_n1), .Z(s_2_3__7_) );
  XOR2_X1 add_0_root_add_0_root_add_111_U1 ( .A(s_2_2__7_), .B(s_2_1__7_), .Z(
        add_0_root_add_0_root_add_111_n1) );
  FA_X1 add_0_root_add_0_root_add_111_U1_1 ( .A(s_2_2__1_), .B(s_2_1__1_), 
        .CI(add_0_root_add_0_root_add_111_n6), .CO(
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
  FA_X1 add_0_root_add_0_root_add_111_U1_8 ( .A(s_2_1__8_), .B(s_2_2__8_), 
        .CI(add_0_root_add_0_root_add_111_carry[8]), .S(s_2_3__8_) );
endmodule

