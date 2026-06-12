`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.01.2026 17:03:07
// Design Name: 
// Module Name: mux4to1_behv
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux4to1_behv(
input [3:0]I,
input [1:0]sel,
output reg y
    );
    always @(*)
       begin
          case(sel)
              
              2'b00:y=I[0];
              2'b01:y=I[1];
              2'b10:y=I[2];
              2'b11:y=I[3];
              default:y=I[0];
             
          endcase
        end      
    
endmodule
