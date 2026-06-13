`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.12.2025 12:50:44
// Design Name: 
// Module Name: full_adder
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


module full_adder(
input a,b,c,
output sum,carry

    );
    wire w1,w2,w3;
    half_adder HA1(a,b,w1,w2);
    half_adder HA2(w1,c,sum,w3);
    or or1(carry,w2,w3);
    
endmodule
