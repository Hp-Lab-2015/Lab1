`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:59:42 08/17/2015 
// Design Name: 
// Module Name:    lab1 
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
module lab1(
	S,
	COUT,
	A,
	B,
	CIN
);
input [3:0]A,B;
input CIN;
output [3:0]S;
output COUT;

wire tmp1,tmp2,tmp3;

full_adder A0(
	S[0],
	tmp1,
	A[0],
	B[0],
	CIN
);

full_adder A1(
	S[1],
	tmp2,
	A[1],
	B[1],
	tmp1
);

full_adder A2(
	S[2],
	tmp3,
	A[2],
	B[2],
	tmp2
);

full_adder A3(
	S[3],
	COUT,
	A[3],
	B[3],
	tmp3
);


endmodule
