/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Sun Nov  8 23:05:49 2020
/////////////////////////////////////////////////////////////


module myfir_NB9 ( CLK, RST_n, VIN, DIN_3k, DIN_3k1, DIN_3k2, b0, b1, b2, b3, 
        b4, DOUT_3k, DOUT_3k1, DOUT_3k2, VOUT );
  input [8:0] DIN_3k;
  input [8:0] DIN_3k1;
  input [8:0] DIN_3k2;
  input [8:0] b0;
  input [8:0] b1;
  input [8:0] b2;
  input [8:0] b3;
  input [8:0] b4;
  output [8:0] DOUT_3k;
  output [8:0] DOUT_3k1;
  output [8:0] DOUT_3k2;
  input CLK, RST_n, VIN;
  output VOUT;
  wire   VIN_d1, VIN_d2, VIN_d3, VIN_d, b_4__8_, b_4__7_, b_4__6_, b_4__5_,
         b_4__4_, b_3__8_, b_3__7_, b_3__6_, b_3__5_, b_3__4_, b_2__8_,
         b_2__7_, b_2__6_, b_2__5_, b_2__4_, b_1__8_, b_1__7_, b_1__6_,
         b_1__5_, b_1__4_, b_0__8_, b_0__7_, b_0__6_, b_0__5_, b_0__4_,
         x3k_ext_2__9_, x3k_ext_2__7_, x3k_ext_2__6_, x3k_ext_2__5_,
         x3k_ext_2__4_, x3k_ext_2__3_, x3k_ext_2__2_, x3k_ext_2__1_,
         x3k_ext_2__0_, x3k_ext_1__9_, x3k_ext_1__7_, x3k_ext_1__6_,
         x3k_ext_1__5_, x3k_ext_1__4_, x3k_ext_1__3_, x3k_ext_1__2_,
         x3k_ext_1__1_, x3k_ext_1__0_, x3k_ext_0__9_, x3k_ext_0__7_,
         x3k_ext_0__6_, x3k_ext_0__5_, x3k_ext_0__4_, x3k_ext_0__3_,
         x3k_ext_0__2_, x3k_ext_0__1_, x3k_ext_0__0_, x3k1_ext_3__9_,
         x3k1_ext_3__7_, x3k1_ext_3__6_, x3k1_ext_3__5_, x3k1_ext_3__4_,
         x3k1_ext_3__3_, x3k1_ext_3__2_, x3k1_ext_3__1_, x3k1_ext_3__0_,
         x3k1_ext_2__9_, x3k1_ext_2__7_, x3k1_ext_2__6_, x3k1_ext_2__5_,
         x3k1_ext_2__4_, x3k1_ext_2__3_, x3k1_ext_2__2_, x3k1_ext_2__1_,
         x3k1_ext_2__0_, x3k1_ext_1__9_, x3k1_ext_1__7_, x3k1_ext_1__6_,
         x3k1_ext_1__5_, x3k1_ext_1__4_, x3k1_ext_1__3_, x3k1_ext_1__2_,
         x3k1_ext_1__1_, x3k1_ext_1__0_, x3k1_ext_0__9_, x3k1_ext_0__7_,
         x3k1_ext_0__6_, x3k1_ext_0__5_, x3k1_ext_0__4_, x3k1_ext_0__3_,
         x3k1_ext_0__2_, x3k1_ext_0__1_, x3k1_ext_0__0_, x3k2_ext_3__9_,
         x3k2_ext_3__7_, x3k2_ext_3__6_, x3k2_ext_3__5_, x3k2_ext_3__4_,
         x3k2_ext_3__3_, x3k2_ext_3__2_, x3k2_ext_3__1_, x3k2_ext_3__0_,
         x3k2_ext_2__9_, x3k2_ext_2__7_, x3k2_ext_2__6_, x3k2_ext_2__5_,
         x3k2_ext_2__4_, x3k2_ext_2__3_, x3k2_ext_2__2_, x3k2_ext_2__1_,
         x3k2_ext_2__0_, x3k2_ext_1__9_, x3k2_ext_1__7_, x3k2_ext_1__6_,
         x3k2_ext_1__5_, x3k2_ext_1__4_, x3k2_ext_1__3_, x3k2_ext_1__2_,
         x3k2_ext_1__1_, x3k2_ext_1__0_, x3k2_ext_0__9_, x3k2_ext_0__7_,
         x3k2_ext_0__6_, x3k2_ext_0__5_, x3k2_ext_0__4_, x3k2_ext_0__3_,
         x3k2_ext_0__2_, x3k2_ext_0__1_, x3k2_ext_0__0_, s_1_3__9_, s_1_3__8_,
         s_1_3__7_, s_1_3__6_, s_1_3__5_, s_1_3__4_, s_1_2__9_, s_1_2__8_,
         s_1_2__7_, s_1_2__6_, s_1_2__5_, s_1_2__4_, s_1_1__9_, s_1_1__8_,
         s_1_1__7_, s_1_1__6_, s_1_1__5_, s_1_1__4_, s_1_0__9_, s_1_0__8_,
         s_1_0__7_, s_1_0__6_, s_1_0__5_, s_1_0__4_, s_2_3__9_, s_2_3__8_,
         s_2_3__7_, s_2_3__6_, s_2_3__5_, s_2_3__4_, s_2_2__9_, s_2_2__8_,
         s_2_2__7_, s_2_2__6_, s_2_2__5_, s_2_2__4_, s_2_1__9_, s_2_1__8_,
         s_2_1__7_, s_2_1__6_, s_2_1__5_, s_2_1__4_, s_2_0__9_, s_2_0__8_,
         s_2_0__7_, s_2_0__6_, s_2_0__5_, s_2_0__4_, s_3_3__9_, s_3_3__8_,
         s_3_3__7_, s_3_3__6_, s_3_3__5_, s_3_3__4_, s_3_2__9_, s_3_2__8_,
         s_3_2__7_, s_3_2__6_, s_3_2__5_, s_3_2__4_, s_3_1__9_, s_3_1__8_,
         s_3_1__7_, s_3_1__6_, s_3_1__5_, s_3_1__4_, s_3_0__9_, s_3_0__8_,
         s_3_0__7_, s_3_0__6_, s_3_0__5_, s_3_0__4_, p_1_4__9_, p_1_4__8_,
         p_1_4__7_, p_1_4__6_, p_1_4__5_, p_1_4__4_, p_1_4__3_, p_1_4__2_,
         p_1_4__1_, p_1_4__0_, p_1_3__10_, p_1_3__9_, p_1_3__8_, p_1_3__7_,
         p_1_3__6_, p_1_3__5_, p_1_3__4_, p_1_3__3_, p_1_3__2_, p_1_3__1_,
         p_1_3__0_, p_1_2__10_, p_1_2__9_, p_1_2__8_, p_1_2__7_, p_1_2__6_,
         p_1_2__5_, p_1_2__4_, p_1_2__3_, p_1_2__2_, p_1_2__1_, p_1_2__0_,
         p_1_1__10_, p_1_1__9_, p_1_1__8_, p_1_1__7_, p_1_1__6_, p_1_1__5_,
         p_1_1__4_, p_1_1__3_, p_1_1__2_, p_1_1__1_, p_1_1__0_, p_1_0__10_,
         p_1_0__9_, p_1_0__8_, p_1_0__7_, p_1_0__6_, p_1_0__5_, p_1_0__4_,
         p_1_0__3_, p_1_0__2_, p_1_0__1_, p_1_0__0_, p_2_4__9_, p_2_4__8_,
         p_2_4__7_, p_2_4__6_, p_2_4__5_, p_2_4__4_, p_2_4__3_, p_2_4__2_,
         p_2_4__1_, p_2_4__0_, p_2_3__10_, p_2_3__9_, p_2_3__8_, p_2_3__7_,
         p_2_3__6_, p_2_3__5_, p_2_3__4_, p_2_3__3_, p_2_3__2_, p_2_3__1_,
         p_2_3__0_, p_2_2__10_, p_2_2__9_, p_2_2__8_, p_2_2__7_, p_2_2__6_,
         p_2_2__5_, p_2_2__4_, p_2_2__3_, p_2_2__2_, p_2_2__1_, p_2_2__0_,
         p_2_1__10_, p_2_1__9_, p_2_1__8_, p_2_1__7_, p_2_1__6_, p_2_1__5_,
         p_2_1__4_, p_2_1__3_, p_2_1__2_, p_2_1__1_, p_2_1__0_, p_2_0__10_,
         p_2_0__9_, p_2_0__8_, p_2_0__7_, p_2_0__6_, p_2_0__5_, p_2_0__4_,
         p_2_0__3_, p_2_0__2_, p_2_0__1_, p_2_0__0_, p_3_4__9_, p_3_4__8_,
         p_3_4__7_, p_3_4__6_, p_3_4__5_, p_3_4__4_, p_3_4__3_, p_3_4__2_,
         p_3_4__1_, p_3_4__0_, p_3_3__10_, p_3_3__9_, p_3_3__8_, p_3_3__7_,
         p_3_3__6_, p_3_3__5_, p_3_3__4_, p_3_3__3_, p_3_3__2_, p_3_3__1_,
         p_3_3__0_, p_3_2__10_, p_3_2__9_, p_3_2__8_, p_3_2__7_, p_3_2__6_,
         p_3_2__5_, p_3_2__4_, p_3_2__3_, p_3_2__2_, p_3_2__1_, p_3_2__0_,
         p_3_1__10_, p_3_1__9_, p_3_1__8_, p_3_1__7_, p_3_1__6_, p_3_1__5_,
         p_3_1__4_, p_3_1__3_, p_3_1__2_, p_3_1__1_, p_3_1__0_, p_3_0__10_,
         p_3_0__9_, p_3_0__8_, p_3_0__7_, p_3_0__6_, p_3_0__5_, p_3_0__4_,
         p_3_0__3_, p_3_0__2_, p_3_0__1_, p_3_0__0_, p_1p_4__10_, p_1p_4__9_,
         p_1p_4__8_, p_1p_4__7_, p_1p_4__6_, p_1p_4__5_, p_1p_4__4_,
         p_1p_4__3_, p_1p_4__2_, p_1p_4__1_, p_1p_4__0_, p_1p_3__10_,
         p_1p_3__9_, p_1p_3__8_, p_1p_3__7_, p_1p_3__6_, p_1p_3__5_,
         p_1p_3__4_, p_1p_3__3_, p_1p_3__2_, p_1p_3__1_, p_1p_3__0_,
         p_2p_4__10_, p_2p_4__9_, p_2p_4__8_, p_2p_4__7_, p_2p_4__6_,
         p_2p_4__5_, p_2p_4__4_, p_2p_4__3_, p_2p_4__2_, p_2p_4__1_,
         p_2p_4__0_, p_2p_3__10_, p_2p_3__9_, p_2p_3__8_, p_2p_3__7_,
         p_2p_3__6_, p_2p_3__5_, p_2p_3__4_, p_2p_3__3_, p_2p_3__2_,
         p_2p_3__1_, p_2p_3__0_, p_3p_4__10_, p_3p_4__9_, p_3p_4__8_,
         p_3p_4__7_, p_3p_4__6_, p_3p_4__5_, p_3p_4__4_, p_3p_4__3_,
         p_3p_4__2_, p_3p_4__1_, p_3p_4__0_, p_3p_3__10_, p_3p_3__9_,
         p_3p_3__8_, p_3p_3__7_, p_3p_3__6_, p_3p_3__5_, p_3p_3__4_,
         p_3p_3__3_, p_3p_3__2_, p_3p_3__1_, p_3p_3__0_, p_1s_4__8_,
         p_1s_4__7_, p_1s_4__6_, p_1s_4__5_, p_1s_4__4_, p_1s_4__3_,
         p_1s_4__2_, p_1s_4__1_, p_1s_4__0_, p_1s_3__8_, p_1s_3__7_,
         p_1s_3__6_, p_1s_3__5_, p_1s_3__4_, p_1s_3__3_, p_1s_3__2_,
         p_1s_3__1_, p_1s_3__0_, p_1s_2__10_, p_1s_2__8_, p_1s_2__7_,
         p_1s_2__6_, p_1s_2__5_, p_1s_2__4_, p_1s_2__3_, p_1s_2__2_,
         p_1s_2__1_, p_1s_2__0_, p_1s_1__10_, p_1s_1__8_, p_1s_1__7_,
         p_1s_1__6_, p_1s_1__5_, p_1s_1__4_, p_1s_1__3_, p_1s_1__2_,
         p_1s_1__1_, p_1s_1__0_, p_1s_0__10_, p_1s_0__8_, p_1s_0__7_,
         p_1s_0__6_, p_1s_0__5_, p_1s_0__4_, p_1s_0__3_, p_1s_0__2_,
         p_1s_0__1_, p_1s_0__0_, p_2s_4__8_, p_2s_4__7_, p_2s_4__6_,
         p_2s_4__5_, p_2s_4__4_, p_2s_4__3_, p_2s_4__2_, p_2s_4__1_,
         p_2s_4__0_, p_2s_3__8_, p_2s_3__7_, p_2s_3__6_, p_2s_3__5_,
         p_2s_3__4_, p_2s_3__3_, p_2s_3__2_, p_2s_3__1_, p_2s_3__0_,
         p_2s_2__10_, p_2s_2__8_, p_2s_2__7_, p_2s_2__6_, p_2s_2__5_,
         p_2s_2__4_, p_2s_2__3_, p_2s_2__2_, p_2s_2__1_, p_2s_2__0_,
         p_2s_1__10_, p_2s_1__8_, p_2s_1__7_, p_2s_1__6_, p_2s_1__5_,
         p_2s_1__4_, p_2s_1__3_, p_2s_1__2_, p_2s_1__1_, p_2s_1__0_,
         p_2s_0__10_, p_2s_0__8_, p_2s_0__7_, p_2s_0__6_, p_2s_0__5_,
         p_2s_0__4_, p_2s_0__3_, p_2s_0__2_, p_2s_0__1_, p_2s_0__0_,
         p_3s_4__8_, p_3s_4__7_, p_3s_4__6_, p_3s_4__5_, p_3s_4__4_,
         p_3s_4__3_, p_3s_4__2_, p_3s_4__1_, p_3s_4__0_, p_3s_3__8_,
         p_3s_3__7_, p_3s_3__6_, p_3s_3__5_, p_3s_3__4_, p_3s_3__3_,
         p_3s_3__2_, p_3s_3__1_, p_3s_3__0_, p_3s_2__10_, p_3s_2__8_,
         p_3s_2__7_, p_3s_2__6_, p_3s_2__5_, p_3s_2__4_, p_3s_2__3_,
         p_3s_2__2_, p_3s_2__1_, p_3s_2__0_, p_3s_1__10_, p_3s_1__8_,
         p_3s_1__7_, p_3s_1__6_, p_3s_1__5_, p_3s_1__4_, p_3s_1__3_,
         p_3s_1__2_, p_3s_1__1_, p_3s_1__0_, p_3s_0__10_, p_3s_0__8_,
         p_3s_0__7_, p_3s_0__6_, p_3s_0__5_, p_3s_0__4_, p_3s_0__3_,
         p_3s_0__2_, p_3s_0__1_, p_3s_0__0_, s_11_3__8_, s_11_3__7_,
         s_11_3__6_, s_11_3__5_, s_11_3__4_, s_11_3__3_, s_11_3__2_,
         s_11_3__1_, s_11_3__0_, s_11_1__9_, s_11_1__8_, s_11_1__7_,
         s_11_1__6_, s_11_1__5_, s_11_1__4_, s_11_1__3_, s_11_1__2_,
         s_11_1__1_, s_11_1__0_, s_21_3__8_, s_21_3__7_, s_21_3__6_,
         s_21_3__5_, s_21_3__4_, s_21_3__3_, s_21_3__2_, s_21_3__1_,
         s_21_3__0_, s_21_1__9_, s_21_1__8_, s_21_1__7_, s_21_1__6_,
         s_21_1__5_, s_21_1__4_, s_21_1__3_, s_21_1__2_, s_21_1__1_,
         s_21_1__0_, s_31_3__8_, s_31_3__7_, s_31_3__6_, s_31_3__5_,
         s_31_3__4_, s_31_3__3_, s_31_3__2_, s_31_3__1_, s_31_3__0_,
         s_31_1__9_, s_31_1__8_, s_31_1__7_, s_31_1__6_, s_31_1__5_,
         s_31_1__4_, s_31_1__3_, s_31_1__2_, s_31_1__1_, s_31_1__0_,
         s_21_2__8_, s_21_2__7_, s_21_2__6_, s_21_2__5_, s_21_2__4_,
         s_21_2__3_, s_21_2__2_, s_21_2__1_, s_21_2__0_, s_11_2__8_,
         s_11_2__7_, s_11_2__6_, s_11_2__5_, s_11_2__4_, s_11_2__3_,
         s_11_2__2_, s_11_2__1_, s_11_2__0_, s_31_2__8_, s_31_2__7_,
         s_31_2__6_, s_31_2__5_, s_31_2__4_, s_31_2__3_, s_31_2__2_,
         s_31_2__1_, s_31_2__0_, s_21_0__9_, s_21_0__8_, s_21_0__7_,
         s_21_0__6_, s_21_0__5_, s_21_0__4_, s_21_0__3_, s_21_0__2_,
         s_21_0__1_, s_21_0__0_, s_11_0__9_, s_11_0__8_, s_11_0__7_,
         s_11_0__6_, s_11_0__5_, s_11_0__4_, s_11_0__3_, s_11_0__2_,
         s_11_0__1_, s_11_0__0_, s_31_0__9_, s_31_0__8_, s_31_0__7_,
         s_31_0__6_, s_31_0__5_, s_31_0__4_, s_31_0__3_, s_31_0__2_,
         s_31_0__1_, s_31_0__0_, n25, n26, n27, n28, n29, n30, Reg_x3k_n10,
         Reg_x3k_n9, Reg_x3k_n8, Reg_x3k_n7, Reg_x3k_n6, Reg_x3k_n5,
         Reg_x3k_n4, Reg_x3k_n3, Reg_x3k_n2, Reg_x3k_n1, Reg_x3k_n21,
         Reg_x3k_n20, Reg_x3k_n19, Reg_x3k_n18, Reg_x3k_n17, Reg_x3k_n16,
         Reg_x3k_n15, Reg_x3k_n14, Reg_x3k_n13, Reg_x3k_n12, Reg_x3k_n11,
         Reg_x3k1_n32, Reg_x3k1_n31, Reg_x3k1_n30, Reg_x3k1_n29, Reg_x3k1_n28,
         Reg_x3k1_n27, Reg_x3k1_n26, Reg_x3k1_n25, Reg_x3k1_n24, Reg_x3k1_n23,
         Reg_x3k1_n22, Reg_x3k1_n10, Reg_x3k1_n9, Reg_x3k1_n8, Reg_x3k1_n7,
         Reg_x3k1_n6, Reg_x3k1_n5, Reg_x3k1_n4, Reg_x3k1_n3, Reg_x3k1_n2,
         Reg_x3k1_n1, Reg_x3k2_n32, Reg_x3k2_n31, Reg_x3k2_n30, Reg_x3k2_n29,
         Reg_x3k2_n28, Reg_x3k2_n27, Reg_x3k2_n26, Reg_x3k2_n25, Reg_x3k2_n24,
         Reg_x3k2_n23, Reg_x3k2_n22, Reg_x3k2_n10, Reg_x3k2_n9, Reg_x3k2_n8,
         Reg_x3k2_n7, Reg_x3k2_n6, Reg_x3k2_n5, Reg_x3k2_n4, Reg_x3k2_n3,
         Reg_x3k2_n2, Reg_x3k2_n1, Reg_b0_n32, Reg_b0_n31, Reg_b0_n30,
         Reg_b0_n29, Reg_b0_n28, Reg_b0_n27, Reg_b0_n26, Reg_b0_n25,
         Reg_b0_n24, Reg_b0_n23, Reg_b0_n22, Reg_b0_n10, Reg_b0_n9, Reg_b0_n8,
         Reg_b0_n7, Reg_b0_n6, Reg_b0_n5, Reg_b0_n4, Reg_b0_n3, Reg_b0_n2,
         Reg_b0_n1, Reg_b0_Q_0_, Reg_b0_Q_1_, Reg_b0_Q_2_, Reg_b0_Q_3_,
         Reg_b1_n32, Reg_b1_n31, Reg_b1_n30, Reg_b1_n29, Reg_b1_n28,
         Reg_b1_n27, Reg_b1_n26, Reg_b1_n25, Reg_b1_n24, Reg_b1_n23,
         Reg_b1_n22, Reg_b1_n10, Reg_b1_n9, Reg_b1_n8, Reg_b1_n7, Reg_b1_n6,
         Reg_b1_n5, Reg_b1_n4, Reg_b1_n3, Reg_b1_n2, Reg_b1_n1, Reg_b1_Q_0_,
         Reg_b1_Q_1_, Reg_b1_Q_2_, Reg_b1_Q_3_, Reg_b2_n32, Reg_b2_n31,
         Reg_b2_n30, Reg_b2_n29, Reg_b2_n28, Reg_b2_n27, Reg_b2_n26,
         Reg_b2_n25, Reg_b2_n24, Reg_b2_n23, Reg_b2_n22, Reg_b2_n10, Reg_b2_n9,
         Reg_b2_n8, Reg_b2_n7, Reg_b2_n6, Reg_b2_n5, Reg_b2_n4, Reg_b2_n3,
         Reg_b2_n2, Reg_b2_n1, Reg_b2_Q_0_, Reg_b2_Q_1_, Reg_b2_Q_2_,
         Reg_b2_Q_3_, Reg_b3_n32, Reg_b3_n31, Reg_b3_n30, Reg_b3_n29,
         Reg_b3_n28, Reg_b3_n27, Reg_b3_n26, Reg_b3_n25, Reg_b3_n24,
         Reg_b3_n23, Reg_b3_n22, Reg_b3_n10, Reg_b3_n9, Reg_b3_n8, Reg_b3_n7,
         Reg_b3_n6, Reg_b3_n5, Reg_b3_n4, Reg_b3_n3, Reg_b3_n2, Reg_b3_n1,
         Reg_b3_Q_0_, Reg_b3_Q_1_, Reg_b3_Q_2_, Reg_b3_Q_3_, Reg_b4_n32,
         Reg_b4_n31, Reg_b4_n30, Reg_b4_n29, Reg_b4_n28, Reg_b4_n27,
         Reg_b4_n26, Reg_b4_n25, Reg_b4_n24, Reg_b4_n23, Reg_b4_n22,
         Reg_b4_n10, Reg_b4_n9, Reg_b4_n8, Reg_b4_n7, Reg_b4_n6, Reg_b4_n5,
         Reg_b4_n4, Reg_b4_n3, Reg_b4_n2, Reg_b4_n1, Reg_b4_Q_0_, Reg_b4_Q_1_,
         Reg_b4_Q_2_, Reg_b4_Q_3_, Reg_y3k_n32, Reg_y3k_n31, Reg_y3k_n30,
         Reg_y3k_n29, Reg_y3k_n28, Reg_y3k_n27, Reg_y3k_n26, Reg_y3k_n25,
         Reg_y3k_n24, Reg_y3k_n23, Reg_y3k_n22, Reg_y3k_n10, Reg_y3k_n9,
         Reg_y3k_n8, Reg_y3k_n7, Reg_y3k_n6, Reg_y3k_n5, Reg_y3k_n4,
         Reg_y3k_n3, Reg_y3k_n2, Reg_y3k_n1, Reg_y3k1_n32, Reg_y3k1_n31,
         Reg_y3k1_n30, Reg_y3k1_n29, Reg_y3k1_n28, Reg_y3k1_n27, Reg_y3k1_n26,
         Reg_y3k1_n25, Reg_y3k1_n24, Reg_y3k1_n23, Reg_y3k1_n22, Reg_y3k1_n10,
         Reg_y3k1_n9, Reg_y3k1_n8, Reg_y3k1_n7, Reg_y3k1_n6, Reg_y3k1_n5,
         Reg_y3k1_n4, Reg_y3k1_n3, Reg_y3k1_n2, Reg_y3k1_n1, Reg_y3k2_n32,
         Reg_y3k2_n31, Reg_y3k2_n30, Reg_y3k2_n29, Reg_y3k2_n28, Reg_y3k2_n27,
         Reg_y3k2_n26, Reg_y3k2_n25, Reg_y3k2_n24, Reg_y3k2_n23, Reg_y3k2_n22,
         Reg_y3k2_n10, Reg_y3k2_n9, Reg_y3k2_n8, Reg_y3k2_n7, Reg_y3k2_n6,
         Reg_y3k2_n5, Reg_y3k2_n4, Reg_y3k2_n3, Reg_y3k2_n2, Reg_y3k2_n1,
         Reg_xi_3k_0_n32, Reg_xi_3k_0_n31, Reg_xi_3k_0_n30, Reg_xi_3k_0_n29,
         Reg_xi_3k_0_n28, Reg_xi_3k_0_n27, Reg_xi_3k_0_n26, Reg_xi_3k_0_n25,
         Reg_xi_3k_0_n24, Reg_xi_3k_0_n23, Reg_xi_3k_0_n22, Reg_xi_3k_0_n10,
         Reg_xi_3k_0_n9, Reg_xi_3k_0_n8, Reg_xi_3k_0_n7, Reg_xi_3k_0_n6,
         Reg_xi_3k_0_n5, Reg_xi_3k_0_n4, Reg_xi_3k_0_n3, Reg_xi_3k_0_n2,
         Reg_xi_3k_0_n1, Reg_xi_3k1_0_n32, Reg_xi_3k1_0_n31, Reg_xi_3k1_0_n30,
         Reg_xi_3k1_0_n29, Reg_xi_3k1_0_n28, Reg_xi_3k1_0_n27,
         Reg_xi_3k1_0_n26, Reg_xi_3k1_0_n25, Reg_xi_3k1_0_n24,
         Reg_xi_3k1_0_n23, Reg_xi_3k1_0_n22, Reg_xi_3k1_0_n10, Reg_xi_3k1_0_n9,
         Reg_xi_3k1_0_n8, Reg_xi_3k1_0_n7, Reg_xi_3k1_0_n6, Reg_xi_3k1_0_n5,
         Reg_xi_3k1_0_n4, Reg_xi_3k1_0_n3, Reg_xi_3k1_0_n2, Reg_xi_3k1_0_n1,
         Reg_xi_3k2_0_n32, Reg_xi_3k2_0_n31, Reg_xi_3k2_0_n30,
         Reg_xi_3k2_0_n29, Reg_xi_3k2_0_n28, Reg_xi_3k2_0_n27,
         Reg_xi_3k2_0_n26, Reg_xi_3k2_0_n25, Reg_xi_3k2_0_n24,
         Reg_xi_3k2_0_n23, Reg_xi_3k2_0_n22, Reg_xi_3k2_0_n10, Reg_xi_3k2_0_n9,
         Reg_xi_3k2_0_n8, Reg_xi_3k2_0_n7, Reg_xi_3k2_0_n6, Reg_xi_3k2_0_n5,
         Reg_xi_3k2_0_n4, Reg_xi_3k2_0_n3, Reg_xi_3k2_0_n2, Reg_xi_3k2_0_n1,
         Reg_xi_3k_1_n32, Reg_xi_3k_1_n31, Reg_xi_3k_1_n30, Reg_xi_3k_1_n29,
         Reg_xi_3k_1_n28, Reg_xi_3k_1_n27, Reg_xi_3k_1_n26, Reg_xi_3k_1_n25,
         Reg_xi_3k_1_n24, Reg_xi_3k_1_n23, Reg_xi_3k_1_n22, Reg_xi_3k_1_n10,
         Reg_xi_3k_1_n9, Reg_xi_3k_1_n8, Reg_xi_3k_1_n7, Reg_xi_3k_1_n6,
         Reg_xi_3k_1_n5, Reg_xi_3k_1_n4, Reg_xi_3k_1_n3, Reg_xi_3k_1_n2,
         Reg_xi_3k_1_n1, Reg_xi_3k1_1_n32, Reg_xi_3k1_1_n31, Reg_xi_3k1_1_n30,
         Reg_xi_3k1_1_n29, Reg_xi_3k1_1_n28, Reg_xi_3k1_1_n27,
         Reg_xi_3k1_1_n26, Reg_xi_3k1_1_n25, Reg_xi_3k1_1_n24,
         Reg_xi_3k1_1_n23, Reg_xi_3k1_1_n22, Reg_xi_3k1_1_n10, Reg_xi_3k1_1_n9,
         Reg_xi_3k1_1_n8, Reg_xi_3k1_1_n7, Reg_xi_3k1_1_n6, Reg_xi_3k1_1_n5,
         Reg_xi_3k1_1_n4, Reg_xi_3k1_1_n3, Reg_xi_3k1_1_n2, Reg_xi_3k1_1_n1,
         Reg_xi_3k2_1_n32, Reg_xi_3k2_1_n31, Reg_xi_3k2_1_n30,
         Reg_xi_3k2_1_n29, Reg_xi_3k2_1_n28, Reg_xi_3k2_1_n27,
         Reg_xi_3k2_1_n26, Reg_xi_3k2_1_n25, Reg_xi_3k2_1_n24,
         Reg_xi_3k2_1_n23, Reg_xi_3k2_1_n22, Reg_xi_3k2_1_n10, Reg_xi_3k2_1_n9,
         Reg_xi_3k2_1_n8, Reg_xi_3k2_1_n7, Reg_xi_3k2_1_n6, Reg_xi_3k2_1_n5,
         Reg_xi_3k2_1_n4, Reg_xi_3k2_1_n3, Reg_xi_3k2_1_n2, Reg_xi_3k2_1_n1,
         Reg_xi_3k1_1_0_n32, Reg_xi_3k1_1_0_n31, Reg_xi_3k1_1_0_n30,
         Reg_xi_3k1_1_0_n29, Reg_xi_3k1_1_0_n28, Reg_xi_3k1_1_0_n27,
         Reg_xi_3k1_1_0_n26, Reg_xi_3k1_1_0_n25, Reg_xi_3k1_1_0_n24,
         Reg_xi_3k1_1_0_n23, Reg_xi_3k1_1_0_n22, Reg_xi_3k1_1_0_n10,
         Reg_xi_3k1_1_0_n9, Reg_xi_3k1_1_0_n8, Reg_xi_3k1_1_0_n7,
         Reg_xi_3k1_1_0_n6, Reg_xi_3k1_1_0_n5, Reg_xi_3k1_1_0_n4,
         Reg_xi_3k1_1_0_n3, Reg_xi_3k1_1_0_n2, Reg_xi_3k1_1_0_n1,
         Reg_xi_3k2_2_n32, Reg_xi_3k2_2_n31, Reg_xi_3k2_2_n30,
         Reg_xi_3k2_2_n29, Reg_xi_3k2_2_n28, Reg_xi_3k2_2_n27,
         Reg_xi_3k2_2_n26, Reg_xi_3k2_2_n25, Reg_xi_3k2_2_n24,
         Reg_xi_3k2_2_n23, Reg_xi_3k2_2_n22, Reg_xi_3k2_2_n10, Reg_xi_3k2_2_n9,
         Reg_xi_3k2_2_n8, Reg_xi_3k2_2_n7, Reg_xi_3k2_2_n6, Reg_xi_3k2_2_n5,
         Reg_xi_3k2_2_n4, Reg_xi_3k2_2_n3, Reg_xi_3k2_2_n2, Reg_xi_3k2_2_n1,
         Reg_xk_p1_n6, Reg_xk_p1_n5, Reg_xk_p1_n4, Reg_xk_p1_n3, Reg_xk_p1_n2,
         Reg_xk_p1_n1, Reg_xk_p1_n13, Reg_xk_p1_n12, Reg_xk_p1_n11,
         Reg_xk_p1_n10, Reg_xk_p1_n9, Reg_xk_p1_n8, Reg_xk_p1_n7,
         Reg_xk_p2_n20, Reg_xk_p2_n19, Reg_xk_p2_n18, Reg_xk_p2_n17,
         Reg_xk_p2_n16, Reg_xk_p2_n15, Reg_xk_p2_n14, Reg_xk_p2_n6,
         Reg_xk_p2_n5, Reg_xk_p2_n4, Reg_xk_p2_n3, Reg_xk_p2_n2, Reg_xk_p2_n1,
         Reg_xk_p3_n20, Reg_xk_p3_n19, Reg_xk_p3_n18, Reg_xk_p3_n17,
         Reg_xk_p3_n16, Reg_xk_p3_n15, Reg_xk_p3_n14, Reg_xk_p3_n6,
         Reg_xk_p3_n5, Reg_xk_p3_n4, Reg_xk_p3_n3, Reg_xk_p3_n2, Reg_xk_p3_n1,
         Reg_b_p1_n20, Reg_b_p1_n19, Reg_b_p1_n18, Reg_b_p1_n17, Reg_b_p1_n16,
         Reg_b_p1_n15, Reg_b_p1_n14, Reg_b_p1_n6, Reg_b_p1_n5, Reg_b_p1_n4,
         Reg_b_p1_n3, Reg_b_p1_n2, Reg_b_p1_n1, Reg_s_p1_0_n7, Reg_s_p1_0_n6,
         Reg_s_p1_0_n5, Reg_s_p1_0_n4, Reg_s_p1_0_n3, Reg_s_p1_0_n2,
         Reg_s_p1_0_n1, Reg_s_p1_0_n15, Reg_s_p1_0_n14, Reg_s_p1_0_n13,
         Reg_s_p1_0_n12, Reg_s_p1_0_n11, Reg_s_p1_0_n10, Reg_s_p1_0_n9,
         Reg_s_p1_0_n8, Reg_s_p2_0_n23, Reg_s_p2_0_n22, Reg_s_p2_0_n21,
         Reg_s_p2_0_n20, Reg_s_p2_0_n19, Reg_s_p2_0_n18, Reg_s_p2_0_n17,
         Reg_s_p2_0_n16, Reg_s_p2_0_n7, Reg_s_p2_0_n6, Reg_s_p2_0_n5,
         Reg_s_p2_0_n4, Reg_s_p2_0_n3, Reg_s_p2_0_n2, Reg_s_p2_0_n1,
         Reg_s_p3_0_n23, Reg_s_p3_0_n22, Reg_s_p3_0_n21, Reg_s_p3_0_n20,
         Reg_s_p3_0_n19, Reg_s_p3_0_n18, Reg_s_p3_0_n17, Reg_s_p3_0_n16,
         Reg_s_p3_0_n7, Reg_s_p3_0_n6, Reg_s_p3_0_n5, Reg_s_p3_0_n4,
         Reg_s_p3_0_n3, Reg_s_p3_0_n2, Reg_s_p3_0_n1, Reg_b_p2_0_n20,
         Reg_b_p2_0_n19, Reg_b_p2_0_n18, Reg_b_p2_0_n17, Reg_b_p2_0_n16,
         Reg_b_p2_0_n15, Reg_b_p2_0_n14, Reg_b_p2_0_n6, Reg_b_p2_0_n5,
         Reg_b_p2_0_n4, Reg_b_p2_0_n3, Reg_b_p2_0_n2, Reg_b_p2_0_n1,
         Reg_s_p1_1_n23, Reg_s_p1_1_n22, Reg_s_p1_1_n21, Reg_s_p1_1_n20,
         Reg_s_p1_1_n19, Reg_s_p1_1_n18, Reg_s_p1_1_n17, Reg_s_p1_1_n16,
         Reg_s_p1_1_n7, Reg_s_p1_1_n6, Reg_s_p1_1_n5, Reg_s_p1_1_n4,
         Reg_s_p1_1_n3, Reg_s_p1_1_n2, Reg_s_p1_1_n1, Reg_s_p2_1_n23,
         Reg_s_p2_1_n22, Reg_s_p2_1_n21, Reg_s_p2_1_n20, Reg_s_p2_1_n19,
         Reg_s_p2_1_n18, Reg_s_p2_1_n17, Reg_s_p2_1_n16, Reg_s_p2_1_n7,
         Reg_s_p2_1_n6, Reg_s_p2_1_n5, Reg_s_p2_1_n4, Reg_s_p2_1_n3,
         Reg_s_p2_1_n2, Reg_s_p2_1_n1, Reg_s_p3_1_n23, Reg_s_p3_1_n22,
         Reg_s_p3_1_n21, Reg_s_p3_1_n20, Reg_s_p3_1_n19, Reg_s_p3_1_n18,
         Reg_s_p3_1_n17, Reg_s_p3_1_n16, Reg_s_p3_1_n7, Reg_s_p3_1_n6,
         Reg_s_p3_1_n5, Reg_s_p3_1_n4, Reg_s_p3_1_n3, Reg_s_p3_1_n2,
         Reg_s_p3_1_n1, Reg_b_p2_1_n20, Reg_b_p2_1_n19, Reg_b_p2_1_n18,
         Reg_b_p2_1_n17, Reg_b_p2_1_n16, Reg_b_p2_1_n15, Reg_b_p2_1_n14,
         Reg_b_p2_1_n6, Reg_b_p2_1_n5, Reg_b_p2_1_n4, Reg_b_p2_1_n3,
         Reg_b_p2_1_n2, Reg_b_p2_1_n1, Reg_s_p1_2_n23, Reg_s_p1_2_n22,
         Reg_s_p1_2_n21, Reg_s_p1_2_n20, Reg_s_p1_2_n19, Reg_s_p1_2_n18,
         Reg_s_p1_2_n17, Reg_s_p1_2_n16, Reg_s_p1_2_n7, Reg_s_p1_2_n6,
         Reg_s_p1_2_n5, Reg_s_p1_2_n4, Reg_s_p1_2_n3, Reg_s_p1_2_n2,
         Reg_s_p1_2_n1, Reg_s_p2_2_n23, Reg_s_p2_2_n22, Reg_s_p2_2_n21,
         Reg_s_p2_2_n20, Reg_s_p2_2_n19, Reg_s_p2_2_n18, Reg_s_p2_2_n17,
         Reg_s_p2_2_n16, Reg_s_p2_2_n7, Reg_s_p2_2_n6, Reg_s_p2_2_n5,
         Reg_s_p2_2_n4, Reg_s_p2_2_n3, Reg_s_p2_2_n2, Reg_s_p2_2_n1,
         Reg_s_p3_2_n23, Reg_s_p3_2_n22, Reg_s_p3_2_n21, Reg_s_p3_2_n20,
         Reg_s_p3_2_n19, Reg_s_p3_2_n18, Reg_s_p3_2_n17, Reg_s_p3_2_n16,
         Reg_s_p3_2_n7, Reg_s_p3_2_n6, Reg_s_p3_2_n5, Reg_s_p3_2_n4,
         Reg_s_p3_2_n3, Reg_s_p3_2_n2, Reg_s_p3_2_n1, Reg_b_p2_2_n20,
         Reg_b_p2_2_n19, Reg_b_p2_2_n18, Reg_b_p2_2_n17, Reg_b_p2_2_n16,
         Reg_b_p2_2_n15, Reg_b_p2_2_n14, Reg_b_p2_2_n6, Reg_b_p2_2_n5,
         Reg_b_p2_2_n4, Reg_b_p2_2_n3, Reg_b_p2_2_n2, Reg_b_p2_2_n1,
         Reg_s_p1_3_n23, Reg_s_p1_3_n22, Reg_s_p1_3_n21, Reg_s_p1_3_n20,
         Reg_s_p1_3_n19, Reg_s_p1_3_n18, Reg_s_p1_3_n17, Reg_s_p1_3_n16,
         Reg_s_p1_3_n7, Reg_s_p1_3_n6, Reg_s_p1_3_n5, Reg_s_p1_3_n4,
         Reg_s_p1_3_n3, Reg_s_p1_3_n2, Reg_s_p1_3_n1, Reg_s_p2_3_n23,
         Reg_s_p2_3_n22, Reg_s_p2_3_n21, Reg_s_p2_3_n20, Reg_s_p2_3_n19,
         Reg_s_p2_3_n18, Reg_s_p2_3_n17, Reg_s_p2_3_n16, Reg_s_p2_3_n7,
         Reg_s_p2_3_n6, Reg_s_p2_3_n5, Reg_s_p2_3_n4, Reg_s_p2_3_n3,
         Reg_s_p2_3_n2, Reg_s_p2_3_n1, Reg_s_p3_3_n23, Reg_s_p3_3_n22,
         Reg_s_p3_3_n21, Reg_s_p3_3_n20, Reg_s_p3_3_n19, Reg_s_p3_3_n18,
         Reg_s_p3_3_n17, Reg_s_p3_3_n16, Reg_s_p3_3_n7, Reg_s_p3_3_n6,
         Reg_s_p3_3_n5, Reg_s_p3_3_n4, Reg_s_p3_3_n3, Reg_s_p3_3_n2,
         Reg_s_p3_3_n1, Reg_b_p2_3_n20, Reg_b_p2_3_n19, Reg_b_p2_3_n18,
         Reg_b_p2_3_n17, Reg_b_p2_3_n16, Reg_b_p2_3_n15, Reg_b_p2_3_n14,
         Reg_b_p2_3_n6, Reg_b_p2_3_n5, Reg_b_p2_3_n4, Reg_b_p2_3_n3,
         Reg_b_p2_3_n2, Reg_b_p2_3_n1, Reg_p_p1_0_n12, Reg_p_p1_0_n11,
         Reg_p_p1_0_n10, Reg_p_p1_0_n9, Reg_p_p1_0_n8, Reg_p_p1_0_n7,
         Reg_p_p1_0_n6, Reg_p_p1_0_n5, Reg_p_p1_0_n4, Reg_p_p1_0_n3,
         Reg_p_p1_0_n2, Reg_p_p1_0_n1, Reg_p_p1_0_n25, Reg_p_p1_0_n24,
         Reg_p_p1_0_n23, Reg_p_p1_0_n22, Reg_p_p1_0_n21, Reg_p_p1_0_n20,
         Reg_p_p1_0_n19, Reg_p_p1_0_n18, Reg_p_p1_0_n17, Reg_p_p1_0_n16,
         Reg_p_p1_0_n15, Reg_p_p1_0_n14, Reg_p_p1_0_n13, Reg_p_p1_0_Q_9_,
         Reg_p_p2_0_n38, Reg_p_p2_0_n37, Reg_p_p2_0_n36, Reg_p_p2_0_n35,
         Reg_p_p2_0_n34, Reg_p_p2_0_n33, Reg_p_p2_0_n32, Reg_p_p2_0_n31,
         Reg_p_p2_0_n30, Reg_p_p2_0_n29, Reg_p_p2_0_n28, Reg_p_p2_0_n27,
         Reg_p_p2_0_n26, Reg_p_p2_0_n12, Reg_p_p2_0_n11, Reg_p_p2_0_n10,
         Reg_p_p2_0_n9, Reg_p_p2_0_n8, Reg_p_p2_0_n7, Reg_p_p2_0_n6,
         Reg_p_p2_0_n5, Reg_p_p2_0_n4, Reg_p_p2_0_n3, Reg_p_p2_0_n2,
         Reg_p_p2_0_n1, Reg_p_p2_0_Q_9_, Reg_p_p3_0_n38, Reg_p_p3_0_n37,
         Reg_p_p3_0_n36, Reg_p_p3_0_n35, Reg_p_p3_0_n34, Reg_p_p3_0_n33,
         Reg_p_p3_0_n32, Reg_p_p3_0_n31, Reg_p_p3_0_n30, Reg_p_p3_0_n29,
         Reg_p_p3_0_n28, Reg_p_p3_0_n27, Reg_p_p3_0_n26, Reg_p_p3_0_n12,
         Reg_p_p3_0_n11, Reg_p_p3_0_n10, Reg_p_p3_0_n9, Reg_p_p3_0_n8,
         Reg_p_p3_0_n7, Reg_p_p3_0_n6, Reg_p_p3_0_n5, Reg_p_p3_0_n4,
         Reg_p_p3_0_n3, Reg_p_p3_0_n2, Reg_p_p3_0_n1, Reg_p_p3_0_Q_9_,
         Reg_p_p1_1_n38, Reg_p_p1_1_n37, Reg_p_p1_1_n36, Reg_p_p1_1_n35,
         Reg_p_p1_1_n34, Reg_p_p1_1_n33, Reg_p_p1_1_n32, Reg_p_p1_1_n31,
         Reg_p_p1_1_n30, Reg_p_p1_1_n29, Reg_p_p1_1_n28, Reg_p_p1_1_n27,
         Reg_p_p1_1_n26, Reg_p_p1_1_n12, Reg_p_p1_1_n11, Reg_p_p1_1_n10,
         Reg_p_p1_1_n9, Reg_p_p1_1_n8, Reg_p_p1_1_n7, Reg_p_p1_1_n6,
         Reg_p_p1_1_n5, Reg_p_p1_1_n4, Reg_p_p1_1_n3, Reg_p_p1_1_n2,
         Reg_p_p1_1_n1, Reg_p_p1_1_Q_9_, Reg_p_p2_1_n38, Reg_p_p2_1_n37,
         Reg_p_p2_1_n36, Reg_p_p2_1_n35, Reg_p_p2_1_n34, Reg_p_p2_1_n33,
         Reg_p_p2_1_n32, Reg_p_p2_1_n31, Reg_p_p2_1_n30, Reg_p_p2_1_n29,
         Reg_p_p2_1_n28, Reg_p_p2_1_n27, Reg_p_p2_1_n26, Reg_p_p2_1_n12,
         Reg_p_p2_1_n11, Reg_p_p2_1_n10, Reg_p_p2_1_n9, Reg_p_p2_1_n8,
         Reg_p_p2_1_n7, Reg_p_p2_1_n6, Reg_p_p2_1_n5, Reg_p_p2_1_n4,
         Reg_p_p2_1_n3, Reg_p_p2_1_n2, Reg_p_p2_1_n1, Reg_p_p2_1_Q_9_,
         Reg_p_p3_1_n38, Reg_p_p3_1_n37, Reg_p_p3_1_n36, Reg_p_p3_1_n35,
         Reg_p_p3_1_n34, Reg_p_p3_1_n33, Reg_p_p3_1_n32, Reg_p_p3_1_n31,
         Reg_p_p3_1_n30, Reg_p_p3_1_n29, Reg_p_p3_1_n28, Reg_p_p3_1_n27,
         Reg_p_p3_1_n26, Reg_p_p3_1_n12, Reg_p_p3_1_n11, Reg_p_p3_1_n10,
         Reg_p_p3_1_n9, Reg_p_p3_1_n8, Reg_p_p3_1_n7, Reg_p_p3_1_n6,
         Reg_p_p3_1_n5, Reg_p_p3_1_n4, Reg_p_p3_1_n3, Reg_p_p3_1_n2,
         Reg_p_p3_1_n1, Reg_p_p3_1_Q_9_, Reg_p_p1_2_n38, Reg_p_p1_2_n37,
         Reg_p_p1_2_n36, Reg_p_p1_2_n35, Reg_p_p1_2_n34, Reg_p_p1_2_n33,
         Reg_p_p1_2_n32, Reg_p_p1_2_n31, Reg_p_p1_2_n30, Reg_p_p1_2_n29,
         Reg_p_p1_2_n28, Reg_p_p1_2_n27, Reg_p_p1_2_n26, Reg_p_p1_2_n12,
         Reg_p_p1_2_n11, Reg_p_p1_2_n10, Reg_p_p1_2_n9, Reg_p_p1_2_n8,
         Reg_p_p1_2_n7, Reg_p_p1_2_n6, Reg_p_p1_2_n5, Reg_p_p1_2_n4,
         Reg_p_p1_2_n3, Reg_p_p1_2_n2, Reg_p_p1_2_n1, Reg_p_p1_2_Q_9_,
         Reg_p_p2_2_n38, Reg_p_p2_2_n37, Reg_p_p2_2_n36, Reg_p_p2_2_n35,
         Reg_p_p2_2_n34, Reg_p_p2_2_n33, Reg_p_p2_2_n32, Reg_p_p2_2_n31,
         Reg_p_p2_2_n30, Reg_p_p2_2_n29, Reg_p_p2_2_n28, Reg_p_p2_2_n27,
         Reg_p_p2_2_n26, Reg_p_p2_2_n12, Reg_p_p2_2_n11, Reg_p_p2_2_n10,
         Reg_p_p2_2_n9, Reg_p_p2_2_n8, Reg_p_p2_2_n7, Reg_p_p2_2_n6,
         Reg_p_p2_2_n5, Reg_p_p2_2_n4, Reg_p_p2_2_n3, Reg_p_p2_2_n2,
         Reg_p_p2_2_n1, Reg_p_p2_2_Q_9_, Reg_p_p3_2_n38, Reg_p_p3_2_n37,
         Reg_p_p3_2_n36, Reg_p_p3_2_n35, Reg_p_p3_2_n34, Reg_p_p3_2_n33,
         Reg_p_p3_2_n32, Reg_p_p3_2_n31, Reg_p_p3_2_n30, Reg_p_p3_2_n29,
         Reg_p_p3_2_n28, Reg_p_p3_2_n27, Reg_p_p3_2_n26, Reg_p_p3_2_n12,
         Reg_p_p3_2_n11, Reg_p_p3_2_n10, Reg_p_p3_2_n9, Reg_p_p3_2_n8,
         Reg_p_p3_2_n7, Reg_p_p3_2_n6, Reg_p_p3_2_n5, Reg_p_p3_2_n4,
         Reg_p_p3_2_n3, Reg_p_p3_2_n2, Reg_p_p3_2_n1, Reg_p_p3_2_Q_9_,
         Reg_p_p1_3_n38, Reg_p_p1_3_n37, Reg_p_p1_3_n36, Reg_p_p1_3_n35,
         Reg_p_p1_3_n34, Reg_p_p1_3_n33, Reg_p_p1_3_n32, Reg_p_p1_3_n31,
         Reg_p_p1_3_n30, Reg_p_p1_3_n29, Reg_p_p1_3_n28, Reg_p_p1_3_n27,
         Reg_p_p1_3_n26, Reg_p_p1_3_n12, Reg_p_p1_3_n11, Reg_p_p1_3_n10,
         Reg_p_p1_3_n9, Reg_p_p1_3_n8, Reg_p_p1_3_n7, Reg_p_p1_3_n6,
         Reg_p_p1_3_n5, Reg_p_p1_3_n4, Reg_p_p1_3_n3, Reg_p_p1_3_n2,
         Reg_p_p1_3_n1, Reg_p_p2_3_n38, Reg_p_p2_3_n37, Reg_p_p2_3_n36,
         Reg_p_p2_3_n35, Reg_p_p2_3_n34, Reg_p_p2_3_n33, Reg_p_p2_3_n32,
         Reg_p_p2_3_n31, Reg_p_p2_3_n30, Reg_p_p2_3_n29, Reg_p_p2_3_n28,
         Reg_p_p2_3_n27, Reg_p_p2_3_n26, Reg_p_p2_3_n12, Reg_p_p2_3_n11,
         Reg_p_p2_3_n10, Reg_p_p2_3_n9, Reg_p_p2_3_n8, Reg_p_p2_3_n7,
         Reg_p_p2_3_n6, Reg_p_p2_3_n5, Reg_p_p2_3_n4, Reg_p_p2_3_n3,
         Reg_p_p2_3_n2, Reg_p_p2_3_n1, Reg_p_p3_3_n38, Reg_p_p3_3_n37,
         Reg_p_p3_3_n36, Reg_p_p3_3_n35, Reg_p_p3_3_n34, Reg_p_p3_3_n33,
         Reg_p_p3_3_n32, Reg_p_p3_3_n31, Reg_p_p3_3_n30, Reg_p_p3_3_n29,
         Reg_p_p3_3_n28, Reg_p_p3_3_n27, Reg_p_p3_3_n26, Reg_p_p3_3_n12,
         Reg_p_p3_3_n11, Reg_p_p3_3_n10, Reg_p_p3_3_n9, Reg_p_p3_3_n8,
         Reg_p_p3_3_n7, Reg_p_p3_3_n6, Reg_p_p3_3_n5, Reg_p_p3_3_n4,
         Reg_p_p3_3_n3, Reg_p_p3_3_n2, Reg_p_p3_3_n1, Reg_p_p1_4_n38,
         Reg_p_p1_4_n37, Reg_p_p1_4_n36, Reg_p_p1_4_n35, Reg_p_p1_4_n34,
         Reg_p_p1_4_n33, Reg_p_p1_4_n32, Reg_p_p1_4_n31, Reg_p_p1_4_n30,
         Reg_p_p1_4_n29, Reg_p_p1_4_n28, Reg_p_p1_4_n27, Reg_p_p1_4_n26,
         Reg_p_p1_4_n12, Reg_p_p1_4_n11, Reg_p_p1_4_n10, Reg_p_p1_4_n9,
         Reg_p_p1_4_n8, Reg_p_p1_4_n7, Reg_p_p1_4_n6, Reg_p_p1_4_n5,
         Reg_p_p1_4_n4, Reg_p_p1_4_n3, Reg_p_p1_4_n2, Reg_p_p1_4_n1,
         Reg_p_p2_4_n38, Reg_p_p2_4_n37, Reg_p_p2_4_n36, Reg_p_p2_4_n35,
         Reg_p_p2_4_n34, Reg_p_p2_4_n33, Reg_p_p2_4_n32, Reg_p_p2_4_n31,
         Reg_p_p2_4_n30, Reg_p_p2_4_n29, Reg_p_p2_4_n28, Reg_p_p2_4_n27,
         Reg_p_p2_4_n26, Reg_p_p2_4_n12, Reg_p_p2_4_n11, Reg_p_p2_4_n10,
         Reg_p_p2_4_n9, Reg_p_p2_4_n8, Reg_p_p2_4_n7, Reg_p_p2_4_n6,
         Reg_p_p2_4_n5, Reg_p_p2_4_n4, Reg_p_p2_4_n3, Reg_p_p2_4_n2,
         Reg_p_p2_4_n1, Reg_p_p3_4_n38, Reg_p_p3_4_n37, Reg_p_p3_4_n36,
         Reg_p_p3_4_n35, Reg_p_p3_4_n34, Reg_p_p3_4_n33, Reg_p_p3_4_n32,
         Reg_p_p3_4_n31, Reg_p_p3_4_n30, Reg_p_p3_4_n29, Reg_p_p3_4_n28,
         Reg_p_p3_4_n27, Reg_p_p3_4_n26, Reg_p_p3_4_n12, Reg_p_p3_4_n11,
         Reg_p_p3_4_n10, Reg_p_p3_4_n9, Reg_p_p3_4_n8, Reg_p_p3_4_n7,
         Reg_p_p3_4_n6, Reg_p_p3_4_n5, Reg_p_p3_4_n4, Reg_p_p3_4_n3,
         Reg_p_p3_4_n2, Reg_p_p3_4_n1, Reg_p_p3_3_0_n38, Reg_p_p3_3_0_n37,
         Reg_p_p3_3_0_n36, Reg_p_p3_3_0_n35, Reg_p_p3_3_0_n34,
         Reg_p_p3_3_0_n33, Reg_p_p3_3_0_n32, Reg_p_p3_3_0_n31,
         Reg_p_p3_3_0_n30, Reg_p_p3_3_0_n29, Reg_p_p3_3_0_n28,
         Reg_p_p3_3_0_n27, Reg_p_p3_3_0_n26, Reg_p_p3_3_0_n12,
         Reg_p_p3_3_0_n11, Reg_p_p3_3_0_n10, Reg_p_p3_3_0_n9, Reg_p_p3_3_0_n8,
         Reg_p_p3_3_0_n7, Reg_p_p3_3_0_n6, Reg_p_p3_3_0_n5, Reg_p_p3_3_0_n4,
         Reg_p_p3_3_0_n3, Reg_p_p3_3_0_n2, Reg_p_p3_3_0_n1, Reg_p_p3_3_0_Q_9_,
         Reg_p_p3_3_0_Q_10_, Reg_p_p4_3_n38, Reg_p_p4_3_n37, Reg_p_p4_3_n36,
         Reg_p_p4_3_n35, Reg_p_p4_3_n34, Reg_p_p4_3_n33, Reg_p_p4_3_n32,
         Reg_p_p4_3_n31, Reg_p_p4_3_n30, Reg_p_p4_3_n29, Reg_p_p4_3_n28,
         Reg_p_p4_3_n27, Reg_p_p4_3_n26, Reg_p_p4_3_n12, Reg_p_p4_3_n11,
         Reg_p_p4_3_n10, Reg_p_p4_3_n9, Reg_p_p4_3_n8, Reg_p_p4_3_n7,
         Reg_p_p4_3_n6, Reg_p_p4_3_n5, Reg_p_p4_3_n4, Reg_p_p4_3_n3,
         Reg_p_p4_3_n2, Reg_p_p4_3_n1, Reg_p_p4_3_Q_9_, Reg_p_p4_3_Q_10_,
         Reg_p_p5_3_n38, Reg_p_p5_3_n37, Reg_p_p5_3_n36, Reg_p_p5_3_n35,
         Reg_p_p5_3_n34, Reg_p_p5_3_n33, Reg_p_p5_3_n32, Reg_p_p5_3_n31,
         Reg_p_p5_3_n30, Reg_p_p5_3_n29, Reg_p_p5_3_n28, Reg_p_p5_3_n27,
         Reg_p_p5_3_n26, Reg_p_p5_3_n12, Reg_p_p5_3_n11, Reg_p_p5_3_n10,
         Reg_p_p5_3_n9, Reg_p_p5_3_n8, Reg_p_p5_3_n7, Reg_p_p5_3_n6,
         Reg_p_p5_3_n5, Reg_p_p5_3_n4, Reg_p_p5_3_n3, Reg_p_p5_3_n2,
         Reg_p_p5_3_n1, Reg_p_p5_3_Q_9_, Reg_p_p5_3_Q_10_, Reg_p_p3_4_0_n38,
         Reg_p_p3_4_0_n37, Reg_p_p3_4_0_n36, Reg_p_p3_4_0_n35,
         Reg_p_p3_4_0_n34, Reg_p_p3_4_0_n33, Reg_p_p3_4_0_n32,
         Reg_p_p3_4_0_n31, Reg_p_p3_4_0_n30, Reg_p_p3_4_0_n29,
         Reg_p_p3_4_0_n28, Reg_p_p3_4_0_n27, Reg_p_p3_4_0_n26,
         Reg_p_p3_4_0_n12, Reg_p_p3_4_0_n11, Reg_p_p3_4_0_n10, Reg_p_p3_4_0_n9,
         Reg_p_p3_4_0_n8, Reg_p_p3_4_0_n7, Reg_p_p3_4_0_n6, Reg_p_p3_4_0_n5,
         Reg_p_p3_4_0_n4, Reg_p_p3_4_0_n3, Reg_p_p3_4_0_n2, Reg_p_p3_4_0_n1,
         Reg_p_p3_4_0_Q_9_, Reg_p_p3_4_0_Q_10_, Reg_p_p4_4_n38, Reg_p_p4_4_n37,
         Reg_p_p4_4_n36, Reg_p_p4_4_n35, Reg_p_p4_4_n34, Reg_p_p4_4_n33,
         Reg_p_p4_4_n32, Reg_p_p4_4_n31, Reg_p_p4_4_n30, Reg_p_p4_4_n29,
         Reg_p_p4_4_n28, Reg_p_p4_4_n27, Reg_p_p4_4_n26, Reg_p_p4_4_n12,
         Reg_p_p4_4_n11, Reg_p_p4_4_n10, Reg_p_p4_4_n9, Reg_p_p4_4_n8,
         Reg_p_p4_4_n7, Reg_p_p4_4_n6, Reg_p_p4_4_n5, Reg_p_p4_4_n4,
         Reg_p_p4_4_n3, Reg_p_p4_4_n2, Reg_p_p4_4_n1, Reg_p_p4_4_Q_9_,
         Reg_p_p4_4_Q_10_, Reg_p_p5_4_n38, Reg_p_p5_4_n37, Reg_p_p5_4_n36,
         Reg_p_p5_4_n35, Reg_p_p5_4_n34, Reg_p_p5_4_n33, Reg_p_p5_4_n32,
         Reg_p_p5_4_n31, Reg_p_p5_4_n30, Reg_p_p5_4_n29, Reg_p_p5_4_n28,
         Reg_p_p5_4_n27, Reg_p_p5_4_n26, Reg_p_p5_4_n12, Reg_p_p5_4_n11,
         Reg_p_p5_4_n10, Reg_p_p5_4_n9, Reg_p_p5_4_n8, Reg_p_p5_4_n7,
         Reg_p_p5_4_n6, Reg_p_p5_4_n5, Reg_p_p5_4_n4, Reg_p_p5_4_n3,
         Reg_p_p5_4_n2, Reg_p_p5_4_n1, Reg_p_p5_4_Q_9_, Reg_p_p5_4_Q_10_,
         Reg_s_p6_n11, Reg_s_p6_n10, Reg_s_p6_n9, Reg_s_p6_n8, Reg_s_p6_n7,
         Reg_s_p6_n6, Reg_s_p6_n5, Reg_s_p6_n4, Reg_s_p6_n3, Reg_s_p6_n2,
         Reg_s_p6_n1, Reg_s_p6_n23, Reg_s_p6_n22, Reg_s_p6_n21, Reg_s_p6_n20,
         Reg_s_p6_n19, Reg_s_p6_n18, Reg_s_p6_n17, Reg_s_p6_n16, Reg_s_p6_n15,
         Reg_s_p6_n14, Reg_s_p6_n13, Reg_s_p6_n12, Reg_s_p6_Q_9_, Reg_s_p7_n35,
         Reg_s_p7_n34, Reg_s_p7_n33, Reg_s_p7_n32, Reg_s_p7_n31, Reg_s_p7_n30,
         Reg_s_p7_n29, Reg_s_p7_n28, Reg_s_p7_n27, Reg_s_p7_n26, Reg_s_p7_n25,
         Reg_s_p7_n24, Reg_s_p7_n11, Reg_s_p7_n10, Reg_s_p7_n9, Reg_s_p7_n8,
         Reg_s_p7_n7, Reg_s_p7_n6, Reg_s_p7_n5, Reg_s_p7_n4, Reg_s_p7_n3,
         Reg_s_p7_n2, Reg_s_p7_n1, Reg_s_p7_Q_9_, Reg_s_p8_n35, Reg_s_p8_n34,
         Reg_s_p8_n33, Reg_s_p8_n32, Reg_s_p8_n31, Reg_s_p8_n30, Reg_s_p8_n29,
         Reg_s_p8_n28, Reg_s_p8_n27, Reg_s_p8_n26, Reg_s_p8_n25, Reg_s_p8_n24,
         Reg_s_p8_n11, Reg_s_p8_n10, Reg_s_p8_n9, Reg_s_p8_n8, Reg_s_p8_n7,
         Reg_s_p8_n6, Reg_s_p8_n5, Reg_s_p8_n4, Reg_s_p8_n3, Reg_s_p8_n2,
         Reg_s_p8_n1, Reg_s_p8_Q_9_, add_146_n11, add_146_n10, add_146_n9,
         add_146_n8, add_146_n7, add_146_n6, add_146_n5, add_146_n4,
         add_146_n3, add_146_n2, add_146_n1, add_145_n11, add_145_n10,
         add_145_n9, add_145_n8, add_145_n7, add_145_n6, add_145_n5,
         add_145_n4, add_145_n3, add_145_n2, add_145_n1, add_144_n11,
         add_144_n10, add_144_n9, add_144_n8, add_144_n7, add_144_n6,
         add_144_n5, add_144_n4, add_144_n3, add_144_n2, add_144_n1,
         add_143_n11, add_143_n10, add_143_n9, add_143_n8, add_143_n7,
         add_143_n6, add_143_n5, add_143_n4, add_143_n3, add_143_n2,
         add_143_n1, add_141_n11, add_141_n10, add_141_n9, add_141_n8,
         add_141_n7, add_141_n6, add_141_n5, add_141_n4, add_141_n3,
         add_141_n2, add_141_n1, add_140_n11, add_140_n10, add_140_n9,
         add_140_n8, add_140_n7, add_140_n6, add_140_n5, add_140_n4,
         add_140_n3, add_140_n2, add_140_n1, add_139_n11, add_139_n10,
         add_139_n9, add_139_n8, add_139_n7, add_139_n6, add_139_n5,
         add_139_n4, add_139_n3, add_139_n2, add_139_n1, add_138_n11,
         add_138_n10, add_138_n9, add_138_n8, add_138_n7, add_138_n6,
         add_138_n5, add_138_n4, add_138_n3, add_138_n2, add_138_n1,
         add_136_n11, add_136_n10, add_136_n9, add_136_n8, add_136_n7,
         add_136_n6, add_136_n5, add_136_n4, add_136_n3, add_136_n2,
         add_136_n1, add_135_n11, add_135_n10, add_135_n9, add_135_n8,
         add_135_n7, add_135_n6, add_135_n5, add_135_n4, add_135_n3,
         add_135_n2, add_135_n1, add_134_n11, add_134_n10, add_134_n9,
         add_134_n8, add_134_n7, add_134_n6, add_134_n5, add_134_n4,
         add_134_n3, add_134_n2, add_134_n1, add_133_n11, add_133_n10,
         add_133_n9, add_133_n8, add_133_n7, add_133_n6, add_133_n5,
         add_133_n4, add_133_n3, add_133_n2, add_133_n1,
         add_1_root_add_0_root_add_232_n2, add_0_root_add_0_root_add_232_n2,
         add_1_root_add_0_root_add_227_n2, add_0_root_add_0_root_add_227_n2,
         add_1_root_add_0_root_add_237_n2, add_0_root_add_0_root_add_237_n2,
         add_1_root_add_0_root_add_230_n1, add_0_root_add_0_root_add_230_n2,
         add_1_root_add_0_root_add_225_n1, add_0_root_add_0_root_add_225_n2,
         add_1_root_add_0_root_add_235_n1, add_0_root_add_0_root_add_235_n2,
         mult_171_G2_n119, mult_171_G2_n118, mult_171_G2_n117,
         mult_171_G2_n116, mult_171_G2_n115, mult_171_G2_n114,
         mult_171_G2_n113, mult_171_G2_n112, mult_171_G2_n111,
         mult_171_G2_n110, mult_171_G2_n109, mult_171_G2_n108, mult_171_G2_n69,
         mult_171_G2_n68, mult_171_G2_n67, mult_171_G2_n65, mult_171_G2_n64,
         mult_171_G2_n63, mult_171_G2_n62, mult_171_G2_n61, mult_171_G2_n60,
         mult_171_G2_n59, mult_171_G2_n58, mult_171_G2_n57, mult_171_G2_n55,
         mult_171_G2_n54, mult_171_G2_n53, mult_171_G2_n52, mult_171_G2_n51,
         mult_171_G2_n50, mult_171_G2_n49, mult_171_G2_n48, mult_171_G2_n47,
         mult_171_G2_n46, mult_171_G2_n45, mult_171_G2_n44, mult_171_G2_n43,
         mult_171_G2_n42, mult_171_G2_n41, mult_171_G2_n40, mult_171_G2_n39,
         mult_171_G2_n38, mult_171_G2_n37, mult_171_G2_n36, mult_171_G2_n35,
         mult_171_G2_n34, mult_171_G2_n33, mult_171_G2_n32, mult_171_G2_n31,
         mult_171_G2_n30, mult_171_G2_n29, mult_171_G2_n27, mult_171_G2_n26,
         mult_171_G2_n25, mult_171_G2_n24, mult_171_G2_n23, mult_171_G2_n22,
         mult_171_G2_n21, mult_171_G2_n20, mult_171_G2_n19, mult_171_G2_n18,
         mult_171_G2_n17, mult_171_G2_n16, mult_171_G2_n15, mult_171_G2_n14,
         mult_171_G2_n13, mult_171_G2_n12, mult_171_G2_n11, mult_171_G2_n10,
         mult_171_G2_n9, mult_171_G2_n8, mult_171_G2_n7, mult_171_G2_n6,
         mult_171_G2_n5, mult_171_G2_n4, mult_171_G2_n3, mult_171_G2_n2,
         mult_171_G2_n1, mult_172_G2_n119, mult_172_G2_n118, mult_172_G2_n117,
         mult_172_G2_n116, mult_172_G2_n115, mult_172_G2_n114,
         mult_172_G2_n113, mult_172_G2_n112, mult_172_G2_n111,
         mult_172_G2_n110, mult_172_G2_n109, mult_172_G2_n108, mult_172_G2_n69,
         mult_172_G2_n68, mult_172_G2_n67, mult_172_G2_n65, mult_172_G2_n64,
         mult_172_G2_n63, mult_172_G2_n62, mult_172_G2_n61, mult_172_G2_n60,
         mult_172_G2_n59, mult_172_G2_n58, mult_172_G2_n57, mult_172_G2_n55,
         mult_172_G2_n54, mult_172_G2_n53, mult_172_G2_n52, mult_172_G2_n51,
         mult_172_G2_n50, mult_172_G2_n49, mult_172_G2_n48, mult_172_G2_n47,
         mult_172_G2_n46, mult_172_G2_n45, mult_172_G2_n44, mult_172_G2_n43,
         mult_172_G2_n42, mult_172_G2_n41, mult_172_G2_n40, mult_172_G2_n39,
         mult_172_G2_n38, mult_172_G2_n37, mult_172_G2_n36, mult_172_G2_n35,
         mult_172_G2_n34, mult_172_G2_n33, mult_172_G2_n32, mult_172_G2_n31,
         mult_172_G2_n30, mult_172_G2_n29, mult_172_G2_n27, mult_172_G2_n26,
         mult_172_G2_n25, mult_172_G2_n24, mult_172_G2_n23, mult_172_G2_n22,
         mult_172_G2_n21, mult_172_G2_n20, mult_172_G2_n19, mult_172_G2_n18,
         mult_172_G2_n17, mult_172_G2_n16, mult_172_G2_n15, mult_172_G2_n14,
         mult_172_G2_n13, mult_172_G2_n12, mult_172_G2_n11, mult_172_G2_n10,
         mult_172_G2_n9, mult_172_G2_n8, mult_172_G2_n7, mult_172_G2_n6,
         mult_172_G2_n5, mult_172_G2_n4, mult_172_G2_n3, mult_172_G2_n2,
         mult_172_G2_n1, mult_170_G2_n119, mult_170_G2_n118, mult_170_G2_n117,
         mult_170_G2_n116, mult_170_G2_n115, mult_170_G2_n114,
         mult_170_G2_n113, mult_170_G2_n112, mult_170_G2_n111,
         mult_170_G2_n110, mult_170_G2_n109, mult_170_G2_n108, mult_170_G2_n69,
         mult_170_G2_n68, mult_170_G2_n67, mult_170_G2_n65, mult_170_G2_n64,
         mult_170_G2_n63, mult_170_G2_n62, mult_170_G2_n61, mult_170_G2_n60,
         mult_170_G2_n59, mult_170_G2_n58, mult_170_G2_n57, mult_170_G2_n55,
         mult_170_G2_n54, mult_170_G2_n53, mult_170_G2_n52, mult_170_G2_n51,
         mult_170_G2_n50, mult_170_G2_n49, mult_170_G2_n48, mult_170_G2_n47,
         mult_170_G2_n46, mult_170_G2_n45, mult_170_G2_n44, mult_170_G2_n43,
         mult_170_G2_n42, mult_170_G2_n41, mult_170_G2_n40, mult_170_G2_n39,
         mult_170_G2_n38, mult_170_G2_n37, mult_170_G2_n36, mult_170_G2_n35,
         mult_170_G2_n34, mult_170_G2_n33, mult_170_G2_n32, mult_170_G2_n31,
         mult_170_G2_n30, mult_170_G2_n29, mult_170_G2_n27, mult_170_G2_n26,
         mult_170_G2_n25, mult_170_G2_n24, mult_170_G2_n23, mult_170_G2_n22,
         mult_170_G2_n21, mult_170_G2_n20, mult_170_G2_n19, mult_170_G2_n18,
         mult_170_G2_n17, mult_170_G2_n16, mult_170_G2_n15, mult_170_G2_n14,
         mult_170_G2_n13, mult_170_G2_n12, mult_170_G2_n11, mult_170_G2_n10,
         mult_170_G2_n9, mult_170_G2_n8, mult_170_G2_n7, mult_170_G2_n6,
         mult_170_G2_n5, mult_170_G2_n4, mult_170_G2_n3, mult_170_G2_n2,
         mult_170_G2_n1, mult_172_n119, mult_172_n118, mult_172_n117,
         mult_172_n116, mult_172_n115, mult_172_n114, mult_172_n113,
         mult_172_n112, mult_172_n111, mult_172_n110, mult_172_n109,
         mult_172_n108, mult_172_n69, mult_172_n68, mult_172_n67, mult_172_n65,
         mult_172_n64, mult_172_n63, mult_172_n62, mult_172_n61, mult_172_n60,
         mult_172_n59, mult_172_n58, mult_172_n57, mult_172_n55, mult_172_n54,
         mult_172_n53, mult_172_n52, mult_172_n51, mult_172_n50, mult_172_n49,
         mult_172_n48, mult_172_n47, mult_172_n46, mult_172_n45, mult_172_n44,
         mult_172_n43, mult_172_n42, mult_172_n41, mult_172_n40, mult_172_n39,
         mult_172_n38, mult_172_n37, mult_172_n36, mult_172_n35, mult_172_n34,
         mult_172_n33, mult_172_n32, mult_172_n31, mult_172_n30, mult_172_n29,
         mult_172_n27, mult_172_n26, mult_172_n25, mult_172_n24, mult_172_n23,
         mult_172_n22, mult_172_n21, mult_172_n20, mult_172_n19, mult_172_n18,
         mult_172_n17, mult_172_n16, mult_172_n15, mult_172_n14, mult_172_n13,
         mult_172_n12, mult_172_n11, mult_172_n10, mult_172_n9, mult_172_n8,
         mult_172_n7, mult_172_n6, mult_172_n5, mult_172_n4, mult_172_n3,
         mult_172_n2, mult_172_n1, mult_170_n119, mult_170_n118, mult_170_n117,
         mult_170_n116, mult_170_n115, mult_170_n114, mult_170_n113,
         mult_170_n112, mult_170_n111, mult_170_n110, mult_170_n109,
         mult_170_n108, mult_170_n69, mult_170_n68, mult_170_n67, mult_170_n65,
         mult_170_n64, mult_170_n63, mult_170_n62, mult_170_n61, mult_170_n60,
         mult_170_n59, mult_170_n58, mult_170_n57, mult_170_n55, mult_170_n54,
         mult_170_n53, mult_170_n52, mult_170_n51, mult_170_n50, mult_170_n49,
         mult_170_n48, mult_170_n47, mult_170_n46, mult_170_n45, mult_170_n44,
         mult_170_n43, mult_170_n42, mult_170_n41, mult_170_n40, mult_170_n39,
         mult_170_n38, mult_170_n37, mult_170_n36, mult_170_n35, mult_170_n34,
         mult_170_n33, mult_170_n32, mult_170_n31, mult_170_n30, mult_170_n29,
         mult_170_n27, mult_170_n26, mult_170_n25, mult_170_n24, mult_170_n23,
         mult_170_n22, mult_170_n21, mult_170_n20, mult_170_n19, mult_170_n18,
         mult_170_n17, mult_170_n16, mult_170_n15, mult_170_n14, mult_170_n13,
         mult_170_n12, mult_170_n11, mult_170_n10, mult_170_n9, mult_170_n8,
         mult_170_n7, mult_170_n6, mult_170_n5, mult_170_n4, mult_170_n3,
         mult_170_n2, mult_170_n1, mult_171_n119, mult_171_n118, mult_171_n117,
         mult_171_n116, mult_171_n115, mult_171_n114, mult_171_n113,
         mult_171_n112, mult_171_n111, mult_171_n110, mult_171_n109,
         mult_171_n108, mult_171_n69, mult_171_n68, mult_171_n67, mult_171_n65,
         mult_171_n64, mult_171_n63, mult_171_n62, mult_171_n61, mult_171_n60,
         mult_171_n59, mult_171_n58, mult_171_n57, mult_171_n55, mult_171_n54,
         mult_171_n53, mult_171_n52, mult_171_n51, mult_171_n50, mult_171_n49,
         mult_171_n48, mult_171_n47, mult_171_n46, mult_171_n45, mult_171_n44,
         mult_171_n43, mult_171_n42, mult_171_n41, mult_171_n40, mult_171_n39,
         mult_171_n38, mult_171_n37, mult_171_n36, mult_171_n35, mult_171_n34,
         mult_171_n33, mult_171_n32, mult_171_n31, mult_171_n30, mult_171_n29,
         mult_171_n27, mult_171_n26, mult_171_n25, mult_171_n24, mult_171_n23,
         mult_171_n22, mult_171_n21, mult_171_n20, mult_171_n19, mult_171_n18,
         mult_171_n17, mult_171_n16, mult_171_n15, mult_171_n14, mult_171_n13,
         mult_171_n12, mult_171_n11, mult_171_n10, mult_171_n9, mult_171_n8,
         mult_171_n7, mult_171_n6, mult_171_n5, mult_171_n4, mult_171_n3,
         mult_171_n2, mult_171_n1, mult_172_G4_n119, mult_172_G4_n118,
         mult_172_G4_n117, mult_172_G4_n116, mult_172_G4_n115,
         mult_172_G4_n114, mult_172_G4_n113, mult_172_G4_n112,
         mult_172_G4_n111, mult_172_G4_n110, mult_172_G4_n109,
         mult_172_G4_n108, mult_172_G4_n69, mult_172_G4_n68, mult_172_G4_n67,
         mult_172_G4_n65, mult_172_G4_n64, mult_172_G4_n63, mult_172_G4_n62,
         mult_172_G4_n61, mult_172_G4_n60, mult_172_G4_n59, mult_172_G4_n58,
         mult_172_G4_n57, mult_172_G4_n55, mult_172_G4_n54, mult_172_G4_n53,
         mult_172_G4_n52, mult_172_G4_n51, mult_172_G4_n50, mult_172_G4_n49,
         mult_172_G4_n48, mult_172_G4_n47, mult_172_G4_n46, mult_172_G4_n45,
         mult_172_G4_n44, mult_172_G4_n43, mult_172_G4_n42, mult_172_G4_n41,
         mult_172_G4_n40, mult_172_G4_n39, mult_172_G4_n38, mult_172_G4_n37,
         mult_172_G4_n36, mult_172_G4_n35, mult_172_G4_n34, mult_172_G4_n33,
         mult_172_G4_n32, mult_172_G4_n31, mult_172_G4_n30, mult_172_G4_n29,
         mult_172_G4_n27, mult_172_G4_n26, mult_172_G4_n25, mult_172_G4_n24,
         mult_172_G4_n23, mult_172_G4_n22, mult_172_G4_n21, mult_172_G4_n20,
         mult_172_G4_n19, mult_172_G4_n18, mult_172_G4_n17, mult_172_G4_n16,
         mult_172_G4_n15, mult_172_G4_n14, mult_172_G4_n13, mult_172_G4_n12,
         mult_172_G4_n11, mult_172_G4_n10, mult_172_G4_n9, mult_172_G4_n8,
         mult_172_G4_n7, mult_172_G4_n6, mult_172_G4_n5, mult_172_G4_n4,
         mult_172_G4_n3, mult_172_G4_n2, mult_172_G4_n1, mult_170_G4_n119,
         mult_170_G4_n118, mult_170_G4_n117, mult_170_G4_n116,
         mult_170_G4_n115, mult_170_G4_n114, mult_170_G4_n113,
         mult_170_G4_n112, mult_170_G4_n111, mult_170_G4_n110,
         mult_170_G4_n109, mult_170_G4_n108, mult_170_G4_n69, mult_170_G4_n68,
         mult_170_G4_n67, mult_170_G4_n65, mult_170_G4_n64, mult_170_G4_n63,
         mult_170_G4_n62, mult_170_G4_n61, mult_170_G4_n60, mult_170_G4_n59,
         mult_170_G4_n58, mult_170_G4_n57, mult_170_G4_n55, mult_170_G4_n54,
         mult_170_G4_n53, mult_170_G4_n52, mult_170_G4_n51, mult_170_G4_n50,
         mult_170_G4_n49, mult_170_G4_n48, mult_170_G4_n47, mult_170_G4_n46,
         mult_170_G4_n45, mult_170_G4_n44, mult_170_G4_n43, mult_170_G4_n42,
         mult_170_G4_n41, mult_170_G4_n40, mult_170_G4_n39, mult_170_G4_n38,
         mult_170_G4_n37, mult_170_G4_n36, mult_170_G4_n35, mult_170_G4_n34,
         mult_170_G4_n33, mult_170_G4_n32, mult_170_G4_n31, mult_170_G4_n30,
         mult_170_G4_n29, mult_170_G4_n27, mult_170_G4_n26, mult_170_G4_n25,
         mult_170_G4_n24, mult_170_G4_n23, mult_170_G4_n22, mult_170_G4_n21,
         mult_170_G4_n20, mult_170_G4_n19, mult_170_G4_n18, mult_170_G4_n17,
         mult_170_G4_n16, mult_170_G4_n15, mult_170_G4_n14, mult_170_G4_n13,
         mult_170_G4_n12, mult_170_G4_n11, mult_170_G4_n10, mult_170_G4_n9,
         mult_170_G4_n8, mult_170_G4_n7, mult_170_G4_n6, mult_170_G4_n5,
         mult_170_G4_n4, mult_170_G4_n3, mult_170_G4_n2, mult_170_G4_n1,
         mult_171_G4_n119, mult_171_G4_n118, mult_171_G4_n117,
         mult_171_G4_n116, mult_171_G4_n115, mult_171_G4_n114,
         mult_171_G4_n113, mult_171_G4_n112, mult_171_G4_n111,
         mult_171_G4_n110, mult_171_G4_n109, mult_171_G4_n108, mult_171_G4_n69,
         mult_171_G4_n68, mult_171_G4_n67, mult_171_G4_n65, mult_171_G4_n64,
         mult_171_G4_n63, mult_171_G4_n62, mult_171_G4_n61, mult_171_G4_n60,
         mult_171_G4_n59, mult_171_G4_n58, mult_171_G4_n57, mult_171_G4_n55,
         mult_171_G4_n54, mult_171_G4_n53, mult_171_G4_n52, mult_171_G4_n51,
         mult_171_G4_n50, mult_171_G4_n49, mult_171_G4_n48, mult_171_G4_n47,
         mult_171_G4_n46, mult_171_G4_n45, mult_171_G4_n44, mult_171_G4_n43,
         mult_171_G4_n42, mult_171_G4_n41, mult_171_G4_n40, mult_171_G4_n39,
         mult_171_G4_n38, mult_171_G4_n37, mult_171_G4_n36, mult_171_G4_n35,
         mult_171_G4_n34, mult_171_G4_n33, mult_171_G4_n32, mult_171_G4_n31,
         mult_171_G4_n30, mult_171_G4_n29, mult_171_G4_n27, mult_171_G4_n26,
         mult_171_G4_n25, mult_171_G4_n24, mult_171_G4_n23, mult_171_G4_n22,
         mult_171_G4_n21, mult_171_G4_n20, mult_171_G4_n19, mult_171_G4_n18,
         mult_171_G4_n17, mult_171_G4_n16, mult_171_G4_n15, mult_171_G4_n14,
         mult_171_G4_n13, mult_171_G4_n12, mult_171_G4_n11, mult_171_G4_n10,
         mult_171_G4_n9, mult_171_G4_n8, mult_171_G4_n7, mult_171_G4_n6,
         mult_171_G4_n5, mult_171_G4_n4, mult_171_G4_n3, mult_171_G4_n2,
         mult_171_G4_n1, mult_170_G3_n119, mult_170_G3_n118, mult_170_G3_n117,
         mult_170_G3_n116, mult_170_G3_n115, mult_170_G3_n114,
         mult_170_G3_n113, mult_170_G3_n112, mult_170_G3_n111,
         mult_170_G3_n110, mult_170_G3_n109, mult_170_G3_n108, mult_170_G3_n69,
         mult_170_G3_n68, mult_170_G3_n67, mult_170_G3_n65, mult_170_G3_n64,
         mult_170_G3_n63, mult_170_G3_n62, mult_170_G3_n61, mult_170_G3_n60,
         mult_170_G3_n59, mult_170_G3_n58, mult_170_G3_n57, mult_170_G3_n55,
         mult_170_G3_n54, mult_170_G3_n53, mult_170_G3_n52, mult_170_G3_n51,
         mult_170_G3_n50, mult_170_G3_n49, mult_170_G3_n48, mult_170_G3_n47,
         mult_170_G3_n46, mult_170_G3_n45, mult_170_G3_n44, mult_170_G3_n43,
         mult_170_G3_n42, mult_170_G3_n41, mult_170_G3_n40, mult_170_G3_n39,
         mult_170_G3_n38, mult_170_G3_n37, mult_170_G3_n36, mult_170_G3_n35,
         mult_170_G3_n34, mult_170_G3_n33, mult_170_G3_n32, mult_170_G3_n31,
         mult_170_G3_n30, mult_170_G3_n29, mult_170_G3_n27, mult_170_G3_n26,
         mult_170_G3_n25, mult_170_G3_n24, mult_170_G3_n23, mult_170_G3_n22,
         mult_170_G3_n21, mult_170_G3_n20, mult_170_G3_n19, mult_170_G3_n18,
         mult_170_G3_n17, mult_170_G3_n16, mult_170_G3_n15, mult_170_G3_n14,
         mult_170_G3_n13, mult_170_G3_n12, mult_170_G3_n11, mult_170_G3_n10,
         mult_170_G3_n9, mult_170_G3_n8, mult_170_G3_n7, mult_170_G3_n6,
         mult_170_G3_n5, mult_170_G3_n4, mult_170_G3_n3, mult_170_G3_n2,
         mult_170_G3_n1, mult_172_G3_n119, mult_172_G3_n118, mult_172_G3_n117,
         mult_172_G3_n116, mult_172_G3_n115, mult_172_G3_n114,
         mult_172_G3_n113, mult_172_G3_n112, mult_172_G3_n111,
         mult_172_G3_n110, mult_172_G3_n109, mult_172_G3_n108, mult_172_G3_n69,
         mult_172_G3_n68, mult_172_G3_n67, mult_172_G3_n65, mult_172_G3_n64,
         mult_172_G3_n63, mult_172_G3_n62, mult_172_G3_n61, mult_172_G3_n60,
         mult_172_G3_n59, mult_172_G3_n58, mult_172_G3_n57, mult_172_G3_n55,
         mult_172_G3_n54, mult_172_G3_n53, mult_172_G3_n52, mult_172_G3_n51,
         mult_172_G3_n50, mult_172_G3_n49, mult_172_G3_n48, mult_172_G3_n47,
         mult_172_G3_n46, mult_172_G3_n45, mult_172_G3_n44, mult_172_G3_n43,
         mult_172_G3_n42, mult_172_G3_n41, mult_172_G3_n40, mult_172_G3_n39,
         mult_172_G3_n38, mult_172_G3_n37, mult_172_G3_n36, mult_172_G3_n35,
         mult_172_G3_n34, mult_172_G3_n33, mult_172_G3_n32, mult_172_G3_n31,
         mult_172_G3_n30, mult_172_G3_n29, mult_172_G3_n27, mult_172_G3_n26,
         mult_172_G3_n25, mult_172_G3_n24, mult_172_G3_n23, mult_172_G3_n22,
         mult_172_G3_n21, mult_172_G3_n20, mult_172_G3_n19, mult_172_G3_n18,
         mult_172_G3_n17, mult_172_G3_n16, mult_172_G3_n15, mult_172_G3_n14,
         mult_172_G3_n13, mult_172_G3_n12, mult_172_G3_n11, mult_172_G3_n10,
         mult_172_G3_n9, mult_172_G3_n8, mult_172_G3_n7, mult_172_G3_n6,
         mult_172_G3_n5, mult_172_G3_n4, mult_172_G3_n3, mult_172_G3_n2,
         mult_172_G3_n1, mult_171_G3_n119, mult_171_G3_n118, mult_171_G3_n117,
         mult_171_G3_n116, mult_171_G3_n115, mult_171_G3_n114,
         mult_171_G3_n113, mult_171_G3_n112, mult_171_G3_n111,
         mult_171_G3_n110, mult_171_G3_n109, mult_171_G3_n108, mult_171_G3_n69,
         mult_171_G3_n68, mult_171_G3_n67, mult_171_G3_n65, mult_171_G3_n64,
         mult_171_G3_n63, mult_171_G3_n62, mult_171_G3_n61, mult_171_G3_n60,
         mult_171_G3_n59, mult_171_G3_n58, mult_171_G3_n57, mult_171_G3_n55,
         mult_171_G3_n54, mult_171_G3_n53, mult_171_G3_n52, mult_171_G3_n51,
         mult_171_G3_n50, mult_171_G3_n49, mult_171_G3_n48, mult_171_G3_n47,
         mult_171_G3_n46, mult_171_G3_n45, mult_171_G3_n44, mult_171_G3_n43,
         mult_171_G3_n42, mult_171_G3_n41, mult_171_G3_n40, mult_171_G3_n39,
         mult_171_G3_n38, mult_171_G3_n37, mult_171_G3_n36, mult_171_G3_n35,
         mult_171_G3_n34, mult_171_G3_n33, mult_171_G3_n32, mult_171_G3_n31,
         mult_171_G3_n30, mult_171_G3_n29, mult_171_G3_n27, mult_171_G3_n26,
         mult_171_G3_n25, mult_171_G3_n24, mult_171_G3_n23, mult_171_G3_n22,
         mult_171_G3_n21, mult_171_G3_n20, mult_171_G3_n19, mult_171_G3_n18,
         mult_171_G3_n17, mult_171_G3_n16, mult_171_G3_n15, mult_171_G3_n14,
         mult_171_G3_n13, mult_171_G3_n12, mult_171_G3_n11, mult_171_G3_n10,
         mult_171_G3_n9, mult_171_G3_n8, mult_171_G3_n7, mult_171_G3_n6,
         mult_171_G3_n5, mult_171_G3_n4, mult_171_G3_n3, mult_171_G3_n2,
         mult_171_G3_n1, mult_179_n101, mult_179_n100, mult_179_n99,
         mult_179_n98, mult_179_n97, mult_179_n96, mult_179_n95, mult_179_n94,
         mult_179_n93, mult_179_n92, mult_179_n56, mult_179_n55, mult_179_n54,
         mult_179_n53, mult_179_n52, mult_179_n51, mult_179_n50, mult_179_n49,
         mult_179_n48, mult_179_n47, mult_179_n46, mult_179_n45, mult_179_n43,
         mult_179_n42, mult_179_n41, mult_179_n39, mult_179_n38, mult_179_n37,
         mult_179_n36, mult_179_n35, mult_179_n34, mult_179_n33, mult_179_n32,
         mult_179_n31, mult_179_n30, mult_179_n29, mult_179_n28, mult_179_n27,
         mult_179_n26, mult_179_n25, mult_179_n24, mult_179_n23, mult_179_n22,
         mult_179_n21, mult_179_n20, mult_179_n19, mult_179_n18, mult_179_n17,
         mult_179_n16, mult_179_n15, mult_179_n14, mult_179_n13, mult_179_n12,
         mult_179_n11, mult_179_n10, mult_179_n9, mult_179_n8, mult_179_n7,
         mult_179_n6, mult_179_n5, mult_179_n4, mult_179_n3, mult_179_n2,
         mult_179_n1, mult_182_n101, mult_182_n100, mult_182_n99, mult_182_n98,
         mult_182_n97, mult_182_n96, mult_182_n95, mult_182_n94, mult_182_n93,
         mult_182_n92, mult_182_n56, mult_182_n55, mult_182_n54, mult_182_n53,
         mult_182_n52, mult_182_n51, mult_182_n50, mult_182_n49, mult_182_n48,
         mult_182_n47, mult_182_n46, mult_182_n45, mult_182_n43, mult_182_n42,
         mult_182_n41, mult_182_n39, mult_182_n38, mult_182_n37, mult_182_n36,
         mult_182_n35, mult_182_n34, mult_182_n33, mult_182_n32, mult_182_n31,
         mult_182_n30, mult_182_n29, mult_182_n28, mult_182_n27, mult_182_n26,
         mult_182_n25, mult_182_n24, mult_182_n23, mult_182_n22, mult_182_n21,
         mult_182_n20, mult_182_n19, mult_182_n18, mult_182_n17, mult_182_n16,
         mult_182_n15, mult_182_n14, mult_182_n13, mult_182_n12, mult_182_n11,
         mult_182_n10, mult_182_n9, mult_182_n8, mult_182_n7, mult_182_n6,
         mult_182_n5, mult_182_n4, mult_182_n3, mult_182_n2, mult_182_n1,
         mult_176_n101, mult_176_n100, mult_176_n99, mult_176_n98,
         mult_176_n97, mult_176_n96, mult_176_n95, mult_176_n94, mult_176_n93,
         mult_176_n92, mult_176_n56, mult_176_n55, mult_176_n54, mult_176_n53,
         mult_176_n52, mult_176_n51, mult_176_n50, mult_176_n49, mult_176_n48,
         mult_176_n47, mult_176_n46, mult_176_n45, mult_176_n43, mult_176_n42,
         mult_176_n41, mult_176_n39, mult_176_n38, mult_176_n37, mult_176_n36,
         mult_176_n35, mult_176_n34, mult_176_n33, mult_176_n32, mult_176_n31,
         mult_176_n30, mult_176_n29, mult_176_n28, mult_176_n27, mult_176_n26,
         mult_176_n25, mult_176_n24, mult_176_n23, mult_176_n22, mult_176_n21,
         mult_176_n20, mult_176_n19, mult_176_n18, mult_176_n17, mult_176_n16,
         mult_176_n15, mult_176_n14, mult_176_n13, mult_176_n12, mult_176_n11,
         mult_176_n10, mult_176_n9, mult_176_n8, mult_176_n7, mult_176_n6,
         mult_176_n5, mult_176_n4, mult_176_n3, mult_176_n2, mult_176_n1;
  wire   [4:0] x_3k2_p;
  wire   [4:0] x_3k_p;
  wire   [4:0] x_3k1_p;
  wire   [24:0] b_p;
  wire   [23:0] s_1p;
  wire   [23:0] s_2p;
  wire   [23:0] s_3p;
  wire   [8:0] s_11_p;
  wire   [8:0] s_21_p;
  wire   [8:0] s_31_p;
  wire   [9:5] add_146_carry;
  wire   [9:5] add_145_carry;
  wire   [9:5] add_144_carry;
  wire   [9:5] add_143_carry;
  wire   [9:5] add_141_carry;
  wire   [9:5] add_140_carry;
  wire   [9:5] add_139_carry;
  wire   [9:5] add_138_carry;
  wire   [9:5] add_136_carry;
  wire   [9:5] add_135_carry;
  wire   [9:5] add_134_carry;
  wire   [9:5] add_133_carry;
  wire   [8:2] add_1_root_add_0_root_add_232_carry;
  wire   [8:2] add_0_root_add_0_root_add_232_carry;
  wire   [8:2] add_1_root_add_0_root_add_227_carry;
  wire   [8:2] add_0_root_add_0_root_add_227_carry;
  wire   [8:2] add_1_root_add_0_root_add_237_carry;
  wire   [8:2] add_0_root_add_0_root_add_237_carry;
  wire   [9:2] add_1_root_add_0_root_add_230_carry;
  wire   [9:2] add_0_root_add_0_root_add_230_carry;
  wire   [9:2] add_1_root_add_0_root_add_225_carry;
  wire   [9:2] add_0_root_add_0_root_add_225_carry;
  wire   [9:2] add_1_root_add_0_root_add_235_carry;
  wire   [9:2] add_0_root_add_0_root_add_235_carry;

  BUF_X1 U27 ( .A(RST_n), .Z(n25) );
  BUF_X1 U28 ( .A(RST_n), .Z(n26) );
  BUF_X1 U29 ( .A(RST_n), .Z(n27) );
  BUF_X1 U30 ( .A(RST_n), .Z(n28) );
  BUF_X1 U31 ( .A(RST_n), .Z(n29) );
  CLKBUF_X1 U32 ( .A(RST_n), .Z(n30) );
  DFFR_X1 FF1_Q_reg ( .D(VIN), .CK(CLK), .RN(n25), .Q(VIN_d1) );
  DFFR_X1 FF2_Q_reg ( .D(VIN_d1), .CK(CLK), .RN(n25), .Q(VIN_d2) );
  DFFR_X1 FF3_Q_reg ( .D(VIN_d2), .CK(CLK), .RN(n25), .Q(VIN_d3) );
  DFFR_X1 FF4_Q_reg ( .D(VIN_d3), .CK(CLK), .RN(n25), .Q(VIN_d) );
  DFFR_X1 FF5_Q_reg ( .D(VIN_d), .CK(CLK), .RN(n25), .Q(VOUT) );
  INV_X1 Reg_x3k_U23 ( .A(n25), .ZN(Reg_x3k_n1) );
  AOI22_X1 Reg_x3k_U22 ( .A1(DIN_3k[7]), .A2(Reg_x3k_n12), .B1(x3k_ext_0__7_), 
        .B2(Reg_x3k_n13), .ZN(Reg_x3k_n20) );
  INV_X1 Reg_x3k_U21 ( .A(Reg_x3k_n20), .ZN(Reg_x3k_n3) );
  AOI22_X1 Reg_x3k_U20 ( .A1(DIN_3k[6]), .A2(Reg_x3k_n12), .B1(x3k_ext_0__6_), 
        .B2(Reg_x3k_n13), .ZN(Reg_x3k_n19) );
  INV_X1 Reg_x3k_U19 ( .A(Reg_x3k_n19), .ZN(Reg_x3k_n4) );
  AOI22_X1 Reg_x3k_U18 ( .A1(DIN_3k[5]), .A2(Reg_x3k_n12), .B1(x3k_ext_0__5_), 
        .B2(Reg_x3k_n13), .ZN(Reg_x3k_n18) );
  INV_X1 Reg_x3k_U17 ( .A(Reg_x3k_n18), .ZN(Reg_x3k_n5) );
  AOI22_X1 Reg_x3k_U16 ( .A1(DIN_3k[4]), .A2(Reg_x3k_n12), .B1(x3k_ext_0__4_), 
        .B2(Reg_x3k_n13), .ZN(Reg_x3k_n17) );
  INV_X1 Reg_x3k_U15 ( .A(Reg_x3k_n17), .ZN(Reg_x3k_n6) );
  AOI22_X1 Reg_x3k_U14 ( .A1(DIN_3k[3]), .A2(Reg_x3k_n12), .B1(x3k_ext_0__3_), 
        .B2(Reg_x3k_n13), .ZN(Reg_x3k_n16) );
  INV_X1 Reg_x3k_U13 ( .A(Reg_x3k_n16), .ZN(Reg_x3k_n7) );
  AOI22_X1 Reg_x3k_U12 ( .A1(DIN_3k[1]), .A2(Reg_x3k_n12), .B1(x3k_ext_0__1_), 
        .B2(Reg_x3k_n13), .ZN(Reg_x3k_n14) );
  INV_X1 Reg_x3k_U11 ( .A(Reg_x3k_n14), .ZN(Reg_x3k_n9) );
  AOI22_X1 Reg_x3k_U10 ( .A1(DIN_3k[0]), .A2(Reg_x3k_n12), .B1(x3k_ext_0__0_), 
        .B2(Reg_x3k_n13), .ZN(Reg_x3k_n11) );
  INV_X1 Reg_x3k_U9 ( .A(Reg_x3k_n11), .ZN(Reg_x3k_n10) );
  AOI22_X1 Reg_x3k_U8 ( .A1(DIN_3k[2]), .A2(Reg_x3k_n12), .B1(x3k_ext_0__2_), 
        .B2(Reg_x3k_n13), .ZN(Reg_x3k_n15) );
  INV_X1 Reg_x3k_U7 ( .A(Reg_x3k_n15), .ZN(Reg_x3k_n8) );
  AOI22_X1 Reg_x3k_U6 ( .A1(DIN_3k[8]), .A2(Reg_x3k_n12), .B1(x3k_ext_0__9_), 
        .B2(Reg_x3k_n13), .ZN(Reg_x3k_n21) );
  INV_X1 Reg_x3k_U5 ( .A(Reg_x3k_n21), .ZN(Reg_x3k_n2) );
  NOR2_X1 Reg_x3k_U4 ( .A1(VIN), .A2(Reg_x3k_n1), .ZN(Reg_x3k_n13) );
  NOR2_X1 Reg_x3k_U3 ( .A1(Reg_x3k_n1), .A2(Reg_x3k_n13), .ZN(Reg_x3k_n12) );
  DFF_X1 Reg_x3k_Q_reg_0_ ( .D(Reg_x3k_n10), .CK(CLK), .Q(x3k_ext_0__0_) );
  DFF_X1 Reg_x3k_Q_reg_1_ ( .D(Reg_x3k_n9), .CK(CLK), .Q(x3k_ext_0__1_) );
  DFF_X1 Reg_x3k_Q_reg_2_ ( .D(Reg_x3k_n8), .CK(CLK), .Q(x3k_ext_0__2_) );
  DFF_X1 Reg_x3k_Q_reg_3_ ( .D(Reg_x3k_n7), .CK(CLK), .Q(x3k_ext_0__3_) );
  DFF_X1 Reg_x3k_Q_reg_4_ ( .D(Reg_x3k_n6), .CK(CLK), .Q(x3k_ext_0__4_) );
  DFF_X1 Reg_x3k_Q_reg_5_ ( .D(Reg_x3k_n5), .CK(CLK), .Q(x3k_ext_0__5_) );
  DFF_X1 Reg_x3k_Q_reg_6_ ( .D(Reg_x3k_n4), .CK(CLK), .Q(x3k_ext_0__6_) );
  DFF_X1 Reg_x3k_Q_reg_7_ ( .D(Reg_x3k_n3), .CK(CLK), .Q(x3k_ext_0__7_) );
  DFF_X1 Reg_x3k_Q_reg_8_ ( .D(Reg_x3k_n2), .CK(CLK), .Q(x3k_ext_0__9_) );
  INV_X1 Reg_x3k1_U23 ( .A(n28), .ZN(Reg_x3k1_n1) );
  AOI22_X1 Reg_x3k1_U22 ( .A1(DIN_3k1[8]), .A2(Reg_x3k1_n31), .B1(
        x3k1_ext_0__9_), .B2(Reg_x3k1_n30), .ZN(Reg_x3k1_n22) );
  INV_X1 Reg_x3k1_U21 ( .A(Reg_x3k1_n22), .ZN(Reg_x3k1_n2) );
  AOI22_X1 Reg_x3k1_U20 ( .A1(DIN_3k1[7]), .A2(Reg_x3k1_n31), .B1(
        x3k1_ext_0__7_), .B2(Reg_x3k1_n30), .ZN(Reg_x3k1_n23) );
  INV_X1 Reg_x3k1_U19 ( .A(Reg_x3k1_n23), .ZN(Reg_x3k1_n3) );
  AOI22_X1 Reg_x3k1_U18 ( .A1(DIN_3k1[6]), .A2(Reg_x3k1_n31), .B1(
        x3k1_ext_0__6_), .B2(Reg_x3k1_n30), .ZN(Reg_x3k1_n24) );
  INV_X1 Reg_x3k1_U17 ( .A(Reg_x3k1_n24), .ZN(Reg_x3k1_n4) );
  AOI22_X1 Reg_x3k1_U16 ( .A1(DIN_3k1[5]), .A2(Reg_x3k1_n31), .B1(
        x3k1_ext_0__5_), .B2(Reg_x3k1_n30), .ZN(Reg_x3k1_n25) );
  INV_X1 Reg_x3k1_U15 ( .A(Reg_x3k1_n25), .ZN(Reg_x3k1_n5) );
  AOI22_X1 Reg_x3k1_U14 ( .A1(DIN_3k1[4]), .A2(Reg_x3k1_n31), .B1(
        x3k1_ext_0__4_), .B2(Reg_x3k1_n30), .ZN(Reg_x3k1_n26) );
  INV_X1 Reg_x3k1_U13 ( .A(Reg_x3k1_n26), .ZN(Reg_x3k1_n6) );
  AOI22_X1 Reg_x3k1_U12 ( .A1(DIN_3k1[3]), .A2(Reg_x3k1_n31), .B1(
        x3k1_ext_0__3_), .B2(Reg_x3k1_n30), .ZN(Reg_x3k1_n27) );
  INV_X1 Reg_x3k1_U11 ( .A(Reg_x3k1_n27), .ZN(Reg_x3k1_n7) );
  AOI22_X1 Reg_x3k1_U10 ( .A1(DIN_3k1[2]), .A2(Reg_x3k1_n31), .B1(
        x3k1_ext_0__2_), .B2(Reg_x3k1_n30), .ZN(Reg_x3k1_n28) );
  INV_X1 Reg_x3k1_U9 ( .A(Reg_x3k1_n28), .ZN(Reg_x3k1_n8) );
  AOI22_X1 Reg_x3k1_U8 ( .A1(DIN_3k1[1]), .A2(Reg_x3k1_n31), .B1(
        x3k1_ext_0__1_), .B2(Reg_x3k1_n30), .ZN(Reg_x3k1_n29) );
  INV_X1 Reg_x3k1_U7 ( .A(Reg_x3k1_n29), .ZN(Reg_x3k1_n9) );
  AOI22_X1 Reg_x3k1_U6 ( .A1(DIN_3k1[0]), .A2(Reg_x3k1_n31), .B1(
        x3k1_ext_0__0_), .B2(Reg_x3k1_n30), .ZN(Reg_x3k1_n32) );
  INV_X1 Reg_x3k1_U5 ( .A(Reg_x3k1_n32), .ZN(Reg_x3k1_n10) );
  NOR2_X1 Reg_x3k1_U4 ( .A1(VIN), .A2(Reg_x3k1_n1), .ZN(Reg_x3k1_n30) );
  NOR2_X1 Reg_x3k1_U3 ( .A1(Reg_x3k1_n1), .A2(Reg_x3k1_n30), .ZN(Reg_x3k1_n31)
         );
  DFF_X1 Reg_x3k1_Q_reg_0_ ( .D(Reg_x3k1_n10), .CK(CLK), .Q(x3k1_ext_0__0_) );
  DFF_X1 Reg_x3k1_Q_reg_1_ ( .D(Reg_x3k1_n9), .CK(CLK), .Q(x3k1_ext_0__1_) );
  DFF_X1 Reg_x3k1_Q_reg_2_ ( .D(Reg_x3k1_n8), .CK(CLK), .Q(x3k1_ext_0__2_) );
  DFF_X1 Reg_x3k1_Q_reg_3_ ( .D(Reg_x3k1_n7), .CK(CLK), .Q(x3k1_ext_0__3_) );
  DFF_X1 Reg_x3k1_Q_reg_4_ ( .D(Reg_x3k1_n6), .CK(CLK), .Q(x3k1_ext_0__4_) );
  DFF_X1 Reg_x3k1_Q_reg_5_ ( .D(Reg_x3k1_n5), .CK(CLK), .Q(x3k1_ext_0__5_) );
  DFF_X1 Reg_x3k1_Q_reg_6_ ( .D(Reg_x3k1_n4), .CK(CLK), .Q(x3k1_ext_0__6_) );
  DFF_X1 Reg_x3k1_Q_reg_7_ ( .D(Reg_x3k1_n3), .CK(CLK), .Q(x3k1_ext_0__7_) );
  DFF_X1 Reg_x3k1_Q_reg_8_ ( .D(Reg_x3k1_n2), .CK(CLK), .Q(x3k1_ext_0__9_) );
  INV_X1 Reg_x3k2_U23 ( .A(n28), .ZN(Reg_x3k2_n1) );
  AOI22_X1 Reg_x3k2_U22 ( .A1(DIN_3k2[8]), .A2(Reg_x3k2_n31), .B1(
        x3k2_ext_0__9_), .B2(Reg_x3k2_n30), .ZN(Reg_x3k2_n22) );
  INV_X1 Reg_x3k2_U21 ( .A(Reg_x3k2_n22), .ZN(Reg_x3k2_n2) );
  AOI22_X1 Reg_x3k2_U20 ( .A1(DIN_3k2[7]), .A2(Reg_x3k2_n31), .B1(
        x3k2_ext_0__7_), .B2(Reg_x3k2_n30), .ZN(Reg_x3k2_n23) );
  INV_X1 Reg_x3k2_U19 ( .A(Reg_x3k2_n23), .ZN(Reg_x3k2_n3) );
  AOI22_X1 Reg_x3k2_U18 ( .A1(DIN_3k2[6]), .A2(Reg_x3k2_n31), .B1(
        x3k2_ext_0__6_), .B2(Reg_x3k2_n30), .ZN(Reg_x3k2_n24) );
  INV_X1 Reg_x3k2_U17 ( .A(Reg_x3k2_n24), .ZN(Reg_x3k2_n4) );
  AOI22_X1 Reg_x3k2_U16 ( .A1(DIN_3k2[5]), .A2(Reg_x3k2_n31), .B1(
        x3k2_ext_0__5_), .B2(Reg_x3k2_n30), .ZN(Reg_x3k2_n25) );
  INV_X1 Reg_x3k2_U15 ( .A(Reg_x3k2_n25), .ZN(Reg_x3k2_n5) );
  AOI22_X1 Reg_x3k2_U14 ( .A1(DIN_3k2[4]), .A2(Reg_x3k2_n31), .B1(
        x3k2_ext_0__4_), .B2(Reg_x3k2_n30), .ZN(Reg_x3k2_n26) );
  INV_X1 Reg_x3k2_U13 ( .A(Reg_x3k2_n26), .ZN(Reg_x3k2_n6) );
  AOI22_X1 Reg_x3k2_U12 ( .A1(DIN_3k2[3]), .A2(Reg_x3k2_n31), .B1(
        x3k2_ext_0__3_), .B2(Reg_x3k2_n30), .ZN(Reg_x3k2_n27) );
  INV_X1 Reg_x3k2_U11 ( .A(Reg_x3k2_n27), .ZN(Reg_x3k2_n7) );
  AOI22_X1 Reg_x3k2_U10 ( .A1(DIN_3k2[2]), .A2(Reg_x3k2_n31), .B1(
        x3k2_ext_0__2_), .B2(Reg_x3k2_n30), .ZN(Reg_x3k2_n28) );
  INV_X1 Reg_x3k2_U9 ( .A(Reg_x3k2_n28), .ZN(Reg_x3k2_n8) );
  AOI22_X1 Reg_x3k2_U8 ( .A1(DIN_3k2[1]), .A2(Reg_x3k2_n31), .B1(
        x3k2_ext_0__1_), .B2(Reg_x3k2_n30), .ZN(Reg_x3k2_n29) );
  INV_X1 Reg_x3k2_U7 ( .A(Reg_x3k2_n29), .ZN(Reg_x3k2_n9) );
  AOI22_X1 Reg_x3k2_U6 ( .A1(DIN_3k2[0]), .A2(Reg_x3k2_n31), .B1(
        x3k2_ext_0__0_), .B2(Reg_x3k2_n30), .ZN(Reg_x3k2_n32) );
  INV_X1 Reg_x3k2_U5 ( .A(Reg_x3k2_n32), .ZN(Reg_x3k2_n10) );
  NOR2_X1 Reg_x3k2_U4 ( .A1(VIN), .A2(Reg_x3k2_n1), .ZN(Reg_x3k2_n30) );
  NOR2_X1 Reg_x3k2_U3 ( .A1(Reg_x3k2_n1), .A2(Reg_x3k2_n30), .ZN(Reg_x3k2_n31)
         );
  DFF_X1 Reg_x3k2_Q_reg_0_ ( .D(Reg_x3k2_n10), .CK(CLK), .Q(x3k2_ext_0__0_) );
  DFF_X1 Reg_x3k2_Q_reg_1_ ( .D(Reg_x3k2_n9), .CK(CLK), .Q(x3k2_ext_0__1_) );
  DFF_X1 Reg_x3k2_Q_reg_2_ ( .D(Reg_x3k2_n8), .CK(CLK), .Q(x3k2_ext_0__2_) );
  DFF_X1 Reg_x3k2_Q_reg_3_ ( .D(Reg_x3k2_n7), .CK(CLK), .Q(x3k2_ext_0__3_) );
  DFF_X1 Reg_x3k2_Q_reg_4_ ( .D(Reg_x3k2_n6), .CK(CLK), .Q(x3k2_ext_0__4_) );
  DFF_X1 Reg_x3k2_Q_reg_5_ ( .D(Reg_x3k2_n5), .CK(CLK), .Q(x3k2_ext_0__5_) );
  DFF_X1 Reg_x3k2_Q_reg_6_ ( .D(Reg_x3k2_n4), .CK(CLK), .Q(x3k2_ext_0__6_) );
  DFF_X1 Reg_x3k2_Q_reg_7_ ( .D(Reg_x3k2_n3), .CK(CLK), .Q(x3k2_ext_0__7_) );
  DFF_X1 Reg_x3k2_Q_reg_8_ ( .D(Reg_x3k2_n2), .CK(CLK), .Q(x3k2_ext_0__9_) );
  INV_X1 Reg_b0_U23 ( .A(n29), .ZN(Reg_b0_n1) );
  AOI22_X1 Reg_b0_U22 ( .A1(b0[8]), .A2(Reg_b0_n31), .B1(b_0__8_), .B2(
        Reg_b0_n30), .ZN(Reg_b0_n22) );
  INV_X1 Reg_b0_U21 ( .A(Reg_b0_n22), .ZN(Reg_b0_n2) );
  AOI22_X1 Reg_b0_U20 ( .A1(b0[7]), .A2(Reg_b0_n31), .B1(b_0__7_), .B2(
        Reg_b0_n30), .ZN(Reg_b0_n23) );
  INV_X1 Reg_b0_U19 ( .A(Reg_b0_n23), .ZN(Reg_b0_n3) );
  AOI22_X1 Reg_b0_U18 ( .A1(b0[6]), .A2(Reg_b0_n31), .B1(b_0__6_), .B2(
        Reg_b0_n30), .ZN(Reg_b0_n24) );
  INV_X1 Reg_b0_U17 ( .A(Reg_b0_n24), .ZN(Reg_b0_n4) );
  AOI22_X1 Reg_b0_U16 ( .A1(b0[5]), .A2(Reg_b0_n31), .B1(b_0__5_), .B2(
        Reg_b0_n30), .ZN(Reg_b0_n25) );
  INV_X1 Reg_b0_U15 ( .A(Reg_b0_n25), .ZN(Reg_b0_n5) );
  AOI22_X1 Reg_b0_U14 ( .A1(b0[4]), .A2(Reg_b0_n31), .B1(b_0__4_), .B2(
        Reg_b0_n30), .ZN(Reg_b0_n26) );
  INV_X1 Reg_b0_U13 ( .A(Reg_b0_n26), .ZN(Reg_b0_n6) );
  AOI22_X1 Reg_b0_U12 ( .A1(b0[3]), .A2(Reg_b0_n31), .B1(Reg_b0_Q_3_), .B2(
        Reg_b0_n30), .ZN(Reg_b0_n27) );
  INV_X1 Reg_b0_U11 ( .A(Reg_b0_n27), .ZN(Reg_b0_n7) );
  AOI22_X1 Reg_b0_U10 ( .A1(b0[2]), .A2(Reg_b0_n31), .B1(Reg_b0_Q_2_), .B2(
        Reg_b0_n30), .ZN(Reg_b0_n28) );
  INV_X1 Reg_b0_U9 ( .A(Reg_b0_n28), .ZN(Reg_b0_n8) );
  AOI22_X1 Reg_b0_U8 ( .A1(b0[1]), .A2(Reg_b0_n31), .B1(Reg_b0_Q_1_), .B2(
        Reg_b0_n30), .ZN(Reg_b0_n29) );
  INV_X1 Reg_b0_U7 ( .A(Reg_b0_n29), .ZN(Reg_b0_n9) );
  AOI22_X1 Reg_b0_U6 ( .A1(b0[0]), .A2(Reg_b0_n31), .B1(Reg_b0_Q_0_), .B2(
        Reg_b0_n30), .ZN(Reg_b0_n32) );
  INV_X1 Reg_b0_U5 ( .A(Reg_b0_n32), .ZN(Reg_b0_n10) );
  NOR2_X1 Reg_b0_U4 ( .A1(Reg_b0_n1), .A2(Reg_b0_n30), .ZN(Reg_b0_n31) );
  NOR2_X1 Reg_b0_U3 ( .A1(1'b1), .A2(Reg_b0_n1), .ZN(Reg_b0_n30) );
  DFF_X1 Reg_b0_Q_reg_0_ ( .D(Reg_b0_n10), .CK(CLK), .Q(Reg_b0_Q_0_) );
  DFF_X1 Reg_b0_Q_reg_1_ ( .D(Reg_b0_n9), .CK(CLK), .Q(Reg_b0_Q_1_) );
  DFF_X1 Reg_b0_Q_reg_2_ ( .D(Reg_b0_n8), .CK(CLK), .Q(Reg_b0_Q_2_) );
  DFF_X1 Reg_b0_Q_reg_3_ ( .D(Reg_b0_n7), .CK(CLK), .Q(Reg_b0_Q_3_) );
  DFF_X1 Reg_b0_Q_reg_4_ ( .D(Reg_b0_n6), .CK(CLK), .Q(b_0__4_) );
  DFF_X1 Reg_b0_Q_reg_5_ ( .D(Reg_b0_n5), .CK(CLK), .Q(b_0__5_) );
  DFF_X1 Reg_b0_Q_reg_6_ ( .D(Reg_b0_n4), .CK(CLK), .Q(b_0__6_) );
  DFF_X1 Reg_b0_Q_reg_7_ ( .D(Reg_b0_n3), .CK(CLK), .Q(b_0__7_) );
  DFF_X1 Reg_b0_Q_reg_8_ ( .D(Reg_b0_n2), .CK(CLK), .Q(b_0__8_) );
  INV_X1 Reg_b1_U23 ( .A(n29), .ZN(Reg_b1_n1) );
  AOI22_X1 Reg_b1_U22 ( .A1(b1[8]), .A2(Reg_b1_n31), .B1(b_1__8_), .B2(
        Reg_b1_n30), .ZN(Reg_b1_n22) );
  INV_X1 Reg_b1_U21 ( .A(Reg_b1_n22), .ZN(Reg_b1_n2) );
  AOI22_X1 Reg_b1_U20 ( .A1(b1[7]), .A2(Reg_b1_n31), .B1(b_1__7_), .B2(
        Reg_b1_n30), .ZN(Reg_b1_n23) );
  INV_X1 Reg_b1_U19 ( .A(Reg_b1_n23), .ZN(Reg_b1_n3) );
  AOI22_X1 Reg_b1_U18 ( .A1(b1[6]), .A2(Reg_b1_n31), .B1(b_1__6_), .B2(
        Reg_b1_n30), .ZN(Reg_b1_n24) );
  INV_X1 Reg_b1_U17 ( .A(Reg_b1_n24), .ZN(Reg_b1_n4) );
  AOI22_X1 Reg_b1_U16 ( .A1(b1[5]), .A2(Reg_b1_n31), .B1(b_1__5_), .B2(
        Reg_b1_n30), .ZN(Reg_b1_n25) );
  INV_X1 Reg_b1_U15 ( .A(Reg_b1_n25), .ZN(Reg_b1_n5) );
  AOI22_X1 Reg_b1_U14 ( .A1(b1[4]), .A2(Reg_b1_n31), .B1(b_1__4_), .B2(
        Reg_b1_n30), .ZN(Reg_b1_n26) );
  INV_X1 Reg_b1_U13 ( .A(Reg_b1_n26), .ZN(Reg_b1_n6) );
  AOI22_X1 Reg_b1_U12 ( .A1(b1[3]), .A2(Reg_b1_n31), .B1(Reg_b1_Q_3_), .B2(
        Reg_b1_n30), .ZN(Reg_b1_n27) );
  INV_X1 Reg_b1_U11 ( .A(Reg_b1_n27), .ZN(Reg_b1_n7) );
  AOI22_X1 Reg_b1_U10 ( .A1(b1[2]), .A2(Reg_b1_n31), .B1(Reg_b1_Q_2_), .B2(
        Reg_b1_n30), .ZN(Reg_b1_n28) );
  INV_X1 Reg_b1_U9 ( .A(Reg_b1_n28), .ZN(Reg_b1_n8) );
  AOI22_X1 Reg_b1_U8 ( .A1(b1[1]), .A2(Reg_b1_n31), .B1(Reg_b1_Q_1_), .B2(
        Reg_b1_n30), .ZN(Reg_b1_n29) );
  INV_X1 Reg_b1_U7 ( .A(Reg_b1_n29), .ZN(Reg_b1_n9) );
  AOI22_X1 Reg_b1_U6 ( .A1(b1[0]), .A2(Reg_b1_n31), .B1(Reg_b1_Q_0_), .B2(
        Reg_b1_n30), .ZN(Reg_b1_n32) );
  INV_X1 Reg_b1_U5 ( .A(Reg_b1_n32), .ZN(Reg_b1_n10) );
  NOR2_X1 Reg_b1_U4 ( .A1(Reg_b1_n1), .A2(Reg_b1_n30), .ZN(Reg_b1_n31) );
  NOR2_X1 Reg_b1_U3 ( .A1(1'b1), .A2(Reg_b1_n1), .ZN(Reg_b1_n30) );
  DFF_X1 Reg_b1_Q_reg_0_ ( .D(Reg_b1_n10), .CK(CLK), .Q(Reg_b1_Q_0_) );
  DFF_X1 Reg_b1_Q_reg_1_ ( .D(Reg_b1_n9), .CK(CLK), .Q(Reg_b1_Q_1_) );
  DFF_X1 Reg_b1_Q_reg_2_ ( .D(Reg_b1_n8), .CK(CLK), .Q(Reg_b1_Q_2_) );
  DFF_X1 Reg_b1_Q_reg_3_ ( .D(Reg_b1_n7), .CK(CLK), .Q(Reg_b1_Q_3_) );
  DFF_X1 Reg_b1_Q_reg_4_ ( .D(Reg_b1_n6), .CK(CLK), .Q(b_1__4_) );
  DFF_X1 Reg_b1_Q_reg_5_ ( .D(Reg_b1_n5), .CK(CLK), .Q(b_1__5_) );
  DFF_X1 Reg_b1_Q_reg_6_ ( .D(Reg_b1_n4), .CK(CLK), .Q(b_1__6_) );
  DFF_X1 Reg_b1_Q_reg_7_ ( .D(Reg_b1_n3), .CK(CLK), .Q(b_1__7_) );
  DFF_X1 Reg_b1_Q_reg_8_ ( .D(Reg_b1_n2), .CK(CLK), .Q(b_1__8_) );
  INV_X1 Reg_b2_U23 ( .A(n29), .ZN(Reg_b2_n1) );
  AOI22_X1 Reg_b2_U22 ( .A1(b2[8]), .A2(Reg_b2_n31), .B1(b_2__8_), .B2(
        Reg_b2_n30), .ZN(Reg_b2_n22) );
  INV_X1 Reg_b2_U21 ( .A(Reg_b2_n22), .ZN(Reg_b2_n2) );
  AOI22_X1 Reg_b2_U20 ( .A1(b2[7]), .A2(Reg_b2_n31), .B1(b_2__7_), .B2(
        Reg_b2_n30), .ZN(Reg_b2_n23) );
  INV_X1 Reg_b2_U19 ( .A(Reg_b2_n23), .ZN(Reg_b2_n3) );
  AOI22_X1 Reg_b2_U18 ( .A1(b2[6]), .A2(Reg_b2_n31), .B1(b_2__6_), .B2(
        Reg_b2_n30), .ZN(Reg_b2_n24) );
  INV_X1 Reg_b2_U17 ( .A(Reg_b2_n24), .ZN(Reg_b2_n4) );
  AOI22_X1 Reg_b2_U16 ( .A1(b2[5]), .A2(Reg_b2_n31), .B1(b_2__5_), .B2(
        Reg_b2_n30), .ZN(Reg_b2_n25) );
  INV_X1 Reg_b2_U15 ( .A(Reg_b2_n25), .ZN(Reg_b2_n5) );
  AOI22_X1 Reg_b2_U14 ( .A1(b2[4]), .A2(Reg_b2_n31), .B1(b_2__4_), .B2(
        Reg_b2_n30), .ZN(Reg_b2_n26) );
  INV_X1 Reg_b2_U13 ( .A(Reg_b2_n26), .ZN(Reg_b2_n6) );
  AOI22_X1 Reg_b2_U12 ( .A1(b2[3]), .A2(Reg_b2_n31), .B1(Reg_b2_Q_3_), .B2(
        Reg_b2_n30), .ZN(Reg_b2_n27) );
  INV_X1 Reg_b2_U11 ( .A(Reg_b2_n27), .ZN(Reg_b2_n7) );
  AOI22_X1 Reg_b2_U10 ( .A1(b2[2]), .A2(Reg_b2_n31), .B1(Reg_b2_Q_2_), .B2(
        Reg_b2_n30), .ZN(Reg_b2_n28) );
  INV_X1 Reg_b2_U9 ( .A(Reg_b2_n28), .ZN(Reg_b2_n8) );
  AOI22_X1 Reg_b2_U8 ( .A1(b2[1]), .A2(Reg_b2_n31), .B1(Reg_b2_Q_1_), .B2(
        Reg_b2_n30), .ZN(Reg_b2_n29) );
  INV_X1 Reg_b2_U7 ( .A(Reg_b2_n29), .ZN(Reg_b2_n9) );
  AOI22_X1 Reg_b2_U6 ( .A1(b2[0]), .A2(Reg_b2_n31), .B1(Reg_b2_Q_0_), .B2(
        Reg_b2_n30), .ZN(Reg_b2_n32) );
  INV_X1 Reg_b2_U5 ( .A(Reg_b2_n32), .ZN(Reg_b2_n10) );
  NOR2_X1 Reg_b2_U4 ( .A1(Reg_b2_n1), .A2(Reg_b2_n30), .ZN(Reg_b2_n31) );
  NOR2_X1 Reg_b2_U3 ( .A1(1'b1), .A2(Reg_b2_n1), .ZN(Reg_b2_n30) );
  DFF_X1 Reg_b2_Q_reg_0_ ( .D(Reg_b2_n10), .CK(CLK), .Q(Reg_b2_Q_0_) );
  DFF_X1 Reg_b2_Q_reg_1_ ( .D(Reg_b2_n9), .CK(CLK), .Q(Reg_b2_Q_1_) );
  DFF_X1 Reg_b2_Q_reg_2_ ( .D(Reg_b2_n8), .CK(CLK), .Q(Reg_b2_Q_2_) );
  DFF_X1 Reg_b2_Q_reg_3_ ( .D(Reg_b2_n7), .CK(CLK), .Q(Reg_b2_Q_3_) );
  DFF_X1 Reg_b2_Q_reg_4_ ( .D(Reg_b2_n6), .CK(CLK), .Q(b_2__4_) );
  DFF_X1 Reg_b2_Q_reg_5_ ( .D(Reg_b2_n5), .CK(CLK), .Q(b_2__5_) );
  DFF_X1 Reg_b2_Q_reg_6_ ( .D(Reg_b2_n4), .CK(CLK), .Q(b_2__6_) );
  DFF_X1 Reg_b2_Q_reg_7_ ( .D(Reg_b2_n3), .CK(CLK), .Q(b_2__7_) );
  DFF_X1 Reg_b2_Q_reg_8_ ( .D(Reg_b2_n2), .CK(CLK), .Q(b_2__8_) );
  INV_X1 Reg_b3_U23 ( .A(n29), .ZN(Reg_b3_n1) );
  AOI22_X1 Reg_b3_U22 ( .A1(b3[8]), .A2(Reg_b3_n31), .B1(b_3__8_), .B2(
        Reg_b3_n30), .ZN(Reg_b3_n22) );
  INV_X1 Reg_b3_U21 ( .A(Reg_b3_n22), .ZN(Reg_b3_n2) );
  AOI22_X1 Reg_b3_U20 ( .A1(b3[7]), .A2(Reg_b3_n31), .B1(b_3__7_), .B2(
        Reg_b3_n30), .ZN(Reg_b3_n23) );
  INV_X1 Reg_b3_U19 ( .A(Reg_b3_n23), .ZN(Reg_b3_n3) );
  AOI22_X1 Reg_b3_U18 ( .A1(b3[6]), .A2(Reg_b3_n31), .B1(b_3__6_), .B2(
        Reg_b3_n30), .ZN(Reg_b3_n24) );
  INV_X1 Reg_b3_U17 ( .A(Reg_b3_n24), .ZN(Reg_b3_n4) );
  AOI22_X1 Reg_b3_U16 ( .A1(b3[5]), .A2(Reg_b3_n31), .B1(b_3__5_), .B2(
        Reg_b3_n30), .ZN(Reg_b3_n25) );
  INV_X1 Reg_b3_U15 ( .A(Reg_b3_n25), .ZN(Reg_b3_n5) );
  AOI22_X1 Reg_b3_U14 ( .A1(b3[4]), .A2(Reg_b3_n31), .B1(b_3__4_), .B2(
        Reg_b3_n30), .ZN(Reg_b3_n26) );
  INV_X1 Reg_b3_U13 ( .A(Reg_b3_n26), .ZN(Reg_b3_n6) );
  AOI22_X1 Reg_b3_U12 ( .A1(b3[3]), .A2(Reg_b3_n31), .B1(Reg_b3_Q_3_), .B2(
        Reg_b3_n30), .ZN(Reg_b3_n27) );
  INV_X1 Reg_b3_U11 ( .A(Reg_b3_n27), .ZN(Reg_b3_n7) );
  AOI22_X1 Reg_b3_U10 ( .A1(b3[2]), .A2(Reg_b3_n31), .B1(Reg_b3_Q_2_), .B2(
        Reg_b3_n30), .ZN(Reg_b3_n28) );
  INV_X1 Reg_b3_U9 ( .A(Reg_b3_n28), .ZN(Reg_b3_n8) );
  AOI22_X1 Reg_b3_U8 ( .A1(b3[1]), .A2(Reg_b3_n31), .B1(Reg_b3_Q_1_), .B2(
        Reg_b3_n30), .ZN(Reg_b3_n29) );
  INV_X1 Reg_b3_U7 ( .A(Reg_b3_n29), .ZN(Reg_b3_n9) );
  AOI22_X1 Reg_b3_U6 ( .A1(b3[0]), .A2(Reg_b3_n31), .B1(Reg_b3_Q_0_), .B2(
        Reg_b3_n30), .ZN(Reg_b3_n32) );
  INV_X1 Reg_b3_U5 ( .A(Reg_b3_n32), .ZN(Reg_b3_n10) );
  NOR2_X1 Reg_b3_U4 ( .A1(Reg_b3_n1), .A2(Reg_b3_n30), .ZN(Reg_b3_n31) );
  NOR2_X1 Reg_b3_U3 ( .A1(1'b1), .A2(Reg_b3_n1), .ZN(Reg_b3_n30) );
  DFF_X1 Reg_b3_Q_reg_0_ ( .D(Reg_b3_n10), .CK(CLK), .Q(Reg_b3_Q_0_) );
  DFF_X1 Reg_b3_Q_reg_1_ ( .D(Reg_b3_n9), .CK(CLK), .Q(Reg_b3_Q_1_) );
  DFF_X1 Reg_b3_Q_reg_2_ ( .D(Reg_b3_n8), .CK(CLK), .Q(Reg_b3_Q_2_) );
  DFF_X1 Reg_b3_Q_reg_3_ ( .D(Reg_b3_n7), .CK(CLK), .Q(Reg_b3_Q_3_) );
  DFF_X1 Reg_b3_Q_reg_4_ ( .D(Reg_b3_n6), .CK(CLK), .Q(b_3__4_) );
  DFF_X1 Reg_b3_Q_reg_5_ ( .D(Reg_b3_n5), .CK(CLK), .Q(b_3__5_) );
  DFF_X1 Reg_b3_Q_reg_6_ ( .D(Reg_b3_n4), .CK(CLK), .Q(b_3__6_) );
  DFF_X1 Reg_b3_Q_reg_7_ ( .D(Reg_b3_n3), .CK(CLK), .Q(b_3__7_) );
  DFF_X1 Reg_b3_Q_reg_8_ ( .D(Reg_b3_n2), .CK(CLK), .Q(b_3__8_) );
  INV_X1 Reg_b4_U23 ( .A(n29), .ZN(Reg_b4_n1) );
  AOI22_X1 Reg_b4_U22 ( .A1(b4[8]), .A2(Reg_b4_n31), .B1(b_4__8_), .B2(
        Reg_b4_n30), .ZN(Reg_b4_n22) );
  INV_X1 Reg_b4_U21 ( .A(Reg_b4_n22), .ZN(Reg_b4_n2) );
  AOI22_X1 Reg_b4_U20 ( .A1(b4[7]), .A2(Reg_b4_n31), .B1(b_4__7_), .B2(
        Reg_b4_n30), .ZN(Reg_b4_n23) );
  INV_X1 Reg_b4_U19 ( .A(Reg_b4_n23), .ZN(Reg_b4_n3) );
  AOI22_X1 Reg_b4_U18 ( .A1(b4[6]), .A2(Reg_b4_n31), .B1(b_4__6_), .B2(
        Reg_b4_n30), .ZN(Reg_b4_n24) );
  INV_X1 Reg_b4_U17 ( .A(Reg_b4_n24), .ZN(Reg_b4_n4) );
  AOI22_X1 Reg_b4_U16 ( .A1(b4[5]), .A2(Reg_b4_n31), .B1(b_4__5_), .B2(
        Reg_b4_n30), .ZN(Reg_b4_n25) );
  INV_X1 Reg_b4_U15 ( .A(Reg_b4_n25), .ZN(Reg_b4_n5) );
  AOI22_X1 Reg_b4_U14 ( .A1(b4[4]), .A2(Reg_b4_n31), .B1(b_4__4_), .B2(
        Reg_b4_n30), .ZN(Reg_b4_n26) );
  INV_X1 Reg_b4_U13 ( .A(Reg_b4_n26), .ZN(Reg_b4_n6) );
  AOI22_X1 Reg_b4_U12 ( .A1(b4[3]), .A2(Reg_b4_n31), .B1(Reg_b4_Q_3_), .B2(
        Reg_b4_n30), .ZN(Reg_b4_n27) );
  INV_X1 Reg_b4_U11 ( .A(Reg_b4_n27), .ZN(Reg_b4_n7) );
  AOI22_X1 Reg_b4_U10 ( .A1(b4[2]), .A2(Reg_b4_n31), .B1(Reg_b4_Q_2_), .B2(
        Reg_b4_n30), .ZN(Reg_b4_n28) );
  INV_X1 Reg_b4_U9 ( .A(Reg_b4_n28), .ZN(Reg_b4_n8) );
  AOI22_X1 Reg_b4_U8 ( .A1(b4[1]), .A2(Reg_b4_n31), .B1(Reg_b4_Q_1_), .B2(
        Reg_b4_n30), .ZN(Reg_b4_n29) );
  INV_X1 Reg_b4_U7 ( .A(Reg_b4_n29), .ZN(Reg_b4_n9) );
  AOI22_X1 Reg_b4_U6 ( .A1(b4[0]), .A2(Reg_b4_n31), .B1(Reg_b4_Q_0_), .B2(
        Reg_b4_n30), .ZN(Reg_b4_n32) );
  INV_X1 Reg_b4_U5 ( .A(Reg_b4_n32), .ZN(Reg_b4_n10) );
  NOR2_X1 Reg_b4_U4 ( .A1(Reg_b4_n1), .A2(Reg_b4_n30), .ZN(Reg_b4_n31) );
  NOR2_X1 Reg_b4_U3 ( .A1(1'b1), .A2(Reg_b4_n1), .ZN(Reg_b4_n30) );
  DFF_X1 Reg_b4_Q_reg_0_ ( .D(Reg_b4_n10), .CK(CLK), .Q(Reg_b4_Q_0_) );
  DFF_X1 Reg_b4_Q_reg_1_ ( .D(Reg_b4_n9), .CK(CLK), .Q(Reg_b4_Q_1_) );
  DFF_X1 Reg_b4_Q_reg_2_ ( .D(Reg_b4_n8), .CK(CLK), .Q(Reg_b4_Q_2_) );
  DFF_X1 Reg_b4_Q_reg_3_ ( .D(Reg_b4_n7), .CK(CLK), .Q(Reg_b4_Q_3_) );
  DFF_X1 Reg_b4_Q_reg_4_ ( .D(Reg_b4_n6), .CK(CLK), .Q(b_4__4_) );
  DFF_X1 Reg_b4_Q_reg_5_ ( .D(Reg_b4_n5), .CK(CLK), .Q(b_4__5_) );
  DFF_X1 Reg_b4_Q_reg_6_ ( .D(Reg_b4_n4), .CK(CLK), .Q(b_4__6_) );
  DFF_X1 Reg_b4_Q_reg_7_ ( .D(Reg_b4_n3), .CK(CLK), .Q(b_4__7_) );
  DFF_X1 Reg_b4_Q_reg_8_ ( .D(Reg_b4_n2), .CK(CLK), .Q(b_4__8_) );
  INV_X1 Reg_y3k_U23 ( .A(n29), .ZN(Reg_y3k_n1) );
  AOI22_X1 Reg_y3k_U22 ( .A1(s_11_3__8_), .A2(Reg_y3k_n31), .B1(DOUT_3k[8]), 
        .B2(Reg_y3k_n30), .ZN(Reg_y3k_n22) );
  INV_X1 Reg_y3k_U21 ( .A(Reg_y3k_n22), .ZN(Reg_y3k_n2) );
  AOI22_X1 Reg_y3k_U20 ( .A1(s_11_3__7_), .A2(Reg_y3k_n31), .B1(DOUT_3k[7]), 
        .B2(Reg_y3k_n30), .ZN(Reg_y3k_n23) );
  INV_X1 Reg_y3k_U19 ( .A(Reg_y3k_n23), .ZN(Reg_y3k_n3) );
  AOI22_X1 Reg_y3k_U18 ( .A1(s_11_3__6_), .A2(Reg_y3k_n31), .B1(DOUT_3k[6]), 
        .B2(Reg_y3k_n30), .ZN(Reg_y3k_n24) );
  INV_X1 Reg_y3k_U17 ( .A(Reg_y3k_n24), .ZN(Reg_y3k_n4) );
  AOI22_X1 Reg_y3k_U16 ( .A1(s_11_3__5_), .A2(Reg_y3k_n31), .B1(DOUT_3k[5]), 
        .B2(Reg_y3k_n30), .ZN(Reg_y3k_n25) );
  INV_X1 Reg_y3k_U15 ( .A(Reg_y3k_n25), .ZN(Reg_y3k_n5) );
  AOI22_X1 Reg_y3k_U14 ( .A1(s_11_3__4_), .A2(Reg_y3k_n31), .B1(DOUT_3k[4]), 
        .B2(Reg_y3k_n30), .ZN(Reg_y3k_n26) );
  INV_X1 Reg_y3k_U13 ( .A(Reg_y3k_n26), .ZN(Reg_y3k_n6) );
  AOI22_X1 Reg_y3k_U12 ( .A1(s_11_3__3_), .A2(Reg_y3k_n31), .B1(DOUT_3k[3]), 
        .B2(Reg_y3k_n30), .ZN(Reg_y3k_n27) );
  INV_X1 Reg_y3k_U11 ( .A(Reg_y3k_n27), .ZN(Reg_y3k_n7) );
  AOI22_X1 Reg_y3k_U10 ( .A1(s_11_3__2_), .A2(Reg_y3k_n31), .B1(DOUT_3k[2]), 
        .B2(Reg_y3k_n30), .ZN(Reg_y3k_n28) );
  INV_X1 Reg_y3k_U9 ( .A(Reg_y3k_n28), .ZN(Reg_y3k_n8) );
  AOI22_X1 Reg_y3k_U8 ( .A1(s_11_3__1_), .A2(Reg_y3k_n31), .B1(DOUT_3k[1]), 
        .B2(Reg_y3k_n30), .ZN(Reg_y3k_n29) );
  INV_X1 Reg_y3k_U7 ( .A(Reg_y3k_n29), .ZN(Reg_y3k_n9) );
  AOI22_X1 Reg_y3k_U6 ( .A1(s_11_3__0_), .A2(Reg_y3k_n31), .B1(DOUT_3k[0]), 
        .B2(Reg_y3k_n30), .ZN(Reg_y3k_n32) );
  INV_X1 Reg_y3k_U5 ( .A(Reg_y3k_n32), .ZN(Reg_y3k_n10) );
  NOR2_X1 Reg_y3k_U4 ( .A1(VIN_d), .A2(Reg_y3k_n1), .ZN(Reg_y3k_n30) );
  NOR2_X1 Reg_y3k_U3 ( .A1(Reg_y3k_n1), .A2(Reg_y3k_n30), .ZN(Reg_y3k_n31) );
  DFF_X1 Reg_y3k_Q_reg_0_ ( .D(Reg_y3k_n10), .CK(CLK), .Q(DOUT_3k[0]) );
  DFF_X1 Reg_y3k_Q_reg_1_ ( .D(Reg_y3k_n9), .CK(CLK), .Q(DOUT_3k[1]) );
  DFF_X1 Reg_y3k_Q_reg_2_ ( .D(Reg_y3k_n8), .CK(CLK), .Q(DOUT_3k[2]) );
  DFF_X1 Reg_y3k_Q_reg_3_ ( .D(Reg_y3k_n7), .CK(CLK), .Q(DOUT_3k[3]) );
  DFF_X1 Reg_y3k_Q_reg_4_ ( .D(Reg_y3k_n6), .CK(CLK), .Q(DOUT_3k[4]) );
  DFF_X1 Reg_y3k_Q_reg_5_ ( .D(Reg_y3k_n5), .CK(CLK), .Q(DOUT_3k[5]) );
  DFF_X1 Reg_y3k_Q_reg_6_ ( .D(Reg_y3k_n4), .CK(CLK), .Q(DOUT_3k[6]) );
  DFF_X1 Reg_y3k_Q_reg_7_ ( .D(Reg_y3k_n3), .CK(CLK), .Q(DOUT_3k[7]) );
  DFF_X1 Reg_y3k_Q_reg_8_ ( .D(Reg_y3k_n2), .CK(CLK), .Q(DOUT_3k[8]) );
  INV_X1 Reg_y3k1_U23 ( .A(n29), .ZN(Reg_y3k1_n1) );
  AOI22_X1 Reg_y3k1_U22 ( .A1(s_21_3__8_), .A2(Reg_y3k1_n31), .B1(DOUT_3k1[8]), 
        .B2(Reg_y3k1_n30), .ZN(Reg_y3k1_n22) );
  INV_X1 Reg_y3k1_U21 ( .A(Reg_y3k1_n22), .ZN(Reg_y3k1_n2) );
  AOI22_X1 Reg_y3k1_U20 ( .A1(s_21_3__7_), .A2(Reg_y3k1_n31), .B1(DOUT_3k1[7]), 
        .B2(Reg_y3k1_n30), .ZN(Reg_y3k1_n23) );
  INV_X1 Reg_y3k1_U19 ( .A(Reg_y3k1_n23), .ZN(Reg_y3k1_n3) );
  AOI22_X1 Reg_y3k1_U18 ( .A1(s_21_3__6_), .A2(Reg_y3k1_n31), .B1(DOUT_3k1[6]), 
        .B2(Reg_y3k1_n30), .ZN(Reg_y3k1_n24) );
  INV_X1 Reg_y3k1_U17 ( .A(Reg_y3k1_n24), .ZN(Reg_y3k1_n4) );
  AOI22_X1 Reg_y3k1_U16 ( .A1(s_21_3__5_), .A2(Reg_y3k1_n31), .B1(DOUT_3k1[5]), 
        .B2(Reg_y3k1_n30), .ZN(Reg_y3k1_n25) );
  INV_X1 Reg_y3k1_U15 ( .A(Reg_y3k1_n25), .ZN(Reg_y3k1_n5) );
  AOI22_X1 Reg_y3k1_U14 ( .A1(s_21_3__4_), .A2(Reg_y3k1_n31), .B1(DOUT_3k1[4]), 
        .B2(Reg_y3k1_n30), .ZN(Reg_y3k1_n26) );
  INV_X1 Reg_y3k1_U13 ( .A(Reg_y3k1_n26), .ZN(Reg_y3k1_n6) );
  AOI22_X1 Reg_y3k1_U12 ( .A1(s_21_3__3_), .A2(Reg_y3k1_n31), .B1(DOUT_3k1[3]), 
        .B2(Reg_y3k1_n30), .ZN(Reg_y3k1_n27) );
  INV_X1 Reg_y3k1_U11 ( .A(Reg_y3k1_n27), .ZN(Reg_y3k1_n7) );
  AOI22_X1 Reg_y3k1_U10 ( .A1(s_21_3__2_), .A2(Reg_y3k1_n31), .B1(DOUT_3k1[2]), 
        .B2(Reg_y3k1_n30), .ZN(Reg_y3k1_n28) );
  INV_X1 Reg_y3k1_U9 ( .A(Reg_y3k1_n28), .ZN(Reg_y3k1_n8) );
  AOI22_X1 Reg_y3k1_U8 ( .A1(s_21_3__1_), .A2(Reg_y3k1_n31), .B1(DOUT_3k1[1]), 
        .B2(Reg_y3k1_n30), .ZN(Reg_y3k1_n29) );
  INV_X1 Reg_y3k1_U7 ( .A(Reg_y3k1_n29), .ZN(Reg_y3k1_n9) );
  AOI22_X1 Reg_y3k1_U6 ( .A1(s_21_3__0_), .A2(Reg_y3k1_n31), .B1(DOUT_3k1[0]), 
        .B2(Reg_y3k1_n30), .ZN(Reg_y3k1_n32) );
  INV_X1 Reg_y3k1_U5 ( .A(Reg_y3k1_n32), .ZN(Reg_y3k1_n10) );
  NOR2_X1 Reg_y3k1_U4 ( .A1(VIN_d), .A2(Reg_y3k1_n1), .ZN(Reg_y3k1_n30) );
  NOR2_X1 Reg_y3k1_U3 ( .A1(Reg_y3k1_n1), .A2(Reg_y3k1_n30), .ZN(Reg_y3k1_n31)
         );
  DFF_X1 Reg_y3k1_Q_reg_0_ ( .D(Reg_y3k1_n10), .CK(CLK), .Q(DOUT_3k1[0]) );
  DFF_X1 Reg_y3k1_Q_reg_1_ ( .D(Reg_y3k1_n9), .CK(CLK), .Q(DOUT_3k1[1]) );
  DFF_X1 Reg_y3k1_Q_reg_2_ ( .D(Reg_y3k1_n8), .CK(CLK), .Q(DOUT_3k1[2]) );
  DFF_X1 Reg_y3k1_Q_reg_3_ ( .D(Reg_y3k1_n7), .CK(CLK), .Q(DOUT_3k1[3]) );
  DFF_X1 Reg_y3k1_Q_reg_4_ ( .D(Reg_y3k1_n6), .CK(CLK), .Q(DOUT_3k1[4]) );
  DFF_X1 Reg_y3k1_Q_reg_5_ ( .D(Reg_y3k1_n5), .CK(CLK), .Q(DOUT_3k1[5]) );
  DFF_X1 Reg_y3k1_Q_reg_6_ ( .D(Reg_y3k1_n4), .CK(CLK), .Q(DOUT_3k1[6]) );
  DFF_X1 Reg_y3k1_Q_reg_7_ ( .D(Reg_y3k1_n3), .CK(CLK), .Q(DOUT_3k1[7]) );
  DFF_X1 Reg_y3k1_Q_reg_8_ ( .D(Reg_y3k1_n2), .CK(CLK), .Q(DOUT_3k1[8]) );
  INV_X1 Reg_y3k2_U23 ( .A(n29), .ZN(Reg_y3k2_n1) );
  AOI22_X1 Reg_y3k2_U22 ( .A1(s_31_3__8_), .A2(Reg_y3k2_n31), .B1(DOUT_3k2[8]), 
        .B2(Reg_y3k2_n30), .ZN(Reg_y3k2_n22) );
  INV_X1 Reg_y3k2_U21 ( .A(Reg_y3k2_n22), .ZN(Reg_y3k2_n2) );
  AOI22_X1 Reg_y3k2_U20 ( .A1(s_31_3__7_), .A2(Reg_y3k2_n31), .B1(DOUT_3k2[7]), 
        .B2(Reg_y3k2_n30), .ZN(Reg_y3k2_n23) );
  INV_X1 Reg_y3k2_U19 ( .A(Reg_y3k2_n23), .ZN(Reg_y3k2_n3) );
  AOI22_X1 Reg_y3k2_U18 ( .A1(s_31_3__6_), .A2(Reg_y3k2_n31), .B1(DOUT_3k2[6]), 
        .B2(Reg_y3k2_n30), .ZN(Reg_y3k2_n24) );
  INV_X1 Reg_y3k2_U17 ( .A(Reg_y3k2_n24), .ZN(Reg_y3k2_n4) );
  AOI22_X1 Reg_y3k2_U16 ( .A1(s_31_3__5_), .A2(Reg_y3k2_n31), .B1(DOUT_3k2[5]), 
        .B2(Reg_y3k2_n30), .ZN(Reg_y3k2_n25) );
  INV_X1 Reg_y3k2_U15 ( .A(Reg_y3k2_n25), .ZN(Reg_y3k2_n5) );
  AOI22_X1 Reg_y3k2_U14 ( .A1(s_31_3__4_), .A2(Reg_y3k2_n31), .B1(DOUT_3k2[4]), 
        .B2(Reg_y3k2_n30), .ZN(Reg_y3k2_n26) );
  INV_X1 Reg_y3k2_U13 ( .A(Reg_y3k2_n26), .ZN(Reg_y3k2_n6) );
  AOI22_X1 Reg_y3k2_U12 ( .A1(s_31_3__3_), .A2(Reg_y3k2_n31), .B1(DOUT_3k2[3]), 
        .B2(Reg_y3k2_n30), .ZN(Reg_y3k2_n27) );
  INV_X1 Reg_y3k2_U11 ( .A(Reg_y3k2_n27), .ZN(Reg_y3k2_n7) );
  AOI22_X1 Reg_y3k2_U10 ( .A1(s_31_3__2_), .A2(Reg_y3k2_n31), .B1(DOUT_3k2[2]), 
        .B2(Reg_y3k2_n30), .ZN(Reg_y3k2_n28) );
  INV_X1 Reg_y3k2_U9 ( .A(Reg_y3k2_n28), .ZN(Reg_y3k2_n8) );
  AOI22_X1 Reg_y3k2_U8 ( .A1(s_31_3__1_), .A2(Reg_y3k2_n31), .B1(DOUT_3k2[1]), 
        .B2(Reg_y3k2_n30), .ZN(Reg_y3k2_n29) );
  INV_X1 Reg_y3k2_U7 ( .A(Reg_y3k2_n29), .ZN(Reg_y3k2_n9) );
  AOI22_X1 Reg_y3k2_U6 ( .A1(s_31_3__0_), .A2(Reg_y3k2_n31), .B1(DOUT_3k2[0]), 
        .B2(Reg_y3k2_n30), .ZN(Reg_y3k2_n32) );
  INV_X1 Reg_y3k2_U5 ( .A(Reg_y3k2_n32), .ZN(Reg_y3k2_n10) );
  NOR2_X1 Reg_y3k2_U4 ( .A1(VIN_d), .A2(Reg_y3k2_n1), .ZN(Reg_y3k2_n30) );
  NOR2_X1 Reg_y3k2_U3 ( .A1(Reg_y3k2_n1), .A2(Reg_y3k2_n30), .ZN(Reg_y3k2_n31)
         );
  DFF_X1 Reg_y3k2_Q_reg_0_ ( .D(Reg_y3k2_n10), .CK(CLK), .Q(DOUT_3k2[0]) );
  DFF_X1 Reg_y3k2_Q_reg_1_ ( .D(Reg_y3k2_n9), .CK(CLK), .Q(DOUT_3k2[1]) );
  DFF_X1 Reg_y3k2_Q_reg_2_ ( .D(Reg_y3k2_n8), .CK(CLK), .Q(DOUT_3k2[2]) );
  DFF_X1 Reg_y3k2_Q_reg_3_ ( .D(Reg_y3k2_n7), .CK(CLK), .Q(DOUT_3k2[3]) );
  DFF_X1 Reg_y3k2_Q_reg_4_ ( .D(Reg_y3k2_n6), .CK(CLK), .Q(DOUT_3k2[4]) );
  DFF_X1 Reg_y3k2_Q_reg_5_ ( .D(Reg_y3k2_n5), .CK(CLK), .Q(DOUT_3k2[5]) );
  DFF_X1 Reg_y3k2_Q_reg_6_ ( .D(Reg_y3k2_n4), .CK(CLK), .Q(DOUT_3k2[6]) );
  DFF_X1 Reg_y3k2_Q_reg_7_ ( .D(Reg_y3k2_n3), .CK(CLK), .Q(DOUT_3k2[7]) );
  DFF_X1 Reg_y3k2_Q_reg_8_ ( .D(Reg_y3k2_n2), .CK(CLK), .Q(DOUT_3k2[8]) );
  INV_X1 Reg_xi_3k_0_U23 ( .A(n29), .ZN(Reg_xi_3k_0_n1) );
  AOI22_X1 Reg_xi_3k_0_U22 ( .A1(x3k_ext_0__9_), .A2(Reg_xi_3k_0_n31), .B1(
        x3k_ext_1__9_), .B2(Reg_xi_3k_0_n30), .ZN(Reg_xi_3k_0_n22) );
  INV_X1 Reg_xi_3k_0_U21 ( .A(Reg_xi_3k_0_n22), .ZN(Reg_xi_3k_0_n2) );
  AOI22_X1 Reg_xi_3k_0_U20 ( .A1(x3k_ext_0__7_), .A2(Reg_xi_3k_0_n31), .B1(
        x3k_ext_1__7_), .B2(Reg_xi_3k_0_n30), .ZN(Reg_xi_3k_0_n23) );
  INV_X1 Reg_xi_3k_0_U19 ( .A(Reg_xi_3k_0_n23), .ZN(Reg_xi_3k_0_n3) );
  AOI22_X1 Reg_xi_3k_0_U18 ( .A1(x3k_ext_0__6_), .A2(Reg_xi_3k_0_n31), .B1(
        x3k_ext_1__6_), .B2(Reg_xi_3k_0_n30), .ZN(Reg_xi_3k_0_n24) );
  INV_X1 Reg_xi_3k_0_U17 ( .A(Reg_xi_3k_0_n24), .ZN(Reg_xi_3k_0_n4) );
  AOI22_X1 Reg_xi_3k_0_U16 ( .A1(x3k_ext_0__5_), .A2(Reg_xi_3k_0_n31), .B1(
        x3k_ext_1__5_), .B2(Reg_xi_3k_0_n30), .ZN(Reg_xi_3k_0_n25) );
  INV_X1 Reg_xi_3k_0_U15 ( .A(Reg_xi_3k_0_n25), .ZN(Reg_xi_3k_0_n5) );
  AOI22_X1 Reg_xi_3k_0_U14 ( .A1(x3k_ext_0__4_), .A2(Reg_xi_3k_0_n31), .B1(
        x3k_ext_1__4_), .B2(Reg_xi_3k_0_n30), .ZN(Reg_xi_3k_0_n26) );
  INV_X1 Reg_xi_3k_0_U13 ( .A(Reg_xi_3k_0_n26), .ZN(Reg_xi_3k_0_n6) );
  AOI22_X1 Reg_xi_3k_0_U12 ( .A1(x3k_ext_0__3_), .A2(Reg_xi_3k_0_n31), .B1(
        x3k_ext_1__3_), .B2(Reg_xi_3k_0_n30), .ZN(Reg_xi_3k_0_n27) );
  INV_X1 Reg_xi_3k_0_U11 ( .A(Reg_xi_3k_0_n27), .ZN(Reg_xi_3k_0_n7) );
  AOI22_X1 Reg_xi_3k_0_U10 ( .A1(x3k_ext_0__2_), .A2(Reg_xi_3k_0_n31), .B1(
        x3k_ext_1__2_), .B2(Reg_xi_3k_0_n30), .ZN(Reg_xi_3k_0_n28) );
  INV_X1 Reg_xi_3k_0_U9 ( .A(Reg_xi_3k_0_n28), .ZN(Reg_xi_3k_0_n8) );
  AOI22_X1 Reg_xi_3k_0_U8 ( .A1(x3k_ext_0__1_), .A2(Reg_xi_3k_0_n31), .B1(
        x3k_ext_1__1_), .B2(Reg_xi_3k_0_n30), .ZN(Reg_xi_3k_0_n29) );
  INV_X1 Reg_xi_3k_0_U7 ( .A(Reg_xi_3k_0_n29), .ZN(Reg_xi_3k_0_n9) );
  AOI22_X1 Reg_xi_3k_0_U6 ( .A1(x3k_ext_0__0_), .A2(Reg_xi_3k_0_n31), .B1(
        x3k_ext_1__0_), .B2(Reg_xi_3k_0_n30), .ZN(Reg_xi_3k_0_n32) );
  INV_X1 Reg_xi_3k_0_U5 ( .A(Reg_xi_3k_0_n32), .ZN(Reg_xi_3k_0_n10) );
  NOR2_X1 Reg_xi_3k_0_U4 ( .A1(VIN), .A2(Reg_xi_3k_0_n1), .ZN(Reg_xi_3k_0_n30)
         );
  NOR2_X1 Reg_xi_3k_0_U3 ( .A1(Reg_xi_3k_0_n1), .A2(Reg_xi_3k_0_n30), .ZN(
        Reg_xi_3k_0_n31) );
  DFF_X1 Reg_xi_3k_0_Q_reg_0_ ( .D(Reg_xi_3k_0_n10), .CK(CLK), .Q(
        x3k_ext_1__0_) );
  DFF_X1 Reg_xi_3k_0_Q_reg_1_ ( .D(Reg_xi_3k_0_n9), .CK(CLK), .Q(x3k_ext_1__1_) );
  DFF_X1 Reg_xi_3k_0_Q_reg_2_ ( .D(Reg_xi_3k_0_n8), .CK(CLK), .Q(x3k_ext_1__2_) );
  DFF_X1 Reg_xi_3k_0_Q_reg_3_ ( .D(Reg_xi_3k_0_n7), .CK(CLK), .Q(x3k_ext_1__3_) );
  DFF_X1 Reg_xi_3k_0_Q_reg_4_ ( .D(Reg_xi_3k_0_n6), .CK(CLK), .Q(x3k_ext_1__4_) );
  DFF_X1 Reg_xi_3k_0_Q_reg_5_ ( .D(Reg_xi_3k_0_n5), .CK(CLK), .Q(x3k_ext_1__5_) );
  DFF_X1 Reg_xi_3k_0_Q_reg_6_ ( .D(Reg_xi_3k_0_n4), .CK(CLK), .Q(x3k_ext_1__6_) );
  DFF_X1 Reg_xi_3k_0_Q_reg_7_ ( .D(Reg_xi_3k_0_n3), .CK(CLK), .Q(x3k_ext_1__7_) );
  DFF_X1 Reg_xi_3k_0_Q_reg_8_ ( .D(Reg_xi_3k_0_n2), .CK(CLK), .Q(x3k_ext_1__9_) );
  INV_X1 Reg_xi_3k1_0_U23 ( .A(n29), .ZN(Reg_xi_3k1_0_n1) );
  AOI22_X1 Reg_xi_3k1_0_U22 ( .A1(x3k1_ext_0__9_), .A2(Reg_xi_3k1_0_n31), .B1(
        x3k1_ext_1__9_), .B2(Reg_xi_3k1_0_n30), .ZN(Reg_xi_3k1_0_n22) );
  INV_X1 Reg_xi_3k1_0_U21 ( .A(Reg_xi_3k1_0_n22), .ZN(Reg_xi_3k1_0_n2) );
  AOI22_X1 Reg_xi_3k1_0_U20 ( .A1(x3k1_ext_0__7_), .A2(Reg_xi_3k1_0_n31), .B1(
        x3k1_ext_1__7_), .B2(Reg_xi_3k1_0_n30), .ZN(Reg_xi_3k1_0_n23) );
  INV_X1 Reg_xi_3k1_0_U19 ( .A(Reg_xi_3k1_0_n23), .ZN(Reg_xi_3k1_0_n3) );
  AOI22_X1 Reg_xi_3k1_0_U18 ( .A1(x3k1_ext_0__6_), .A2(Reg_xi_3k1_0_n31), .B1(
        x3k1_ext_1__6_), .B2(Reg_xi_3k1_0_n30), .ZN(Reg_xi_3k1_0_n24) );
  INV_X1 Reg_xi_3k1_0_U17 ( .A(Reg_xi_3k1_0_n24), .ZN(Reg_xi_3k1_0_n4) );
  AOI22_X1 Reg_xi_3k1_0_U16 ( .A1(x3k1_ext_0__5_), .A2(Reg_xi_3k1_0_n31), .B1(
        x3k1_ext_1__5_), .B2(Reg_xi_3k1_0_n30), .ZN(Reg_xi_3k1_0_n25) );
  INV_X1 Reg_xi_3k1_0_U15 ( .A(Reg_xi_3k1_0_n25), .ZN(Reg_xi_3k1_0_n5) );
  AOI22_X1 Reg_xi_3k1_0_U14 ( .A1(x3k1_ext_0__4_), .A2(Reg_xi_3k1_0_n31), .B1(
        x3k1_ext_1__4_), .B2(Reg_xi_3k1_0_n30), .ZN(Reg_xi_3k1_0_n26) );
  INV_X1 Reg_xi_3k1_0_U13 ( .A(Reg_xi_3k1_0_n26), .ZN(Reg_xi_3k1_0_n6) );
  AOI22_X1 Reg_xi_3k1_0_U12 ( .A1(x3k1_ext_0__3_), .A2(Reg_xi_3k1_0_n31), .B1(
        x3k1_ext_1__3_), .B2(Reg_xi_3k1_0_n30), .ZN(Reg_xi_3k1_0_n27) );
  INV_X1 Reg_xi_3k1_0_U11 ( .A(Reg_xi_3k1_0_n27), .ZN(Reg_xi_3k1_0_n7) );
  AOI22_X1 Reg_xi_3k1_0_U10 ( .A1(x3k1_ext_0__2_), .A2(Reg_xi_3k1_0_n31), .B1(
        x3k1_ext_1__2_), .B2(Reg_xi_3k1_0_n30), .ZN(Reg_xi_3k1_0_n28) );
  INV_X1 Reg_xi_3k1_0_U9 ( .A(Reg_xi_3k1_0_n28), .ZN(Reg_xi_3k1_0_n8) );
  AOI22_X1 Reg_xi_3k1_0_U8 ( .A1(x3k1_ext_0__1_), .A2(Reg_xi_3k1_0_n31), .B1(
        x3k1_ext_1__1_), .B2(Reg_xi_3k1_0_n30), .ZN(Reg_xi_3k1_0_n29) );
  INV_X1 Reg_xi_3k1_0_U7 ( .A(Reg_xi_3k1_0_n29), .ZN(Reg_xi_3k1_0_n9) );
  AOI22_X1 Reg_xi_3k1_0_U6 ( .A1(x3k1_ext_0__0_), .A2(Reg_xi_3k1_0_n31), .B1(
        x3k1_ext_1__0_), .B2(Reg_xi_3k1_0_n30), .ZN(Reg_xi_3k1_0_n32) );
  INV_X1 Reg_xi_3k1_0_U5 ( .A(Reg_xi_3k1_0_n32), .ZN(Reg_xi_3k1_0_n10) );
  NOR2_X1 Reg_xi_3k1_0_U4 ( .A1(VIN), .A2(Reg_xi_3k1_0_n1), .ZN(
        Reg_xi_3k1_0_n30) );
  NOR2_X1 Reg_xi_3k1_0_U3 ( .A1(Reg_xi_3k1_0_n1), .A2(Reg_xi_3k1_0_n30), .ZN(
        Reg_xi_3k1_0_n31) );
  DFF_X1 Reg_xi_3k1_0_Q_reg_0_ ( .D(Reg_xi_3k1_0_n10), .CK(CLK), .Q(
        x3k1_ext_1__0_) );
  DFF_X1 Reg_xi_3k1_0_Q_reg_1_ ( .D(Reg_xi_3k1_0_n9), .CK(CLK), .Q(
        x3k1_ext_1__1_) );
  DFF_X1 Reg_xi_3k1_0_Q_reg_2_ ( .D(Reg_xi_3k1_0_n8), .CK(CLK), .Q(
        x3k1_ext_1__2_) );
  DFF_X1 Reg_xi_3k1_0_Q_reg_3_ ( .D(Reg_xi_3k1_0_n7), .CK(CLK), .Q(
        x3k1_ext_1__3_) );
  DFF_X1 Reg_xi_3k1_0_Q_reg_4_ ( .D(Reg_xi_3k1_0_n6), .CK(CLK), .Q(
        x3k1_ext_1__4_) );
  DFF_X1 Reg_xi_3k1_0_Q_reg_5_ ( .D(Reg_xi_3k1_0_n5), .CK(CLK), .Q(
        x3k1_ext_1__5_) );
  DFF_X1 Reg_xi_3k1_0_Q_reg_6_ ( .D(Reg_xi_3k1_0_n4), .CK(CLK), .Q(
        x3k1_ext_1__6_) );
  DFF_X1 Reg_xi_3k1_0_Q_reg_7_ ( .D(Reg_xi_3k1_0_n3), .CK(CLK), .Q(
        x3k1_ext_1__7_) );
  DFF_X1 Reg_xi_3k1_0_Q_reg_8_ ( .D(Reg_xi_3k1_0_n2), .CK(CLK), .Q(
        x3k1_ext_1__9_) );
  INV_X1 Reg_xi_3k2_0_U23 ( .A(n29), .ZN(Reg_xi_3k2_0_n1) );
  AOI22_X1 Reg_xi_3k2_0_U22 ( .A1(x3k2_ext_0__2_), .A2(Reg_xi_3k2_0_n31), .B1(
        x3k2_ext_1__2_), .B2(Reg_xi_3k2_0_n30), .ZN(Reg_xi_3k2_0_n28) );
  INV_X1 Reg_xi_3k2_0_U21 ( .A(Reg_xi_3k2_0_n28), .ZN(Reg_xi_3k2_0_n8) );
  AOI22_X1 Reg_xi_3k2_0_U20 ( .A1(x3k2_ext_0__9_), .A2(Reg_xi_3k2_0_n31), .B1(
        x3k2_ext_1__9_), .B2(Reg_xi_3k2_0_n30), .ZN(Reg_xi_3k2_0_n22) );
  INV_X1 Reg_xi_3k2_0_U19 ( .A(Reg_xi_3k2_0_n22), .ZN(Reg_xi_3k2_0_n2) );
  AOI22_X1 Reg_xi_3k2_0_U18 ( .A1(x3k2_ext_0__7_), .A2(Reg_xi_3k2_0_n31), .B1(
        x3k2_ext_1__7_), .B2(Reg_xi_3k2_0_n30), .ZN(Reg_xi_3k2_0_n23) );
  INV_X1 Reg_xi_3k2_0_U17 ( .A(Reg_xi_3k2_0_n23), .ZN(Reg_xi_3k2_0_n3) );
  AOI22_X1 Reg_xi_3k2_0_U16 ( .A1(x3k2_ext_0__6_), .A2(Reg_xi_3k2_0_n31), .B1(
        x3k2_ext_1__6_), .B2(Reg_xi_3k2_0_n30), .ZN(Reg_xi_3k2_0_n24) );
  INV_X1 Reg_xi_3k2_0_U15 ( .A(Reg_xi_3k2_0_n24), .ZN(Reg_xi_3k2_0_n4) );
  AOI22_X1 Reg_xi_3k2_0_U14 ( .A1(x3k2_ext_0__5_), .A2(Reg_xi_3k2_0_n31), .B1(
        x3k2_ext_1__5_), .B2(Reg_xi_3k2_0_n30), .ZN(Reg_xi_3k2_0_n25) );
  INV_X1 Reg_xi_3k2_0_U13 ( .A(Reg_xi_3k2_0_n25), .ZN(Reg_xi_3k2_0_n5) );
  AOI22_X1 Reg_xi_3k2_0_U12 ( .A1(x3k2_ext_0__4_), .A2(Reg_xi_3k2_0_n31), .B1(
        x3k2_ext_1__4_), .B2(Reg_xi_3k2_0_n30), .ZN(Reg_xi_3k2_0_n26) );
  INV_X1 Reg_xi_3k2_0_U11 ( .A(Reg_xi_3k2_0_n26), .ZN(Reg_xi_3k2_0_n6) );
  AOI22_X1 Reg_xi_3k2_0_U10 ( .A1(x3k2_ext_0__3_), .A2(Reg_xi_3k2_0_n31), .B1(
        x3k2_ext_1__3_), .B2(Reg_xi_3k2_0_n30), .ZN(Reg_xi_3k2_0_n27) );
  INV_X1 Reg_xi_3k2_0_U9 ( .A(Reg_xi_3k2_0_n27), .ZN(Reg_xi_3k2_0_n7) );
  AOI22_X1 Reg_xi_3k2_0_U8 ( .A1(x3k2_ext_0__1_), .A2(Reg_xi_3k2_0_n31), .B1(
        x3k2_ext_1__1_), .B2(Reg_xi_3k2_0_n30), .ZN(Reg_xi_3k2_0_n29) );
  INV_X1 Reg_xi_3k2_0_U7 ( .A(Reg_xi_3k2_0_n29), .ZN(Reg_xi_3k2_0_n9) );
  AOI22_X1 Reg_xi_3k2_0_U6 ( .A1(x3k2_ext_0__0_), .A2(Reg_xi_3k2_0_n31), .B1(
        x3k2_ext_1__0_), .B2(Reg_xi_3k2_0_n30), .ZN(Reg_xi_3k2_0_n32) );
  INV_X1 Reg_xi_3k2_0_U5 ( .A(Reg_xi_3k2_0_n32), .ZN(Reg_xi_3k2_0_n10) );
  NOR2_X1 Reg_xi_3k2_0_U4 ( .A1(VIN), .A2(Reg_xi_3k2_0_n1), .ZN(
        Reg_xi_3k2_0_n30) );
  NOR2_X1 Reg_xi_3k2_0_U3 ( .A1(Reg_xi_3k2_0_n1), .A2(Reg_xi_3k2_0_n30), .ZN(
        Reg_xi_3k2_0_n31) );
  DFF_X1 Reg_xi_3k2_0_Q_reg_0_ ( .D(Reg_xi_3k2_0_n10), .CK(CLK), .Q(
        x3k2_ext_1__0_) );
  DFF_X1 Reg_xi_3k2_0_Q_reg_1_ ( .D(Reg_xi_3k2_0_n9), .CK(CLK), .Q(
        x3k2_ext_1__1_) );
  DFF_X1 Reg_xi_3k2_0_Q_reg_2_ ( .D(Reg_xi_3k2_0_n8), .CK(CLK), .Q(
        x3k2_ext_1__2_) );
  DFF_X1 Reg_xi_3k2_0_Q_reg_3_ ( .D(Reg_xi_3k2_0_n7), .CK(CLK), .Q(
        x3k2_ext_1__3_) );
  DFF_X1 Reg_xi_3k2_0_Q_reg_4_ ( .D(Reg_xi_3k2_0_n6), .CK(CLK), .Q(
        x3k2_ext_1__4_) );
  DFF_X1 Reg_xi_3k2_0_Q_reg_5_ ( .D(Reg_xi_3k2_0_n5), .CK(CLK), .Q(
        x3k2_ext_1__5_) );
  DFF_X1 Reg_xi_3k2_0_Q_reg_6_ ( .D(Reg_xi_3k2_0_n4), .CK(CLK), .Q(
        x3k2_ext_1__6_) );
  DFF_X1 Reg_xi_3k2_0_Q_reg_7_ ( .D(Reg_xi_3k2_0_n3), .CK(CLK), .Q(
        x3k2_ext_1__7_) );
  DFF_X1 Reg_xi_3k2_0_Q_reg_8_ ( .D(Reg_xi_3k2_0_n2), .CK(CLK), .Q(
        x3k2_ext_1__9_) );
  INV_X1 Reg_xi_3k_1_U23 ( .A(n29), .ZN(Reg_xi_3k_1_n1) );
  AOI22_X1 Reg_xi_3k_1_U22 ( .A1(x3k_ext_1__9_), .A2(Reg_xi_3k_1_n31), .B1(
        x3k_ext_2__9_), .B2(Reg_xi_3k_1_n30), .ZN(Reg_xi_3k_1_n22) );
  INV_X1 Reg_xi_3k_1_U21 ( .A(Reg_xi_3k_1_n22), .ZN(Reg_xi_3k_1_n2) );
  AOI22_X1 Reg_xi_3k_1_U20 ( .A1(x3k_ext_1__7_), .A2(Reg_xi_3k_1_n31), .B1(
        x3k_ext_2__7_), .B2(Reg_xi_3k_1_n30), .ZN(Reg_xi_3k_1_n23) );
  INV_X1 Reg_xi_3k_1_U19 ( .A(Reg_xi_3k_1_n23), .ZN(Reg_xi_3k_1_n3) );
  AOI22_X1 Reg_xi_3k_1_U18 ( .A1(x3k_ext_1__6_), .A2(Reg_xi_3k_1_n31), .B1(
        x3k_ext_2__6_), .B2(Reg_xi_3k_1_n30), .ZN(Reg_xi_3k_1_n24) );
  INV_X1 Reg_xi_3k_1_U17 ( .A(Reg_xi_3k_1_n24), .ZN(Reg_xi_3k_1_n4) );
  AOI22_X1 Reg_xi_3k_1_U16 ( .A1(x3k_ext_1__5_), .A2(Reg_xi_3k_1_n31), .B1(
        x3k_ext_2__5_), .B2(Reg_xi_3k_1_n30), .ZN(Reg_xi_3k_1_n25) );
  INV_X1 Reg_xi_3k_1_U15 ( .A(Reg_xi_3k_1_n25), .ZN(Reg_xi_3k_1_n5) );
  AOI22_X1 Reg_xi_3k_1_U14 ( .A1(x3k_ext_1__4_), .A2(Reg_xi_3k_1_n31), .B1(
        x3k_ext_2__4_), .B2(Reg_xi_3k_1_n30), .ZN(Reg_xi_3k_1_n26) );
  INV_X1 Reg_xi_3k_1_U13 ( .A(Reg_xi_3k_1_n26), .ZN(Reg_xi_3k_1_n6) );
  AOI22_X1 Reg_xi_3k_1_U12 ( .A1(x3k_ext_1__3_), .A2(Reg_xi_3k_1_n31), .B1(
        x3k_ext_2__3_), .B2(Reg_xi_3k_1_n30), .ZN(Reg_xi_3k_1_n27) );
  INV_X1 Reg_xi_3k_1_U11 ( .A(Reg_xi_3k_1_n27), .ZN(Reg_xi_3k_1_n7) );
  AOI22_X1 Reg_xi_3k_1_U10 ( .A1(x3k_ext_1__2_), .A2(Reg_xi_3k_1_n31), .B1(
        x3k_ext_2__2_), .B2(Reg_xi_3k_1_n30), .ZN(Reg_xi_3k_1_n28) );
  INV_X1 Reg_xi_3k_1_U9 ( .A(Reg_xi_3k_1_n28), .ZN(Reg_xi_3k_1_n8) );
  AOI22_X1 Reg_xi_3k_1_U8 ( .A1(x3k_ext_1__1_), .A2(Reg_xi_3k_1_n31), .B1(
        x3k_ext_2__1_), .B2(Reg_xi_3k_1_n30), .ZN(Reg_xi_3k_1_n29) );
  INV_X1 Reg_xi_3k_1_U7 ( .A(Reg_xi_3k_1_n29), .ZN(Reg_xi_3k_1_n9) );
  AOI22_X1 Reg_xi_3k_1_U6 ( .A1(x3k_ext_1__0_), .A2(Reg_xi_3k_1_n31), .B1(
        x3k_ext_2__0_), .B2(Reg_xi_3k_1_n30), .ZN(Reg_xi_3k_1_n32) );
  INV_X1 Reg_xi_3k_1_U5 ( .A(Reg_xi_3k_1_n32), .ZN(Reg_xi_3k_1_n10) );
  NOR2_X1 Reg_xi_3k_1_U4 ( .A1(VIN), .A2(Reg_xi_3k_1_n1), .ZN(Reg_xi_3k_1_n30)
         );
  NOR2_X1 Reg_xi_3k_1_U3 ( .A1(Reg_xi_3k_1_n1), .A2(Reg_xi_3k_1_n30), .ZN(
        Reg_xi_3k_1_n31) );
  DFF_X1 Reg_xi_3k_1_Q_reg_0_ ( .D(Reg_xi_3k_1_n10), .CK(CLK), .Q(
        x3k_ext_2__0_) );
  DFF_X1 Reg_xi_3k_1_Q_reg_1_ ( .D(Reg_xi_3k_1_n9), .CK(CLK), .Q(x3k_ext_2__1_) );
  DFF_X1 Reg_xi_3k_1_Q_reg_2_ ( .D(Reg_xi_3k_1_n8), .CK(CLK), .Q(x3k_ext_2__2_) );
  DFF_X1 Reg_xi_3k_1_Q_reg_3_ ( .D(Reg_xi_3k_1_n7), .CK(CLK), .Q(x3k_ext_2__3_) );
  DFF_X1 Reg_xi_3k_1_Q_reg_4_ ( .D(Reg_xi_3k_1_n6), .CK(CLK), .Q(x3k_ext_2__4_) );
  DFF_X1 Reg_xi_3k_1_Q_reg_5_ ( .D(Reg_xi_3k_1_n5), .CK(CLK), .Q(x3k_ext_2__5_) );
  DFF_X1 Reg_xi_3k_1_Q_reg_6_ ( .D(Reg_xi_3k_1_n4), .CK(CLK), .Q(x3k_ext_2__6_) );
  DFF_X1 Reg_xi_3k_1_Q_reg_7_ ( .D(Reg_xi_3k_1_n3), .CK(CLK), .Q(x3k_ext_2__7_) );
  DFF_X1 Reg_xi_3k_1_Q_reg_8_ ( .D(Reg_xi_3k_1_n2), .CK(CLK), .Q(x3k_ext_2__9_) );
  INV_X1 Reg_xi_3k1_1_U23 ( .A(n30), .ZN(Reg_xi_3k1_1_n1) );
  AOI22_X1 Reg_xi_3k1_1_U22 ( .A1(x3k1_ext_1__3_), .A2(Reg_xi_3k1_1_n31), .B1(
        x3k1_ext_2__3_), .B2(Reg_xi_3k1_1_n30), .ZN(Reg_xi_3k1_1_n27) );
  INV_X1 Reg_xi_3k1_1_U21 ( .A(Reg_xi_3k1_1_n27), .ZN(Reg_xi_3k1_1_n7) );
  AOI22_X1 Reg_xi_3k1_1_U20 ( .A1(x3k1_ext_1__7_), .A2(Reg_xi_3k1_1_n31), .B1(
        x3k1_ext_2__7_), .B2(Reg_xi_3k1_1_n30), .ZN(Reg_xi_3k1_1_n23) );
  INV_X1 Reg_xi_3k1_1_U19 ( .A(Reg_xi_3k1_1_n23), .ZN(Reg_xi_3k1_1_n3) );
  AOI22_X1 Reg_xi_3k1_1_U18 ( .A1(x3k1_ext_1__6_), .A2(Reg_xi_3k1_1_n31), .B1(
        x3k1_ext_2__6_), .B2(Reg_xi_3k1_1_n30), .ZN(Reg_xi_3k1_1_n24) );
  INV_X1 Reg_xi_3k1_1_U17 ( .A(Reg_xi_3k1_1_n24), .ZN(Reg_xi_3k1_1_n4) );
  AOI22_X1 Reg_xi_3k1_1_U16 ( .A1(x3k1_ext_1__5_), .A2(Reg_xi_3k1_1_n31), .B1(
        x3k1_ext_2__5_), .B2(Reg_xi_3k1_1_n30), .ZN(Reg_xi_3k1_1_n25) );
  INV_X1 Reg_xi_3k1_1_U15 ( .A(Reg_xi_3k1_1_n25), .ZN(Reg_xi_3k1_1_n5) );
  AOI22_X1 Reg_xi_3k1_1_U14 ( .A1(x3k1_ext_1__4_), .A2(Reg_xi_3k1_1_n31), .B1(
        x3k1_ext_2__4_), .B2(Reg_xi_3k1_1_n30), .ZN(Reg_xi_3k1_1_n26) );
  INV_X1 Reg_xi_3k1_1_U13 ( .A(Reg_xi_3k1_1_n26), .ZN(Reg_xi_3k1_1_n6) );
  AOI22_X1 Reg_xi_3k1_1_U12 ( .A1(x3k1_ext_1__1_), .A2(Reg_xi_3k1_1_n31), .B1(
        x3k1_ext_2__1_), .B2(Reg_xi_3k1_1_n30), .ZN(Reg_xi_3k1_1_n29) );
  INV_X1 Reg_xi_3k1_1_U11 ( .A(Reg_xi_3k1_1_n29), .ZN(Reg_xi_3k1_1_n9) );
  AOI22_X1 Reg_xi_3k1_1_U10 ( .A1(x3k1_ext_1__9_), .A2(Reg_xi_3k1_1_n31), .B1(
        x3k1_ext_2__9_), .B2(Reg_xi_3k1_1_n30), .ZN(Reg_xi_3k1_1_n22) );
  INV_X1 Reg_xi_3k1_1_U9 ( .A(Reg_xi_3k1_1_n22), .ZN(Reg_xi_3k1_1_n2) );
  AOI22_X1 Reg_xi_3k1_1_U8 ( .A1(x3k1_ext_1__2_), .A2(Reg_xi_3k1_1_n31), .B1(
        x3k1_ext_2__2_), .B2(Reg_xi_3k1_1_n30), .ZN(Reg_xi_3k1_1_n28) );
  INV_X1 Reg_xi_3k1_1_U7 ( .A(Reg_xi_3k1_1_n28), .ZN(Reg_xi_3k1_1_n8) );
  AOI22_X1 Reg_xi_3k1_1_U6 ( .A1(x3k1_ext_1__0_), .A2(Reg_xi_3k1_1_n31), .B1(
        x3k1_ext_2__0_), .B2(Reg_xi_3k1_1_n30), .ZN(Reg_xi_3k1_1_n32) );
  INV_X1 Reg_xi_3k1_1_U5 ( .A(Reg_xi_3k1_1_n32), .ZN(Reg_xi_3k1_1_n10) );
  NOR2_X1 Reg_xi_3k1_1_U4 ( .A1(VIN), .A2(Reg_xi_3k1_1_n1), .ZN(
        Reg_xi_3k1_1_n30) );
  NOR2_X1 Reg_xi_3k1_1_U3 ( .A1(Reg_xi_3k1_1_n1), .A2(Reg_xi_3k1_1_n30), .ZN(
        Reg_xi_3k1_1_n31) );
  DFF_X1 Reg_xi_3k1_1_Q_reg_0_ ( .D(Reg_xi_3k1_1_n10), .CK(CLK), .Q(
        x3k1_ext_2__0_) );
  DFF_X1 Reg_xi_3k1_1_Q_reg_1_ ( .D(Reg_xi_3k1_1_n9), .CK(CLK), .Q(
        x3k1_ext_2__1_) );
  DFF_X1 Reg_xi_3k1_1_Q_reg_2_ ( .D(Reg_xi_3k1_1_n8), .CK(CLK), .Q(
        x3k1_ext_2__2_) );
  DFF_X1 Reg_xi_3k1_1_Q_reg_3_ ( .D(Reg_xi_3k1_1_n7), .CK(CLK), .Q(
        x3k1_ext_2__3_) );
  DFF_X1 Reg_xi_3k1_1_Q_reg_4_ ( .D(Reg_xi_3k1_1_n6), .CK(CLK), .Q(
        x3k1_ext_2__4_) );
  DFF_X1 Reg_xi_3k1_1_Q_reg_5_ ( .D(Reg_xi_3k1_1_n5), .CK(CLK), .Q(
        x3k1_ext_2__5_) );
  DFF_X1 Reg_xi_3k1_1_Q_reg_6_ ( .D(Reg_xi_3k1_1_n4), .CK(CLK), .Q(
        x3k1_ext_2__6_) );
  DFF_X1 Reg_xi_3k1_1_Q_reg_7_ ( .D(Reg_xi_3k1_1_n3), .CK(CLK), .Q(
        x3k1_ext_2__7_) );
  DFF_X1 Reg_xi_3k1_1_Q_reg_8_ ( .D(Reg_xi_3k1_1_n2), .CK(CLK), .Q(
        x3k1_ext_2__9_) );
  INV_X1 Reg_xi_3k2_1_U23 ( .A(n30), .ZN(Reg_xi_3k2_1_n1) );
  AOI22_X1 Reg_xi_3k2_1_U22 ( .A1(x3k2_ext_1__9_), .A2(Reg_xi_3k2_1_n31), .B1(
        x3k2_ext_2__9_), .B2(Reg_xi_3k2_1_n30), .ZN(Reg_xi_3k2_1_n22) );
  INV_X1 Reg_xi_3k2_1_U21 ( .A(Reg_xi_3k2_1_n22), .ZN(Reg_xi_3k2_1_n2) );
  AOI22_X1 Reg_xi_3k2_1_U20 ( .A1(x3k2_ext_1__7_), .A2(Reg_xi_3k2_1_n31), .B1(
        x3k2_ext_2__7_), .B2(Reg_xi_3k2_1_n30), .ZN(Reg_xi_3k2_1_n23) );
  INV_X1 Reg_xi_3k2_1_U19 ( .A(Reg_xi_3k2_1_n23), .ZN(Reg_xi_3k2_1_n3) );
  AOI22_X1 Reg_xi_3k2_1_U18 ( .A1(x3k2_ext_1__6_), .A2(Reg_xi_3k2_1_n31), .B1(
        x3k2_ext_2__6_), .B2(Reg_xi_3k2_1_n30), .ZN(Reg_xi_3k2_1_n24) );
  INV_X1 Reg_xi_3k2_1_U17 ( .A(Reg_xi_3k2_1_n24), .ZN(Reg_xi_3k2_1_n4) );
  AOI22_X1 Reg_xi_3k2_1_U16 ( .A1(x3k2_ext_1__5_), .A2(Reg_xi_3k2_1_n31), .B1(
        x3k2_ext_2__5_), .B2(Reg_xi_3k2_1_n30), .ZN(Reg_xi_3k2_1_n25) );
  INV_X1 Reg_xi_3k2_1_U15 ( .A(Reg_xi_3k2_1_n25), .ZN(Reg_xi_3k2_1_n5) );
  AOI22_X1 Reg_xi_3k2_1_U14 ( .A1(x3k2_ext_1__4_), .A2(Reg_xi_3k2_1_n31), .B1(
        x3k2_ext_2__4_), .B2(Reg_xi_3k2_1_n30), .ZN(Reg_xi_3k2_1_n26) );
  INV_X1 Reg_xi_3k2_1_U13 ( .A(Reg_xi_3k2_1_n26), .ZN(Reg_xi_3k2_1_n6) );
  AOI22_X1 Reg_xi_3k2_1_U12 ( .A1(x3k2_ext_1__3_), .A2(Reg_xi_3k2_1_n31), .B1(
        x3k2_ext_2__3_), .B2(Reg_xi_3k2_1_n30), .ZN(Reg_xi_3k2_1_n27) );
  INV_X1 Reg_xi_3k2_1_U11 ( .A(Reg_xi_3k2_1_n27), .ZN(Reg_xi_3k2_1_n7) );
  AOI22_X1 Reg_xi_3k2_1_U10 ( .A1(x3k2_ext_1__2_), .A2(Reg_xi_3k2_1_n31), .B1(
        x3k2_ext_2__2_), .B2(Reg_xi_3k2_1_n30), .ZN(Reg_xi_3k2_1_n28) );
  INV_X1 Reg_xi_3k2_1_U9 ( .A(Reg_xi_3k2_1_n28), .ZN(Reg_xi_3k2_1_n8) );
  AOI22_X1 Reg_xi_3k2_1_U8 ( .A1(x3k2_ext_1__1_), .A2(Reg_xi_3k2_1_n31), .B1(
        x3k2_ext_2__1_), .B2(Reg_xi_3k2_1_n30), .ZN(Reg_xi_3k2_1_n29) );
  INV_X1 Reg_xi_3k2_1_U7 ( .A(Reg_xi_3k2_1_n29), .ZN(Reg_xi_3k2_1_n9) );
  AOI22_X1 Reg_xi_3k2_1_U6 ( .A1(x3k2_ext_1__0_), .A2(Reg_xi_3k2_1_n31), .B1(
        x3k2_ext_2__0_), .B2(Reg_xi_3k2_1_n30), .ZN(Reg_xi_3k2_1_n32) );
  INV_X1 Reg_xi_3k2_1_U5 ( .A(Reg_xi_3k2_1_n32), .ZN(Reg_xi_3k2_1_n10) );
  NOR2_X1 Reg_xi_3k2_1_U4 ( .A1(VIN), .A2(Reg_xi_3k2_1_n1), .ZN(
        Reg_xi_3k2_1_n30) );
  NOR2_X1 Reg_xi_3k2_1_U3 ( .A1(Reg_xi_3k2_1_n1), .A2(Reg_xi_3k2_1_n30), .ZN(
        Reg_xi_3k2_1_n31) );
  DFF_X1 Reg_xi_3k2_1_Q_reg_0_ ( .D(Reg_xi_3k2_1_n10), .CK(CLK), .Q(
        x3k2_ext_2__0_) );
  DFF_X1 Reg_xi_3k2_1_Q_reg_1_ ( .D(Reg_xi_3k2_1_n9), .CK(CLK), .Q(
        x3k2_ext_2__1_) );
  DFF_X1 Reg_xi_3k2_1_Q_reg_2_ ( .D(Reg_xi_3k2_1_n8), .CK(CLK), .Q(
        x3k2_ext_2__2_) );
  DFF_X1 Reg_xi_3k2_1_Q_reg_3_ ( .D(Reg_xi_3k2_1_n7), .CK(CLK), .Q(
        x3k2_ext_2__3_) );
  DFF_X1 Reg_xi_3k2_1_Q_reg_4_ ( .D(Reg_xi_3k2_1_n6), .CK(CLK), .Q(
        x3k2_ext_2__4_) );
  DFF_X1 Reg_xi_3k2_1_Q_reg_5_ ( .D(Reg_xi_3k2_1_n5), .CK(CLK), .Q(
        x3k2_ext_2__5_) );
  DFF_X1 Reg_xi_3k2_1_Q_reg_6_ ( .D(Reg_xi_3k2_1_n4), .CK(CLK), .Q(
        x3k2_ext_2__6_) );
  DFF_X1 Reg_xi_3k2_1_Q_reg_7_ ( .D(Reg_xi_3k2_1_n3), .CK(CLK), .Q(
        x3k2_ext_2__7_) );
  DFF_X1 Reg_xi_3k2_1_Q_reg_8_ ( .D(Reg_xi_3k2_1_n2), .CK(CLK), .Q(
        x3k2_ext_2__9_) );
  INV_X1 Reg_xi_3k1_1_0_U23 ( .A(n30), .ZN(Reg_xi_3k1_1_0_n1) );
  AOI22_X1 Reg_xi_3k1_1_0_U22 ( .A1(x3k1_ext_2__2_), .A2(Reg_xi_3k1_1_0_n31), 
        .B1(x3k1_ext_3__2_), .B2(Reg_xi_3k1_1_0_n30), .ZN(Reg_xi_3k1_1_0_n28)
         );
  INV_X1 Reg_xi_3k1_1_0_U21 ( .A(Reg_xi_3k1_1_0_n28), .ZN(Reg_xi_3k1_1_0_n8)
         );
  AOI22_X1 Reg_xi_3k1_1_0_U20 ( .A1(x3k1_ext_2__9_), .A2(Reg_xi_3k1_1_0_n31), 
        .B1(x3k1_ext_3__9_), .B2(Reg_xi_3k1_1_0_n30), .ZN(Reg_xi_3k1_1_0_n22)
         );
  INV_X1 Reg_xi_3k1_1_0_U19 ( .A(Reg_xi_3k1_1_0_n22), .ZN(Reg_xi_3k1_1_0_n2)
         );
  AOI22_X1 Reg_xi_3k1_1_0_U18 ( .A1(x3k1_ext_2__7_), .A2(Reg_xi_3k1_1_0_n31), 
        .B1(x3k1_ext_3__7_), .B2(Reg_xi_3k1_1_0_n30), .ZN(Reg_xi_3k1_1_0_n23)
         );
  INV_X1 Reg_xi_3k1_1_0_U17 ( .A(Reg_xi_3k1_1_0_n23), .ZN(Reg_xi_3k1_1_0_n3)
         );
  AOI22_X1 Reg_xi_3k1_1_0_U16 ( .A1(x3k1_ext_2__6_), .A2(Reg_xi_3k1_1_0_n31), 
        .B1(x3k1_ext_3__6_), .B2(Reg_xi_3k1_1_0_n30), .ZN(Reg_xi_3k1_1_0_n24)
         );
  INV_X1 Reg_xi_3k1_1_0_U15 ( .A(Reg_xi_3k1_1_0_n24), .ZN(Reg_xi_3k1_1_0_n4)
         );
  AOI22_X1 Reg_xi_3k1_1_0_U14 ( .A1(x3k1_ext_2__5_), .A2(Reg_xi_3k1_1_0_n31), 
        .B1(x3k1_ext_3__5_), .B2(Reg_xi_3k1_1_0_n30), .ZN(Reg_xi_3k1_1_0_n25)
         );
  INV_X1 Reg_xi_3k1_1_0_U13 ( .A(Reg_xi_3k1_1_0_n25), .ZN(Reg_xi_3k1_1_0_n5)
         );
  AOI22_X1 Reg_xi_3k1_1_0_U12 ( .A1(x3k1_ext_2__4_), .A2(Reg_xi_3k1_1_0_n31), 
        .B1(x3k1_ext_3__4_), .B2(Reg_xi_3k1_1_0_n30), .ZN(Reg_xi_3k1_1_0_n26)
         );
  INV_X1 Reg_xi_3k1_1_0_U11 ( .A(Reg_xi_3k1_1_0_n26), .ZN(Reg_xi_3k1_1_0_n6)
         );
  AOI22_X1 Reg_xi_3k1_1_0_U10 ( .A1(x3k1_ext_2__3_), .A2(Reg_xi_3k1_1_0_n31), 
        .B1(x3k1_ext_3__3_), .B2(Reg_xi_3k1_1_0_n30), .ZN(Reg_xi_3k1_1_0_n27)
         );
  INV_X1 Reg_xi_3k1_1_0_U9 ( .A(Reg_xi_3k1_1_0_n27), .ZN(Reg_xi_3k1_1_0_n7) );
  AOI22_X1 Reg_xi_3k1_1_0_U8 ( .A1(x3k1_ext_2__1_), .A2(Reg_xi_3k1_1_0_n31), 
        .B1(x3k1_ext_3__1_), .B2(Reg_xi_3k1_1_0_n30), .ZN(Reg_xi_3k1_1_0_n29)
         );
  INV_X1 Reg_xi_3k1_1_0_U7 ( .A(Reg_xi_3k1_1_0_n29), .ZN(Reg_xi_3k1_1_0_n9) );
  AOI22_X1 Reg_xi_3k1_1_0_U6 ( .A1(x3k1_ext_2__0_), .A2(Reg_xi_3k1_1_0_n31), 
        .B1(x3k1_ext_3__0_), .B2(Reg_xi_3k1_1_0_n30), .ZN(Reg_xi_3k1_1_0_n32)
         );
  INV_X1 Reg_xi_3k1_1_0_U5 ( .A(Reg_xi_3k1_1_0_n32), .ZN(Reg_xi_3k1_1_0_n10)
         );
  NOR2_X1 Reg_xi_3k1_1_0_U4 ( .A1(VIN), .A2(Reg_xi_3k1_1_0_n1), .ZN(
        Reg_xi_3k1_1_0_n30) );
  NOR2_X1 Reg_xi_3k1_1_0_U3 ( .A1(Reg_xi_3k1_1_0_n1), .A2(Reg_xi_3k1_1_0_n30), 
        .ZN(Reg_xi_3k1_1_0_n31) );
  DFF_X1 Reg_xi_3k1_1_0_Q_reg_0_ ( .D(Reg_xi_3k1_1_0_n10), .CK(CLK), .Q(
        x3k1_ext_3__0_) );
  DFF_X1 Reg_xi_3k1_1_0_Q_reg_1_ ( .D(Reg_xi_3k1_1_0_n9), .CK(CLK), .Q(
        x3k1_ext_3__1_) );
  DFF_X1 Reg_xi_3k1_1_0_Q_reg_2_ ( .D(Reg_xi_3k1_1_0_n8), .CK(CLK), .Q(
        x3k1_ext_3__2_) );
  DFF_X1 Reg_xi_3k1_1_0_Q_reg_3_ ( .D(Reg_xi_3k1_1_0_n7), .CK(CLK), .Q(
        x3k1_ext_3__3_) );
  DFF_X1 Reg_xi_3k1_1_0_Q_reg_4_ ( .D(Reg_xi_3k1_1_0_n6), .CK(CLK), .Q(
        x3k1_ext_3__4_) );
  DFF_X1 Reg_xi_3k1_1_0_Q_reg_5_ ( .D(Reg_xi_3k1_1_0_n5), .CK(CLK), .Q(
        x3k1_ext_3__5_) );
  DFF_X1 Reg_xi_3k1_1_0_Q_reg_6_ ( .D(Reg_xi_3k1_1_0_n4), .CK(CLK), .Q(
        x3k1_ext_3__6_) );
  DFF_X1 Reg_xi_3k1_1_0_Q_reg_7_ ( .D(Reg_xi_3k1_1_0_n3), .CK(CLK), .Q(
        x3k1_ext_3__7_) );
  DFF_X1 Reg_xi_3k1_1_0_Q_reg_8_ ( .D(Reg_xi_3k1_1_0_n2), .CK(CLK), .Q(
        x3k1_ext_3__9_) );
  INV_X1 Reg_xi_3k2_2_U23 ( .A(n30), .ZN(Reg_xi_3k2_2_n1) );
  AOI22_X1 Reg_xi_3k2_2_U22 ( .A1(x3k2_ext_2__9_), .A2(Reg_xi_3k2_2_n31), .B1(
        x3k2_ext_3__9_), .B2(Reg_xi_3k2_2_n30), .ZN(Reg_xi_3k2_2_n22) );
  INV_X1 Reg_xi_3k2_2_U21 ( .A(Reg_xi_3k2_2_n22), .ZN(Reg_xi_3k2_2_n2) );
  AOI22_X1 Reg_xi_3k2_2_U20 ( .A1(x3k2_ext_2__7_), .A2(Reg_xi_3k2_2_n31), .B1(
        x3k2_ext_3__7_), .B2(Reg_xi_3k2_2_n30), .ZN(Reg_xi_3k2_2_n23) );
  INV_X1 Reg_xi_3k2_2_U19 ( .A(Reg_xi_3k2_2_n23), .ZN(Reg_xi_3k2_2_n3) );
  AOI22_X1 Reg_xi_3k2_2_U18 ( .A1(x3k2_ext_2__6_), .A2(Reg_xi_3k2_2_n31), .B1(
        x3k2_ext_3__6_), .B2(Reg_xi_3k2_2_n30), .ZN(Reg_xi_3k2_2_n24) );
  INV_X1 Reg_xi_3k2_2_U17 ( .A(Reg_xi_3k2_2_n24), .ZN(Reg_xi_3k2_2_n4) );
  AOI22_X1 Reg_xi_3k2_2_U16 ( .A1(x3k2_ext_2__5_), .A2(Reg_xi_3k2_2_n31), .B1(
        x3k2_ext_3__5_), .B2(Reg_xi_3k2_2_n30), .ZN(Reg_xi_3k2_2_n25) );
  INV_X1 Reg_xi_3k2_2_U15 ( .A(Reg_xi_3k2_2_n25), .ZN(Reg_xi_3k2_2_n5) );
  AOI22_X1 Reg_xi_3k2_2_U14 ( .A1(x3k2_ext_2__4_), .A2(Reg_xi_3k2_2_n31), .B1(
        x3k2_ext_3__4_), .B2(Reg_xi_3k2_2_n30), .ZN(Reg_xi_3k2_2_n26) );
  INV_X1 Reg_xi_3k2_2_U13 ( .A(Reg_xi_3k2_2_n26), .ZN(Reg_xi_3k2_2_n6) );
  AOI22_X1 Reg_xi_3k2_2_U12 ( .A1(x3k2_ext_2__3_), .A2(Reg_xi_3k2_2_n31), .B1(
        x3k2_ext_3__3_), .B2(Reg_xi_3k2_2_n30), .ZN(Reg_xi_3k2_2_n27) );
  INV_X1 Reg_xi_3k2_2_U11 ( .A(Reg_xi_3k2_2_n27), .ZN(Reg_xi_3k2_2_n7) );
  AOI22_X1 Reg_xi_3k2_2_U10 ( .A1(x3k2_ext_2__2_), .A2(Reg_xi_3k2_2_n31), .B1(
        x3k2_ext_3__2_), .B2(Reg_xi_3k2_2_n30), .ZN(Reg_xi_3k2_2_n28) );
  INV_X1 Reg_xi_3k2_2_U9 ( .A(Reg_xi_3k2_2_n28), .ZN(Reg_xi_3k2_2_n8) );
  AOI22_X1 Reg_xi_3k2_2_U8 ( .A1(x3k2_ext_2__1_), .A2(Reg_xi_3k2_2_n31), .B1(
        x3k2_ext_3__1_), .B2(Reg_xi_3k2_2_n30), .ZN(Reg_xi_3k2_2_n29) );
  INV_X1 Reg_xi_3k2_2_U7 ( .A(Reg_xi_3k2_2_n29), .ZN(Reg_xi_3k2_2_n9) );
  AOI22_X1 Reg_xi_3k2_2_U6 ( .A1(x3k2_ext_2__0_), .A2(Reg_xi_3k2_2_n31), .B1(
        x3k2_ext_3__0_), .B2(Reg_xi_3k2_2_n30), .ZN(Reg_xi_3k2_2_n32) );
  INV_X1 Reg_xi_3k2_2_U5 ( .A(Reg_xi_3k2_2_n32), .ZN(Reg_xi_3k2_2_n10) );
  NOR2_X1 Reg_xi_3k2_2_U4 ( .A1(VIN), .A2(Reg_xi_3k2_2_n1), .ZN(
        Reg_xi_3k2_2_n30) );
  NOR2_X1 Reg_xi_3k2_2_U3 ( .A1(Reg_xi_3k2_2_n1), .A2(Reg_xi_3k2_2_n30), .ZN(
        Reg_xi_3k2_2_n31) );
  DFF_X1 Reg_xi_3k2_2_Q_reg_0_ ( .D(Reg_xi_3k2_2_n10), .CK(CLK), .Q(
        x3k2_ext_3__0_) );
  DFF_X1 Reg_xi_3k2_2_Q_reg_1_ ( .D(Reg_xi_3k2_2_n9), .CK(CLK), .Q(
        x3k2_ext_3__1_) );
  DFF_X1 Reg_xi_3k2_2_Q_reg_2_ ( .D(Reg_xi_3k2_2_n8), .CK(CLK), .Q(
        x3k2_ext_3__2_) );
  DFF_X1 Reg_xi_3k2_2_Q_reg_3_ ( .D(Reg_xi_3k2_2_n7), .CK(CLK), .Q(
        x3k2_ext_3__3_) );
  DFF_X1 Reg_xi_3k2_2_Q_reg_4_ ( .D(Reg_xi_3k2_2_n6), .CK(CLK), .Q(
        x3k2_ext_3__4_) );
  DFF_X1 Reg_xi_3k2_2_Q_reg_5_ ( .D(Reg_xi_3k2_2_n5), .CK(CLK), .Q(
        x3k2_ext_3__5_) );
  DFF_X1 Reg_xi_3k2_2_Q_reg_6_ ( .D(Reg_xi_3k2_2_n4), .CK(CLK), .Q(
        x3k2_ext_3__6_) );
  DFF_X1 Reg_xi_3k2_2_Q_reg_7_ ( .D(Reg_xi_3k2_2_n3), .CK(CLK), .Q(
        x3k2_ext_3__7_) );
  DFF_X1 Reg_xi_3k2_2_Q_reg_8_ ( .D(Reg_xi_3k2_2_n2), .CK(CLK), .Q(
        x3k2_ext_3__9_) );
  INV_X1 Reg_xk_p1_U15 ( .A(n30), .ZN(Reg_xk_p1_n1) );
  AOI22_X1 Reg_xk_p1_U14 ( .A1(x3k2_ext_2__9_), .A2(Reg_xk_p1_n8), .B1(
        x_3k2_p[4]), .B2(Reg_xk_p1_n9), .ZN(Reg_xk_p1_n13) );
  INV_X1 Reg_xk_p1_U13 ( .A(Reg_xk_p1_n13), .ZN(Reg_xk_p1_n2) );
  AOI22_X1 Reg_xk_p1_U12 ( .A1(x3k2_ext_2__7_), .A2(Reg_xk_p1_n8), .B1(
        x_3k2_p[3]), .B2(Reg_xk_p1_n9), .ZN(Reg_xk_p1_n12) );
  INV_X1 Reg_xk_p1_U11 ( .A(Reg_xk_p1_n12), .ZN(Reg_xk_p1_n3) );
  AOI22_X1 Reg_xk_p1_U10 ( .A1(x3k2_ext_2__6_), .A2(Reg_xk_p1_n8), .B1(
        x_3k2_p[2]), .B2(Reg_xk_p1_n9), .ZN(Reg_xk_p1_n11) );
  INV_X1 Reg_xk_p1_U9 ( .A(Reg_xk_p1_n11), .ZN(Reg_xk_p1_n4) );
  AOI22_X1 Reg_xk_p1_U8 ( .A1(x3k2_ext_2__5_), .A2(Reg_xk_p1_n8), .B1(
        x_3k2_p[1]), .B2(Reg_xk_p1_n9), .ZN(Reg_xk_p1_n10) );
  INV_X1 Reg_xk_p1_U7 ( .A(Reg_xk_p1_n10), .ZN(Reg_xk_p1_n5) );
  AOI22_X1 Reg_xk_p1_U6 ( .A1(x3k2_ext_2__4_), .A2(Reg_xk_p1_n8), .B1(
        x_3k2_p[0]), .B2(Reg_xk_p1_n9), .ZN(Reg_xk_p1_n7) );
  INV_X1 Reg_xk_p1_U5 ( .A(Reg_xk_p1_n7), .ZN(Reg_xk_p1_n6) );
  NOR2_X1 Reg_xk_p1_U4 ( .A1(VIN_d1), .A2(Reg_xk_p1_n1), .ZN(Reg_xk_p1_n9) );
  NOR2_X1 Reg_xk_p1_U3 ( .A1(Reg_xk_p1_n1), .A2(Reg_xk_p1_n9), .ZN(
        Reg_xk_p1_n8) );
  DFF_X1 Reg_xk_p1_Q_reg_0_ ( .D(Reg_xk_p1_n6), .CK(CLK), .Q(x_3k2_p[0]) );
  DFF_X1 Reg_xk_p1_Q_reg_1_ ( .D(Reg_xk_p1_n5), .CK(CLK), .Q(x_3k2_p[1]) );
  DFF_X1 Reg_xk_p1_Q_reg_2_ ( .D(Reg_xk_p1_n4), .CK(CLK), .Q(x_3k2_p[2]) );
  DFF_X1 Reg_xk_p1_Q_reg_3_ ( .D(Reg_xk_p1_n3), .CK(CLK), .Q(x_3k2_p[3]) );
  DFF_X1 Reg_xk_p1_Q_reg_4_ ( .D(Reg_xk_p1_n2), .CK(CLK), .Q(x_3k2_p[4]) );
  INV_X1 Reg_xk_p2_U15 ( .A(n28), .ZN(Reg_xk_p2_n1) );
  AOI22_X1 Reg_xk_p2_U14 ( .A1(x3k_ext_1__7_), .A2(Reg_xk_p2_n19), .B1(
        x_3k_p[3]), .B2(Reg_xk_p2_n18), .ZN(Reg_xk_p2_n15) );
  INV_X1 Reg_xk_p2_U13 ( .A(Reg_xk_p2_n15), .ZN(Reg_xk_p2_n3) );
  AOI22_X1 Reg_xk_p2_U12 ( .A1(x3k_ext_1__6_), .A2(Reg_xk_p2_n19), .B1(
        x_3k_p[2]), .B2(Reg_xk_p2_n18), .ZN(Reg_xk_p2_n16) );
  INV_X1 Reg_xk_p2_U11 ( .A(Reg_xk_p2_n16), .ZN(Reg_xk_p2_n4) );
  AOI22_X1 Reg_xk_p2_U10 ( .A1(x3k_ext_1__5_), .A2(Reg_xk_p2_n19), .B1(
        x_3k_p[1]), .B2(Reg_xk_p2_n18), .ZN(Reg_xk_p2_n17) );
  INV_X1 Reg_xk_p2_U9 ( .A(Reg_xk_p2_n17), .ZN(Reg_xk_p2_n5) );
  AOI22_X1 Reg_xk_p2_U8 ( .A1(x3k_ext_1__4_), .A2(Reg_xk_p2_n19), .B1(
        x_3k_p[0]), .B2(Reg_xk_p2_n18), .ZN(Reg_xk_p2_n20) );
  INV_X1 Reg_xk_p2_U7 ( .A(Reg_xk_p2_n20), .ZN(Reg_xk_p2_n6) );
  AOI22_X1 Reg_xk_p2_U6 ( .A1(x3k_ext_1__9_), .A2(Reg_xk_p2_n19), .B1(
        x_3k_p[4]), .B2(Reg_xk_p2_n18), .ZN(Reg_xk_p2_n14) );
  INV_X1 Reg_xk_p2_U5 ( .A(Reg_xk_p2_n14), .ZN(Reg_xk_p2_n2) );
  NOR2_X1 Reg_xk_p2_U4 ( .A1(VIN_d1), .A2(Reg_xk_p2_n1), .ZN(Reg_xk_p2_n18) );
  NOR2_X1 Reg_xk_p2_U3 ( .A1(Reg_xk_p2_n1), .A2(Reg_xk_p2_n18), .ZN(
        Reg_xk_p2_n19) );
  DFF_X1 Reg_xk_p2_Q_reg_0_ ( .D(Reg_xk_p2_n6), .CK(CLK), .Q(x_3k_p[0]) );
  DFF_X1 Reg_xk_p2_Q_reg_1_ ( .D(Reg_xk_p2_n5), .CK(CLK), .Q(x_3k_p[1]) );
  DFF_X1 Reg_xk_p2_Q_reg_2_ ( .D(Reg_xk_p2_n4), .CK(CLK), .Q(x_3k_p[2]) );
  DFF_X1 Reg_xk_p2_Q_reg_3_ ( .D(Reg_xk_p2_n3), .CK(CLK), .Q(x_3k_p[3]) );
  DFF_X1 Reg_xk_p2_Q_reg_4_ ( .D(Reg_xk_p2_n2), .CK(CLK), .Q(x_3k_p[4]) );
  INV_X1 Reg_xk_p3_U15 ( .A(n28), .ZN(Reg_xk_p3_n1) );
  AOI22_X1 Reg_xk_p3_U14 ( .A1(x3k1_ext_1__7_), .A2(Reg_xk_p3_n19), .B1(
        x_3k1_p[3]), .B2(Reg_xk_p3_n18), .ZN(Reg_xk_p3_n15) );
  INV_X1 Reg_xk_p3_U13 ( .A(Reg_xk_p3_n15), .ZN(Reg_xk_p3_n3) );
  AOI22_X1 Reg_xk_p3_U12 ( .A1(x3k1_ext_1__6_), .A2(Reg_xk_p3_n19), .B1(
        x_3k1_p[2]), .B2(Reg_xk_p3_n18), .ZN(Reg_xk_p3_n16) );
  INV_X1 Reg_xk_p3_U11 ( .A(Reg_xk_p3_n16), .ZN(Reg_xk_p3_n4) );
  AOI22_X1 Reg_xk_p3_U10 ( .A1(x3k1_ext_1__5_), .A2(Reg_xk_p3_n19), .B1(
        x_3k1_p[1]), .B2(Reg_xk_p3_n18), .ZN(Reg_xk_p3_n17) );
  INV_X1 Reg_xk_p3_U9 ( .A(Reg_xk_p3_n17), .ZN(Reg_xk_p3_n5) );
  AOI22_X1 Reg_xk_p3_U8 ( .A1(x3k1_ext_1__4_), .A2(Reg_xk_p3_n19), .B1(
        x_3k1_p[0]), .B2(Reg_xk_p3_n18), .ZN(Reg_xk_p3_n20) );
  INV_X1 Reg_xk_p3_U7 ( .A(Reg_xk_p3_n20), .ZN(Reg_xk_p3_n6) );
  AOI22_X1 Reg_xk_p3_U6 ( .A1(x3k1_ext_1__9_), .A2(Reg_xk_p3_n19), .B1(
        x_3k1_p[4]), .B2(Reg_xk_p3_n18), .ZN(Reg_xk_p3_n14) );
  INV_X1 Reg_xk_p3_U5 ( .A(Reg_xk_p3_n14), .ZN(Reg_xk_p3_n2) );
  NOR2_X1 Reg_xk_p3_U4 ( .A1(VIN_d1), .A2(Reg_xk_p3_n1), .ZN(Reg_xk_p3_n18) );
  NOR2_X1 Reg_xk_p3_U3 ( .A1(Reg_xk_p3_n1), .A2(Reg_xk_p3_n18), .ZN(
        Reg_xk_p3_n19) );
  DFF_X1 Reg_xk_p3_Q_reg_0_ ( .D(Reg_xk_p3_n6), .CK(CLK), .Q(x_3k1_p[0]) );
  DFF_X1 Reg_xk_p3_Q_reg_1_ ( .D(Reg_xk_p3_n5), .CK(CLK), .Q(x_3k1_p[1]) );
  DFF_X1 Reg_xk_p3_Q_reg_2_ ( .D(Reg_xk_p3_n4), .CK(CLK), .Q(x_3k1_p[2]) );
  DFF_X1 Reg_xk_p3_Q_reg_3_ ( .D(Reg_xk_p3_n3), .CK(CLK), .Q(x_3k1_p[3]) );
  DFF_X1 Reg_xk_p3_Q_reg_4_ ( .D(Reg_xk_p3_n2), .CK(CLK), .Q(x_3k1_p[4]) );
  INV_X1 Reg_b_p1_U15 ( .A(n28), .ZN(Reg_b_p1_n1) );
  AOI22_X1 Reg_b_p1_U14 ( .A1(b_4__5_), .A2(Reg_b_p1_n19), .B1(b_p[21]), .B2(
        Reg_b_p1_n18), .ZN(Reg_b_p1_n17) );
  INV_X1 Reg_b_p1_U13 ( .A(Reg_b_p1_n17), .ZN(Reg_b_p1_n5) );
  AOI22_X1 Reg_b_p1_U12 ( .A1(b_4__4_), .A2(Reg_b_p1_n19), .B1(b_p[20]), .B2(
        Reg_b_p1_n18), .ZN(Reg_b_p1_n20) );
  INV_X1 Reg_b_p1_U11 ( .A(Reg_b_p1_n20), .ZN(Reg_b_p1_n6) );
  AOI22_X1 Reg_b_p1_U10 ( .A1(b_4__7_), .A2(Reg_b_p1_n19), .B1(b_p[23]), .B2(
        Reg_b_p1_n18), .ZN(Reg_b_p1_n15) );
  INV_X1 Reg_b_p1_U9 ( .A(Reg_b_p1_n15), .ZN(Reg_b_p1_n3) );
  AOI22_X1 Reg_b_p1_U8 ( .A1(b_4__6_), .A2(Reg_b_p1_n19), .B1(b_p[22]), .B2(
        Reg_b_p1_n18), .ZN(Reg_b_p1_n16) );
  INV_X1 Reg_b_p1_U7 ( .A(Reg_b_p1_n16), .ZN(Reg_b_p1_n4) );
  AOI22_X1 Reg_b_p1_U6 ( .A1(b_4__8_), .A2(Reg_b_p1_n19), .B1(b_p[24]), .B2(
        Reg_b_p1_n18), .ZN(Reg_b_p1_n14) );
  INV_X1 Reg_b_p1_U5 ( .A(Reg_b_p1_n14), .ZN(Reg_b_p1_n2) );
  NOR2_X1 Reg_b_p1_U4 ( .A1(VIN_d1), .A2(Reg_b_p1_n1), .ZN(Reg_b_p1_n18) );
  NOR2_X1 Reg_b_p1_U3 ( .A1(Reg_b_p1_n1), .A2(Reg_b_p1_n18), .ZN(Reg_b_p1_n19)
         );
  DFF_X1 Reg_b_p1_Q_reg_0_ ( .D(Reg_b_p1_n6), .CK(CLK), .Q(b_p[20]) );
  DFF_X1 Reg_b_p1_Q_reg_1_ ( .D(Reg_b_p1_n5), .CK(CLK), .Q(b_p[21]) );
  DFF_X1 Reg_b_p1_Q_reg_2_ ( .D(Reg_b_p1_n4), .CK(CLK), .Q(b_p[22]) );
  DFF_X1 Reg_b_p1_Q_reg_3_ ( .D(Reg_b_p1_n3), .CK(CLK), .Q(b_p[23]) );
  DFF_X1 Reg_b_p1_Q_reg_4_ ( .D(Reg_b_p1_n2), .CK(CLK), .Q(b_p[24]) );
  INV_X1 Reg_s_p1_0_U17 ( .A(n30), .ZN(Reg_s_p1_0_n1) );
  AOI22_X1 Reg_s_p1_0_U16 ( .A1(s_1_0__7_), .A2(Reg_s_p1_0_n9), .B1(s_1p[3]), 
        .B2(Reg_s_p1_0_n10), .ZN(Reg_s_p1_0_n13) );
  INV_X1 Reg_s_p1_0_U15 ( .A(Reg_s_p1_0_n13), .ZN(Reg_s_p1_0_n4) );
  AOI22_X1 Reg_s_p1_0_U14 ( .A1(s_1_0__5_), .A2(Reg_s_p1_0_n9), .B1(s_1p[1]), 
        .B2(Reg_s_p1_0_n10), .ZN(Reg_s_p1_0_n11) );
  INV_X1 Reg_s_p1_0_U13 ( .A(Reg_s_p1_0_n11), .ZN(Reg_s_p1_0_n6) );
  AOI22_X1 Reg_s_p1_0_U12 ( .A1(s_1_0__4_), .A2(Reg_s_p1_0_n9), .B1(s_1p[0]), 
        .B2(Reg_s_p1_0_n10), .ZN(Reg_s_p1_0_n8) );
  INV_X1 Reg_s_p1_0_U11 ( .A(Reg_s_p1_0_n8), .ZN(Reg_s_p1_0_n7) );
  AOI22_X1 Reg_s_p1_0_U10 ( .A1(s_1_0__9_), .A2(Reg_s_p1_0_n9), .B1(s_1p[5]), 
        .B2(Reg_s_p1_0_n10), .ZN(Reg_s_p1_0_n15) );
  INV_X1 Reg_s_p1_0_U9 ( .A(Reg_s_p1_0_n15), .ZN(Reg_s_p1_0_n2) );
  AOI22_X1 Reg_s_p1_0_U8 ( .A1(s_1_0__8_), .A2(Reg_s_p1_0_n9), .B1(s_1p[4]), 
        .B2(Reg_s_p1_0_n10), .ZN(Reg_s_p1_0_n14) );
  INV_X1 Reg_s_p1_0_U7 ( .A(Reg_s_p1_0_n14), .ZN(Reg_s_p1_0_n3) );
  AOI22_X1 Reg_s_p1_0_U6 ( .A1(s_1_0__6_), .A2(Reg_s_p1_0_n9), .B1(s_1p[2]), 
        .B2(Reg_s_p1_0_n10), .ZN(Reg_s_p1_0_n12) );
  INV_X1 Reg_s_p1_0_U5 ( .A(Reg_s_p1_0_n12), .ZN(Reg_s_p1_0_n5) );
  NOR2_X1 Reg_s_p1_0_U4 ( .A1(VIN_d1), .A2(Reg_s_p1_0_n1), .ZN(Reg_s_p1_0_n10)
         );
  NOR2_X1 Reg_s_p1_0_U3 ( .A1(Reg_s_p1_0_n1), .A2(Reg_s_p1_0_n10), .ZN(
        Reg_s_p1_0_n9) );
  DFF_X1 Reg_s_p1_0_Q_reg_0_ ( .D(Reg_s_p1_0_n7), .CK(CLK), .Q(s_1p[0]) );
  DFF_X1 Reg_s_p1_0_Q_reg_1_ ( .D(Reg_s_p1_0_n6), .CK(CLK), .Q(s_1p[1]) );
  DFF_X1 Reg_s_p1_0_Q_reg_2_ ( .D(Reg_s_p1_0_n5), .CK(CLK), .Q(s_1p[2]) );
  DFF_X1 Reg_s_p1_0_Q_reg_3_ ( .D(Reg_s_p1_0_n4), .CK(CLK), .Q(s_1p[3]) );
  DFF_X1 Reg_s_p1_0_Q_reg_4_ ( .D(Reg_s_p1_0_n3), .CK(CLK), .Q(s_1p[4]) );
  DFF_X1 Reg_s_p1_0_Q_reg_5_ ( .D(Reg_s_p1_0_n2), .CK(CLK), .Q(s_1p[5]) );
  INV_X1 Reg_s_p2_0_U17 ( .A(n27), .ZN(Reg_s_p2_0_n1) );
  AOI22_X1 Reg_s_p2_0_U16 ( .A1(s_2_0__9_), .A2(Reg_s_p2_0_n22), .B1(s_2p[5]), 
        .B2(Reg_s_p2_0_n21), .ZN(Reg_s_p2_0_n16) );
  INV_X1 Reg_s_p2_0_U15 ( .A(Reg_s_p2_0_n16), .ZN(Reg_s_p2_0_n2) );
  AOI22_X1 Reg_s_p2_0_U14 ( .A1(s_2_0__8_), .A2(Reg_s_p2_0_n22), .B1(s_2p[4]), 
        .B2(Reg_s_p2_0_n21), .ZN(Reg_s_p2_0_n17) );
  INV_X1 Reg_s_p2_0_U13 ( .A(Reg_s_p2_0_n17), .ZN(Reg_s_p2_0_n3) );
  AOI22_X1 Reg_s_p2_0_U12 ( .A1(s_2_0__7_), .A2(Reg_s_p2_0_n22), .B1(s_2p[3]), 
        .B2(Reg_s_p2_0_n21), .ZN(Reg_s_p2_0_n18) );
  INV_X1 Reg_s_p2_0_U11 ( .A(Reg_s_p2_0_n18), .ZN(Reg_s_p2_0_n4) );
  AOI22_X1 Reg_s_p2_0_U10 ( .A1(s_2_0__5_), .A2(Reg_s_p2_0_n22), .B1(s_2p[1]), 
        .B2(Reg_s_p2_0_n21), .ZN(Reg_s_p2_0_n20) );
  INV_X1 Reg_s_p2_0_U9 ( .A(Reg_s_p2_0_n20), .ZN(Reg_s_p2_0_n6) );
  AOI22_X1 Reg_s_p2_0_U8 ( .A1(s_2_0__4_), .A2(Reg_s_p2_0_n22), .B1(s_2p[0]), 
        .B2(Reg_s_p2_0_n21), .ZN(Reg_s_p2_0_n23) );
  INV_X1 Reg_s_p2_0_U7 ( .A(Reg_s_p2_0_n23), .ZN(Reg_s_p2_0_n7) );
  AOI22_X1 Reg_s_p2_0_U6 ( .A1(s_2_0__6_), .A2(Reg_s_p2_0_n22), .B1(s_2p[2]), 
        .B2(Reg_s_p2_0_n21), .ZN(Reg_s_p2_0_n19) );
  INV_X1 Reg_s_p2_0_U5 ( .A(Reg_s_p2_0_n19), .ZN(Reg_s_p2_0_n5) );
  NOR2_X1 Reg_s_p2_0_U4 ( .A1(VIN_d1), .A2(Reg_s_p2_0_n1), .ZN(Reg_s_p2_0_n21)
         );
  NOR2_X1 Reg_s_p2_0_U3 ( .A1(Reg_s_p2_0_n1), .A2(Reg_s_p2_0_n21), .ZN(
        Reg_s_p2_0_n22) );
  DFF_X1 Reg_s_p2_0_Q_reg_0_ ( .D(Reg_s_p2_0_n7), .CK(CLK), .Q(s_2p[0]) );
  DFF_X1 Reg_s_p2_0_Q_reg_1_ ( .D(Reg_s_p2_0_n6), .CK(CLK), .Q(s_2p[1]) );
  DFF_X1 Reg_s_p2_0_Q_reg_2_ ( .D(Reg_s_p2_0_n5), .CK(CLK), .Q(s_2p[2]) );
  DFF_X1 Reg_s_p2_0_Q_reg_3_ ( .D(Reg_s_p2_0_n4), .CK(CLK), .Q(s_2p[3]) );
  DFF_X1 Reg_s_p2_0_Q_reg_4_ ( .D(Reg_s_p2_0_n3), .CK(CLK), .Q(s_2p[4]) );
  DFF_X1 Reg_s_p2_0_Q_reg_5_ ( .D(Reg_s_p2_0_n2), .CK(CLK), .Q(s_2p[5]) );
  INV_X1 Reg_s_p3_0_U17 ( .A(n27), .ZN(Reg_s_p3_0_n1) );
  AOI22_X1 Reg_s_p3_0_U16 ( .A1(s_3_0__6_), .A2(Reg_s_p3_0_n22), .B1(s_3p[2]), 
        .B2(Reg_s_p3_0_n21), .ZN(Reg_s_p3_0_n19) );
  INV_X1 Reg_s_p3_0_U15 ( .A(Reg_s_p3_0_n19), .ZN(Reg_s_p3_0_n5) );
  AOI22_X1 Reg_s_p3_0_U14 ( .A1(s_3_0__5_), .A2(Reg_s_p3_0_n22), .B1(s_3p[1]), 
        .B2(Reg_s_p3_0_n21), .ZN(Reg_s_p3_0_n20) );
  INV_X1 Reg_s_p3_0_U13 ( .A(Reg_s_p3_0_n20), .ZN(Reg_s_p3_0_n6) );
  AOI22_X1 Reg_s_p3_0_U12 ( .A1(s_3_0__4_), .A2(Reg_s_p3_0_n22), .B1(s_3p[0]), 
        .B2(Reg_s_p3_0_n21), .ZN(Reg_s_p3_0_n23) );
  INV_X1 Reg_s_p3_0_U11 ( .A(Reg_s_p3_0_n23), .ZN(Reg_s_p3_0_n7) );
  AOI22_X1 Reg_s_p3_0_U10 ( .A1(s_3_0__9_), .A2(Reg_s_p3_0_n22), .B1(s_3p[5]), 
        .B2(Reg_s_p3_0_n21), .ZN(Reg_s_p3_0_n16) );
  INV_X1 Reg_s_p3_0_U9 ( .A(Reg_s_p3_0_n16), .ZN(Reg_s_p3_0_n2) );
  AOI22_X1 Reg_s_p3_0_U8 ( .A1(s_3_0__8_), .A2(Reg_s_p3_0_n22), .B1(s_3p[4]), 
        .B2(Reg_s_p3_0_n21), .ZN(Reg_s_p3_0_n17) );
  INV_X1 Reg_s_p3_0_U7 ( .A(Reg_s_p3_0_n17), .ZN(Reg_s_p3_0_n3) );
  AOI22_X1 Reg_s_p3_0_U6 ( .A1(s_3_0__7_), .A2(Reg_s_p3_0_n22), .B1(s_3p[3]), 
        .B2(Reg_s_p3_0_n21), .ZN(Reg_s_p3_0_n18) );
  INV_X1 Reg_s_p3_0_U5 ( .A(Reg_s_p3_0_n18), .ZN(Reg_s_p3_0_n4) );
  NOR2_X1 Reg_s_p3_0_U4 ( .A1(VIN_d1), .A2(Reg_s_p3_0_n1), .ZN(Reg_s_p3_0_n21)
         );
  NOR2_X1 Reg_s_p3_0_U3 ( .A1(Reg_s_p3_0_n1), .A2(Reg_s_p3_0_n21), .ZN(
        Reg_s_p3_0_n22) );
  DFF_X1 Reg_s_p3_0_Q_reg_0_ ( .D(Reg_s_p3_0_n7), .CK(CLK), .Q(s_3p[0]) );
  DFF_X1 Reg_s_p3_0_Q_reg_1_ ( .D(Reg_s_p3_0_n6), .CK(CLK), .Q(s_3p[1]) );
  DFF_X1 Reg_s_p3_0_Q_reg_2_ ( .D(Reg_s_p3_0_n5), .CK(CLK), .Q(s_3p[2]) );
  DFF_X1 Reg_s_p3_0_Q_reg_3_ ( .D(Reg_s_p3_0_n4), .CK(CLK), .Q(s_3p[3]) );
  DFF_X1 Reg_s_p3_0_Q_reg_4_ ( .D(Reg_s_p3_0_n3), .CK(CLK), .Q(s_3p[4]) );
  DFF_X1 Reg_s_p3_0_Q_reg_5_ ( .D(Reg_s_p3_0_n2), .CK(CLK), .Q(s_3p[5]) );
  INV_X1 Reg_b_p2_0_U15 ( .A(n28), .ZN(Reg_b_p2_0_n1) );
  AOI22_X1 Reg_b_p2_0_U14 ( .A1(b_0__5_), .A2(Reg_b_p2_0_n19), .B1(b_p[1]), 
        .B2(Reg_b_p2_0_n18), .ZN(Reg_b_p2_0_n17) );
  INV_X1 Reg_b_p2_0_U13 ( .A(Reg_b_p2_0_n17), .ZN(Reg_b_p2_0_n5) );
  AOI22_X1 Reg_b_p2_0_U12 ( .A1(b_0__7_), .A2(Reg_b_p2_0_n19), .B1(b_p[3]), 
        .B2(Reg_b_p2_0_n18), .ZN(Reg_b_p2_0_n15) );
  INV_X1 Reg_b_p2_0_U11 ( .A(Reg_b_p2_0_n15), .ZN(Reg_b_p2_0_n3) );
  AOI22_X1 Reg_b_p2_0_U10 ( .A1(b_0__6_), .A2(Reg_b_p2_0_n19), .B1(b_p[2]), 
        .B2(Reg_b_p2_0_n18), .ZN(Reg_b_p2_0_n16) );
  INV_X1 Reg_b_p2_0_U9 ( .A(Reg_b_p2_0_n16), .ZN(Reg_b_p2_0_n4) );
  AOI22_X1 Reg_b_p2_0_U8 ( .A1(b_0__4_), .A2(Reg_b_p2_0_n19), .B1(b_p[0]), 
        .B2(Reg_b_p2_0_n18), .ZN(Reg_b_p2_0_n20) );
  INV_X1 Reg_b_p2_0_U7 ( .A(Reg_b_p2_0_n20), .ZN(Reg_b_p2_0_n6) );
  AOI22_X1 Reg_b_p2_0_U6 ( .A1(b_0__8_), .A2(Reg_b_p2_0_n19), .B1(b_p[4]), 
        .B2(Reg_b_p2_0_n18), .ZN(Reg_b_p2_0_n14) );
  INV_X1 Reg_b_p2_0_U5 ( .A(Reg_b_p2_0_n14), .ZN(Reg_b_p2_0_n2) );
  NOR2_X1 Reg_b_p2_0_U4 ( .A1(VIN_d1), .A2(Reg_b_p2_0_n1), .ZN(Reg_b_p2_0_n18)
         );
  NOR2_X1 Reg_b_p2_0_U3 ( .A1(Reg_b_p2_0_n1), .A2(Reg_b_p2_0_n18), .ZN(
        Reg_b_p2_0_n19) );
  DFF_X1 Reg_b_p2_0_Q_reg_0_ ( .D(Reg_b_p2_0_n6), .CK(CLK), .Q(b_p[0]) );
  DFF_X1 Reg_b_p2_0_Q_reg_1_ ( .D(Reg_b_p2_0_n5), .CK(CLK), .Q(b_p[1]) );
  DFF_X1 Reg_b_p2_0_Q_reg_2_ ( .D(Reg_b_p2_0_n4), .CK(CLK), .Q(b_p[2]) );
  DFF_X1 Reg_b_p2_0_Q_reg_3_ ( .D(Reg_b_p2_0_n3), .CK(CLK), .Q(b_p[3]) );
  DFF_X1 Reg_b_p2_0_Q_reg_4_ ( .D(Reg_b_p2_0_n2), .CK(CLK), .Q(b_p[4]) );
  INV_X1 Reg_s_p1_1_U17 ( .A(n27), .ZN(Reg_s_p1_1_n1) );
  AOI22_X1 Reg_s_p1_1_U16 ( .A1(s_1_1__7_), .A2(Reg_s_p1_1_n22), .B1(s_1p[9]), 
        .B2(Reg_s_p1_1_n21), .ZN(Reg_s_p1_1_n18) );
  INV_X1 Reg_s_p1_1_U15 ( .A(Reg_s_p1_1_n18), .ZN(Reg_s_p1_1_n4) );
  AOI22_X1 Reg_s_p1_1_U14 ( .A1(s_1_1__5_), .A2(Reg_s_p1_1_n22), .B1(s_1p[7]), 
        .B2(Reg_s_p1_1_n21), .ZN(Reg_s_p1_1_n20) );
  INV_X1 Reg_s_p1_1_U13 ( .A(Reg_s_p1_1_n20), .ZN(Reg_s_p1_1_n6) );
  AOI22_X1 Reg_s_p1_1_U12 ( .A1(s_1_1__4_), .A2(Reg_s_p1_1_n22), .B1(s_1p[6]), 
        .B2(Reg_s_p1_1_n21), .ZN(Reg_s_p1_1_n23) );
  INV_X1 Reg_s_p1_1_U11 ( .A(Reg_s_p1_1_n23), .ZN(Reg_s_p1_1_n7) );
  AOI22_X1 Reg_s_p1_1_U10 ( .A1(s_1_1__9_), .A2(Reg_s_p1_1_n22), .B1(s_1p[11]), 
        .B2(Reg_s_p1_1_n21), .ZN(Reg_s_p1_1_n16) );
  INV_X1 Reg_s_p1_1_U9 ( .A(Reg_s_p1_1_n16), .ZN(Reg_s_p1_1_n2) );
  AOI22_X1 Reg_s_p1_1_U8 ( .A1(s_1_1__8_), .A2(Reg_s_p1_1_n22), .B1(s_1p[10]), 
        .B2(Reg_s_p1_1_n21), .ZN(Reg_s_p1_1_n17) );
  INV_X1 Reg_s_p1_1_U7 ( .A(Reg_s_p1_1_n17), .ZN(Reg_s_p1_1_n3) );
  AOI22_X1 Reg_s_p1_1_U6 ( .A1(s_1_1__6_), .A2(Reg_s_p1_1_n22), .B1(s_1p[8]), 
        .B2(Reg_s_p1_1_n21), .ZN(Reg_s_p1_1_n19) );
  INV_X1 Reg_s_p1_1_U5 ( .A(Reg_s_p1_1_n19), .ZN(Reg_s_p1_1_n5) );
  NOR2_X1 Reg_s_p1_1_U4 ( .A1(VIN_d1), .A2(Reg_s_p1_1_n1), .ZN(Reg_s_p1_1_n21)
         );
  NOR2_X1 Reg_s_p1_1_U3 ( .A1(Reg_s_p1_1_n1), .A2(Reg_s_p1_1_n21), .ZN(
        Reg_s_p1_1_n22) );
  DFF_X1 Reg_s_p1_1_Q_reg_0_ ( .D(Reg_s_p1_1_n7), .CK(CLK), .Q(s_1p[6]) );
  DFF_X1 Reg_s_p1_1_Q_reg_1_ ( .D(Reg_s_p1_1_n6), .CK(CLK), .Q(s_1p[7]) );
  DFF_X1 Reg_s_p1_1_Q_reg_2_ ( .D(Reg_s_p1_1_n5), .CK(CLK), .Q(s_1p[8]) );
  DFF_X1 Reg_s_p1_1_Q_reg_3_ ( .D(Reg_s_p1_1_n4), .CK(CLK), .Q(s_1p[9]) );
  DFF_X1 Reg_s_p1_1_Q_reg_4_ ( .D(Reg_s_p1_1_n3), .CK(CLK), .Q(s_1p[10]) );
  DFF_X1 Reg_s_p1_1_Q_reg_5_ ( .D(Reg_s_p1_1_n2), .CK(CLK), .Q(s_1p[11]) );
  INV_X1 Reg_s_p2_1_U17 ( .A(n27), .ZN(Reg_s_p2_1_n1) );
  AOI22_X1 Reg_s_p2_1_U16 ( .A1(s_2_1__9_), .A2(Reg_s_p2_1_n22), .B1(s_2p[11]), 
        .B2(Reg_s_p2_1_n21), .ZN(Reg_s_p2_1_n16) );
  INV_X1 Reg_s_p2_1_U15 ( .A(Reg_s_p2_1_n16), .ZN(Reg_s_p2_1_n2) );
  AOI22_X1 Reg_s_p2_1_U14 ( .A1(s_2_1__8_), .A2(Reg_s_p2_1_n22), .B1(s_2p[10]), 
        .B2(Reg_s_p2_1_n21), .ZN(Reg_s_p2_1_n17) );
  INV_X1 Reg_s_p2_1_U13 ( .A(Reg_s_p2_1_n17), .ZN(Reg_s_p2_1_n3) );
  AOI22_X1 Reg_s_p2_1_U12 ( .A1(s_2_1__7_), .A2(Reg_s_p2_1_n22), .B1(s_2p[9]), 
        .B2(Reg_s_p2_1_n21), .ZN(Reg_s_p2_1_n18) );
  INV_X1 Reg_s_p2_1_U11 ( .A(Reg_s_p2_1_n18), .ZN(Reg_s_p2_1_n4) );
  AOI22_X1 Reg_s_p2_1_U10 ( .A1(s_2_1__5_), .A2(Reg_s_p2_1_n22), .B1(s_2p[7]), 
        .B2(Reg_s_p2_1_n21), .ZN(Reg_s_p2_1_n20) );
  INV_X1 Reg_s_p2_1_U9 ( .A(Reg_s_p2_1_n20), .ZN(Reg_s_p2_1_n6) );
  AOI22_X1 Reg_s_p2_1_U8 ( .A1(s_2_1__4_), .A2(Reg_s_p2_1_n22), .B1(s_2p[6]), 
        .B2(Reg_s_p2_1_n21), .ZN(Reg_s_p2_1_n23) );
  INV_X1 Reg_s_p2_1_U7 ( .A(Reg_s_p2_1_n23), .ZN(Reg_s_p2_1_n7) );
  AOI22_X1 Reg_s_p2_1_U6 ( .A1(s_2_1__6_), .A2(Reg_s_p2_1_n22), .B1(s_2p[8]), 
        .B2(Reg_s_p2_1_n21), .ZN(Reg_s_p2_1_n19) );
  INV_X1 Reg_s_p2_1_U5 ( .A(Reg_s_p2_1_n19), .ZN(Reg_s_p2_1_n5) );
  NOR2_X1 Reg_s_p2_1_U4 ( .A1(VIN_d1), .A2(Reg_s_p2_1_n1), .ZN(Reg_s_p2_1_n21)
         );
  NOR2_X1 Reg_s_p2_1_U3 ( .A1(Reg_s_p2_1_n1), .A2(Reg_s_p2_1_n21), .ZN(
        Reg_s_p2_1_n22) );
  DFF_X1 Reg_s_p2_1_Q_reg_0_ ( .D(Reg_s_p2_1_n7), .CK(CLK), .Q(s_2p[6]) );
  DFF_X1 Reg_s_p2_1_Q_reg_1_ ( .D(Reg_s_p2_1_n6), .CK(CLK), .Q(s_2p[7]) );
  DFF_X1 Reg_s_p2_1_Q_reg_2_ ( .D(Reg_s_p2_1_n5), .CK(CLK), .Q(s_2p[8]) );
  DFF_X1 Reg_s_p2_1_Q_reg_3_ ( .D(Reg_s_p2_1_n4), .CK(CLK), .Q(s_2p[9]) );
  DFF_X1 Reg_s_p2_1_Q_reg_4_ ( .D(Reg_s_p2_1_n3), .CK(CLK), .Q(s_2p[10]) );
  DFF_X1 Reg_s_p2_1_Q_reg_5_ ( .D(Reg_s_p2_1_n2), .CK(CLK), .Q(s_2p[11]) );
  INV_X1 Reg_s_p3_1_U17 ( .A(n27), .ZN(Reg_s_p3_1_n1) );
  AOI22_X1 Reg_s_p3_1_U16 ( .A1(s_3_1__7_), .A2(Reg_s_p3_1_n22), .B1(s_3p[9]), 
        .B2(Reg_s_p3_1_n21), .ZN(Reg_s_p3_1_n18) );
  INV_X1 Reg_s_p3_1_U15 ( .A(Reg_s_p3_1_n18), .ZN(Reg_s_p3_1_n4) );
  AOI22_X1 Reg_s_p3_1_U14 ( .A1(s_3_1__6_), .A2(Reg_s_p3_1_n22), .B1(s_3p[8]), 
        .B2(Reg_s_p3_1_n21), .ZN(Reg_s_p3_1_n19) );
  INV_X1 Reg_s_p3_1_U13 ( .A(Reg_s_p3_1_n19), .ZN(Reg_s_p3_1_n5) );
  AOI22_X1 Reg_s_p3_1_U12 ( .A1(s_3_1__5_), .A2(Reg_s_p3_1_n22), .B1(s_3p[7]), 
        .B2(Reg_s_p3_1_n21), .ZN(Reg_s_p3_1_n20) );
  INV_X1 Reg_s_p3_1_U11 ( .A(Reg_s_p3_1_n20), .ZN(Reg_s_p3_1_n6) );
  AOI22_X1 Reg_s_p3_1_U10 ( .A1(s_3_1__4_), .A2(Reg_s_p3_1_n22), .B1(s_3p[6]), 
        .B2(Reg_s_p3_1_n21), .ZN(Reg_s_p3_1_n23) );
  INV_X1 Reg_s_p3_1_U9 ( .A(Reg_s_p3_1_n23), .ZN(Reg_s_p3_1_n7) );
  AOI22_X1 Reg_s_p3_1_U8 ( .A1(s_3_1__9_), .A2(Reg_s_p3_1_n22), .B1(s_3p[11]), 
        .B2(Reg_s_p3_1_n21), .ZN(Reg_s_p3_1_n16) );
  INV_X1 Reg_s_p3_1_U7 ( .A(Reg_s_p3_1_n16), .ZN(Reg_s_p3_1_n2) );
  AOI22_X1 Reg_s_p3_1_U6 ( .A1(s_3_1__8_), .A2(Reg_s_p3_1_n22), .B1(s_3p[10]), 
        .B2(Reg_s_p3_1_n21), .ZN(Reg_s_p3_1_n17) );
  INV_X1 Reg_s_p3_1_U5 ( .A(Reg_s_p3_1_n17), .ZN(Reg_s_p3_1_n3) );
  NOR2_X1 Reg_s_p3_1_U4 ( .A1(VIN_d1), .A2(Reg_s_p3_1_n1), .ZN(Reg_s_p3_1_n21)
         );
  NOR2_X1 Reg_s_p3_1_U3 ( .A1(Reg_s_p3_1_n1), .A2(Reg_s_p3_1_n21), .ZN(
        Reg_s_p3_1_n22) );
  DFF_X1 Reg_s_p3_1_Q_reg_0_ ( .D(Reg_s_p3_1_n7), .CK(CLK), .Q(s_3p[6]) );
  DFF_X1 Reg_s_p3_1_Q_reg_1_ ( .D(Reg_s_p3_1_n6), .CK(CLK), .Q(s_3p[7]) );
  DFF_X1 Reg_s_p3_1_Q_reg_2_ ( .D(Reg_s_p3_1_n5), .CK(CLK), .Q(s_3p[8]) );
  DFF_X1 Reg_s_p3_1_Q_reg_3_ ( .D(Reg_s_p3_1_n4), .CK(CLK), .Q(s_3p[9]) );
  DFF_X1 Reg_s_p3_1_Q_reg_4_ ( .D(Reg_s_p3_1_n3), .CK(CLK), .Q(s_3p[10]) );
  DFF_X1 Reg_s_p3_1_Q_reg_5_ ( .D(Reg_s_p3_1_n2), .CK(CLK), .Q(s_3p[11]) );
  INV_X1 Reg_b_p2_1_U15 ( .A(n28), .ZN(Reg_b_p2_1_n1) );
  AOI22_X1 Reg_b_p2_1_U14 ( .A1(b_1__5_), .A2(Reg_b_p2_1_n19), .B1(b_p[6]), 
        .B2(Reg_b_p2_1_n18), .ZN(Reg_b_p2_1_n17) );
  INV_X1 Reg_b_p2_1_U13 ( .A(Reg_b_p2_1_n17), .ZN(Reg_b_p2_1_n5) );
  AOI22_X1 Reg_b_p2_1_U12 ( .A1(b_1__7_), .A2(Reg_b_p2_1_n19), .B1(b_p[8]), 
        .B2(Reg_b_p2_1_n18), .ZN(Reg_b_p2_1_n15) );
  INV_X1 Reg_b_p2_1_U11 ( .A(Reg_b_p2_1_n15), .ZN(Reg_b_p2_1_n3) );
  AOI22_X1 Reg_b_p2_1_U10 ( .A1(b_1__6_), .A2(Reg_b_p2_1_n19), .B1(b_p[7]), 
        .B2(Reg_b_p2_1_n18), .ZN(Reg_b_p2_1_n16) );
  INV_X1 Reg_b_p2_1_U9 ( .A(Reg_b_p2_1_n16), .ZN(Reg_b_p2_1_n4) );
  AOI22_X1 Reg_b_p2_1_U8 ( .A1(b_1__4_), .A2(Reg_b_p2_1_n19), .B1(b_p[5]), 
        .B2(Reg_b_p2_1_n18), .ZN(Reg_b_p2_1_n20) );
  INV_X1 Reg_b_p2_1_U7 ( .A(Reg_b_p2_1_n20), .ZN(Reg_b_p2_1_n6) );
  AOI22_X1 Reg_b_p2_1_U6 ( .A1(b_1__8_), .A2(Reg_b_p2_1_n19), .B1(b_p[9]), 
        .B2(Reg_b_p2_1_n18), .ZN(Reg_b_p2_1_n14) );
  INV_X1 Reg_b_p2_1_U5 ( .A(Reg_b_p2_1_n14), .ZN(Reg_b_p2_1_n2) );
  NOR2_X1 Reg_b_p2_1_U4 ( .A1(VIN_d1), .A2(Reg_b_p2_1_n1), .ZN(Reg_b_p2_1_n18)
         );
  NOR2_X1 Reg_b_p2_1_U3 ( .A1(Reg_b_p2_1_n1), .A2(Reg_b_p2_1_n18), .ZN(
        Reg_b_p2_1_n19) );
  DFF_X1 Reg_b_p2_1_Q_reg_0_ ( .D(Reg_b_p2_1_n6), .CK(CLK), .Q(b_p[5]) );
  DFF_X1 Reg_b_p2_1_Q_reg_1_ ( .D(Reg_b_p2_1_n5), .CK(CLK), .Q(b_p[6]) );
  DFF_X1 Reg_b_p2_1_Q_reg_2_ ( .D(Reg_b_p2_1_n4), .CK(CLK), .Q(b_p[7]) );
  DFF_X1 Reg_b_p2_1_Q_reg_3_ ( .D(Reg_b_p2_1_n3), .CK(CLK), .Q(b_p[8]) );
  DFF_X1 Reg_b_p2_1_Q_reg_4_ ( .D(Reg_b_p2_1_n2), .CK(CLK), .Q(b_p[9]) );
  INV_X1 Reg_s_p1_2_U17 ( .A(n27), .ZN(Reg_s_p1_2_n1) );
  AOI22_X1 Reg_s_p1_2_U16 ( .A1(s_1_2__6_), .A2(Reg_s_p1_2_n22), .B1(s_1p[14]), 
        .B2(Reg_s_p1_2_n21), .ZN(Reg_s_p1_2_n19) );
  INV_X1 Reg_s_p1_2_U15 ( .A(Reg_s_p1_2_n19), .ZN(Reg_s_p1_2_n5) );
  AOI22_X1 Reg_s_p1_2_U14 ( .A1(s_1_2__5_), .A2(Reg_s_p1_2_n22), .B1(s_1p[13]), 
        .B2(Reg_s_p1_2_n21), .ZN(Reg_s_p1_2_n20) );
  INV_X1 Reg_s_p1_2_U13 ( .A(Reg_s_p1_2_n20), .ZN(Reg_s_p1_2_n6) );
  AOI22_X1 Reg_s_p1_2_U12 ( .A1(s_1_2__4_), .A2(Reg_s_p1_2_n22), .B1(s_1p[12]), 
        .B2(Reg_s_p1_2_n21), .ZN(Reg_s_p1_2_n23) );
  INV_X1 Reg_s_p1_2_U11 ( .A(Reg_s_p1_2_n23), .ZN(Reg_s_p1_2_n7) );
  AOI22_X1 Reg_s_p1_2_U10 ( .A1(s_1_2__9_), .A2(Reg_s_p1_2_n22), .B1(s_1p[17]), 
        .B2(Reg_s_p1_2_n21), .ZN(Reg_s_p1_2_n16) );
  INV_X1 Reg_s_p1_2_U9 ( .A(Reg_s_p1_2_n16), .ZN(Reg_s_p1_2_n2) );
  AOI22_X1 Reg_s_p1_2_U8 ( .A1(s_1_2__8_), .A2(Reg_s_p1_2_n22), .B1(s_1p[16]), 
        .B2(Reg_s_p1_2_n21), .ZN(Reg_s_p1_2_n17) );
  INV_X1 Reg_s_p1_2_U7 ( .A(Reg_s_p1_2_n17), .ZN(Reg_s_p1_2_n3) );
  AOI22_X1 Reg_s_p1_2_U6 ( .A1(s_1_2__7_), .A2(Reg_s_p1_2_n22), .B1(s_1p[15]), 
        .B2(Reg_s_p1_2_n21), .ZN(Reg_s_p1_2_n18) );
  INV_X1 Reg_s_p1_2_U5 ( .A(Reg_s_p1_2_n18), .ZN(Reg_s_p1_2_n4) );
  NOR2_X1 Reg_s_p1_2_U4 ( .A1(VIN_d1), .A2(Reg_s_p1_2_n1), .ZN(Reg_s_p1_2_n21)
         );
  NOR2_X1 Reg_s_p1_2_U3 ( .A1(Reg_s_p1_2_n1), .A2(Reg_s_p1_2_n21), .ZN(
        Reg_s_p1_2_n22) );
  DFF_X1 Reg_s_p1_2_Q_reg_0_ ( .D(Reg_s_p1_2_n7), .CK(CLK), .Q(s_1p[12]) );
  DFF_X1 Reg_s_p1_2_Q_reg_1_ ( .D(Reg_s_p1_2_n6), .CK(CLK), .Q(s_1p[13]) );
  DFF_X1 Reg_s_p1_2_Q_reg_2_ ( .D(Reg_s_p1_2_n5), .CK(CLK), .Q(s_1p[14]) );
  DFF_X1 Reg_s_p1_2_Q_reg_3_ ( .D(Reg_s_p1_2_n4), .CK(CLK), .Q(s_1p[15]) );
  DFF_X1 Reg_s_p1_2_Q_reg_4_ ( .D(Reg_s_p1_2_n3), .CK(CLK), .Q(s_1p[16]) );
  DFF_X1 Reg_s_p1_2_Q_reg_5_ ( .D(Reg_s_p1_2_n2), .CK(CLK), .Q(s_1p[17]) );
  INV_X1 Reg_s_p2_2_U17 ( .A(n27), .ZN(Reg_s_p2_2_n1) );
  AOI22_X1 Reg_s_p2_2_U16 ( .A1(s_2_2__6_), .A2(Reg_s_p2_2_n22), .B1(s_2p[14]), 
        .B2(Reg_s_p2_2_n21), .ZN(Reg_s_p2_2_n19) );
  INV_X1 Reg_s_p2_2_U15 ( .A(Reg_s_p2_2_n19), .ZN(Reg_s_p2_2_n5) );
  AOI22_X1 Reg_s_p2_2_U14 ( .A1(s_2_2__5_), .A2(Reg_s_p2_2_n22), .B1(s_2p[13]), 
        .B2(Reg_s_p2_2_n21), .ZN(Reg_s_p2_2_n20) );
  INV_X1 Reg_s_p2_2_U13 ( .A(Reg_s_p2_2_n20), .ZN(Reg_s_p2_2_n6) );
  AOI22_X1 Reg_s_p2_2_U12 ( .A1(s_2_2__4_), .A2(Reg_s_p2_2_n22), .B1(s_2p[12]), 
        .B2(Reg_s_p2_2_n21), .ZN(Reg_s_p2_2_n23) );
  INV_X1 Reg_s_p2_2_U11 ( .A(Reg_s_p2_2_n23), .ZN(Reg_s_p2_2_n7) );
  AOI22_X1 Reg_s_p2_2_U10 ( .A1(s_2_2__9_), .A2(Reg_s_p2_2_n22), .B1(s_2p[17]), 
        .B2(Reg_s_p2_2_n21), .ZN(Reg_s_p2_2_n16) );
  INV_X1 Reg_s_p2_2_U9 ( .A(Reg_s_p2_2_n16), .ZN(Reg_s_p2_2_n2) );
  AOI22_X1 Reg_s_p2_2_U8 ( .A1(s_2_2__8_), .A2(Reg_s_p2_2_n22), .B1(s_2p[16]), 
        .B2(Reg_s_p2_2_n21), .ZN(Reg_s_p2_2_n17) );
  INV_X1 Reg_s_p2_2_U7 ( .A(Reg_s_p2_2_n17), .ZN(Reg_s_p2_2_n3) );
  AOI22_X1 Reg_s_p2_2_U6 ( .A1(s_2_2__7_), .A2(Reg_s_p2_2_n22), .B1(s_2p[15]), 
        .B2(Reg_s_p2_2_n21), .ZN(Reg_s_p2_2_n18) );
  INV_X1 Reg_s_p2_2_U5 ( .A(Reg_s_p2_2_n18), .ZN(Reg_s_p2_2_n4) );
  NOR2_X1 Reg_s_p2_2_U4 ( .A1(VIN_d1), .A2(Reg_s_p2_2_n1), .ZN(Reg_s_p2_2_n21)
         );
  NOR2_X1 Reg_s_p2_2_U3 ( .A1(Reg_s_p2_2_n1), .A2(Reg_s_p2_2_n21), .ZN(
        Reg_s_p2_2_n22) );
  DFF_X1 Reg_s_p2_2_Q_reg_0_ ( .D(Reg_s_p2_2_n7), .CK(CLK), .Q(s_2p[12]) );
  DFF_X1 Reg_s_p2_2_Q_reg_1_ ( .D(Reg_s_p2_2_n6), .CK(CLK), .Q(s_2p[13]) );
  DFF_X1 Reg_s_p2_2_Q_reg_2_ ( .D(Reg_s_p2_2_n5), .CK(CLK), .Q(s_2p[14]) );
  DFF_X1 Reg_s_p2_2_Q_reg_3_ ( .D(Reg_s_p2_2_n4), .CK(CLK), .Q(s_2p[15]) );
  DFF_X1 Reg_s_p2_2_Q_reg_4_ ( .D(Reg_s_p2_2_n3), .CK(CLK), .Q(s_2p[16]) );
  DFF_X1 Reg_s_p2_2_Q_reg_5_ ( .D(Reg_s_p2_2_n2), .CK(CLK), .Q(s_2p[17]) );
  INV_X1 Reg_s_p3_2_U17 ( .A(n27), .ZN(Reg_s_p3_2_n1) );
  AOI22_X1 Reg_s_p3_2_U16 ( .A1(s_3_2__6_), .A2(Reg_s_p3_2_n22), .B1(s_3p[14]), 
        .B2(Reg_s_p3_2_n21), .ZN(Reg_s_p3_2_n19) );
  INV_X1 Reg_s_p3_2_U15 ( .A(Reg_s_p3_2_n19), .ZN(Reg_s_p3_2_n5) );
  AOI22_X1 Reg_s_p3_2_U14 ( .A1(s_3_2__5_), .A2(Reg_s_p3_2_n22), .B1(s_3p[13]), 
        .B2(Reg_s_p3_2_n21), .ZN(Reg_s_p3_2_n20) );
  INV_X1 Reg_s_p3_2_U13 ( .A(Reg_s_p3_2_n20), .ZN(Reg_s_p3_2_n6) );
  AOI22_X1 Reg_s_p3_2_U12 ( .A1(s_3_2__4_), .A2(Reg_s_p3_2_n22), .B1(s_3p[12]), 
        .B2(Reg_s_p3_2_n21), .ZN(Reg_s_p3_2_n23) );
  INV_X1 Reg_s_p3_2_U11 ( .A(Reg_s_p3_2_n23), .ZN(Reg_s_p3_2_n7) );
  AOI22_X1 Reg_s_p3_2_U10 ( .A1(s_3_2__9_), .A2(Reg_s_p3_2_n22), .B1(s_3p[17]), 
        .B2(Reg_s_p3_2_n21), .ZN(Reg_s_p3_2_n16) );
  INV_X1 Reg_s_p3_2_U9 ( .A(Reg_s_p3_2_n16), .ZN(Reg_s_p3_2_n2) );
  AOI22_X1 Reg_s_p3_2_U8 ( .A1(s_3_2__8_), .A2(Reg_s_p3_2_n22), .B1(s_3p[16]), 
        .B2(Reg_s_p3_2_n21), .ZN(Reg_s_p3_2_n17) );
  INV_X1 Reg_s_p3_2_U7 ( .A(Reg_s_p3_2_n17), .ZN(Reg_s_p3_2_n3) );
  AOI22_X1 Reg_s_p3_2_U6 ( .A1(s_3_2__7_), .A2(Reg_s_p3_2_n22), .B1(s_3p[15]), 
        .B2(Reg_s_p3_2_n21), .ZN(Reg_s_p3_2_n18) );
  INV_X1 Reg_s_p3_2_U5 ( .A(Reg_s_p3_2_n18), .ZN(Reg_s_p3_2_n4) );
  NOR2_X1 Reg_s_p3_2_U4 ( .A1(VIN_d1), .A2(Reg_s_p3_2_n1), .ZN(Reg_s_p3_2_n21)
         );
  NOR2_X1 Reg_s_p3_2_U3 ( .A1(Reg_s_p3_2_n1), .A2(Reg_s_p3_2_n21), .ZN(
        Reg_s_p3_2_n22) );
  DFF_X1 Reg_s_p3_2_Q_reg_0_ ( .D(Reg_s_p3_2_n7), .CK(CLK), .Q(s_3p[12]) );
  DFF_X1 Reg_s_p3_2_Q_reg_1_ ( .D(Reg_s_p3_2_n6), .CK(CLK), .Q(s_3p[13]) );
  DFF_X1 Reg_s_p3_2_Q_reg_2_ ( .D(Reg_s_p3_2_n5), .CK(CLK), .Q(s_3p[14]) );
  DFF_X1 Reg_s_p3_2_Q_reg_3_ ( .D(Reg_s_p3_2_n4), .CK(CLK), .Q(s_3p[15]) );
  DFF_X1 Reg_s_p3_2_Q_reg_4_ ( .D(Reg_s_p3_2_n3), .CK(CLK), .Q(s_3p[16]) );
  DFF_X1 Reg_s_p3_2_Q_reg_5_ ( .D(Reg_s_p3_2_n2), .CK(CLK), .Q(s_3p[17]) );
  INV_X1 Reg_b_p2_2_U15 ( .A(n28), .ZN(Reg_b_p2_2_n1) );
  AOI22_X1 Reg_b_p2_2_U14 ( .A1(b_2__5_), .A2(Reg_b_p2_2_n19), .B1(b_p[11]), 
        .B2(Reg_b_p2_2_n18), .ZN(Reg_b_p2_2_n17) );
  INV_X1 Reg_b_p2_2_U13 ( .A(Reg_b_p2_2_n17), .ZN(Reg_b_p2_2_n5) );
  AOI22_X1 Reg_b_p2_2_U12 ( .A1(b_2__7_), .A2(Reg_b_p2_2_n19), .B1(b_p[13]), 
        .B2(Reg_b_p2_2_n18), .ZN(Reg_b_p2_2_n15) );
  INV_X1 Reg_b_p2_2_U11 ( .A(Reg_b_p2_2_n15), .ZN(Reg_b_p2_2_n3) );
  AOI22_X1 Reg_b_p2_2_U10 ( .A1(b_2__6_), .A2(Reg_b_p2_2_n19), .B1(b_p[12]), 
        .B2(Reg_b_p2_2_n18), .ZN(Reg_b_p2_2_n16) );
  INV_X1 Reg_b_p2_2_U9 ( .A(Reg_b_p2_2_n16), .ZN(Reg_b_p2_2_n4) );
  AOI22_X1 Reg_b_p2_2_U8 ( .A1(b_2__4_), .A2(Reg_b_p2_2_n19), .B1(b_p[10]), 
        .B2(Reg_b_p2_2_n18), .ZN(Reg_b_p2_2_n20) );
  INV_X1 Reg_b_p2_2_U7 ( .A(Reg_b_p2_2_n20), .ZN(Reg_b_p2_2_n6) );
  AOI22_X1 Reg_b_p2_2_U6 ( .A1(b_2__8_), .A2(Reg_b_p2_2_n19), .B1(b_p[14]), 
        .B2(Reg_b_p2_2_n18), .ZN(Reg_b_p2_2_n14) );
  INV_X1 Reg_b_p2_2_U5 ( .A(Reg_b_p2_2_n14), .ZN(Reg_b_p2_2_n2) );
  NOR2_X1 Reg_b_p2_2_U4 ( .A1(VIN_d1), .A2(Reg_b_p2_2_n1), .ZN(Reg_b_p2_2_n18)
         );
  NOR2_X1 Reg_b_p2_2_U3 ( .A1(Reg_b_p2_2_n1), .A2(Reg_b_p2_2_n18), .ZN(
        Reg_b_p2_2_n19) );
  DFF_X1 Reg_b_p2_2_Q_reg_0_ ( .D(Reg_b_p2_2_n6), .CK(CLK), .Q(b_p[10]) );
  DFF_X1 Reg_b_p2_2_Q_reg_1_ ( .D(Reg_b_p2_2_n5), .CK(CLK), .Q(b_p[11]) );
  DFF_X1 Reg_b_p2_2_Q_reg_2_ ( .D(Reg_b_p2_2_n4), .CK(CLK), .Q(b_p[12]) );
  DFF_X1 Reg_b_p2_2_Q_reg_3_ ( .D(Reg_b_p2_2_n3), .CK(CLK), .Q(b_p[13]) );
  DFF_X1 Reg_b_p2_2_Q_reg_4_ ( .D(Reg_b_p2_2_n2), .CK(CLK), .Q(b_p[14]) );
  INV_X1 Reg_s_p1_3_U17 ( .A(n27), .ZN(Reg_s_p1_3_n1) );
  AOI22_X1 Reg_s_p1_3_U16 ( .A1(s_1_3__5_), .A2(Reg_s_p1_3_n22), .B1(s_1p[19]), 
        .B2(Reg_s_p1_3_n21), .ZN(Reg_s_p1_3_n20) );
  INV_X1 Reg_s_p1_3_U15 ( .A(Reg_s_p1_3_n20), .ZN(Reg_s_p1_3_n6) );
  AOI22_X1 Reg_s_p1_3_U14 ( .A1(s_1_3__4_), .A2(Reg_s_p1_3_n22), .B1(s_1p[18]), 
        .B2(Reg_s_p1_3_n21), .ZN(Reg_s_p1_3_n23) );
  INV_X1 Reg_s_p1_3_U13 ( .A(Reg_s_p1_3_n23), .ZN(Reg_s_p1_3_n7) );
  AOI22_X1 Reg_s_p1_3_U12 ( .A1(s_1_3__9_), .A2(Reg_s_p1_3_n22), .B1(s_1p[23]), 
        .B2(Reg_s_p1_3_n21), .ZN(Reg_s_p1_3_n16) );
  INV_X1 Reg_s_p1_3_U11 ( .A(Reg_s_p1_3_n16), .ZN(Reg_s_p1_3_n2) );
  AOI22_X1 Reg_s_p1_3_U10 ( .A1(s_1_3__8_), .A2(Reg_s_p1_3_n22), .B1(s_1p[22]), 
        .B2(Reg_s_p1_3_n21), .ZN(Reg_s_p1_3_n17) );
  INV_X1 Reg_s_p1_3_U9 ( .A(Reg_s_p1_3_n17), .ZN(Reg_s_p1_3_n3) );
  AOI22_X1 Reg_s_p1_3_U8 ( .A1(s_1_3__7_), .A2(Reg_s_p1_3_n22), .B1(s_1p[21]), 
        .B2(Reg_s_p1_3_n21), .ZN(Reg_s_p1_3_n18) );
  INV_X1 Reg_s_p1_3_U7 ( .A(Reg_s_p1_3_n18), .ZN(Reg_s_p1_3_n4) );
  AOI22_X1 Reg_s_p1_3_U6 ( .A1(s_1_3__6_), .A2(Reg_s_p1_3_n22), .B1(s_1p[20]), 
        .B2(Reg_s_p1_3_n21), .ZN(Reg_s_p1_3_n19) );
  INV_X1 Reg_s_p1_3_U5 ( .A(Reg_s_p1_3_n19), .ZN(Reg_s_p1_3_n5) );
  NOR2_X1 Reg_s_p1_3_U4 ( .A1(VIN_d1), .A2(Reg_s_p1_3_n1), .ZN(Reg_s_p1_3_n21)
         );
  NOR2_X1 Reg_s_p1_3_U3 ( .A1(Reg_s_p1_3_n1), .A2(Reg_s_p1_3_n21), .ZN(
        Reg_s_p1_3_n22) );
  DFF_X1 Reg_s_p1_3_Q_reg_0_ ( .D(Reg_s_p1_3_n7), .CK(CLK), .Q(s_1p[18]) );
  DFF_X1 Reg_s_p1_3_Q_reg_1_ ( .D(Reg_s_p1_3_n6), .CK(CLK), .Q(s_1p[19]) );
  DFF_X1 Reg_s_p1_3_Q_reg_2_ ( .D(Reg_s_p1_3_n5), .CK(CLK), .Q(s_1p[20]) );
  DFF_X1 Reg_s_p1_3_Q_reg_3_ ( .D(Reg_s_p1_3_n4), .CK(CLK), .Q(s_1p[21]) );
  DFF_X1 Reg_s_p1_3_Q_reg_4_ ( .D(Reg_s_p1_3_n3), .CK(CLK), .Q(s_1p[22]) );
  DFF_X1 Reg_s_p1_3_Q_reg_5_ ( .D(Reg_s_p1_3_n2), .CK(CLK), .Q(s_1p[23]) );
  INV_X1 Reg_s_p2_3_U17 ( .A(n28), .ZN(Reg_s_p2_3_n1) );
  AOI22_X1 Reg_s_p2_3_U16 ( .A1(s_2_3__9_), .A2(Reg_s_p2_3_n22), .B1(s_2p[23]), 
        .B2(Reg_s_p2_3_n21), .ZN(Reg_s_p2_3_n16) );
  INV_X1 Reg_s_p2_3_U15 ( .A(Reg_s_p2_3_n16), .ZN(Reg_s_p2_3_n2) );
  AOI22_X1 Reg_s_p2_3_U14 ( .A1(s_2_3__5_), .A2(Reg_s_p2_3_n22), .B1(s_2p[19]), 
        .B2(Reg_s_p2_3_n21), .ZN(Reg_s_p2_3_n20) );
  INV_X1 Reg_s_p2_3_U13 ( .A(Reg_s_p2_3_n20), .ZN(Reg_s_p2_3_n6) );
  AOI22_X1 Reg_s_p2_3_U12 ( .A1(s_2_3__4_), .A2(Reg_s_p2_3_n22), .B1(s_2p[18]), 
        .B2(Reg_s_p2_3_n21), .ZN(Reg_s_p2_3_n23) );
  INV_X1 Reg_s_p2_3_U11 ( .A(Reg_s_p2_3_n23), .ZN(Reg_s_p2_3_n7) );
  AOI22_X1 Reg_s_p2_3_U10 ( .A1(s_2_3__8_), .A2(Reg_s_p2_3_n22), .B1(s_2p[22]), 
        .B2(Reg_s_p2_3_n21), .ZN(Reg_s_p2_3_n17) );
  INV_X1 Reg_s_p2_3_U9 ( .A(Reg_s_p2_3_n17), .ZN(Reg_s_p2_3_n3) );
  AOI22_X1 Reg_s_p2_3_U8 ( .A1(s_2_3__7_), .A2(Reg_s_p2_3_n22), .B1(s_2p[21]), 
        .B2(Reg_s_p2_3_n21), .ZN(Reg_s_p2_3_n18) );
  INV_X1 Reg_s_p2_3_U7 ( .A(Reg_s_p2_3_n18), .ZN(Reg_s_p2_3_n4) );
  AOI22_X1 Reg_s_p2_3_U6 ( .A1(s_2_3__6_), .A2(Reg_s_p2_3_n22), .B1(s_2p[20]), 
        .B2(Reg_s_p2_3_n21), .ZN(Reg_s_p2_3_n19) );
  INV_X1 Reg_s_p2_3_U5 ( .A(Reg_s_p2_3_n19), .ZN(Reg_s_p2_3_n5) );
  NOR2_X1 Reg_s_p2_3_U4 ( .A1(VIN_d1), .A2(Reg_s_p2_3_n1), .ZN(Reg_s_p2_3_n21)
         );
  NOR2_X1 Reg_s_p2_3_U3 ( .A1(Reg_s_p2_3_n1), .A2(Reg_s_p2_3_n21), .ZN(
        Reg_s_p2_3_n22) );
  DFF_X1 Reg_s_p2_3_Q_reg_0_ ( .D(Reg_s_p2_3_n7), .CK(CLK), .Q(s_2p[18]) );
  DFF_X1 Reg_s_p2_3_Q_reg_1_ ( .D(Reg_s_p2_3_n6), .CK(CLK), .Q(s_2p[19]) );
  DFF_X1 Reg_s_p2_3_Q_reg_2_ ( .D(Reg_s_p2_3_n5), .CK(CLK), .Q(s_2p[20]) );
  DFF_X1 Reg_s_p2_3_Q_reg_3_ ( .D(Reg_s_p2_3_n4), .CK(CLK), .Q(s_2p[21]) );
  DFF_X1 Reg_s_p2_3_Q_reg_4_ ( .D(Reg_s_p2_3_n3), .CK(CLK), .Q(s_2p[22]) );
  DFF_X1 Reg_s_p2_3_Q_reg_5_ ( .D(Reg_s_p2_3_n2), .CK(CLK), .Q(s_2p[23]) );
  INV_X1 Reg_s_p3_3_U17 ( .A(n28), .ZN(Reg_s_p3_3_n1) );
  AOI22_X1 Reg_s_p3_3_U16 ( .A1(s_3_3__9_), .A2(Reg_s_p3_3_n22), .B1(s_3p[23]), 
        .B2(Reg_s_p3_3_n21), .ZN(Reg_s_p3_3_n16) );
  INV_X1 Reg_s_p3_3_U15 ( .A(Reg_s_p3_3_n16), .ZN(Reg_s_p3_3_n2) );
  AOI22_X1 Reg_s_p3_3_U14 ( .A1(s_3_3__7_), .A2(Reg_s_p3_3_n22), .B1(s_3p[21]), 
        .B2(Reg_s_p3_3_n21), .ZN(Reg_s_p3_3_n18) );
  INV_X1 Reg_s_p3_3_U13 ( .A(Reg_s_p3_3_n18), .ZN(Reg_s_p3_3_n4) );
  AOI22_X1 Reg_s_p3_3_U12 ( .A1(s_3_3__5_), .A2(Reg_s_p3_3_n22), .B1(s_3p[19]), 
        .B2(Reg_s_p3_3_n21), .ZN(Reg_s_p3_3_n20) );
  INV_X1 Reg_s_p3_3_U11 ( .A(Reg_s_p3_3_n20), .ZN(Reg_s_p3_3_n6) );
  AOI22_X1 Reg_s_p3_3_U10 ( .A1(s_3_3__4_), .A2(Reg_s_p3_3_n22), .B1(s_3p[18]), 
        .B2(Reg_s_p3_3_n21), .ZN(Reg_s_p3_3_n23) );
  INV_X1 Reg_s_p3_3_U9 ( .A(Reg_s_p3_3_n23), .ZN(Reg_s_p3_3_n7) );
  AOI22_X1 Reg_s_p3_3_U8 ( .A1(s_3_3__8_), .A2(Reg_s_p3_3_n22), .B1(s_3p[22]), 
        .B2(Reg_s_p3_3_n21), .ZN(Reg_s_p3_3_n17) );
  INV_X1 Reg_s_p3_3_U7 ( .A(Reg_s_p3_3_n17), .ZN(Reg_s_p3_3_n3) );
  AOI22_X1 Reg_s_p3_3_U6 ( .A1(s_3_3__6_), .A2(Reg_s_p3_3_n22), .B1(s_3p[20]), 
        .B2(Reg_s_p3_3_n21), .ZN(Reg_s_p3_3_n19) );
  INV_X1 Reg_s_p3_3_U5 ( .A(Reg_s_p3_3_n19), .ZN(Reg_s_p3_3_n5) );
  NOR2_X1 Reg_s_p3_3_U4 ( .A1(VIN_d1), .A2(Reg_s_p3_3_n1), .ZN(Reg_s_p3_3_n21)
         );
  NOR2_X1 Reg_s_p3_3_U3 ( .A1(Reg_s_p3_3_n1), .A2(Reg_s_p3_3_n21), .ZN(
        Reg_s_p3_3_n22) );
  DFF_X1 Reg_s_p3_3_Q_reg_0_ ( .D(Reg_s_p3_3_n7), .CK(CLK), .Q(s_3p[18]) );
  DFF_X1 Reg_s_p3_3_Q_reg_1_ ( .D(Reg_s_p3_3_n6), .CK(CLK), .Q(s_3p[19]) );
  DFF_X1 Reg_s_p3_3_Q_reg_2_ ( .D(Reg_s_p3_3_n5), .CK(CLK), .Q(s_3p[20]) );
  DFF_X1 Reg_s_p3_3_Q_reg_3_ ( .D(Reg_s_p3_3_n4), .CK(CLK), .Q(s_3p[21]) );
  DFF_X1 Reg_s_p3_3_Q_reg_4_ ( .D(Reg_s_p3_3_n3), .CK(CLK), .Q(s_3p[22]) );
  DFF_X1 Reg_s_p3_3_Q_reg_5_ ( .D(Reg_s_p3_3_n2), .CK(CLK), .Q(s_3p[23]) );
  INV_X1 Reg_b_p2_3_U15 ( .A(n28), .ZN(Reg_b_p2_3_n1) );
  AOI22_X1 Reg_b_p2_3_U14 ( .A1(b_3__5_), .A2(Reg_b_p2_3_n19), .B1(b_p[16]), 
        .B2(Reg_b_p2_3_n18), .ZN(Reg_b_p2_3_n17) );
  INV_X1 Reg_b_p2_3_U13 ( .A(Reg_b_p2_3_n17), .ZN(Reg_b_p2_3_n5) );
  AOI22_X1 Reg_b_p2_3_U12 ( .A1(b_3__7_), .A2(Reg_b_p2_3_n19), .B1(b_p[18]), 
        .B2(Reg_b_p2_3_n18), .ZN(Reg_b_p2_3_n15) );
  INV_X1 Reg_b_p2_3_U11 ( .A(Reg_b_p2_3_n15), .ZN(Reg_b_p2_3_n3) );
  AOI22_X1 Reg_b_p2_3_U10 ( .A1(b_3__6_), .A2(Reg_b_p2_3_n19), .B1(b_p[17]), 
        .B2(Reg_b_p2_3_n18), .ZN(Reg_b_p2_3_n16) );
  INV_X1 Reg_b_p2_3_U9 ( .A(Reg_b_p2_3_n16), .ZN(Reg_b_p2_3_n4) );
  AOI22_X1 Reg_b_p2_3_U8 ( .A1(b_3__4_), .A2(Reg_b_p2_3_n19), .B1(b_p[15]), 
        .B2(Reg_b_p2_3_n18), .ZN(Reg_b_p2_3_n20) );
  INV_X1 Reg_b_p2_3_U7 ( .A(Reg_b_p2_3_n20), .ZN(Reg_b_p2_3_n6) );
  AOI22_X1 Reg_b_p2_3_U6 ( .A1(b_3__8_), .A2(Reg_b_p2_3_n19), .B1(b_p[19]), 
        .B2(Reg_b_p2_3_n18), .ZN(Reg_b_p2_3_n14) );
  INV_X1 Reg_b_p2_3_U5 ( .A(Reg_b_p2_3_n14), .ZN(Reg_b_p2_3_n2) );
  NOR2_X1 Reg_b_p2_3_U4 ( .A1(VIN_d1), .A2(Reg_b_p2_3_n1), .ZN(Reg_b_p2_3_n18)
         );
  NOR2_X1 Reg_b_p2_3_U3 ( .A1(Reg_b_p2_3_n1), .A2(Reg_b_p2_3_n18), .ZN(
        Reg_b_p2_3_n19) );
  DFF_X1 Reg_b_p2_3_Q_reg_0_ ( .D(Reg_b_p2_3_n6), .CK(CLK), .Q(b_p[15]) );
  DFF_X1 Reg_b_p2_3_Q_reg_1_ ( .D(Reg_b_p2_3_n5), .CK(CLK), .Q(b_p[16]) );
  DFF_X1 Reg_b_p2_3_Q_reg_2_ ( .D(Reg_b_p2_3_n4), .CK(CLK), .Q(b_p[17]) );
  DFF_X1 Reg_b_p2_3_Q_reg_3_ ( .D(Reg_b_p2_3_n3), .CK(CLK), .Q(b_p[18]) );
  DFF_X1 Reg_b_p2_3_Q_reg_4_ ( .D(Reg_b_p2_3_n2), .CK(CLK), .Q(b_p[19]) );
  INV_X1 Reg_p_p1_0_U27 ( .A(n30), .ZN(Reg_p_p1_0_n1) );
  AOI22_X1 Reg_p_p1_0_U26 ( .A1(p_1_0__10_), .A2(Reg_p_p1_0_n14), .B1(
        p_1s_0__10_), .B2(Reg_p_p1_0_n15), .ZN(Reg_p_p1_0_n25) );
  INV_X1 Reg_p_p1_0_U25 ( .A(Reg_p_p1_0_n25), .ZN(Reg_p_p1_0_n2) );
  AOI22_X1 Reg_p_p1_0_U24 ( .A1(p_1_0__9_), .A2(Reg_p_p1_0_n14), .B1(
        Reg_p_p1_0_Q_9_), .B2(Reg_p_p1_0_n15), .ZN(Reg_p_p1_0_n24) );
  INV_X1 Reg_p_p1_0_U23 ( .A(Reg_p_p1_0_n24), .ZN(Reg_p_p1_0_n3) );
  AOI22_X1 Reg_p_p1_0_U22 ( .A1(p_1_0__7_), .A2(Reg_p_p1_0_n14), .B1(
        p_1s_0__7_), .B2(Reg_p_p1_0_n15), .ZN(Reg_p_p1_0_n22) );
  INV_X1 Reg_p_p1_0_U21 ( .A(Reg_p_p1_0_n22), .ZN(Reg_p_p1_0_n5) );
  AOI22_X1 Reg_p_p1_0_U20 ( .A1(p_1_0__6_), .A2(Reg_p_p1_0_n14), .B1(
        p_1s_0__6_), .B2(Reg_p_p1_0_n15), .ZN(Reg_p_p1_0_n21) );
  INV_X1 Reg_p_p1_0_U19 ( .A(Reg_p_p1_0_n21), .ZN(Reg_p_p1_0_n6) );
  AOI22_X1 Reg_p_p1_0_U18 ( .A1(p_1_0__5_), .A2(Reg_p_p1_0_n14), .B1(
        p_1s_0__5_), .B2(Reg_p_p1_0_n15), .ZN(Reg_p_p1_0_n20) );
  INV_X1 Reg_p_p1_0_U17 ( .A(Reg_p_p1_0_n20), .ZN(Reg_p_p1_0_n7) );
  AOI22_X1 Reg_p_p1_0_U16 ( .A1(p_1_0__4_), .A2(Reg_p_p1_0_n14), .B1(
        p_1s_0__4_), .B2(Reg_p_p1_0_n15), .ZN(Reg_p_p1_0_n19) );
  INV_X1 Reg_p_p1_0_U15 ( .A(Reg_p_p1_0_n19), .ZN(Reg_p_p1_0_n8) );
  AOI22_X1 Reg_p_p1_0_U14 ( .A1(p_1_0__3_), .A2(Reg_p_p1_0_n14), .B1(
        p_1s_0__3_), .B2(Reg_p_p1_0_n15), .ZN(Reg_p_p1_0_n18) );
  INV_X1 Reg_p_p1_0_U13 ( .A(Reg_p_p1_0_n18), .ZN(Reg_p_p1_0_n9) );
  AOI22_X1 Reg_p_p1_0_U12 ( .A1(p_1_0__2_), .A2(Reg_p_p1_0_n14), .B1(
        p_1s_0__2_), .B2(Reg_p_p1_0_n15), .ZN(Reg_p_p1_0_n17) );
  INV_X1 Reg_p_p1_0_U11 ( .A(Reg_p_p1_0_n17), .ZN(Reg_p_p1_0_n10) );
  AOI22_X1 Reg_p_p1_0_U10 ( .A1(p_1_0__1_), .A2(Reg_p_p1_0_n14), .B1(
        p_1s_0__1_), .B2(Reg_p_p1_0_n15), .ZN(Reg_p_p1_0_n16) );
  INV_X1 Reg_p_p1_0_U9 ( .A(Reg_p_p1_0_n16), .ZN(Reg_p_p1_0_n11) );
  AOI22_X1 Reg_p_p1_0_U8 ( .A1(p_1_0__0_), .A2(Reg_p_p1_0_n14), .B1(p_1s_0__0_), .B2(Reg_p_p1_0_n15), .ZN(Reg_p_p1_0_n13) );
  INV_X1 Reg_p_p1_0_U7 ( .A(Reg_p_p1_0_n13), .ZN(Reg_p_p1_0_n12) );
  AOI22_X1 Reg_p_p1_0_U6 ( .A1(p_1_0__8_), .A2(Reg_p_p1_0_n14), .B1(p_1s_0__8_), .B2(Reg_p_p1_0_n15), .ZN(Reg_p_p1_0_n23) );
  INV_X1 Reg_p_p1_0_U5 ( .A(Reg_p_p1_0_n23), .ZN(Reg_p_p1_0_n4) );
  NOR2_X1 Reg_p_p1_0_U4 ( .A1(Reg_p_p1_0_n1), .A2(Reg_p_p1_0_n15), .ZN(
        Reg_p_p1_0_n14) );
  NOR2_X1 Reg_p_p1_0_U3 ( .A1(VIN_d2), .A2(Reg_p_p1_0_n1), .ZN(Reg_p_p1_0_n15)
         );
  DFF_X1 Reg_p_p1_0_Q_reg_0_ ( .D(Reg_p_p1_0_n12), .CK(CLK), .Q(p_1s_0__0_) );
  DFF_X1 Reg_p_p1_0_Q_reg_1_ ( .D(Reg_p_p1_0_n11), .CK(CLK), .Q(p_1s_0__1_) );
  DFF_X1 Reg_p_p1_0_Q_reg_2_ ( .D(Reg_p_p1_0_n10), .CK(CLK), .Q(p_1s_0__2_) );
  DFF_X1 Reg_p_p1_0_Q_reg_3_ ( .D(Reg_p_p1_0_n9), .CK(CLK), .Q(p_1s_0__3_) );
  DFF_X1 Reg_p_p1_0_Q_reg_4_ ( .D(Reg_p_p1_0_n8), .CK(CLK), .Q(p_1s_0__4_) );
  DFF_X1 Reg_p_p1_0_Q_reg_5_ ( .D(Reg_p_p1_0_n7), .CK(CLK), .Q(p_1s_0__5_) );
  DFF_X1 Reg_p_p1_0_Q_reg_6_ ( .D(Reg_p_p1_0_n6), .CK(CLK), .Q(p_1s_0__6_) );
  DFF_X1 Reg_p_p1_0_Q_reg_7_ ( .D(Reg_p_p1_0_n5), .CK(CLK), .Q(p_1s_0__7_) );
  DFF_X1 Reg_p_p1_0_Q_reg_8_ ( .D(Reg_p_p1_0_n4), .CK(CLK), .Q(p_1s_0__8_) );
  DFF_X1 Reg_p_p1_0_Q_reg_9_ ( .D(Reg_p_p1_0_n3), .CK(CLK), .Q(Reg_p_p1_0_Q_9_) );
  DFF_X1 Reg_p_p1_0_Q_reg_10_ ( .D(Reg_p_p1_0_n2), .CK(CLK), .Q(p_1s_0__10_)
         );
  INV_X1 Reg_p_p2_0_U27 ( .A(n25), .ZN(Reg_p_p2_0_n1) );
  AOI22_X1 Reg_p_p2_0_U26 ( .A1(p_2_0__10_), .A2(Reg_p_p2_0_n37), .B1(
        p_2s_0__10_), .B2(Reg_p_p2_0_n36), .ZN(Reg_p_p2_0_n26) );
  INV_X1 Reg_p_p2_0_U25 ( .A(Reg_p_p2_0_n26), .ZN(Reg_p_p2_0_n2) );
  AOI22_X1 Reg_p_p2_0_U24 ( .A1(p_2_0__9_), .A2(Reg_p_p2_0_n37), .B1(
        Reg_p_p2_0_Q_9_), .B2(Reg_p_p2_0_n36), .ZN(Reg_p_p2_0_n27) );
  INV_X1 Reg_p_p2_0_U23 ( .A(Reg_p_p2_0_n27), .ZN(Reg_p_p2_0_n3) );
  AOI22_X1 Reg_p_p2_0_U22 ( .A1(p_2_0__7_), .A2(Reg_p_p2_0_n37), .B1(
        p_2s_0__7_), .B2(Reg_p_p2_0_n36), .ZN(Reg_p_p2_0_n29) );
  INV_X1 Reg_p_p2_0_U21 ( .A(Reg_p_p2_0_n29), .ZN(Reg_p_p2_0_n5) );
  AOI22_X1 Reg_p_p2_0_U20 ( .A1(p_2_0__6_), .A2(Reg_p_p2_0_n37), .B1(
        p_2s_0__6_), .B2(Reg_p_p2_0_n36), .ZN(Reg_p_p2_0_n30) );
  INV_X1 Reg_p_p2_0_U19 ( .A(Reg_p_p2_0_n30), .ZN(Reg_p_p2_0_n6) );
  AOI22_X1 Reg_p_p2_0_U18 ( .A1(p_2_0__5_), .A2(Reg_p_p2_0_n37), .B1(
        p_2s_0__5_), .B2(Reg_p_p2_0_n36), .ZN(Reg_p_p2_0_n31) );
  INV_X1 Reg_p_p2_0_U17 ( .A(Reg_p_p2_0_n31), .ZN(Reg_p_p2_0_n7) );
  AOI22_X1 Reg_p_p2_0_U16 ( .A1(p_2_0__4_), .A2(Reg_p_p2_0_n37), .B1(
        p_2s_0__4_), .B2(Reg_p_p2_0_n36), .ZN(Reg_p_p2_0_n32) );
  INV_X1 Reg_p_p2_0_U15 ( .A(Reg_p_p2_0_n32), .ZN(Reg_p_p2_0_n8) );
  AOI22_X1 Reg_p_p2_0_U14 ( .A1(p_2_0__3_), .A2(Reg_p_p2_0_n37), .B1(
        p_2s_0__3_), .B2(Reg_p_p2_0_n36), .ZN(Reg_p_p2_0_n33) );
  INV_X1 Reg_p_p2_0_U13 ( .A(Reg_p_p2_0_n33), .ZN(Reg_p_p2_0_n9) );
  AOI22_X1 Reg_p_p2_0_U12 ( .A1(p_2_0__2_), .A2(Reg_p_p2_0_n37), .B1(
        p_2s_0__2_), .B2(Reg_p_p2_0_n36), .ZN(Reg_p_p2_0_n34) );
  INV_X1 Reg_p_p2_0_U11 ( .A(Reg_p_p2_0_n34), .ZN(Reg_p_p2_0_n10) );
  AOI22_X1 Reg_p_p2_0_U10 ( .A1(p_2_0__1_), .A2(Reg_p_p2_0_n37), .B1(
        p_2s_0__1_), .B2(Reg_p_p2_0_n36), .ZN(Reg_p_p2_0_n35) );
  INV_X1 Reg_p_p2_0_U9 ( .A(Reg_p_p2_0_n35), .ZN(Reg_p_p2_0_n11) );
  AOI22_X1 Reg_p_p2_0_U8 ( .A1(p_2_0__0_), .A2(Reg_p_p2_0_n37), .B1(p_2s_0__0_), .B2(Reg_p_p2_0_n36), .ZN(Reg_p_p2_0_n38) );
  INV_X1 Reg_p_p2_0_U7 ( .A(Reg_p_p2_0_n38), .ZN(Reg_p_p2_0_n12) );
  AOI22_X1 Reg_p_p2_0_U6 ( .A1(p_2_0__8_), .A2(Reg_p_p2_0_n37), .B1(p_2s_0__8_), .B2(Reg_p_p2_0_n36), .ZN(Reg_p_p2_0_n28) );
  INV_X1 Reg_p_p2_0_U5 ( .A(Reg_p_p2_0_n28), .ZN(Reg_p_p2_0_n4) );
  NOR2_X1 Reg_p_p2_0_U4 ( .A1(Reg_p_p2_0_n1), .A2(Reg_p_p2_0_n36), .ZN(
        Reg_p_p2_0_n37) );
  NOR2_X1 Reg_p_p2_0_U3 ( .A1(VIN_d2), .A2(Reg_p_p2_0_n1), .ZN(Reg_p_p2_0_n36)
         );
  DFF_X1 Reg_p_p2_0_Q_reg_0_ ( .D(Reg_p_p2_0_n12), .CK(CLK), .Q(p_2s_0__0_) );
  DFF_X1 Reg_p_p2_0_Q_reg_1_ ( .D(Reg_p_p2_0_n11), .CK(CLK), .Q(p_2s_0__1_) );
  DFF_X1 Reg_p_p2_0_Q_reg_2_ ( .D(Reg_p_p2_0_n10), .CK(CLK), .Q(p_2s_0__2_) );
  DFF_X1 Reg_p_p2_0_Q_reg_3_ ( .D(Reg_p_p2_0_n9), .CK(CLK), .Q(p_2s_0__3_) );
  DFF_X1 Reg_p_p2_0_Q_reg_4_ ( .D(Reg_p_p2_0_n8), .CK(CLK), .Q(p_2s_0__4_) );
  DFF_X1 Reg_p_p2_0_Q_reg_5_ ( .D(Reg_p_p2_0_n7), .CK(CLK), .Q(p_2s_0__5_) );
  DFF_X1 Reg_p_p2_0_Q_reg_6_ ( .D(Reg_p_p2_0_n6), .CK(CLK), .Q(p_2s_0__6_) );
  DFF_X1 Reg_p_p2_0_Q_reg_7_ ( .D(Reg_p_p2_0_n5), .CK(CLK), .Q(p_2s_0__7_) );
  DFF_X1 Reg_p_p2_0_Q_reg_8_ ( .D(Reg_p_p2_0_n4), .CK(CLK), .Q(p_2s_0__8_) );
  DFF_X1 Reg_p_p2_0_Q_reg_9_ ( .D(Reg_p_p2_0_n3), .CK(CLK), .Q(Reg_p_p2_0_Q_9_) );
  DFF_X1 Reg_p_p2_0_Q_reg_10_ ( .D(Reg_p_p2_0_n2), .CK(CLK), .Q(p_2s_0__10_)
         );
  INV_X1 Reg_p_p3_0_U27 ( .A(n25), .ZN(Reg_p_p3_0_n1) );
  AOI22_X1 Reg_p_p3_0_U26 ( .A1(p_3_0__10_), .A2(Reg_p_p3_0_n37), .B1(
        p_3s_0__10_), .B2(Reg_p_p3_0_n36), .ZN(Reg_p_p3_0_n26) );
  INV_X1 Reg_p_p3_0_U25 ( .A(Reg_p_p3_0_n26), .ZN(Reg_p_p3_0_n2) );
  AOI22_X1 Reg_p_p3_0_U24 ( .A1(p_3_0__9_), .A2(Reg_p_p3_0_n37), .B1(
        Reg_p_p3_0_Q_9_), .B2(Reg_p_p3_0_n36), .ZN(Reg_p_p3_0_n27) );
  INV_X1 Reg_p_p3_0_U23 ( .A(Reg_p_p3_0_n27), .ZN(Reg_p_p3_0_n3) );
  AOI22_X1 Reg_p_p3_0_U22 ( .A1(p_3_0__7_), .A2(Reg_p_p3_0_n37), .B1(
        p_3s_0__7_), .B2(Reg_p_p3_0_n36), .ZN(Reg_p_p3_0_n29) );
  INV_X1 Reg_p_p3_0_U21 ( .A(Reg_p_p3_0_n29), .ZN(Reg_p_p3_0_n5) );
  AOI22_X1 Reg_p_p3_0_U20 ( .A1(p_3_0__6_), .A2(Reg_p_p3_0_n37), .B1(
        p_3s_0__6_), .B2(Reg_p_p3_0_n36), .ZN(Reg_p_p3_0_n30) );
  INV_X1 Reg_p_p3_0_U19 ( .A(Reg_p_p3_0_n30), .ZN(Reg_p_p3_0_n6) );
  AOI22_X1 Reg_p_p3_0_U18 ( .A1(p_3_0__5_), .A2(Reg_p_p3_0_n37), .B1(
        p_3s_0__5_), .B2(Reg_p_p3_0_n36), .ZN(Reg_p_p3_0_n31) );
  INV_X1 Reg_p_p3_0_U17 ( .A(Reg_p_p3_0_n31), .ZN(Reg_p_p3_0_n7) );
  AOI22_X1 Reg_p_p3_0_U16 ( .A1(p_3_0__4_), .A2(Reg_p_p3_0_n37), .B1(
        p_3s_0__4_), .B2(Reg_p_p3_0_n36), .ZN(Reg_p_p3_0_n32) );
  INV_X1 Reg_p_p3_0_U15 ( .A(Reg_p_p3_0_n32), .ZN(Reg_p_p3_0_n8) );
  AOI22_X1 Reg_p_p3_0_U14 ( .A1(p_3_0__3_), .A2(Reg_p_p3_0_n37), .B1(
        p_3s_0__3_), .B2(Reg_p_p3_0_n36), .ZN(Reg_p_p3_0_n33) );
  INV_X1 Reg_p_p3_0_U13 ( .A(Reg_p_p3_0_n33), .ZN(Reg_p_p3_0_n9) );
  AOI22_X1 Reg_p_p3_0_U12 ( .A1(p_3_0__2_), .A2(Reg_p_p3_0_n37), .B1(
        p_3s_0__2_), .B2(Reg_p_p3_0_n36), .ZN(Reg_p_p3_0_n34) );
  INV_X1 Reg_p_p3_0_U11 ( .A(Reg_p_p3_0_n34), .ZN(Reg_p_p3_0_n10) );
  AOI22_X1 Reg_p_p3_0_U10 ( .A1(p_3_0__1_), .A2(Reg_p_p3_0_n37), .B1(
        p_3s_0__1_), .B2(Reg_p_p3_0_n36), .ZN(Reg_p_p3_0_n35) );
  INV_X1 Reg_p_p3_0_U9 ( .A(Reg_p_p3_0_n35), .ZN(Reg_p_p3_0_n11) );
  AOI22_X1 Reg_p_p3_0_U8 ( .A1(p_3_0__0_), .A2(Reg_p_p3_0_n37), .B1(p_3s_0__0_), .B2(Reg_p_p3_0_n36), .ZN(Reg_p_p3_0_n38) );
  INV_X1 Reg_p_p3_0_U7 ( .A(Reg_p_p3_0_n38), .ZN(Reg_p_p3_0_n12) );
  AOI22_X1 Reg_p_p3_0_U6 ( .A1(p_3_0__8_), .A2(Reg_p_p3_0_n37), .B1(p_3s_0__8_), .B2(Reg_p_p3_0_n36), .ZN(Reg_p_p3_0_n28) );
  INV_X1 Reg_p_p3_0_U5 ( .A(Reg_p_p3_0_n28), .ZN(Reg_p_p3_0_n4) );
  NOR2_X1 Reg_p_p3_0_U4 ( .A1(Reg_p_p3_0_n1), .A2(Reg_p_p3_0_n36), .ZN(
        Reg_p_p3_0_n37) );
  NOR2_X1 Reg_p_p3_0_U3 ( .A1(VIN_d2), .A2(Reg_p_p3_0_n1), .ZN(Reg_p_p3_0_n36)
         );
  DFF_X1 Reg_p_p3_0_Q_reg_0_ ( .D(Reg_p_p3_0_n12), .CK(CLK), .Q(p_3s_0__0_) );
  DFF_X1 Reg_p_p3_0_Q_reg_1_ ( .D(Reg_p_p3_0_n11), .CK(CLK), .Q(p_3s_0__1_) );
  DFF_X1 Reg_p_p3_0_Q_reg_2_ ( .D(Reg_p_p3_0_n10), .CK(CLK), .Q(p_3s_0__2_) );
  DFF_X1 Reg_p_p3_0_Q_reg_3_ ( .D(Reg_p_p3_0_n9), .CK(CLK), .Q(p_3s_0__3_) );
  DFF_X1 Reg_p_p3_0_Q_reg_4_ ( .D(Reg_p_p3_0_n8), .CK(CLK), .Q(p_3s_0__4_) );
  DFF_X1 Reg_p_p3_0_Q_reg_5_ ( .D(Reg_p_p3_0_n7), .CK(CLK), .Q(p_3s_0__5_) );
  DFF_X1 Reg_p_p3_0_Q_reg_6_ ( .D(Reg_p_p3_0_n6), .CK(CLK), .Q(p_3s_0__6_) );
  DFF_X1 Reg_p_p3_0_Q_reg_7_ ( .D(Reg_p_p3_0_n5), .CK(CLK), .Q(p_3s_0__7_) );
  DFF_X1 Reg_p_p3_0_Q_reg_8_ ( .D(Reg_p_p3_0_n4), .CK(CLK), .Q(p_3s_0__8_) );
  DFF_X1 Reg_p_p3_0_Q_reg_9_ ( .D(Reg_p_p3_0_n3), .CK(CLK), .Q(Reg_p_p3_0_Q_9_) );
  DFF_X1 Reg_p_p3_0_Q_reg_10_ ( .D(Reg_p_p3_0_n2), .CK(CLK), .Q(p_3s_0__10_)
         );
  INV_X1 Reg_p_p1_1_U27 ( .A(n25), .ZN(Reg_p_p1_1_n1) );
  AOI22_X1 Reg_p_p1_1_U26 ( .A1(p_1_1__10_), .A2(Reg_p_p1_1_n37), .B1(
        p_1s_1__10_), .B2(Reg_p_p1_1_n36), .ZN(Reg_p_p1_1_n26) );
  INV_X1 Reg_p_p1_1_U25 ( .A(Reg_p_p1_1_n26), .ZN(Reg_p_p1_1_n2) );
  AOI22_X1 Reg_p_p1_1_U24 ( .A1(p_1_1__9_), .A2(Reg_p_p1_1_n37), .B1(
        Reg_p_p1_1_Q_9_), .B2(Reg_p_p1_1_n36), .ZN(Reg_p_p1_1_n27) );
  INV_X1 Reg_p_p1_1_U23 ( .A(Reg_p_p1_1_n27), .ZN(Reg_p_p1_1_n3) );
  AOI22_X1 Reg_p_p1_1_U22 ( .A1(p_1_1__7_), .A2(Reg_p_p1_1_n37), .B1(
        p_1s_1__7_), .B2(Reg_p_p1_1_n36), .ZN(Reg_p_p1_1_n29) );
  INV_X1 Reg_p_p1_1_U21 ( .A(Reg_p_p1_1_n29), .ZN(Reg_p_p1_1_n5) );
  AOI22_X1 Reg_p_p1_1_U20 ( .A1(p_1_1__6_), .A2(Reg_p_p1_1_n37), .B1(
        p_1s_1__6_), .B2(Reg_p_p1_1_n36), .ZN(Reg_p_p1_1_n30) );
  INV_X1 Reg_p_p1_1_U19 ( .A(Reg_p_p1_1_n30), .ZN(Reg_p_p1_1_n6) );
  AOI22_X1 Reg_p_p1_1_U18 ( .A1(p_1_1__5_), .A2(Reg_p_p1_1_n37), .B1(
        p_1s_1__5_), .B2(Reg_p_p1_1_n36), .ZN(Reg_p_p1_1_n31) );
  INV_X1 Reg_p_p1_1_U17 ( .A(Reg_p_p1_1_n31), .ZN(Reg_p_p1_1_n7) );
  AOI22_X1 Reg_p_p1_1_U16 ( .A1(p_1_1__4_), .A2(Reg_p_p1_1_n37), .B1(
        p_1s_1__4_), .B2(Reg_p_p1_1_n36), .ZN(Reg_p_p1_1_n32) );
  INV_X1 Reg_p_p1_1_U15 ( .A(Reg_p_p1_1_n32), .ZN(Reg_p_p1_1_n8) );
  AOI22_X1 Reg_p_p1_1_U14 ( .A1(p_1_1__3_), .A2(Reg_p_p1_1_n37), .B1(
        p_1s_1__3_), .B2(Reg_p_p1_1_n36), .ZN(Reg_p_p1_1_n33) );
  INV_X1 Reg_p_p1_1_U13 ( .A(Reg_p_p1_1_n33), .ZN(Reg_p_p1_1_n9) );
  AOI22_X1 Reg_p_p1_1_U12 ( .A1(p_1_1__2_), .A2(Reg_p_p1_1_n37), .B1(
        p_1s_1__2_), .B2(Reg_p_p1_1_n36), .ZN(Reg_p_p1_1_n34) );
  INV_X1 Reg_p_p1_1_U11 ( .A(Reg_p_p1_1_n34), .ZN(Reg_p_p1_1_n10) );
  AOI22_X1 Reg_p_p1_1_U10 ( .A1(p_1_1__1_), .A2(Reg_p_p1_1_n37), .B1(
        p_1s_1__1_), .B2(Reg_p_p1_1_n36), .ZN(Reg_p_p1_1_n35) );
  INV_X1 Reg_p_p1_1_U9 ( .A(Reg_p_p1_1_n35), .ZN(Reg_p_p1_1_n11) );
  AOI22_X1 Reg_p_p1_1_U8 ( .A1(p_1_1__0_), .A2(Reg_p_p1_1_n37), .B1(p_1s_1__0_), .B2(Reg_p_p1_1_n36), .ZN(Reg_p_p1_1_n38) );
  INV_X1 Reg_p_p1_1_U7 ( .A(Reg_p_p1_1_n38), .ZN(Reg_p_p1_1_n12) );
  AOI22_X1 Reg_p_p1_1_U6 ( .A1(p_1_1__8_), .A2(Reg_p_p1_1_n37), .B1(p_1s_1__8_), .B2(Reg_p_p1_1_n36), .ZN(Reg_p_p1_1_n28) );
  INV_X1 Reg_p_p1_1_U5 ( .A(Reg_p_p1_1_n28), .ZN(Reg_p_p1_1_n4) );
  NOR2_X1 Reg_p_p1_1_U4 ( .A1(Reg_p_p1_1_n1), .A2(Reg_p_p1_1_n36), .ZN(
        Reg_p_p1_1_n37) );
  NOR2_X1 Reg_p_p1_1_U3 ( .A1(VIN_d2), .A2(Reg_p_p1_1_n1), .ZN(Reg_p_p1_1_n36)
         );
  DFF_X1 Reg_p_p1_1_Q_reg_0_ ( .D(Reg_p_p1_1_n12), .CK(CLK), .Q(p_1s_1__0_) );
  DFF_X1 Reg_p_p1_1_Q_reg_1_ ( .D(Reg_p_p1_1_n11), .CK(CLK), .Q(p_1s_1__1_) );
  DFF_X1 Reg_p_p1_1_Q_reg_2_ ( .D(Reg_p_p1_1_n10), .CK(CLK), .Q(p_1s_1__2_) );
  DFF_X1 Reg_p_p1_1_Q_reg_3_ ( .D(Reg_p_p1_1_n9), .CK(CLK), .Q(p_1s_1__3_) );
  DFF_X1 Reg_p_p1_1_Q_reg_4_ ( .D(Reg_p_p1_1_n8), .CK(CLK), .Q(p_1s_1__4_) );
  DFF_X1 Reg_p_p1_1_Q_reg_5_ ( .D(Reg_p_p1_1_n7), .CK(CLK), .Q(p_1s_1__5_) );
  DFF_X1 Reg_p_p1_1_Q_reg_6_ ( .D(Reg_p_p1_1_n6), .CK(CLK), .Q(p_1s_1__6_) );
  DFF_X1 Reg_p_p1_1_Q_reg_7_ ( .D(Reg_p_p1_1_n5), .CK(CLK), .Q(p_1s_1__7_) );
  DFF_X1 Reg_p_p1_1_Q_reg_8_ ( .D(Reg_p_p1_1_n4), .CK(CLK), .Q(p_1s_1__8_) );
  DFF_X1 Reg_p_p1_1_Q_reg_9_ ( .D(Reg_p_p1_1_n3), .CK(CLK), .Q(Reg_p_p1_1_Q_9_) );
  DFF_X1 Reg_p_p1_1_Q_reg_10_ ( .D(Reg_p_p1_1_n2), .CK(CLK), .Q(p_1s_1__10_)
         );
  INV_X1 Reg_p_p2_1_U27 ( .A(n25), .ZN(Reg_p_p2_1_n1) );
  AOI22_X1 Reg_p_p2_1_U26 ( .A1(p_2_1__10_), .A2(Reg_p_p2_1_n37), .B1(
        p_2s_1__10_), .B2(Reg_p_p2_1_n36), .ZN(Reg_p_p2_1_n26) );
  INV_X1 Reg_p_p2_1_U25 ( .A(Reg_p_p2_1_n26), .ZN(Reg_p_p2_1_n2) );
  AOI22_X1 Reg_p_p2_1_U24 ( .A1(p_2_1__9_), .A2(Reg_p_p2_1_n37), .B1(
        Reg_p_p2_1_Q_9_), .B2(Reg_p_p2_1_n36), .ZN(Reg_p_p2_1_n27) );
  INV_X1 Reg_p_p2_1_U23 ( .A(Reg_p_p2_1_n27), .ZN(Reg_p_p2_1_n3) );
  AOI22_X1 Reg_p_p2_1_U22 ( .A1(p_2_1__7_), .A2(Reg_p_p2_1_n37), .B1(
        p_2s_1__7_), .B2(Reg_p_p2_1_n36), .ZN(Reg_p_p2_1_n29) );
  INV_X1 Reg_p_p2_1_U21 ( .A(Reg_p_p2_1_n29), .ZN(Reg_p_p2_1_n5) );
  AOI22_X1 Reg_p_p2_1_U20 ( .A1(p_2_1__6_), .A2(Reg_p_p2_1_n37), .B1(
        p_2s_1__6_), .B2(Reg_p_p2_1_n36), .ZN(Reg_p_p2_1_n30) );
  INV_X1 Reg_p_p2_1_U19 ( .A(Reg_p_p2_1_n30), .ZN(Reg_p_p2_1_n6) );
  AOI22_X1 Reg_p_p2_1_U18 ( .A1(p_2_1__5_), .A2(Reg_p_p2_1_n37), .B1(
        p_2s_1__5_), .B2(Reg_p_p2_1_n36), .ZN(Reg_p_p2_1_n31) );
  INV_X1 Reg_p_p2_1_U17 ( .A(Reg_p_p2_1_n31), .ZN(Reg_p_p2_1_n7) );
  AOI22_X1 Reg_p_p2_1_U16 ( .A1(p_2_1__4_), .A2(Reg_p_p2_1_n37), .B1(
        p_2s_1__4_), .B2(Reg_p_p2_1_n36), .ZN(Reg_p_p2_1_n32) );
  INV_X1 Reg_p_p2_1_U15 ( .A(Reg_p_p2_1_n32), .ZN(Reg_p_p2_1_n8) );
  AOI22_X1 Reg_p_p2_1_U14 ( .A1(p_2_1__3_), .A2(Reg_p_p2_1_n37), .B1(
        p_2s_1__3_), .B2(Reg_p_p2_1_n36), .ZN(Reg_p_p2_1_n33) );
  INV_X1 Reg_p_p2_1_U13 ( .A(Reg_p_p2_1_n33), .ZN(Reg_p_p2_1_n9) );
  AOI22_X1 Reg_p_p2_1_U12 ( .A1(p_2_1__2_), .A2(Reg_p_p2_1_n37), .B1(
        p_2s_1__2_), .B2(Reg_p_p2_1_n36), .ZN(Reg_p_p2_1_n34) );
  INV_X1 Reg_p_p2_1_U11 ( .A(Reg_p_p2_1_n34), .ZN(Reg_p_p2_1_n10) );
  AOI22_X1 Reg_p_p2_1_U10 ( .A1(p_2_1__1_), .A2(Reg_p_p2_1_n37), .B1(
        p_2s_1__1_), .B2(Reg_p_p2_1_n36), .ZN(Reg_p_p2_1_n35) );
  INV_X1 Reg_p_p2_1_U9 ( .A(Reg_p_p2_1_n35), .ZN(Reg_p_p2_1_n11) );
  AOI22_X1 Reg_p_p2_1_U8 ( .A1(p_2_1__0_), .A2(Reg_p_p2_1_n37), .B1(p_2s_1__0_), .B2(Reg_p_p2_1_n36), .ZN(Reg_p_p2_1_n38) );
  INV_X1 Reg_p_p2_1_U7 ( .A(Reg_p_p2_1_n38), .ZN(Reg_p_p2_1_n12) );
  AOI22_X1 Reg_p_p2_1_U6 ( .A1(p_2_1__8_), .A2(Reg_p_p2_1_n37), .B1(p_2s_1__8_), .B2(Reg_p_p2_1_n36), .ZN(Reg_p_p2_1_n28) );
  INV_X1 Reg_p_p2_1_U5 ( .A(Reg_p_p2_1_n28), .ZN(Reg_p_p2_1_n4) );
  NOR2_X1 Reg_p_p2_1_U4 ( .A1(Reg_p_p2_1_n1), .A2(Reg_p_p2_1_n36), .ZN(
        Reg_p_p2_1_n37) );
  NOR2_X1 Reg_p_p2_1_U3 ( .A1(VIN_d2), .A2(Reg_p_p2_1_n1), .ZN(Reg_p_p2_1_n36)
         );
  DFF_X1 Reg_p_p2_1_Q_reg_0_ ( .D(Reg_p_p2_1_n12), .CK(CLK), .Q(p_2s_1__0_) );
  DFF_X1 Reg_p_p2_1_Q_reg_1_ ( .D(Reg_p_p2_1_n11), .CK(CLK), .Q(p_2s_1__1_) );
  DFF_X1 Reg_p_p2_1_Q_reg_2_ ( .D(Reg_p_p2_1_n10), .CK(CLK), .Q(p_2s_1__2_) );
  DFF_X1 Reg_p_p2_1_Q_reg_3_ ( .D(Reg_p_p2_1_n9), .CK(CLK), .Q(p_2s_1__3_) );
  DFF_X1 Reg_p_p2_1_Q_reg_4_ ( .D(Reg_p_p2_1_n8), .CK(CLK), .Q(p_2s_1__4_) );
  DFF_X1 Reg_p_p2_1_Q_reg_5_ ( .D(Reg_p_p2_1_n7), .CK(CLK), .Q(p_2s_1__5_) );
  DFF_X1 Reg_p_p2_1_Q_reg_6_ ( .D(Reg_p_p2_1_n6), .CK(CLK), .Q(p_2s_1__6_) );
  DFF_X1 Reg_p_p2_1_Q_reg_7_ ( .D(Reg_p_p2_1_n5), .CK(CLK), .Q(p_2s_1__7_) );
  DFF_X1 Reg_p_p2_1_Q_reg_8_ ( .D(Reg_p_p2_1_n4), .CK(CLK), .Q(p_2s_1__8_) );
  DFF_X1 Reg_p_p2_1_Q_reg_9_ ( .D(Reg_p_p2_1_n3), .CK(CLK), .Q(Reg_p_p2_1_Q_9_) );
  DFF_X1 Reg_p_p2_1_Q_reg_10_ ( .D(Reg_p_p2_1_n2), .CK(CLK), .Q(p_2s_1__10_)
         );
  INV_X1 Reg_p_p3_1_U27 ( .A(n25), .ZN(Reg_p_p3_1_n1) );
  AOI22_X1 Reg_p_p3_1_U26 ( .A1(p_3_1__10_), .A2(Reg_p_p3_1_n37), .B1(
        p_3s_1__10_), .B2(Reg_p_p3_1_n36), .ZN(Reg_p_p3_1_n26) );
  INV_X1 Reg_p_p3_1_U25 ( .A(Reg_p_p3_1_n26), .ZN(Reg_p_p3_1_n2) );
  AOI22_X1 Reg_p_p3_1_U24 ( .A1(p_3_1__9_), .A2(Reg_p_p3_1_n37), .B1(
        Reg_p_p3_1_Q_9_), .B2(Reg_p_p3_1_n36), .ZN(Reg_p_p3_1_n27) );
  INV_X1 Reg_p_p3_1_U23 ( .A(Reg_p_p3_1_n27), .ZN(Reg_p_p3_1_n3) );
  AOI22_X1 Reg_p_p3_1_U22 ( .A1(p_3_1__7_), .A2(Reg_p_p3_1_n37), .B1(
        p_3s_1__7_), .B2(Reg_p_p3_1_n36), .ZN(Reg_p_p3_1_n29) );
  INV_X1 Reg_p_p3_1_U21 ( .A(Reg_p_p3_1_n29), .ZN(Reg_p_p3_1_n5) );
  AOI22_X1 Reg_p_p3_1_U20 ( .A1(p_3_1__6_), .A2(Reg_p_p3_1_n37), .B1(
        p_3s_1__6_), .B2(Reg_p_p3_1_n36), .ZN(Reg_p_p3_1_n30) );
  INV_X1 Reg_p_p3_1_U19 ( .A(Reg_p_p3_1_n30), .ZN(Reg_p_p3_1_n6) );
  AOI22_X1 Reg_p_p3_1_U18 ( .A1(p_3_1__5_), .A2(Reg_p_p3_1_n37), .B1(
        p_3s_1__5_), .B2(Reg_p_p3_1_n36), .ZN(Reg_p_p3_1_n31) );
  INV_X1 Reg_p_p3_1_U17 ( .A(Reg_p_p3_1_n31), .ZN(Reg_p_p3_1_n7) );
  AOI22_X1 Reg_p_p3_1_U16 ( .A1(p_3_1__4_), .A2(Reg_p_p3_1_n37), .B1(
        p_3s_1__4_), .B2(Reg_p_p3_1_n36), .ZN(Reg_p_p3_1_n32) );
  INV_X1 Reg_p_p3_1_U15 ( .A(Reg_p_p3_1_n32), .ZN(Reg_p_p3_1_n8) );
  AOI22_X1 Reg_p_p3_1_U14 ( .A1(p_3_1__3_), .A2(Reg_p_p3_1_n37), .B1(
        p_3s_1__3_), .B2(Reg_p_p3_1_n36), .ZN(Reg_p_p3_1_n33) );
  INV_X1 Reg_p_p3_1_U13 ( .A(Reg_p_p3_1_n33), .ZN(Reg_p_p3_1_n9) );
  AOI22_X1 Reg_p_p3_1_U12 ( .A1(p_3_1__2_), .A2(Reg_p_p3_1_n37), .B1(
        p_3s_1__2_), .B2(Reg_p_p3_1_n36), .ZN(Reg_p_p3_1_n34) );
  INV_X1 Reg_p_p3_1_U11 ( .A(Reg_p_p3_1_n34), .ZN(Reg_p_p3_1_n10) );
  AOI22_X1 Reg_p_p3_1_U10 ( .A1(p_3_1__1_), .A2(Reg_p_p3_1_n37), .B1(
        p_3s_1__1_), .B2(Reg_p_p3_1_n36), .ZN(Reg_p_p3_1_n35) );
  INV_X1 Reg_p_p3_1_U9 ( .A(Reg_p_p3_1_n35), .ZN(Reg_p_p3_1_n11) );
  AOI22_X1 Reg_p_p3_1_U8 ( .A1(p_3_1__0_), .A2(Reg_p_p3_1_n37), .B1(p_3s_1__0_), .B2(Reg_p_p3_1_n36), .ZN(Reg_p_p3_1_n38) );
  INV_X1 Reg_p_p3_1_U7 ( .A(Reg_p_p3_1_n38), .ZN(Reg_p_p3_1_n12) );
  AOI22_X1 Reg_p_p3_1_U6 ( .A1(p_3_1__8_), .A2(Reg_p_p3_1_n37), .B1(p_3s_1__8_), .B2(Reg_p_p3_1_n36), .ZN(Reg_p_p3_1_n28) );
  INV_X1 Reg_p_p3_1_U5 ( .A(Reg_p_p3_1_n28), .ZN(Reg_p_p3_1_n4) );
  NOR2_X1 Reg_p_p3_1_U4 ( .A1(Reg_p_p3_1_n1), .A2(Reg_p_p3_1_n36), .ZN(
        Reg_p_p3_1_n37) );
  NOR2_X1 Reg_p_p3_1_U3 ( .A1(VIN_d2), .A2(Reg_p_p3_1_n1), .ZN(Reg_p_p3_1_n36)
         );
  DFF_X1 Reg_p_p3_1_Q_reg_0_ ( .D(Reg_p_p3_1_n12), .CK(CLK), .Q(p_3s_1__0_) );
  DFF_X1 Reg_p_p3_1_Q_reg_1_ ( .D(Reg_p_p3_1_n11), .CK(CLK), .Q(p_3s_1__1_) );
  DFF_X1 Reg_p_p3_1_Q_reg_2_ ( .D(Reg_p_p3_1_n10), .CK(CLK), .Q(p_3s_1__2_) );
  DFF_X1 Reg_p_p3_1_Q_reg_3_ ( .D(Reg_p_p3_1_n9), .CK(CLK), .Q(p_3s_1__3_) );
  DFF_X1 Reg_p_p3_1_Q_reg_4_ ( .D(Reg_p_p3_1_n8), .CK(CLK), .Q(p_3s_1__4_) );
  DFF_X1 Reg_p_p3_1_Q_reg_5_ ( .D(Reg_p_p3_1_n7), .CK(CLK), .Q(p_3s_1__5_) );
  DFF_X1 Reg_p_p3_1_Q_reg_6_ ( .D(Reg_p_p3_1_n6), .CK(CLK), .Q(p_3s_1__6_) );
  DFF_X1 Reg_p_p3_1_Q_reg_7_ ( .D(Reg_p_p3_1_n5), .CK(CLK), .Q(p_3s_1__7_) );
  DFF_X1 Reg_p_p3_1_Q_reg_8_ ( .D(Reg_p_p3_1_n4), .CK(CLK), .Q(p_3s_1__8_) );
  DFF_X1 Reg_p_p3_1_Q_reg_9_ ( .D(Reg_p_p3_1_n3), .CK(CLK), .Q(Reg_p_p3_1_Q_9_) );
  DFF_X1 Reg_p_p3_1_Q_reg_10_ ( .D(Reg_p_p3_1_n2), .CK(CLK), .Q(p_3s_1__10_)
         );
  INV_X1 Reg_p_p1_2_U27 ( .A(n26), .ZN(Reg_p_p1_2_n1) );
  AOI22_X1 Reg_p_p1_2_U26 ( .A1(p_1_2__10_), .A2(Reg_p_p1_2_n37), .B1(
        p_1s_2__10_), .B2(Reg_p_p1_2_n36), .ZN(Reg_p_p1_2_n26) );
  INV_X1 Reg_p_p1_2_U25 ( .A(Reg_p_p1_2_n26), .ZN(Reg_p_p1_2_n2) );
  AOI22_X1 Reg_p_p1_2_U24 ( .A1(p_1_2__9_), .A2(Reg_p_p1_2_n37), .B1(
        Reg_p_p1_2_Q_9_), .B2(Reg_p_p1_2_n36), .ZN(Reg_p_p1_2_n27) );
  INV_X1 Reg_p_p1_2_U23 ( .A(Reg_p_p1_2_n27), .ZN(Reg_p_p1_2_n3) );
  AOI22_X1 Reg_p_p1_2_U22 ( .A1(p_1_2__7_), .A2(Reg_p_p1_2_n37), .B1(
        p_1s_2__7_), .B2(Reg_p_p1_2_n36), .ZN(Reg_p_p1_2_n29) );
  INV_X1 Reg_p_p1_2_U21 ( .A(Reg_p_p1_2_n29), .ZN(Reg_p_p1_2_n5) );
  AOI22_X1 Reg_p_p1_2_U20 ( .A1(p_1_2__6_), .A2(Reg_p_p1_2_n37), .B1(
        p_1s_2__6_), .B2(Reg_p_p1_2_n36), .ZN(Reg_p_p1_2_n30) );
  INV_X1 Reg_p_p1_2_U19 ( .A(Reg_p_p1_2_n30), .ZN(Reg_p_p1_2_n6) );
  AOI22_X1 Reg_p_p1_2_U18 ( .A1(p_1_2__5_), .A2(Reg_p_p1_2_n37), .B1(
        p_1s_2__5_), .B2(Reg_p_p1_2_n36), .ZN(Reg_p_p1_2_n31) );
  INV_X1 Reg_p_p1_2_U17 ( .A(Reg_p_p1_2_n31), .ZN(Reg_p_p1_2_n7) );
  AOI22_X1 Reg_p_p1_2_U16 ( .A1(p_1_2__4_), .A2(Reg_p_p1_2_n37), .B1(
        p_1s_2__4_), .B2(Reg_p_p1_2_n36), .ZN(Reg_p_p1_2_n32) );
  INV_X1 Reg_p_p1_2_U15 ( .A(Reg_p_p1_2_n32), .ZN(Reg_p_p1_2_n8) );
  AOI22_X1 Reg_p_p1_2_U14 ( .A1(p_1_2__3_), .A2(Reg_p_p1_2_n37), .B1(
        p_1s_2__3_), .B2(Reg_p_p1_2_n36), .ZN(Reg_p_p1_2_n33) );
  INV_X1 Reg_p_p1_2_U13 ( .A(Reg_p_p1_2_n33), .ZN(Reg_p_p1_2_n9) );
  AOI22_X1 Reg_p_p1_2_U12 ( .A1(p_1_2__2_), .A2(Reg_p_p1_2_n37), .B1(
        p_1s_2__2_), .B2(Reg_p_p1_2_n36), .ZN(Reg_p_p1_2_n34) );
  INV_X1 Reg_p_p1_2_U11 ( .A(Reg_p_p1_2_n34), .ZN(Reg_p_p1_2_n10) );
  AOI22_X1 Reg_p_p1_2_U10 ( .A1(p_1_2__1_), .A2(Reg_p_p1_2_n37), .B1(
        p_1s_2__1_), .B2(Reg_p_p1_2_n36), .ZN(Reg_p_p1_2_n35) );
  INV_X1 Reg_p_p1_2_U9 ( .A(Reg_p_p1_2_n35), .ZN(Reg_p_p1_2_n11) );
  AOI22_X1 Reg_p_p1_2_U8 ( .A1(p_1_2__0_), .A2(Reg_p_p1_2_n37), .B1(p_1s_2__0_), .B2(Reg_p_p1_2_n36), .ZN(Reg_p_p1_2_n38) );
  INV_X1 Reg_p_p1_2_U7 ( .A(Reg_p_p1_2_n38), .ZN(Reg_p_p1_2_n12) );
  AOI22_X1 Reg_p_p1_2_U6 ( .A1(p_1_2__8_), .A2(Reg_p_p1_2_n37), .B1(p_1s_2__8_), .B2(Reg_p_p1_2_n36), .ZN(Reg_p_p1_2_n28) );
  INV_X1 Reg_p_p1_2_U5 ( .A(Reg_p_p1_2_n28), .ZN(Reg_p_p1_2_n4) );
  NOR2_X1 Reg_p_p1_2_U4 ( .A1(Reg_p_p1_2_n1), .A2(Reg_p_p1_2_n36), .ZN(
        Reg_p_p1_2_n37) );
  NOR2_X1 Reg_p_p1_2_U3 ( .A1(VIN_d2), .A2(Reg_p_p1_2_n1), .ZN(Reg_p_p1_2_n36)
         );
  DFF_X1 Reg_p_p1_2_Q_reg_0_ ( .D(Reg_p_p1_2_n12), .CK(CLK), .Q(p_1s_2__0_) );
  DFF_X1 Reg_p_p1_2_Q_reg_1_ ( .D(Reg_p_p1_2_n11), .CK(CLK), .Q(p_1s_2__1_) );
  DFF_X1 Reg_p_p1_2_Q_reg_2_ ( .D(Reg_p_p1_2_n10), .CK(CLK), .Q(p_1s_2__2_) );
  DFF_X1 Reg_p_p1_2_Q_reg_3_ ( .D(Reg_p_p1_2_n9), .CK(CLK), .Q(p_1s_2__3_) );
  DFF_X1 Reg_p_p1_2_Q_reg_4_ ( .D(Reg_p_p1_2_n8), .CK(CLK), .Q(p_1s_2__4_) );
  DFF_X1 Reg_p_p1_2_Q_reg_5_ ( .D(Reg_p_p1_2_n7), .CK(CLK), .Q(p_1s_2__5_) );
  DFF_X1 Reg_p_p1_2_Q_reg_6_ ( .D(Reg_p_p1_2_n6), .CK(CLK), .Q(p_1s_2__6_) );
  DFF_X1 Reg_p_p1_2_Q_reg_7_ ( .D(Reg_p_p1_2_n5), .CK(CLK), .Q(p_1s_2__7_) );
  DFF_X1 Reg_p_p1_2_Q_reg_8_ ( .D(Reg_p_p1_2_n4), .CK(CLK), .Q(p_1s_2__8_) );
  DFF_X1 Reg_p_p1_2_Q_reg_9_ ( .D(Reg_p_p1_2_n3), .CK(CLK), .Q(Reg_p_p1_2_Q_9_) );
  DFF_X1 Reg_p_p1_2_Q_reg_10_ ( .D(Reg_p_p1_2_n2), .CK(CLK), .Q(p_1s_2__10_)
         );
  INV_X1 Reg_p_p2_2_U27 ( .A(n26), .ZN(Reg_p_p2_2_n1) );
  AOI22_X1 Reg_p_p2_2_U26 ( .A1(p_2_2__10_), .A2(Reg_p_p2_2_n37), .B1(
        p_2s_2__10_), .B2(Reg_p_p2_2_n36), .ZN(Reg_p_p2_2_n26) );
  INV_X1 Reg_p_p2_2_U25 ( .A(Reg_p_p2_2_n26), .ZN(Reg_p_p2_2_n2) );
  AOI22_X1 Reg_p_p2_2_U24 ( .A1(p_2_2__9_), .A2(Reg_p_p2_2_n37), .B1(
        Reg_p_p2_2_Q_9_), .B2(Reg_p_p2_2_n36), .ZN(Reg_p_p2_2_n27) );
  INV_X1 Reg_p_p2_2_U23 ( .A(Reg_p_p2_2_n27), .ZN(Reg_p_p2_2_n3) );
  AOI22_X1 Reg_p_p2_2_U22 ( .A1(p_2_2__7_), .A2(Reg_p_p2_2_n37), .B1(
        p_2s_2__7_), .B2(Reg_p_p2_2_n36), .ZN(Reg_p_p2_2_n29) );
  INV_X1 Reg_p_p2_2_U21 ( .A(Reg_p_p2_2_n29), .ZN(Reg_p_p2_2_n5) );
  AOI22_X1 Reg_p_p2_2_U20 ( .A1(p_2_2__6_), .A2(Reg_p_p2_2_n37), .B1(
        p_2s_2__6_), .B2(Reg_p_p2_2_n36), .ZN(Reg_p_p2_2_n30) );
  INV_X1 Reg_p_p2_2_U19 ( .A(Reg_p_p2_2_n30), .ZN(Reg_p_p2_2_n6) );
  AOI22_X1 Reg_p_p2_2_U18 ( .A1(p_2_2__5_), .A2(Reg_p_p2_2_n37), .B1(
        p_2s_2__5_), .B2(Reg_p_p2_2_n36), .ZN(Reg_p_p2_2_n31) );
  INV_X1 Reg_p_p2_2_U17 ( .A(Reg_p_p2_2_n31), .ZN(Reg_p_p2_2_n7) );
  AOI22_X1 Reg_p_p2_2_U16 ( .A1(p_2_2__4_), .A2(Reg_p_p2_2_n37), .B1(
        p_2s_2__4_), .B2(Reg_p_p2_2_n36), .ZN(Reg_p_p2_2_n32) );
  INV_X1 Reg_p_p2_2_U15 ( .A(Reg_p_p2_2_n32), .ZN(Reg_p_p2_2_n8) );
  AOI22_X1 Reg_p_p2_2_U14 ( .A1(p_2_2__3_), .A2(Reg_p_p2_2_n37), .B1(
        p_2s_2__3_), .B2(Reg_p_p2_2_n36), .ZN(Reg_p_p2_2_n33) );
  INV_X1 Reg_p_p2_2_U13 ( .A(Reg_p_p2_2_n33), .ZN(Reg_p_p2_2_n9) );
  AOI22_X1 Reg_p_p2_2_U12 ( .A1(p_2_2__2_), .A2(Reg_p_p2_2_n37), .B1(
        p_2s_2__2_), .B2(Reg_p_p2_2_n36), .ZN(Reg_p_p2_2_n34) );
  INV_X1 Reg_p_p2_2_U11 ( .A(Reg_p_p2_2_n34), .ZN(Reg_p_p2_2_n10) );
  AOI22_X1 Reg_p_p2_2_U10 ( .A1(p_2_2__1_), .A2(Reg_p_p2_2_n37), .B1(
        p_2s_2__1_), .B2(Reg_p_p2_2_n36), .ZN(Reg_p_p2_2_n35) );
  INV_X1 Reg_p_p2_2_U9 ( .A(Reg_p_p2_2_n35), .ZN(Reg_p_p2_2_n11) );
  AOI22_X1 Reg_p_p2_2_U8 ( .A1(p_2_2__0_), .A2(Reg_p_p2_2_n37), .B1(p_2s_2__0_), .B2(Reg_p_p2_2_n36), .ZN(Reg_p_p2_2_n38) );
  INV_X1 Reg_p_p2_2_U7 ( .A(Reg_p_p2_2_n38), .ZN(Reg_p_p2_2_n12) );
  AOI22_X1 Reg_p_p2_2_U6 ( .A1(p_2_2__8_), .A2(Reg_p_p2_2_n37), .B1(p_2s_2__8_), .B2(Reg_p_p2_2_n36), .ZN(Reg_p_p2_2_n28) );
  INV_X1 Reg_p_p2_2_U5 ( .A(Reg_p_p2_2_n28), .ZN(Reg_p_p2_2_n4) );
  NOR2_X1 Reg_p_p2_2_U4 ( .A1(Reg_p_p2_2_n1), .A2(Reg_p_p2_2_n36), .ZN(
        Reg_p_p2_2_n37) );
  NOR2_X1 Reg_p_p2_2_U3 ( .A1(VIN_d2), .A2(Reg_p_p2_2_n1), .ZN(Reg_p_p2_2_n36)
         );
  DFF_X1 Reg_p_p2_2_Q_reg_0_ ( .D(Reg_p_p2_2_n12), .CK(CLK), .Q(p_2s_2__0_) );
  DFF_X1 Reg_p_p2_2_Q_reg_1_ ( .D(Reg_p_p2_2_n11), .CK(CLK), .Q(p_2s_2__1_) );
  DFF_X1 Reg_p_p2_2_Q_reg_2_ ( .D(Reg_p_p2_2_n10), .CK(CLK), .Q(p_2s_2__2_) );
  DFF_X1 Reg_p_p2_2_Q_reg_3_ ( .D(Reg_p_p2_2_n9), .CK(CLK), .Q(p_2s_2__3_) );
  DFF_X1 Reg_p_p2_2_Q_reg_4_ ( .D(Reg_p_p2_2_n8), .CK(CLK), .Q(p_2s_2__4_) );
  DFF_X1 Reg_p_p2_2_Q_reg_5_ ( .D(Reg_p_p2_2_n7), .CK(CLK), .Q(p_2s_2__5_) );
  DFF_X1 Reg_p_p2_2_Q_reg_6_ ( .D(Reg_p_p2_2_n6), .CK(CLK), .Q(p_2s_2__6_) );
  DFF_X1 Reg_p_p2_2_Q_reg_7_ ( .D(Reg_p_p2_2_n5), .CK(CLK), .Q(p_2s_2__7_) );
  DFF_X1 Reg_p_p2_2_Q_reg_8_ ( .D(Reg_p_p2_2_n4), .CK(CLK), .Q(p_2s_2__8_) );
  DFF_X1 Reg_p_p2_2_Q_reg_9_ ( .D(Reg_p_p2_2_n3), .CK(CLK), .Q(Reg_p_p2_2_Q_9_) );
  DFF_X1 Reg_p_p2_2_Q_reg_10_ ( .D(Reg_p_p2_2_n2), .CK(CLK), .Q(p_2s_2__10_)
         );
  INV_X1 Reg_p_p3_2_U27 ( .A(n26), .ZN(Reg_p_p3_2_n1) );
  AOI22_X1 Reg_p_p3_2_U26 ( .A1(p_3_2__10_), .A2(Reg_p_p3_2_n37), .B1(
        p_3s_2__10_), .B2(Reg_p_p3_2_n36), .ZN(Reg_p_p3_2_n26) );
  INV_X1 Reg_p_p3_2_U25 ( .A(Reg_p_p3_2_n26), .ZN(Reg_p_p3_2_n2) );
  AOI22_X1 Reg_p_p3_2_U24 ( .A1(p_3_2__9_), .A2(Reg_p_p3_2_n37), .B1(
        Reg_p_p3_2_Q_9_), .B2(Reg_p_p3_2_n36), .ZN(Reg_p_p3_2_n27) );
  INV_X1 Reg_p_p3_2_U23 ( .A(Reg_p_p3_2_n27), .ZN(Reg_p_p3_2_n3) );
  AOI22_X1 Reg_p_p3_2_U22 ( .A1(p_3_2__7_), .A2(Reg_p_p3_2_n37), .B1(
        p_3s_2__7_), .B2(Reg_p_p3_2_n36), .ZN(Reg_p_p3_2_n29) );
  INV_X1 Reg_p_p3_2_U21 ( .A(Reg_p_p3_2_n29), .ZN(Reg_p_p3_2_n5) );
  AOI22_X1 Reg_p_p3_2_U20 ( .A1(p_3_2__6_), .A2(Reg_p_p3_2_n37), .B1(
        p_3s_2__6_), .B2(Reg_p_p3_2_n36), .ZN(Reg_p_p3_2_n30) );
  INV_X1 Reg_p_p3_2_U19 ( .A(Reg_p_p3_2_n30), .ZN(Reg_p_p3_2_n6) );
  AOI22_X1 Reg_p_p3_2_U18 ( .A1(p_3_2__5_), .A2(Reg_p_p3_2_n37), .B1(
        p_3s_2__5_), .B2(Reg_p_p3_2_n36), .ZN(Reg_p_p3_2_n31) );
  INV_X1 Reg_p_p3_2_U17 ( .A(Reg_p_p3_2_n31), .ZN(Reg_p_p3_2_n7) );
  AOI22_X1 Reg_p_p3_2_U16 ( .A1(p_3_2__4_), .A2(Reg_p_p3_2_n37), .B1(
        p_3s_2__4_), .B2(Reg_p_p3_2_n36), .ZN(Reg_p_p3_2_n32) );
  INV_X1 Reg_p_p3_2_U15 ( .A(Reg_p_p3_2_n32), .ZN(Reg_p_p3_2_n8) );
  AOI22_X1 Reg_p_p3_2_U14 ( .A1(p_3_2__3_), .A2(Reg_p_p3_2_n37), .B1(
        p_3s_2__3_), .B2(Reg_p_p3_2_n36), .ZN(Reg_p_p3_2_n33) );
  INV_X1 Reg_p_p3_2_U13 ( .A(Reg_p_p3_2_n33), .ZN(Reg_p_p3_2_n9) );
  AOI22_X1 Reg_p_p3_2_U12 ( .A1(p_3_2__2_), .A2(Reg_p_p3_2_n37), .B1(
        p_3s_2__2_), .B2(Reg_p_p3_2_n36), .ZN(Reg_p_p3_2_n34) );
  INV_X1 Reg_p_p3_2_U11 ( .A(Reg_p_p3_2_n34), .ZN(Reg_p_p3_2_n10) );
  AOI22_X1 Reg_p_p3_2_U10 ( .A1(p_3_2__1_), .A2(Reg_p_p3_2_n37), .B1(
        p_3s_2__1_), .B2(Reg_p_p3_2_n36), .ZN(Reg_p_p3_2_n35) );
  INV_X1 Reg_p_p3_2_U9 ( .A(Reg_p_p3_2_n35), .ZN(Reg_p_p3_2_n11) );
  AOI22_X1 Reg_p_p3_2_U8 ( .A1(p_3_2__0_), .A2(Reg_p_p3_2_n37), .B1(p_3s_2__0_), .B2(Reg_p_p3_2_n36), .ZN(Reg_p_p3_2_n38) );
  INV_X1 Reg_p_p3_2_U7 ( .A(Reg_p_p3_2_n38), .ZN(Reg_p_p3_2_n12) );
  AOI22_X1 Reg_p_p3_2_U6 ( .A1(p_3_2__8_), .A2(Reg_p_p3_2_n37), .B1(p_3s_2__8_), .B2(Reg_p_p3_2_n36), .ZN(Reg_p_p3_2_n28) );
  INV_X1 Reg_p_p3_2_U5 ( .A(Reg_p_p3_2_n28), .ZN(Reg_p_p3_2_n4) );
  NOR2_X1 Reg_p_p3_2_U4 ( .A1(Reg_p_p3_2_n1), .A2(Reg_p_p3_2_n36), .ZN(
        Reg_p_p3_2_n37) );
  NOR2_X1 Reg_p_p3_2_U3 ( .A1(VIN_d2), .A2(Reg_p_p3_2_n1), .ZN(Reg_p_p3_2_n36)
         );
  DFF_X1 Reg_p_p3_2_Q_reg_0_ ( .D(Reg_p_p3_2_n12), .CK(CLK), .Q(p_3s_2__0_) );
  DFF_X1 Reg_p_p3_2_Q_reg_1_ ( .D(Reg_p_p3_2_n11), .CK(CLK), .Q(p_3s_2__1_) );
  DFF_X1 Reg_p_p3_2_Q_reg_2_ ( .D(Reg_p_p3_2_n10), .CK(CLK), .Q(p_3s_2__2_) );
  DFF_X1 Reg_p_p3_2_Q_reg_3_ ( .D(Reg_p_p3_2_n9), .CK(CLK), .Q(p_3s_2__3_) );
  DFF_X1 Reg_p_p3_2_Q_reg_4_ ( .D(Reg_p_p3_2_n8), .CK(CLK), .Q(p_3s_2__4_) );
  DFF_X1 Reg_p_p3_2_Q_reg_5_ ( .D(Reg_p_p3_2_n7), .CK(CLK), .Q(p_3s_2__5_) );
  DFF_X1 Reg_p_p3_2_Q_reg_6_ ( .D(Reg_p_p3_2_n6), .CK(CLK), .Q(p_3s_2__6_) );
  DFF_X1 Reg_p_p3_2_Q_reg_7_ ( .D(Reg_p_p3_2_n5), .CK(CLK), .Q(p_3s_2__7_) );
  DFF_X1 Reg_p_p3_2_Q_reg_8_ ( .D(Reg_p_p3_2_n4), .CK(CLK), .Q(p_3s_2__8_) );
  DFF_X1 Reg_p_p3_2_Q_reg_9_ ( .D(Reg_p_p3_2_n3), .CK(CLK), .Q(Reg_p_p3_2_Q_9_) );
  DFF_X1 Reg_p_p3_2_Q_reg_10_ ( .D(Reg_p_p3_2_n2), .CK(CLK), .Q(p_3s_2__10_)
         );
  INV_X1 Reg_p_p1_3_U27 ( .A(n26), .ZN(Reg_p_p1_3_n1) );
  AOI22_X1 Reg_p_p1_3_U26 ( .A1(p_1_3__10_), .A2(Reg_p_p1_3_n37), .B1(
        p_1p_3__10_), .B2(Reg_p_p1_3_n36), .ZN(Reg_p_p1_3_n26) );
  INV_X1 Reg_p_p1_3_U25 ( .A(Reg_p_p1_3_n26), .ZN(Reg_p_p1_3_n2) );
  AOI22_X1 Reg_p_p1_3_U24 ( .A1(p_1_3__9_), .A2(Reg_p_p1_3_n37), .B1(
        p_1p_3__9_), .B2(Reg_p_p1_3_n36), .ZN(Reg_p_p1_3_n27) );
  INV_X1 Reg_p_p1_3_U23 ( .A(Reg_p_p1_3_n27), .ZN(Reg_p_p1_3_n3) );
  AOI22_X1 Reg_p_p1_3_U22 ( .A1(p_1_3__7_), .A2(Reg_p_p1_3_n37), .B1(
        p_1p_3__7_), .B2(Reg_p_p1_3_n36), .ZN(Reg_p_p1_3_n29) );
  INV_X1 Reg_p_p1_3_U21 ( .A(Reg_p_p1_3_n29), .ZN(Reg_p_p1_3_n5) );
  AOI22_X1 Reg_p_p1_3_U20 ( .A1(p_1_3__6_), .A2(Reg_p_p1_3_n37), .B1(
        p_1p_3__6_), .B2(Reg_p_p1_3_n36), .ZN(Reg_p_p1_3_n30) );
  INV_X1 Reg_p_p1_3_U19 ( .A(Reg_p_p1_3_n30), .ZN(Reg_p_p1_3_n6) );
  AOI22_X1 Reg_p_p1_3_U18 ( .A1(p_1_3__5_), .A2(Reg_p_p1_3_n37), .B1(
        p_1p_3__5_), .B2(Reg_p_p1_3_n36), .ZN(Reg_p_p1_3_n31) );
  INV_X1 Reg_p_p1_3_U17 ( .A(Reg_p_p1_3_n31), .ZN(Reg_p_p1_3_n7) );
  AOI22_X1 Reg_p_p1_3_U16 ( .A1(p_1_3__4_), .A2(Reg_p_p1_3_n37), .B1(
        p_1p_3__4_), .B2(Reg_p_p1_3_n36), .ZN(Reg_p_p1_3_n32) );
  INV_X1 Reg_p_p1_3_U15 ( .A(Reg_p_p1_3_n32), .ZN(Reg_p_p1_3_n8) );
  AOI22_X1 Reg_p_p1_3_U14 ( .A1(p_1_3__3_), .A2(Reg_p_p1_3_n37), .B1(
        p_1p_3__3_), .B2(Reg_p_p1_3_n36), .ZN(Reg_p_p1_3_n33) );
  INV_X1 Reg_p_p1_3_U13 ( .A(Reg_p_p1_3_n33), .ZN(Reg_p_p1_3_n9) );
  AOI22_X1 Reg_p_p1_3_U12 ( .A1(p_1_3__2_), .A2(Reg_p_p1_3_n37), .B1(
        p_1p_3__2_), .B2(Reg_p_p1_3_n36), .ZN(Reg_p_p1_3_n34) );
  INV_X1 Reg_p_p1_3_U11 ( .A(Reg_p_p1_3_n34), .ZN(Reg_p_p1_3_n10) );
  AOI22_X1 Reg_p_p1_3_U10 ( .A1(p_1_3__1_), .A2(Reg_p_p1_3_n37), .B1(
        p_1p_3__1_), .B2(Reg_p_p1_3_n36), .ZN(Reg_p_p1_3_n35) );
  INV_X1 Reg_p_p1_3_U9 ( .A(Reg_p_p1_3_n35), .ZN(Reg_p_p1_3_n11) );
  AOI22_X1 Reg_p_p1_3_U8 ( .A1(p_1_3__0_), .A2(Reg_p_p1_3_n37), .B1(p_1p_3__0_), .B2(Reg_p_p1_3_n36), .ZN(Reg_p_p1_3_n38) );
  INV_X1 Reg_p_p1_3_U7 ( .A(Reg_p_p1_3_n38), .ZN(Reg_p_p1_3_n12) );
  AOI22_X1 Reg_p_p1_3_U6 ( .A1(p_1_3__8_), .A2(Reg_p_p1_3_n37), .B1(p_1p_3__8_), .B2(Reg_p_p1_3_n36), .ZN(Reg_p_p1_3_n28) );
  INV_X1 Reg_p_p1_3_U5 ( .A(Reg_p_p1_3_n28), .ZN(Reg_p_p1_3_n4) );
  NOR2_X1 Reg_p_p1_3_U4 ( .A1(Reg_p_p1_3_n1), .A2(Reg_p_p1_3_n36), .ZN(
        Reg_p_p1_3_n37) );
  NOR2_X1 Reg_p_p1_3_U3 ( .A1(VIN_d2), .A2(Reg_p_p1_3_n1), .ZN(Reg_p_p1_3_n36)
         );
  DFF_X1 Reg_p_p1_3_Q_reg_0_ ( .D(Reg_p_p1_3_n12), .CK(CLK), .Q(p_1p_3__0_) );
  DFF_X1 Reg_p_p1_3_Q_reg_1_ ( .D(Reg_p_p1_3_n11), .CK(CLK), .Q(p_1p_3__1_) );
  DFF_X1 Reg_p_p1_3_Q_reg_2_ ( .D(Reg_p_p1_3_n10), .CK(CLK), .Q(p_1p_3__2_) );
  DFF_X1 Reg_p_p1_3_Q_reg_3_ ( .D(Reg_p_p1_3_n9), .CK(CLK), .Q(p_1p_3__3_) );
  DFF_X1 Reg_p_p1_3_Q_reg_4_ ( .D(Reg_p_p1_3_n8), .CK(CLK), .Q(p_1p_3__4_) );
  DFF_X1 Reg_p_p1_3_Q_reg_5_ ( .D(Reg_p_p1_3_n7), .CK(CLK), .Q(p_1p_3__5_) );
  DFF_X1 Reg_p_p1_3_Q_reg_6_ ( .D(Reg_p_p1_3_n6), .CK(CLK), .Q(p_1p_3__6_) );
  DFF_X1 Reg_p_p1_3_Q_reg_7_ ( .D(Reg_p_p1_3_n5), .CK(CLK), .Q(p_1p_3__7_) );
  DFF_X1 Reg_p_p1_3_Q_reg_8_ ( .D(Reg_p_p1_3_n4), .CK(CLK), .Q(p_1p_3__8_) );
  DFF_X1 Reg_p_p1_3_Q_reg_9_ ( .D(Reg_p_p1_3_n3), .CK(CLK), .Q(p_1p_3__9_) );
  DFF_X1 Reg_p_p1_3_Q_reg_10_ ( .D(Reg_p_p1_3_n2), .CK(CLK), .Q(p_1p_3__10_)
         );
  INV_X1 Reg_p_p2_3_U27 ( .A(n26), .ZN(Reg_p_p2_3_n1) );
  AOI22_X1 Reg_p_p2_3_U26 ( .A1(p_2_3__10_), .A2(Reg_p_p2_3_n37), .B1(
        p_2p_3__10_), .B2(Reg_p_p2_3_n36), .ZN(Reg_p_p2_3_n26) );
  INV_X1 Reg_p_p2_3_U25 ( .A(Reg_p_p2_3_n26), .ZN(Reg_p_p2_3_n2) );
  AOI22_X1 Reg_p_p2_3_U24 ( .A1(p_2_3__9_), .A2(Reg_p_p2_3_n37), .B1(
        p_2p_3__9_), .B2(Reg_p_p2_3_n36), .ZN(Reg_p_p2_3_n27) );
  INV_X1 Reg_p_p2_3_U23 ( .A(Reg_p_p2_3_n27), .ZN(Reg_p_p2_3_n3) );
  AOI22_X1 Reg_p_p2_3_U22 ( .A1(p_2_3__7_), .A2(Reg_p_p2_3_n37), .B1(
        p_2p_3__7_), .B2(Reg_p_p2_3_n36), .ZN(Reg_p_p2_3_n29) );
  INV_X1 Reg_p_p2_3_U21 ( .A(Reg_p_p2_3_n29), .ZN(Reg_p_p2_3_n5) );
  AOI22_X1 Reg_p_p2_3_U20 ( .A1(p_2_3__6_), .A2(Reg_p_p2_3_n37), .B1(
        p_2p_3__6_), .B2(Reg_p_p2_3_n36), .ZN(Reg_p_p2_3_n30) );
  INV_X1 Reg_p_p2_3_U19 ( .A(Reg_p_p2_3_n30), .ZN(Reg_p_p2_3_n6) );
  AOI22_X1 Reg_p_p2_3_U18 ( .A1(p_2_3__5_), .A2(Reg_p_p2_3_n37), .B1(
        p_2p_3__5_), .B2(Reg_p_p2_3_n36), .ZN(Reg_p_p2_3_n31) );
  INV_X1 Reg_p_p2_3_U17 ( .A(Reg_p_p2_3_n31), .ZN(Reg_p_p2_3_n7) );
  AOI22_X1 Reg_p_p2_3_U16 ( .A1(p_2_3__4_), .A2(Reg_p_p2_3_n37), .B1(
        p_2p_3__4_), .B2(Reg_p_p2_3_n36), .ZN(Reg_p_p2_3_n32) );
  INV_X1 Reg_p_p2_3_U15 ( .A(Reg_p_p2_3_n32), .ZN(Reg_p_p2_3_n8) );
  AOI22_X1 Reg_p_p2_3_U14 ( .A1(p_2_3__3_), .A2(Reg_p_p2_3_n37), .B1(
        p_2p_3__3_), .B2(Reg_p_p2_3_n36), .ZN(Reg_p_p2_3_n33) );
  INV_X1 Reg_p_p2_3_U13 ( .A(Reg_p_p2_3_n33), .ZN(Reg_p_p2_3_n9) );
  AOI22_X1 Reg_p_p2_3_U12 ( .A1(p_2_3__2_), .A2(Reg_p_p2_3_n37), .B1(
        p_2p_3__2_), .B2(Reg_p_p2_3_n36), .ZN(Reg_p_p2_3_n34) );
  INV_X1 Reg_p_p2_3_U11 ( .A(Reg_p_p2_3_n34), .ZN(Reg_p_p2_3_n10) );
  AOI22_X1 Reg_p_p2_3_U10 ( .A1(p_2_3__1_), .A2(Reg_p_p2_3_n37), .B1(
        p_2p_3__1_), .B2(Reg_p_p2_3_n36), .ZN(Reg_p_p2_3_n35) );
  INV_X1 Reg_p_p2_3_U9 ( .A(Reg_p_p2_3_n35), .ZN(Reg_p_p2_3_n11) );
  AOI22_X1 Reg_p_p2_3_U8 ( .A1(p_2_3__0_), .A2(Reg_p_p2_3_n37), .B1(p_2p_3__0_), .B2(Reg_p_p2_3_n36), .ZN(Reg_p_p2_3_n38) );
  INV_X1 Reg_p_p2_3_U7 ( .A(Reg_p_p2_3_n38), .ZN(Reg_p_p2_3_n12) );
  AOI22_X1 Reg_p_p2_3_U6 ( .A1(p_2_3__8_), .A2(Reg_p_p2_3_n37), .B1(p_2p_3__8_), .B2(Reg_p_p2_3_n36), .ZN(Reg_p_p2_3_n28) );
  INV_X1 Reg_p_p2_3_U5 ( .A(Reg_p_p2_3_n28), .ZN(Reg_p_p2_3_n4) );
  NOR2_X1 Reg_p_p2_3_U4 ( .A1(Reg_p_p2_3_n1), .A2(Reg_p_p2_3_n36), .ZN(
        Reg_p_p2_3_n37) );
  NOR2_X1 Reg_p_p2_3_U3 ( .A1(VIN_d2), .A2(Reg_p_p2_3_n1), .ZN(Reg_p_p2_3_n36)
         );
  DFF_X1 Reg_p_p2_3_Q_reg_0_ ( .D(Reg_p_p2_3_n12), .CK(CLK), .Q(p_2p_3__0_) );
  DFF_X1 Reg_p_p2_3_Q_reg_1_ ( .D(Reg_p_p2_3_n11), .CK(CLK), .Q(p_2p_3__1_) );
  DFF_X1 Reg_p_p2_3_Q_reg_2_ ( .D(Reg_p_p2_3_n10), .CK(CLK), .Q(p_2p_3__2_) );
  DFF_X1 Reg_p_p2_3_Q_reg_3_ ( .D(Reg_p_p2_3_n9), .CK(CLK), .Q(p_2p_3__3_) );
  DFF_X1 Reg_p_p2_3_Q_reg_4_ ( .D(Reg_p_p2_3_n8), .CK(CLK), .Q(p_2p_3__4_) );
  DFF_X1 Reg_p_p2_3_Q_reg_5_ ( .D(Reg_p_p2_3_n7), .CK(CLK), .Q(p_2p_3__5_) );
  DFF_X1 Reg_p_p2_3_Q_reg_6_ ( .D(Reg_p_p2_3_n6), .CK(CLK), .Q(p_2p_3__6_) );
  DFF_X1 Reg_p_p2_3_Q_reg_7_ ( .D(Reg_p_p2_3_n5), .CK(CLK), .Q(p_2p_3__7_) );
  DFF_X1 Reg_p_p2_3_Q_reg_8_ ( .D(Reg_p_p2_3_n4), .CK(CLK), .Q(p_2p_3__8_) );
  DFF_X1 Reg_p_p2_3_Q_reg_9_ ( .D(Reg_p_p2_3_n3), .CK(CLK), .Q(p_2p_3__9_) );
  DFF_X1 Reg_p_p2_3_Q_reg_10_ ( .D(Reg_p_p2_3_n2), .CK(CLK), .Q(p_2p_3__10_)
         );
  INV_X1 Reg_p_p3_3_U27 ( .A(n26), .ZN(Reg_p_p3_3_n1) );
  AOI22_X1 Reg_p_p3_3_U26 ( .A1(p_3_3__10_), .A2(Reg_p_p3_3_n37), .B1(
        p_3p_3__10_), .B2(Reg_p_p3_3_n36), .ZN(Reg_p_p3_3_n26) );
  INV_X1 Reg_p_p3_3_U25 ( .A(Reg_p_p3_3_n26), .ZN(Reg_p_p3_3_n2) );
  AOI22_X1 Reg_p_p3_3_U24 ( .A1(p_3_3__9_), .A2(Reg_p_p3_3_n37), .B1(
        p_3p_3__9_), .B2(Reg_p_p3_3_n36), .ZN(Reg_p_p3_3_n27) );
  INV_X1 Reg_p_p3_3_U23 ( .A(Reg_p_p3_3_n27), .ZN(Reg_p_p3_3_n3) );
  AOI22_X1 Reg_p_p3_3_U22 ( .A1(p_3_3__7_), .A2(Reg_p_p3_3_n37), .B1(
        p_3p_3__7_), .B2(Reg_p_p3_3_n36), .ZN(Reg_p_p3_3_n29) );
  INV_X1 Reg_p_p3_3_U21 ( .A(Reg_p_p3_3_n29), .ZN(Reg_p_p3_3_n5) );
  AOI22_X1 Reg_p_p3_3_U20 ( .A1(p_3_3__6_), .A2(Reg_p_p3_3_n37), .B1(
        p_3p_3__6_), .B2(Reg_p_p3_3_n36), .ZN(Reg_p_p3_3_n30) );
  INV_X1 Reg_p_p3_3_U19 ( .A(Reg_p_p3_3_n30), .ZN(Reg_p_p3_3_n6) );
  AOI22_X1 Reg_p_p3_3_U18 ( .A1(p_3_3__5_), .A2(Reg_p_p3_3_n37), .B1(
        p_3p_3__5_), .B2(Reg_p_p3_3_n36), .ZN(Reg_p_p3_3_n31) );
  INV_X1 Reg_p_p3_3_U17 ( .A(Reg_p_p3_3_n31), .ZN(Reg_p_p3_3_n7) );
  AOI22_X1 Reg_p_p3_3_U16 ( .A1(p_3_3__4_), .A2(Reg_p_p3_3_n37), .B1(
        p_3p_3__4_), .B2(Reg_p_p3_3_n36), .ZN(Reg_p_p3_3_n32) );
  INV_X1 Reg_p_p3_3_U15 ( .A(Reg_p_p3_3_n32), .ZN(Reg_p_p3_3_n8) );
  AOI22_X1 Reg_p_p3_3_U14 ( .A1(p_3_3__3_), .A2(Reg_p_p3_3_n37), .B1(
        p_3p_3__3_), .B2(Reg_p_p3_3_n36), .ZN(Reg_p_p3_3_n33) );
  INV_X1 Reg_p_p3_3_U13 ( .A(Reg_p_p3_3_n33), .ZN(Reg_p_p3_3_n9) );
  AOI22_X1 Reg_p_p3_3_U12 ( .A1(p_3_3__2_), .A2(Reg_p_p3_3_n37), .B1(
        p_3p_3__2_), .B2(Reg_p_p3_3_n36), .ZN(Reg_p_p3_3_n34) );
  INV_X1 Reg_p_p3_3_U11 ( .A(Reg_p_p3_3_n34), .ZN(Reg_p_p3_3_n10) );
  AOI22_X1 Reg_p_p3_3_U10 ( .A1(p_3_3__1_), .A2(Reg_p_p3_3_n37), .B1(
        p_3p_3__1_), .B2(Reg_p_p3_3_n36), .ZN(Reg_p_p3_3_n35) );
  INV_X1 Reg_p_p3_3_U9 ( .A(Reg_p_p3_3_n35), .ZN(Reg_p_p3_3_n11) );
  AOI22_X1 Reg_p_p3_3_U8 ( .A1(p_3_3__0_), .A2(Reg_p_p3_3_n37), .B1(p_3p_3__0_), .B2(Reg_p_p3_3_n36), .ZN(Reg_p_p3_3_n38) );
  INV_X1 Reg_p_p3_3_U7 ( .A(Reg_p_p3_3_n38), .ZN(Reg_p_p3_3_n12) );
  AOI22_X1 Reg_p_p3_3_U6 ( .A1(p_3_3__8_), .A2(Reg_p_p3_3_n37), .B1(p_3p_3__8_), .B2(Reg_p_p3_3_n36), .ZN(Reg_p_p3_3_n28) );
  INV_X1 Reg_p_p3_3_U5 ( .A(Reg_p_p3_3_n28), .ZN(Reg_p_p3_3_n4) );
  NOR2_X1 Reg_p_p3_3_U4 ( .A1(Reg_p_p3_3_n1), .A2(Reg_p_p3_3_n36), .ZN(
        Reg_p_p3_3_n37) );
  NOR2_X1 Reg_p_p3_3_U3 ( .A1(VIN_d2), .A2(Reg_p_p3_3_n1), .ZN(Reg_p_p3_3_n36)
         );
  DFF_X1 Reg_p_p3_3_Q_reg_0_ ( .D(Reg_p_p3_3_n12), .CK(CLK), .Q(p_3p_3__0_) );
  DFF_X1 Reg_p_p3_3_Q_reg_1_ ( .D(Reg_p_p3_3_n11), .CK(CLK), .Q(p_3p_3__1_) );
  DFF_X1 Reg_p_p3_3_Q_reg_2_ ( .D(Reg_p_p3_3_n10), .CK(CLK), .Q(p_3p_3__2_) );
  DFF_X1 Reg_p_p3_3_Q_reg_3_ ( .D(Reg_p_p3_3_n9), .CK(CLK), .Q(p_3p_3__3_) );
  DFF_X1 Reg_p_p3_3_Q_reg_4_ ( .D(Reg_p_p3_3_n8), .CK(CLK), .Q(p_3p_3__4_) );
  DFF_X1 Reg_p_p3_3_Q_reg_5_ ( .D(Reg_p_p3_3_n7), .CK(CLK), .Q(p_3p_3__5_) );
  DFF_X1 Reg_p_p3_3_Q_reg_6_ ( .D(Reg_p_p3_3_n6), .CK(CLK), .Q(p_3p_3__6_) );
  DFF_X1 Reg_p_p3_3_Q_reg_7_ ( .D(Reg_p_p3_3_n5), .CK(CLK), .Q(p_3p_3__7_) );
  DFF_X1 Reg_p_p3_3_Q_reg_8_ ( .D(Reg_p_p3_3_n4), .CK(CLK), .Q(p_3p_3__8_) );
  DFF_X1 Reg_p_p3_3_Q_reg_9_ ( .D(Reg_p_p3_3_n3), .CK(CLK), .Q(p_3p_3__9_) );
  DFF_X1 Reg_p_p3_3_Q_reg_10_ ( .D(Reg_p_p3_3_n2), .CK(CLK), .Q(p_3p_3__10_)
         );
  INV_X1 Reg_p_p1_4_U27 ( .A(n26), .ZN(Reg_p_p1_4_n1) );
  AOI22_X1 Reg_p_p1_4_U26 ( .A1(1'b0), .A2(Reg_p_p1_4_n37), .B1(p_1p_4__10_), 
        .B2(Reg_p_p1_4_n36), .ZN(Reg_p_p1_4_n26) );
  INV_X1 Reg_p_p1_4_U25 ( .A(Reg_p_p1_4_n26), .ZN(Reg_p_p1_4_n2) );
  AOI22_X1 Reg_p_p1_4_U24 ( .A1(p_1_4__7_), .A2(Reg_p_p1_4_n37), .B1(
        p_1p_4__7_), .B2(Reg_p_p1_4_n36), .ZN(Reg_p_p1_4_n29) );
  INV_X1 Reg_p_p1_4_U23 ( .A(Reg_p_p1_4_n29), .ZN(Reg_p_p1_4_n5) );
  AOI22_X1 Reg_p_p1_4_U22 ( .A1(p_1_4__6_), .A2(Reg_p_p1_4_n37), .B1(
        p_1p_4__6_), .B2(Reg_p_p1_4_n36), .ZN(Reg_p_p1_4_n30) );
  INV_X1 Reg_p_p1_4_U21 ( .A(Reg_p_p1_4_n30), .ZN(Reg_p_p1_4_n6) );
  AOI22_X1 Reg_p_p1_4_U20 ( .A1(p_1_4__5_), .A2(Reg_p_p1_4_n37), .B1(
        p_1p_4__5_), .B2(Reg_p_p1_4_n36), .ZN(Reg_p_p1_4_n31) );
  INV_X1 Reg_p_p1_4_U19 ( .A(Reg_p_p1_4_n31), .ZN(Reg_p_p1_4_n7) );
  AOI22_X1 Reg_p_p1_4_U18 ( .A1(p_1_4__4_), .A2(Reg_p_p1_4_n37), .B1(
        p_1p_4__4_), .B2(Reg_p_p1_4_n36), .ZN(Reg_p_p1_4_n32) );
  INV_X1 Reg_p_p1_4_U17 ( .A(Reg_p_p1_4_n32), .ZN(Reg_p_p1_4_n8) );
  AOI22_X1 Reg_p_p1_4_U16 ( .A1(p_1_4__3_), .A2(Reg_p_p1_4_n37), .B1(
        p_1p_4__3_), .B2(Reg_p_p1_4_n36), .ZN(Reg_p_p1_4_n33) );
  INV_X1 Reg_p_p1_4_U15 ( .A(Reg_p_p1_4_n33), .ZN(Reg_p_p1_4_n9) );
  AOI22_X1 Reg_p_p1_4_U14 ( .A1(p_1_4__2_), .A2(Reg_p_p1_4_n37), .B1(
        p_1p_4__2_), .B2(Reg_p_p1_4_n36), .ZN(Reg_p_p1_4_n34) );
  INV_X1 Reg_p_p1_4_U13 ( .A(Reg_p_p1_4_n34), .ZN(Reg_p_p1_4_n10) );
  AOI22_X1 Reg_p_p1_4_U12 ( .A1(p_1_4__1_), .A2(Reg_p_p1_4_n37), .B1(
        p_1p_4__1_), .B2(Reg_p_p1_4_n36), .ZN(Reg_p_p1_4_n35) );
  INV_X1 Reg_p_p1_4_U11 ( .A(Reg_p_p1_4_n35), .ZN(Reg_p_p1_4_n11) );
  AOI22_X1 Reg_p_p1_4_U10 ( .A1(p_1_4__0_), .A2(Reg_p_p1_4_n37), .B1(
        p_1p_4__0_), .B2(Reg_p_p1_4_n36), .ZN(Reg_p_p1_4_n38) );
  INV_X1 Reg_p_p1_4_U9 ( .A(Reg_p_p1_4_n38), .ZN(Reg_p_p1_4_n12) );
  AOI22_X1 Reg_p_p1_4_U8 ( .A1(p_1_4__9_), .A2(Reg_p_p1_4_n37), .B1(p_1p_4__9_), .B2(Reg_p_p1_4_n36), .ZN(Reg_p_p1_4_n27) );
  INV_X1 Reg_p_p1_4_U7 ( .A(Reg_p_p1_4_n27), .ZN(Reg_p_p1_4_n3) );
  AOI22_X1 Reg_p_p1_4_U6 ( .A1(p_1_4__8_), .A2(Reg_p_p1_4_n37), .B1(p_1p_4__8_), .B2(Reg_p_p1_4_n36), .ZN(Reg_p_p1_4_n28) );
  INV_X1 Reg_p_p1_4_U5 ( .A(Reg_p_p1_4_n28), .ZN(Reg_p_p1_4_n4) );
  NOR2_X1 Reg_p_p1_4_U4 ( .A1(Reg_p_p1_4_n1), .A2(Reg_p_p1_4_n36), .ZN(
        Reg_p_p1_4_n37) );
  NOR2_X1 Reg_p_p1_4_U3 ( .A1(VIN_d2), .A2(Reg_p_p1_4_n1), .ZN(Reg_p_p1_4_n36)
         );
  DFF_X1 Reg_p_p1_4_Q_reg_0_ ( .D(Reg_p_p1_4_n12), .CK(CLK), .Q(p_1p_4__0_) );
  DFF_X1 Reg_p_p1_4_Q_reg_1_ ( .D(Reg_p_p1_4_n11), .CK(CLK), .Q(p_1p_4__1_) );
  DFF_X1 Reg_p_p1_4_Q_reg_2_ ( .D(Reg_p_p1_4_n10), .CK(CLK), .Q(p_1p_4__2_) );
  DFF_X1 Reg_p_p1_4_Q_reg_3_ ( .D(Reg_p_p1_4_n9), .CK(CLK), .Q(p_1p_4__3_) );
  DFF_X1 Reg_p_p1_4_Q_reg_4_ ( .D(Reg_p_p1_4_n8), .CK(CLK), .Q(p_1p_4__4_) );
  DFF_X1 Reg_p_p1_4_Q_reg_5_ ( .D(Reg_p_p1_4_n7), .CK(CLK), .Q(p_1p_4__5_) );
  DFF_X1 Reg_p_p1_4_Q_reg_6_ ( .D(Reg_p_p1_4_n6), .CK(CLK), .Q(p_1p_4__6_) );
  DFF_X1 Reg_p_p1_4_Q_reg_7_ ( .D(Reg_p_p1_4_n5), .CK(CLK), .Q(p_1p_4__7_) );
  DFF_X1 Reg_p_p1_4_Q_reg_8_ ( .D(Reg_p_p1_4_n4), .CK(CLK), .Q(p_1p_4__8_) );
  DFF_X1 Reg_p_p1_4_Q_reg_9_ ( .D(Reg_p_p1_4_n3), .CK(CLK), .Q(p_1p_4__9_) );
  DFF_X1 Reg_p_p1_4_Q_reg_10_ ( .D(Reg_p_p1_4_n2), .CK(CLK), .Q(p_1p_4__10_)
         );
  INV_X1 Reg_p_p2_4_U27 ( .A(n26), .ZN(Reg_p_p2_4_n1) );
  AOI22_X1 Reg_p_p2_4_U26 ( .A1(1'b0), .A2(Reg_p_p2_4_n37), .B1(p_2p_4__10_), 
        .B2(Reg_p_p2_4_n36), .ZN(Reg_p_p2_4_n26) );
  INV_X1 Reg_p_p2_4_U25 ( .A(Reg_p_p2_4_n26), .ZN(Reg_p_p2_4_n2) );
  AOI22_X1 Reg_p_p2_4_U24 ( .A1(p_2_4__7_), .A2(Reg_p_p2_4_n37), .B1(
        p_2p_4__7_), .B2(Reg_p_p2_4_n36), .ZN(Reg_p_p2_4_n29) );
  INV_X1 Reg_p_p2_4_U23 ( .A(Reg_p_p2_4_n29), .ZN(Reg_p_p2_4_n5) );
  AOI22_X1 Reg_p_p2_4_U22 ( .A1(p_2_4__6_), .A2(Reg_p_p2_4_n37), .B1(
        p_2p_4__6_), .B2(Reg_p_p2_4_n36), .ZN(Reg_p_p2_4_n30) );
  INV_X1 Reg_p_p2_4_U21 ( .A(Reg_p_p2_4_n30), .ZN(Reg_p_p2_4_n6) );
  AOI22_X1 Reg_p_p2_4_U20 ( .A1(p_2_4__5_), .A2(Reg_p_p2_4_n37), .B1(
        p_2p_4__5_), .B2(Reg_p_p2_4_n36), .ZN(Reg_p_p2_4_n31) );
  INV_X1 Reg_p_p2_4_U19 ( .A(Reg_p_p2_4_n31), .ZN(Reg_p_p2_4_n7) );
  AOI22_X1 Reg_p_p2_4_U18 ( .A1(p_2_4__4_), .A2(Reg_p_p2_4_n37), .B1(
        p_2p_4__4_), .B2(Reg_p_p2_4_n36), .ZN(Reg_p_p2_4_n32) );
  INV_X1 Reg_p_p2_4_U17 ( .A(Reg_p_p2_4_n32), .ZN(Reg_p_p2_4_n8) );
  AOI22_X1 Reg_p_p2_4_U16 ( .A1(p_2_4__3_), .A2(Reg_p_p2_4_n37), .B1(
        p_2p_4__3_), .B2(Reg_p_p2_4_n36), .ZN(Reg_p_p2_4_n33) );
  INV_X1 Reg_p_p2_4_U15 ( .A(Reg_p_p2_4_n33), .ZN(Reg_p_p2_4_n9) );
  AOI22_X1 Reg_p_p2_4_U14 ( .A1(p_2_4__2_), .A2(Reg_p_p2_4_n37), .B1(
        p_2p_4__2_), .B2(Reg_p_p2_4_n36), .ZN(Reg_p_p2_4_n34) );
  INV_X1 Reg_p_p2_4_U13 ( .A(Reg_p_p2_4_n34), .ZN(Reg_p_p2_4_n10) );
  AOI22_X1 Reg_p_p2_4_U12 ( .A1(p_2_4__1_), .A2(Reg_p_p2_4_n37), .B1(
        p_2p_4__1_), .B2(Reg_p_p2_4_n36), .ZN(Reg_p_p2_4_n35) );
  INV_X1 Reg_p_p2_4_U11 ( .A(Reg_p_p2_4_n35), .ZN(Reg_p_p2_4_n11) );
  AOI22_X1 Reg_p_p2_4_U10 ( .A1(p_2_4__0_), .A2(Reg_p_p2_4_n37), .B1(
        p_2p_4__0_), .B2(Reg_p_p2_4_n36), .ZN(Reg_p_p2_4_n38) );
  INV_X1 Reg_p_p2_4_U9 ( .A(Reg_p_p2_4_n38), .ZN(Reg_p_p2_4_n12) );
  AOI22_X1 Reg_p_p2_4_U8 ( .A1(p_2_4__9_), .A2(Reg_p_p2_4_n37), .B1(p_2p_4__9_), .B2(Reg_p_p2_4_n36), .ZN(Reg_p_p2_4_n27) );
  INV_X1 Reg_p_p2_4_U7 ( .A(Reg_p_p2_4_n27), .ZN(Reg_p_p2_4_n3) );
  AOI22_X1 Reg_p_p2_4_U6 ( .A1(p_2_4__8_), .A2(Reg_p_p2_4_n37), .B1(p_2p_4__8_), .B2(Reg_p_p2_4_n36), .ZN(Reg_p_p2_4_n28) );
  INV_X1 Reg_p_p2_4_U5 ( .A(Reg_p_p2_4_n28), .ZN(Reg_p_p2_4_n4) );
  NOR2_X1 Reg_p_p2_4_U4 ( .A1(Reg_p_p2_4_n1), .A2(Reg_p_p2_4_n36), .ZN(
        Reg_p_p2_4_n37) );
  NOR2_X1 Reg_p_p2_4_U3 ( .A1(VIN_d2), .A2(Reg_p_p2_4_n1), .ZN(Reg_p_p2_4_n36)
         );
  DFF_X1 Reg_p_p2_4_Q_reg_0_ ( .D(Reg_p_p2_4_n12), .CK(CLK), .Q(p_2p_4__0_) );
  DFF_X1 Reg_p_p2_4_Q_reg_1_ ( .D(Reg_p_p2_4_n11), .CK(CLK), .Q(p_2p_4__1_) );
  DFF_X1 Reg_p_p2_4_Q_reg_2_ ( .D(Reg_p_p2_4_n10), .CK(CLK), .Q(p_2p_4__2_) );
  DFF_X1 Reg_p_p2_4_Q_reg_3_ ( .D(Reg_p_p2_4_n9), .CK(CLK), .Q(p_2p_4__3_) );
  DFF_X1 Reg_p_p2_4_Q_reg_4_ ( .D(Reg_p_p2_4_n8), .CK(CLK), .Q(p_2p_4__4_) );
  DFF_X1 Reg_p_p2_4_Q_reg_5_ ( .D(Reg_p_p2_4_n7), .CK(CLK), .Q(p_2p_4__5_) );
  DFF_X1 Reg_p_p2_4_Q_reg_6_ ( .D(Reg_p_p2_4_n6), .CK(CLK), .Q(p_2p_4__6_) );
  DFF_X1 Reg_p_p2_4_Q_reg_7_ ( .D(Reg_p_p2_4_n5), .CK(CLK), .Q(p_2p_4__7_) );
  DFF_X1 Reg_p_p2_4_Q_reg_8_ ( .D(Reg_p_p2_4_n4), .CK(CLK), .Q(p_2p_4__8_) );
  DFF_X1 Reg_p_p2_4_Q_reg_9_ ( .D(Reg_p_p2_4_n3), .CK(CLK), .Q(p_2p_4__9_) );
  DFF_X1 Reg_p_p2_4_Q_reg_10_ ( .D(Reg_p_p2_4_n2), .CK(CLK), .Q(p_2p_4__10_)
         );
  INV_X1 Reg_p_p3_4_U27 ( .A(n26), .ZN(Reg_p_p3_4_n1) );
  AOI22_X1 Reg_p_p3_4_U26 ( .A1(1'b0), .A2(Reg_p_p3_4_n37), .B1(p_3p_4__10_), 
        .B2(Reg_p_p3_4_n36), .ZN(Reg_p_p3_4_n26) );
  INV_X1 Reg_p_p3_4_U25 ( .A(Reg_p_p3_4_n26), .ZN(Reg_p_p3_4_n2) );
  AOI22_X1 Reg_p_p3_4_U24 ( .A1(p_3_4__7_), .A2(Reg_p_p3_4_n37), .B1(
        p_3p_4__7_), .B2(Reg_p_p3_4_n36), .ZN(Reg_p_p3_4_n29) );
  INV_X1 Reg_p_p3_4_U23 ( .A(Reg_p_p3_4_n29), .ZN(Reg_p_p3_4_n5) );
  AOI22_X1 Reg_p_p3_4_U22 ( .A1(p_3_4__6_), .A2(Reg_p_p3_4_n37), .B1(
        p_3p_4__6_), .B2(Reg_p_p3_4_n36), .ZN(Reg_p_p3_4_n30) );
  INV_X1 Reg_p_p3_4_U21 ( .A(Reg_p_p3_4_n30), .ZN(Reg_p_p3_4_n6) );
  AOI22_X1 Reg_p_p3_4_U20 ( .A1(p_3_4__5_), .A2(Reg_p_p3_4_n37), .B1(
        p_3p_4__5_), .B2(Reg_p_p3_4_n36), .ZN(Reg_p_p3_4_n31) );
  INV_X1 Reg_p_p3_4_U19 ( .A(Reg_p_p3_4_n31), .ZN(Reg_p_p3_4_n7) );
  AOI22_X1 Reg_p_p3_4_U18 ( .A1(p_3_4__4_), .A2(Reg_p_p3_4_n37), .B1(
        p_3p_4__4_), .B2(Reg_p_p3_4_n36), .ZN(Reg_p_p3_4_n32) );
  INV_X1 Reg_p_p3_4_U17 ( .A(Reg_p_p3_4_n32), .ZN(Reg_p_p3_4_n8) );
  AOI22_X1 Reg_p_p3_4_U16 ( .A1(p_3_4__3_), .A2(Reg_p_p3_4_n37), .B1(
        p_3p_4__3_), .B2(Reg_p_p3_4_n36), .ZN(Reg_p_p3_4_n33) );
  INV_X1 Reg_p_p3_4_U15 ( .A(Reg_p_p3_4_n33), .ZN(Reg_p_p3_4_n9) );
  AOI22_X1 Reg_p_p3_4_U14 ( .A1(p_3_4__2_), .A2(Reg_p_p3_4_n37), .B1(
        p_3p_4__2_), .B2(Reg_p_p3_4_n36), .ZN(Reg_p_p3_4_n34) );
  INV_X1 Reg_p_p3_4_U13 ( .A(Reg_p_p3_4_n34), .ZN(Reg_p_p3_4_n10) );
  AOI22_X1 Reg_p_p3_4_U12 ( .A1(p_3_4__1_), .A2(Reg_p_p3_4_n37), .B1(
        p_3p_4__1_), .B2(Reg_p_p3_4_n36), .ZN(Reg_p_p3_4_n35) );
  INV_X1 Reg_p_p3_4_U11 ( .A(Reg_p_p3_4_n35), .ZN(Reg_p_p3_4_n11) );
  AOI22_X1 Reg_p_p3_4_U10 ( .A1(p_3_4__0_), .A2(Reg_p_p3_4_n37), .B1(
        p_3p_4__0_), .B2(Reg_p_p3_4_n36), .ZN(Reg_p_p3_4_n38) );
  INV_X1 Reg_p_p3_4_U9 ( .A(Reg_p_p3_4_n38), .ZN(Reg_p_p3_4_n12) );
  AOI22_X1 Reg_p_p3_4_U8 ( .A1(p_3_4__9_), .A2(Reg_p_p3_4_n37), .B1(p_3p_4__9_), .B2(Reg_p_p3_4_n36), .ZN(Reg_p_p3_4_n27) );
  INV_X1 Reg_p_p3_4_U7 ( .A(Reg_p_p3_4_n27), .ZN(Reg_p_p3_4_n3) );
  AOI22_X1 Reg_p_p3_4_U6 ( .A1(p_3_4__8_), .A2(Reg_p_p3_4_n37), .B1(p_3p_4__8_), .B2(Reg_p_p3_4_n36), .ZN(Reg_p_p3_4_n28) );
  INV_X1 Reg_p_p3_4_U5 ( .A(Reg_p_p3_4_n28), .ZN(Reg_p_p3_4_n4) );
  NOR2_X1 Reg_p_p3_4_U4 ( .A1(Reg_p_p3_4_n1), .A2(Reg_p_p3_4_n36), .ZN(
        Reg_p_p3_4_n37) );
  NOR2_X1 Reg_p_p3_4_U3 ( .A1(VIN_d2), .A2(Reg_p_p3_4_n1), .ZN(Reg_p_p3_4_n36)
         );
  DFF_X1 Reg_p_p3_4_Q_reg_0_ ( .D(Reg_p_p3_4_n12), .CK(CLK), .Q(p_3p_4__0_) );
  DFF_X1 Reg_p_p3_4_Q_reg_1_ ( .D(Reg_p_p3_4_n11), .CK(CLK), .Q(p_3p_4__1_) );
  DFF_X1 Reg_p_p3_4_Q_reg_2_ ( .D(Reg_p_p3_4_n10), .CK(CLK), .Q(p_3p_4__2_) );
  DFF_X1 Reg_p_p3_4_Q_reg_3_ ( .D(Reg_p_p3_4_n9), .CK(CLK), .Q(p_3p_4__3_) );
  DFF_X1 Reg_p_p3_4_Q_reg_4_ ( .D(Reg_p_p3_4_n8), .CK(CLK), .Q(p_3p_4__4_) );
  DFF_X1 Reg_p_p3_4_Q_reg_5_ ( .D(Reg_p_p3_4_n7), .CK(CLK), .Q(p_3p_4__5_) );
  DFF_X1 Reg_p_p3_4_Q_reg_6_ ( .D(Reg_p_p3_4_n6), .CK(CLK), .Q(p_3p_4__6_) );
  DFF_X1 Reg_p_p3_4_Q_reg_7_ ( .D(Reg_p_p3_4_n5), .CK(CLK), .Q(p_3p_4__7_) );
  DFF_X1 Reg_p_p3_4_Q_reg_8_ ( .D(Reg_p_p3_4_n4), .CK(CLK), .Q(p_3p_4__8_) );
  DFF_X1 Reg_p_p3_4_Q_reg_9_ ( .D(Reg_p_p3_4_n3), .CK(CLK), .Q(p_3p_4__9_) );
  DFF_X1 Reg_p_p3_4_Q_reg_10_ ( .D(Reg_p_p3_4_n2), .CK(CLK), .Q(p_3p_4__10_)
         );
  INV_X1 Reg_p_p3_3_0_U27 ( .A(n26), .ZN(Reg_p_p3_3_0_n1) );
  AOI22_X1 Reg_p_p3_3_0_U26 ( .A1(p_1p_3__10_), .A2(Reg_p_p3_3_0_n37), .B1(
        Reg_p_p3_3_0_Q_10_), .B2(Reg_p_p3_3_0_n36), .ZN(Reg_p_p3_3_0_n26) );
  INV_X1 Reg_p_p3_3_0_U25 ( .A(Reg_p_p3_3_0_n26), .ZN(Reg_p_p3_3_0_n2) );
  AOI22_X1 Reg_p_p3_3_0_U24 ( .A1(p_1p_3__9_), .A2(Reg_p_p3_3_0_n37), .B1(
        Reg_p_p3_3_0_Q_9_), .B2(Reg_p_p3_3_0_n36), .ZN(Reg_p_p3_3_0_n27) );
  INV_X1 Reg_p_p3_3_0_U23 ( .A(Reg_p_p3_3_0_n27), .ZN(Reg_p_p3_3_0_n3) );
  AOI22_X1 Reg_p_p3_3_0_U22 ( .A1(p_1p_3__8_), .A2(Reg_p_p3_3_0_n37), .B1(
        p_1s_3__8_), .B2(Reg_p_p3_3_0_n36), .ZN(Reg_p_p3_3_0_n28) );
  INV_X1 Reg_p_p3_3_0_U21 ( .A(Reg_p_p3_3_0_n28), .ZN(Reg_p_p3_3_0_n4) );
  AOI22_X1 Reg_p_p3_3_0_U20 ( .A1(p_1p_3__7_), .A2(Reg_p_p3_3_0_n37), .B1(
        p_1s_3__7_), .B2(Reg_p_p3_3_0_n36), .ZN(Reg_p_p3_3_0_n29) );
  INV_X1 Reg_p_p3_3_0_U19 ( .A(Reg_p_p3_3_0_n29), .ZN(Reg_p_p3_3_0_n5) );
  AOI22_X1 Reg_p_p3_3_0_U18 ( .A1(p_1p_3__6_), .A2(Reg_p_p3_3_0_n37), .B1(
        p_1s_3__6_), .B2(Reg_p_p3_3_0_n36), .ZN(Reg_p_p3_3_0_n30) );
  INV_X1 Reg_p_p3_3_0_U17 ( .A(Reg_p_p3_3_0_n30), .ZN(Reg_p_p3_3_0_n6) );
  AOI22_X1 Reg_p_p3_3_0_U16 ( .A1(p_1p_3__5_), .A2(Reg_p_p3_3_0_n37), .B1(
        p_1s_3__5_), .B2(Reg_p_p3_3_0_n36), .ZN(Reg_p_p3_3_0_n31) );
  INV_X1 Reg_p_p3_3_0_U15 ( .A(Reg_p_p3_3_0_n31), .ZN(Reg_p_p3_3_0_n7) );
  AOI22_X1 Reg_p_p3_3_0_U14 ( .A1(p_1p_3__4_), .A2(Reg_p_p3_3_0_n37), .B1(
        p_1s_3__4_), .B2(Reg_p_p3_3_0_n36), .ZN(Reg_p_p3_3_0_n32) );
  INV_X1 Reg_p_p3_3_0_U13 ( .A(Reg_p_p3_3_0_n32), .ZN(Reg_p_p3_3_0_n8) );
  AOI22_X1 Reg_p_p3_3_0_U12 ( .A1(p_1p_3__3_), .A2(Reg_p_p3_3_0_n37), .B1(
        p_1s_3__3_), .B2(Reg_p_p3_3_0_n36), .ZN(Reg_p_p3_3_0_n33) );
  INV_X1 Reg_p_p3_3_0_U11 ( .A(Reg_p_p3_3_0_n33), .ZN(Reg_p_p3_3_0_n9) );
  AOI22_X1 Reg_p_p3_3_0_U10 ( .A1(p_1p_3__2_), .A2(Reg_p_p3_3_0_n37), .B1(
        p_1s_3__2_), .B2(Reg_p_p3_3_0_n36), .ZN(Reg_p_p3_3_0_n34) );
  INV_X1 Reg_p_p3_3_0_U9 ( .A(Reg_p_p3_3_0_n34), .ZN(Reg_p_p3_3_0_n10) );
  AOI22_X1 Reg_p_p3_3_0_U8 ( .A1(p_1p_3__1_), .A2(Reg_p_p3_3_0_n37), .B1(
        p_1s_3__1_), .B2(Reg_p_p3_3_0_n36), .ZN(Reg_p_p3_3_0_n35) );
  INV_X1 Reg_p_p3_3_0_U7 ( .A(Reg_p_p3_3_0_n35), .ZN(Reg_p_p3_3_0_n11) );
  AOI22_X1 Reg_p_p3_3_0_U6 ( .A1(p_1p_3__0_), .A2(Reg_p_p3_3_0_n37), .B1(
        p_1s_3__0_), .B2(Reg_p_p3_3_0_n36), .ZN(Reg_p_p3_3_0_n38) );
  INV_X1 Reg_p_p3_3_0_U5 ( .A(Reg_p_p3_3_0_n38), .ZN(Reg_p_p3_3_0_n12) );
  NOR2_X1 Reg_p_p3_3_0_U4 ( .A1(Reg_p_p3_3_0_n1), .A2(Reg_p_p3_3_0_n36), .ZN(
        Reg_p_p3_3_0_n37) );
  NOR2_X1 Reg_p_p3_3_0_U3 ( .A1(VIN_d3), .A2(Reg_p_p3_3_0_n1), .ZN(
        Reg_p_p3_3_0_n36) );
  DFF_X1 Reg_p_p3_3_0_Q_reg_0_ ( .D(Reg_p_p3_3_0_n12), .CK(CLK), .Q(p_1s_3__0_) );
  DFF_X1 Reg_p_p3_3_0_Q_reg_1_ ( .D(Reg_p_p3_3_0_n11), .CK(CLK), .Q(p_1s_3__1_) );
  DFF_X1 Reg_p_p3_3_0_Q_reg_2_ ( .D(Reg_p_p3_3_0_n10), .CK(CLK), .Q(p_1s_3__2_) );
  DFF_X1 Reg_p_p3_3_0_Q_reg_3_ ( .D(Reg_p_p3_3_0_n9), .CK(CLK), .Q(p_1s_3__3_)
         );
  DFF_X1 Reg_p_p3_3_0_Q_reg_4_ ( .D(Reg_p_p3_3_0_n8), .CK(CLK), .Q(p_1s_3__4_)
         );
  DFF_X1 Reg_p_p3_3_0_Q_reg_5_ ( .D(Reg_p_p3_3_0_n7), .CK(CLK), .Q(p_1s_3__5_)
         );
  DFF_X1 Reg_p_p3_3_0_Q_reg_6_ ( .D(Reg_p_p3_3_0_n6), .CK(CLK), .Q(p_1s_3__6_)
         );
  DFF_X1 Reg_p_p3_3_0_Q_reg_7_ ( .D(Reg_p_p3_3_0_n5), .CK(CLK), .Q(p_1s_3__7_)
         );
  DFF_X1 Reg_p_p3_3_0_Q_reg_8_ ( .D(Reg_p_p3_3_0_n4), .CK(CLK), .Q(p_1s_3__8_)
         );
  DFF_X1 Reg_p_p3_3_0_Q_reg_9_ ( .D(Reg_p_p3_3_0_n3), .CK(CLK), .Q(
        Reg_p_p3_3_0_Q_9_) );
  DFF_X1 Reg_p_p3_3_0_Q_reg_10_ ( .D(Reg_p_p3_3_0_n2), .CK(CLK), .Q(
        Reg_p_p3_3_0_Q_10_) );
  INV_X1 Reg_p_p4_3_U27 ( .A(n26), .ZN(Reg_p_p4_3_n1) );
  AOI22_X1 Reg_p_p4_3_U26 ( .A1(p_2p_3__10_), .A2(Reg_p_p4_3_n37), .B1(
        Reg_p_p4_3_Q_10_), .B2(Reg_p_p4_3_n36), .ZN(Reg_p_p4_3_n26) );
  INV_X1 Reg_p_p4_3_U25 ( .A(Reg_p_p4_3_n26), .ZN(Reg_p_p4_3_n2) );
  AOI22_X1 Reg_p_p4_3_U24 ( .A1(p_2p_3__9_), .A2(Reg_p_p4_3_n37), .B1(
        Reg_p_p4_3_Q_9_), .B2(Reg_p_p4_3_n36), .ZN(Reg_p_p4_3_n27) );
  INV_X1 Reg_p_p4_3_U23 ( .A(Reg_p_p4_3_n27), .ZN(Reg_p_p4_3_n3) );
  AOI22_X1 Reg_p_p4_3_U22 ( .A1(p_2p_3__8_), .A2(Reg_p_p4_3_n37), .B1(
        p_2s_3__8_), .B2(Reg_p_p4_3_n36), .ZN(Reg_p_p4_3_n28) );
  INV_X1 Reg_p_p4_3_U21 ( .A(Reg_p_p4_3_n28), .ZN(Reg_p_p4_3_n4) );
  AOI22_X1 Reg_p_p4_3_U20 ( .A1(p_2p_3__7_), .A2(Reg_p_p4_3_n37), .B1(
        p_2s_3__7_), .B2(Reg_p_p4_3_n36), .ZN(Reg_p_p4_3_n29) );
  INV_X1 Reg_p_p4_3_U19 ( .A(Reg_p_p4_3_n29), .ZN(Reg_p_p4_3_n5) );
  AOI22_X1 Reg_p_p4_3_U18 ( .A1(p_2p_3__6_), .A2(Reg_p_p4_3_n37), .B1(
        p_2s_3__6_), .B2(Reg_p_p4_3_n36), .ZN(Reg_p_p4_3_n30) );
  INV_X1 Reg_p_p4_3_U17 ( .A(Reg_p_p4_3_n30), .ZN(Reg_p_p4_3_n6) );
  AOI22_X1 Reg_p_p4_3_U16 ( .A1(p_2p_3__5_), .A2(Reg_p_p4_3_n37), .B1(
        p_2s_3__5_), .B2(Reg_p_p4_3_n36), .ZN(Reg_p_p4_3_n31) );
  INV_X1 Reg_p_p4_3_U15 ( .A(Reg_p_p4_3_n31), .ZN(Reg_p_p4_3_n7) );
  AOI22_X1 Reg_p_p4_3_U14 ( .A1(p_2p_3__4_), .A2(Reg_p_p4_3_n37), .B1(
        p_2s_3__4_), .B2(Reg_p_p4_3_n36), .ZN(Reg_p_p4_3_n32) );
  INV_X1 Reg_p_p4_3_U13 ( .A(Reg_p_p4_3_n32), .ZN(Reg_p_p4_3_n8) );
  AOI22_X1 Reg_p_p4_3_U12 ( .A1(p_2p_3__3_), .A2(Reg_p_p4_3_n37), .B1(
        p_2s_3__3_), .B2(Reg_p_p4_3_n36), .ZN(Reg_p_p4_3_n33) );
  INV_X1 Reg_p_p4_3_U11 ( .A(Reg_p_p4_3_n33), .ZN(Reg_p_p4_3_n9) );
  AOI22_X1 Reg_p_p4_3_U10 ( .A1(p_2p_3__2_), .A2(Reg_p_p4_3_n37), .B1(
        p_2s_3__2_), .B2(Reg_p_p4_3_n36), .ZN(Reg_p_p4_3_n34) );
  INV_X1 Reg_p_p4_3_U9 ( .A(Reg_p_p4_3_n34), .ZN(Reg_p_p4_3_n10) );
  AOI22_X1 Reg_p_p4_3_U8 ( .A1(p_2p_3__1_), .A2(Reg_p_p4_3_n37), .B1(
        p_2s_3__1_), .B2(Reg_p_p4_3_n36), .ZN(Reg_p_p4_3_n35) );
  INV_X1 Reg_p_p4_3_U7 ( .A(Reg_p_p4_3_n35), .ZN(Reg_p_p4_3_n11) );
  AOI22_X1 Reg_p_p4_3_U6 ( .A1(p_2p_3__0_), .A2(Reg_p_p4_3_n37), .B1(
        p_2s_3__0_), .B2(Reg_p_p4_3_n36), .ZN(Reg_p_p4_3_n38) );
  INV_X1 Reg_p_p4_3_U5 ( .A(Reg_p_p4_3_n38), .ZN(Reg_p_p4_3_n12) );
  NOR2_X1 Reg_p_p4_3_U4 ( .A1(Reg_p_p4_3_n1), .A2(Reg_p_p4_3_n36), .ZN(
        Reg_p_p4_3_n37) );
  NOR2_X1 Reg_p_p4_3_U3 ( .A1(VIN_d3), .A2(Reg_p_p4_3_n1), .ZN(Reg_p_p4_3_n36)
         );
  DFF_X1 Reg_p_p4_3_Q_reg_0_ ( .D(Reg_p_p4_3_n12), .CK(CLK), .Q(p_2s_3__0_) );
  DFF_X1 Reg_p_p4_3_Q_reg_1_ ( .D(Reg_p_p4_3_n11), .CK(CLK), .Q(p_2s_3__1_) );
  DFF_X1 Reg_p_p4_3_Q_reg_2_ ( .D(Reg_p_p4_3_n10), .CK(CLK), .Q(p_2s_3__2_) );
  DFF_X1 Reg_p_p4_3_Q_reg_3_ ( .D(Reg_p_p4_3_n9), .CK(CLK), .Q(p_2s_3__3_) );
  DFF_X1 Reg_p_p4_3_Q_reg_4_ ( .D(Reg_p_p4_3_n8), .CK(CLK), .Q(p_2s_3__4_) );
  DFF_X1 Reg_p_p4_3_Q_reg_5_ ( .D(Reg_p_p4_3_n7), .CK(CLK), .Q(p_2s_3__5_) );
  DFF_X1 Reg_p_p4_3_Q_reg_6_ ( .D(Reg_p_p4_3_n6), .CK(CLK), .Q(p_2s_3__6_) );
  DFF_X1 Reg_p_p4_3_Q_reg_7_ ( .D(Reg_p_p4_3_n5), .CK(CLK), .Q(p_2s_3__7_) );
  DFF_X1 Reg_p_p4_3_Q_reg_8_ ( .D(Reg_p_p4_3_n4), .CK(CLK), .Q(p_2s_3__8_) );
  DFF_X1 Reg_p_p4_3_Q_reg_9_ ( .D(Reg_p_p4_3_n3), .CK(CLK), .Q(Reg_p_p4_3_Q_9_) );
  DFF_X1 Reg_p_p4_3_Q_reg_10_ ( .D(Reg_p_p4_3_n2), .CK(CLK), .Q(
        Reg_p_p4_3_Q_10_) );
  INV_X1 Reg_p_p5_3_U27 ( .A(n26), .ZN(Reg_p_p5_3_n1) );
  AOI22_X1 Reg_p_p5_3_U26 ( .A1(p_3p_3__10_), .A2(Reg_p_p5_3_n37), .B1(
        Reg_p_p5_3_Q_10_), .B2(Reg_p_p5_3_n36), .ZN(Reg_p_p5_3_n26) );
  INV_X1 Reg_p_p5_3_U25 ( .A(Reg_p_p5_3_n26), .ZN(Reg_p_p5_3_n2) );
  AOI22_X1 Reg_p_p5_3_U24 ( .A1(p_3p_3__9_), .A2(Reg_p_p5_3_n37), .B1(
        Reg_p_p5_3_Q_9_), .B2(Reg_p_p5_3_n36), .ZN(Reg_p_p5_3_n27) );
  INV_X1 Reg_p_p5_3_U23 ( .A(Reg_p_p5_3_n27), .ZN(Reg_p_p5_3_n3) );
  AOI22_X1 Reg_p_p5_3_U22 ( .A1(p_3p_3__8_), .A2(Reg_p_p5_3_n37), .B1(
        p_3s_3__8_), .B2(Reg_p_p5_3_n36), .ZN(Reg_p_p5_3_n28) );
  INV_X1 Reg_p_p5_3_U21 ( .A(Reg_p_p5_3_n28), .ZN(Reg_p_p5_3_n4) );
  AOI22_X1 Reg_p_p5_3_U20 ( .A1(p_3p_3__7_), .A2(Reg_p_p5_3_n37), .B1(
        p_3s_3__7_), .B2(Reg_p_p5_3_n36), .ZN(Reg_p_p5_3_n29) );
  INV_X1 Reg_p_p5_3_U19 ( .A(Reg_p_p5_3_n29), .ZN(Reg_p_p5_3_n5) );
  AOI22_X1 Reg_p_p5_3_U18 ( .A1(p_3p_3__6_), .A2(Reg_p_p5_3_n37), .B1(
        p_3s_3__6_), .B2(Reg_p_p5_3_n36), .ZN(Reg_p_p5_3_n30) );
  INV_X1 Reg_p_p5_3_U17 ( .A(Reg_p_p5_3_n30), .ZN(Reg_p_p5_3_n6) );
  AOI22_X1 Reg_p_p5_3_U16 ( .A1(p_3p_3__5_), .A2(Reg_p_p5_3_n37), .B1(
        p_3s_3__5_), .B2(Reg_p_p5_3_n36), .ZN(Reg_p_p5_3_n31) );
  INV_X1 Reg_p_p5_3_U15 ( .A(Reg_p_p5_3_n31), .ZN(Reg_p_p5_3_n7) );
  AOI22_X1 Reg_p_p5_3_U14 ( .A1(p_3p_3__4_), .A2(Reg_p_p5_3_n37), .B1(
        p_3s_3__4_), .B2(Reg_p_p5_3_n36), .ZN(Reg_p_p5_3_n32) );
  INV_X1 Reg_p_p5_3_U13 ( .A(Reg_p_p5_3_n32), .ZN(Reg_p_p5_3_n8) );
  AOI22_X1 Reg_p_p5_3_U12 ( .A1(p_3p_3__3_), .A2(Reg_p_p5_3_n37), .B1(
        p_3s_3__3_), .B2(Reg_p_p5_3_n36), .ZN(Reg_p_p5_3_n33) );
  INV_X1 Reg_p_p5_3_U11 ( .A(Reg_p_p5_3_n33), .ZN(Reg_p_p5_3_n9) );
  AOI22_X1 Reg_p_p5_3_U10 ( .A1(p_3p_3__2_), .A2(Reg_p_p5_3_n37), .B1(
        p_3s_3__2_), .B2(Reg_p_p5_3_n36), .ZN(Reg_p_p5_3_n34) );
  INV_X1 Reg_p_p5_3_U9 ( .A(Reg_p_p5_3_n34), .ZN(Reg_p_p5_3_n10) );
  AOI22_X1 Reg_p_p5_3_U8 ( .A1(p_3p_3__1_), .A2(Reg_p_p5_3_n37), .B1(
        p_3s_3__1_), .B2(Reg_p_p5_3_n36), .ZN(Reg_p_p5_3_n35) );
  INV_X1 Reg_p_p5_3_U7 ( .A(Reg_p_p5_3_n35), .ZN(Reg_p_p5_3_n11) );
  AOI22_X1 Reg_p_p5_3_U6 ( .A1(p_3p_3__0_), .A2(Reg_p_p5_3_n37), .B1(
        p_3s_3__0_), .B2(Reg_p_p5_3_n36), .ZN(Reg_p_p5_3_n38) );
  INV_X1 Reg_p_p5_3_U5 ( .A(Reg_p_p5_3_n38), .ZN(Reg_p_p5_3_n12) );
  NOR2_X1 Reg_p_p5_3_U4 ( .A1(Reg_p_p5_3_n1), .A2(Reg_p_p5_3_n36), .ZN(
        Reg_p_p5_3_n37) );
  NOR2_X1 Reg_p_p5_3_U3 ( .A1(VIN_d3), .A2(Reg_p_p5_3_n1), .ZN(Reg_p_p5_3_n36)
         );
  DFF_X1 Reg_p_p5_3_Q_reg_0_ ( .D(Reg_p_p5_3_n12), .CK(CLK), .Q(p_3s_3__0_) );
  DFF_X1 Reg_p_p5_3_Q_reg_1_ ( .D(Reg_p_p5_3_n11), .CK(CLK), .Q(p_3s_3__1_) );
  DFF_X1 Reg_p_p5_3_Q_reg_2_ ( .D(Reg_p_p5_3_n10), .CK(CLK), .Q(p_3s_3__2_) );
  DFF_X1 Reg_p_p5_3_Q_reg_3_ ( .D(Reg_p_p5_3_n9), .CK(CLK), .Q(p_3s_3__3_) );
  DFF_X1 Reg_p_p5_3_Q_reg_4_ ( .D(Reg_p_p5_3_n8), .CK(CLK), .Q(p_3s_3__4_) );
  DFF_X1 Reg_p_p5_3_Q_reg_5_ ( .D(Reg_p_p5_3_n7), .CK(CLK), .Q(p_3s_3__5_) );
  DFF_X1 Reg_p_p5_3_Q_reg_6_ ( .D(Reg_p_p5_3_n6), .CK(CLK), .Q(p_3s_3__6_) );
  DFF_X1 Reg_p_p5_3_Q_reg_7_ ( .D(Reg_p_p5_3_n5), .CK(CLK), .Q(p_3s_3__7_) );
  DFF_X1 Reg_p_p5_3_Q_reg_8_ ( .D(Reg_p_p5_3_n4), .CK(CLK), .Q(p_3s_3__8_) );
  DFF_X1 Reg_p_p5_3_Q_reg_9_ ( .D(Reg_p_p5_3_n3), .CK(CLK), .Q(Reg_p_p5_3_Q_9_) );
  DFF_X1 Reg_p_p5_3_Q_reg_10_ ( .D(Reg_p_p5_3_n2), .CK(CLK), .Q(
        Reg_p_p5_3_Q_10_) );
  INV_X1 Reg_p_p3_4_0_U27 ( .A(n27), .ZN(Reg_p_p3_4_0_n1) );
  AOI22_X1 Reg_p_p3_4_0_U26 ( .A1(p_1p_4__10_), .A2(Reg_p_p3_4_0_n37), .B1(
        Reg_p_p3_4_0_Q_10_), .B2(Reg_p_p3_4_0_n36), .ZN(Reg_p_p3_4_0_n26) );
  INV_X1 Reg_p_p3_4_0_U25 ( .A(Reg_p_p3_4_0_n26), .ZN(Reg_p_p3_4_0_n2) );
  AOI22_X1 Reg_p_p3_4_0_U24 ( .A1(p_1p_4__9_), .A2(Reg_p_p3_4_0_n37), .B1(
        Reg_p_p3_4_0_Q_9_), .B2(Reg_p_p3_4_0_n36), .ZN(Reg_p_p3_4_0_n27) );
  INV_X1 Reg_p_p3_4_0_U23 ( .A(Reg_p_p3_4_0_n27), .ZN(Reg_p_p3_4_0_n3) );
  AOI22_X1 Reg_p_p3_4_0_U22 ( .A1(p_1p_4__8_), .A2(Reg_p_p3_4_0_n37), .B1(
        p_1s_4__8_), .B2(Reg_p_p3_4_0_n36), .ZN(Reg_p_p3_4_0_n28) );
  INV_X1 Reg_p_p3_4_0_U21 ( .A(Reg_p_p3_4_0_n28), .ZN(Reg_p_p3_4_0_n4) );
  AOI22_X1 Reg_p_p3_4_0_U20 ( .A1(p_1p_4__7_), .A2(Reg_p_p3_4_0_n37), .B1(
        p_1s_4__7_), .B2(Reg_p_p3_4_0_n36), .ZN(Reg_p_p3_4_0_n29) );
  INV_X1 Reg_p_p3_4_0_U19 ( .A(Reg_p_p3_4_0_n29), .ZN(Reg_p_p3_4_0_n5) );
  AOI22_X1 Reg_p_p3_4_0_U18 ( .A1(p_1p_4__6_), .A2(Reg_p_p3_4_0_n37), .B1(
        p_1s_4__6_), .B2(Reg_p_p3_4_0_n36), .ZN(Reg_p_p3_4_0_n30) );
  INV_X1 Reg_p_p3_4_0_U17 ( .A(Reg_p_p3_4_0_n30), .ZN(Reg_p_p3_4_0_n6) );
  AOI22_X1 Reg_p_p3_4_0_U16 ( .A1(p_1p_4__5_), .A2(Reg_p_p3_4_0_n37), .B1(
        p_1s_4__5_), .B2(Reg_p_p3_4_0_n36), .ZN(Reg_p_p3_4_0_n31) );
  INV_X1 Reg_p_p3_4_0_U15 ( .A(Reg_p_p3_4_0_n31), .ZN(Reg_p_p3_4_0_n7) );
  AOI22_X1 Reg_p_p3_4_0_U14 ( .A1(p_1p_4__4_), .A2(Reg_p_p3_4_0_n37), .B1(
        p_1s_4__4_), .B2(Reg_p_p3_4_0_n36), .ZN(Reg_p_p3_4_0_n32) );
  INV_X1 Reg_p_p3_4_0_U13 ( .A(Reg_p_p3_4_0_n32), .ZN(Reg_p_p3_4_0_n8) );
  AOI22_X1 Reg_p_p3_4_0_U12 ( .A1(p_1p_4__3_), .A2(Reg_p_p3_4_0_n37), .B1(
        p_1s_4__3_), .B2(Reg_p_p3_4_0_n36), .ZN(Reg_p_p3_4_0_n33) );
  INV_X1 Reg_p_p3_4_0_U11 ( .A(Reg_p_p3_4_0_n33), .ZN(Reg_p_p3_4_0_n9) );
  AOI22_X1 Reg_p_p3_4_0_U10 ( .A1(p_1p_4__2_), .A2(Reg_p_p3_4_0_n37), .B1(
        p_1s_4__2_), .B2(Reg_p_p3_4_0_n36), .ZN(Reg_p_p3_4_0_n34) );
  INV_X1 Reg_p_p3_4_0_U9 ( .A(Reg_p_p3_4_0_n34), .ZN(Reg_p_p3_4_0_n10) );
  AOI22_X1 Reg_p_p3_4_0_U8 ( .A1(p_1p_4__1_), .A2(Reg_p_p3_4_0_n37), .B1(
        p_1s_4__1_), .B2(Reg_p_p3_4_0_n36), .ZN(Reg_p_p3_4_0_n35) );
  INV_X1 Reg_p_p3_4_0_U7 ( .A(Reg_p_p3_4_0_n35), .ZN(Reg_p_p3_4_0_n11) );
  AOI22_X1 Reg_p_p3_4_0_U6 ( .A1(p_1p_4__0_), .A2(Reg_p_p3_4_0_n37), .B1(
        p_1s_4__0_), .B2(Reg_p_p3_4_0_n36), .ZN(Reg_p_p3_4_0_n38) );
  INV_X1 Reg_p_p3_4_0_U5 ( .A(Reg_p_p3_4_0_n38), .ZN(Reg_p_p3_4_0_n12) );
  NOR2_X1 Reg_p_p3_4_0_U4 ( .A1(Reg_p_p3_4_0_n1), .A2(Reg_p_p3_4_0_n36), .ZN(
        Reg_p_p3_4_0_n37) );
  NOR2_X1 Reg_p_p3_4_0_U3 ( .A1(VIN_d3), .A2(Reg_p_p3_4_0_n1), .ZN(
        Reg_p_p3_4_0_n36) );
  DFF_X1 Reg_p_p3_4_0_Q_reg_0_ ( .D(Reg_p_p3_4_0_n12), .CK(CLK), .Q(p_1s_4__0_) );
  DFF_X1 Reg_p_p3_4_0_Q_reg_1_ ( .D(Reg_p_p3_4_0_n11), .CK(CLK), .Q(p_1s_4__1_) );
  DFF_X1 Reg_p_p3_4_0_Q_reg_2_ ( .D(Reg_p_p3_4_0_n10), .CK(CLK), .Q(p_1s_4__2_) );
  DFF_X1 Reg_p_p3_4_0_Q_reg_3_ ( .D(Reg_p_p3_4_0_n9), .CK(CLK), .Q(p_1s_4__3_)
         );
  DFF_X1 Reg_p_p3_4_0_Q_reg_4_ ( .D(Reg_p_p3_4_0_n8), .CK(CLK), .Q(p_1s_4__4_)
         );
  DFF_X1 Reg_p_p3_4_0_Q_reg_5_ ( .D(Reg_p_p3_4_0_n7), .CK(CLK), .Q(p_1s_4__5_)
         );
  DFF_X1 Reg_p_p3_4_0_Q_reg_6_ ( .D(Reg_p_p3_4_0_n6), .CK(CLK), .Q(p_1s_4__6_)
         );
  DFF_X1 Reg_p_p3_4_0_Q_reg_7_ ( .D(Reg_p_p3_4_0_n5), .CK(CLK), .Q(p_1s_4__7_)
         );
  DFF_X1 Reg_p_p3_4_0_Q_reg_8_ ( .D(Reg_p_p3_4_0_n4), .CK(CLK), .Q(p_1s_4__8_)
         );
  DFF_X1 Reg_p_p3_4_0_Q_reg_9_ ( .D(Reg_p_p3_4_0_n3), .CK(CLK), .Q(
        Reg_p_p3_4_0_Q_9_) );
  DFF_X1 Reg_p_p3_4_0_Q_reg_10_ ( .D(Reg_p_p3_4_0_n2), .CK(CLK), .Q(
        Reg_p_p3_4_0_Q_10_) );
  INV_X1 Reg_p_p4_4_U27 ( .A(n27), .ZN(Reg_p_p4_4_n1) );
  AOI22_X1 Reg_p_p4_4_U26 ( .A1(p_2p_4__10_), .A2(Reg_p_p4_4_n37), .B1(
        Reg_p_p4_4_Q_10_), .B2(Reg_p_p4_4_n36), .ZN(Reg_p_p4_4_n26) );
  INV_X1 Reg_p_p4_4_U25 ( .A(Reg_p_p4_4_n26), .ZN(Reg_p_p4_4_n2) );
  AOI22_X1 Reg_p_p4_4_U24 ( .A1(p_2p_4__9_), .A2(Reg_p_p4_4_n37), .B1(
        Reg_p_p4_4_Q_9_), .B2(Reg_p_p4_4_n36), .ZN(Reg_p_p4_4_n27) );
  INV_X1 Reg_p_p4_4_U23 ( .A(Reg_p_p4_4_n27), .ZN(Reg_p_p4_4_n3) );
  AOI22_X1 Reg_p_p4_4_U22 ( .A1(p_2p_4__8_), .A2(Reg_p_p4_4_n37), .B1(
        p_2s_4__8_), .B2(Reg_p_p4_4_n36), .ZN(Reg_p_p4_4_n28) );
  INV_X1 Reg_p_p4_4_U21 ( .A(Reg_p_p4_4_n28), .ZN(Reg_p_p4_4_n4) );
  AOI22_X1 Reg_p_p4_4_U20 ( .A1(p_2p_4__7_), .A2(Reg_p_p4_4_n37), .B1(
        p_2s_4__7_), .B2(Reg_p_p4_4_n36), .ZN(Reg_p_p4_4_n29) );
  INV_X1 Reg_p_p4_4_U19 ( .A(Reg_p_p4_4_n29), .ZN(Reg_p_p4_4_n5) );
  AOI22_X1 Reg_p_p4_4_U18 ( .A1(p_2p_4__6_), .A2(Reg_p_p4_4_n37), .B1(
        p_2s_4__6_), .B2(Reg_p_p4_4_n36), .ZN(Reg_p_p4_4_n30) );
  INV_X1 Reg_p_p4_4_U17 ( .A(Reg_p_p4_4_n30), .ZN(Reg_p_p4_4_n6) );
  AOI22_X1 Reg_p_p4_4_U16 ( .A1(p_2p_4__5_), .A2(Reg_p_p4_4_n37), .B1(
        p_2s_4__5_), .B2(Reg_p_p4_4_n36), .ZN(Reg_p_p4_4_n31) );
  INV_X1 Reg_p_p4_4_U15 ( .A(Reg_p_p4_4_n31), .ZN(Reg_p_p4_4_n7) );
  AOI22_X1 Reg_p_p4_4_U14 ( .A1(p_2p_4__4_), .A2(Reg_p_p4_4_n37), .B1(
        p_2s_4__4_), .B2(Reg_p_p4_4_n36), .ZN(Reg_p_p4_4_n32) );
  INV_X1 Reg_p_p4_4_U13 ( .A(Reg_p_p4_4_n32), .ZN(Reg_p_p4_4_n8) );
  AOI22_X1 Reg_p_p4_4_U12 ( .A1(p_2p_4__3_), .A2(Reg_p_p4_4_n37), .B1(
        p_2s_4__3_), .B2(Reg_p_p4_4_n36), .ZN(Reg_p_p4_4_n33) );
  INV_X1 Reg_p_p4_4_U11 ( .A(Reg_p_p4_4_n33), .ZN(Reg_p_p4_4_n9) );
  AOI22_X1 Reg_p_p4_4_U10 ( .A1(p_2p_4__2_), .A2(Reg_p_p4_4_n37), .B1(
        p_2s_4__2_), .B2(Reg_p_p4_4_n36), .ZN(Reg_p_p4_4_n34) );
  INV_X1 Reg_p_p4_4_U9 ( .A(Reg_p_p4_4_n34), .ZN(Reg_p_p4_4_n10) );
  AOI22_X1 Reg_p_p4_4_U8 ( .A1(p_2p_4__1_), .A2(Reg_p_p4_4_n37), .B1(
        p_2s_4__1_), .B2(Reg_p_p4_4_n36), .ZN(Reg_p_p4_4_n35) );
  INV_X1 Reg_p_p4_4_U7 ( .A(Reg_p_p4_4_n35), .ZN(Reg_p_p4_4_n11) );
  AOI22_X1 Reg_p_p4_4_U6 ( .A1(p_2p_4__0_), .A2(Reg_p_p4_4_n37), .B1(
        p_2s_4__0_), .B2(Reg_p_p4_4_n36), .ZN(Reg_p_p4_4_n38) );
  INV_X1 Reg_p_p4_4_U5 ( .A(Reg_p_p4_4_n38), .ZN(Reg_p_p4_4_n12) );
  NOR2_X1 Reg_p_p4_4_U4 ( .A1(Reg_p_p4_4_n1), .A2(Reg_p_p4_4_n36), .ZN(
        Reg_p_p4_4_n37) );
  NOR2_X1 Reg_p_p4_4_U3 ( .A1(VIN_d3), .A2(Reg_p_p4_4_n1), .ZN(Reg_p_p4_4_n36)
         );
  DFF_X1 Reg_p_p4_4_Q_reg_0_ ( .D(Reg_p_p4_4_n12), .CK(CLK), .Q(p_2s_4__0_) );
  DFF_X1 Reg_p_p4_4_Q_reg_1_ ( .D(Reg_p_p4_4_n11), .CK(CLK), .Q(p_2s_4__1_) );
  DFF_X1 Reg_p_p4_4_Q_reg_2_ ( .D(Reg_p_p4_4_n10), .CK(CLK), .Q(p_2s_4__2_) );
  DFF_X1 Reg_p_p4_4_Q_reg_3_ ( .D(Reg_p_p4_4_n9), .CK(CLK), .Q(p_2s_4__3_) );
  DFF_X1 Reg_p_p4_4_Q_reg_4_ ( .D(Reg_p_p4_4_n8), .CK(CLK), .Q(p_2s_4__4_) );
  DFF_X1 Reg_p_p4_4_Q_reg_5_ ( .D(Reg_p_p4_4_n7), .CK(CLK), .Q(p_2s_4__5_) );
  DFF_X1 Reg_p_p4_4_Q_reg_6_ ( .D(Reg_p_p4_4_n6), .CK(CLK), .Q(p_2s_4__6_) );
  DFF_X1 Reg_p_p4_4_Q_reg_7_ ( .D(Reg_p_p4_4_n5), .CK(CLK), .Q(p_2s_4__7_) );
  DFF_X1 Reg_p_p4_4_Q_reg_8_ ( .D(Reg_p_p4_4_n4), .CK(CLK), .Q(p_2s_4__8_) );
  DFF_X1 Reg_p_p4_4_Q_reg_9_ ( .D(Reg_p_p4_4_n3), .CK(CLK), .Q(Reg_p_p4_4_Q_9_) );
  DFF_X1 Reg_p_p4_4_Q_reg_10_ ( .D(Reg_p_p4_4_n2), .CK(CLK), .Q(
        Reg_p_p4_4_Q_10_) );
  INV_X1 Reg_p_p5_4_U27 ( .A(n27), .ZN(Reg_p_p5_4_n1) );
  AOI22_X1 Reg_p_p5_4_U26 ( .A1(p_3p_4__10_), .A2(Reg_p_p5_4_n37), .B1(
        Reg_p_p5_4_Q_10_), .B2(Reg_p_p5_4_n36), .ZN(Reg_p_p5_4_n26) );
  INV_X1 Reg_p_p5_4_U25 ( .A(Reg_p_p5_4_n26), .ZN(Reg_p_p5_4_n2) );
  AOI22_X1 Reg_p_p5_4_U24 ( .A1(p_3p_4__9_), .A2(Reg_p_p5_4_n37), .B1(
        Reg_p_p5_4_Q_9_), .B2(Reg_p_p5_4_n36), .ZN(Reg_p_p5_4_n27) );
  INV_X1 Reg_p_p5_4_U23 ( .A(Reg_p_p5_4_n27), .ZN(Reg_p_p5_4_n3) );
  AOI22_X1 Reg_p_p5_4_U22 ( .A1(p_3p_4__8_), .A2(Reg_p_p5_4_n37), .B1(
        p_3s_4__8_), .B2(Reg_p_p5_4_n36), .ZN(Reg_p_p5_4_n28) );
  INV_X1 Reg_p_p5_4_U21 ( .A(Reg_p_p5_4_n28), .ZN(Reg_p_p5_4_n4) );
  AOI22_X1 Reg_p_p5_4_U20 ( .A1(p_3p_4__7_), .A2(Reg_p_p5_4_n37), .B1(
        p_3s_4__7_), .B2(Reg_p_p5_4_n36), .ZN(Reg_p_p5_4_n29) );
  INV_X1 Reg_p_p5_4_U19 ( .A(Reg_p_p5_4_n29), .ZN(Reg_p_p5_4_n5) );
  AOI22_X1 Reg_p_p5_4_U18 ( .A1(p_3p_4__6_), .A2(Reg_p_p5_4_n37), .B1(
        p_3s_4__6_), .B2(Reg_p_p5_4_n36), .ZN(Reg_p_p5_4_n30) );
  INV_X1 Reg_p_p5_4_U17 ( .A(Reg_p_p5_4_n30), .ZN(Reg_p_p5_4_n6) );
  AOI22_X1 Reg_p_p5_4_U16 ( .A1(p_3p_4__5_), .A2(Reg_p_p5_4_n37), .B1(
        p_3s_4__5_), .B2(Reg_p_p5_4_n36), .ZN(Reg_p_p5_4_n31) );
  INV_X1 Reg_p_p5_4_U15 ( .A(Reg_p_p5_4_n31), .ZN(Reg_p_p5_4_n7) );
  AOI22_X1 Reg_p_p5_4_U14 ( .A1(p_3p_4__4_), .A2(Reg_p_p5_4_n37), .B1(
        p_3s_4__4_), .B2(Reg_p_p5_4_n36), .ZN(Reg_p_p5_4_n32) );
  INV_X1 Reg_p_p5_4_U13 ( .A(Reg_p_p5_4_n32), .ZN(Reg_p_p5_4_n8) );
  AOI22_X1 Reg_p_p5_4_U12 ( .A1(p_3p_4__3_), .A2(Reg_p_p5_4_n37), .B1(
        p_3s_4__3_), .B2(Reg_p_p5_4_n36), .ZN(Reg_p_p5_4_n33) );
  INV_X1 Reg_p_p5_4_U11 ( .A(Reg_p_p5_4_n33), .ZN(Reg_p_p5_4_n9) );
  AOI22_X1 Reg_p_p5_4_U10 ( .A1(p_3p_4__2_), .A2(Reg_p_p5_4_n37), .B1(
        p_3s_4__2_), .B2(Reg_p_p5_4_n36), .ZN(Reg_p_p5_4_n34) );
  INV_X1 Reg_p_p5_4_U9 ( .A(Reg_p_p5_4_n34), .ZN(Reg_p_p5_4_n10) );
  AOI22_X1 Reg_p_p5_4_U8 ( .A1(p_3p_4__1_), .A2(Reg_p_p5_4_n37), .B1(
        p_3s_4__1_), .B2(Reg_p_p5_4_n36), .ZN(Reg_p_p5_4_n35) );
  INV_X1 Reg_p_p5_4_U7 ( .A(Reg_p_p5_4_n35), .ZN(Reg_p_p5_4_n11) );
  AOI22_X1 Reg_p_p5_4_U6 ( .A1(p_3p_4__0_), .A2(Reg_p_p5_4_n37), .B1(
        p_3s_4__0_), .B2(Reg_p_p5_4_n36), .ZN(Reg_p_p5_4_n38) );
  INV_X1 Reg_p_p5_4_U5 ( .A(Reg_p_p5_4_n38), .ZN(Reg_p_p5_4_n12) );
  NOR2_X1 Reg_p_p5_4_U4 ( .A1(Reg_p_p5_4_n1), .A2(Reg_p_p5_4_n36), .ZN(
        Reg_p_p5_4_n37) );
  NOR2_X1 Reg_p_p5_4_U3 ( .A1(VIN_d3), .A2(Reg_p_p5_4_n1), .ZN(Reg_p_p5_4_n36)
         );
  DFF_X1 Reg_p_p5_4_Q_reg_0_ ( .D(Reg_p_p5_4_n12), .CK(CLK), .Q(p_3s_4__0_) );
  DFF_X1 Reg_p_p5_4_Q_reg_1_ ( .D(Reg_p_p5_4_n11), .CK(CLK), .Q(p_3s_4__1_) );
  DFF_X1 Reg_p_p5_4_Q_reg_2_ ( .D(Reg_p_p5_4_n10), .CK(CLK), .Q(p_3s_4__2_) );
  DFF_X1 Reg_p_p5_4_Q_reg_3_ ( .D(Reg_p_p5_4_n9), .CK(CLK), .Q(p_3s_4__3_) );
  DFF_X1 Reg_p_p5_4_Q_reg_4_ ( .D(Reg_p_p5_4_n8), .CK(CLK), .Q(p_3s_4__4_) );
  DFF_X1 Reg_p_p5_4_Q_reg_5_ ( .D(Reg_p_p5_4_n7), .CK(CLK), .Q(p_3s_4__5_) );
  DFF_X1 Reg_p_p5_4_Q_reg_6_ ( .D(Reg_p_p5_4_n6), .CK(CLK), .Q(p_3s_4__6_) );
  DFF_X1 Reg_p_p5_4_Q_reg_7_ ( .D(Reg_p_p5_4_n5), .CK(CLK), .Q(p_3s_4__7_) );
  DFF_X1 Reg_p_p5_4_Q_reg_8_ ( .D(Reg_p_p5_4_n4), .CK(CLK), .Q(p_3s_4__8_) );
  DFF_X1 Reg_p_p5_4_Q_reg_9_ ( .D(Reg_p_p5_4_n3), .CK(CLK), .Q(Reg_p_p5_4_Q_9_) );
  DFF_X1 Reg_p_p5_4_Q_reg_10_ ( .D(Reg_p_p5_4_n2), .CK(CLK), .Q(
        Reg_p_p5_4_Q_10_) );
  INV_X1 Reg_s_p6_U25 ( .A(n30), .ZN(Reg_s_p6_n1) );
  AOI22_X1 Reg_s_p6_U24 ( .A1(s_11_1__9_), .A2(Reg_s_p6_n13), .B1(
        Reg_s_p6_Q_9_), .B2(Reg_s_p6_n14), .ZN(Reg_s_p6_n23) );
  INV_X1 Reg_s_p6_U23 ( .A(Reg_s_p6_n23), .ZN(Reg_s_p6_n2) );
  AOI22_X1 Reg_s_p6_U22 ( .A1(s_11_1__8_), .A2(Reg_s_p6_n13), .B1(s_11_p[8]), 
        .B2(Reg_s_p6_n14), .ZN(Reg_s_p6_n22) );
  INV_X1 Reg_s_p6_U21 ( .A(Reg_s_p6_n22), .ZN(Reg_s_p6_n3) );
  AOI22_X1 Reg_s_p6_U20 ( .A1(s_11_1__7_), .A2(Reg_s_p6_n13), .B1(s_11_p[7]), 
        .B2(Reg_s_p6_n14), .ZN(Reg_s_p6_n21) );
  INV_X1 Reg_s_p6_U19 ( .A(Reg_s_p6_n21), .ZN(Reg_s_p6_n4) );
  AOI22_X1 Reg_s_p6_U18 ( .A1(s_11_1__6_), .A2(Reg_s_p6_n13), .B1(s_11_p[6]), 
        .B2(Reg_s_p6_n14), .ZN(Reg_s_p6_n20) );
  INV_X1 Reg_s_p6_U17 ( .A(Reg_s_p6_n20), .ZN(Reg_s_p6_n5) );
  AOI22_X1 Reg_s_p6_U16 ( .A1(s_11_1__5_), .A2(Reg_s_p6_n13), .B1(s_11_p[5]), 
        .B2(Reg_s_p6_n14), .ZN(Reg_s_p6_n19) );
  INV_X1 Reg_s_p6_U15 ( .A(Reg_s_p6_n19), .ZN(Reg_s_p6_n6) );
  AOI22_X1 Reg_s_p6_U14 ( .A1(s_11_1__4_), .A2(Reg_s_p6_n13), .B1(s_11_p[4]), 
        .B2(Reg_s_p6_n14), .ZN(Reg_s_p6_n18) );
  INV_X1 Reg_s_p6_U13 ( .A(Reg_s_p6_n18), .ZN(Reg_s_p6_n7) );
  AOI22_X1 Reg_s_p6_U12 ( .A1(s_11_1__3_), .A2(Reg_s_p6_n13), .B1(s_11_p[3]), 
        .B2(Reg_s_p6_n14), .ZN(Reg_s_p6_n17) );
  INV_X1 Reg_s_p6_U11 ( .A(Reg_s_p6_n17), .ZN(Reg_s_p6_n8) );
  AOI22_X1 Reg_s_p6_U10 ( .A1(s_11_1__2_), .A2(Reg_s_p6_n13), .B1(s_11_p[2]), 
        .B2(Reg_s_p6_n14), .ZN(Reg_s_p6_n16) );
  INV_X1 Reg_s_p6_U9 ( .A(Reg_s_p6_n16), .ZN(Reg_s_p6_n9) );
  AOI22_X1 Reg_s_p6_U8 ( .A1(s_11_1__1_), .A2(Reg_s_p6_n13), .B1(s_11_p[1]), 
        .B2(Reg_s_p6_n14), .ZN(Reg_s_p6_n15) );
  INV_X1 Reg_s_p6_U7 ( .A(Reg_s_p6_n15), .ZN(Reg_s_p6_n10) );
  AOI22_X1 Reg_s_p6_U6 ( .A1(s_11_1__0_), .A2(Reg_s_p6_n13), .B1(s_11_p[0]), 
        .B2(Reg_s_p6_n14), .ZN(Reg_s_p6_n12) );
  INV_X1 Reg_s_p6_U5 ( .A(Reg_s_p6_n12), .ZN(Reg_s_p6_n11) );
  NOR2_X1 Reg_s_p6_U4 ( .A1(VIN_d3), .A2(Reg_s_p6_n1), .ZN(Reg_s_p6_n14) );
  NOR2_X1 Reg_s_p6_U3 ( .A1(Reg_s_p6_n1), .A2(Reg_s_p6_n14), .ZN(Reg_s_p6_n13)
         );
  DFF_X1 Reg_s_p6_Q_reg_0_ ( .D(Reg_s_p6_n11), .CK(CLK), .Q(s_11_p[0]) );
  DFF_X1 Reg_s_p6_Q_reg_1_ ( .D(Reg_s_p6_n10), .CK(CLK), .Q(s_11_p[1]) );
  DFF_X1 Reg_s_p6_Q_reg_2_ ( .D(Reg_s_p6_n9), .CK(CLK), .Q(s_11_p[2]) );
  DFF_X1 Reg_s_p6_Q_reg_3_ ( .D(Reg_s_p6_n8), .CK(CLK), .Q(s_11_p[3]) );
  DFF_X1 Reg_s_p6_Q_reg_4_ ( .D(Reg_s_p6_n7), .CK(CLK), .Q(s_11_p[4]) );
  DFF_X1 Reg_s_p6_Q_reg_5_ ( .D(Reg_s_p6_n6), .CK(CLK), .Q(s_11_p[5]) );
  DFF_X1 Reg_s_p6_Q_reg_6_ ( .D(Reg_s_p6_n5), .CK(CLK), .Q(s_11_p[6]) );
  DFF_X1 Reg_s_p6_Q_reg_7_ ( .D(Reg_s_p6_n4), .CK(CLK), .Q(s_11_p[7]) );
  DFF_X1 Reg_s_p6_Q_reg_8_ ( .D(Reg_s_p6_n3), .CK(CLK), .Q(s_11_p[8]) );
  DFF_X1 Reg_s_p6_Q_reg_9_ ( .D(Reg_s_p6_n2), .CK(CLK), .Q(Reg_s_p6_Q_9_) );
  INV_X1 Reg_s_p7_U25 ( .A(n28), .ZN(Reg_s_p7_n1) );
  AOI22_X1 Reg_s_p7_U24 ( .A1(s_21_1__9_), .A2(Reg_s_p7_n34), .B1(
        Reg_s_p7_Q_9_), .B2(Reg_s_p7_n33), .ZN(Reg_s_p7_n24) );
  INV_X1 Reg_s_p7_U23 ( .A(Reg_s_p7_n24), .ZN(Reg_s_p7_n2) );
  AOI22_X1 Reg_s_p7_U22 ( .A1(s_21_1__8_), .A2(Reg_s_p7_n34), .B1(s_21_p[8]), 
        .B2(Reg_s_p7_n33), .ZN(Reg_s_p7_n25) );
  INV_X1 Reg_s_p7_U21 ( .A(Reg_s_p7_n25), .ZN(Reg_s_p7_n3) );
  AOI22_X1 Reg_s_p7_U20 ( .A1(s_21_1__7_), .A2(Reg_s_p7_n34), .B1(s_21_p[7]), 
        .B2(Reg_s_p7_n33), .ZN(Reg_s_p7_n26) );
  INV_X1 Reg_s_p7_U19 ( .A(Reg_s_p7_n26), .ZN(Reg_s_p7_n4) );
  AOI22_X1 Reg_s_p7_U18 ( .A1(s_21_1__6_), .A2(Reg_s_p7_n34), .B1(s_21_p[6]), 
        .B2(Reg_s_p7_n33), .ZN(Reg_s_p7_n27) );
  INV_X1 Reg_s_p7_U17 ( .A(Reg_s_p7_n27), .ZN(Reg_s_p7_n5) );
  AOI22_X1 Reg_s_p7_U16 ( .A1(s_21_1__5_), .A2(Reg_s_p7_n34), .B1(s_21_p[5]), 
        .B2(Reg_s_p7_n33), .ZN(Reg_s_p7_n28) );
  INV_X1 Reg_s_p7_U15 ( .A(Reg_s_p7_n28), .ZN(Reg_s_p7_n6) );
  AOI22_X1 Reg_s_p7_U14 ( .A1(s_21_1__4_), .A2(Reg_s_p7_n34), .B1(s_21_p[4]), 
        .B2(Reg_s_p7_n33), .ZN(Reg_s_p7_n29) );
  INV_X1 Reg_s_p7_U13 ( .A(Reg_s_p7_n29), .ZN(Reg_s_p7_n7) );
  AOI22_X1 Reg_s_p7_U12 ( .A1(s_21_1__3_), .A2(Reg_s_p7_n34), .B1(s_21_p[3]), 
        .B2(Reg_s_p7_n33), .ZN(Reg_s_p7_n30) );
  INV_X1 Reg_s_p7_U11 ( .A(Reg_s_p7_n30), .ZN(Reg_s_p7_n8) );
  AOI22_X1 Reg_s_p7_U10 ( .A1(s_21_1__2_), .A2(Reg_s_p7_n34), .B1(s_21_p[2]), 
        .B2(Reg_s_p7_n33), .ZN(Reg_s_p7_n31) );
  INV_X1 Reg_s_p7_U9 ( .A(Reg_s_p7_n31), .ZN(Reg_s_p7_n9) );
  AOI22_X1 Reg_s_p7_U8 ( .A1(s_21_1__1_), .A2(Reg_s_p7_n34), .B1(s_21_p[1]), 
        .B2(Reg_s_p7_n33), .ZN(Reg_s_p7_n32) );
  INV_X1 Reg_s_p7_U7 ( .A(Reg_s_p7_n32), .ZN(Reg_s_p7_n10) );
  AOI22_X1 Reg_s_p7_U6 ( .A1(s_21_1__0_), .A2(Reg_s_p7_n34), .B1(s_21_p[0]), 
        .B2(Reg_s_p7_n33), .ZN(Reg_s_p7_n35) );
  INV_X1 Reg_s_p7_U5 ( .A(Reg_s_p7_n35), .ZN(Reg_s_p7_n11) );
  NOR2_X1 Reg_s_p7_U4 ( .A1(VIN_d3), .A2(Reg_s_p7_n1), .ZN(Reg_s_p7_n33) );
  NOR2_X1 Reg_s_p7_U3 ( .A1(Reg_s_p7_n1), .A2(Reg_s_p7_n33), .ZN(Reg_s_p7_n34)
         );
  DFF_X1 Reg_s_p7_Q_reg_0_ ( .D(Reg_s_p7_n11), .CK(CLK), .Q(s_21_p[0]) );
  DFF_X1 Reg_s_p7_Q_reg_1_ ( .D(Reg_s_p7_n10), .CK(CLK), .Q(s_21_p[1]) );
  DFF_X1 Reg_s_p7_Q_reg_2_ ( .D(Reg_s_p7_n9), .CK(CLK), .Q(s_21_p[2]) );
  DFF_X1 Reg_s_p7_Q_reg_3_ ( .D(Reg_s_p7_n8), .CK(CLK), .Q(s_21_p[3]) );
  DFF_X1 Reg_s_p7_Q_reg_4_ ( .D(Reg_s_p7_n7), .CK(CLK), .Q(s_21_p[4]) );
  DFF_X1 Reg_s_p7_Q_reg_5_ ( .D(Reg_s_p7_n6), .CK(CLK), .Q(s_21_p[5]) );
  DFF_X1 Reg_s_p7_Q_reg_6_ ( .D(Reg_s_p7_n5), .CK(CLK), .Q(s_21_p[6]) );
  DFF_X1 Reg_s_p7_Q_reg_7_ ( .D(Reg_s_p7_n4), .CK(CLK), .Q(s_21_p[7]) );
  DFF_X1 Reg_s_p7_Q_reg_8_ ( .D(Reg_s_p7_n3), .CK(CLK), .Q(s_21_p[8]) );
  DFF_X1 Reg_s_p7_Q_reg_9_ ( .D(Reg_s_p7_n2), .CK(CLK), .Q(Reg_s_p7_Q_9_) );
  INV_X1 Reg_s_p8_U25 ( .A(n25), .ZN(Reg_s_p8_n1) );
  AOI22_X1 Reg_s_p8_U24 ( .A1(s_31_1__9_), .A2(Reg_s_p8_n34), .B1(
        Reg_s_p8_Q_9_), .B2(Reg_s_p8_n33), .ZN(Reg_s_p8_n24) );
  INV_X1 Reg_s_p8_U23 ( .A(Reg_s_p8_n24), .ZN(Reg_s_p8_n2) );
  AOI22_X1 Reg_s_p8_U22 ( .A1(s_31_1__8_), .A2(Reg_s_p8_n34), .B1(s_31_p[8]), 
        .B2(Reg_s_p8_n33), .ZN(Reg_s_p8_n25) );
  INV_X1 Reg_s_p8_U21 ( .A(Reg_s_p8_n25), .ZN(Reg_s_p8_n3) );
  AOI22_X1 Reg_s_p8_U20 ( .A1(s_31_1__7_), .A2(Reg_s_p8_n34), .B1(s_31_p[7]), 
        .B2(Reg_s_p8_n33), .ZN(Reg_s_p8_n26) );
  INV_X1 Reg_s_p8_U19 ( .A(Reg_s_p8_n26), .ZN(Reg_s_p8_n4) );
  AOI22_X1 Reg_s_p8_U18 ( .A1(s_31_1__6_), .A2(Reg_s_p8_n34), .B1(s_31_p[6]), 
        .B2(Reg_s_p8_n33), .ZN(Reg_s_p8_n27) );
  INV_X1 Reg_s_p8_U17 ( .A(Reg_s_p8_n27), .ZN(Reg_s_p8_n5) );
  AOI22_X1 Reg_s_p8_U16 ( .A1(s_31_1__5_), .A2(Reg_s_p8_n34), .B1(s_31_p[5]), 
        .B2(Reg_s_p8_n33), .ZN(Reg_s_p8_n28) );
  INV_X1 Reg_s_p8_U15 ( .A(Reg_s_p8_n28), .ZN(Reg_s_p8_n6) );
  AOI22_X1 Reg_s_p8_U14 ( .A1(s_31_1__4_), .A2(Reg_s_p8_n34), .B1(s_31_p[4]), 
        .B2(Reg_s_p8_n33), .ZN(Reg_s_p8_n29) );
  INV_X1 Reg_s_p8_U13 ( .A(Reg_s_p8_n29), .ZN(Reg_s_p8_n7) );
  AOI22_X1 Reg_s_p8_U12 ( .A1(s_31_1__3_), .A2(Reg_s_p8_n34), .B1(s_31_p[3]), 
        .B2(Reg_s_p8_n33), .ZN(Reg_s_p8_n30) );
  INV_X1 Reg_s_p8_U11 ( .A(Reg_s_p8_n30), .ZN(Reg_s_p8_n8) );
  AOI22_X1 Reg_s_p8_U10 ( .A1(s_31_1__2_), .A2(Reg_s_p8_n34), .B1(s_31_p[2]), 
        .B2(Reg_s_p8_n33), .ZN(Reg_s_p8_n31) );
  INV_X1 Reg_s_p8_U9 ( .A(Reg_s_p8_n31), .ZN(Reg_s_p8_n9) );
  AOI22_X1 Reg_s_p8_U8 ( .A1(s_31_1__1_), .A2(Reg_s_p8_n34), .B1(s_31_p[1]), 
        .B2(Reg_s_p8_n33), .ZN(Reg_s_p8_n32) );
  INV_X1 Reg_s_p8_U7 ( .A(Reg_s_p8_n32), .ZN(Reg_s_p8_n10) );
  AOI22_X1 Reg_s_p8_U6 ( .A1(s_31_1__0_), .A2(Reg_s_p8_n34), .B1(s_31_p[0]), 
        .B2(Reg_s_p8_n33), .ZN(Reg_s_p8_n35) );
  INV_X1 Reg_s_p8_U5 ( .A(Reg_s_p8_n35), .ZN(Reg_s_p8_n11) );
  NOR2_X1 Reg_s_p8_U4 ( .A1(VIN_d3), .A2(Reg_s_p8_n1), .ZN(Reg_s_p8_n33) );
  NOR2_X1 Reg_s_p8_U3 ( .A1(Reg_s_p8_n1), .A2(Reg_s_p8_n33), .ZN(Reg_s_p8_n34)
         );
  DFF_X1 Reg_s_p8_Q_reg_0_ ( .D(Reg_s_p8_n11), .CK(CLK), .Q(s_31_p[0]) );
  DFF_X1 Reg_s_p8_Q_reg_1_ ( .D(Reg_s_p8_n10), .CK(CLK), .Q(s_31_p[1]) );
  DFF_X1 Reg_s_p8_Q_reg_2_ ( .D(Reg_s_p8_n9), .CK(CLK), .Q(s_31_p[2]) );
  DFF_X1 Reg_s_p8_Q_reg_3_ ( .D(Reg_s_p8_n8), .CK(CLK), .Q(s_31_p[3]) );
  DFF_X1 Reg_s_p8_Q_reg_4_ ( .D(Reg_s_p8_n7), .CK(CLK), .Q(s_31_p[4]) );
  DFF_X1 Reg_s_p8_Q_reg_5_ ( .D(Reg_s_p8_n6), .CK(CLK), .Q(s_31_p[5]) );
  DFF_X1 Reg_s_p8_Q_reg_6_ ( .D(Reg_s_p8_n5), .CK(CLK), .Q(s_31_p[6]) );
  DFF_X1 Reg_s_p8_Q_reg_7_ ( .D(Reg_s_p8_n4), .CK(CLK), .Q(s_31_p[7]) );
  DFF_X1 Reg_s_p8_Q_reg_8_ ( .D(Reg_s_p8_n3), .CK(CLK), .Q(s_31_p[8]) );
  DFF_X1 Reg_s_p8_Q_reg_9_ ( .D(Reg_s_p8_n2), .CK(CLK), .Q(Reg_s_p8_Q_9_) );
  OAI211_X1 add_146_U11 ( .C1(x3k2_ext_1__1_), .C2(x3k_ext_1__1_), .A(
        x3k2_ext_1__0_), .B(x3k_ext_1__0_), .ZN(add_146_n11) );
  AOI21_X1 add_146_U10 ( .B1(x3k2_ext_1__1_), .B2(x3k_ext_1__1_), .A(
        add_146_n4), .ZN(add_146_n9) );
  OAI21_X1 add_146_U9 ( .B1(x3k2_ext_1__2_), .B2(add_146_n3), .A(x3k_ext_1__2_), .ZN(add_146_n10) );
  OAI21_X1 add_146_U8 ( .B1(add_146_n9), .B2(add_146_n5), .A(add_146_n10), 
        .ZN(add_146_n7) );
  OAI21_X1 add_146_U7 ( .B1(x3k2_ext_1__3_), .B2(add_146_n7), .A(x3k_ext_1__3_), .ZN(add_146_n8) );
  AOI21_X1 add_146_U6 ( .B1(add_146_n7), .B2(x3k2_ext_1__3_), .A(add_146_n2), 
        .ZN(add_146_n6) );
  INV_X1 add_146_U5 ( .A(add_146_n8), .ZN(add_146_n2) );
  INV_X1 add_146_U4 ( .A(add_146_n6), .ZN(add_146_n1) );
  INV_X1 add_146_U3 ( .A(add_146_n9), .ZN(add_146_n3) );
  INV_X1 add_146_U2 ( .A(x3k2_ext_1__2_), .ZN(add_146_n5) );
  INV_X1 add_146_U1 ( .A(add_146_n11), .ZN(add_146_n4) );
  FA_X1 add_146_U1_4 ( .A(x3k2_ext_1__4_), .B(x3k_ext_1__4_), .CI(add_146_n1), 
        .CO(add_146_carry[5]), .S(s_3_3__4_) );
  FA_X1 add_146_U1_5 ( .A(x3k2_ext_1__5_), .B(x3k_ext_1__5_), .CI(
        add_146_carry[5]), .CO(add_146_carry[6]), .S(s_3_3__5_) );
  FA_X1 add_146_U1_6 ( .A(x3k2_ext_1__6_), .B(x3k_ext_1__6_), .CI(
        add_146_carry[6]), .CO(add_146_carry[7]), .S(s_3_3__6_) );
  FA_X1 add_146_U1_7 ( .A(x3k2_ext_1__7_), .B(x3k_ext_1__7_), .CI(
        add_146_carry[7]), .CO(add_146_carry[8]), .S(s_3_3__7_) );
  FA_X1 add_146_U1_8 ( .A(x3k2_ext_1__9_), .B(x3k_ext_1__9_), .CI(
        add_146_carry[8]), .CO(add_146_carry[9]), .S(s_3_3__8_) );
  FA_X1 add_146_U1_9 ( .A(x3k2_ext_1__9_), .B(x3k_ext_1__9_), .CI(
        add_146_carry[9]), .S(s_3_3__9_) );
  OAI211_X1 add_145_U11 ( .C1(x3k1_ext_2__1_), .C2(x3k_ext_0__1_), .A(
        x3k1_ext_2__0_), .B(x3k_ext_0__0_), .ZN(add_145_n11) );
  AOI21_X1 add_145_U10 ( .B1(x3k1_ext_2__1_), .B2(x3k_ext_0__1_), .A(
        add_145_n5), .ZN(add_145_n9) );
  OAI21_X1 add_145_U9 ( .B1(x3k1_ext_2__2_), .B2(add_145_n4), .A(x3k_ext_0__2_), .ZN(add_145_n10) );
  OAI21_X1 add_145_U8 ( .B1(add_145_n9), .B2(add_145_n3), .A(add_145_n10), 
        .ZN(add_145_n7) );
  OAI21_X1 add_145_U7 ( .B1(x3k1_ext_2__3_), .B2(add_145_n7), .A(x3k_ext_0__3_), .ZN(add_145_n8) );
  AOI21_X1 add_145_U6 ( .B1(add_145_n7), .B2(x3k1_ext_2__3_), .A(add_145_n2), 
        .ZN(add_145_n6) );
  INV_X1 add_145_U5 ( .A(add_145_n8), .ZN(add_145_n2) );
  INV_X1 add_145_U4 ( .A(add_145_n6), .ZN(add_145_n1) );
  INV_X1 add_145_U3 ( .A(add_145_n9), .ZN(add_145_n4) );
  INV_X1 add_145_U2 ( .A(x3k1_ext_2__2_), .ZN(add_145_n3) );
  INV_X1 add_145_U1 ( .A(add_145_n11), .ZN(add_145_n5) );
  FA_X1 add_145_U1_4 ( .A(x3k1_ext_2__4_), .B(x3k_ext_0__4_), .CI(add_145_n1), 
        .CO(add_145_carry[5]), .S(s_3_2__4_) );
  FA_X1 add_145_U1_5 ( .A(x3k1_ext_2__5_), .B(x3k_ext_0__5_), .CI(
        add_145_carry[5]), .CO(add_145_carry[6]), .S(s_3_2__5_) );
  FA_X1 add_145_U1_6 ( .A(x3k1_ext_2__6_), .B(x3k_ext_0__6_), .CI(
        add_145_carry[6]), .CO(add_145_carry[7]), .S(s_3_2__6_) );
  FA_X1 add_145_U1_7 ( .A(x3k1_ext_2__7_), .B(x3k_ext_0__7_), .CI(
        add_145_carry[7]), .CO(add_145_carry[8]), .S(s_3_2__7_) );
  FA_X1 add_145_U1_8 ( .A(x3k1_ext_2__9_), .B(x3k_ext_0__9_), .CI(
        add_145_carry[8]), .CO(add_145_carry[9]), .S(s_3_2__8_) );
  FA_X1 add_145_U1_9 ( .A(x3k1_ext_2__9_), .B(x3k_ext_0__9_), .CI(
        add_145_carry[9]), .S(s_3_2__9_) );
  OAI211_X1 add_144_U11 ( .C1(x3k1_ext_2__1_), .C2(x3k1_ext_0__1_), .A(
        x3k1_ext_2__0_), .B(x3k1_ext_0__0_), .ZN(add_144_n11) );
  AOI21_X1 add_144_U10 ( .B1(x3k1_ext_2__1_), .B2(x3k1_ext_0__1_), .A(
        add_144_n4), .ZN(add_144_n9) );
  OAI21_X1 add_144_U9 ( .B1(x3k1_ext_2__2_), .B2(add_144_n3), .A(
        x3k1_ext_0__2_), .ZN(add_144_n10) );
  OAI21_X1 add_144_U8 ( .B1(add_144_n9), .B2(add_144_n5), .A(add_144_n10), 
        .ZN(add_144_n7) );
  OAI21_X1 add_144_U7 ( .B1(x3k1_ext_2__3_), .B2(add_144_n7), .A(
        x3k1_ext_0__3_), .ZN(add_144_n8) );
  AOI21_X1 add_144_U6 ( .B1(add_144_n7), .B2(x3k1_ext_2__3_), .A(add_144_n2), 
        .ZN(add_144_n6) );
  INV_X1 add_144_U5 ( .A(add_144_n8), .ZN(add_144_n2) );
  INV_X1 add_144_U4 ( .A(add_144_n6), .ZN(add_144_n1) );
  INV_X1 add_144_U3 ( .A(add_144_n9), .ZN(add_144_n3) );
  INV_X1 add_144_U2 ( .A(x3k1_ext_2__2_), .ZN(add_144_n5) );
  INV_X1 add_144_U1 ( .A(add_144_n11), .ZN(add_144_n4) );
  FA_X1 add_144_U1_4 ( .A(x3k1_ext_2__4_), .B(x3k1_ext_0__4_), .CI(add_144_n1), 
        .CO(add_144_carry[5]), .S(s_3_1__4_) );
  FA_X1 add_144_U1_5 ( .A(x3k1_ext_2__5_), .B(x3k1_ext_0__5_), .CI(
        add_144_carry[5]), .CO(add_144_carry[6]), .S(s_3_1__5_) );
  FA_X1 add_144_U1_6 ( .A(x3k1_ext_2__6_), .B(x3k1_ext_0__6_), .CI(
        add_144_carry[6]), .CO(add_144_carry[7]), .S(s_3_1__6_) );
  FA_X1 add_144_U1_7 ( .A(x3k1_ext_2__7_), .B(x3k1_ext_0__7_), .CI(
        add_144_carry[7]), .CO(add_144_carry[8]), .S(s_3_1__7_) );
  FA_X1 add_144_U1_8 ( .A(x3k1_ext_2__9_), .B(x3k1_ext_0__9_), .CI(
        add_144_carry[8]), .CO(add_144_carry[9]), .S(s_3_1__8_) );
  FA_X1 add_144_U1_9 ( .A(x3k1_ext_2__9_), .B(x3k1_ext_0__9_), .CI(
        add_144_carry[9]), .S(s_3_1__9_) );
  OAI211_X1 add_143_U11 ( .C1(x3k_ext_2__1_), .C2(x3k2_ext_0__1_), .A(
        x3k_ext_2__0_), .B(x3k2_ext_0__0_), .ZN(add_143_n11) );
  AOI21_X1 add_143_U10 ( .B1(x3k_ext_2__1_), .B2(x3k2_ext_0__1_), .A(
        add_143_n4), .ZN(add_143_n9) );
  OAI21_X1 add_143_U9 ( .B1(x3k_ext_2__2_), .B2(add_143_n3), .A(x3k2_ext_0__2_), .ZN(add_143_n10) );
  OAI21_X1 add_143_U8 ( .B1(add_143_n9), .B2(add_143_n5), .A(add_143_n10), 
        .ZN(add_143_n7) );
  OAI21_X1 add_143_U7 ( .B1(x3k_ext_2__3_), .B2(add_143_n7), .A(x3k2_ext_0__3_), .ZN(add_143_n8) );
  AOI21_X1 add_143_U6 ( .B1(add_143_n7), .B2(x3k_ext_2__3_), .A(add_143_n2), 
        .ZN(add_143_n6) );
  INV_X1 add_143_U5 ( .A(add_143_n8), .ZN(add_143_n2) );
  INV_X1 add_143_U4 ( .A(add_143_n6), .ZN(add_143_n1) );
  INV_X1 add_143_U3 ( .A(add_143_n9), .ZN(add_143_n3) );
  INV_X1 add_143_U2 ( .A(x3k_ext_2__2_), .ZN(add_143_n5) );
  INV_X1 add_143_U1 ( .A(add_143_n11), .ZN(add_143_n4) );
  FA_X1 add_143_U1_4 ( .A(x3k_ext_2__4_), .B(x3k2_ext_0__4_), .CI(add_143_n1), 
        .CO(add_143_carry[5]), .S(s_3_0__4_) );
  FA_X1 add_143_U1_5 ( .A(x3k_ext_2__5_), .B(x3k2_ext_0__5_), .CI(
        add_143_carry[5]), .CO(add_143_carry[6]), .S(s_3_0__5_) );
  FA_X1 add_143_U1_6 ( .A(x3k_ext_2__6_), .B(x3k2_ext_0__6_), .CI(
        add_143_carry[6]), .CO(add_143_carry[7]), .S(s_3_0__6_) );
  FA_X1 add_143_U1_7 ( .A(x3k_ext_2__7_), .B(x3k2_ext_0__7_), .CI(
        add_143_carry[7]), .CO(add_143_carry[8]), .S(s_3_0__7_) );
  FA_X1 add_143_U1_8 ( .A(x3k_ext_2__9_), .B(x3k2_ext_0__9_), .CI(
        add_143_carry[8]), .CO(add_143_carry[9]), .S(s_3_0__8_) );
  FA_X1 add_143_U1_9 ( .A(x3k_ext_2__9_), .B(x3k2_ext_0__9_), .CI(
        add_143_carry[9]), .S(s_3_0__9_) );
  OAI211_X1 add_141_U11 ( .C1(x3k2_ext_2__1_), .C2(x3k1_ext_1__1_), .A(
        x3k2_ext_2__0_), .B(x3k1_ext_1__0_), .ZN(add_141_n11) );
  AOI21_X1 add_141_U10 ( .B1(x3k2_ext_2__1_), .B2(x3k1_ext_1__1_), .A(
        add_141_n4), .ZN(add_141_n9) );
  OAI21_X1 add_141_U9 ( .B1(x3k2_ext_2__2_), .B2(add_141_n3), .A(
        x3k1_ext_1__2_), .ZN(add_141_n10) );
  OAI21_X1 add_141_U8 ( .B1(add_141_n9), .B2(add_141_n5), .A(add_141_n10), 
        .ZN(add_141_n7) );
  OAI21_X1 add_141_U7 ( .B1(x3k2_ext_2__3_), .B2(add_141_n7), .A(
        x3k1_ext_1__3_), .ZN(add_141_n8) );
  AOI21_X1 add_141_U6 ( .B1(add_141_n7), .B2(x3k2_ext_2__3_), .A(add_141_n2), 
        .ZN(add_141_n6) );
  INV_X1 add_141_U5 ( .A(add_141_n8), .ZN(add_141_n2) );
  INV_X1 add_141_U4 ( .A(add_141_n6), .ZN(add_141_n1) );
  INV_X1 add_141_U3 ( .A(add_141_n9), .ZN(add_141_n3) );
  INV_X1 add_141_U2 ( .A(x3k2_ext_2__2_), .ZN(add_141_n5) );
  INV_X1 add_141_U1 ( .A(add_141_n11), .ZN(add_141_n4) );
  FA_X1 add_141_U1_4 ( .A(x3k2_ext_2__4_), .B(x3k1_ext_1__4_), .CI(add_141_n1), 
        .CO(add_141_carry[5]), .S(s_2_3__4_) );
  FA_X1 add_141_U1_5 ( .A(x3k2_ext_2__5_), .B(x3k1_ext_1__5_), .CI(
        add_141_carry[5]), .CO(add_141_carry[6]), .S(s_2_3__5_) );
  FA_X1 add_141_U1_6 ( .A(x3k2_ext_2__6_), .B(x3k1_ext_1__6_), .CI(
        add_141_carry[6]), .CO(add_141_carry[7]), .S(s_2_3__6_) );
  FA_X1 add_141_U1_7 ( .A(x3k2_ext_2__7_), .B(x3k1_ext_1__7_), .CI(
        add_141_carry[7]), .CO(add_141_carry[8]), .S(s_2_3__7_) );
  FA_X1 add_141_U1_8 ( .A(x3k2_ext_2__9_), .B(x3k1_ext_1__9_), .CI(
        add_141_carry[8]), .CO(add_141_carry[9]), .S(s_2_3__8_) );
  FA_X1 add_141_U1_9 ( .A(x3k2_ext_2__9_), .B(x3k1_ext_1__9_), .CI(
        add_141_carry[9]), .S(s_2_3__9_) );
  OAI211_X1 add_140_U11 ( .C1(x3k1_ext_2__1_), .C2(x3k2_ext_1__1_), .A(
        x3k1_ext_2__0_), .B(x3k2_ext_1__0_), .ZN(add_140_n11) );
  AOI21_X1 add_140_U10 ( .B1(x3k1_ext_2__1_), .B2(x3k2_ext_1__1_), .A(
        add_140_n4), .ZN(add_140_n9) );
  OAI21_X1 add_140_U9 ( .B1(x3k1_ext_2__2_), .B2(add_140_n3), .A(
        x3k2_ext_1__2_), .ZN(add_140_n10) );
  OAI21_X1 add_140_U8 ( .B1(add_140_n9), .B2(add_140_n5), .A(add_140_n10), 
        .ZN(add_140_n7) );
  OAI21_X1 add_140_U7 ( .B1(x3k1_ext_2__3_), .B2(add_140_n7), .A(
        x3k2_ext_1__3_), .ZN(add_140_n8) );
  AOI21_X1 add_140_U6 ( .B1(add_140_n7), .B2(x3k1_ext_2__3_), .A(add_140_n2), 
        .ZN(add_140_n6) );
  INV_X1 add_140_U5 ( .A(add_140_n8), .ZN(add_140_n2) );
  INV_X1 add_140_U4 ( .A(add_140_n6), .ZN(add_140_n1) );
  INV_X1 add_140_U3 ( .A(add_140_n9), .ZN(add_140_n3) );
  INV_X1 add_140_U2 ( .A(x3k1_ext_2__2_), .ZN(add_140_n5) );
  INV_X1 add_140_U1 ( .A(add_140_n11), .ZN(add_140_n4) );
  FA_X1 add_140_U1_4 ( .A(x3k1_ext_2__4_), .B(x3k2_ext_1__4_), .CI(add_140_n1), 
        .CO(add_140_carry[5]), .S(s_2_2__4_) );
  FA_X1 add_140_U1_5 ( .A(x3k1_ext_2__5_), .B(x3k2_ext_1__5_), .CI(
        add_140_carry[5]), .CO(add_140_carry[6]), .S(s_2_2__5_) );
  FA_X1 add_140_U1_6 ( .A(x3k1_ext_2__6_), .B(x3k2_ext_1__6_), .CI(
        add_140_carry[6]), .CO(add_140_carry[7]), .S(s_2_2__6_) );
  FA_X1 add_140_U1_7 ( .A(x3k1_ext_2__7_), .B(x3k2_ext_1__7_), .CI(
        add_140_carry[7]), .CO(add_140_carry[8]), .S(s_2_2__7_) );
  FA_X1 add_140_U1_8 ( .A(x3k1_ext_2__9_), .B(x3k2_ext_1__9_), .CI(
        add_140_carry[8]), .CO(add_140_carry[9]), .S(s_2_2__8_) );
  FA_X1 add_140_U1_9 ( .A(x3k1_ext_2__9_), .B(x3k2_ext_1__9_), .CI(
        add_140_carry[9]), .S(s_2_2__9_) );
  OAI211_X1 add_139_U11 ( .C1(x3k_ext_0__1_), .C2(x3k_ext_2__1_), .A(
        x3k_ext_0__0_), .B(x3k_ext_2__0_), .ZN(add_139_n11) );
  AOI21_X1 add_139_U10 ( .B1(x3k_ext_0__1_), .B2(x3k_ext_2__1_), .A(add_139_n4), .ZN(add_139_n9) );
  OAI21_X1 add_139_U9 ( .B1(x3k_ext_0__2_), .B2(add_139_n3), .A(x3k_ext_2__2_), 
        .ZN(add_139_n10) );
  OAI21_X1 add_139_U8 ( .B1(add_139_n9), .B2(add_139_n5), .A(add_139_n10), 
        .ZN(add_139_n7) );
  OAI21_X1 add_139_U7 ( .B1(x3k_ext_0__3_), .B2(add_139_n7), .A(x3k_ext_2__3_), 
        .ZN(add_139_n8) );
  AOI21_X1 add_139_U6 ( .B1(add_139_n7), .B2(x3k_ext_0__3_), .A(add_139_n2), 
        .ZN(add_139_n6) );
  INV_X1 add_139_U5 ( .A(add_139_n8), .ZN(add_139_n2) );
  INV_X1 add_139_U4 ( .A(add_139_n6), .ZN(add_139_n1) );
  INV_X1 add_139_U3 ( .A(add_139_n9), .ZN(add_139_n3) );
  INV_X1 add_139_U2 ( .A(x3k_ext_0__2_), .ZN(add_139_n5) );
  INV_X1 add_139_U1 ( .A(add_139_n11), .ZN(add_139_n4) );
  FA_X1 add_139_U1_4 ( .A(x3k_ext_0__4_), .B(x3k_ext_2__4_), .CI(add_139_n1), 
        .CO(add_139_carry[5]), .S(s_2_1__4_) );
  FA_X1 add_139_U1_5 ( .A(x3k_ext_0__5_), .B(x3k_ext_2__5_), .CI(
        add_139_carry[5]), .CO(add_139_carry[6]), .S(s_2_1__5_) );
  FA_X1 add_139_U1_6 ( .A(x3k_ext_0__6_), .B(x3k_ext_2__6_), .CI(
        add_139_carry[6]), .CO(add_139_carry[7]), .S(s_2_1__6_) );
  FA_X1 add_139_U1_7 ( .A(x3k_ext_0__7_), .B(x3k_ext_2__7_), .CI(
        add_139_carry[7]), .CO(add_139_carry[8]), .S(s_2_1__7_) );
  FA_X1 add_139_U1_8 ( .A(x3k_ext_0__9_), .B(x3k_ext_2__9_), .CI(
        add_139_carry[8]), .CO(add_139_carry[9]), .S(s_2_1__8_) );
  FA_X1 add_139_U1_9 ( .A(x3k_ext_0__9_), .B(x3k_ext_2__9_), .CI(
        add_139_carry[9]), .S(s_2_1__9_) );
  OAI211_X1 add_138_U11 ( .C1(x3k1_ext_0__1_), .C2(x3k2_ext_3__1_), .A(
        x3k1_ext_0__0_), .B(x3k2_ext_3__0_), .ZN(add_138_n11) );
  AOI21_X1 add_138_U10 ( .B1(x3k1_ext_0__1_), .B2(x3k2_ext_3__1_), .A(
        add_138_n5), .ZN(add_138_n9) );
  OAI21_X1 add_138_U9 ( .B1(x3k1_ext_0__2_), .B2(add_138_n4), .A(
        x3k2_ext_3__2_), .ZN(add_138_n10) );
  OAI21_X1 add_138_U8 ( .B1(add_138_n9), .B2(add_138_n3), .A(add_138_n10), 
        .ZN(add_138_n7) );
  OAI21_X1 add_138_U7 ( .B1(x3k1_ext_0__3_), .B2(add_138_n7), .A(
        x3k2_ext_3__3_), .ZN(add_138_n8) );
  AOI21_X1 add_138_U6 ( .B1(add_138_n7), .B2(x3k1_ext_0__3_), .A(add_138_n2), 
        .ZN(add_138_n6) );
  INV_X1 add_138_U5 ( .A(add_138_n8), .ZN(add_138_n2) );
  INV_X1 add_138_U4 ( .A(add_138_n6), .ZN(add_138_n1) );
  INV_X1 add_138_U3 ( .A(add_138_n9), .ZN(add_138_n4) );
  INV_X1 add_138_U2 ( .A(x3k1_ext_0__2_), .ZN(add_138_n3) );
  INV_X1 add_138_U1 ( .A(add_138_n11), .ZN(add_138_n5) );
  FA_X1 add_138_U1_4 ( .A(x3k1_ext_0__4_), .B(x3k2_ext_3__4_), .CI(add_138_n1), 
        .CO(add_138_carry[5]), .S(s_2_0__4_) );
  FA_X1 add_138_U1_5 ( .A(x3k1_ext_0__5_), .B(x3k2_ext_3__5_), .CI(
        add_138_carry[5]), .CO(add_138_carry[6]), .S(s_2_0__5_) );
  FA_X1 add_138_U1_6 ( .A(x3k1_ext_0__6_), .B(x3k2_ext_3__6_), .CI(
        add_138_carry[6]), .CO(add_138_carry[7]), .S(s_2_0__6_) );
  FA_X1 add_138_U1_7 ( .A(x3k1_ext_0__7_), .B(x3k2_ext_3__7_), .CI(
        add_138_carry[7]), .CO(add_138_carry[8]), .S(s_2_0__7_) );
  FA_X1 add_138_U1_8 ( .A(x3k1_ext_0__9_), .B(x3k2_ext_3__9_), .CI(
        add_138_carry[8]), .CO(add_138_carry[9]), .S(s_2_0__8_) );
  FA_X1 add_138_U1_9 ( .A(x3k1_ext_0__9_), .B(x3k2_ext_3__9_), .CI(
        add_138_carry[9]), .S(s_2_0__9_) );
  OAI211_X1 add_136_U11 ( .C1(x3k_ext_1__1_), .C2(x3k1_ext_2__1_), .A(
        x3k_ext_1__0_), .B(x3k1_ext_2__0_), .ZN(add_136_n11) );
  AOI21_X1 add_136_U10 ( .B1(x3k_ext_1__1_), .B2(x3k1_ext_2__1_), .A(
        add_136_n5), .ZN(add_136_n9) );
  OAI21_X1 add_136_U9 ( .B1(x3k_ext_1__2_), .B2(add_136_n4), .A(x3k1_ext_2__2_), .ZN(add_136_n10) );
  OAI21_X1 add_136_U8 ( .B1(add_136_n9), .B2(add_136_n3), .A(add_136_n10), 
        .ZN(add_136_n7) );
  OAI21_X1 add_136_U7 ( .B1(x3k_ext_1__3_), .B2(add_136_n7), .A(x3k1_ext_2__3_), .ZN(add_136_n8) );
  AOI21_X1 add_136_U6 ( .B1(add_136_n7), .B2(x3k_ext_1__3_), .A(add_136_n2), 
        .ZN(add_136_n6) );
  INV_X1 add_136_U5 ( .A(add_136_n8), .ZN(add_136_n2) );
  INV_X1 add_136_U4 ( .A(add_136_n6), .ZN(add_136_n1) );
  INV_X1 add_136_U3 ( .A(add_136_n9), .ZN(add_136_n4) );
  INV_X1 add_136_U2 ( .A(x3k_ext_1__2_), .ZN(add_136_n3) );
  INV_X1 add_136_U1 ( .A(add_136_n11), .ZN(add_136_n5) );
  FA_X1 add_136_U1_4 ( .A(x3k_ext_1__4_), .B(x3k1_ext_2__4_), .CI(add_136_n1), 
        .CO(add_136_carry[5]), .S(s_1_3__4_) );
  FA_X1 add_136_U1_5 ( .A(x3k_ext_1__5_), .B(x3k1_ext_2__5_), .CI(
        add_136_carry[5]), .CO(add_136_carry[6]), .S(s_1_3__5_) );
  FA_X1 add_136_U1_6 ( .A(x3k_ext_1__6_), .B(x3k1_ext_2__6_), .CI(
        add_136_carry[6]), .CO(add_136_carry[7]), .S(s_1_3__6_) );
  FA_X1 add_136_U1_7 ( .A(x3k_ext_1__7_), .B(x3k1_ext_2__7_), .CI(
        add_136_carry[7]), .CO(add_136_carry[8]), .S(s_1_3__7_) );
  FA_X1 add_136_U1_8 ( .A(x3k_ext_1__9_), .B(x3k1_ext_2__9_), .CI(
        add_136_carry[8]), .CO(add_136_carry[9]), .S(s_1_3__8_) );
  FA_X1 add_136_U1_9 ( .A(x3k_ext_1__9_), .B(x3k1_ext_2__9_), .CI(
        add_136_carry[9]), .S(s_1_3__9_) );
  OAI211_X1 add_135_U11 ( .C1(x3k_ext_2__1_), .C2(x3k1_ext_1__1_), .A(
        x3k_ext_2__0_), .B(x3k1_ext_1__0_), .ZN(add_135_n11) );
  AOI21_X1 add_135_U10 ( .B1(x3k_ext_2__1_), .B2(x3k1_ext_1__1_), .A(
        add_135_n4), .ZN(add_135_n9) );
  OAI21_X1 add_135_U9 ( .B1(x3k_ext_2__2_), .B2(add_135_n3), .A(x3k1_ext_1__2_), .ZN(add_135_n10) );
  OAI21_X1 add_135_U8 ( .B1(add_135_n9), .B2(add_135_n5), .A(add_135_n10), 
        .ZN(add_135_n7) );
  OAI21_X1 add_135_U7 ( .B1(x3k_ext_2__3_), .B2(add_135_n7), .A(x3k1_ext_1__3_), .ZN(add_135_n8) );
  AOI21_X1 add_135_U6 ( .B1(add_135_n7), .B2(x3k_ext_2__3_), .A(add_135_n2), 
        .ZN(add_135_n6) );
  INV_X1 add_135_U5 ( .A(add_135_n8), .ZN(add_135_n2) );
  INV_X1 add_135_U4 ( .A(add_135_n6), .ZN(add_135_n1) );
  INV_X1 add_135_U3 ( .A(add_135_n9), .ZN(add_135_n3) );
  INV_X1 add_135_U2 ( .A(x3k_ext_2__2_), .ZN(add_135_n5) );
  INV_X1 add_135_U1 ( .A(add_135_n11), .ZN(add_135_n4) );
  FA_X1 add_135_U1_4 ( .A(x3k_ext_2__4_), .B(x3k1_ext_1__4_), .CI(add_135_n1), 
        .CO(add_135_carry[5]), .S(s_1_2__4_) );
  FA_X1 add_135_U1_5 ( .A(x3k_ext_2__5_), .B(x3k1_ext_1__5_), .CI(
        add_135_carry[5]), .CO(add_135_carry[6]), .S(s_1_2__5_) );
  FA_X1 add_135_U1_6 ( .A(x3k_ext_2__6_), .B(x3k1_ext_1__6_), .CI(
        add_135_carry[6]), .CO(add_135_carry[7]), .S(s_1_2__6_) );
  FA_X1 add_135_U1_7 ( .A(x3k_ext_2__7_), .B(x3k1_ext_1__7_), .CI(
        add_135_carry[7]), .CO(add_135_carry[8]), .S(s_1_2__7_) );
  FA_X1 add_135_U1_8 ( .A(x3k_ext_2__9_), .B(x3k1_ext_1__9_), .CI(
        add_135_carry[8]), .CO(add_135_carry[9]), .S(s_1_2__8_) );
  FA_X1 add_135_U1_9 ( .A(x3k_ext_2__9_), .B(x3k1_ext_1__9_), .CI(
        add_135_carry[9]), .S(s_1_2__9_) );
  OAI211_X1 add_134_U11 ( .C1(x3k2_ext_1__1_), .C2(x3k2_ext_3__1_), .A(
        x3k2_ext_1__0_), .B(x3k2_ext_3__0_), .ZN(add_134_n11) );
  AOI21_X1 add_134_U10 ( .B1(x3k2_ext_1__1_), .B2(x3k2_ext_3__1_), .A(
        add_134_n5), .ZN(add_134_n9) );
  OAI21_X1 add_134_U9 ( .B1(x3k2_ext_1__2_), .B2(add_134_n4), .A(
        x3k2_ext_3__2_), .ZN(add_134_n10) );
  OAI21_X1 add_134_U8 ( .B1(add_134_n9), .B2(add_134_n3), .A(add_134_n10), 
        .ZN(add_134_n7) );
  OAI21_X1 add_134_U7 ( .B1(x3k2_ext_1__3_), .B2(add_134_n7), .A(
        x3k2_ext_3__3_), .ZN(add_134_n8) );
  AOI21_X1 add_134_U6 ( .B1(add_134_n7), .B2(x3k2_ext_1__3_), .A(add_134_n2), 
        .ZN(add_134_n6) );
  INV_X1 add_134_U5 ( .A(add_134_n8), .ZN(add_134_n2) );
  INV_X1 add_134_U4 ( .A(add_134_n6), .ZN(add_134_n1) );
  INV_X1 add_134_U3 ( .A(add_134_n9), .ZN(add_134_n4) );
  INV_X1 add_134_U2 ( .A(x3k2_ext_1__2_), .ZN(add_134_n3) );
  INV_X1 add_134_U1 ( .A(add_134_n11), .ZN(add_134_n5) );
  FA_X1 add_134_U1_4 ( .A(x3k2_ext_1__4_), .B(x3k2_ext_3__4_), .CI(add_134_n1), 
        .CO(add_134_carry[5]), .S(s_1_1__4_) );
  FA_X1 add_134_U1_5 ( .A(x3k2_ext_1__5_), .B(x3k2_ext_3__5_), .CI(
        add_134_carry[5]), .CO(add_134_carry[6]), .S(s_1_1__5_) );
  FA_X1 add_134_U1_6 ( .A(x3k2_ext_1__6_), .B(x3k2_ext_3__6_), .CI(
        add_134_carry[6]), .CO(add_134_carry[7]), .S(s_1_1__6_) );
  FA_X1 add_134_U1_7 ( .A(x3k2_ext_1__7_), .B(x3k2_ext_3__7_), .CI(
        add_134_carry[7]), .CO(add_134_carry[8]), .S(s_1_1__7_) );
  FA_X1 add_134_U1_8 ( .A(x3k2_ext_1__9_), .B(x3k2_ext_3__9_), .CI(
        add_134_carry[8]), .CO(add_134_carry[9]), .S(s_1_1__8_) );
  FA_X1 add_134_U1_9 ( .A(x3k2_ext_1__9_), .B(x3k2_ext_3__9_), .CI(
        add_134_carry[9]), .S(s_1_1__9_) );
  OAI211_X1 add_133_U11 ( .C1(x3k_ext_0__1_), .C2(x3k1_ext_3__1_), .A(
        x3k_ext_0__0_), .B(x3k1_ext_3__0_), .ZN(add_133_n11) );
  AOI21_X1 add_133_U10 ( .B1(x3k_ext_0__1_), .B2(x3k1_ext_3__1_), .A(
        add_133_n4), .ZN(add_133_n9) );
  OAI21_X1 add_133_U9 ( .B1(x3k_ext_0__2_), .B2(add_133_n3), .A(x3k1_ext_3__2_), .ZN(add_133_n10) );
  OAI21_X1 add_133_U8 ( .B1(add_133_n9), .B2(add_133_n5), .A(add_133_n10), 
        .ZN(add_133_n7) );
  OAI21_X1 add_133_U7 ( .B1(x3k_ext_0__3_), .B2(add_133_n7), .A(x3k1_ext_3__3_), .ZN(add_133_n8) );
  AOI21_X1 add_133_U6 ( .B1(add_133_n7), .B2(x3k_ext_0__3_), .A(add_133_n2), 
        .ZN(add_133_n6) );
  INV_X1 add_133_U5 ( .A(add_133_n8), .ZN(add_133_n2) );
  INV_X1 add_133_U4 ( .A(add_133_n6), .ZN(add_133_n1) );
  INV_X1 add_133_U3 ( .A(add_133_n9), .ZN(add_133_n3) );
  INV_X1 add_133_U2 ( .A(x3k_ext_0__2_), .ZN(add_133_n5) );
  INV_X1 add_133_U1 ( .A(add_133_n11), .ZN(add_133_n4) );
  FA_X1 add_133_U1_4 ( .A(x3k_ext_0__4_), .B(x3k1_ext_3__4_), .CI(add_133_n1), 
        .CO(add_133_carry[5]), .S(s_1_0__4_) );
  FA_X1 add_133_U1_5 ( .A(x3k_ext_0__5_), .B(x3k1_ext_3__5_), .CI(
        add_133_carry[5]), .CO(add_133_carry[6]), .S(s_1_0__5_) );
  FA_X1 add_133_U1_6 ( .A(x3k_ext_0__6_), .B(x3k1_ext_3__6_), .CI(
        add_133_carry[6]), .CO(add_133_carry[7]), .S(s_1_0__6_) );
  FA_X1 add_133_U1_7 ( .A(x3k_ext_0__7_), .B(x3k1_ext_3__7_), .CI(
        add_133_carry[7]), .CO(add_133_carry[8]), .S(s_1_0__7_) );
  FA_X1 add_133_U1_8 ( .A(x3k_ext_0__9_), .B(x3k1_ext_3__9_), .CI(
        add_133_carry[8]), .CO(add_133_carry[9]), .S(s_1_0__8_) );
  FA_X1 add_133_U1_9 ( .A(x3k_ext_0__9_), .B(x3k1_ext_3__9_), .CI(
        add_133_carry[9]), .S(s_1_0__9_) );
  AND2_X1 add_1_root_add_0_root_add_232_U2 ( .A1(p_2s_4__0_), .A2(p_2s_3__0_), 
        .ZN(add_1_root_add_0_root_add_232_n2) );
  XOR2_X1 add_1_root_add_0_root_add_232_U1 ( .A(p_2s_4__0_), .B(p_2s_3__0_), 
        .Z(s_21_2__0_) );
  FA_X1 add_1_root_add_0_root_add_232_U1_1 ( .A(p_2s_3__1_), .B(p_2s_4__1_), 
        .CI(add_1_root_add_0_root_add_232_n2), .CO(
        add_1_root_add_0_root_add_232_carry[2]), .S(s_21_2__1_) );
  FA_X1 add_1_root_add_0_root_add_232_U1_2 ( .A(p_2s_3__2_), .B(p_2s_4__2_), 
        .CI(add_1_root_add_0_root_add_232_carry[2]), .CO(
        add_1_root_add_0_root_add_232_carry[3]), .S(s_21_2__2_) );
  FA_X1 add_1_root_add_0_root_add_232_U1_3 ( .A(p_2s_3__3_), .B(p_2s_4__3_), 
        .CI(add_1_root_add_0_root_add_232_carry[3]), .CO(
        add_1_root_add_0_root_add_232_carry[4]), .S(s_21_2__3_) );
  FA_X1 add_1_root_add_0_root_add_232_U1_4 ( .A(p_2s_3__4_), .B(p_2s_4__4_), 
        .CI(add_1_root_add_0_root_add_232_carry[4]), .CO(
        add_1_root_add_0_root_add_232_carry[5]), .S(s_21_2__4_) );
  FA_X1 add_1_root_add_0_root_add_232_U1_5 ( .A(p_2s_3__5_), .B(p_2s_4__5_), 
        .CI(add_1_root_add_0_root_add_232_carry[5]), .CO(
        add_1_root_add_0_root_add_232_carry[6]), .S(s_21_2__5_) );
  FA_X1 add_1_root_add_0_root_add_232_U1_6 ( .A(p_2s_3__6_), .B(p_2s_4__6_), 
        .CI(add_1_root_add_0_root_add_232_carry[6]), .CO(
        add_1_root_add_0_root_add_232_carry[7]), .S(s_21_2__6_) );
  FA_X1 add_1_root_add_0_root_add_232_U1_7 ( .A(p_2s_3__7_), .B(p_2s_4__7_), 
        .CI(add_1_root_add_0_root_add_232_carry[7]), .CO(
        add_1_root_add_0_root_add_232_carry[8]), .S(s_21_2__7_) );
  FA_X1 add_1_root_add_0_root_add_232_U1_8 ( .A(p_2s_3__8_), .B(p_2s_4__8_), 
        .CI(add_1_root_add_0_root_add_232_carry[8]), .S(s_21_2__8_) );
  AND2_X1 add_0_root_add_0_root_add_232_U2 ( .A1(s_21_2__0_), .A2(s_21_p[0]), 
        .ZN(add_0_root_add_0_root_add_232_n2) );
  XOR2_X1 add_0_root_add_0_root_add_232_U1 ( .A(s_21_2__0_), .B(s_21_p[0]), 
        .Z(s_21_3__0_) );
  FA_X1 add_0_root_add_0_root_add_232_U1_1 ( .A(s_21_p[1]), .B(s_21_2__1_), 
        .CI(add_0_root_add_0_root_add_232_n2), .CO(
        add_0_root_add_0_root_add_232_carry[2]), .S(s_21_3__1_) );
  FA_X1 add_0_root_add_0_root_add_232_U1_2 ( .A(s_21_p[2]), .B(s_21_2__2_), 
        .CI(add_0_root_add_0_root_add_232_carry[2]), .CO(
        add_0_root_add_0_root_add_232_carry[3]), .S(s_21_3__2_) );
  FA_X1 add_0_root_add_0_root_add_232_U1_3 ( .A(s_21_p[3]), .B(s_21_2__3_), 
        .CI(add_0_root_add_0_root_add_232_carry[3]), .CO(
        add_0_root_add_0_root_add_232_carry[4]), .S(s_21_3__3_) );
  FA_X1 add_0_root_add_0_root_add_232_U1_4 ( .A(s_21_p[4]), .B(s_21_2__4_), 
        .CI(add_0_root_add_0_root_add_232_carry[4]), .CO(
        add_0_root_add_0_root_add_232_carry[5]), .S(s_21_3__4_) );
  FA_X1 add_0_root_add_0_root_add_232_U1_5 ( .A(s_21_p[5]), .B(s_21_2__5_), 
        .CI(add_0_root_add_0_root_add_232_carry[5]), .CO(
        add_0_root_add_0_root_add_232_carry[6]), .S(s_21_3__5_) );
  FA_X1 add_0_root_add_0_root_add_232_U1_6 ( .A(s_21_p[6]), .B(s_21_2__6_), 
        .CI(add_0_root_add_0_root_add_232_carry[6]), .CO(
        add_0_root_add_0_root_add_232_carry[7]), .S(s_21_3__6_) );
  FA_X1 add_0_root_add_0_root_add_232_U1_7 ( .A(s_21_p[7]), .B(s_21_2__7_), 
        .CI(add_0_root_add_0_root_add_232_carry[7]), .CO(
        add_0_root_add_0_root_add_232_carry[8]), .S(s_21_3__7_) );
  FA_X1 add_0_root_add_0_root_add_232_U1_8 ( .A(s_21_p[8]), .B(s_21_2__8_), 
        .CI(add_0_root_add_0_root_add_232_carry[8]), .S(s_21_3__8_) );
  AND2_X1 add_1_root_add_0_root_add_227_U2 ( .A1(p_1s_4__0_), .A2(p_1s_3__0_), 
        .ZN(add_1_root_add_0_root_add_227_n2) );
  XOR2_X1 add_1_root_add_0_root_add_227_U1 ( .A(p_1s_4__0_), .B(p_1s_3__0_), 
        .Z(s_11_2__0_) );
  FA_X1 add_1_root_add_0_root_add_227_U1_1 ( .A(p_1s_3__1_), .B(p_1s_4__1_), 
        .CI(add_1_root_add_0_root_add_227_n2), .CO(
        add_1_root_add_0_root_add_227_carry[2]), .S(s_11_2__1_) );
  FA_X1 add_1_root_add_0_root_add_227_U1_2 ( .A(p_1s_3__2_), .B(p_1s_4__2_), 
        .CI(add_1_root_add_0_root_add_227_carry[2]), .CO(
        add_1_root_add_0_root_add_227_carry[3]), .S(s_11_2__2_) );
  FA_X1 add_1_root_add_0_root_add_227_U1_3 ( .A(p_1s_3__3_), .B(p_1s_4__3_), 
        .CI(add_1_root_add_0_root_add_227_carry[3]), .CO(
        add_1_root_add_0_root_add_227_carry[4]), .S(s_11_2__3_) );
  FA_X1 add_1_root_add_0_root_add_227_U1_4 ( .A(p_1s_3__4_), .B(p_1s_4__4_), 
        .CI(add_1_root_add_0_root_add_227_carry[4]), .CO(
        add_1_root_add_0_root_add_227_carry[5]), .S(s_11_2__4_) );
  FA_X1 add_1_root_add_0_root_add_227_U1_5 ( .A(p_1s_3__5_), .B(p_1s_4__5_), 
        .CI(add_1_root_add_0_root_add_227_carry[5]), .CO(
        add_1_root_add_0_root_add_227_carry[6]), .S(s_11_2__5_) );
  FA_X1 add_1_root_add_0_root_add_227_U1_6 ( .A(p_1s_3__6_), .B(p_1s_4__6_), 
        .CI(add_1_root_add_0_root_add_227_carry[6]), .CO(
        add_1_root_add_0_root_add_227_carry[7]), .S(s_11_2__6_) );
  FA_X1 add_1_root_add_0_root_add_227_U1_7 ( .A(p_1s_3__7_), .B(p_1s_4__7_), 
        .CI(add_1_root_add_0_root_add_227_carry[7]), .CO(
        add_1_root_add_0_root_add_227_carry[8]), .S(s_11_2__7_) );
  FA_X1 add_1_root_add_0_root_add_227_U1_8 ( .A(p_1s_3__8_), .B(p_1s_4__8_), 
        .CI(add_1_root_add_0_root_add_227_carry[8]), .S(s_11_2__8_) );
  AND2_X1 add_0_root_add_0_root_add_227_U2 ( .A1(s_11_2__0_), .A2(s_11_p[0]), 
        .ZN(add_0_root_add_0_root_add_227_n2) );
  XOR2_X1 add_0_root_add_0_root_add_227_U1 ( .A(s_11_2__0_), .B(s_11_p[0]), 
        .Z(s_11_3__0_) );
  FA_X1 add_0_root_add_0_root_add_227_U1_1 ( .A(s_11_p[1]), .B(s_11_2__1_), 
        .CI(add_0_root_add_0_root_add_227_n2), .CO(
        add_0_root_add_0_root_add_227_carry[2]), .S(s_11_3__1_) );
  FA_X1 add_0_root_add_0_root_add_227_U1_2 ( .A(s_11_p[2]), .B(s_11_2__2_), 
        .CI(add_0_root_add_0_root_add_227_carry[2]), .CO(
        add_0_root_add_0_root_add_227_carry[3]), .S(s_11_3__2_) );
  FA_X1 add_0_root_add_0_root_add_227_U1_3 ( .A(s_11_p[3]), .B(s_11_2__3_), 
        .CI(add_0_root_add_0_root_add_227_carry[3]), .CO(
        add_0_root_add_0_root_add_227_carry[4]), .S(s_11_3__3_) );
  FA_X1 add_0_root_add_0_root_add_227_U1_4 ( .A(s_11_p[4]), .B(s_11_2__4_), 
        .CI(add_0_root_add_0_root_add_227_carry[4]), .CO(
        add_0_root_add_0_root_add_227_carry[5]), .S(s_11_3__4_) );
  FA_X1 add_0_root_add_0_root_add_227_U1_5 ( .A(s_11_p[5]), .B(s_11_2__5_), 
        .CI(add_0_root_add_0_root_add_227_carry[5]), .CO(
        add_0_root_add_0_root_add_227_carry[6]), .S(s_11_3__5_) );
  FA_X1 add_0_root_add_0_root_add_227_U1_6 ( .A(s_11_p[6]), .B(s_11_2__6_), 
        .CI(add_0_root_add_0_root_add_227_carry[6]), .CO(
        add_0_root_add_0_root_add_227_carry[7]), .S(s_11_3__6_) );
  FA_X1 add_0_root_add_0_root_add_227_U1_7 ( .A(s_11_p[7]), .B(s_11_2__7_), 
        .CI(add_0_root_add_0_root_add_227_carry[7]), .CO(
        add_0_root_add_0_root_add_227_carry[8]), .S(s_11_3__7_) );
  FA_X1 add_0_root_add_0_root_add_227_U1_8 ( .A(s_11_p[8]), .B(s_11_2__8_), 
        .CI(add_0_root_add_0_root_add_227_carry[8]), .S(s_11_3__8_) );
  AND2_X1 add_1_root_add_0_root_add_237_U2 ( .A1(p_3s_4__0_), .A2(p_3s_3__0_), 
        .ZN(add_1_root_add_0_root_add_237_n2) );
  XOR2_X1 add_1_root_add_0_root_add_237_U1 ( .A(p_3s_4__0_), .B(p_3s_3__0_), 
        .Z(s_31_2__0_) );
  FA_X1 add_1_root_add_0_root_add_237_U1_1 ( .A(p_3s_3__1_), .B(p_3s_4__1_), 
        .CI(add_1_root_add_0_root_add_237_n2), .CO(
        add_1_root_add_0_root_add_237_carry[2]), .S(s_31_2__1_) );
  FA_X1 add_1_root_add_0_root_add_237_U1_2 ( .A(p_3s_3__2_), .B(p_3s_4__2_), 
        .CI(add_1_root_add_0_root_add_237_carry[2]), .CO(
        add_1_root_add_0_root_add_237_carry[3]), .S(s_31_2__2_) );
  FA_X1 add_1_root_add_0_root_add_237_U1_3 ( .A(p_3s_3__3_), .B(p_3s_4__3_), 
        .CI(add_1_root_add_0_root_add_237_carry[3]), .CO(
        add_1_root_add_0_root_add_237_carry[4]), .S(s_31_2__3_) );
  FA_X1 add_1_root_add_0_root_add_237_U1_4 ( .A(p_3s_3__4_), .B(p_3s_4__4_), 
        .CI(add_1_root_add_0_root_add_237_carry[4]), .CO(
        add_1_root_add_0_root_add_237_carry[5]), .S(s_31_2__4_) );
  FA_X1 add_1_root_add_0_root_add_237_U1_5 ( .A(p_3s_3__5_), .B(p_3s_4__5_), 
        .CI(add_1_root_add_0_root_add_237_carry[5]), .CO(
        add_1_root_add_0_root_add_237_carry[6]), .S(s_31_2__5_) );
  FA_X1 add_1_root_add_0_root_add_237_U1_6 ( .A(p_3s_3__6_), .B(p_3s_4__6_), 
        .CI(add_1_root_add_0_root_add_237_carry[6]), .CO(
        add_1_root_add_0_root_add_237_carry[7]), .S(s_31_2__6_) );
  FA_X1 add_1_root_add_0_root_add_237_U1_7 ( .A(p_3s_3__7_), .B(p_3s_4__7_), 
        .CI(add_1_root_add_0_root_add_237_carry[7]), .CO(
        add_1_root_add_0_root_add_237_carry[8]), .S(s_31_2__7_) );
  FA_X1 add_1_root_add_0_root_add_237_U1_8 ( .A(p_3s_3__8_), .B(p_3s_4__8_), 
        .CI(add_1_root_add_0_root_add_237_carry[8]), .S(s_31_2__8_) );
  AND2_X1 add_0_root_add_0_root_add_237_U2 ( .A1(s_31_2__0_), .A2(s_31_p[0]), 
        .ZN(add_0_root_add_0_root_add_237_n2) );
  XOR2_X1 add_0_root_add_0_root_add_237_U1 ( .A(s_31_2__0_), .B(s_31_p[0]), 
        .Z(s_31_3__0_) );
  FA_X1 add_0_root_add_0_root_add_237_U1_1 ( .A(s_31_p[1]), .B(s_31_2__1_), 
        .CI(add_0_root_add_0_root_add_237_n2), .CO(
        add_0_root_add_0_root_add_237_carry[2]), .S(s_31_3__1_) );
  FA_X1 add_0_root_add_0_root_add_237_U1_2 ( .A(s_31_p[2]), .B(s_31_2__2_), 
        .CI(add_0_root_add_0_root_add_237_carry[2]), .CO(
        add_0_root_add_0_root_add_237_carry[3]), .S(s_31_3__2_) );
  FA_X1 add_0_root_add_0_root_add_237_U1_3 ( .A(s_31_p[3]), .B(s_31_2__3_), 
        .CI(add_0_root_add_0_root_add_237_carry[3]), .CO(
        add_0_root_add_0_root_add_237_carry[4]), .S(s_31_3__3_) );
  FA_X1 add_0_root_add_0_root_add_237_U1_4 ( .A(s_31_p[4]), .B(s_31_2__4_), 
        .CI(add_0_root_add_0_root_add_237_carry[4]), .CO(
        add_0_root_add_0_root_add_237_carry[5]), .S(s_31_3__4_) );
  FA_X1 add_0_root_add_0_root_add_237_U1_5 ( .A(s_31_p[5]), .B(s_31_2__5_), 
        .CI(add_0_root_add_0_root_add_237_carry[5]), .CO(
        add_0_root_add_0_root_add_237_carry[6]), .S(s_31_3__5_) );
  FA_X1 add_0_root_add_0_root_add_237_U1_6 ( .A(s_31_p[6]), .B(s_31_2__6_), 
        .CI(add_0_root_add_0_root_add_237_carry[6]), .CO(
        add_0_root_add_0_root_add_237_carry[7]), .S(s_31_3__6_) );
  FA_X1 add_0_root_add_0_root_add_237_U1_7 ( .A(s_31_p[7]), .B(s_31_2__7_), 
        .CI(add_0_root_add_0_root_add_237_carry[7]), .CO(
        add_0_root_add_0_root_add_237_carry[8]), .S(s_31_3__7_) );
  FA_X1 add_0_root_add_0_root_add_237_U1_8 ( .A(s_31_p[8]), .B(s_31_2__8_), 
        .CI(add_0_root_add_0_root_add_237_carry[8]), .S(s_31_3__8_) );
  XOR2_X1 add_1_root_add_0_root_add_230_U2 ( .A(p_2s_2__0_), .B(p_2s_1__0_), 
        .Z(s_21_0__0_) );
  AND2_X1 add_1_root_add_0_root_add_230_U1 ( .A1(p_2s_2__0_), .A2(p_2s_1__0_), 
        .ZN(add_1_root_add_0_root_add_230_n1) );
  FA_X1 add_1_root_add_0_root_add_230_U1_1 ( .A(p_2s_1__1_), .B(p_2s_2__1_), 
        .CI(add_1_root_add_0_root_add_230_n1), .CO(
        add_1_root_add_0_root_add_230_carry[2]), .S(s_21_0__1_) );
  FA_X1 add_1_root_add_0_root_add_230_U1_2 ( .A(p_2s_1__2_), .B(p_2s_2__2_), 
        .CI(add_1_root_add_0_root_add_230_carry[2]), .CO(
        add_1_root_add_0_root_add_230_carry[3]), .S(s_21_0__2_) );
  FA_X1 add_1_root_add_0_root_add_230_U1_3 ( .A(p_2s_1__3_), .B(p_2s_2__3_), 
        .CI(add_1_root_add_0_root_add_230_carry[3]), .CO(
        add_1_root_add_0_root_add_230_carry[4]), .S(s_21_0__3_) );
  FA_X1 add_1_root_add_0_root_add_230_U1_4 ( .A(p_2s_1__4_), .B(p_2s_2__4_), 
        .CI(add_1_root_add_0_root_add_230_carry[4]), .CO(
        add_1_root_add_0_root_add_230_carry[5]), .S(s_21_0__4_) );
  FA_X1 add_1_root_add_0_root_add_230_U1_5 ( .A(p_2s_1__5_), .B(p_2s_2__5_), 
        .CI(add_1_root_add_0_root_add_230_carry[5]), .CO(
        add_1_root_add_0_root_add_230_carry[6]), .S(s_21_0__5_) );
  FA_X1 add_1_root_add_0_root_add_230_U1_6 ( .A(p_2s_1__6_), .B(p_2s_2__6_), 
        .CI(add_1_root_add_0_root_add_230_carry[6]), .CO(
        add_1_root_add_0_root_add_230_carry[7]), .S(s_21_0__6_) );
  FA_X1 add_1_root_add_0_root_add_230_U1_7 ( .A(p_2s_1__7_), .B(p_2s_2__7_), 
        .CI(add_1_root_add_0_root_add_230_carry[7]), .CO(
        add_1_root_add_0_root_add_230_carry[8]), .S(s_21_0__7_) );
  FA_X1 add_1_root_add_0_root_add_230_U1_8 ( .A(p_2s_1__8_), .B(p_2s_2__8_), 
        .CI(add_1_root_add_0_root_add_230_carry[8]), .CO(
        add_1_root_add_0_root_add_230_carry[9]), .S(s_21_0__8_) );
  FA_X1 add_1_root_add_0_root_add_230_U1_9 ( .A(p_2s_1__10_), .B(p_2s_2__10_), 
        .CI(add_1_root_add_0_root_add_230_carry[9]), .S(s_21_0__9_) );
  AND2_X1 add_0_root_add_0_root_add_230_U2 ( .A1(s_21_0__0_), .A2(p_2s_0__0_), 
        .ZN(add_0_root_add_0_root_add_230_n2) );
  XOR2_X1 add_0_root_add_0_root_add_230_U1 ( .A(s_21_0__0_), .B(p_2s_0__0_), 
        .Z(s_21_1__0_) );
  FA_X1 add_0_root_add_0_root_add_230_U1_1 ( .A(p_2s_0__1_), .B(s_21_0__1_), 
        .CI(add_0_root_add_0_root_add_230_n2), .CO(
        add_0_root_add_0_root_add_230_carry[2]), .S(s_21_1__1_) );
  FA_X1 add_0_root_add_0_root_add_230_U1_2 ( .A(p_2s_0__2_), .B(s_21_0__2_), 
        .CI(add_0_root_add_0_root_add_230_carry[2]), .CO(
        add_0_root_add_0_root_add_230_carry[3]), .S(s_21_1__2_) );
  FA_X1 add_0_root_add_0_root_add_230_U1_3 ( .A(p_2s_0__3_), .B(s_21_0__3_), 
        .CI(add_0_root_add_0_root_add_230_carry[3]), .CO(
        add_0_root_add_0_root_add_230_carry[4]), .S(s_21_1__3_) );
  FA_X1 add_0_root_add_0_root_add_230_U1_4 ( .A(p_2s_0__4_), .B(s_21_0__4_), 
        .CI(add_0_root_add_0_root_add_230_carry[4]), .CO(
        add_0_root_add_0_root_add_230_carry[5]), .S(s_21_1__4_) );
  FA_X1 add_0_root_add_0_root_add_230_U1_5 ( .A(p_2s_0__5_), .B(s_21_0__5_), 
        .CI(add_0_root_add_0_root_add_230_carry[5]), .CO(
        add_0_root_add_0_root_add_230_carry[6]), .S(s_21_1__5_) );
  FA_X1 add_0_root_add_0_root_add_230_U1_6 ( .A(p_2s_0__6_), .B(s_21_0__6_), 
        .CI(add_0_root_add_0_root_add_230_carry[6]), .CO(
        add_0_root_add_0_root_add_230_carry[7]), .S(s_21_1__6_) );
  FA_X1 add_0_root_add_0_root_add_230_U1_7 ( .A(p_2s_0__7_), .B(s_21_0__7_), 
        .CI(add_0_root_add_0_root_add_230_carry[7]), .CO(
        add_0_root_add_0_root_add_230_carry[8]), .S(s_21_1__7_) );
  FA_X1 add_0_root_add_0_root_add_230_U1_8 ( .A(p_2s_0__8_), .B(s_21_0__8_), 
        .CI(add_0_root_add_0_root_add_230_carry[8]), .CO(
        add_0_root_add_0_root_add_230_carry[9]), .S(s_21_1__8_) );
  FA_X1 add_0_root_add_0_root_add_230_U1_9 ( .A(p_2s_0__10_), .B(s_21_0__9_), 
        .CI(add_0_root_add_0_root_add_230_carry[9]), .S(s_21_1__9_) );
  XOR2_X1 add_1_root_add_0_root_add_225_U2 ( .A(p_1s_2__0_), .B(p_1s_1__0_), 
        .Z(s_11_0__0_) );
  AND2_X1 add_1_root_add_0_root_add_225_U1 ( .A1(p_1s_2__0_), .A2(p_1s_1__0_), 
        .ZN(add_1_root_add_0_root_add_225_n1) );
  FA_X1 add_1_root_add_0_root_add_225_U1_1 ( .A(p_1s_1__1_), .B(p_1s_2__1_), 
        .CI(add_1_root_add_0_root_add_225_n1), .CO(
        add_1_root_add_0_root_add_225_carry[2]), .S(s_11_0__1_) );
  FA_X1 add_1_root_add_0_root_add_225_U1_2 ( .A(p_1s_1__2_), .B(p_1s_2__2_), 
        .CI(add_1_root_add_0_root_add_225_carry[2]), .CO(
        add_1_root_add_0_root_add_225_carry[3]), .S(s_11_0__2_) );
  FA_X1 add_1_root_add_0_root_add_225_U1_3 ( .A(p_1s_1__3_), .B(p_1s_2__3_), 
        .CI(add_1_root_add_0_root_add_225_carry[3]), .CO(
        add_1_root_add_0_root_add_225_carry[4]), .S(s_11_0__3_) );
  FA_X1 add_1_root_add_0_root_add_225_U1_4 ( .A(p_1s_1__4_), .B(p_1s_2__4_), 
        .CI(add_1_root_add_0_root_add_225_carry[4]), .CO(
        add_1_root_add_0_root_add_225_carry[5]), .S(s_11_0__4_) );
  FA_X1 add_1_root_add_0_root_add_225_U1_5 ( .A(p_1s_1__5_), .B(p_1s_2__5_), 
        .CI(add_1_root_add_0_root_add_225_carry[5]), .CO(
        add_1_root_add_0_root_add_225_carry[6]), .S(s_11_0__5_) );
  FA_X1 add_1_root_add_0_root_add_225_U1_6 ( .A(p_1s_1__6_), .B(p_1s_2__6_), 
        .CI(add_1_root_add_0_root_add_225_carry[6]), .CO(
        add_1_root_add_0_root_add_225_carry[7]), .S(s_11_0__6_) );
  FA_X1 add_1_root_add_0_root_add_225_U1_7 ( .A(p_1s_1__7_), .B(p_1s_2__7_), 
        .CI(add_1_root_add_0_root_add_225_carry[7]), .CO(
        add_1_root_add_0_root_add_225_carry[8]), .S(s_11_0__7_) );
  FA_X1 add_1_root_add_0_root_add_225_U1_8 ( .A(p_1s_1__8_), .B(p_1s_2__8_), 
        .CI(add_1_root_add_0_root_add_225_carry[8]), .CO(
        add_1_root_add_0_root_add_225_carry[9]), .S(s_11_0__8_) );
  FA_X1 add_1_root_add_0_root_add_225_U1_9 ( .A(p_1s_1__10_), .B(p_1s_2__10_), 
        .CI(add_1_root_add_0_root_add_225_carry[9]), .S(s_11_0__9_) );
  AND2_X1 add_0_root_add_0_root_add_225_U2 ( .A1(s_11_0__0_), .A2(p_1s_0__0_), 
        .ZN(add_0_root_add_0_root_add_225_n2) );
  XOR2_X1 add_0_root_add_0_root_add_225_U1 ( .A(s_11_0__0_), .B(p_1s_0__0_), 
        .Z(s_11_1__0_) );
  FA_X1 add_0_root_add_0_root_add_225_U1_1 ( .A(p_1s_0__1_), .B(s_11_0__1_), 
        .CI(add_0_root_add_0_root_add_225_n2), .CO(
        add_0_root_add_0_root_add_225_carry[2]), .S(s_11_1__1_) );
  FA_X1 add_0_root_add_0_root_add_225_U1_2 ( .A(p_1s_0__2_), .B(s_11_0__2_), 
        .CI(add_0_root_add_0_root_add_225_carry[2]), .CO(
        add_0_root_add_0_root_add_225_carry[3]), .S(s_11_1__2_) );
  FA_X1 add_0_root_add_0_root_add_225_U1_3 ( .A(p_1s_0__3_), .B(s_11_0__3_), 
        .CI(add_0_root_add_0_root_add_225_carry[3]), .CO(
        add_0_root_add_0_root_add_225_carry[4]), .S(s_11_1__3_) );
  FA_X1 add_0_root_add_0_root_add_225_U1_4 ( .A(p_1s_0__4_), .B(s_11_0__4_), 
        .CI(add_0_root_add_0_root_add_225_carry[4]), .CO(
        add_0_root_add_0_root_add_225_carry[5]), .S(s_11_1__4_) );
  FA_X1 add_0_root_add_0_root_add_225_U1_5 ( .A(p_1s_0__5_), .B(s_11_0__5_), 
        .CI(add_0_root_add_0_root_add_225_carry[5]), .CO(
        add_0_root_add_0_root_add_225_carry[6]), .S(s_11_1__5_) );
  FA_X1 add_0_root_add_0_root_add_225_U1_6 ( .A(p_1s_0__6_), .B(s_11_0__6_), 
        .CI(add_0_root_add_0_root_add_225_carry[6]), .CO(
        add_0_root_add_0_root_add_225_carry[7]), .S(s_11_1__6_) );
  FA_X1 add_0_root_add_0_root_add_225_U1_7 ( .A(p_1s_0__7_), .B(s_11_0__7_), 
        .CI(add_0_root_add_0_root_add_225_carry[7]), .CO(
        add_0_root_add_0_root_add_225_carry[8]), .S(s_11_1__7_) );
  FA_X1 add_0_root_add_0_root_add_225_U1_8 ( .A(p_1s_0__8_), .B(s_11_0__8_), 
        .CI(add_0_root_add_0_root_add_225_carry[8]), .CO(
        add_0_root_add_0_root_add_225_carry[9]), .S(s_11_1__8_) );
  FA_X1 add_0_root_add_0_root_add_225_U1_9 ( .A(p_1s_0__10_), .B(s_11_0__9_), 
        .CI(add_0_root_add_0_root_add_225_carry[9]), .S(s_11_1__9_) );
  XOR2_X1 add_1_root_add_0_root_add_235_U2 ( .A(p_3s_2__0_), .B(p_3s_1__0_), 
        .Z(s_31_0__0_) );
  AND2_X1 add_1_root_add_0_root_add_235_U1 ( .A1(p_3s_2__0_), .A2(p_3s_1__0_), 
        .ZN(add_1_root_add_0_root_add_235_n1) );
  FA_X1 add_1_root_add_0_root_add_235_U1_1 ( .A(p_3s_1__1_), .B(p_3s_2__1_), 
        .CI(add_1_root_add_0_root_add_235_n1), .CO(
        add_1_root_add_0_root_add_235_carry[2]), .S(s_31_0__1_) );
  FA_X1 add_1_root_add_0_root_add_235_U1_2 ( .A(p_3s_1__2_), .B(p_3s_2__2_), 
        .CI(add_1_root_add_0_root_add_235_carry[2]), .CO(
        add_1_root_add_0_root_add_235_carry[3]), .S(s_31_0__2_) );
  FA_X1 add_1_root_add_0_root_add_235_U1_3 ( .A(p_3s_1__3_), .B(p_3s_2__3_), 
        .CI(add_1_root_add_0_root_add_235_carry[3]), .CO(
        add_1_root_add_0_root_add_235_carry[4]), .S(s_31_0__3_) );
  FA_X1 add_1_root_add_0_root_add_235_U1_4 ( .A(p_3s_1__4_), .B(p_3s_2__4_), 
        .CI(add_1_root_add_0_root_add_235_carry[4]), .CO(
        add_1_root_add_0_root_add_235_carry[5]), .S(s_31_0__4_) );
  FA_X1 add_1_root_add_0_root_add_235_U1_5 ( .A(p_3s_1__5_), .B(p_3s_2__5_), 
        .CI(add_1_root_add_0_root_add_235_carry[5]), .CO(
        add_1_root_add_0_root_add_235_carry[6]), .S(s_31_0__5_) );
  FA_X1 add_1_root_add_0_root_add_235_U1_6 ( .A(p_3s_1__6_), .B(p_3s_2__6_), 
        .CI(add_1_root_add_0_root_add_235_carry[6]), .CO(
        add_1_root_add_0_root_add_235_carry[7]), .S(s_31_0__6_) );
  FA_X1 add_1_root_add_0_root_add_235_U1_7 ( .A(p_3s_1__7_), .B(p_3s_2__7_), 
        .CI(add_1_root_add_0_root_add_235_carry[7]), .CO(
        add_1_root_add_0_root_add_235_carry[8]), .S(s_31_0__7_) );
  FA_X1 add_1_root_add_0_root_add_235_U1_8 ( .A(p_3s_1__8_), .B(p_3s_2__8_), 
        .CI(add_1_root_add_0_root_add_235_carry[8]), .CO(
        add_1_root_add_0_root_add_235_carry[9]), .S(s_31_0__8_) );
  FA_X1 add_1_root_add_0_root_add_235_U1_9 ( .A(p_3s_1__10_), .B(p_3s_2__10_), 
        .CI(add_1_root_add_0_root_add_235_carry[9]), .S(s_31_0__9_) );
  AND2_X1 add_0_root_add_0_root_add_235_U2 ( .A1(s_31_0__0_), .A2(p_3s_0__0_), 
        .ZN(add_0_root_add_0_root_add_235_n2) );
  XOR2_X1 add_0_root_add_0_root_add_235_U1 ( .A(s_31_0__0_), .B(p_3s_0__0_), 
        .Z(s_31_1__0_) );
  FA_X1 add_0_root_add_0_root_add_235_U1_1 ( .A(p_3s_0__1_), .B(s_31_0__1_), 
        .CI(add_0_root_add_0_root_add_235_n2), .CO(
        add_0_root_add_0_root_add_235_carry[2]), .S(s_31_1__1_) );
  FA_X1 add_0_root_add_0_root_add_235_U1_2 ( .A(p_3s_0__2_), .B(s_31_0__2_), 
        .CI(add_0_root_add_0_root_add_235_carry[2]), .CO(
        add_0_root_add_0_root_add_235_carry[3]), .S(s_31_1__2_) );
  FA_X1 add_0_root_add_0_root_add_235_U1_3 ( .A(p_3s_0__3_), .B(s_31_0__3_), 
        .CI(add_0_root_add_0_root_add_235_carry[3]), .CO(
        add_0_root_add_0_root_add_235_carry[4]), .S(s_31_1__3_) );
  FA_X1 add_0_root_add_0_root_add_235_U1_4 ( .A(p_3s_0__4_), .B(s_31_0__4_), 
        .CI(add_0_root_add_0_root_add_235_carry[4]), .CO(
        add_0_root_add_0_root_add_235_carry[5]), .S(s_31_1__4_) );
  FA_X1 add_0_root_add_0_root_add_235_U1_5 ( .A(p_3s_0__5_), .B(s_31_0__5_), 
        .CI(add_0_root_add_0_root_add_235_carry[5]), .CO(
        add_0_root_add_0_root_add_235_carry[6]), .S(s_31_1__5_) );
  FA_X1 add_0_root_add_0_root_add_235_U1_6 ( .A(p_3s_0__6_), .B(s_31_0__6_), 
        .CI(add_0_root_add_0_root_add_235_carry[6]), .CO(
        add_0_root_add_0_root_add_235_carry[7]), .S(s_31_1__6_) );
  FA_X1 add_0_root_add_0_root_add_235_U1_7 ( .A(p_3s_0__7_), .B(s_31_0__7_), 
        .CI(add_0_root_add_0_root_add_235_carry[7]), .CO(
        add_0_root_add_0_root_add_235_carry[8]), .S(s_31_1__7_) );
  FA_X1 add_0_root_add_0_root_add_235_U1_8 ( .A(p_3s_0__8_), .B(s_31_0__8_), 
        .CI(add_0_root_add_0_root_add_235_carry[8]), .CO(
        add_0_root_add_0_root_add_235_carry[9]), .S(s_31_1__8_) );
  FA_X1 add_0_root_add_0_root_add_235_U1_9 ( .A(p_3s_0__10_), .B(s_31_0__9_), 
        .CI(add_0_root_add_0_root_add_235_carry[9]), .S(s_31_1__9_) );
  NAND2_X1 mult_171_G2_U113 ( .A1(b_p[8]), .A2(s_2p[8]), .ZN(mult_171_G2_n29)
         );
  NAND2_X1 mult_171_G2_U112 ( .A1(s_2p[10]), .A2(b_p[5]), .ZN(mult_171_G2_n119) );
  NAND2_X1 mult_171_G2_U111 ( .A1(b_p[7]), .A2(s_2p[8]), .ZN(mult_171_G2_n118)
         );
  NAND2_X1 mult_171_G2_U110 ( .A1(mult_171_G2_n119), .A2(mult_171_G2_n118), 
        .ZN(mult_171_G2_n34) );
  XNOR2_X1 mult_171_G2_U109 ( .A(mult_171_G2_n118), .B(mult_171_G2_n119), .ZN(
        mult_171_G2_n35) );
  AND2_X1 mult_171_G2_U108 ( .A1(s_2p[11]), .A2(b_p[9]), .ZN(mult_171_G2_n42)
         );
  NAND2_X1 mult_171_G2_U107 ( .A1(b_p[9]), .A2(s_2p[10]), .ZN(mult_171_G2_n43)
         );
  NAND2_X1 mult_171_G2_U106 ( .A1(b_p[9]), .A2(s_2p[9]), .ZN(mult_171_G2_n44)
         );
  NAND2_X1 mult_171_G2_U105 ( .A1(b_p[9]), .A2(s_2p[8]), .ZN(mult_171_G2_n45)
         );
  NAND2_X1 mult_171_G2_U104 ( .A1(b_p[9]), .A2(s_2p[7]), .ZN(mult_171_G2_n46)
         );
  NAND2_X1 mult_171_G2_U103 ( .A1(b_p[9]), .A2(s_2p[6]), .ZN(mult_171_G2_n47)
         );
  NAND2_X1 mult_171_G2_U102 ( .A1(b_p[8]), .A2(s_2p[11]), .ZN(mult_171_G2_n48)
         );
  NOR2_X1 mult_171_G2_U101 ( .A1(mult_171_G2_n108), .A2(mult_171_G2_n114), 
        .ZN(mult_171_G2_n49) );
  NOR2_X1 mult_171_G2_U100 ( .A1(mult_171_G2_n109), .A2(mult_171_G2_n114), 
        .ZN(mult_171_G2_n50) );
  NOR2_X1 mult_171_G2_U99 ( .A1(mult_171_G2_n112), .A2(mult_171_G2_n114), .ZN(
        mult_171_G2_n51) );
  NOR2_X1 mult_171_G2_U98 ( .A1(mult_171_G2_n113), .A2(mult_171_G2_n114), .ZN(
        mult_171_G2_n52) );
  NAND2_X1 mult_171_G2_U97 ( .A1(b_p[7]), .A2(s_2p[11]), .ZN(mult_171_G2_n53)
         );
  NOR2_X1 mult_171_G2_U96 ( .A1(mult_171_G2_n108), .A2(mult_171_G2_n115), .ZN(
        mult_171_G2_n54) );
  NOR2_X1 mult_171_G2_U95 ( .A1(mult_171_G2_n109), .A2(mult_171_G2_n115), .ZN(
        mult_171_G2_n55) );
  NOR2_X1 mult_171_G2_U94 ( .A1(mult_171_G2_n112), .A2(mult_171_G2_n115), .ZN(
        mult_171_G2_n57) );
  NOR2_X1 mult_171_G2_U93 ( .A1(mult_171_G2_n113), .A2(mult_171_G2_n115), .ZN(
        mult_171_G2_n58) );
  NAND2_X1 mult_171_G2_U92 ( .A1(b_p[6]), .A2(s_2p[11]), .ZN(mult_171_G2_n59)
         );
  NOR2_X1 mult_171_G2_U91 ( .A1(mult_171_G2_n116), .A2(mult_171_G2_n108), .ZN(
        mult_171_G2_n60) );
  NOR2_X1 mult_171_G2_U90 ( .A1(mult_171_G2_n109), .A2(mult_171_G2_n116), .ZN(
        mult_171_G2_n61) );
  NOR2_X1 mult_171_G2_U89 ( .A1(mult_171_G2_n110), .A2(mult_171_G2_n116), .ZN(
        mult_171_G2_n62) );
  NOR2_X1 mult_171_G2_U88 ( .A1(mult_171_G2_n112), .A2(mult_171_G2_n116), .ZN(
        mult_171_G2_n63) );
  NOR2_X1 mult_171_G2_U87 ( .A1(mult_171_G2_n113), .A2(mult_171_G2_n116), .ZN(
        mult_171_G2_n64) );
  NAND2_X1 mult_171_G2_U86 ( .A1(s_2p[11]), .A2(b_p[5]), .ZN(mult_171_G2_n65)
         );
  NOR2_X1 mult_171_G2_U85 ( .A1(mult_171_G2_n117), .A2(mult_171_G2_n109), .ZN(
        mult_171_G2_n67) );
  NOR2_X1 mult_171_G2_U84 ( .A1(mult_171_G2_n117), .A2(mult_171_G2_n110), .ZN(
        mult_171_G2_n68) );
  NOR2_X1 mult_171_G2_U83 ( .A1(mult_171_G2_n117), .A2(mult_171_G2_n112), .ZN(
        mult_171_G2_n69) );
  NOR2_X1 mult_171_G2_U82 ( .A1(mult_171_G2_n117), .A2(mult_171_G2_n113), .ZN(
        p_2_1__0_) );
  INV_X1 mult_171_G2_U81 ( .A(mult_171_G2_n1), .ZN(p_2_1__10_) );
  INV_X1 mult_171_G2_U80 ( .A(s_2p[8]), .ZN(mult_171_G2_n110) );
  INV_X1 mult_171_G2_U79 ( .A(s_2p[10]), .ZN(mult_171_G2_n108) );
  INV_X1 mult_171_G2_U78 ( .A(s_2p[9]), .ZN(mult_171_G2_n109) );
  INV_X1 mult_171_G2_U77 ( .A(s_2p[7]), .ZN(mult_171_G2_n112) );
  INV_X1 mult_171_G2_U76 ( .A(s_2p[6]), .ZN(mult_171_G2_n113) );
  INV_X1 mult_171_G2_U75 ( .A(b_p[6]), .ZN(mult_171_G2_n116) );
  INV_X1 mult_171_G2_U74 ( .A(b_p[5]), .ZN(mult_171_G2_n117) );
  INV_X1 mult_171_G2_U73 ( .A(b_p[8]), .ZN(mult_171_G2_n114) );
  INV_X1 mult_171_G2_U72 ( .A(b_p[7]), .ZN(mult_171_G2_n115) );
  INV_X1 mult_171_G2_U71 ( .A(mult_171_G2_n29), .ZN(mult_171_G2_n111) );
  HA_X1 mult_171_G2_U27 ( .A(mult_171_G2_n63), .B(mult_171_G2_n68), .CO(
        mult_171_G2_n40), .S(mult_171_G2_n41) );
  HA_X1 mult_171_G2_U26 ( .A(mult_171_G2_n52), .B(mult_171_G2_n57), .CO(
        mult_171_G2_n38), .S(mult_171_G2_n39) );
  FA_X1 mult_171_G2_U25 ( .A(mult_171_G2_n62), .B(mult_171_G2_n67), .CI(
        mult_171_G2_n40), .CO(mult_171_G2_n36), .S(mult_171_G2_n37) );
  FA_X1 mult_171_G2_U22 ( .A(mult_171_G2_n51), .B(mult_171_G2_n61), .CI(
        mult_171_G2_n47), .CO(mult_171_G2_n32), .S(mult_171_G2_n33) );
  FA_X1 mult_171_G2_U21 ( .A(mult_171_G2_n35), .B(mult_171_G2_n38), .CI(
        mult_171_G2_n36), .CO(mult_171_G2_n30), .S(mult_171_G2_n31) );
  FA_X1 mult_171_G2_U19 ( .A(mult_171_G2_n60), .B(mult_171_G2_n55), .CI(
        mult_171_G2_n65), .CO(mult_171_G2_n26), .S(mult_171_G2_n27) );
  FA_X1 mult_171_G2_U18 ( .A(mult_171_G2_n29), .B(mult_171_G2_n46), .CI(
        mult_171_G2_n34), .CO(mult_171_G2_n24), .S(mult_171_G2_n25) );
  FA_X1 mult_171_G2_U17 ( .A(mult_171_G2_n27), .B(mult_171_G2_n32), .CI(
        mult_171_G2_n25), .CO(mult_171_G2_n22), .S(mult_171_G2_n23) );
  FA_X1 mult_171_G2_U16 ( .A(mult_171_G2_n54), .B(mult_171_G2_n111), .CI(
        mult_171_G2_n50), .CO(mult_171_G2_n20), .S(mult_171_G2_n21) );
  FA_X1 mult_171_G2_U15 ( .A(mult_171_G2_n45), .B(mult_171_G2_n59), .CI(
        mult_171_G2_n26), .CO(mult_171_G2_n18), .S(mult_171_G2_n19) );
  FA_X1 mult_171_G2_U14 ( .A(mult_171_G2_n21), .B(mult_171_G2_n24), .CI(
        mult_171_G2_n19), .CO(mult_171_G2_n16), .S(mult_171_G2_n17) );
  FA_X1 mult_171_G2_U13 ( .A(mult_171_G2_n53), .B(mult_171_G2_n49), .CI(
        mult_171_G2_n44), .CO(mult_171_G2_n14), .S(mult_171_G2_n15) );
  FA_X1 mult_171_G2_U12 ( .A(mult_171_G2_n15), .B(mult_171_G2_n20), .CI(
        mult_171_G2_n18), .CO(mult_171_G2_n12), .S(mult_171_G2_n13) );
  FA_X1 mult_171_G2_U11 ( .A(mult_171_G2_n43), .B(mult_171_G2_n48), .CI(
        mult_171_G2_n14), .CO(mult_171_G2_n10), .S(mult_171_G2_n11) );
  HA_X1 mult_171_G2_U10 ( .A(mult_171_G2_n69), .B(mult_171_G2_n64), .CO(
        mult_171_G2_n9), .S(p_2_1__1_) );
  FA_X1 mult_171_G2_U9 ( .A(mult_171_G2_n9), .B(mult_171_G2_n58), .CI(
        mult_171_G2_n41), .CO(mult_171_G2_n8), .S(p_2_1__2_) );
  FA_X1 mult_171_G2_U8 ( .A(mult_171_G2_n8), .B(mult_171_G2_n39), .CI(
        mult_171_G2_n37), .CO(mult_171_G2_n7), .S(p_2_1__3_) );
  FA_X1 mult_171_G2_U7 ( .A(mult_171_G2_n31), .B(mult_171_G2_n33), .CI(
        mult_171_G2_n7), .CO(mult_171_G2_n6), .S(p_2_1__4_) );
  FA_X1 mult_171_G2_U6 ( .A(mult_171_G2_n23), .B(mult_171_G2_n30), .CI(
        mult_171_G2_n6), .CO(mult_171_G2_n5), .S(p_2_1__5_) );
  FA_X1 mult_171_G2_U5 ( .A(mult_171_G2_n17), .B(mult_171_G2_n22), .CI(
        mult_171_G2_n5), .CO(mult_171_G2_n4), .S(p_2_1__6_) );
  FA_X1 mult_171_G2_U4 ( .A(mult_171_G2_n13), .B(mult_171_G2_n16), .CI(
        mult_171_G2_n4), .CO(mult_171_G2_n3), .S(p_2_1__7_) );
  FA_X1 mult_171_G2_U3 ( .A(mult_171_G2_n12), .B(mult_171_G2_n11), .CI(
        mult_171_G2_n3), .CO(mult_171_G2_n2), .S(p_2_1__8_) );
  FA_X1 mult_171_G2_U2 ( .A(mult_171_G2_n10), .B(mult_171_G2_n42), .CI(
        mult_171_G2_n2), .CO(mult_171_G2_n1), .S(p_2_1__9_) );
  NAND2_X1 mult_172_G2_U113 ( .A1(b_p[8]), .A2(s_3p[8]), .ZN(mult_172_G2_n29)
         );
  NAND2_X1 mult_172_G2_U112 ( .A1(s_3p[10]), .A2(b_p[5]), .ZN(mult_172_G2_n119) );
  NAND2_X1 mult_172_G2_U111 ( .A1(b_p[7]), .A2(s_3p[8]), .ZN(mult_172_G2_n118)
         );
  NAND2_X1 mult_172_G2_U110 ( .A1(mult_172_G2_n119), .A2(mult_172_G2_n118), 
        .ZN(mult_172_G2_n34) );
  XNOR2_X1 mult_172_G2_U109 ( .A(mult_172_G2_n118), .B(mult_172_G2_n119), .ZN(
        mult_172_G2_n35) );
  AND2_X1 mult_172_G2_U108 ( .A1(s_3p[11]), .A2(b_p[9]), .ZN(mult_172_G2_n42)
         );
  NAND2_X1 mult_172_G2_U107 ( .A1(b_p[9]), .A2(s_3p[10]), .ZN(mult_172_G2_n43)
         );
  NAND2_X1 mult_172_G2_U106 ( .A1(b_p[9]), .A2(s_3p[9]), .ZN(mult_172_G2_n44)
         );
  NAND2_X1 mult_172_G2_U105 ( .A1(b_p[9]), .A2(s_3p[8]), .ZN(mult_172_G2_n45)
         );
  NAND2_X1 mult_172_G2_U104 ( .A1(b_p[9]), .A2(s_3p[7]), .ZN(mult_172_G2_n46)
         );
  NAND2_X1 mult_172_G2_U103 ( .A1(b_p[9]), .A2(s_3p[6]), .ZN(mult_172_G2_n47)
         );
  NAND2_X1 mult_172_G2_U102 ( .A1(b_p[8]), .A2(s_3p[11]), .ZN(mult_172_G2_n48)
         );
  NOR2_X1 mult_172_G2_U101 ( .A1(mult_172_G2_n108), .A2(mult_172_G2_n114), 
        .ZN(mult_172_G2_n49) );
  NOR2_X1 mult_172_G2_U100 ( .A1(mult_172_G2_n109), .A2(mult_172_G2_n114), 
        .ZN(mult_172_G2_n50) );
  NOR2_X1 mult_172_G2_U99 ( .A1(mult_172_G2_n112), .A2(mult_172_G2_n114), .ZN(
        mult_172_G2_n51) );
  NOR2_X1 mult_172_G2_U98 ( .A1(mult_172_G2_n113), .A2(mult_172_G2_n114), .ZN(
        mult_172_G2_n52) );
  NAND2_X1 mult_172_G2_U97 ( .A1(b_p[7]), .A2(s_3p[11]), .ZN(mult_172_G2_n53)
         );
  NOR2_X1 mult_172_G2_U96 ( .A1(mult_172_G2_n108), .A2(mult_172_G2_n115), .ZN(
        mult_172_G2_n54) );
  NOR2_X1 mult_172_G2_U95 ( .A1(mult_172_G2_n109), .A2(mult_172_G2_n115), .ZN(
        mult_172_G2_n55) );
  NOR2_X1 mult_172_G2_U94 ( .A1(mult_172_G2_n112), .A2(mult_172_G2_n115), .ZN(
        mult_172_G2_n57) );
  NOR2_X1 mult_172_G2_U93 ( .A1(mult_172_G2_n113), .A2(mult_172_G2_n115), .ZN(
        mult_172_G2_n58) );
  NAND2_X1 mult_172_G2_U92 ( .A1(b_p[6]), .A2(s_3p[11]), .ZN(mult_172_G2_n59)
         );
  NOR2_X1 mult_172_G2_U91 ( .A1(mult_172_G2_n116), .A2(mult_172_G2_n108), .ZN(
        mult_172_G2_n60) );
  NOR2_X1 mult_172_G2_U90 ( .A1(mult_172_G2_n109), .A2(mult_172_G2_n116), .ZN(
        mult_172_G2_n61) );
  NOR2_X1 mult_172_G2_U89 ( .A1(mult_172_G2_n110), .A2(mult_172_G2_n116), .ZN(
        mult_172_G2_n62) );
  NOR2_X1 mult_172_G2_U88 ( .A1(mult_172_G2_n112), .A2(mult_172_G2_n116), .ZN(
        mult_172_G2_n63) );
  NOR2_X1 mult_172_G2_U87 ( .A1(mult_172_G2_n113), .A2(mult_172_G2_n116), .ZN(
        mult_172_G2_n64) );
  NAND2_X1 mult_172_G2_U86 ( .A1(s_3p[11]), .A2(b_p[5]), .ZN(mult_172_G2_n65)
         );
  NOR2_X1 mult_172_G2_U85 ( .A1(mult_172_G2_n117), .A2(mult_172_G2_n109), .ZN(
        mult_172_G2_n67) );
  NOR2_X1 mult_172_G2_U84 ( .A1(mult_172_G2_n117), .A2(mult_172_G2_n110), .ZN(
        mult_172_G2_n68) );
  NOR2_X1 mult_172_G2_U83 ( .A1(mult_172_G2_n117), .A2(mult_172_G2_n112), .ZN(
        mult_172_G2_n69) );
  NOR2_X1 mult_172_G2_U82 ( .A1(mult_172_G2_n117), .A2(mult_172_G2_n113), .ZN(
        p_3_1__0_) );
  INV_X1 mult_172_G2_U81 ( .A(mult_172_G2_n1), .ZN(p_3_1__10_) );
  INV_X1 mult_172_G2_U80 ( .A(s_3p[8]), .ZN(mult_172_G2_n110) );
  INV_X1 mult_172_G2_U79 ( .A(s_3p[10]), .ZN(mult_172_G2_n108) );
  INV_X1 mult_172_G2_U78 ( .A(s_3p[9]), .ZN(mult_172_G2_n109) );
  INV_X1 mult_172_G2_U77 ( .A(s_3p[7]), .ZN(mult_172_G2_n112) );
  INV_X1 mult_172_G2_U76 ( .A(s_3p[6]), .ZN(mult_172_G2_n113) );
  INV_X1 mult_172_G2_U75 ( .A(b_p[6]), .ZN(mult_172_G2_n116) );
  INV_X1 mult_172_G2_U74 ( .A(b_p[5]), .ZN(mult_172_G2_n117) );
  INV_X1 mult_172_G2_U73 ( .A(b_p[8]), .ZN(mult_172_G2_n114) );
  INV_X1 mult_172_G2_U72 ( .A(b_p[7]), .ZN(mult_172_G2_n115) );
  INV_X1 mult_172_G2_U71 ( .A(mult_172_G2_n29), .ZN(mult_172_G2_n111) );
  HA_X1 mult_172_G2_U27 ( .A(mult_172_G2_n63), .B(mult_172_G2_n68), .CO(
        mult_172_G2_n40), .S(mult_172_G2_n41) );
  HA_X1 mult_172_G2_U26 ( .A(mult_172_G2_n52), .B(mult_172_G2_n57), .CO(
        mult_172_G2_n38), .S(mult_172_G2_n39) );
  FA_X1 mult_172_G2_U25 ( .A(mult_172_G2_n62), .B(mult_172_G2_n67), .CI(
        mult_172_G2_n40), .CO(mult_172_G2_n36), .S(mult_172_G2_n37) );
  FA_X1 mult_172_G2_U22 ( .A(mult_172_G2_n51), .B(mult_172_G2_n61), .CI(
        mult_172_G2_n47), .CO(mult_172_G2_n32), .S(mult_172_G2_n33) );
  FA_X1 mult_172_G2_U21 ( .A(mult_172_G2_n35), .B(mult_172_G2_n38), .CI(
        mult_172_G2_n36), .CO(mult_172_G2_n30), .S(mult_172_G2_n31) );
  FA_X1 mult_172_G2_U19 ( .A(mult_172_G2_n60), .B(mult_172_G2_n55), .CI(
        mult_172_G2_n65), .CO(mult_172_G2_n26), .S(mult_172_G2_n27) );
  FA_X1 mult_172_G2_U18 ( .A(mult_172_G2_n29), .B(mult_172_G2_n46), .CI(
        mult_172_G2_n34), .CO(mult_172_G2_n24), .S(mult_172_G2_n25) );
  FA_X1 mult_172_G2_U17 ( .A(mult_172_G2_n27), .B(mult_172_G2_n32), .CI(
        mult_172_G2_n25), .CO(mult_172_G2_n22), .S(mult_172_G2_n23) );
  FA_X1 mult_172_G2_U16 ( .A(mult_172_G2_n54), .B(mult_172_G2_n111), .CI(
        mult_172_G2_n50), .CO(mult_172_G2_n20), .S(mult_172_G2_n21) );
  FA_X1 mult_172_G2_U15 ( .A(mult_172_G2_n45), .B(mult_172_G2_n59), .CI(
        mult_172_G2_n26), .CO(mult_172_G2_n18), .S(mult_172_G2_n19) );
  FA_X1 mult_172_G2_U14 ( .A(mult_172_G2_n21), .B(mult_172_G2_n24), .CI(
        mult_172_G2_n19), .CO(mult_172_G2_n16), .S(mult_172_G2_n17) );
  FA_X1 mult_172_G2_U13 ( .A(mult_172_G2_n53), .B(mult_172_G2_n49), .CI(
        mult_172_G2_n44), .CO(mult_172_G2_n14), .S(mult_172_G2_n15) );
  FA_X1 mult_172_G2_U12 ( .A(mult_172_G2_n15), .B(mult_172_G2_n20), .CI(
        mult_172_G2_n18), .CO(mult_172_G2_n12), .S(mult_172_G2_n13) );
  FA_X1 mult_172_G2_U11 ( .A(mult_172_G2_n43), .B(mult_172_G2_n48), .CI(
        mult_172_G2_n14), .CO(mult_172_G2_n10), .S(mult_172_G2_n11) );
  HA_X1 mult_172_G2_U10 ( .A(mult_172_G2_n69), .B(mult_172_G2_n64), .CO(
        mult_172_G2_n9), .S(p_3_1__1_) );
  FA_X1 mult_172_G2_U9 ( .A(mult_172_G2_n9), .B(mult_172_G2_n58), .CI(
        mult_172_G2_n41), .CO(mult_172_G2_n8), .S(p_3_1__2_) );
  FA_X1 mult_172_G2_U8 ( .A(mult_172_G2_n8), .B(mult_172_G2_n39), .CI(
        mult_172_G2_n37), .CO(mult_172_G2_n7), .S(p_3_1__3_) );
  FA_X1 mult_172_G2_U7 ( .A(mult_172_G2_n31), .B(mult_172_G2_n33), .CI(
        mult_172_G2_n7), .CO(mult_172_G2_n6), .S(p_3_1__4_) );
  FA_X1 mult_172_G2_U6 ( .A(mult_172_G2_n23), .B(mult_172_G2_n30), .CI(
        mult_172_G2_n6), .CO(mult_172_G2_n5), .S(p_3_1__5_) );
  FA_X1 mult_172_G2_U5 ( .A(mult_172_G2_n17), .B(mult_172_G2_n22), .CI(
        mult_172_G2_n5), .CO(mult_172_G2_n4), .S(p_3_1__6_) );
  FA_X1 mult_172_G2_U4 ( .A(mult_172_G2_n13), .B(mult_172_G2_n16), .CI(
        mult_172_G2_n4), .CO(mult_172_G2_n3), .S(p_3_1__7_) );
  FA_X1 mult_172_G2_U3 ( .A(mult_172_G2_n12), .B(mult_172_G2_n11), .CI(
        mult_172_G2_n3), .CO(mult_172_G2_n2), .S(p_3_1__8_) );
  FA_X1 mult_172_G2_U2 ( .A(mult_172_G2_n10), .B(mult_172_G2_n42), .CI(
        mult_172_G2_n2), .CO(mult_172_G2_n1), .S(p_3_1__9_) );
  NAND2_X1 mult_170_G2_U113 ( .A1(b_p[8]), .A2(s_1p[8]), .ZN(mult_170_G2_n29)
         );
  NAND2_X1 mult_170_G2_U112 ( .A1(s_1p[10]), .A2(b_p[5]), .ZN(mult_170_G2_n119) );
  NAND2_X1 mult_170_G2_U111 ( .A1(b_p[7]), .A2(s_1p[8]), .ZN(mult_170_G2_n118)
         );
  NAND2_X1 mult_170_G2_U110 ( .A1(mult_170_G2_n119), .A2(mult_170_G2_n118), 
        .ZN(mult_170_G2_n34) );
  XNOR2_X1 mult_170_G2_U109 ( .A(mult_170_G2_n118), .B(mult_170_G2_n119), .ZN(
        mult_170_G2_n35) );
  AND2_X1 mult_170_G2_U108 ( .A1(s_1p[11]), .A2(b_p[9]), .ZN(mult_170_G2_n42)
         );
  NAND2_X1 mult_170_G2_U107 ( .A1(b_p[9]), .A2(s_1p[10]), .ZN(mult_170_G2_n43)
         );
  NAND2_X1 mult_170_G2_U106 ( .A1(b_p[9]), .A2(s_1p[9]), .ZN(mult_170_G2_n44)
         );
  NAND2_X1 mult_170_G2_U105 ( .A1(b_p[9]), .A2(s_1p[8]), .ZN(mult_170_G2_n45)
         );
  NAND2_X1 mult_170_G2_U104 ( .A1(b_p[9]), .A2(s_1p[7]), .ZN(mult_170_G2_n46)
         );
  NAND2_X1 mult_170_G2_U103 ( .A1(b_p[9]), .A2(s_1p[6]), .ZN(mult_170_G2_n47)
         );
  NAND2_X1 mult_170_G2_U102 ( .A1(b_p[8]), .A2(s_1p[11]), .ZN(mult_170_G2_n48)
         );
  NOR2_X1 mult_170_G2_U101 ( .A1(mult_170_G2_n108), .A2(mult_170_G2_n114), 
        .ZN(mult_170_G2_n49) );
  NOR2_X1 mult_170_G2_U100 ( .A1(mult_170_G2_n109), .A2(mult_170_G2_n114), 
        .ZN(mult_170_G2_n50) );
  NOR2_X1 mult_170_G2_U99 ( .A1(mult_170_G2_n112), .A2(mult_170_G2_n114), .ZN(
        mult_170_G2_n51) );
  NOR2_X1 mult_170_G2_U98 ( .A1(mult_170_G2_n113), .A2(mult_170_G2_n114), .ZN(
        mult_170_G2_n52) );
  NAND2_X1 mult_170_G2_U97 ( .A1(b_p[7]), .A2(s_1p[11]), .ZN(mult_170_G2_n53)
         );
  NOR2_X1 mult_170_G2_U96 ( .A1(mult_170_G2_n108), .A2(mult_170_G2_n115), .ZN(
        mult_170_G2_n54) );
  NOR2_X1 mult_170_G2_U95 ( .A1(mult_170_G2_n109), .A2(mult_170_G2_n115), .ZN(
        mult_170_G2_n55) );
  NOR2_X1 mult_170_G2_U94 ( .A1(mult_170_G2_n112), .A2(mult_170_G2_n115), .ZN(
        mult_170_G2_n57) );
  NOR2_X1 mult_170_G2_U93 ( .A1(mult_170_G2_n113), .A2(mult_170_G2_n115), .ZN(
        mult_170_G2_n58) );
  NAND2_X1 mult_170_G2_U92 ( .A1(b_p[6]), .A2(s_1p[11]), .ZN(mult_170_G2_n59)
         );
  NOR2_X1 mult_170_G2_U91 ( .A1(mult_170_G2_n116), .A2(mult_170_G2_n108), .ZN(
        mult_170_G2_n60) );
  NOR2_X1 mult_170_G2_U90 ( .A1(mult_170_G2_n109), .A2(mult_170_G2_n116), .ZN(
        mult_170_G2_n61) );
  NOR2_X1 mult_170_G2_U89 ( .A1(mult_170_G2_n110), .A2(mult_170_G2_n116), .ZN(
        mult_170_G2_n62) );
  NOR2_X1 mult_170_G2_U88 ( .A1(mult_170_G2_n112), .A2(mult_170_G2_n116), .ZN(
        mult_170_G2_n63) );
  NOR2_X1 mult_170_G2_U87 ( .A1(mult_170_G2_n113), .A2(mult_170_G2_n116), .ZN(
        mult_170_G2_n64) );
  NAND2_X1 mult_170_G2_U86 ( .A1(s_1p[11]), .A2(b_p[5]), .ZN(mult_170_G2_n65)
         );
  NOR2_X1 mult_170_G2_U85 ( .A1(mult_170_G2_n117), .A2(mult_170_G2_n109), .ZN(
        mult_170_G2_n67) );
  NOR2_X1 mult_170_G2_U84 ( .A1(mult_170_G2_n117), .A2(mult_170_G2_n110), .ZN(
        mult_170_G2_n68) );
  NOR2_X1 mult_170_G2_U83 ( .A1(mult_170_G2_n117), .A2(mult_170_G2_n112), .ZN(
        mult_170_G2_n69) );
  NOR2_X1 mult_170_G2_U82 ( .A1(mult_170_G2_n117), .A2(mult_170_G2_n113), .ZN(
        p_1_1__0_) );
  INV_X1 mult_170_G2_U81 ( .A(mult_170_G2_n1), .ZN(p_1_1__10_) );
  INV_X1 mult_170_G2_U80 ( .A(s_1p[8]), .ZN(mult_170_G2_n110) );
  INV_X1 mult_170_G2_U79 ( .A(s_1p[10]), .ZN(mult_170_G2_n108) );
  INV_X1 mult_170_G2_U78 ( .A(s_1p[9]), .ZN(mult_170_G2_n109) );
  INV_X1 mult_170_G2_U77 ( .A(s_1p[7]), .ZN(mult_170_G2_n112) );
  INV_X1 mult_170_G2_U76 ( .A(s_1p[6]), .ZN(mult_170_G2_n113) );
  INV_X1 mult_170_G2_U75 ( .A(b_p[6]), .ZN(mult_170_G2_n116) );
  INV_X1 mult_170_G2_U74 ( .A(b_p[5]), .ZN(mult_170_G2_n117) );
  INV_X1 mult_170_G2_U73 ( .A(b_p[8]), .ZN(mult_170_G2_n114) );
  INV_X1 mult_170_G2_U72 ( .A(b_p[7]), .ZN(mult_170_G2_n115) );
  INV_X1 mult_170_G2_U71 ( .A(mult_170_G2_n29), .ZN(mult_170_G2_n111) );
  HA_X1 mult_170_G2_U27 ( .A(mult_170_G2_n63), .B(mult_170_G2_n68), .CO(
        mult_170_G2_n40), .S(mult_170_G2_n41) );
  HA_X1 mult_170_G2_U26 ( .A(mult_170_G2_n52), .B(mult_170_G2_n57), .CO(
        mult_170_G2_n38), .S(mult_170_G2_n39) );
  FA_X1 mult_170_G2_U25 ( .A(mult_170_G2_n62), .B(mult_170_G2_n67), .CI(
        mult_170_G2_n40), .CO(mult_170_G2_n36), .S(mult_170_G2_n37) );
  FA_X1 mult_170_G2_U22 ( .A(mult_170_G2_n51), .B(mult_170_G2_n61), .CI(
        mult_170_G2_n47), .CO(mult_170_G2_n32), .S(mult_170_G2_n33) );
  FA_X1 mult_170_G2_U21 ( .A(mult_170_G2_n35), .B(mult_170_G2_n38), .CI(
        mult_170_G2_n36), .CO(mult_170_G2_n30), .S(mult_170_G2_n31) );
  FA_X1 mult_170_G2_U19 ( .A(mult_170_G2_n60), .B(mult_170_G2_n55), .CI(
        mult_170_G2_n65), .CO(mult_170_G2_n26), .S(mult_170_G2_n27) );
  FA_X1 mult_170_G2_U18 ( .A(mult_170_G2_n29), .B(mult_170_G2_n46), .CI(
        mult_170_G2_n34), .CO(mult_170_G2_n24), .S(mult_170_G2_n25) );
  FA_X1 mult_170_G2_U17 ( .A(mult_170_G2_n27), .B(mult_170_G2_n32), .CI(
        mult_170_G2_n25), .CO(mult_170_G2_n22), .S(mult_170_G2_n23) );
  FA_X1 mult_170_G2_U16 ( .A(mult_170_G2_n54), .B(mult_170_G2_n111), .CI(
        mult_170_G2_n50), .CO(mult_170_G2_n20), .S(mult_170_G2_n21) );
  FA_X1 mult_170_G2_U15 ( .A(mult_170_G2_n45), .B(mult_170_G2_n59), .CI(
        mult_170_G2_n26), .CO(mult_170_G2_n18), .S(mult_170_G2_n19) );
  FA_X1 mult_170_G2_U14 ( .A(mult_170_G2_n21), .B(mult_170_G2_n24), .CI(
        mult_170_G2_n19), .CO(mult_170_G2_n16), .S(mult_170_G2_n17) );
  FA_X1 mult_170_G2_U13 ( .A(mult_170_G2_n53), .B(mult_170_G2_n49), .CI(
        mult_170_G2_n44), .CO(mult_170_G2_n14), .S(mult_170_G2_n15) );
  FA_X1 mult_170_G2_U12 ( .A(mult_170_G2_n15), .B(mult_170_G2_n20), .CI(
        mult_170_G2_n18), .CO(mult_170_G2_n12), .S(mult_170_G2_n13) );
  FA_X1 mult_170_G2_U11 ( .A(mult_170_G2_n43), .B(mult_170_G2_n48), .CI(
        mult_170_G2_n14), .CO(mult_170_G2_n10), .S(mult_170_G2_n11) );
  HA_X1 mult_170_G2_U10 ( .A(mult_170_G2_n69), .B(mult_170_G2_n64), .CO(
        mult_170_G2_n9), .S(p_1_1__1_) );
  FA_X1 mult_170_G2_U9 ( .A(mult_170_G2_n9), .B(mult_170_G2_n58), .CI(
        mult_170_G2_n41), .CO(mult_170_G2_n8), .S(p_1_1__2_) );
  FA_X1 mult_170_G2_U8 ( .A(mult_170_G2_n8), .B(mult_170_G2_n39), .CI(
        mult_170_G2_n37), .CO(mult_170_G2_n7), .S(p_1_1__3_) );
  FA_X1 mult_170_G2_U7 ( .A(mult_170_G2_n31), .B(mult_170_G2_n33), .CI(
        mult_170_G2_n7), .CO(mult_170_G2_n6), .S(p_1_1__4_) );
  FA_X1 mult_170_G2_U6 ( .A(mult_170_G2_n23), .B(mult_170_G2_n30), .CI(
        mult_170_G2_n6), .CO(mult_170_G2_n5), .S(p_1_1__5_) );
  FA_X1 mult_170_G2_U5 ( .A(mult_170_G2_n17), .B(mult_170_G2_n22), .CI(
        mult_170_G2_n5), .CO(mult_170_G2_n4), .S(p_1_1__6_) );
  FA_X1 mult_170_G2_U4 ( .A(mult_170_G2_n13), .B(mult_170_G2_n16), .CI(
        mult_170_G2_n4), .CO(mult_170_G2_n3), .S(p_1_1__7_) );
  FA_X1 mult_170_G2_U3 ( .A(mult_170_G2_n12), .B(mult_170_G2_n11), .CI(
        mult_170_G2_n3), .CO(mult_170_G2_n2), .S(p_1_1__8_) );
  FA_X1 mult_170_G2_U2 ( .A(mult_170_G2_n10), .B(mult_170_G2_n42), .CI(
        mult_170_G2_n2), .CO(mult_170_G2_n1), .S(p_1_1__9_) );
  NAND2_X1 mult_172_U113 ( .A1(b_p[3]), .A2(s_3p[2]), .ZN(mult_172_n29) );
  NAND2_X1 mult_172_U112 ( .A1(s_3p[4]), .A2(b_p[0]), .ZN(mult_172_n119) );
  NAND2_X1 mult_172_U111 ( .A1(b_p[2]), .A2(s_3p[2]), .ZN(mult_172_n118) );
  NAND2_X1 mult_172_U110 ( .A1(mult_172_n119), .A2(mult_172_n118), .ZN(
        mult_172_n34) );
  XNOR2_X1 mult_172_U109 ( .A(mult_172_n118), .B(mult_172_n119), .ZN(
        mult_172_n35) );
  AND2_X1 mult_172_U108 ( .A1(s_3p[5]), .A2(b_p[4]), .ZN(mult_172_n42) );
  NAND2_X1 mult_172_U107 ( .A1(b_p[4]), .A2(s_3p[4]), .ZN(mult_172_n43) );
  NAND2_X1 mult_172_U106 ( .A1(b_p[4]), .A2(s_3p[3]), .ZN(mult_172_n44) );
  NAND2_X1 mult_172_U105 ( .A1(b_p[4]), .A2(s_3p[2]), .ZN(mult_172_n45) );
  NAND2_X1 mult_172_U104 ( .A1(b_p[4]), .A2(s_3p[1]), .ZN(mult_172_n46) );
  NAND2_X1 mult_172_U103 ( .A1(b_p[4]), .A2(s_3p[0]), .ZN(mult_172_n47) );
  NAND2_X1 mult_172_U102 ( .A1(b_p[3]), .A2(s_3p[5]), .ZN(mult_172_n48) );
  NOR2_X1 mult_172_U101 ( .A1(mult_172_n108), .A2(mult_172_n114), .ZN(
        mult_172_n49) );
  NOR2_X1 mult_172_U100 ( .A1(mult_172_n109), .A2(mult_172_n114), .ZN(
        mult_172_n50) );
  NOR2_X1 mult_172_U99 ( .A1(mult_172_n112), .A2(mult_172_n114), .ZN(
        mult_172_n51) );
  NOR2_X1 mult_172_U98 ( .A1(mult_172_n113), .A2(mult_172_n114), .ZN(
        mult_172_n52) );
  NAND2_X1 mult_172_U97 ( .A1(b_p[2]), .A2(s_3p[5]), .ZN(mult_172_n53) );
  NOR2_X1 mult_172_U96 ( .A1(mult_172_n108), .A2(mult_172_n115), .ZN(
        mult_172_n54) );
  NOR2_X1 mult_172_U95 ( .A1(mult_172_n109), .A2(mult_172_n115), .ZN(
        mult_172_n55) );
  NOR2_X1 mult_172_U94 ( .A1(mult_172_n112), .A2(mult_172_n115), .ZN(
        mult_172_n57) );
  NOR2_X1 mult_172_U93 ( .A1(mult_172_n113), .A2(mult_172_n115), .ZN(
        mult_172_n58) );
  NAND2_X1 mult_172_U92 ( .A1(b_p[1]), .A2(s_3p[5]), .ZN(mult_172_n59) );
  NOR2_X1 mult_172_U91 ( .A1(mult_172_n116), .A2(mult_172_n108), .ZN(
        mult_172_n60) );
  NOR2_X1 mult_172_U90 ( .A1(mult_172_n109), .A2(mult_172_n116), .ZN(
        mult_172_n61) );
  NOR2_X1 mult_172_U89 ( .A1(mult_172_n110), .A2(mult_172_n116), .ZN(
        mult_172_n62) );
  NOR2_X1 mult_172_U88 ( .A1(mult_172_n112), .A2(mult_172_n116), .ZN(
        mult_172_n63) );
  NOR2_X1 mult_172_U87 ( .A1(mult_172_n113), .A2(mult_172_n116), .ZN(
        mult_172_n64) );
  NAND2_X1 mult_172_U86 ( .A1(s_3p[5]), .A2(b_p[0]), .ZN(mult_172_n65) );
  NOR2_X1 mult_172_U85 ( .A1(mult_172_n117), .A2(mult_172_n109), .ZN(
        mult_172_n67) );
  NOR2_X1 mult_172_U84 ( .A1(mult_172_n117), .A2(mult_172_n110), .ZN(
        mult_172_n68) );
  NOR2_X1 mult_172_U83 ( .A1(mult_172_n117), .A2(mult_172_n112), .ZN(
        mult_172_n69) );
  NOR2_X1 mult_172_U82 ( .A1(mult_172_n117), .A2(mult_172_n113), .ZN(p_3_0__0_) );
  INV_X1 mult_172_U81 ( .A(mult_172_n1), .ZN(p_3_0__10_) );
  INV_X1 mult_172_U80 ( .A(s_3p[2]), .ZN(mult_172_n110) );
  INV_X1 mult_172_U79 ( .A(s_3p[4]), .ZN(mult_172_n108) );
  INV_X1 mult_172_U78 ( .A(s_3p[3]), .ZN(mult_172_n109) );
  INV_X1 mult_172_U77 ( .A(s_3p[1]), .ZN(mult_172_n112) );
  INV_X1 mult_172_U76 ( .A(s_3p[0]), .ZN(mult_172_n113) );
  INV_X1 mult_172_U75 ( .A(b_p[1]), .ZN(mult_172_n116) );
  INV_X1 mult_172_U74 ( .A(b_p[0]), .ZN(mult_172_n117) );
  INV_X1 mult_172_U73 ( .A(b_p[3]), .ZN(mult_172_n114) );
  INV_X1 mult_172_U72 ( .A(b_p[2]), .ZN(mult_172_n115) );
  INV_X1 mult_172_U71 ( .A(mult_172_n29), .ZN(mult_172_n111) );
  HA_X1 mult_172_U27 ( .A(mult_172_n63), .B(mult_172_n68), .CO(mult_172_n40), 
        .S(mult_172_n41) );
  HA_X1 mult_172_U26 ( .A(mult_172_n52), .B(mult_172_n57), .CO(mult_172_n38), 
        .S(mult_172_n39) );
  FA_X1 mult_172_U25 ( .A(mult_172_n62), .B(mult_172_n67), .CI(mult_172_n40), 
        .CO(mult_172_n36), .S(mult_172_n37) );
  FA_X1 mult_172_U22 ( .A(mult_172_n51), .B(mult_172_n61), .CI(mult_172_n47), 
        .CO(mult_172_n32), .S(mult_172_n33) );
  FA_X1 mult_172_U21 ( .A(mult_172_n35), .B(mult_172_n38), .CI(mult_172_n36), 
        .CO(mult_172_n30), .S(mult_172_n31) );
  FA_X1 mult_172_U19 ( .A(mult_172_n60), .B(mult_172_n55), .CI(mult_172_n65), 
        .CO(mult_172_n26), .S(mult_172_n27) );
  FA_X1 mult_172_U18 ( .A(mult_172_n29), .B(mult_172_n46), .CI(mult_172_n34), 
        .CO(mult_172_n24), .S(mult_172_n25) );
  FA_X1 mult_172_U17 ( .A(mult_172_n27), .B(mult_172_n32), .CI(mult_172_n25), 
        .CO(mult_172_n22), .S(mult_172_n23) );
  FA_X1 mult_172_U16 ( .A(mult_172_n54), .B(mult_172_n111), .CI(mult_172_n50), 
        .CO(mult_172_n20), .S(mult_172_n21) );
  FA_X1 mult_172_U15 ( .A(mult_172_n45), .B(mult_172_n59), .CI(mult_172_n26), 
        .CO(mult_172_n18), .S(mult_172_n19) );
  FA_X1 mult_172_U14 ( .A(mult_172_n21), .B(mult_172_n24), .CI(mult_172_n19), 
        .CO(mult_172_n16), .S(mult_172_n17) );
  FA_X1 mult_172_U13 ( .A(mult_172_n53), .B(mult_172_n49), .CI(mult_172_n44), 
        .CO(mult_172_n14), .S(mult_172_n15) );
  FA_X1 mult_172_U12 ( .A(mult_172_n15), .B(mult_172_n20), .CI(mult_172_n18), 
        .CO(mult_172_n12), .S(mult_172_n13) );
  FA_X1 mult_172_U11 ( .A(mult_172_n43), .B(mult_172_n48), .CI(mult_172_n14), 
        .CO(mult_172_n10), .S(mult_172_n11) );
  HA_X1 mult_172_U10 ( .A(mult_172_n69), .B(mult_172_n64), .CO(mult_172_n9), 
        .S(p_3_0__1_) );
  FA_X1 mult_172_U9 ( .A(mult_172_n9), .B(mult_172_n58), .CI(mult_172_n41), 
        .CO(mult_172_n8), .S(p_3_0__2_) );
  FA_X1 mult_172_U8 ( .A(mult_172_n8), .B(mult_172_n39), .CI(mult_172_n37), 
        .CO(mult_172_n7), .S(p_3_0__3_) );
  FA_X1 mult_172_U7 ( .A(mult_172_n31), .B(mult_172_n33), .CI(mult_172_n7), 
        .CO(mult_172_n6), .S(p_3_0__4_) );
  FA_X1 mult_172_U6 ( .A(mult_172_n23), .B(mult_172_n30), .CI(mult_172_n6), 
        .CO(mult_172_n5), .S(p_3_0__5_) );
  FA_X1 mult_172_U5 ( .A(mult_172_n17), .B(mult_172_n22), .CI(mult_172_n5), 
        .CO(mult_172_n4), .S(p_3_0__6_) );
  FA_X1 mult_172_U4 ( .A(mult_172_n13), .B(mult_172_n16), .CI(mult_172_n4), 
        .CO(mult_172_n3), .S(p_3_0__7_) );
  FA_X1 mult_172_U3 ( .A(mult_172_n12), .B(mult_172_n11), .CI(mult_172_n3), 
        .CO(mult_172_n2), .S(p_3_0__8_) );
  FA_X1 mult_172_U2 ( .A(mult_172_n10), .B(mult_172_n42), .CI(mult_172_n2), 
        .CO(mult_172_n1), .S(p_3_0__9_) );
  NAND2_X1 mult_170_U113 ( .A1(b_p[3]), .A2(s_1p[2]), .ZN(mult_170_n29) );
  NAND2_X1 mult_170_U112 ( .A1(s_1p[4]), .A2(b_p[0]), .ZN(mult_170_n119) );
  NAND2_X1 mult_170_U111 ( .A1(b_p[2]), .A2(s_1p[2]), .ZN(mult_170_n118) );
  NAND2_X1 mult_170_U110 ( .A1(mult_170_n119), .A2(mult_170_n118), .ZN(
        mult_170_n34) );
  XNOR2_X1 mult_170_U109 ( .A(mult_170_n118), .B(mult_170_n119), .ZN(
        mult_170_n35) );
  AND2_X1 mult_170_U108 ( .A1(s_1p[5]), .A2(b_p[4]), .ZN(mult_170_n42) );
  NAND2_X1 mult_170_U107 ( .A1(b_p[4]), .A2(s_1p[4]), .ZN(mult_170_n43) );
  NAND2_X1 mult_170_U106 ( .A1(b_p[4]), .A2(s_1p[3]), .ZN(mult_170_n44) );
  NAND2_X1 mult_170_U105 ( .A1(b_p[4]), .A2(s_1p[2]), .ZN(mult_170_n45) );
  NAND2_X1 mult_170_U104 ( .A1(b_p[4]), .A2(s_1p[1]), .ZN(mult_170_n46) );
  NAND2_X1 mult_170_U103 ( .A1(b_p[4]), .A2(s_1p[0]), .ZN(mult_170_n47) );
  NAND2_X1 mult_170_U102 ( .A1(b_p[3]), .A2(s_1p[5]), .ZN(mult_170_n48) );
  NOR2_X1 mult_170_U101 ( .A1(mult_170_n113), .A2(mult_170_n108), .ZN(
        mult_170_n49) );
  NOR2_X1 mult_170_U100 ( .A1(mult_170_n114), .A2(mult_170_n108), .ZN(
        mult_170_n50) );
  NOR2_X1 mult_170_U99 ( .A1(mult_170_n116), .A2(mult_170_n108), .ZN(
        mult_170_n51) );
  NOR2_X1 mult_170_U98 ( .A1(mult_170_n117), .A2(mult_170_n108), .ZN(
        mult_170_n52) );
  NAND2_X1 mult_170_U97 ( .A1(b_p[2]), .A2(s_1p[5]), .ZN(mult_170_n53) );
  NOR2_X1 mult_170_U96 ( .A1(mult_170_n113), .A2(mult_170_n110), .ZN(
        mult_170_n54) );
  NOR2_X1 mult_170_U95 ( .A1(mult_170_n114), .A2(mult_170_n110), .ZN(
        mult_170_n55) );
  NOR2_X1 mult_170_U94 ( .A1(mult_170_n116), .A2(mult_170_n110), .ZN(
        mult_170_n57) );
  NOR2_X1 mult_170_U93 ( .A1(mult_170_n117), .A2(mult_170_n110), .ZN(
        mult_170_n58) );
  NAND2_X1 mult_170_U92 ( .A1(b_p[1]), .A2(s_1p[5]), .ZN(mult_170_n59) );
  NOR2_X1 mult_170_U91 ( .A1(mult_170_n111), .A2(mult_170_n113), .ZN(
        mult_170_n60) );
  NOR2_X1 mult_170_U90 ( .A1(mult_170_n114), .A2(mult_170_n111), .ZN(
        mult_170_n61) );
  NOR2_X1 mult_170_U89 ( .A1(mult_170_n115), .A2(mult_170_n111), .ZN(
        mult_170_n62) );
  NOR2_X1 mult_170_U88 ( .A1(mult_170_n116), .A2(mult_170_n111), .ZN(
        mult_170_n63) );
  NOR2_X1 mult_170_U87 ( .A1(mult_170_n117), .A2(mult_170_n111), .ZN(
        mult_170_n64) );
  NAND2_X1 mult_170_U86 ( .A1(s_1p[5]), .A2(b_p[0]), .ZN(mult_170_n65) );
  NOR2_X1 mult_170_U85 ( .A1(mult_170_n112), .A2(mult_170_n114), .ZN(
        mult_170_n67) );
  NOR2_X1 mult_170_U84 ( .A1(mult_170_n112), .A2(mult_170_n115), .ZN(
        mult_170_n68) );
  NOR2_X1 mult_170_U83 ( .A1(mult_170_n112), .A2(mult_170_n116), .ZN(
        mult_170_n69) );
  NOR2_X1 mult_170_U82 ( .A1(mult_170_n112), .A2(mult_170_n117), .ZN(p_1_0__0_) );
  INV_X1 mult_170_U81 ( .A(mult_170_n1), .ZN(p_1_0__10_) );
  INV_X1 mult_170_U80 ( .A(s_1p[2]), .ZN(mult_170_n115) );
  INV_X1 mult_170_U79 ( .A(s_1p[4]), .ZN(mult_170_n113) );
  INV_X1 mult_170_U78 ( .A(s_1p[3]), .ZN(mult_170_n114) );
  INV_X1 mult_170_U77 ( .A(s_1p[1]), .ZN(mult_170_n116) );
  INV_X1 mult_170_U76 ( .A(s_1p[0]), .ZN(mult_170_n117) );
  INV_X1 mult_170_U75 ( .A(b_p[1]), .ZN(mult_170_n111) );
  INV_X1 mult_170_U74 ( .A(b_p[0]), .ZN(mult_170_n112) );
  INV_X1 mult_170_U73 ( .A(b_p[3]), .ZN(mult_170_n108) );
  INV_X1 mult_170_U72 ( .A(b_p[2]), .ZN(mult_170_n110) );
  INV_X1 mult_170_U71 ( .A(mult_170_n29), .ZN(mult_170_n109) );
  HA_X1 mult_170_U27 ( .A(mult_170_n63), .B(mult_170_n68), .CO(mult_170_n40), 
        .S(mult_170_n41) );
  HA_X1 mult_170_U26 ( .A(mult_170_n52), .B(mult_170_n57), .CO(mult_170_n38), 
        .S(mult_170_n39) );
  FA_X1 mult_170_U25 ( .A(mult_170_n62), .B(mult_170_n67), .CI(mult_170_n40), 
        .CO(mult_170_n36), .S(mult_170_n37) );
  FA_X1 mult_170_U22 ( .A(mult_170_n51), .B(mult_170_n61), .CI(mult_170_n47), 
        .CO(mult_170_n32), .S(mult_170_n33) );
  FA_X1 mult_170_U21 ( .A(mult_170_n35), .B(mult_170_n38), .CI(mult_170_n36), 
        .CO(mult_170_n30), .S(mult_170_n31) );
  FA_X1 mult_170_U19 ( .A(mult_170_n60), .B(mult_170_n55), .CI(mult_170_n65), 
        .CO(mult_170_n26), .S(mult_170_n27) );
  FA_X1 mult_170_U18 ( .A(mult_170_n29), .B(mult_170_n46), .CI(mult_170_n34), 
        .CO(mult_170_n24), .S(mult_170_n25) );
  FA_X1 mult_170_U17 ( .A(mult_170_n27), .B(mult_170_n32), .CI(mult_170_n25), 
        .CO(mult_170_n22), .S(mult_170_n23) );
  FA_X1 mult_170_U16 ( .A(mult_170_n54), .B(mult_170_n109), .CI(mult_170_n50), 
        .CO(mult_170_n20), .S(mult_170_n21) );
  FA_X1 mult_170_U15 ( .A(mult_170_n45), .B(mult_170_n59), .CI(mult_170_n26), 
        .CO(mult_170_n18), .S(mult_170_n19) );
  FA_X1 mult_170_U14 ( .A(mult_170_n21), .B(mult_170_n24), .CI(mult_170_n19), 
        .CO(mult_170_n16), .S(mult_170_n17) );
  FA_X1 mult_170_U13 ( .A(mult_170_n53), .B(mult_170_n49), .CI(mult_170_n44), 
        .CO(mult_170_n14), .S(mult_170_n15) );
  FA_X1 mult_170_U12 ( .A(mult_170_n15), .B(mult_170_n20), .CI(mult_170_n18), 
        .CO(mult_170_n12), .S(mult_170_n13) );
  FA_X1 mult_170_U11 ( .A(mult_170_n43), .B(mult_170_n48), .CI(mult_170_n14), 
        .CO(mult_170_n10), .S(mult_170_n11) );
  HA_X1 mult_170_U10 ( .A(mult_170_n69), .B(mult_170_n64), .CO(mult_170_n9), 
        .S(p_1_0__1_) );
  FA_X1 mult_170_U9 ( .A(mult_170_n9), .B(mult_170_n58), .CI(mult_170_n41), 
        .CO(mult_170_n8), .S(p_1_0__2_) );
  FA_X1 mult_170_U8 ( .A(mult_170_n8), .B(mult_170_n39), .CI(mult_170_n37), 
        .CO(mult_170_n7), .S(p_1_0__3_) );
  FA_X1 mult_170_U7 ( .A(mult_170_n31), .B(mult_170_n33), .CI(mult_170_n7), 
        .CO(mult_170_n6), .S(p_1_0__4_) );
  FA_X1 mult_170_U6 ( .A(mult_170_n23), .B(mult_170_n30), .CI(mult_170_n6), 
        .CO(mult_170_n5), .S(p_1_0__5_) );
  FA_X1 mult_170_U5 ( .A(mult_170_n17), .B(mult_170_n22), .CI(mult_170_n5), 
        .CO(mult_170_n4), .S(p_1_0__6_) );
  FA_X1 mult_170_U4 ( .A(mult_170_n13), .B(mult_170_n16), .CI(mult_170_n4), 
        .CO(mult_170_n3), .S(p_1_0__7_) );
  FA_X1 mult_170_U3 ( .A(mult_170_n12), .B(mult_170_n11), .CI(mult_170_n3), 
        .CO(mult_170_n2), .S(p_1_0__8_) );
  FA_X1 mult_170_U2 ( .A(mult_170_n10), .B(mult_170_n42), .CI(mult_170_n2), 
        .CO(mult_170_n1), .S(p_1_0__9_) );
  NAND2_X1 mult_171_U113 ( .A1(b_p[3]), .A2(s_2p[2]), .ZN(mult_171_n29) );
  NAND2_X1 mult_171_U112 ( .A1(s_2p[4]), .A2(b_p[0]), .ZN(mult_171_n119) );
  NAND2_X1 mult_171_U111 ( .A1(b_p[2]), .A2(s_2p[2]), .ZN(mult_171_n118) );
  NAND2_X1 mult_171_U110 ( .A1(mult_171_n119), .A2(mult_171_n118), .ZN(
        mult_171_n34) );
  XNOR2_X1 mult_171_U109 ( .A(mult_171_n118), .B(mult_171_n119), .ZN(
        mult_171_n35) );
  AND2_X1 mult_171_U108 ( .A1(s_2p[5]), .A2(b_p[4]), .ZN(mult_171_n42) );
  NAND2_X1 mult_171_U107 ( .A1(b_p[4]), .A2(s_2p[4]), .ZN(mult_171_n43) );
  NAND2_X1 mult_171_U106 ( .A1(b_p[4]), .A2(s_2p[3]), .ZN(mult_171_n44) );
  NAND2_X1 mult_171_U105 ( .A1(b_p[4]), .A2(s_2p[2]), .ZN(mult_171_n45) );
  NAND2_X1 mult_171_U104 ( .A1(b_p[4]), .A2(s_2p[1]), .ZN(mult_171_n46) );
  NAND2_X1 mult_171_U103 ( .A1(b_p[4]), .A2(s_2p[0]), .ZN(mult_171_n47) );
  NAND2_X1 mult_171_U102 ( .A1(b_p[3]), .A2(s_2p[5]), .ZN(mult_171_n48) );
  NOR2_X1 mult_171_U101 ( .A1(mult_171_n108), .A2(mult_171_n114), .ZN(
        mult_171_n49) );
  NOR2_X1 mult_171_U100 ( .A1(mult_171_n109), .A2(mult_171_n114), .ZN(
        mult_171_n50) );
  NOR2_X1 mult_171_U99 ( .A1(mult_171_n112), .A2(mult_171_n114), .ZN(
        mult_171_n51) );
  NOR2_X1 mult_171_U98 ( .A1(mult_171_n113), .A2(mult_171_n114), .ZN(
        mult_171_n52) );
  NAND2_X1 mult_171_U97 ( .A1(b_p[2]), .A2(s_2p[5]), .ZN(mult_171_n53) );
  NOR2_X1 mult_171_U96 ( .A1(mult_171_n108), .A2(mult_171_n115), .ZN(
        mult_171_n54) );
  NOR2_X1 mult_171_U95 ( .A1(mult_171_n109), .A2(mult_171_n115), .ZN(
        mult_171_n55) );
  NOR2_X1 mult_171_U94 ( .A1(mult_171_n112), .A2(mult_171_n115), .ZN(
        mult_171_n57) );
  NOR2_X1 mult_171_U93 ( .A1(mult_171_n113), .A2(mult_171_n115), .ZN(
        mult_171_n58) );
  NAND2_X1 mult_171_U92 ( .A1(b_p[1]), .A2(s_2p[5]), .ZN(mult_171_n59) );
  NOR2_X1 mult_171_U91 ( .A1(mult_171_n116), .A2(mult_171_n108), .ZN(
        mult_171_n60) );
  NOR2_X1 mult_171_U90 ( .A1(mult_171_n109), .A2(mult_171_n116), .ZN(
        mult_171_n61) );
  NOR2_X1 mult_171_U89 ( .A1(mult_171_n110), .A2(mult_171_n116), .ZN(
        mult_171_n62) );
  NOR2_X1 mult_171_U88 ( .A1(mult_171_n112), .A2(mult_171_n116), .ZN(
        mult_171_n63) );
  NOR2_X1 mult_171_U87 ( .A1(mult_171_n113), .A2(mult_171_n116), .ZN(
        mult_171_n64) );
  NAND2_X1 mult_171_U86 ( .A1(s_2p[5]), .A2(b_p[0]), .ZN(mult_171_n65) );
  NOR2_X1 mult_171_U85 ( .A1(mult_171_n117), .A2(mult_171_n109), .ZN(
        mult_171_n67) );
  NOR2_X1 mult_171_U84 ( .A1(mult_171_n117), .A2(mult_171_n110), .ZN(
        mult_171_n68) );
  NOR2_X1 mult_171_U83 ( .A1(mult_171_n117), .A2(mult_171_n112), .ZN(
        mult_171_n69) );
  NOR2_X1 mult_171_U82 ( .A1(mult_171_n117), .A2(mult_171_n113), .ZN(p_2_0__0_) );
  INV_X1 mult_171_U81 ( .A(mult_171_n1), .ZN(p_2_0__10_) );
  INV_X1 mult_171_U80 ( .A(s_2p[2]), .ZN(mult_171_n110) );
  INV_X1 mult_171_U79 ( .A(s_2p[4]), .ZN(mult_171_n108) );
  INV_X1 mult_171_U78 ( .A(s_2p[3]), .ZN(mult_171_n109) );
  INV_X1 mult_171_U77 ( .A(s_2p[1]), .ZN(mult_171_n112) );
  INV_X1 mult_171_U76 ( .A(s_2p[0]), .ZN(mult_171_n113) );
  INV_X1 mult_171_U75 ( .A(b_p[1]), .ZN(mult_171_n116) );
  INV_X1 mult_171_U74 ( .A(b_p[0]), .ZN(mult_171_n117) );
  INV_X1 mult_171_U73 ( .A(b_p[3]), .ZN(mult_171_n114) );
  INV_X1 mult_171_U72 ( .A(b_p[2]), .ZN(mult_171_n115) );
  INV_X1 mult_171_U71 ( .A(mult_171_n29), .ZN(mult_171_n111) );
  HA_X1 mult_171_U27 ( .A(mult_171_n63), .B(mult_171_n68), .CO(mult_171_n40), 
        .S(mult_171_n41) );
  HA_X1 mult_171_U26 ( .A(mult_171_n52), .B(mult_171_n57), .CO(mult_171_n38), 
        .S(mult_171_n39) );
  FA_X1 mult_171_U25 ( .A(mult_171_n62), .B(mult_171_n67), .CI(mult_171_n40), 
        .CO(mult_171_n36), .S(mult_171_n37) );
  FA_X1 mult_171_U22 ( .A(mult_171_n51), .B(mult_171_n61), .CI(mult_171_n47), 
        .CO(mult_171_n32), .S(mult_171_n33) );
  FA_X1 mult_171_U21 ( .A(mult_171_n35), .B(mult_171_n38), .CI(mult_171_n36), 
        .CO(mult_171_n30), .S(mult_171_n31) );
  FA_X1 mult_171_U19 ( .A(mult_171_n60), .B(mult_171_n55), .CI(mult_171_n65), 
        .CO(mult_171_n26), .S(mult_171_n27) );
  FA_X1 mult_171_U18 ( .A(mult_171_n29), .B(mult_171_n46), .CI(mult_171_n34), 
        .CO(mult_171_n24), .S(mult_171_n25) );
  FA_X1 mult_171_U17 ( .A(mult_171_n27), .B(mult_171_n32), .CI(mult_171_n25), 
        .CO(mult_171_n22), .S(mult_171_n23) );
  FA_X1 mult_171_U16 ( .A(mult_171_n54), .B(mult_171_n111), .CI(mult_171_n50), 
        .CO(mult_171_n20), .S(mult_171_n21) );
  FA_X1 mult_171_U15 ( .A(mult_171_n45), .B(mult_171_n59), .CI(mult_171_n26), 
        .CO(mult_171_n18), .S(mult_171_n19) );
  FA_X1 mult_171_U14 ( .A(mult_171_n21), .B(mult_171_n24), .CI(mult_171_n19), 
        .CO(mult_171_n16), .S(mult_171_n17) );
  FA_X1 mult_171_U13 ( .A(mult_171_n53), .B(mult_171_n49), .CI(mult_171_n44), 
        .CO(mult_171_n14), .S(mult_171_n15) );
  FA_X1 mult_171_U12 ( .A(mult_171_n15), .B(mult_171_n20), .CI(mult_171_n18), 
        .CO(mult_171_n12), .S(mult_171_n13) );
  FA_X1 mult_171_U11 ( .A(mult_171_n43), .B(mult_171_n48), .CI(mult_171_n14), 
        .CO(mult_171_n10), .S(mult_171_n11) );
  HA_X1 mult_171_U10 ( .A(mult_171_n69), .B(mult_171_n64), .CO(mult_171_n9), 
        .S(p_2_0__1_) );
  FA_X1 mult_171_U9 ( .A(mult_171_n9), .B(mult_171_n58), .CI(mult_171_n41), 
        .CO(mult_171_n8), .S(p_2_0__2_) );
  FA_X1 mult_171_U8 ( .A(mult_171_n8), .B(mult_171_n39), .CI(mult_171_n37), 
        .CO(mult_171_n7), .S(p_2_0__3_) );
  FA_X1 mult_171_U7 ( .A(mult_171_n31), .B(mult_171_n33), .CI(mult_171_n7), 
        .CO(mult_171_n6), .S(p_2_0__4_) );
  FA_X1 mult_171_U6 ( .A(mult_171_n23), .B(mult_171_n30), .CI(mult_171_n6), 
        .CO(mult_171_n5), .S(p_2_0__5_) );
  FA_X1 mult_171_U5 ( .A(mult_171_n17), .B(mult_171_n22), .CI(mult_171_n5), 
        .CO(mult_171_n4), .S(p_2_0__6_) );
  FA_X1 mult_171_U4 ( .A(mult_171_n13), .B(mult_171_n16), .CI(mult_171_n4), 
        .CO(mult_171_n3), .S(p_2_0__7_) );
  FA_X1 mult_171_U3 ( .A(mult_171_n12), .B(mult_171_n11), .CI(mult_171_n3), 
        .CO(mult_171_n2), .S(p_2_0__8_) );
  FA_X1 mult_171_U2 ( .A(mult_171_n10), .B(mult_171_n42), .CI(mult_171_n2), 
        .CO(mult_171_n1), .S(p_2_0__9_) );
  NAND2_X1 mult_172_G4_U113 ( .A1(b_p[18]), .A2(s_3p[20]), .ZN(mult_172_G4_n29) );
  NAND2_X1 mult_172_G4_U112 ( .A1(s_3p[22]), .A2(b_p[15]), .ZN(
        mult_172_G4_n119) );
  NAND2_X1 mult_172_G4_U111 ( .A1(b_p[17]), .A2(s_3p[20]), .ZN(
        mult_172_G4_n118) );
  NAND2_X1 mult_172_G4_U110 ( .A1(mult_172_G4_n119), .A2(mult_172_G4_n118), 
        .ZN(mult_172_G4_n34) );
  XNOR2_X1 mult_172_G4_U109 ( .A(mult_172_G4_n118), .B(mult_172_G4_n119), .ZN(
        mult_172_G4_n35) );
  AND2_X1 mult_172_G4_U108 ( .A1(s_3p[23]), .A2(b_p[19]), .ZN(mult_172_G4_n42)
         );
  NAND2_X1 mult_172_G4_U107 ( .A1(b_p[19]), .A2(s_3p[22]), .ZN(mult_172_G4_n43) );
  NAND2_X1 mult_172_G4_U106 ( .A1(b_p[19]), .A2(s_3p[21]), .ZN(mult_172_G4_n44) );
  NAND2_X1 mult_172_G4_U105 ( .A1(b_p[19]), .A2(s_3p[20]), .ZN(mult_172_G4_n45) );
  NAND2_X1 mult_172_G4_U104 ( .A1(b_p[19]), .A2(s_3p[19]), .ZN(mult_172_G4_n46) );
  NAND2_X1 mult_172_G4_U103 ( .A1(b_p[19]), .A2(s_3p[18]), .ZN(mult_172_G4_n47) );
  NAND2_X1 mult_172_G4_U102 ( .A1(b_p[18]), .A2(s_3p[23]), .ZN(mult_172_G4_n48) );
  NOR2_X1 mult_172_G4_U101 ( .A1(mult_172_G4_n108), .A2(mult_172_G4_n114), 
        .ZN(mult_172_G4_n49) );
  NOR2_X1 mult_172_G4_U100 ( .A1(mult_172_G4_n109), .A2(mult_172_G4_n114), 
        .ZN(mult_172_G4_n50) );
  NOR2_X1 mult_172_G4_U99 ( .A1(mult_172_G4_n112), .A2(mult_172_G4_n114), .ZN(
        mult_172_G4_n51) );
  NOR2_X1 mult_172_G4_U98 ( .A1(mult_172_G4_n113), .A2(mult_172_G4_n114), .ZN(
        mult_172_G4_n52) );
  NAND2_X1 mult_172_G4_U97 ( .A1(b_p[17]), .A2(s_3p[23]), .ZN(mult_172_G4_n53)
         );
  NOR2_X1 mult_172_G4_U96 ( .A1(mult_172_G4_n108), .A2(mult_172_G4_n115), .ZN(
        mult_172_G4_n54) );
  NOR2_X1 mult_172_G4_U95 ( .A1(mult_172_G4_n109), .A2(mult_172_G4_n115), .ZN(
        mult_172_G4_n55) );
  NOR2_X1 mult_172_G4_U94 ( .A1(mult_172_G4_n112), .A2(mult_172_G4_n115), .ZN(
        mult_172_G4_n57) );
  NOR2_X1 mult_172_G4_U93 ( .A1(mult_172_G4_n113), .A2(mult_172_G4_n115), .ZN(
        mult_172_G4_n58) );
  NAND2_X1 mult_172_G4_U92 ( .A1(b_p[16]), .A2(s_3p[23]), .ZN(mult_172_G4_n59)
         );
  NOR2_X1 mult_172_G4_U91 ( .A1(mult_172_G4_n116), .A2(mult_172_G4_n108), .ZN(
        mult_172_G4_n60) );
  NOR2_X1 mult_172_G4_U90 ( .A1(mult_172_G4_n109), .A2(mult_172_G4_n116), .ZN(
        mult_172_G4_n61) );
  NOR2_X1 mult_172_G4_U89 ( .A1(mult_172_G4_n110), .A2(mult_172_G4_n116), .ZN(
        mult_172_G4_n62) );
  NOR2_X1 mult_172_G4_U88 ( .A1(mult_172_G4_n112), .A2(mult_172_G4_n116), .ZN(
        mult_172_G4_n63) );
  NOR2_X1 mult_172_G4_U87 ( .A1(mult_172_G4_n113), .A2(mult_172_G4_n116), .ZN(
        mult_172_G4_n64) );
  NAND2_X1 mult_172_G4_U86 ( .A1(s_3p[23]), .A2(b_p[15]), .ZN(mult_172_G4_n65)
         );
  NOR2_X1 mult_172_G4_U85 ( .A1(mult_172_G4_n117), .A2(mult_172_G4_n109), .ZN(
        mult_172_G4_n67) );
  NOR2_X1 mult_172_G4_U84 ( .A1(mult_172_G4_n117), .A2(mult_172_G4_n110), .ZN(
        mult_172_G4_n68) );
  NOR2_X1 mult_172_G4_U83 ( .A1(mult_172_G4_n117), .A2(mult_172_G4_n112), .ZN(
        mult_172_G4_n69) );
  NOR2_X1 mult_172_G4_U82 ( .A1(mult_172_G4_n117), .A2(mult_172_G4_n113), .ZN(
        p_3_3__0_) );
  INV_X1 mult_172_G4_U81 ( .A(mult_172_G4_n1), .ZN(p_3_3__10_) );
  INV_X1 mult_172_G4_U80 ( .A(s_3p[20]), .ZN(mult_172_G4_n110) );
  INV_X1 mult_172_G4_U79 ( .A(s_3p[22]), .ZN(mult_172_G4_n108) );
  INV_X1 mult_172_G4_U78 ( .A(s_3p[21]), .ZN(mult_172_G4_n109) );
  INV_X1 mult_172_G4_U77 ( .A(s_3p[19]), .ZN(mult_172_G4_n112) );
  INV_X1 mult_172_G4_U76 ( .A(s_3p[18]), .ZN(mult_172_G4_n113) );
  INV_X1 mult_172_G4_U75 ( .A(b_p[16]), .ZN(mult_172_G4_n116) );
  INV_X1 mult_172_G4_U74 ( .A(b_p[15]), .ZN(mult_172_G4_n117) );
  INV_X1 mult_172_G4_U73 ( .A(b_p[18]), .ZN(mult_172_G4_n114) );
  INV_X1 mult_172_G4_U72 ( .A(b_p[17]), .ZN(mult_172_G4_n115) );
  INV_X1 mult_172_G4_U71 ( .A(mult_172_G4_n29), .ZN(mult_172_G4_n111) );
  HA_X1 mult_172_G4_U27 ( .A(mult_172_G4_n63), .B(mult_172_G4_n68), .CO(
        mult_172_G4_n40), .S(mult_172_G4_n41) );
  HA_X1 mult_172_G4_U26 ( .A(mult_172_G4_n52), .B(mult_172_G4_n57), .CO(
        mult_172_G4_n38), .S(mult_172_G4_n39) );
  FA_X1 mult_172_G4_U25 ( .A(mult_172_G4_n62), .B(mult_172_G4_n67), .CI(
        mult_172_G4_n40), .CO(mult_172_G4_n36), .S(mult_172_G4_n37) );
  FA_X1 mult_172_G4_U22 ( .A(mult_172_G4_n51), .B(mult_172_G4_n61), .CI(
        mult_172_G4_n47), .CO(mult_172_G4_n32), .S(mult_172_G4_n33) );
  FA_X1 mult_172_G4_U21 ( .A(mult_172_G4_n35), .B(mult_172_G4_n38), .CI(
        mult_172_G4_n36), .CO(mult_172_G4_n30), .S(mult_172_G4_n31) );
  FA_X1 mult_172_G4_U19 ( .A(mult_172_G4_n60), .B(mult_172_G4_n55), .CI(
        mult_172_G4_n65), .CO(mult_172_G4_n26), .S(mult_172_G4_n27) );
  FA_X1 mult_172_G4_U18 ( .A(mult_172_G4_n29), .B(mult_172_G4_n46), .CI(
        mult_172_G4_n34), .CO(mult_172_G4_n24), .S(mult_172_G4_n25) );
  FA_X1 mult_172_G4_U17 ( .A(mult_172_G4_n27), .B(mult_172_G4_n32), .CI(
        mult_172_G4_n25), .CO(mult_172_G4_n22), .S(mult_172_G4_n23) );
  FA_X1 mult_172_G4_U16 ( .A(mult_172_G4_n54), .B(mult_172_G4_n111), .CI(
        mult_172_G4_n50), .CO(mult_172_G4_n20), .S(mult_172_G4_n21) );
  FA_X1 mult_172_G4_U15 ( .A(mult_172_G4_n45), .B(mult_172_G4_n59), .CI(
        mult_172_G4_n26), .CO(mult_172_G4_n18), .S(mult_172_G4_n19) );
  FA_X1 mult_172_G4_U14 ( .A(mult_172_G4_n21), .B(mult_172_G4_n24), .CI(
        mult_172_G4_n19), .CO(mult_172_G4_n16), .S(mult_172_G4_n17) );
  FA_X1 mult_172_G4_U13 ( .A(mult_172_G4_n53), .B(mult_172_G4_n49), .CI(
        mult_172_G4_n44), .CO(mult_172_G4_n14), .S(mult_172_G4_n15) );
  FA_X1 mult_172_G4_U12 ( .A(mult_172_G4_n15), .B(mult_172_G4_n20), .CI(
        mult_172_G4_n18), .CO(mult_172_G4_n12), .S(mult_172_G4_n13) );
  FA_X1 mult_172_G4_U11 ( .A(mult_172_G4_n43), .B(mult_172_G4_n48), .CI(
        mult_172_G4_n14), .CO(mult_172_G4_n10), .S(mult_172_G4_n11) );
  HA_X1 mult_172_G4_U10 ( .A(mult_172_G4_n69), .B(mult_172_G4_n64), .CO(
        mult_172_G4_n9), .S(p_3_3__1_) );
  FA_X1 mult_172_G4_U9 ( .A(mult_172_G4_n9), .B(mult_172_G4_n58), .CI(
        mult_172_G4_n41), .CO(mult_172_G4_n8), .S(p_3_3__2_) );
  FA_X1 mult_172_G4_U8 ( .A(mult_172_G4_n8), .B(mult_172_G4_n39), .CI(
        mult_172_G4_n37), .CO(mult_172_G4_n7), .S(p_3_3__3_) );
  FA_X1 mult_172_G4_U7 ( .A(mult_172_G4_n31), .B(mult_172_G4_n33), .CI(
        mult_172_G4_n7), .CO(mult_172_G4_n6), .S(p_3_3__4_) );
  FA_X1 mult_172_G4_U6 ( .A(mult_172_G4_n23), .B(mult_172_G4_n30), .CI(
        mult_172_G4_n6), .CO(mult_172_G4_n5), .S(p_3_3__5_) );
  FA_X1 mult_172_G4_U5 ( .A(mult_172_G4_n17), .B(mult_172_G4_n22), .CI(
        mult_172_G4_n5), .CO(mult_172_G4_n4), .S(p_3_3__6_) );
  FA_X1 mult_172_G4_U4 ( .A(mult_172_G4_n13), .B(mult_172_G4_n16), .CI(
        mult_172_G4_n4), .CO(mult_172_G4_n3), .S(p_3_3__7_) );
  FA_X1 mult_172_G4_U3 ( .A(mult_172_G4_n12), .B(mult_172_G4_n11), .CI(
        mult_172_G4_n3), .CO(mult_172_G4_n2), .S(p_3_3__8_) );
  FA_X1 mult_172_G4_U2 ( .A(mult_172_G4_n10), .B(mult_172_G4_n42), .CI(
        mult_172_G4_n2), .CO(mult_172_G4_n1), .S(p_3_3__9_) );
  NAND2_X1 mult_170_G4_U113 ( .A1(b_p[18]), .A2(s_1p[20]), .ZN(mult_170_G4_n29) );
  NAND2_X1 mult_170_G4_U112 ( .A1(s_1p[22]), .A2(b_p[15]), .ZN(
        mult_170_G4_n119) );
  NAND2_X1 mult_170_G4_U111 ( .A1(b_p[17]), .A2(s_1p[20]), .ZN(
        mult_170_G4_n118) );
  NAND2_X1 mult_170_G4_U110 ( .A1(mult_170_G4_n119), .A2(mult_170_G4_n118), 
        .ZN(mult_170_G4_n34) );
  XNOR2_X1 mult_170_G4_U109 ( .A(mult_170_G4_n118), .B(mult_170_G4_n119), .ZN(
        mult_170_G4_n35) );
  AND2_X1 mult_170_G4_U108 ( .A1(s_1p[23]), .A2(b_p[19]), .ZN(mult_170_G4_n42)
         );
  NAND2_X1 mult_170_G4_U107 ( .A1(b_p[19]), .A2(s_1p[22]), .ZN(mult_170_G4_n43) );
  NAND2_X1 mult_170_G4_U106 ( .A1(b_p[19]), .A2(s_1p[21]), .ZN(mult_170_G4_n44) );
  NAND2_X1 mult_170_G4_U105 ( .A1(b_p[19]), .A2(s_1p[20]), .ZN(mult_170_G4_n45) );
  NAND2_X1 mult_170_G4_U104 ( .A1(b_p[19]), .A2(s_1p[19]), .ZN(mult_170_G4_n46) );
  NAND2_X1 mult_170_G4_U103 ( .A1(b_p[19]), .A2(s_1p[18]), .ZN(mult_170_G4_n47) );
  NAND2_X1 mult_170_G4_U102 ( .A1(b_p[18]), .A2(s_1p[23]), .ZN(mult_170_G4_n48) );
  NOR2_X1 mult_170_G4_U101 ( .A1(mult_170_G4_n108), .A2(mult_170_G4_n114), 
        .ZN(mult_170_G4_n49) );
  NOR2_X1 mult_170_G4_U100 ( .A1(mult_170_G4_n109), .A2(mult_170_G4_n114), 
        .ZN(mult_170_G4_n50) );
  NOR2_X1 mult_170_G4_U99 ( .A1(mult_170_G4_n112), .A2(mult_170_G4_n114), .ZN(
        mult_170_G4_n51) );
  NOR2_X1 mult_170_G4_U98 ( .A1(mult_170_G4_n113), .A2(mult_170_G4_n114), .ZN(
        mult_170_G4_n52) );
  NAND2_X1 mult_170_G4_U97 ( .A1(b_p[17]), .A2(s_1p[23]), .ZN(mult_170_G4_n53)
         );
  NOR2_X1 mult_170_G4_U96 ( .A1(mult_170_G4_n108), .A2(mult_170_G4_n115), .ZN(
        mult_170_G4_n54) );
  NOR2_X1 mult_170_G4_U95 ( .A1(mult_170_G4_n109), .A2(mult_170_G4_n115), .ZN(
        mult_170_G4_n55) );
  NOR2_X1 mult_170_G4_U94 ( .A1(mult_170_G4_n112), .A2(mult_170_G4_n115), .ZN(
        mult_170_G4_n57) );
  NOR2_X1 mult_170_G4_U93 ( .A1(mult_170_G4_n113), .A2(mult_170_G4_n115), .ZN(
        mult_170_G4_n58) );
  NAND2_X1 mult_170_G4_U92 ( .A1(b_p[16]), .A2(s_1p[23]), .ZN(mult_170_G4_n59)
         );
  NOR2_X1 mult_170_G4_U91 ( .A1(mult_170_G4_n116), .A2(mult_170_G4_n108), .ZN(
        mult_170_G4_n60) );
  NOR2_X1 mult_170_G4_U90 ( .A1(mult_170_G4_n109), .A2(mult_170_G4_n116), .ZN(
        mult_170_G4_n61) );
  NOR2_X1 mult_170_G4_U89 ( .A1(mult_170_G4_n110), .A2(mult_170_G4_n116), .ZN(
        mult_170_G4_n62) );
  NOR2_X1 mult_170_G4_U88 ( .A1(mult_170_G4_n112), .A2(mult_170_G4_n116), .ZN(
        mult_170_G4_n63) );
  NOR2_X1 mult_170_G4_U87 ( .A1(mult_170_G4_n113), .A2(mult_170_G4_n116), .ZN(
        mult_170_G4_n64) );
  NAND2_X1 mult_170_G4_U86 ( .A1(s_1p[23]), .A2(b_p[15]), .ZN(mult_170_G4_n65)
         );
  NOR2_X1 mult_170_G4_U85 ( .A1(mult_170_G4_n117), .A2(mult_170_G4_n109), .ZN(
        mult_170_G4_n67) );
  NOR2_X1 mult_170_G4_U84 ( .A1(mult_170_G4_n117), .A2(mult_170_G4_n110), .ZN(
        mult_170_G4_n68) );
  NOR2_X1 mult_170_G4_U83 ( .A1(mult_170_G4_n117), .A2(mult_170_G4_n112), .ZN(
        mult_170_G4_n69) );
  NOR2_X1 mult_170_G4_U82 ( .A1(mult_170_G4_n117), .A2(mult_170_G4_n113), .ZN(
        p_1_3__0_) );
  INV_X1 mult_170_G4_U81 ( .A(mult_170_G4_n1), .ZN(p_1_3__10_) );
  INV_X1 mult_170_G4_U80 ( .A(s_1p[20]), .ZN(mult_170_G4_n110) );
  INV_X1 mult_170_G4_U79 ( .A(s_1p[22]), .ZN(mult_170_G4_n108) );
  INV_X1 mult_170_G4_U78 ( .A(s_1p[21]), .ZN(mult_170_G4_n109) );
  INV_X1 mult_170_G4_U77 ( .A(s_1p[19]), .ZN(mult_170_G4_n112) );
  INV_X1 mult_170_G4_U76 ( .A(s_1p[18]), .ZN(mult_170_G4_n113) );
  INV_X1 mult_170_G4_U75 ( .A(b_p[16]), .ZN(mult_170_G4_n116) );
  INV_X1 mult_170_G4_U74 ( .A(b_p[15]), .ZN(mult_170_G4_n117) );
  INV_X1 mult_170_G4_U73 ( .A(b_p[18]), .ZN(mult_170_G4_n114) );
  INV_X1 mult_170_G4_U72 ( .A(b_p[17]), .ZN(mult_170_G4_n115) );
  INV_X1 mult_170_G4_U71 ( .A(mult_170_G4_n29), .ZN(mult_170_G4_n111) );
  HA_X1 mult_170_G4_U27 ( .A(mult_170_G4_n63), .B(mult_170_G4_n68), .CO(
        mult_170_G4_n40), .S(mult_170_G4_n41) );
  HA_X1 mult_170_G4_U26 ( .A(mult_170_G4_n52), .B(mult_170_G4_n57), .CO(
        mult_170_G4_n38), .S(mult_170_G4_n39) );
  FA_X1 mult_170_G4_U25 ( .A(mult_170_G4_n62), .B(mult_170_G4_n67), .CI(
        mult_170_G4_n40), .CO(mult_170_G4_n36), .S(mult_170_G4_n37) );
  FA_X1 mult_170_G4_U22 ( .A(mult_170_G4_n51), .B(mult_170_G4_n61), .CI(
        mult_170_G4_n47), .CO(mult_170_G4_n32), .S(mult_170_G4_n33) );
  FA_X1 mult_170_G4_U21 ( .A(mult_170_G4_n35), .B(mult_170_G4_n38), .CI(
        mult_170_G4_n36), .CO(mult_170_G4_n30), .S(mult_170_G4_n31) );
  FA_X1 mult_170_G4_U19 ( .A(mult_170_G4_n60), .B(mult_170_G4_n55), .CI(
        mult_170_G4_n65), .CO(mult_170_G4_n26), .S(mult_170_G4_n27) );
  FA_X1 mult_170_G4_U18 ( .A(mult_170_G4_n29), .B(mult_170_G4_n46), .CI(
        mult_170_G4_n34), .CO(mult_170_G4_n24), .S(mult_170_G4_n25) );
  FA_X1 mult_170_G4_U17 ( .A(mult_170_G4_n27), .B(mult_170_G4_n32), .CI(
        mult_170_G4_n25), .CO(mult_170_G4_n22), .S(mult_170_G4_n23) );
  FA_X1 mult_170_G4_U16 ( .A(mult_170_G4_n54), .B(mult_170_G4_n111), .CI(
        mult_170_G4_n50), .CO(mult_170_G4_n20), .S(mult_170_G4_n21) );
  FA_X1 mult_170_G4_U15 ( .A(mult_170_G4_n45), .B(mult_170_G4_n59), .CI(
        mult_170_G4_n26), .CO(mult_170_G4_n18), .S(mult_170_G4_n19) );
  FA_X1 mult_170_G4_U14 ( .A(mult_170_G4_n21), .B(mult_170_G4_n24), .CI(
        mult_170_G4_n19), .CO(mult_170_G4_n16), .S(mult_170_G4_n17) );
  FA_X1 mult_170_G4_U13 ( .A(mult_170_G4_n53), .B(mult_170_G4_n49), .CI(
        mult_170_G4_n44), .CO(mult_170_G4_n14), .S(mult_170_G4_n15) );
  FA_X1 mult_170_G4_U12 ( .A(mult_170_G4_n15), .B(mult_170_G4_n20), .CI(
        mult_170_G4_n18), .CO(mult_170_G4_n12), .S(mult_170_G4_n13) );
  FA_X1 mult_170_G4_U11 ( .A(mult_170_G4_n43), .B(mult_170_G4_n48), .CI(
        mult_170_G4_n14), .CO(mult_170_G4_n10), .S(mult_170_G4_n11) );
  HA_X1 mult_170_G4_U10 ( .A(mult_170_G4_n69), .B(mult_170_G4_n64), .CO(
        mult_170_G4_n9), .S(p_1_3__1_) );
  FA_X1 mult_170_G4_U9 ( .A(mult_170_G4_n9), .B(mult_170_G4_n58), .CI(
        mult_170_G4_n41), .CO(mult_170_G4_n8), .S(p_1_3__2_) );
  FA_X1 mult_170_G4_U8 ( .A(mult_170_G4_n8), .B(mult_170_G4_n39), .CI(
        mult_170_G4_n37), .CO(mult_170_G4_n7), .S(p_1_3__3_) );
  FA_X1 mult_170_G4_U7 ( .A(mult_170_G4_n31), .B(mult_170_G4_n33), .CI(
        mult_170_G4_n7), .CO(mult_170_G4_n6), .S(p_1_3__4_) );
  FA_X1 mult_170_G4_U6 ( .A(mult_170_G4_n23), .B(mult_170_G4_n30), .CI(
        mult_170_G4_n6), .CO(mult_170_G4_n5), .S(p_1_3__5_) );
  FA_X1 mult_170_G4_U5 ( .A(mult_170_G4_n17), .B(mult_170_G4_n22), .CI(
        mult_170_G4_n5), .CO(mult_170_G4_n4), .S(p_1_3__6_) );
  FA_X1 mult_170_G4_U4 ( .A(mult_170_G4_n13), .B(mult_170_G4_n16), .CI(
        mult_170_G4_n4), .CO(mult_170_G4_n3), .S(p_1_3__7_) );
  FA_X1 mult_170_G4_U3 ( .A(mult_170_G4_n12), .B(mult_170_G4_n11), .CI(
        mult_170_G4_n3), .CO(mult_170_G4_n2), .S(p_1_3__8_) );
  FA_X1 mult_170_G4_U2 ( .A(mult_170_G4_n10), .B(mult_170_G4_n42), .CI(
        mult_170_G4_n2), .CO(mult_170_G4_n1), .S(p_1_3__9_) );
  NAND2_X1 mult_171_G4_U113 ( .A1(b_p[18]), .A2(s_2p[20]), .ZN(mult_171_G4_n29) );
  NAND2_X1 mult_171_G4_U112 ( .A1(s_2p[22]), .A2(b_p[15]), .ZN(
        mult_171_G4_n119) );
  NAND2_X1 mult_171_G4_U111 ( .A1(b_p[17]), .A2(s_2p[20]), .ZN(
        mult_171_G4_n118) );
  NAND2_X1 mult_171_G4_U110 ( .A1(mult_171_G4_n119), .A2(mult_171_G4_n118), 
        .ZN(mult_171_G4_n34) );
  XNOR2_X1 mult_171_G4_U109 ( .A(mult_171_G4_n118), .B(mult_171_G4_n119), .ZN(
        mult_171_G4_n35) );
  AND2_X1 mult_171_G4_U108 ( .A1(s_2p[23]), .A2(b_p[19]), .ZN(mult_171_G4_n42)
         );
  NAND2_X1 mult_171_G4_U107 ( .A1(b_p[19]), .A2(s_2p[22]), .ZN(mult_171_G4_n43) );
  NAND2_X1 mult_171_G4_U106 ( .A1(b_p[19]), .A2(s_2p[21]), .ZN(mult_171_G4_n44) );
  NAND2_X1 mult_171_G4_U105 ( .A1(b_p[19]), .A2(s_2p[20]), .ZN(mult_171_G4_n45) );
  NAND2_X1 mult_171_G4_U104 ( .A1(b_p[19]), .A2(s_2p[19]), .ZN(mult_171_G4_n46) );
  NAND2_X1 mult_171_G4_U103 ( .A1(b_p[19]), .A2(s_2p[18]), .ZN(mult_171_G4_n47) );
  NAND2_X1 mult_171_G4_U102 ( .A1(b_p[18]), .A2(s_2p[23]), .ZN(mult_171_G4_n48) );
  NOR2_X1 mult_171_G4_U101 ( .A1(mult_171_G4_n108), .A2(mult_171_G4_n114), 
        .ZN(mult_171_G4_n49) );
  NOR2_X1 mult_171_G4_U100 ( .A1(mult_171_G4_n109), .A2(mult_171_G4_n114), 
        .ZN(mult_171_G4_n50) );
  NOR2_X1 mult_171_G4_U99 ( .A1(mult_171_G4_n112), .A2(mult_171_G4_n114), .ZN(
        mult_171_G4_n51) );
  NOR2_X1 mult_171_G4_U98 ( .A1(mult_171_G4_n113), .A2(mult_171_G4_n114), .ZN(
        mult_171_G4_n52) );
  NAND2_X1 mult_171_G4_U97 ( .A1(b_p[17]), .A2(s_2p[23]), .ZN(mult_171_G4_n53)
         );
  NOR2_X1 mult_171_G4_U96 ( .A1(mult_171_G4_n108), .A2(mult_171_G4_n115), .ZN(
        mult_171_G4_n54) );
  NOR2_X1 mult_171_G4_U95 ( .A1(mult_171_G4_n109), .A2(mult_171_G4_n115), .ZN(
        mult_171_G4_n55) );
  NOR2_X1 mult_171_G4_U94 ( .A1(mult_171_G4_n112), .A2(mult_171_G4_n115), .ZN(
        mult_171_G4_n57) );
  NOR2_X1 mult_171_G4_U93 ( .A1(mult_171_G4_n113), .A2(mult_171_G4_n115), .ZN(
        mult_171_G4_n58) );
  NAND2_X1 mult_171_G4_U92 ( .A1(b_p[16]), .A2(s_2p[23]), .ZN(mult_171_G4_n59)
         );
  NOR2_X1 mult_171_G4_U91 ( .A1(mult_171_G4_n116), .A2(mult_171_G4_n108), .ZN(
        mult_171_G4_n60) );
  NOR2_X1 mult_171_G4_U90 ( .A1(mult_171_G4_n109), .A2(mult_171_G4_n116), .ZN(
        mult_171_G4_n61) );
  NOR2_X1 mult_171_G4_U89 ( .A1(mult_171_G4_n110), .A2(mult_171_G4_n116), .ZN(
        mult_171_G4_n62) );
  NOR2_X1 mult_171_G4_U88 ( .A1(mult_171_G4_n112), .A2(mult_171_G4_n116), .ZN(
        mult_171_G4_n63) );
  NOR2_X1 mult_171_G4_U87 ( .A1(mult_171_G4_n113), .A2(mult_171_G4_n116), .ZN(
        mult_171_G4_n64) );
  NAND2_X1 mult_171_G4_U86 ( .A1(s_2p[23]), .A2(b_p[15]), .ZN(mult_171_G4_n65)
         );
  NOR2_X1 mult_171_G4_U85 ( .A1(mult_171_G4_n117), .A2(mult_171_G4_n109), .ZN(
        mult_171_G4_n67) );
  NOR2_X1 mult_171_G4_U84 ( .A1(mult_171_G4_n117), .A2(mult_171_G4_n110), .ZN(
        mult_171_G4_n68) );
  NOR2_X1 mult_171_G4_U83 ( .A1(mult_171_G4_n117), .A2(mult_171_G4_n112), .ZN(
        mult_171_G4_n69) );
  NOR2_X1 mult_171_G4_U82 ( .A1(mult_171_G4_n117), .A2(mult_171_G4_n113), .ZN(
        p_2_3__0_) );
  INV_X1 mult_171_G4_U81 ( .A(mult_171_G4_n1), .ZN(p_2_3__10_) );
  INV_X1 mult_171_G4_U80 ( .A(s_2p[20]), .ZN(mult_171_G4_n110) );
  INV_X1 mult_171_G4_U79 ( .A(s_2p[22]), .ZN(mult_171_G4_n108) );
  INV_X1 mult_171_G4_U78 ( .A(s_2p[21]), .ZN(mult_171_G4_n109) );
  INV_X1 mult_171_G4_U77 ( .A(s_2p[19]), .ZN(mult_171_G4_n112) );
  INV_X1 mult_171_G4_U76 ( .A(s_2p[18]), .ZN(mult_171_G4_n113) );
  INV_X1 mult_171_G4_U75 ( .A(b_p[16]), .ZN(mult_171_G4_n116) );
  INV_X1 mult_171_G4_U74 ( .A(b_p[15]), .ZN(mult_171_G4_n117) );
  INV_X1 mult_171_G4_U73 ( .A(b_p[18]), .ZN(mult_171_G4_n114) );
  INV_X1 mult_171_G4_U72 ( .A(b_p[17]), .ZN(mult_171_G4_n115) );
  INV_X1 mult_171_G4_U71 ( .A(mult_171_G4_n29), .ZN(mult_171_G4_n111) );
  HA_X1 mult_171_G4_U27 ( .A(mult_171_G4_n63), .B(mult_171_G4_n68), .CO(
        mult_171_G4_n40), .S(mult_171_G4_n41) );
  HA_X1 mult_171_G4_U26 ( .A(mult_171_G4_n52), .B(mult_171_G4_n57), .CO(
        mult_171_G4_n38), .S(mult_171_G4_n39) );
  FA_X1 mult_171_G4_U25 ( .A(mult_171_G4_n62), .B(mult_171_G4_n67), .CI(
        mult_171_G4_n40), .CO(mult_171_G4_n36), .S(mult_171_G4_n37) );
  FA_X1 mult_171_G4_U22 ( .A(mult_171_G4_n51), .B(mult_171_G4_n61), .CI(
        mult_171_G4_n47), .CO(mult_171_G4_n32), .S(mult_171_G4_n33) );
  FA_X1 mult_171_G4_U21 ( .A(mult_171_G4_n35), .B(mult_171_G4_n38), .CI(
        mult_171_G4_n36), .CO(mult_171_G4_n30), .S(mult_171_G4_n31) );
  FA_X1 mult_171_G4_U19 ( .A(mult_171_G4_n60), .B(mult_171_G4_n55), .CI(
        mult_171_G4_n65), .CO(mult_171_G4_n26), .S(mult_171_G4_n27) );
  FA_X1 mult_171_G4_U18 ( .A(mult_171_G4_n29), .B(mult_171_G4_n46), .CI(
        mult_171_G4_n34), .CO(mult_171_G4_n24), .S(mult_171_G4_n25) );
  FA_X1 mult_171_G4_U17 ( .A(mult_171_G4_n27), .B(mult_171_G4_n32), .CI(
        mult_171_G4_n25), .CO(mult_171_G4_n22), .S(mult_171_G4_n23) );
  FA_X1 mult_171_G4_U16 ( .A(mult_171_G4_n54), .B(mult_171_G4_n111), .CI(
        mult_171_G4_n50), .CO(mult_171_G4_n20), .S(mult_171_G4_n21) );
  FA_X1 mult_171_G4_U15 ( .A(mult_171_G4_n45), .B(mult_171_G4_n59), .CI(
        mult_171_G4_n26), .CO(mult_171_G4_n18), .S(mult_171_G4_n19) );
  FA_X1 mult_171_G4_U14 ( .A(mult_171_G4_n21), .B(mult_171_G4_n24), .CI(
        mult_171_G4_n19), .CO(mult_171_G4_n16), .S(mult_171_G4_n17) );
  FA_X1 mult_171_G4_U13 ( .A(mult_171_G4_n53), .B(mult_171_G4_n49), .CI(
        mult_171_G4_n44), .CO(mult_171_G4_n14), .S(mult_171_G4_n15) );
  FA_X1 mult_171_G4_U12 ( .A(mult_171_G4_n15), .B(mult_171_G4_n20), .CI(
        mult_171_G4_n18), .CO(mult_171_G4_n12), .S(mult_171_G4_n13) );
  FA_X1 mult_171_G4_U11 ( .A(mult_171_G4_n43), .B(mult_171_G4_n48), .CI(
        mult_171_G4_n14), .CO(mult_171_G4_n10), .S(mult_171_G4_n11) );
  HA_X1 mult_171_G4_U10 ( .A(mult_171_G4_n69), .B(mult_171_G4_n64), .CO(
        mult_171_G4_n9), .S(p_2_3__1_) );
  FA_X1 mult_171_G4_U9 ( .A(mult_171_G4_n9), .B(mult_171_G4_n58), .CI(
        mult_171_G4_n41), .CO(mult_171_G4_n8), .S(p_2_3__2_) );
  FA_X1 mult_171_G4_U8 ( .A(mult_171_G4_n8), .B(mult_171_G4_n39), .CI(
        mult_171_G4_n37), .CO(mult_171_G4_n7), .S(p_2_3__3_) );
  FA_X1 mult_171_G4_U7 ( .A(mult_171_G4_n31), .B(mult_171_G4_n33), .CI(
        mult_171_G4_n7), .CO(mult_171_G4_n6), .S(p_2_3__4_) );
  FA_X1 mult_171_G4_U6 ( .A(mult_171_G4_n23), .B(mult_171_G4_n30), .CI(
        mult_171_G4_n6), .CO(mult_171_G4_n5), .S(p_2_3__5_) );
  FA_X1 mult_171_G4_U5 ( .A(mult_171_G4_n17), .B(mult_171_G4_n22), .CI(
        mult_171_G4_n5), .CO(mult_171_G4_n4), .S(p_2_3__6_) );
  FA_X1 mult_171_G4_U4 ( .A(mult_171_G4_n13), .B(mult_171_G4_n16), .CI(
        mult_171_G4_n4), .CO(mult_171_G4_n3), .S(p_2_3__7_) );
  FA_X1 mult_171_G4_U3 ( .A(mult_171_G4_n12), .B(mult_171_G4_n11), .CI(
        mult_171_G4_n3), .CO(mult_171_G4_n2), .S(p_2_3__8_) );
  FA_X1 mult_171_G4_U2 ( .A(mult_171_G4_n10), .B(mult_171_G4_n42), .CI(
        mult_171_G4_n2), .CO(mult_171_G4_n1), .S(p_2_3__9_) );
  NAND2_X1 mult_170_G3_U113 ( .A1(b_p[13]), .A2(s_1p[14]), .ZN(mult_170_G3_n29) );
  NAND2_X1 mult_170_G3_U112 ( .A1(s_1p[16]), .A2(b_p[10]), .ZN(
        mult_170_G3_n119) );
  NAND2_X1 mult_170_G3_U111 ( .A1(b_p[12]), .A2(s_1p[14]), .ZN(
        mult_170_G3_n118) );
  NAND2_X1 mult_170_G3_U110 ( .A1(mult_170_G3_n119), .A2(mult_170_G3_n118), 
        .ZN(mult_170_G3_n34) );
  XNOR2_X1 mult_170_G3_U109 ( .A(mult_170_G3_n118), .B(mult_170_G3_n119), .ZN(
        mult_170_G3_n35) );
  AND2_X1 mult_170_G3_U108 ( .A1(s_1p[17]), .A2(b_p[14]), .ZN(mult_170_G3_n42)
         );
  NAND2_X1 mult_170_G3_U107 ( .A1(b_p[14]), .A2(s_1p[16]), .ZN(mult_170_G3_n43) );
  NAND2_X1 mult_170_G3_U106 ( .A1(b_p[14]), .A2(s_1p[15]), .ZN(mult_170_G3_n44) );
  NAND2_X1 mult_170_G3_U105 ( .A1(b_p[14]), .A2(s_1p[14]), .ZN(mult_170_G3_n45) );
  NAND2_X1 mult_170_G3_U104 ( .A1(b_p[14]), .A2(s_1p[13]), .ZN(mult_170_G3_n46) );
  NAND2_X1 mult_170_G3_U103 ( .A1(b_p[14]), .A2(s_1p[12]), .ZN(mult_170_G3_n47) );
  NAND2_X1 mult_170_G3_U102 ( .A1(b_p[13]), .A2(s_1p[17]), .ZN(mult_170_G3_n48) );
  NOR2_X1 mult_170_G3_U101 ( .A1(mult_170_G3_n108), .A2(mult_170_G3_n114), 
        .ZN(mult_170_G3_n49) );
  NOR2_X1 mult_170_G3_U100 ( .A1(mult_170_G3_n109), .A2(mult_170_G3_n114), 
        .ZN(mult_170_G3_n50) );
  NOR2_X1 mult_170_G3_U99 ( .A1(mult_170_G3_n112), .A2(mult_170_G3_n114), .ZN(
        mult_170_G3_n51) );
  NOR2_X1 mult_170_G3_U98 ( .A1(mult_170_G3_n113), .A2(mult_170_G3_n114), .ZN(
        mult_170_G3_n52) );
  NAND2_X1 mult_170_G3_U97 ( .A1(b_p[12]), .A2(s_1p[17]), .ZN(mult_170_G3_n53)
         );
  NOR2_X1 mult_170_G3_U96 ( .A1(mult_170_G3_n108), .A2(mult_170_G3_n115), .ZN(
        mult_170_G3_n54) );
  NOR2_X1 mult_170_G3_U95 ( .A1(mult_170_G3_n109), .A2(mult_170_G3_n115), .ZN(
        mult_170_G3_n55) );
  NOR2_X1 mult_170_G3_U94 ( .A1(mult_170_G3_n112), .A2(mult_170_G3_n115), .ZN(
        mult_170_G3_n57) );
  NOR2_X1 mult_170_G3_U93 ( .A1(mult_170_G3_n113), .A2(mult_170_G3_n115), .ZN(
        mult_170_G3_n58) );
  NAND2_X1 mult_170_G3_U92 ( .A1(b_p[11]), .A2(s_1p[17]), .ZN(mult_170_G3_n59)
         );
  NOR2_X1 mult_170_G3_U91 ( .A1(mult_170_G3_n116), .A2(mult_170_G3_n108), .ZN(
        mult_170_G3_n60) );
  NOR2_X1 mult_170_G3_U90 ( .A1(mult_170_G3_n109), .A2(mult_170_G3_n116), .ZN(
        mult_170_G3_n61) );
  NOR2_X1 mult_170_G3_U89 ( .A1(mult_170_G3_n110), .A2(mult_170_G3_n116), .ZN(
        mult_170_G3_n62) );
  NOR2_X1 mult_170_G3_U88 ( .A1(mult_170_G3_n112), .A2(mult_170_G3_n116), .ZN(
        mult_170_G3_n63) );
  NOR2_X1 mult_170_G3_U87 ( .A1(mult_170_G3_n113), .A2(mult_170_G3_n116), .ZN(
        mult_170_G3_n64) );
  NAND2_X1 mult_170_G3_U86 ( .A1(s_1p[17]), .A2(b_p[10]), .ZN(mult_170_G3_n65)
         );
  NOR2_X1 mult_170_G3_U85 ( .A1(mult_170_G3_n117), .A2(mult_170_G3_n109), .ZN(
        mult_170_G3_n67) );
  NOR2_X1 mult_170_G3_U84 ( .A1(mult_170_G3_n117), .A2(mult_170_G3_n110), .ZN(
        mult_170_G3_n68) );
  NOR2_X1 mult_170_G3_U83 ( .A1(mult_170_G3_n117), .A2(mult_170_G3_n112), .ZN(
        mult_170_G3_n69) );
  NOR2_X1 mult_170_G3_U82 ( .A1(mult_170_G3_n117), .A2(mult_170_G3_n113), .ZN(
        p_1_2__0_) );
  INV_X1 mult_170_G3_U81 ( .A(mult_170_G3_n1), .ZN(p_1_2__10_) );
  INV_X1 mult_170_G3_U80 ( .A(s_1p[14]), .ZN(mult_170_G3_n110) );
  INV_X1 mult_170_G3_U79 ( .A(s_1p[16]), .ZN(mult_170_G3_n108) );
  INV_X1 mult_170_G3_U78 ( .A(s_1p[15]), .ZN(mult_170_G3_n109) );
  INV_X1 mult_170_G3_U77 ( .A(s_1p[13]), .ZN(mult_170_G3_n112) );
  INV_X1 mult_170_G3_U76 ( .A(s_1p[12]), .ZN(mult_170_G3_n113) );
  INV_X1 mult_170_G3_U75 ( .A(b_p[11]), .ZN(mult_170_G3_n116) );
  INV_X1 mult_170_G3_U74 ( .A(b_p[10]), .ZN(mult_170_G3_n117) );
  INV_X1 mult_170_G3_U73 ( .A(b_p[13]), .ZN(mult_170_G3_n114) );
  INV_X1 mult_170_G3_U72 ( .A(b_p[12]), .ZN(mult_170_G3_n115) );
  INV_X1 mult_170_G3_U71 ( .A(mult_170_G3_n29), .ZN(mult_170_G3_n111) );
  HA_X1 mult_170_G3_U27 ( .A(mult_170_G3_n63), .B(mult_170_G3_n68), .CO(
        mult_170_G3_n40), .S(mult_170_G3_n41) );
  HA_X1 mult_170_G3_U26 ( .A(mult_170_G3_n52), .B(mult_170_G3_n57), .CO(
        mult_170_G3_n38), .S(mult_170_G3_n39) );
  FA_X1 mult_170_G3_U25 ( .A(mult_170_G3_n62), .B(mult_170_G3_n67), .CI(
        mult_170_G3_n40), .CO(mult_170_G3_n36), .S(mult_170_G3_n37) );
  FA_X1 mult_170_G3_U22 ( .A(mult_170_G3_n51), .B(mult_170_G3_n61), .CI(
        mult_170_G3_n47), .CO(mult_170_G3_n32), .S(mult_170_G3_n33) );
  FA_X1 mult_170_G3_U21 ( .A(mult_170_G3_n35), .B(mult_170_G3_n38), .CI(
        mult_170_G3_n36), .CO(mult_170_G3_n30), .S(mult_170_G3_n31) );
  FA_X1 mult_170_G3_U19 ( .A(mult_170_G3_n60), .B(mult_170_G3_n55), .CI(
        mult_170_G3_n65), .CO(mult_170_G3_n26), .S(mult_170_G3_n27) );
  FA_X1 mult_170_G3_U18 ( .A(mult_170_G3_n29), .B(mult_170_G3_n46), .CI(
        mult_170_G3_n34), .CO(mult_170_G3_n24), .S(mult_170_G3_n25) );
  FA_X1 mult_170_G3_U17 ( .A(mult_170_G3_n27), .B(mult_170_G3_n32), .CI(
        mult_170_G3_n25), .CO(mult_170_G3_n22), .S(mult_170_G3_n23) );
  FA_X1 mult_170_G3_U16 ( .A(mult_170_G3_n54), .B(mult_170_G3_n111), .CI(
        mult_170_G3_n50), .CO(mult_170_G3_n20), .S(mult_170_G3_n21) );
  FA_X1 mult_170_G3_U15 ( .A(mult_170_G3_n45), .B(mult_170_G3_n59), .CI(
        mult_170_G3_n26), .CO(mult_170_G3_n18), .S(mult_170_G3_n19) );
  FA_X1 mult_170_G3_U14 ( .A(mult_170_G3_n21), .B(mult_170_G3_n24), .CI(
        mult_170_G3_n19), .CO(mult_170_G3_n16), .S(mult_170_G3_n17) );
  FA_X1 mult_170_G3_U13 ( .A(mult_170_G3_n53), .B(mult_170_G3_n49), .CI(
        mult_170_G3_n44), .CO(mult_170_G3_n14), .S(mult_170_G3_n15) );
  FA_X1 mult_170_G3_U12 ( .A(mult_170_G3_n15), .B(mult_170_G3_n20), .CI(
        mult_170_G3_n18), .CO(mult_170_G3_n12), .S(mult_170_G3_n13) );
  FA_X1 mult_170_G3_U11 ( .A(mult_170_G3_n43), .B(mult_170_G3_n48), .CI(
        mult_170_G3_n14), .CO(mult_170_G3_n10), .S(mult_170_G3_n11) );
  HA_X1 mult_170_G3_U10 ( .A(mult_170_G3_n69), .B(mult_170_G3_n64), .CO(
        mult_170_G3_n9), .S(p_1_2__1_) );
  FA_X1 mult_170_G3_U9 ( .A(mult_170_G3_n9), .B(mult_170_G3_n58), .CI(
        mult_170_G3_n41), .CO(mult_170_G3_n8), .S(p_1_2__2_) );
  FA_X1 mult_170_G3_U8 ( .A(mult_170_G3_n8), .B(mult_170_G3_n39), .CI(
        mult_170_G3_n37), .CO(mult_170_G3_n7), .S(p_1_2__3_) );
  FA_X1 mult_170_G3_U7 ( .A(mult_170_G3_n31), .B(mult_170_G3_n33), .CI(
        mult_170_G3_n7), .CO(mult_170_G3_n6), .S(p_1_2__4_) );
  FA_X1 mult_170_G3_U6 ( .A(mult_170_G3_n23), .B(mult_170_G3_n30), .CI(
        mult_170_G3_n6), .CO(mult_170_G3_n5), .S(p_1_2__5_) );
  FA_X1 mult_170_G3_U5 ( .A(mult_170_G3_n17), .B(mult_170_G3_n22), .CI(
        mult_170_G3_n5), .CO(mult_170_G3_n4), .S(p_1_2__6_) );
  FA_X1 mult_170_G3_U4 ( .A(mult_170_G3_n13), .B(mult_170_G3_n16), .CI(
        mult_170_G3_n4), .CO(mult_170_G3_n3), .S(p_1_2__7_) );
  FA_X1 mult_170_G3_U3 ( .A(mult_170_G3_n12), .B(mult_170_G3_n11), .CI(
        mult_170_G3_n3), .CO(mult_170_G3_n2), .S(p_1_2__8_) );
  FA_X1 mult_170_G3_U2 ( .A(mult_170_G3_n10), .B(mult_170_G3_n42), .CI(
        mult_170_G3_n2), .CO(mult_170_G3_n1), .S(p_1_2__9_) );
  NAND2_X1 mult_172_G3_U113 ( .A1(b_p[13]), .A2(s_3p[14]), .ZN(mult_172_G3_n29) );
  NAND2_X1 mult_172_G3_U112 ( .A1(s_3p[16]), .A2(b_p[10]), .ZN(
        mult_172_G3_n119) );
  NAND2_X1 mult_172_G3_U111 ( .A1(b_p[12]), .A2(s_3p[14]), .ZN(
        mult_172_G3_n118) );
  NAND2_X1 mult_172_G3_U110 ( .A1(mult_172_G3_n119), .A2(mult_172_G3_n118), 
        .ZN(mult_172_G3_n34) );
  XNOR2_X1 mult_172_G3_U109 ( .A(mult_172_G3_n118), .B(mult_172_G3_n119), .ZN(
        mult_172_G3_n35) );
  AND2_X1 mult_172_G3_U108 ( .A1(s_3p[17]), .A2(b_p[14]), .ZN(mult_172_G3_n42)
         );
  NAND2_X1 mult_172_G3_U107 ( .A1(b_p[14]), .A2(s_3p[16]), .ZN(mult_172_G3_n43) );
  NAND2_X1 mult_172_G3_U106 ( .A1(b_p[14]), .A2(s_3p[15]), .ZN(mult_172_G3_n44) );
  NAND2_X1 mult_172_G3_U105 ( .A1(b_p[14]), .A2(s_3p[14]), .ZN(mult_172_G3_n45) );
  NAND2_X1 mult_172_G3_U104 ( .A1(b_p[14]), .A2(s_3p[13]), .ZN(mult_172_G3_n46) );
  NAND2_X1 mult_172_G3_U103 ( .A1(b_p[14]), .A2(s_3p[12]), .ZN(mult_172_G3_n47) );
  NAND2_X1 mult_172_G3_U102 ( .A1(b_p[13]), .A2(s_3p[17]), .ZN(mult_172_G3_n48) );
  NOR2_X1 mult_172_G3_U101 ( .A1(mult_172_G3_n108), .A2(mult_172_G3_n114), 
        .ZN(mult_172_G3_n49) );
  NOR2_X1 mult_172_G3_U100 ( .A1(mult_172_G3_n109), .A2(mult_172_G3_n114), 
        .ZN(mult_172_G3_n50) );
  NOR2_X1 mult_172_G3_U99 ( .A1(mult_172_G3_n112), .A2(mult_172_G3_n114), .ZN(
        mult_172_G3_n51) );
  NOR2_X1 mult_172_G3_U98 ( .A1(mult_172_G3_n113), .A2(mult_172_G3_n114), .ZN(
        mult_172_G3_n52) );
  NAND2_X1 mult_172_G3_U97 ( .A1(b_p[12]), .A2(s_3p[17]), .ZN(mult_172_G3_n53)
         );
  NOR2_X1 mult_172_G3_U96 ( .A1(mult_172_G3_n108), .A2(mult_172_G3_n115), .ZN(
        mult_172_G3_n54) );
  NOR2_X1 mult_172_G3_U95 ( .A1(mult_172_G3_n109), .A2(mult_172_G3_n115), .ZN(
        mult_172_G3_n55) );
  NOR2_X1 mult_172_G3_U94 ( .A1(mult_172_G3_n112), .A2(mult_172_G3_n115), .ZN(
        mult_172_G3_n57) );
  NOR2_X1 mult_172_G3_U93 ( .A1(mult_172_G3_n113), .A2(mult_172_G3_n115), .ZN(
        mult_172_G3_n58) );
  NAND2_X1 mult_172_G3_U92 ( .A1(b_p[11]), .A2(s_3p[17]), .ZN(mult_172_G3_n59)
         );
  NOR2_X1 mult_172_G3_U91 ( .A1(mult_172_G3_n116), .A2(mult_172_G3_n108), .ZN(
        mult_172_G3_n60) );
  NOR2_X1 mult_172_G3_U90 ( .A1(mult_172_G3_n109), .A2(mult_172_G3_n116), .ZN(
        mult_172_G3_n61) );
  NOR2_X1 mult_172_G3_U89 ( .A1(mult_172_G3_n110), .A2(mult_172_G3_n116), .ZN(
        mult_172_G3_n62) );
  NOR2_X1 mult_172_G3_U88 ( .A1(mult_172_G3_n112), .A2(mult_172_G3_n116), .ZN(
        mult_172_G3_n63) );
  NOR2_X1 mult_172_G3_U87 ( .A1(mult_172_G3_n113), .A2(mult_172_G3_n116), .ZN(
        mult_172_G3_n64) );
  NAND2_X1 mult_172_G3_U86 ( .A1(s_3p[17]), .A2(b_p[10]), .ZN(mult_172_G3_n65)
         );
  NOR2_X1 mult_172_G3_U85 ( .A1(mult_172_G3_n117), .A2(mult_172_G3_n109), .ZN(
        mult_172_G3_n67) );
  NOR2_X1 mult_172_G3_U84 ( .A1(mult_172_G3_n117), .A2(mult_172_G3_n110), .ZN(
        mult_172_G3_n68) );
  NOR2_X1 mult_172_G3_U83 ( .A1(mult_172_G3_n117), .A2(mult_172_G3_n112), .ZN(
        mult_172_G3_n69) );
  NOR2_X1 mult_172_G3_U82 ( .A1(mult_172_G3_n117), .A2(mult_172_G3_n113), .ZN(
        p_3_2__0_) );
  INV_X1 mult_172_G3_U81 ( .A(mult_172_G3_n1), .ZN(p_3_2__10_) );
  INV_X1 mult_172_G3_U80 ( .A(s_3p[14]), .ZN(mult_172_G3_n110) );
  INV_X1 mult_172_G3_U79 ( .A(s_3p[16]), .ZN(mult_172_G3_n108) );
  INV_X1 mult_172_G3_U78 ( .A(s_3p[15]), .ZN(mult_172_G3_n109) );
  INV_X1 mult_172_G3_U77 ( .A(s_3p[13]), .ZN(mult_172_G3_n112) );
  INV_X1 mult_172_G3_U76 ( .A(s_3p[12]), .ZN(mult_172_G3_n113) );
  INV_X1 mult_172_G3_U75 ( .A(b_p[11]), .ZN(mult_172_G3_n116) );
  INV_X1 mult_172_G3_U74 ( .A(b_p[10]), .ZN(mult_172_G3_n117) );
  INV_X1 mult_172_G3_U73 ( .A(b_p[13]), .ZN(mult_172_G3_n114) );
  INV_X1 mult_172_G3_U72 ( .A(b_p[12]), .ZN(mult_172_G3_n115) );
  INV_X1 mult_172_G3_U71 ( .A(mult_172_G3_n29), .ZN(mult_172_G3_n111) );
  HA_X1 mult_172_G3_U27 ( .A(mult_172_G3_n63), .B(mult_172_G3_n68), .CO(
        mult_172_G3_n40), .S(mult_172_G3_n41) );
  HA_X1 mult_172_G3_U26 ( .A(mult_172_G3_n52), .B(mult_172_G3_n57), .CO(
        mult_172_G3_n38), .S(mult_172_G3_n39) );
  FA_X1 mult_172_G3_U25 ( .A(mult_172_G3_n62), .B(mult_172_G3_n67), .CI(
        mult_172_G3_n40), .CO(mult_172_G3_n36), .S(mult_172_G3_n37) );
  FA_X1 mult_172_G3_U22 ( .A(mult_172_G3_n51), .B(mult_172_G3_n61), .CI(
        mult_172_G3_n47), .CO(mult_172_G3_n32), .S(mult_172_G3_n33) );
  FA_X1 mult_172_G3_U21 ( .A(mult_172_G3_n35), .B(mult_172_G3_n38), .CI(
        mult_172_G3_n36), .CO(mult_172_G3_n30), .S(mult_172_G3_n31) );
  FA_X1 mult_172_G3_U19 ( .A(mult_172_G3_n60), .B(mult_172_G3_n55), .CI(
        mult_172_G3_n65), .CO(mult_172_G3_n26), .S(mult_172_G3_n27) );
  FA_X1 mult_172_G3_U18 ( .A(mult_172_G3_n29), .B(mult_172_G3_n46), .CI(
        mult_172_G3_n34), .CO(mult_172_G3_n24), .S(mult_172_G3_n25) );
  FA_X1 mult_172_G3_U17 ( .A(mult_172_G3_n27), .B(mult_172_G3_n32), .CI(
        mult_172_G3_n25), .CO(mult_172_G3_n22), .S(mult_172_G3_n23) );
  FA_X1 mult_172_G3_U16 ( .A(mult_172_G3_n54), .B(mult_172_G3_n111), .CI(
        mult_172_G3_n50), .CO(mult_172_G3_n20), .S(mult_172_G3_n21) );
  FA_X1 mult_172_G3_U15 ( .A(mult_172_G3_n45), .B(mult_172_G3_n59), .CI(
        mult_172_G3_n26), .CO(mult_172_G3_n18), .S(mult_172_G3_n19) );
  FA_X1 mult_172_G3_U14 ( .A(mult_172_G3_n21), .B(mult_172_G3_n24), .CI(
        mult_172_G3_n19), .CO(mult_172_G3_n16), .S(mult_172_G3_n17) );
  FA_X1 mult_172_G3_U13 ( .A(mult_172_G3_n53), .B(mult_172_G3_n49), .CI(
        mult_172_G3_n44), .CO(mult_172_G3_n14), .S(mult_172_G3_n15) );
  FA_X1 mult_172_G3_U12 ( .A(mult_172_G3_n15), .B(mult_172_G3_n20), .CI(
        mult_172_G3_n18), .CO(mult_172_G3_n12), .S(mult_172_G3_n13) );
  FA_X1 mult_172_G3_U11 ( .A(mult_172_G3_n43), .B(mult_172_G3_n48), .CI(
        mult_172_G3_n14), .CO(mult_172_G3_n10), .S(mult_172_G3_n11) );
  HA_X1 mult_172_G3_U10 ( .A(mult_172_G3_n69), .B(mult_172_G3_n64), .CO(
        mult_172_G3_n9), .S(p_3_2__1_) );
  FA_X1 mult_172_G3_U9 ( .A(mult_172_G3_n9), .B(mult_172_G3_n58), .CI(
        mult_172_G3_n41), .CO(mult_172_G3_n8), .S(p_3_2__2_) );
  FA_X1 mult_172_G3_U8 ( .A(mult_172_G3_n8), .B(mult_172_G3_n39), .CI(
        mult_172_G3_n37), .CO(mult_172_G3_n7), .S(p_3_2__3_) );
  FA_X1 mult_172_G3_U7 ( .A(mult_172_G3_n31), .B(mult_172_G3_n33), .CI(
        mult_172_G3_n7), .CO(mult_172_G3_n6), .S(p_3_2__4_) );
  FA_X1 mult_172_G3_U6 ( .A(mult_172_G3_n23), .B(mult_172_G3_n30), .CI(
        mult_172_G3_n6), .CO(mult_172_G3_n5), .S(p_3_2__5_) );
  FA_X1 mult_172_G3_U5 ( .A(mult_172_G3_n17), .B(mult_172_G3_n22), .CI(
        mult_172_G3_n5), .CO(mult_172_G3_n4), .S(p_3_2__6_) );
  FA_X1 mult_172_G3_U4 ( .A(mult_172_G3_n13), .B(mult_172_G3_n16), .CI(
        mult_172_G3_n4), .CO(mult_172_G3_n3), .S(p_3_2__7_) );
  FA_X1 mult_172_G3_U3 ( .A(mult_172_G3_n12), .B(mult_172_G3_n11), .CI(
        mult_172_G3_n3), .CO(mult_172_G3_n2), .S(p_3_2__8_) );
  FA_X1 mult_172_G3_U2 ( .A(mult_172_G3_n10), .B(mult_172_G3_n42), .CI(
        mult_172_G3_n2), .CO(mult_172_G3_n1), .S(p_3_2__9_) );
  NAND2_X1 mult_171_G3_U113 ( .A1(b_p[13]), .A2(s_2p[14]), .ZN(mult_171_G3_n29) );
  NAND2_X1 mult_171_G3_U112 ( .A1(s_2p[16]), .A2(b_p[10]), .ZN(
        mult_171_G3_n119) );
  NAND2_X1 mult_171_G3_U111 ( .A1(b_p[12]), .A2(s_2p[14]), .ZN(
        mult_171_G3_n118) );
  NAND2_X1 mult_171_G3_U110 ( .A1(mult_171_G3_n119), .A2(mult_171_G3_n118), 
        .ZN(mult_171_G3_n34) );
  XNOR2_X1 mult_171_G3_U109 ( .A(mult_171_G3_n118), .B(mult_171_G3_n119), .ZN(
        mult_171_G3_n35) );
  AND2_X1 mult_171_G3_U108 ( .A1(s_2p[17]), .A2(b_p[14]), .ZN(mult_171_G3_n42)
         );
  NAND2_X1 mult_171_G3_U107 ( .A1(b_p[14]), .A2(s_2p[16]), .ZN(mult_171_G3_n43) );
  NAND2_X1 mult_171_G3_U106 ( .A1(b_p[14]), .A2(s_2p[15]), .ZN(mult_171_G3_n44) );
  NAND2_X1 mult_171_G3_U105 ( .A1(b_p[14]), .A2(s_2p[14]), .ZN(mult_171_G3_n45) );
  NAND2_X1 mult_171_G3_U104 ( .A1(b_p[14]), .A2(s_2p[13]), .ZN(mult_171_G3_n46) );
  NAND2_X1 mult_171_G3_U103 ( .A1(b_p[14]), .A2(s_2p[12]), .ZN(mult_171_G3_n47) );
  NAND2_X1 mult_171_G3_U102 ( .A1(b_p[13]), .A2(s_2p[17]), .ZN(mult_171_G3_n48) );
  NOR2_X1 mult_171_G3_U101 ( .A1(mult_171_G3_n108), .A2(mult_171_G3_n114), 
        .ZN(mult_171_G3_n49) );
  NOR2_X1 mult_171_G3_U100 ( .A1(mult_171_G3_n109), .A2(mult_171_G3_n114), 
        .ZN(mult_171_G3_n50) );
  NOR2_X1 mult_171_G3_U99 ( .A1(mult_171_G3_n112), .A2(mult_171_G3_n114), .ZN(
        mult_171_G3_n51) );
  NOR2_X1 mult_171_G3_U98 ( .A1(mult_171_G3_n113), .A2(mult_171_G3_n114), .ZN(
        mult_171_G3_n52) );
  NAND2_X1 mult_171_G3_U97 ( .A1(b_p[12]), .A2(s_2p[17]), .ZN(mult_171_G3_n53)
         );
  NOR2_X1 mult_171_G3_U96 ( .A1(mult_171_G3_n108), .A2(mult_171_G3_n115), .ZN(
        mult_171_G3_n54) );
  NOR2_X1 mult_171_G3_U95 ( .A1(mult_171_G3_n109), .A2(mult_171_G3_n115), .ZN(
        mult_171_G3_n55) );
  NOR2_X1 mult_171_G3_U94 ( .A1(mult_171_G3_n112), .A2(mult_171_G3_n115), .ZN(
        mult_171_G3_n57) );
  NOR2_X1 mult_171_G3_U93 ( .A1(mult_171_G3_n113), .A2(mult_171_G3_n115), .ZN(
        mult_171_G3_n58) );
  NAND2_X1 mult_171_G3_U92 ( .A1(b_p[11]), .A2(s_2p[17]), .ZN(mult_171_G3_n59)
         );
  NOR2_X1 mult_171_G3_U91 ( .A1(mult_171_G3_n116), .A2(mult_171_G3_n108), .ZN(
        mult_171_G3_n60) );
  NOR2_X1 mult_171_G3_U90 ( .A1(mult_171_G3_n109), .A2(mult_171_G3_n116), .ZN(
        mult_171_G3_n61) );
  NOR2_X1 mult_171_G3_U89 ( .A1(mult_171_G3_n110), .A2(mult_171_G3_n116), .ZN(
        mult_171_G3_n62) );
  NOR2_X1 mult_171_G3_U88 ( .A1(mult_171_G3_n112), .A2(mult_171_G3_n116), .ZN(
        mult_171_G3_n63) );
  NOR2_X1 mult_171_G3_U87 ( .A1(mult_171_G3_n113), .A2(mult_171_G3_n116), .ZN(
        mult_171_G3_n64) );
  NAND2_X1 mult_171_G3_U86 ( .A1(s_2p[17]), .A2(b_p[10]), .ZN(mult_171_G3_n65)
         );
  NOR2_X1 mult_171_G3_U85 ( .A1(mult_171_G3_n117), .A2(mult_171_G3_n109), .ZN(
        mult_171_G3_n67) );
  NOR2_X1 mult_171_G3_U84 ( .A1(mult_171_G3_n117), .A2(mult_171_G3_n110), .ZN(
        mult_171_G3_n68) );
  NOR2_X1 mult_171_G3_U83 ( .A1(mult_171_G3_n117), .A2(mult_171_G3_n112), .ZN(
        mult_171_G3_n69) );
  NOR2_X1 mult_171_G3_U82 ( .A1(mult_171_G3_n117), .A2(mult_171_G3_n113), .ZN(
        p_2_2__0_) );
  INV_X1 mult_171_G3_U81 ( .A(mult_171_G3_n1), .ZN(p_2_2__10_) );
  INV_X1 mult_171_G3_U80 ( .A(s_2p[14]), .ZN(mult_171_G3_n110) );
  INV_X1 mult_171_G3_U79 ( .A(s_2p[16]), .ZN(mult_171_G3_n108) );
  INV_X1 mult_171_G3_U78 ( .A(s_2p[15]), .ZN(mult_171_G3_n109) );
  INV_X1 mult_171_G3_U77 ( .A(s_2p[13]), .ZN(mult_171_G3_n112) );
  INV_X1 mult_171_G3_U76 ( .A(s_2p[12]), .ZN(mult_171_G3_n113) );
  INV_X1 mult_171_G3_U75 ( .A(b_p[11]), .ZN(mult_171_G3_n116) );
  INV_X1 mult_171_G3_U74 ( .A(b_p[10]), .ZN(mult_171_G3_n117) );
  INV_X1 mult_171_G3_U73 ( .A(b_p[13]), .ZN(mult_171_G3_n114) );
  INV_X1 mult_171_G3_U72 ( .A(b_p[12]), .ZN(mult_171_G3_n115) );
  INV_X1 mult_171_G3_U71 ( .A(mult_171_G3_n29), .ZN(mult_171_G3_n111) );
  HA_X1 mult_171_G3_U27 ( .A(mult_171_G3_n63), .B(mult_171_G3_n68), .CO(
        mult_171_G3_n40), .S(mult_171_G3_n41) );
  HA_X1 mult_171_G3_U26 ( .A(mult_171_G3_n52), .B(mult_171_G3_n57), .CO(
        mult_171_G3_n38), .S(mult_171_G3_n39) );
  FA_X1 mult_171_G3_U25 ( .A(mult_171_G3_n62), .B(mult_171_G3_n67), .CI(
        mult_171_G3_n40), .CO(mult_171_G3_n36), .S(mult_171_G3_n37) );
  FA_X1 mult_171_G3_U22 ( .A(mult_171_G3_n51), .B(mult_171_G3_n61), .CI(
        mult_171_G3_n47), .CO(mult_171_G3_n32), .S(mult_171_G3_n33) );
  FA_X1 mult_171_G3_U21 ( .A(mult_171_G3_n35), .B(mult_171_G3_n38), .CI(
        mult_171_G3_n36), .CO(mult_171_G3_n30), .S(mult_171_G3_n31) );
  FA_X1 mult_171_G3_U19 ( .A(mult_171_G3_n60), .B(mult_171_G3_n55), .CI(
        mult_171_G3_n65), .CO(mult_171_G3_n26), .S(mult_171_G3_n27) );
  FA_X1 mult_171_G3_U18 ( .A(mult_171_G3_n29), .B(mult_171_G3_n46), .CI(
        mult_171_G3_n34), .CO(mult_171_G3_n24), .S(mult_171_G3_n25) );
  FA_X1 mult_171_G3_U17 ( .A(mult_171_G3_n27), .B(mult_171_G3_n32), .CI(
        mult_171_G3_n25), .CO(mult_171_G3_n22), .S(mult_171_G3_n23) );
  FA_X1 mult_171_G3_U16 ( .A(mult_171_G3_n54), .B(mult_171_G3_n111), .CI(
        mult_171_G3_n50), .CO(mult_171_G3_n20), .S(mult_171_G3_n21) );
  FA_X1 mult_171_G3_U15 ( .A(mult_171_G3_n45), .B(mult_171_G3_n59), .CI(
        mult_171_G3_n26), .CO(mult_171_G3_n18), .S(mult_171_G3_n19) );
  FA_X1 mult_171_G3_U14 ( .A(mult_171_G3_n21), .B(mult_171_G3_n24), .CI(
        mult_171_G3_n19), .CO(mult_171_G3_n16), .S(mult_171_G3_n17) );
  FA_X1 mult_171_G3_U13 ( .A(mult_171_G3_n53), .B(mult_171_G3_n49), .CI(
        mult_171_G3_n44), .CO(mult_171_G3_n14), .S(mult_171_G3_n15) );
  FA_X1 mult_171_G3_U12 ( .A(mult_171_G3_n15), .B(mult_171_G3_n20), .CI(
        mult_171_G3_n18), .CO(mult_171_G3_n12), .S(mult_171_G3_n13) );
  FA_X1 mult_171_G3_U11 ( .A(mult_171_G3_n43), .B(mult_171_G3_n48), .CI(
        mult_171_G3_n14), .CO(mult_171_G3_n10), .S(mult_171_G3_n11) );
  HA_X1 mult_171_G3_U10 ( .A(mult_171_G3_n69), .B(mult_171_G3_n64), .CO(
        mult_171_G3_n9), .S(p_2_2__1_) );
  FA_X1 mult_171_G3_U9 ( .A(mult_171_G3_n9), .B(mult_171_G3_n58), .CI(
        mult_171_G3_n41), .CO(mult_171_G3_n8), .S(p_2_2__2_) );
  FA_X1 mult_171_G3_U8 ( .A(mult_171_G3_n8), .B(mult_171_G3_n39), .CI(
        mult_171_G3_n37), .CO(mult_171_G3_n7), .S(p_2_2__3_) );
  FA_X1 mult_171_G3_U7 ( .A(mult_171_G3_n31), .B(mult_171_G3_n33), .CI(
        mult_171_G3_n7), .CO(mult_171_G3_n6), .S(p_2_2__4_) );
  FA_X1 mult_171_G3_U6 ( .A(mult_171_G3_n23), .B(mult_171_G3_n30), .CI(
        mult_171_G3_n6), .CO(mult_171_G3_n5), .S(p_2_2__5_) );
  FA_X1 mult_171_G3_U5 ( .A(mult_171_G3_n17), .B(mult_171_G3_n22), .CI(
        mult_171_G3_n5), .CO(mult_171_G3_n4), .S(p_2_2__6_) );
  FA_X1 mult_171_G3_U4 ( .A(mult_171_G3_n13), .B(mult_171_G3_n16), .CI(
        mult_171_G3_n4), .CO(mult_171_G3_n3), .S(p_2_2__7_) );
  FA_X1 mult_171_G3_U3 ( .A(mult_171_G3_n12), .B(mult_171_G3_n11), .CI(
        mult_171_G3_n3), .CO(mult_171_G3_n2), .S(p_2_2__8_) );
  FA_X1 mult_171_G3_U2 ( .A(mult_171_G3_n10), .B(mult_171_G3_n42), .CI(
        mult_171_G3_n2), .CO(mult_171_G3_n1), .S(p_2_2__9_) );
  NAND2_X1 mult_179_U95 ( .A1(b_p[22]), .A2(x_3k_p[3]), .ZN(mult_179_n101) );
  NAND2_X1 mult_179_U94 ( .A1(b_p[23]), .A2(x_3k_p[2]), .ZN(mult_179_n100) );
  NAND2_X1 mult_179_U93 ( .A1(mult_179_n101), .A2(mult_179_n100), .ZN(
        mult_179_n19) );
  XNOR2_X1 mult_179_U92 ( .A(mult_179_n100), .B(mult_179_n101), .ZN(
        mult_179_n20) );
  AND2_X1 mult_179_U91 ( .A1(x_3k_p[4]), .A2(b_p[24]), .ZN(mult_179_n33) );
  NAND2_X1 mult_179_U90 ( .A1(b_p[24]), .A2(x_3k_p[3]), .ZN(mult_179_n34) );
  NAND2_X1 mult_179_U89 ( .A1(b_p[24]), .A2(x_3k_p[2]), .ZN(mult_179_n35) );
  NAND2_X1 mult_179_U88 ( .A1(b_p[24]), .A2(x_3k_p[1]), .ZN(mult_179_n36) );
  NAND2_X1 mult_179_U87 ( .A1(b_p[24]), .A2(x_3k_p[0]), .ZN(mult_179_n37) );
  NAND2_X1 mult_179_U86 ( .A1(b_p[23]), .A2(x_3k_p[4]), .ZN(mult_179_n38) );
  NOR2_X1 mult_179_U85 ( .A1(mult_179_n92), .A2(mult_179_n96), .ZN(
        mult_179_n39) );
  NOR2_X1 mult_179_U84 ( .A1(mult_179_n94), .A2(mult_179_n96), .ZN(
        mult_179_n41) );
  NOR2_X1 mult_179_U83 ( .A1(mult_179_n95), .A2(mult_179_n96), .ZN(
        mult_179_n42) );
  NAND2_X1 mult_179_U82 ( .A1(b_p[22]), .A2(x_3k_p[4]), .ZN(mult_179_n43) );
  NOR2_X1 mult_179_U81 ( .A1(mult_179_n93), .A2(mult_179_n97), .ZN(
        mult_179_n45) );
  NOR2_X1 mult_179_U80 ( .A1(mult_179_n94), .A2(mult_179_n97), .ZN(
        mult_179_n46) );
  NOR2_X1 mult_179_U79 ( .A1(mult_179_n95), .A2(mult_179_n97), .ZN(
        mult_179_n47) );
  NAND2_X1 mult_179_U78 ( .A1(b_p[21]), .A2(x_3k_p[4]), .ZN(mult_179_n48) );
  NOR2_X1 mult_179_U77 ( .A1(mult_179_n92), .A2(mult_179_n98), .ZN(
        mult_179_n49) );
  NOR2_X1 mult_179_U76 ( .A1(mult_179_n93), .A2(mult_179_n98), .ZN(
        mult_179_n50) );
  NOR2_X1 mult_179_U75 ( .A1(mult_179_n94), .A2(mult_179_n98), .ZN(
        mult_179_n51) );
  NOR2_X1 mult_179_U74 ( .A1(mult_179_n95), .A2(mult_179_n98), .ZN(
        mult_179_n52) );
  NAND2_X1 mult_179_U73 ( .A1(x_3k_p[4]), .A2(b_p[20]), .ZN(mult_179_n53) );
  NOR2_X1 mult_179_U72 ( .A1(mult_179_n99), .A2(mult_179_n92), .ZN(
        mult_179_n54) );
  NOR2_X1 mult_179_U71 ( .A1(mult_179_n99), .A2(mult_179_n93), .ZN(
        mult_179_n55) );
  NOR2_X1 mult_179_U70 ( .A1(mult_179_n99), .A2(mult_179_n94), .ZN(
        mult_179_n56) );
  NOR2_X1 mult_179_U69 ( .A1(mult_179_n99), .A2(mult_179_n95), .ZN(p_2_4__0_)
         );
  INV_X1 mult_179_U68 ( .A(x_3k_p[3]), .ZN(mult_179_n92) );
  INV_X1 mult_179_U67 ( .A(x_3k_p[2]), .ZN(mult_179_n93) );
  INV_X1 mult_179_U66 ( .A(x_3k_p[0]), .ZN(mult_179_n95) );
  INV_X1 mult_179_U65 ( .A(x_3k_p[1]), .ZN(mult_179_n94) );
  INV_X1 mult_179_U64 ( .A(b_p[20]), .ZN(mult_179_n99) );
  INV_X1 mult_179_U63 ( .A(b_p[21]), .ZN(mult_179_n98) );
  INV_X1 mult_179_U62 ( .A(b_p[23]), .ZN(mult_179_n96) );
  INV_X1 mult_179_U61 ( .A(b_p[22]), .ZN(mult_179_n97) );
  INV_X1 mult_179_U60 ( .A(mult_179_n1), .ZN(p_2_4__9_) );
  HA_X1 mult_179_U22 ( .A(mult_179_n51), .B(mult_179_n55), .CO(mult_179_n31), 
        .S(mult_179_n32) );
  HA_X1 mult_179_U21 ( .A(mult_179_n42), .B(mult_179_n46), .CO(mult_179_n29), 
        .S(mult_179_n30) );
  FA_X1 mult_179_U20 ( .A(mult_179_n50), .B(mult_179_n54), .CI(mult_179_n31), 
        .CO(mult_179_n27), .S(mult_179_n28) );
  HA_X1 mult_179_U19 ( .A(mult_179_n49), .B(mult_179_n41), .CO(mult_179_n25), 
        .S(mult_179_n26) );
  FA_X1 mult_179_U18 ( .A(mult_179_n53), .B(mult_179_n45), .CI(mult_179_n37), 
        .CO(mult_179_n23), .S(mult_179_n24) );
  FA_X1 mult_179_U17 ( .A(mult_179_n26), .B(mult_179_n29), .CI(mult_179_n27), 
        .CO(mult_179_n21), .S(mult_179_n22) );
  FA_X1 mult_179_U14 ( .A(mult_179_n36), .B(mult_179_n48), .CI(mult_179_n25), 
        .CO(mult_179_n17), .S(mult_179_n18) );
  FA_X1 mult_179_U13 ( .A(mult_179_n23), .B(mult_179_n20), .CI(mult_179_n18), 
        .CO(mult_179_n15), .S(mult_179_n16) );
  FA_X1 mult_179_U12 ( .A(mult_179_n43), .B(mult_179_n39), .CI(mult_179_n35), 
        .CO(mult_179_n13), .S(mult_179_n14) );
  FA_X1 mult_179_U11 ( .A(mult_179_n17), .B(mult_179_n19), .CI(mult_179_n14), 
        .CO(mult_179_n11), .S(mult_179_n12) );
  FA_X1 mult_179_U10 ( .A(mult_179_n34), .B(mult_179_n38), .CI(mult_179_n13), 
        .CO(mult_179_n9), .S(mult_179_n10) );
  HA_X1 mult_179_U9 ( .A(mult_179_n56), .B(mult_179_n52), .CO(mult_179_n8), 
        .S(p_2_4__1_) );
  FA_X1 mult_179_U8 ( .A(mult_179_n8), .B(mult_179_n47), .CI(mult_179_n32), 
        .CO(mult_179_n7), .S(p_2_4__2_) );
  FA_X1 mult_179_U7 ( .A(mult_179_n7), .B(mult_179_n30), .CI(mult_179_n28), 
        .CO(mult_179_n6), .S(p_2_4__3_) );
  FA_X1 mult_179_U6 ( .A(mult_179_n22), .B(mult_179_n24), .CI(mult_179_n6), 
        .CO(mult_179_n5), .S(p_2_4__4_) );
  FA_X1 mult_179_U5 ( .A(mult_179_n16), .B(mult_179_n21), .CI(mult_179_n5), 
        .CO(mult_179_n4), .S(p_2_4__5_) );
  FA_X1 mult_179_U4 ( .A(mult_179_n12), .B(mult_179_n15), .CI(mult_179_n4), 
        .CO(mult_179_n3), .S(p_2_4__6_) );
  FA_X1 mult_179_U3 ( .A(mult_179_n10), .B(mult_179_n11), .CI(mult_179_n3), 
        .CO(mult_179_n2), .S(p_2_4__7_) );
  FA_X1 mult_179_U2 ( .A(mult_179_n9), .B(mult_179_n33), .CI(mult_179_n2), 
        .CO(mult_179_n1), .S(p_2_4__8_) );
  NAND2_X1 mult_182_U95 ( .A1(b_p[22]), .A2(x_3k1_p[3]), .ZN(mult_182_n101) );
  NAND2_X1 mult_182_U94 ( .A1(b_p[23]), .A2(x_3k1_p[2]), .ZN(mult_182_n100) );
  NAND2_X1 mult_182_U93 ( .A1(mult_182_n101), .A2(mult_182_n100), .ZN(
        mult_182_n19) );
  XNOR2_X1 mult_182_U92 ( .A(mult_182_n100), .B(mult_182_n101), .ZN(
        mult_182_n20) );
  AND2_X1 mult_182_U91 ( .A1(x_3k1_p[4]), .A2(b_p[24]), .ZN(mult_182_n33) );
  NAND2_X1 mult_182_U90 ( .A1(b_p[24]), .A2(x_3k1_p[3]), .ZN(mult_182_n34) );
  NAND2_X1 mult_182_U89 ( .A1(b_p[24]), .A2(x_3k1_p[2]), .ZN(mult_182_n35) );
  NAND2_X1 mult_182_U88 ( .A1(b_p[24]), .A2(x_3k1_p[1]), .ZN(mult_182_n36) );
  NAND2_X1 mult_182_U87 ( .A1(b_p[24]), .A2(x_3k1_p[0]), .ZN(mult_182_n37) );
  NAND2_X1 mult_182_U86 ( .A1(b_p[23]), .A2(x_3k1_p[4]), .ZN(mult_182_n38) );
  NOR2_X1 mult_182_U85 ( .A1(mult_182_n92), .A2(mult_182_n96), .ZN(
        mult_182_n39) );
  NOR2_X1 mult_182_U84 ( .A1(mult_182_n94), .A2(mult_182_n96), .ZN(
        mult_182_n41) );
  NOR2_X1 mult_182_U83 ( .A1(mult_182_n95), .A2(mult_182_n96), .ZN(
        mult_182_n42) );
  NAND2_X1 mult_182_U82 ( .A1(b_p[22]), .A2(x_3k1_p[4]), .ZN(mult_182_n43) );
  NOR2_X1 mult_182_U81 ( .A1(mult_182_n93), .A2(mult_182_n97), .ZN(
        mult_182_n45) );
  NOR2_X1 mult_182_U80 ( .A1(mult_182_n94), .A2(mult_182_n97), .ZN(
        mult_182_n46) );
  NOR2_X1 mult_182_U79 ( .A1(mult_182_n95), .A2(mult_182_n97), .ZN(
        mult_182_n47) );
  NAND2_X1 mult_182_U78 ( .A1(b_p[21]), .A2(x_3k1_p[4]), .ZN(mult_182_n48) );
  NOR2_X1 mult_182_U77 ( .A1(mult_182_n92), .A2(mult_182_n98), .ZN(
        mult_182_n49) );
  NOR2_X1 mult_182_U76 ( .A1(mult_182_n93), .A2(mult_182_n98), .ZN(
        mult_182_n50) );
  NOR2_X1 mult_182_U75 ( .A1(mult_182_n94), .A2(mult_182_n98), .ZN(
        mult_182_n51) );
  NOR2_X1 mult_182_U74 ( .A1(mult_182_n95), .A2(mult_182_n98), .ZN(
        mult_182_n52) );
  NAND2_X1 mult_182_U73 ( .A1(x_3k1_p[4]), .A2(b_p[20]), .ZN(mult_182_n53) );
  NOR2_X1 mult_182_U72 ( .A1(mult_182_n99), .A2(mult_182_n92), .ZN(
        mult_182_n54) );
  NOR2_X1 mult_182_U71 ( .A1(mult_182_n99), .A2(mult_182_n93), .ZN(
        mult_182_n55) );
  NOR2_X1 mult_182_U70 ( .A1(mult_182_n99), .A2(mult_182_n94), .ZN(
        mult_182_n56) );
  NOR2_X1 mult_182_U69 ( .A1(mult_182_n99), .A2(mult_182_n95), .ZN(p_3_4__0_)
         );
  INV_X1 mult_182_U68 ( .A(x_3k1_p[3]), .ZN(mult_182_n92) );
  INV_X1 mult_182_U67 ( .A(x_3k1_p[2]), .ZN(mult_182_n93) );
  INV_X1 mult_182_U66 ( .A(x_3k1_p[0]), .ZN(mult_182_n95) );
  INV_X1 mult_182_U65 ( .A(x_3k1_p[1]), .ZN(mult_182_n94) );
  INV_X1 mult_182_U64 ( .A(b_p[20]), .ZN(mult_182_n99) );
  INV_X1 mult_182_U63 ( .A(b_p[21]), .ZN(mult_182_n98) );
  INV_X1 mult_182_U62 ( .A(b_p[23]), .ZN(mult_182_n96) );
  INV_X1 mult_182_U61 ( .A(b_p[22]), .ZN(mult_182_n97) );
  INV_X1 mult_182_U60 ( .A(mult_182_n1), .ZN(p_3_4__9_) );
  HA_X1 mult_182_U22 ( .A(mult_182_n51), .B(mult_182_n55), .CO(mult_182_n31), 
        .S(mult_182_n32) );
  HA_X1 mult_182_U21 ( .A(mult_182_n42), .B(mult_182_n46), .CO(mult_182_n29), 
        .S(mult_182_n30) );
  FA_X1 mult_182_U20 ( .A(mult_182_n50), .B(mult_182_n54), .CI(mult_182_n31), 
        .CO(mult_182_n27), .S(mult_182_n28) );
  HA_X1 mult_182_U19 ( .A(mult_182_n49), .B(mult_182_n41), .CO(mult_182_n25), 
        .S(mult_182_n26) );
  FA_X1 mult_182_U18 ( .A(mult_182_n53), .B(mult_182_n45), .CI(mult_182_n37), 
        .CO(mult_182_n23), .S(mult_182_n24) );
  FA_X1 mult_182_U17 ( .A(mult_182_n26), .B(mult_182_n29), .CI(mult_182_n27), 
        .CO(mult_182_n21), .S(mult_182_n22) );
  FA_X1 mult_182_U14 ( .A(mult_182_n36), .B(mult_182_n48), .CI(mult_182_n25), 
        .CO(mult_182_n17), .S(mult_182_n18) );
  FA_X1 mult_182_U13 ( .A(mult_182_n23), .B(mult_182_n20), .CI(mult_182_n18), 
        .CO(mult_182_n15), .S(mult_182_n16) );
  FA_X1 mult_182_U12 ( .A(mult_182_n43), .B(mult_182_n39), .CI(mult_182_n35), 
        .CO(mult_182_n13), .S(mult_182_n14) );
  FA_X1 mult_182_U11 ( .A(mult_182_n17), .B(mult_182_n19), .CI(mult_182_n14), 
        .CO(mult_182_n11), .S(mult_182_n12) );
  FA_X1 mult_182_U10 ( .A(mult_182_n34), .B(mult_182_n38), .CI(mult_182_n13), 
        .CO(mult_182_n9), .S(mult_182_n10) );
  HA_X1 mult_182_U9 ( .A(mult_182_n56), .B(mult_182_n52), .CO(mult_182_n8), 
        .S(p_3_4__1_) );
  FA_X1 mult_182_U8 ( .A(mult_182_n8), .B(mult_182_n47), .CI(mult_182_n32), 
        .CO(mult_182_n7), .S(p_3_4__2_) );
  FA_X1 mult_182_U7 ( .A(mult_182_n7), .B(mult_182_n30), .CI(mult_182_n28), 
        .CO(mult_182_n6), .S(p_3_4__3_) );
  FA_X1 mult_182_U6 ( .A(mult_182_n22), .B(mult_182_n24), .CI(mult_182_n6), 
        .CO(mult_182_n5), .S(p_3_4__4_) );
  FA_X1 mult_182_U5 ( .A(mult_182_n16), .B(mult_182_n21), .CI(mult_182_n5), 
        .CO(mult_182_n4), .S(p_3_4__5_) );
  FA_X1 mult_182_U4 ( .A(mult_182_n12), .B(mult_182_n15), .CI(mult_182_n4), 
        .CO(mult_182_n3), .S(p_3_4__6_) );
  FA_X1 mult_182_U3 ( .A(mult_182_n10), .B(mult_182_n11), .CI(mult_182_n3), 
        .CO(mult_182_n2), .S(p_3_4__7_) );
  FA_X1 mult_182_U2 ( .A(mult_182_n9), .B(mult_182_n33), .CI(mult_182_n2), 
        .CO(mult_182_n1), .S(p_3_4__8_) );
  NAND2_X1 mult_176_U95 ( .A1(b_p[22]), .A2(x_3k2_p[3]), .ZN(mult_176_n101) );
  NAND2_X1 mult_176_U94 ( .A1(b_p[23]), .A2(x_3k2_p[2]), .ZN(mult_176_n100) );
  NAND2_X1 mult_176_U93 ( .A1(mult_176_n101), .A2(mult_176_n100), .ZN(
        mult_176_n19) );
  XNOR2_X1 mult_176_U92 ( .A(mult_176_n100), .B(mult_176_n101), .ZN(
        mult_176_n20) );
  AND2_X1 mult_176_U91 ( .A1(x_3k2_p[4]), .A2(b_p[24]), .ZN(mult_176_n33) );
  NAND2_X1 mult_176_U90 ( .A1(b_p[24]), .A2(x_3k2_p[3]), .ZN(mult_176_n34) );
  NAND2_X1 mult_176_U89 ( .A1(b_p[24]), .A2(x_3k2_p[2]), .ZN(mult_176_n35) );
  NAND2_X1 mult_176_U88 ( .A1(b_p[24]), .A2(x_3k2_p[1]), .ZN(mult_176_n36) );
  NAND2_X1 mult_176_U87 ( .A1(b_p[24]), .A2(x_3k2_p[0]), .ZN(mult_176_n37) );
  NAND2_X1 mult_176_U86 ( .A1(b_p[23]), .A2(x_3k2_p[4]), .ZN(mult_176_n38) );
  NOR2_X1 mult_176_U85 ( .A1(mult_176_n96), .A2(mult_176_n92), .ZN(
        mult_176_n39) );
  NOR2_X1 mult_176_U84 ( .A1(mult_176_n98), .A2(mult_176_n92), .ZN(
        mult_176_n41) );
  NOR2_X1 mult_176_U83 ( .A1(mult_176_n99), .A2(mult_176_n92), .ZN(
        mult_176_n42) );
  NAND2_X1 mult_176_U82 ( .A1(b_p[22]), .A2(x_3k2_p[4]), .ZN(mult_176_n43) );
  NOR2_X1 mult_176_U81 ( .A1(mult_176_n97), .A2(mult_176_n93), .ZN(
        mult_176_n45) );
  NOR2_X1 mult_176_U80 ( .A1(mult_176_n98), .A2(mult_176_n93), .ZN(
        mult_176_n46) );
  NOR2_X1 mult_176_U79 ( .A1(mult_176_n99), .A2(mult_176_n93), .ZN(
        mult_176_n47) );
  NAND2_X1 mult_176_U78 ( .A1(b_p[21]), .A2(x_3k2_p[4]), .ZN(mult_176_n48) );
  NOR2_X1 mult_176_U77 ( .A1(mult_176_n96), .A2(mult_176_n94), .ZN(
        mult_176_n49) );
  NOR2_X1 mult_176_U76 ( .A1(mult_176_n97), .A2(mult_176_n94), .ZN(
        mult_176_n50) );
  NOR2_X1 mult_176_U75 ( .A1(mult_176_n98), .A2(mult_176_n94), .ZN(
        mult_176_n51) );
  NOR2_X1 mult_176_U74 ( .A1(mult_176_n99), .A2(mult_176_n94), .ZN(
        mult_176_n52) );
  NAND2_X1 mult_176_U73 ( .A1(x_3k2_p[4]), .A2(b_p[20]), .ZN(mult_176_n53) );
  NOR2_X1 mult_176_U72 ( .A1(mult_176_n95), .A2(mult_176_n96), .ZN(
        mult_176_n54) );
  NOR2_X1 mult_176_U71 ( .A1(mult_176_n95), .A2(mult_176_n97), .ZN(
        mult_176_n55) );
  NOR2_X1 mult_176_U70 ( .A1(mult_176_n95), .A2(mult_176_n98), .ZN(
        mult_176_n56) );
  NOR2_X1 mult_176_U69 ( .A1(mult_176_n95), .A2(mult_176_n99), .ZN(p_1_4__0_)
         );
  INV_X1 mult_176_U68 ( .A(x_3k2_p[3]), .ZN(mult_176_n96) );
  INV_X1 mult_176_U67 ( .A(x_3k2_p[2]), .ZN(mult_176_n97) );
  INV_X1 mult_176_U66 ( .A(x_3k2_p[0]), .ZN(mult_176_n99) );
  INV_X1 mult_176_U65 ( .A(x_3k2_p[1]), .ZN(mult_176_n98) );
  INV_X1 mult_176_U64 ( .A(b_p[20]), .ZN(mult_176_n95) );
  INV_X1 mult_176_U63 ( .A(b_p[21]), .ZN(mult_176_n94) );
  INV_X1 mult_176_U62 ( .A(b_p[23]), .ZN(mult_176_n92) );
  INV_X1 mult_176_U61 ( .A(b_p[22]), .ZN(mult_176_n93) );
  INV_X1 mult_176_U60 ( .A(mult_176_n1), .ZN(p_1_4__9_) );
  HA_X1 mult_176_U22 ( .A(mult_176_n51), .B(mult_176_n55), .CO(mult_176_n31), 
        .S(mult_176_n32) );
  HA_X1 mult_176_U21 ( .A(mult_176_n42), .B(mult_176_n46), .CO(mult_176_n29), 
        .S(mult_176_n30) );
  FA_X1 mult_176_U20 ( .A(mult_176_n50), .B(mult_176_n54), .CI(mult_176_n31), 
        .CO(mult_176_n27), .S(mult_176_n28) );
  HA_X1 mult_176_U19 ( .A(mult_176_n49), .B(mult_176_n41), .CO(mult_176_n25), 
        .S(mult_176_n26) );
  FA_X1 mult_176_U18 ( .A(mult_176_n53), .B(mult_176_n45), .CI(mult_176_n37), 
        .CO(mult_176_n23), .S(mult_176_n24) );
  FA_X1 mult_176_U17 ( .A(mult_176_n26), .B(mult_176_n29), .CI(mult_176_n27), 
        .CO(mult_176_n21), .S(mult_176_n22) );
  FA_X1 mult_176_U14 ( .A(mult_176_n36), .B(mult_176_n48), .CI(mult_176_n25), 
        .CO(mult_176_n17), .S(mult_176_n18) );
  FA_X1 mult_176_U13 ( .A(mult_176_n23), .B(mult_176_n20), .CI(mult_176_n18), 
        .CO(mult_176_n15), .S(mult_176_n16) );
  FA_X1 mult_176_U12 ( .A(mult_176_n43), .B(mult_176_n39), .CI(mult_176_n35), 
        .CO(mult_176_n13), .S(mult_176_n14) );
  FA_X1 mult_176_U11 ( .A(mult_176_n17), .B(mult_176_n19), .CI(mult_176_n14), 
        .CO(mult_176_n11), .S(mult_176_n12) );
  FA_X1 mult_176_U10 ( .A(mult_176_n34), .B(mult_176_n38), .CI(mult_176_n13), 
        .CO(mult_176_n9), .S(mult_176_n10) );
  HA_X1 mult_176_U9 ( .A(mult_176_n56), .B(mult_176_n52), .CO(mult_176_n8), 
        .S(p_1_4__1_) );
  FA_X1 mult_176_U8 ( .A(mult_176_n8), .B(mult_176_n47), .CI(mult_176_n32), 
        .CO(mult_176_n7), .S(p_1_4__2_) );
  FA_X1 mult_176_U7 ( .A(mult_176_n7), .B(mult_176_n30), .CI(mult_176_n28), 
        .CO(mult_176_n6), .S(p_1_4__3_) );
  FA_X1 mult_176_U6 ( .A(mult_176_n22), .B(mult_176_n24), .CI(mult_176_n6), 
        .CO(mult_176_n5), .S(p_1_4__4_) );
  FA_X1 mult_176_U5 ( .A(mult_176_n16), .B(mult_176_n21), .CI(mult_176_n5), 
        .CO(mult_176_n4), .S(p_1_4__5_) );
  FA_X1 mult_176_U4 ( .A(mult_176_n12), .B(mult_176_n15), .CI(mult_176_n4), 
        .CO(mult_176_n3), .S(p_1_4__6_) );
  FA_X1 mult_176_U3 ( .A(mult_176_n10), .B(mult_176_n11), .CI(mult_176_n3), 
        .CO(mult_176_n2), .S(p_1_4__7_) );
  FA_X1 mult_176_U2 ( .A(mult_176_n9), .B(mult_176_n33), .CI(mult_176_n2), 
        .CO(mult_176_n1), .S(p_1_4__8_) );
endmodule

