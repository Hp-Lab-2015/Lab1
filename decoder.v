`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:41:49 08/17/2015 
// Design Name: 
// Module Name:    decoder 
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
module decoder(
	d,
	in,
	en
);

output [3:0]d;
input [1:0]in;
input en;

assign d[0] = en? (~in[0]&~in[1]) : 1'b0;
assign d[1] = en? (in[0]&~in[1]) : 1'b0;
assign d[2] = en? (~in[0]&in[1]) : 1'b0;
assign d[3] = en? (in[0]&in[1]) : 1'b0;

endmodule
