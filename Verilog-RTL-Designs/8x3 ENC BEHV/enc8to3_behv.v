`timescale 1ns / 1ps



module enc8to3_behv(
input [7:0]I,
output reg [2:0]Y
    );
always @(*)
      begin      
          if(I[7])
            Y=3'd7;
          else if(I[6])
            Y=3'd6;
          else if(I[5])
            Y=3'd5;
          else if(I[4])
            Y=3'd4;
          else if(I[3])
            Y=3'd3;
          else if(I[2])
            Y=3'd2;
          else if(I[1])
            Y=3'd1;
          else if(I[0])
            Y=3'd0;
          else
             Y=3'd0;                    
       end  
            
endmodule
