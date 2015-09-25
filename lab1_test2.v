`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:36:44 08/18/2015
// Design Name:   lab1
// Module Name:   C:/ISE14.7/LogicDesignLab/lab1/lab1_test2.v
// Project Name:  lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: lab1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module lab1_test2;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg CIN;

	// Outputs
	wire [3:0] S;
	wire COUT;

	// Instantiate the Unit Under Test (UUT)
	lab1 uut (
		.S(S), 
		.COUT(COUT), 
		.A(A), 
		.B(B), 
		.CIN(CIN)
	);

	initial begin
		// Initialize Inputs
		A = 4'b0000;
		B = 4'b0000;
		CIN = 1'b0;

		// Wait 100 ns for global reset to finish
		#100;
      #100	A = 4'b0100; B = 4'b0110; CIN = 1'b1;
		// Add stimulus here

	end
      
endmodule

