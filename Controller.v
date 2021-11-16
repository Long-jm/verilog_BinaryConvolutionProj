module Controller (
   input reset_b, clk, go,
   output reg [2:0] cState );

   localparam WAIT      = 3'b000;
   localparam READMEM   = 3'b001;
   localparam XNORS     = 3'b011;
   localparam COUNT1S   = 3'b010;
   localparam OUTPUTS   = 3'b110;
   localparam WRITEMEM  = 3'b111;
   localparam DONE      = 3'b101;
   localparam SYSRESET  = 3'b100;

   always @(posedge clk or negedge reset_b) begin
      if (!reset_b) begin
         cState <= SYSRESET;
      end
      else begin
         casex (cState)
            WAIT: begin
               if (go) cState <= READMEM;
               else cState <= WAIT; 
            end
            READMEM: cState <= XNORS; 
            XNORS: cState <= COUNT1S;
            COUNT1S: cState <= OUTPUTS;
            OUTPUTS: cState <= WRITEMEM;
            WRITEMEM: cState <= DONE;
            DONE: cState <= WAIT;
            SYSRESET: cState <= WAIT;
            default: cState <= cState;
         endcase
      end
   end

endmodule