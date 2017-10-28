`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:47:28 10/27/2017 
// Design Name: 
// Module Name:    alu_module 
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
module alu_module (x, y, fn_sel, z, carry, carry_n_1);
input [15:0]x, y;
	input [2:0]fn_sel;
	output carry, carry_n_1;
	output [15:0] z;
	reg [15:0] z;
	reg carry, carry_n_1;
	
	reg f0 = 3'b000, f1 = 3'b001, f2 = 3'b010, f3 = 3'b011, f4 = 3'b100, f5 = 3'b101, f6 = 3'b110;
	integer i;
	reg [15:0] tmp_y;
	reg [15:0] tmp16;
	reg [16:0] tmp17;
	
	always @(fn_sel)
	begin
		case(fn_sel)
			f0: z <= x;
			f1: 
				 begin
					tmp_y <= 15'b000000000000001 ;
					z <= x + tmp_y;  
					tmp17 = {{1'b0},{x}} + {{1'b0}, {tmp_y}};
					tmp16 = {{1'b0},{x[14:0]}} + {{1'b0}, {tmp_y[14:0]}};
					
					if(tmp17[16] == 1'b1) carry <= 1'b1;
					else carry <= 1'b0;
					if(tmp16[15] == 1'b1) carry_n_1 <= 1'b1;
					else carry_n_1 <= 1'b0;
				
				end

			f2: z <= x  - 15'b000000000000001;
			f3: begin
					z <= x + y;  
					tmp17 = {{1'b0},{x}} + {{1'b0}, {y}};
					tmp16 = {{1'b0},{x[14:0]}} + {{1'b0}, {y[14:0]}};
					
					if(tmp17[16] == 1'b1) carry <= 1'b1;
					else carry <= 1'b0;
					if(tmp16[15] == 1'b1) carry_n_1 <= 1'b1;
					else carry_n_1 <= 1'b0;
				
				end
			f4: z <= - x;
			f5: z <= x | y;	
			f6: z <= ~x ;
		endcase
	end

endmodule
