`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.12.2025 12:58:05
// Design Name: 
// Module Name: tb_full_adder
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


module tb_full_adder();
reg a,b,cin;
wire sum,carry;
integer i;
full_adder DUT(.a(a),
               .b(b),
               .c(cin),
               .sum(sum),
               .carry(carry)
               );
    initial
    begin
    {a,b,cin}=0;
    end
    initial
    begin
    for (i=0;i<8;i=i+1)
    begin
    {a,b,cin}=i;
    #10;
    end
    
    #20 $finish;
    end   
    initial
    $monitor("values of a=%b,b=%b,cin=%b,sum=%b,carry=%b",a,b,cin,sum,carry);      
endmodule
