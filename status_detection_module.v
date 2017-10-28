`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:42:52 10/27/2017 
// Design Name: 
// Module Name:    status_detection_module 
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
module status_detection_module(z, carry, carry_n_1, condition_values);
input [15:0] z;
input carry, carry_n_1;
output [3:0] condition_values;

			buf cr (condition_values[0], carry);
			nor zr(condition_values[1], z[0], z[1], z[2], z[3], z[4], z[5],z[6],z[7], z[8], z[9], z[10], z[11], z[12],z[13],z[14],z[15]);
			xor ov(condition_values[2], carry, carry_n_1);
			buf sn(condition_values[3], z[15]);

endmodule
