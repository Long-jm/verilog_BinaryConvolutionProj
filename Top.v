module BinaryConvolution (
   input reset_b, clk, go
   output busy );

   wire [2:0] cState, nState;

   Controller U1 (
      .reset_b(reset_b),
      .clk(clk),
      .nState(nState),
      .cState(cState)
   );
   
   Datapath U2 (
      .reset_b(reset_b),
      .clk(clk),
      .go(),
      .cState(cState),
      .nState(nState),
      .busy(busy)
   );

endmodule
