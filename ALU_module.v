`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:45:39 10/27/2017 
// Design Name: 
// Module Name:    ALU_module 
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

module ALU_module (x, y, fn_sel, z, carry, carry_n_1);

	input [15:0]x, y;
	input [2:0]fn_sel;
	output carry, carry_n_1;
	output [15:0] z;
	
	reg f0 = 3'b000, f1 = 3'b001, f2 = 3'b010, f3 = 3'b011, f4 = 3'b100, f5 = 3'b101, f6 = 3'b110;
	integer i;
	
	always @(fn_sel)
	begin
		case(fn_sel)
			f0: z <= x;
			f1: z <= x + 1 ;
			f2: z <= x  - 1;
			f3: z <= x + y;  		
			f4: z <= - x;
			f5: z <= x | y;	
			f6: z <= ~x ;
		endcase
	end
	
endmodule
