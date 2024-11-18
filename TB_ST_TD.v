`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:52:27 05/25/2022
// Design Name:   ST_TD
// Module Name:   C:/xilinx/sahithi/TB_ST_TD.v
// Project Name:  sahithi
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ST_TD
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_ST_TD;

	// Inputs
	reg [2:0]day;
	reg [1:0] TD;
	reg rst;
	

	// Outputs
	wire [3:0] l10;
	wire [3:0] l9;
	wire [3:0] l8;
	wire [3:0] l7;
	wire [3:0] l6;
	wire [3:0] l5;
	wire [3:0] l4;
	wire [3:0] l3;
	wire [3:0] l2;
	wire [3:0] l1;

	// Instantiate the Unit Under Test (UUT)
	ST_TD uut (
		.l10(l10), 
		.l9(l9), 
		.l8(l8), 
		.l7(l7), 
		.l6(l6), 
		.l5(l5), 
		.l4(l4), 
		.l3(l3), 
		.l2(l2), 
		.l1(l1), 
		.day(day), 
		.TD(TD), 
		.rst(rst)
		
	);

	initial begin
		// Initialize Inputs
		day = 3'b000;
		TD = 2'b00;
		rst = 1;
		

		// Wait 100 ns for global reset to finish
		#100;
      day = 3'b111; // day
		rst = 0;
		
		#100;        //night---1st
      day = 3'b101;
		TD = 2'b00;
		
		#100;        //night---2nd
      TD = 2'b01;
		#100;        //night---3rd
      TD = 2'b10;
		#100;        //night---4th
      TD = 2'b11;
		#100;        
      
		
		
		
	end
   
endmodule


