
module Datapath (
   input [15:0] sram_dut_read_data, wmem_dut_read_data,
   output [11:0] dut_sram_read_address, dut_sram_write_address, dut_wmem_read_address,
   output [15:0] dut_sram_write_data
   );

   wire [3:0] outputMatrix;
   wire [8:0] xnorOut0, xnorOut1, xnorOut2, xnorOut3;
   wire [4:0] onesCount0, onesCount1, onesCount2, onesCount3;

   assign dut_sram_read_address = 0;
   assign dut_sram_write_address = 0;
   assign dut_wmem_read_address = 0;
   assign dut_sram_write_data = outputMatrix;

   assign xnorOut0 = ~( wmem_dut_read_data[8:0] ^ { sram_dut_read_data[10:8], sram_dut_read_data[6:4], sram_dut_read_data[2:0] } );   // Top left
   assign xnorOut1 = ~( wmem_dut_read_data[8:0] ^ { sram_dut_read_data[11:9], sram_dut_read_data[7:5], sram_dut_read_data[3:1] } );   // Top right
   assign xnorOut2 = ~( wmem_dut_read_data[8:0] ^ { sram_dut_read_data[14:12], sram_dut_read_data[10:8], sram_dut_read_data[6:4] } ); // Lower left
   assign xnorOut3 = ~( wmem_dut_read_data[8:0] ^ { sram_dut_read_data[15:13], sram_dut_read_data[11:9], sram_dut_read_data[7:5] } ); // Lower right

   assign onesCount0 = ( xnorOut0[0] + xnorOut0[1] + xnorOut0[2] + xnorOut0[3] + xnorOut0[4] + xnorOut0[5] + xnorOut0[6] + xnorOut0[7] + xnorOut0[8] );
   assign onesCount1 = ( xnorOut1[0] + xnorOut1[1] + xnorOut1[2] + xnorOut1[3] + xnorOut1[4] + xnorOut1[5] + xnorOut1[6] + xnorOut1[7] + xnorOut1[8] );
   assign onesCount2 = ( xnorOut2[0] + xnorOut2[1] + xnorOut2[2] + xnorOut2[3] + xnorOut2[4] + xnorOut2[5] + xnorOut2[6] + xnorOut2[7] + xnorOut2[8] );
   assign onesCount3 = ( xnorOut3[0] + xnorOut3[1] + xnorOut3[2] + xnorOut3[3] + xnorOut3[4] + xnorOut3[5] + xnorOut3[6] + xnorOut3[7] + xnorOut3[8] );

   assign outputMatrix[0] = ( (onesCount0 == 5) || (onesCount0 == 6) || (onesCount0 == 7) || (onesCount0 == 8) || (onesCount0 == 9) );
   assign outputMatrix[1] = ( (onesCount1 == 5) || (onesCount1 == 6) || (onesCount1 == 7) || (onesCount1 == 8) || (onesCount1 == 9) );
   assign outputMatrix[2] = ( (onesCount2 == 5) || (onesCount2 == 6) || (onesCount2 == 7) || (onesCount2 == 8) || (onesCount2 == 9) );
   assign outputMatrix[3] = ( (onesCount3 == 5) || (onesCount3 == 6) || (onesCount3 == 7) || (onesCount3 == 8) || (onesCount3 == 9) );
   
endmodule