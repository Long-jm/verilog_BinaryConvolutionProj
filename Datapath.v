
module Datapath (
   input reset_b, clk, go,
   input [2:0] cState,
   output [2:0] nState,
   output busy );
 
   localparam YES       = 1'b1;
   localparam RESET     = 1'b0;

   localparam WAIT      = 3'b000;
   localparam READMEM   = 3'b001;
   localparam XNORS     = 3'b011;
   localparam COUNT1S   = 3'b010;
   localparam OUTPUTS   = 3'b110;
   localparam WRITEMEM  = 3'b111;
   localparam DONE      = 3'b101;
   localparam SYSRESET  = 3'b100;

   wire [15:0] weightMatrix, inputMatrix; 
   wire [3:0] outputMatrix;
   wire [8:0] xnorOut0, xnorOut1, xnorOut2, xnorOut3;
   wire [4:0] onesCount0, onesCount1, onesCount2, onesCount3;

   wire [11:0] dut_sram_read_address = 0, dut_sram_write_address = 0, dut_wmem_read_address = 0;
   wire [15:0] sram_dut_read_data, dut_sram_write_data, wmem_dut_read_data;
   wire dut_sram_write_enable;

   casex (cState)
      WAIT: begin
         if (go) nState = READMEM;
         else nState = WAIT; 
      end
      READMEM: begin
         busy = YES;
         // perform SRAM read here
         dut_sram_write_enable = 1'b0;
         inputMatrix = sram_dut_read_data;
         weightMatrix = wmem_dut_read_data;

         onesCount0 = RESET;
         onesCount1 = RESET;
         onesCount2 = RESET;
         onesCount3 = RESET;

         dut_sram_write_address = dut_sram_write_address + 1;
         nState = XNORS; 
      end
      XNORS: begin
         xnorOut0 = ~( weightMatrix[8:0] ^ { inputMatrix[10:8], inputMatrix[6:4], inputMatrix[2:0] } )   // Top left
         xnorOut1 = ~( weightMatrix[8:0] ^ { inputMatrix[11:9], inputMatrix[7:5], inputMatrix[3:1] } )   // Top right
         xnorOut2 = ~( weightMatrix[8:0] ^ { inputMatrix[14:12], inputMatrix[10:8], inputMatrix[6:4] } ) // Lower left
         xnorOut3 = ~( weightMatrix[8:0] ^ { inputMatrix[15:13], inputMatrix[11:9], inputMatrix[7:5] } ) // Lower right
         nState = COUNT1S;
      end
      COUNT1S: begin
         for (i=0; i<9; i=i+1) begin
            if ( xnorOut0[i] ) onesCount0 = onesCount0 + 1'b1;
            else onesCount0 = onesCount0;
            if ( xnorOut1[i] ) onesCount1 = onesCount1 + 1'b1;
            else onesCount1 = onesCount1;
            if ( xnorOut2[i] ) onesCount2 = onesCount2 + 1'b1;
            else onesCount2 = onesCount2;
            if ( xnorOut3[i] ) onesCount3 = onesCount3 + 1'b1;
            else onesCount3 = onesCount3;
         end
         nState = OUTPUTS;
      end
      OUTPUTS: begin
         if ((onesCount0 == 5) || (onesCount0 == 6) || (onesCount0 == 7) || (onesCount0 == 8) || (onesCount0 == 9))
            outputMatrix[0] = 1;
         else outputMatrix[0] = 0;
         if ((onesCount1 == 5) || (onesCount1 == 6) || (onesCount1 == 7) || (onesCount1 == 8) || (onesCount1 == 9))
            outputMatrix[1] = 1;
         else outputMatrix[1] = 0;
         if ((onesCount2 == 5) || (onesCount2 == 6) || (onesCount2 == 7) || (onesCount2 == 8) || (onesCount2 == 9))
            outputMatrix[2] = 1;
         else outputMatrix[2] = 0;
         if ((onesCount3 == 5) || (onesCount3 == 6) || (onesCount3 == 7) || (onesCount3 == 8) || (onesCount3 == 9))
            outputMatrix[3] = 1;
         else outputMatrix[3] = 0;
         nState = WRITEMEM;
      end
      WRITEMEM: begin
         // write outputMatrix to SRAM
         dut_sram_write_data = outputMatrix;
         dut_sram_write_enable = 1'b1;

         nState = DONE;
      end
      DONE: begin
         busy = NO;
         dut_sram_read_address = dut_sram_read_address + 1;  
         dut_wmem_read_address = dut_wmem_read_address + 1;
         nState = WAIT;
      end
      SYSRESET: begin
         busy = RESET;
         dut_sram_read_address = 0; 
         dut_sram_write_address = 0; 
         dut_wmem_read_address = 0;
         nState = WAIT;
      end
      default: nState = WAIT;
   endcase
   
endmodule
