`timescale 1ns / 1ps



module tb_alu;
reg [7:0]a,b;
reg en;
reg [3:0]command;
wire [15:0]y;
alu DUT(.a(a),
        .b(b),
        .en(en),
        .command(command),
        .y(y));
initial
   begin
     a=8'b0;b=8'b0;en=1'b0;command=4'b0;
     #10;
      a=8'b1100;b=8'b0011;en=1'b1;command=4'b0011;
     #10
      a=8'b1001;b=8'b1101;en=1'b1;command=4'b1101;
     #10 $finish;  
   end
initial
$monitor("a=%b,b=%b,en=%b,command=%b,y=%b",a,b,en,command,y);   
        

endmodule
