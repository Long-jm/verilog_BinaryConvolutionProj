/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP1
// Date      : Wed Nov 17 12:56:59 2021
/////////////////////////////////////////////////////////////


module MyDesign ( reset_b, clk, dut_run, sram_dut_read_data, 
        wmem_dut_read_data, dut_busy, dut_sram_write_enable, 
        dut_sram_read_address, dut_sram_write_address, dut_wmem_read_address, 
        dut_sram_write_data );
  input [15:0] sram_dut_read_data;
  input [15:0] wmem_dut_read_data;
  output [11:0] dut_sram_read_address;
  output [11:0] dut_sram_write_address;
  output [11:0] dut_wmem_read_address;
  output [15:0] dut_sram_write_data;
  input reset_b, clk, dut_run;
  output dut_busy, dut_sram_write_enable;
  wire   data_inst_N142, data_inst_N141, data_inst_N140, data_inst_N139, n15,
         n52, n53, n54, n55, n56, n57, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393;

  DFF_X2 control_inst_busy_reg_reg ( .D(n15), .CK(clk), .Q(dut_busy) );
  DFF_X2 data_inst_sram_write_data_reg_3_ ( .D(data_inst_N142), .CK(clk), .Q(
        dut_sram_write_data[3]) );
  DFF_X2 data_inst_sram_write_data_reg_2_ ( .D(data_inst_N141), .CK(clk), .Q(
        dut_sram_write_data[2]) );
  DFF_X2 data_inst_sram_write_data_reg_1_ ( .D(data_inst_N140), .CK(clk), .Q(
        dut_sram_write_data[1]) );
  DFF_X2 data_inst_sram_write_data_reg_0_ ( .D(data_inst_N139), .CK(clk), .Q(
        dut_sram_write_data[0]) );
  INV_X4 U57 ( .A(1'b1), .ZN(dut_sram_write_data[4]) );
  INV_X4 U58 ( .A(1'b1), .ZN(dut_sram_write_data[5]) );
  INV_X4 U59 ( .A(1'b1), .ZN(dut_sram_write_data[6]) );
  INV_X1 U60 ( .A(n239), .ZN(n214) );
  INV_X1 U61 ( .A(n291), .ZN(n285) );
  INV_X1 U62 ( .A(wmem_dut_read_data[8]), .ZN(n268) );
  INV_X1 U63 ( .A(n328), .ZN(n198) );
  INV_X1 U64 ( .A(n272), .ZN(n184) );
  INV_X1 U65 ( .A(n242), .ZN(n157) );
  INV_X1 U66 ( .A(n383), .ZN(n384) );
  INV_X1 U67 ( .A(n303), .ZN(n304) );
  NAND2_X1 U68 ( .A1(n52), .A2(n157), .ZN(n156) );
  NAND2_X1 U69 ( .A1(n169), .A2(n168), .ZN(n204) );
  AOI21_X1 U70 ( .B1(n219), .B2(n225), .A(n220), .ZN(n195) );
  INV_X1 U71 ( .A(n330), .ZN(n327) );
  NAND2_X2 U72 ( .A1(n178), .A2(n386), .ZN(n177) );
  NAND2_X1 U73 ( .A1(n179), .A2(n177), .ZN(n176) );
  INV_X1 U74 ( .A(n366), .ZN(n175) );
  NAND2_X1 U75 ( .A1(n264), .A2(n167), .ZN(n166) );
  OR2_X1 U76 ( .A1(n303), .A2(n302), .ZN(n225) );
  AND2_X2 U77 ( .A1(n306), .A2(n188), .ZN(n303) );
  INV_X1 U78 ( .A(n167), .ZN(n263) );
  NAND2_X1 U79 ( .A1(n265), .A2(n187), .ZN(n167) );
  NAND2_X1 U80 ( .A1(n243), .A2(n242), .ZN(n159) );
  NAND2_X2 U81 ( .A1(n338), .A2(n337), .ZN(n186) );
  NAND2_X2 U82 ( .A1(n247), .A2(n246), .ZN(n187) );
  XNOR2_X1 U83 ( .A(sram_dut_read_data[10]), .B(n353), .ZN(n244) );
  INV_X2 U84 ( .A(n249), .ZN(n165) );
  XNOR2_X1 U85 ( .A(sram_dut_read_data[12]), .B(wmem_dut_read_data[6]), .ZN(
        n331) );
  INV_X2 U86 ( .A(dut_run), .ZN(n392) );
  XNOR2_X1 U87 ( .A(sram_dut_read_data[8]), .B(wmem_dut_read_data[6]), .ZN(
        n287) );
  NAND3_X1 U88 ( .A1(n194), .A2(reset_b), .A3(n307), .ZN(n193) );
  INV_X2 U89 ( .A(n190), .ZN(n235) );
  INV_X2 U90 ( .A(n204), .ZN(n203) );
  INV_X2 U91 ( .A(n176), .ZN(n238) );
  NAND2_X1 U92 ( .A1(n339), .A2(n348), .ZN(n191) );
  OAI21_X2 U93 ( .B1(n206), .B2(n187), .A(n262), .ZN(n169) );
  OAI21_X2 U94 ( .B1(n206), .B2(n166), .A(n267), .ZN(n201) );
  NAND2_X1 U95 ( .A1(n206), .A2(n263), .ZN(n168) );
  AND2_X2 U96 ( .A1(n302), .A2(n188), .ZN(n220) );
  OR2_X2 U97 ( .A1(n387), .A2(n386), .ZN(n388) );
  NAND2_X1 U98 ( .A1(n174), .A2(n320), .ZN(n173) );
  NAND3_X1 U99 ( .A1(n210), .A2(n209), .A3(n383), .ZN(n178) );
  INV_X2 U100 ( .A(n266), .ZN(n267) );
  AND2_X2 U101 ( .A1(n351), .A2(n186), .ZN(n348) );
  NAND2_X1 U102 ( .A1(n323), .A2(n322), .ZN(n172) );
  OR2_X2 U103 ( .A1(n351), .A2(n186), .ZN(n352) );
  AND4_X2 U104 ( .A1(n293), .A2(n292), .A3(n295), .A4(n297), .ZN(n302) );
  OR2_X2 U105 ( .A1(n188), .A2(n306), .ZN(n307) );
  INV_X2 U106 ( .A(n390), .ZN(n237) );
  NAND2_X1 U107 ( .A1(n271), .A2(n286), .ZN(n181) );
  AND4_X2 U108 ( .A1(n254), .A2(n253), .A3(n255), .A4(n257), .ZN(n262) );
  AND4_X2 U109 ( .A1(n374), .A2(n373), .A3(n375), .A4(n378), .ZN(n386) );
  AND4_X2 U110 ( .A1(n346), .A2(n345), .A3(n344), .A4(n343), .ZN(n347) );
  NAND2_X1 U111 ( .A1(n375), .A2(n175), .ZN(n382) );
  NAND2_X1 U112 ( .A1(n255), .A2(n165), .ZN(n261) );
  NAND2_X1 U113 ( .A1(n212), .A2(n155), .ZN(n258) );
  NAND2_X1 U114 ( .A1(n248), .A2(n162), .ZN(n259) );
  INV_X4 U115 ( .A(n243), .ZN(n52) );
  INV_X2 U116 ( .A(n252), .ZN(n212) );
  NAND2_X1 U117 ( .A1(n245), .A2(n170), .ZN(n246) );
  OAI21_X1 U118 ( .B1(n245), .B2(n170), .A(n244), .ZN(n247) );
  INV_X2 U119 ( .A(n244), .ZN(n171) );
  XNOR2_X1 U120 ( .A(n175), .B(n370), .ZN(n208) );
  XNOR2_X1 U121 ( .A(n279), .B(n197), .ZN(n273) );
  INV_X2 U122 ( .A(n231), .ZN(n189) );
  INV_X2 U123 ( .A(n185), .ZN(n170) );
  NOR3_X2 U124 ( .A1(n393), .A2(n392), .A3(dut_busy), .ZN(n15) );
  INV_X2 U125 ( .A(n325), .ZN(n340) );
  INV_X2 U126 ( .A(n256), .ZN(n200) );
  INV_X2 U127 ( .A(n308), .ZN(n163) );
  INV_X2 U128 ( .A(n331), .ZN(n326) );
  INV_X2 U129 ( .A(n287), .ZN(n221) );
  XNOR2_X1 U130 ( .A(sram_dut_read_data[3]), .B(wmem_dut_read_data[2]), .ZN(
        n256) );
  INV_X2 U131 ( .A(wmem_dut_read_data[7]), .ZN(n241) );
  CLKBUF_X3 U132 ( .A(wmem_dut_read_data[2]), .Z(n183) );
  INV_X2 U133 ( .A(wmem_dut_read_data[3]), .ZN(n272) );
  XNOR2_X1 U134 ( .A(wmem_dut_read_data[1]), .B(sram_dut_read_data[5]), .ZN(
        n325) );
  INV_X2 U135 ( .A(wmem_dut_read_data[6]), .ZN(n53) );
  INV_X2 U136 ( .A(wmem_dut_read_data[1]), .ZN(n54) );
  INV_X2 U137 ( .A(sram_dut_read_data[5]), .ZN(n55) );
  INV_X2 U138 ( .A(sram_dut_read_data[7]), .ZN(n56) );
  INV_X4 U139 ( .A(sram_dut_read_data[6]), .ZN(n57) );
  INV_X2 U140 ( .A(1'b1), .ZN(dut_sram_read_address[11]) );
  INV_X2 U141 ( .A(1'b1), .ZN(dut_sram_read_address[10]) );
  INV_X2 U142 ( .A(1'b1), .ZN(dut_sram_read_address[9]) );
  INV_X2 U143 ( .A(1'b1), .ZN(dut_sram_read_address[8]) );
  INV_X2 U144 ( .A(1'b1), .ZN(dut_sram_read_address[7]) );
  INV_X2 U145 ( .A(1'b1), .ZN(dut_sram_read_address[6]) );
  INV_X2 U146 ( .A(1'b1), .ZN(dut_sram_read_address[5]) );
  INV_X2 U147 ( .A(1'b1), .ZN(dut_sram_read_address[4]) );
  INV_X2 U148 ( .A(1'b1), .ZN(dut_sram_read_address[3]) );
  INV_X2 U149 ( .A(1'b1), .ZN(dut_sram_read_address[2]) );
  INV_X2 U150 ( .A(1'b1), .ZN(dut_sram_read_address[1]) );
  INV_X2 U151 ( .A(1'b1), .ZN(dut_sram_read_address[0]) );
  INV_X2 U152 ( .A(1'b1), .ZN(dut_sram_write_address[11]) );
  INV_X2 U153 ( .A(1'b1), .ZN(dut_sram_write_address[10]) );
  INV_X2 U154 ( .A(1'b1), .ZN(dut_sram_write_address[9]) );
  INV_X2 U155 ( .A(1'b1), .ZN(dut_sram_write_address[8]) );
  INV_X2 U156 ( .A(1'b1), .ZN(dut_sram_write_address[7]) );
  INV_X2 U157 ( .A(1'b1), .ZN(dut_sram_write_address[6]) );
  INV_X2 U158 ( .A(1'b1), .ZN(dut_sram_write_address[5]) );
  INV_X2 U159 ( .A(1'b1), .ZN(dut_sram_write_address[4]) );
  INV_X2 U160 ( .A(1'b1), .ZN(dut_sram_write_address[3]) );
  INV_X2 U161 ( .A(1'b1), .ZN(dut_sram_write_address[2]) );
  INV_X2 U162 ( .A(1'b1), .ZN(dut_sram_write_address[1]) );
  INV_X2 U163 ( .A(1'b1), .ZN(dut_sram_write_address[0]) );
  INV_X2 U164 ( .A(1'b1), .ZN(dut_wmem_read_address[11]) );
  INV_X2 U165 ( .A(1'b1), .ZN(dut_wmem_read_address[10]) );
  INV_X2 U166 ( .A(1'b1), .ZN(dut_wmem_read_address[9]) );
  INV_X2 U167 ( .A(1'b1), .ZN(dut_wmem_read_address[8]) );
  INV_X2 U168 ( .A(1'b1), .ZN(dut_wmem_read_address[7]) );
  INV_X2 U169 ( .A(1'b1), .ZN(dut_wmem_read_address[6]) );
  INV_X2 U170 ( .A(1'b1), .ZN(dut_wmem_read_address[5]) );
  INV_X2 U171 ( .A(1'b1), .ZN(dut_wmem_read_address[4]) );
  INV_X2 U172 ( .A(1'b1), .ZN(dut_wmem_read_address[3]) );
  INV_X2 U173 ( .A(1'b1), .ZN(dut_wmem_read_address[2]) );
  INV_X2 U174 ( .A(1'b1), .ZN(dut_wmem_read_address[1]) );
  INV_X2 U175 ( .A(1'b1), .ZN(dut_wmem_read_address[0]) );
  INV_X2 U176 ( .A(1'b1), .ZN(dut_sram_write_data[15]) );
  INV_X2 U177 ( .A(1'b1), .ZN(dut_sram_write_data[14]) );
  INV_X2 U178 ( .A(1'b1), .ZN(dut_sram_write_data[13]) );
  INV_X2 U179 ( .A(1'b1), .ZN(dut_sram_write_data[12]) );
  INV_X2 U180 ( .A(1'b1), .ZN(dut_sram_write_data[11]) );
  INV_X2 U181 ( .A(1'b1), .ZN(dut_sram_write_data[10]) );
  INV_X2 U182 ( .A(1'b1), .ZN(dut_sram_write_data[9]) );
  INV_X2 U183 ( .A(1'b1), .ZN(dut_sram_write_data[8]) );
  INV_X2 U184 ( .A(1'b1), .ZN(dut_sram_write_data[7]) );
  NAND2_X1 U233 ( .A1(n159), .A2(n154), .ZN(n158) );
  XNOR2_X2 U234 ( .A(n52), .B(n154), .ZN(n205) );
  XNOR2_X2 U235 ( .A(n222), .B(n245), .ZN(n154) );
  INV_X2 U236 ( .A(wmem_dut_read_data[5]), .ZN(n311) );
  XNOR2_X2 U237 ( .A(n200), .B(n155), .ZN(n213) );
  INV_X4 U238 ( .A(n199), .ZN(n155) );
  XNOR2_X2 U239 ( .A(n53), .B(sram_dut_read_data[9]), .ZN(n199) );
  NAND2_X2 U240 ( .A1(n158), .A2(n156), .ZN(n206) );
  XNOR2_X2 U241 ( .A(n164), .B(n250), .ZN(n242) );
  XNOR2_X2 U242 ( .A(wmem_dut_read_data[1]), .B(n57), .ZN(n376) );
  INV_X1 U243 ( .A(n160), .ZN(n322) );
  XNOR2_X2 U244 ( .A(n320), .B(n160), .ZN(n215) );
  XNOR2_X2 U245 ( .A(n216), .B(n327), .ZN(n160) );
  NAND2_X1 U246 ( .A1(n321), .A2(n160), .ZN(n174) );
  NAND2_X2 U247 ( .A1(n274), .A2(n161), .ZN(n278) );
  XNOR2_X2 U248 ( .A(n224), .B(n161), .ZN(n196) );
  XNOR2_X2 U249 ( .A(n273), .B(n280), .ZN(n161) );
  INV_X2 U250 ( .A(sram_dut_read_data[9]), .ZN(n240) );
  XNOR2_X2 U251 ( .A(n165), .B(n162), .ZN(n164) );
  INV_X4 U252 ( .A(n251), .ZN(n162) );
  XNOR2_X2 U253 ( .A(n163), .B(n230), .ZN(n251) );
  XNOR2_X2 U254 ( .A(n309), .B(n229), .ZN(n250) );
  XNOR2_X2 U255 ( .A(n54), .B(sram_dut_read_data[2]), .ZN(n249) );
  XNOR2_X2 U256 ( .A(n185), .B(n171), .ZN(n222) );
  NAND2_X2 U257 ( .A1(n173), .A2(n172), .ZN(n339) );
  INV_X4 U258 ( .A(n321), .ZN(n323) );
  NAND2_X2 U259 ( .A1(n318), .A2(n319), .ZN(n320) );
  XNOR2_X2 U260 ( .A(n183), .B(n56), .ZN(n366) );
  NAND2_X2 U261 ( .A1(n389), .A2(n387), .ZN(n179) );
  NAND2_X2 U262 ( .A1(n210), .A2(n209), .ZN(n389) );
  XNOR2_X2 U263 ( .A(n226), .B(n211), .ZN(n224) );
  INV_X4 U264 ( .A(n275), .ZN(n211) );
  XNOR2_X2 U265 ( .A(n180), .B(n294), .ZN(n275) );
  XNOR2_X2 U266 ( .A(n221), .B(n283), .ZN(n180) );
  NAND2_X2 U267 ( .A1(n182), .A2(n181), .ZN(n226) );
  OR2_X1 U268 ( .A1(n271), .A2(n286), .ZN(n182) );
  XNOR2_X2 U269 ( .A(n55), .B(wmem_dut_read_data[3]), .ZN(n185) );
  AOI21_X2 U270 ( .B1(n391), .B2(n238), .A(n236), .ZN(data_inst_N142) );
  XNOR2_X2 U271 ( .A(n354), .B(n358), .ZN(n391) );
  OAI21_X2 U272 ( .B1(n389), .B2(n388), .A(n237), .ZN(n236) );
  INV_X4 U273 ( .A(wmem_dut_read_data[4]), .ZN(n239) );
  INV_X4 U274 ( .A(n241), .ZN(n353) );
  NAND2_X1 U275 ( .A1(n324), .A2(n231), .ZN(n344) );
  XNOR2_X1 U276 ( .A(sram_dut_read_data[0]), .B(wmem_dut_read_data[0]), .ZN(
        n289) );
  NAND2_X1 U277 ( .A1(n252), .A2(n199), .ZN(n257) );
  XNOR2_X1 U278 ( .A(n335), .B(n336), .ZN(n315) );
  NAND2_X1 U279 ( .A1(n342), .A2(n198), .ZN(n345) );
  XNOR2_X1 U280 ( .A(n285), .B(n289), .ZN(n271) );
  INV_X1 U281 ( .A(n226), .ZN(n276) );
  NAND2_X1 U282 ( .A1(n280), .A2(n197), .ZN(n281) );
  NAND2_X1 U283 ( .A1(n257), .A2(n256), .ZN(n260) );
  NAND2_X1 U284 ( .A1(n315), .A2(n334), .ZN(n319) );
  NAND2_X1 U285 ( .A1(n355), .A2(n357), .ZN(n218) );
  OAI21_X2 U286 ( .B1(n339), .B2(n186), .A(n347), .ZN(n192) );
  XNOR2_X1 U287 ( .A(n57), .B(n214), .ZN(n252) );
  XNOR2_X1 U288 ( .A(n308), .B(sram_dut_read_data[4]), .ZN(n231) );
  INV_X1 U289 ( .A(n250), .ZN(n248) );
  XNOR2_X1 U290 ( .A(n311), .B(n56), .ZN(n245) );
  XNOR2_X1 U291 ( .A(sram_dut_read_data[6]), .B(wmem_dut_read_data[2]), .ZN(
        n328) );
  NAND2_X1 U292 ( .A1(n189), .A2(n329), .ZN(n341) );
  XNOR2_X1 U293 ( .A(n272), .B(n223), .ZN(n336) );
  INV_X1 U294 ( .A(sram_dut_read_data[8]), .ZN(n223) );
  NAND2_X1 U295 ( .A1(wmem_dut_read_data[5]), .A2(sram_dut_read_data[10]), 
        .ZN(n314) );
  INV_X1 U296 ( .A(n368), .ZN(n372) );
  INV_X1 U297 ( .A(n367), .ZN(n371) );
  INV_X1 U298 ( .A(n364), .ZN(n369) );
  XNOR2_X1 U299 ( .A(n239), .B(sram_dut_read_data[10]), .ZN(n370) );
  XNOR2_X1 U300 ( .A(n53), .B(n207), .ZN(n364) );
  INV_X1 U301 ( .A(sram_dut_read_data[13]), .ZN(n207) );
  XNOR2_X1 U302 ( .A(wmem_dut_read_data[5]), .B(sram_dut_read_data[11]), .ZN(
        n360) );
  XNOR2_X1 U303 ( .A(n353), .B(sram_dut_read_data[14]), .ZN(n359) );
  XNOR2_X1 U304 ( .A(n184), .B(sram_dut_read_data[9]), .ZN(n361) );
  INV_X1 U305 ( .A(sram_dut_read_data[11]), .ZN(n229) );
  INV_X1 U306 ( .A(sram_dut_read_data[1]), .ZN(n230) );
  NAND2_X1 U307 ( .A1(n278), .A2(n277), .ZN(n219) );
  NAND2_X1 U308 ( .A1(n349), .A2(n350), .ZN(n233) );
  INV_X1 U309 ( .A(n348), .ZN(n349) );
  INV_X1 U310 ( .A(sram_dut_read_data[10]), .ZN(n312) );
  NAND2_X1 U311 ( .A1(n282), .A2(n281), .ZN(n188) );
  AOI21_X2 U312 ( .B1(n196), .B2(n195), .A(n193), .ZN(data_inst_N139) );
  AOI21_X2 U313 ( .B1(n203), .B2(n202), .A(n201), .ZN(data_inst_N140) );
  XNOR2_X2 U314 ( .A(n340), .B(n189), .ZN(n310) );
  NAND2_X2 U315 ( .A1(n192), .A2(n191), .ZN(n190) );
  NAND4_X2 U316 ( .A1(n278), .A2(n304), .A3(n277), .A4(n305), .ZN(n194) );
  OAI21_X1 U317 ( .B1(n280), .B2(n197), .A(n279), .ZN(n282) );
  XNOR2_X2 U318 ( .A(n57), .B(n311), .ZN(n197) );
  XNOR2_X2 U319 ( .A(n326), .B(n198), .ZN(n216) );
  XNOR2_X2 U320 ( .A(n205), .B(n242), .ZN(n202) );
  XNOR2_X2 U321 ( .A(n208), .B(n364), .ZN(n355) );
  NAND2_X2 U322 ( .A1(n358), .A2(n217), .ZN(n209) );
  NAND2_X2 U323 ( .A1(n218), .A2(n356), .ZN(n210) );
  XNOR2_X2 U324 ( .A(n213), .B(n212), .ZN(n243) );
  XNOR2_X2 U325 ( .A(n376), .B(n368), .ZN(n228) );
  XNOR2_X2 U326 ( .A(sram_dut_read_data[15]), .B(wmem_dut_read_data[8]), .ZN(
        n368) );
  XNOR2_X2 U327 ( .A(n215), .B(n323), .ZN(n234) );
  INV_X1 U328 ( .A(n357), .ZN(n217) );
  INV_X4 U329 ( .A(n355), .ZN(n358) );
  XNOR2_X2 U330 ( .A(n227), .B(n361), .ZN(n356) );
  INV_X1 U331 ( .A(n283), .ZN(n288) );
  XNOR2_X2 U332 ( .A(n55), .B(n239), .ZN(n283) );
  XNOR2_X1 U333 ( .A(n241), .B(n240), .ZN(n279) );
  XNOR2_X2 U334 ( .A(n357), .B(n356), .ZN(n354) );
  XNOR2_X2 U335 ( .A(n359), .B(n360), .ZN(n227) );
  XNOR2_X2 U336 ( .A(n228), .B(n367), .ZN(n357) );
  XNOR2_X1 U337 ( .A(n239), .B(n240), .ZN(n330) );
  AOI21_X2 U338 ( .B1(n235), .B2(n234), .A(n232), .ZN(data_inst_N141) );
  OAI211_X2 U339 ( .C1(n339), .C2(n233), .A(n352), .B(reset_b), .ZN(n232) );
  XNOR2_X2 U340 ( .A(n310), .B(n329), .ZN(n321) );
  INV_X4 U341 ( .A(n268), .ZN(n309) );
  INV_X2 U342 ( .A(wmem_dut_read_data[0]), .ZN(n308) );
  NAND2_X1 U343 ( .A1(n259), .A2(n249), .ZN(n254) );
  NAND2_X1 U344 ( .A1(n258), .A2(n200), .ZN(n253) );
  NAND2_X1 U345 ( .A1(n251), .A2(n250), .ZN(n255) );
  NAND4_X1 U346 ( .A1(n261), .A2(n260), .A3(n259), .A4(n258), .ZN(n265) );
  INV_X1 U347 ( .A(n262), .ZN(n264) );
  OAI21_X1 U348 ( .B1(n265), .B2(n187), .A(reset_b), .ZN(n266) );
  CLKBUF_X3 U349 ( .A(dut_busy), .Z(dut_sram_write_enable) );
  XNOR2_X1 U350 ( .A(sram_dut_read_data[2]), .B(n183), .ZN(n294) );
  NAND2_X1 U351 ( .A1(n309), .A2(n312), .ZN(n270) );
  NAND2_X1 U352 ( .A1(sram_dut_read_data[10]), .A2(n268), .ZN(n269) );
  NAND2_X1 U353 ( .A1(n270), .A2(n269), .ZN(n291) );
  XNOR2_X1 U354 ( .A(n54), .B(sram_dut_read_data[1]), .ZN(n286) );
  INV_X1 U355 ( .A(n286), .ZN(n296) );
  XNOR2_X1 U356 ( .A(sram_dut_read_data[4]), .B(n184), .ZN(n280) );
  NAND2_X1 U357 ( .A1(n275), .A2(n226), .ZN(n274) );
  NAND2_X1 U358 ( .A1(n211), .A2(n276), .ZN(n277) );
  NAND2_X1 U359 ( .A1(n287), .A2(n283), .ZN(n299) );
  INV_X1 U360 ( .A(n294), .ZN(n284) );
  NAND2_X1 U361 ( .A1(n299), .A2(n284), .ZN(n293) );
  NAND2_X1 U362 ( .A1(n285), .A2(n289), .ZN(n298) );
  NAND2_X1 U363 ( .A1(n298), .A2(n286), .ZN(n292) );
  NAND2_X1 U364 ( .A1(n221), .A2(n288), .ZN(n295) );
  INV_X1 U365 ( .A(n289), .ZN(n290) );
  NAND2_X1 U366 ( .A1(n291), .A2(n290), .ZN(n297) );
  NAND2_X1 U367 ( .A1(n295), .A2(n294), .ZN(n301) );
  NAND2_X1 U368 ( .A1(n297), .A2(n296), .ZN(n300) );
  NAND4_X1 U369 ( .A1(n301), .A2(n300), .A3(n299), .A4(n298), .ZN(n306) );
  INV_X1 U370 ( .A(n302), .ZN(n305) );
  XNOR2_X1 U371 ( .A(sram_dut_read_data[14]), .B(n309), .ZN(n329) );
  NAND2_X1 U372 ( .A1(n312), .A2(n311), .ZN(n313) );
  NAND2_X1 U373 ( .A1(n314), .A2(n313), .ZN(n335) );
  XNOR2_X1 U374 ( .A(sram_dut_read_data[13]), .B(n353), .ZN(n334) );
  INV_X1 U375 ( .A(n315), .ZN(n317) );
  INV_X1 U376 ( .A(n334), .ZN(n316) );
  NAND2_X1 U377 ( .A1(n317), .A2(n316), .ZN(n318) );
  INV_X1 U378 ( .A(n329), .ZN(n324) );
  NAND2_X1 U379 ( .A1(n344), .A2(n325), .ZN(n333) );
  NAND2_X1 U380 ( .A1(n327), .A2(n326), .ZN(n343) );
  NAND2_X1 U381 ( .A1(n343), .A2(n328), .ZN(n332) );
  NAND2_X1 U382 ( .A1(n331), .A2(n330), .ZN(n342) );
  NAND4_X1 U383 ( .A1(n333), .A2(n332), .A3(n341), .A4(n342), .ZN(n351) );
  OAI21_X1 U384 ( .B1(n336), .B2(n335), .A(n334), .ZN(n338) );
  NAND2_X1 U385 ( .A1(n336), .A2(n335), .ZN(n337) );
  NAND2_X1 U386 ( .A1(n341), .A2(n340), .ZN(n346) );
  INV_X1 U387 ( .A(n347), .ZN(n350) );
  XNOR2_X1 U388 ( .A(sram_dut_read_data[5]), .B(wmem_dut_read_data[0]), .ZN(
        n367) );
  OAI21_X1 U389 ( .B1(n361), .B2(n360), .A(n359), .ZN(n363) );
  NAND2_X1 U390 ( .A1(n361), .A2(n360), .ZN(n362) );
  AND2_X2 U391 ( .A1(n363), .A2(n362), .ZN(n383) );
  INV_X1 U392 ( .A(n370), .ZN(n365) );
  NAND2_X1 U393 ( .A1(n365), .A2(n364), .ZN(n380) );
  NAND2_X1 U394 ( .A1(n380), .A2(n366), .ZN(n374) );
  NAND2_X1 U395 ( .A1(n368), .A2(n367), .ZN(n379) );
  NAND2_X1 U396 ( .A1(n379), .A2(n376), .ZN(n373) );
  NAND2_X1 U397 ( .A1(n370), .A2(n369), .ZN(n375) );
  NAND2_X1 U398 ( .A1(n372), .A2(n371), .ZN(n378) );
  INV_X1 U399 ( .A(n376), .ZN(n377) );
  NAND2_X1 U400 ( .A1(n378), .A2(n377), .ZN(n381) );
  NAND4_X1 U401 ( .A1(n382), .A2(n381), .A3(n380), .A4(n379), .ZN(n385) );
  AND2_X2 U402 ( .A1(n385), .A2(n384), .ZN(n387) );
  OAI21_X1 U403 ( .B1(n385), .B2(n384), .A(reset_b), .ZN(n390) );
  INV_X1 U404 ( .A(reset_b), .ZN(n393) );
endmodule

