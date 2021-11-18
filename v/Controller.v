module Controller (
   input reset_b, clk, go,
   output busy, dut_sram_write_enable
   );

   reg busy_reg, sram_we_reg;

   assign busy = busy_reg;
   assign dut_sram_write_enable = sram_we_reg;

   always @(posedge clk) begin
      if (busy_reg || sram_we_reg || !reset_b) begin
         busy_reg = 1'b0;
         sram_we_reg = 1'b0; end
      else if (go) begin
         busy_reg = 1'b1;
         sram_we_reg = 1'b1;
      end
   end

endmodule