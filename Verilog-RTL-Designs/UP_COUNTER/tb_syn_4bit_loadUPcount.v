`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2026 12:01:03
// Design Name: 
// Module Name: tb_syn_4bit_loadUPcount
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


module tb_syn_4bit_loadUPcount();
reg clk;
reg rst;
reg load;
reg [3:0]data;
wire [3:0]count;

syn_4bit_loadUPcount DUT(.clk(clk),.rst(rst),.load(load),.data(data),.count(count));

initial
  begin
   clk=0;
   forever #5 clk=~clk;
  end 
  
task drive_in;
 input trst;
 input tload;
 input [3:0]tdata;
   begin
     @(negedge clk);
      rst=trst;
      load=tload;
      data=tdata;
   end
endtask

initial
 begin
   rst=0;
   load=0;
   data=0;
   #10;
    drive_in(1,0,4'b0000);
    drive_in(0,0,4'b0000);
    drive_in(0,0,4'b0000);
    drive_in(0,0,4'b0000);
    drive_in(0,1,4'b0110);
    drive_in(0,0,4'b0000);
    drive_in(0,0,4'b0000);
    drive_in(0,0,4'b0000);
    #10 $finish;
end      
       
   
endmodule
