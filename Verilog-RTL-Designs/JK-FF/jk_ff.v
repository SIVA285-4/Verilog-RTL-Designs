`timescale 1ns / 1ps

module jk_ff(
input clk,
input rst,
input j,k,
output reg q
    );
parameter HOLD=2'b00;
parameter RESET=2'b01;
parameter SET=2'b10;
parameter TOGGLE=2'b11;

always @(posedge clk)
begin
  if(rst)
     q<=1'b0;
       else
         begin
          case({j,k})
            HOLD: q<=q;
            RESET: q<=0;
            SET: q<=1;
            TOGGLE: q<=~q;
            default: q<=q;
          endcase
         end
end          
          
           
    
             
endmodule
