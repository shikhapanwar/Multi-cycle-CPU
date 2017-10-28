`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:26:23 10/27/2017 
// Design Name: 
// Module Name:    register_mdr 
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

module register_mdr(mem_data_out, z, ld_mdr_z, ld_mdr_mem, t_mdr_mem, t_mdr_x, mem_data_in, x);

reg [15:0] reg_data; // data in register

input [15:0] mem_data_out, z;
input ld_mdr_z, ld_mdr_mem, t_mdr_mem, t_mdr_x;
output [15:0] mem_data_in, x;
reg [15:0] mem_data_in, x;

always @(*)
		begin
			if(ld_mdr_z == 1)
				reg_data <= z;
			else  reg_data <= reg_data;
			
			if(t_mdr_x == 1)
				x <= reg_data;
			//else assign reg_data = reg_data;
			
			if(ld_mdr_mem == 1)
				reg_data <= mem_data_out;
			else  reg_data <= reg_data;
			
			if(t_mdr_mem == 1)
				mem_data_in <= reg_data;
			//else assign reg_data = reg_data;
			
	
		end

endmodule
