`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.01.2026 16:22:43
// Design Name: 
// Module Name: tb_fsm_101moore
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


module tb_fsm_101moore();
reg clk;
reg rst;
reg din;
wire dout;

fsm_101moore DUT(.clk(clk),.rst(rst),.din(din),.dout(dout));

initial
   begin
     clk=0;
     forever #5 clk=~clk;
   end
 
 
task inputs;
input tin;
  begin
    @(negedge clk);
      din=tin;
  end
endtask

initial
  begin
    rst=1;
    din=0;
    #10;
     rst=0;
     inputs(1);
     inputs(0);
     inputs(1);
     inputs(0);
     inputs(1);
     inputs(1);
     inputs(0);
     inputs(1);
     #10 $finish;
  end              
endmodule
