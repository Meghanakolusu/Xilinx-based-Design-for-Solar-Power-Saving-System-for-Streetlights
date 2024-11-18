`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:39:52 05/25/2022 
// Design Name: 
// Module Name:    ST_TD 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ST_TD(l10,l9,l8,l7,l6,l5,l4,l3,l2,l1,day,TD,rst);
output reg [3:0] l10,l9,l8,l7,l6,l5,l4,l3,l2,l1;
input [2:0]day;
input rst;
input [1:0]TD;

initial
begin
l1=4'b0000;
l2=4'b0000;
l3=4'b0000;
l4=4'b0000;
l5=4'b0000;
l6=4'b0000;
l7=4'b0000;
l8=4'b0000;
l9=4'b0000;
l10=4'b0000;
end
always@(*)
begin
if(rst==1)
begin
l1=4'b1111;
l2=4'b1111;
l3=4'b1111;
l4=4'b1111;
l5=4'b1111;
l6=4'b1111;
l7=4'b1111;
l8=4'b1111;
l9=4'b1111;
l10=4'b1111;
end
else if(day==3'b111)
begin 
l1=4'b0000;
l2=4'b0000;
l3=4'b0000;
l4=4'b0000;
l5=4'b0000;
l6=4'b0000;
l7=4'b0000;
l8=4'b0000;
l9=4'b0000;
l10=4'b0000;
end
else
begin
case(TD)
2'b00: 
begin 
l1=4'b0101;
l2=4'b0101;
l3=4'b0101;
l4=4'b0101;
l5=4'b0101;
l6=4'b0101;
l7=4'b0101;
l8=4'b0101;
l9=4'b0101;
l10=4'b0101;
end
2'b01:
begin 
l1=4'b0111;
l2=4'b0111;
l3=4'b0111;
l4=4'b0111;
l5=4'b0111;
l6=4'b0111;
l7=4'b0111;
l8=4'b0111;
l9=4'b0111;
l10=4'b0111;
end
2'b10:
begin
l1=4'b1010;
l2=4'b1010;
l3=4'b1010;
l4=4'b1010;
l5=4'b1010;
l6=4'b1010;
l7=4'b1010;
l8=4'b1010;
l9=4'b1010;
l10=4'b1010;
end
2'b11:
begin
l1=4'b1111;
l2=4'b1111;
l3=4'b1111;
l4=4'b1111;
l5=4'b1111;
l6=4'b1111;
l7=4'b1111;
l8=4'b1111;
l9=4'b1111;
l10=4'b1111;
end
endcase
end
end 
endmodule
