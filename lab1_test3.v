`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:02:34 08/18/2015
// Design Name:   decoder
// Module Name:   C:/ISE14.7/LogicDesignLab/lab1/lab1_test3.v
// Project Name:  lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module lab1_test3;

	// Inputs
	reg [1:0] in;
	reg en;

	// Outputs
	wire [3:0] d;

	// Instantiate the Unit Under Test (UUT)
	decoder uut (
		.d(d), 
		.in(in), 
		.en(en)
	);

	initial begin
		// Initialize Inputs
		in = 2'b00;
		en = 1'b0;

		// Wait 100 ns for global reset to finish
		#100;      
		// Add stimulus here
		#100; in=2'b00; en=1'b1; 
		#100; in=2'b01; en=1'b1;
		#100; in=2'b10; en=1'b1;
		#100; in=2'b11; en=1'b1;
		#100; in=2'b11; en=1'b0;  

	end
      
endmodule

