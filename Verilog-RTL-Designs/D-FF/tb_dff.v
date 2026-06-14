`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2026 08:05:18
// Design Name: 
// Module Name: tb_dff
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


module tb_dff();
reg D,clk,rst;
wire Q;
d_ff DUT(.D(D),.clk(clk),.rst(rst),.Q(Q));
 initial
   begin
      clk=1'b0;
      forever #5 clk=~clk;
   end
 task initialize();
   begin
     {D,clk,rst}=3'b000;
   end
 endtask
 task reset();
   begin
   @(negedge clk)
        rst=1'b1;
   @(negedge clk)
        rst=1'b0;
   end
 endtask
 task din(input d);
   begin
    @(negedge clk)
      D=d;
   end
 endtask
 initial
 begin
   initialize;
   reset;
   din(1'b1);
   din(1'b0);
   din(1'b1);
   #20;
   $finish;
 end
 initial
 $monitor("D=%b,Q=%b",D,Q);                         
endmodule
