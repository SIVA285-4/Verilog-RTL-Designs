`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.12.2025 14:53:58
// Design Name: 
// Module Name: full_adder2
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


module full_adder2(
input a,b,cin,
output sum,carry

    );
    assign sum=a^b^cin;
    assign carry=(a&b)|(b&cin)|(cin&a);
endmodule
