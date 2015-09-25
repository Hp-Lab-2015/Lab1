`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:18:18 08/17/2015 
// Design Name: 
// Module Name:    full_adder 
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
module full_adder(
	s,
	cout,
	a,		
	b,
	cin
);

output s,cout;
input a,b,cin;

assign s = a^b^cin;
assign cout = (a&b)|(cin&(a^b));


endmodule
