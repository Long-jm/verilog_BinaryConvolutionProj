module MyDesign (
   input reset_b, clk, dut_run,
   input [15:0] sram_dut_read_data, wmem_dut_read_data,
   output dut_busy, dut_sram_write_enable,
   output [11:0] dut_sram_read_address, dut_sram_write_address, dut_wmem_read_address,
   output [15:0] dut_sram_write_data
   );

   Controller control_inst (
      .reset_b(reset_b),
      .clk(clk),
      .go(dut_run),
      .busy(dut_busy),
      .dut_sram_write_enable(dut_sram_write_enable)
   );
   
   Datapath data_inst (
      .dut_sram_read_address(dut_sram_read_address),
      .dut_sram_write_address(dut_sram_write_address),
      .dut_wmem_read_address(dut_wmem_read_address),
      .sram_dut_read_data(sram_dut_read_data),
      .wmem_dut_read_data(wmem_dut_read_data),
      .dut_sram_write_data(dut_sram_write_data)
   );

endmodule