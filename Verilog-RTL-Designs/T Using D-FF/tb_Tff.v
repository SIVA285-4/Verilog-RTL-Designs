`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2026 10:44:01
// Design Name: 
// Module Name: tb_Tff
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


module tb_Tff();
reg clk;
reg rst;
reg t;
wire q;
Tff_usingDff DUT(.clk(clk),.rst(rst),.t(t),.q(q));
 initial
   begin
   clk=0;
   forever #5 clk=~clk;
   end
 task inputs(input tt);
   begin
      t=tt;
      #10;
   end
 endtask
 
 initial
  begin
    rst=1;
    t=0;
    #10;
    rst=0;
    inputs(0);
    inputs(1);
    inputs(1);
    inputs(0);
    inputs(1);
    #10;
    $finish;
 end   
           
endmodule
