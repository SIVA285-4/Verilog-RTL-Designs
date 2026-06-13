`timescale 1ns / 1ps



module tb_8to3_Enc_behv();
reg [7:0]I;
wire [2:0]Y;
integer j;
enc8to3_behv DUT(.I(I), .Y(Y));

 task initialize;
     begin
          I=8'b0;
     end
 endtask
 
 task data_in(input [7:0]k);
     begin
        I=k;
     end
 endtask
 
 initial
   begin
     initialize;
         for(j=0;j<256;j=j+1)
         begin
          data_in(j);
          #10;
         end
         $finish;
   end      
initial
$monitor("data_in=%b,output=%b",I,Y);         
                     
 
endmodule
