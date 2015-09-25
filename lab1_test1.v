`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:25:04 08/18/2015
// Design Name:   full_adder
// Module Name:   C:/ISE14.7/LogicDesignLab/lab1/lab1_test1.v
// Project Name:  lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: full_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module lab1_test1;

	// Inputs
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire s;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	full_adder uut (
		.s(s), 
		.cout(cout), 
		.a(a), 
		.b(b), 
		.cin(cin)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here
      #100 cin=0; a=0; b=0;
		#100 cin=0; a=1; b=0;
		#100 cin=0; a=1; b=1;
		#100 cin=0; a=0; b=1;
		#100 cin=1; a=0; b=0;
		#100 cin=1; a=1; b=0;
		#100 cin=1; a=1; b=1;
		#100 cin=1; a=0; b=1;
	end
      
endmodule

