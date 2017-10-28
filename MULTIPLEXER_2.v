`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:50:24 10/27/2017 
// Design Name: 
// Module Name:    MULTIPLEXER_2 
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
module MULTIPLEXER_2(x, y, select, out_func); // takes 2 3-bit input and gives appropriate 3 bit output
	 input [2:0]x;
	 input [2:0]y;
	 input select;
	 output [2:0] out_func;
	 reg [2:0] out_func;
	 always @(*)
	 begin
		if(select == 0) out_func <= x;
		else out_func <= y;
	end	 


endmodule
