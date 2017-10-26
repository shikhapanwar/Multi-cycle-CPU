`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:00:22 10/26/2017 
// Design Name: 
// Module Name:    register 
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

module register(reg_in, ld, t, reg_out);  // 16 bit registers! , ld for load, and t for transfer
	reg [15:0] reg_data; // data in register
	input ld, t;
	input [15:0] reg_in;
	output [15:0] reg_out;
	reg [15:0] reg_out ;
	
	always @(*)
		begin
			if(ld == 1)
				assign reg_data = reg_in;
			else assign reg_data = reg_data;
			
			if(t == 1)
				assign reg_out = reg_data;
			else assign reg_data = reg_data;
			
			
		end

endmodule
