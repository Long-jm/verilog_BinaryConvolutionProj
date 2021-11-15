module Controller (
   input reset_b, clk,
   input [2:0] nState,
   output [2:0] cState );

   localparam WAIT   = 3'b000;
   localparam SYSRESET  = 3'b100;

   always @(posedge clk) begin
      if (!reset_b) begin
         cState <= SYSRESET;
      end
      else begin
         cState <= nState;
      end
   end