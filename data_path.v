`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:52:29 10/26/2017 
// Design Name: 
// Module Name:    data_path 
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
module data_path(
    );
	 wire x, z;
	wire y; 
	//input 
	input ld_reg, t_reg;
	input selector, controller_fn;
	MULTIPLEXER_2 mux2(IR[9:8], controller_fn, selector, fn_sel);
	register y_buffer(x, ld_y, t_y, y);
	register IR(z, ld_ir, t_ir, x);
	register MAR(z, ld_mar, t_mar, mem_addr);
	register MDR(mem_data, ld_mdr, t_mdr, x);
	register SP(z, ld_sp, t_sp, x);
	register PC(z, , ld_pc, t_pc, x);
	ALU_module ALU(x, y, fn_sel, z, carry);
	
	status_detection_storage_selection_module status_detection_storage_selection(carry, IR[15:12], status);
	reg_bank_module reg_bank(z, IR[6:4], ld_reg, t_reg, x);//selects one of 8 registers, as specified in IR[6:4]
		
	
	output [15:0] over;
	

	
	wire [15:0] x_bus;
	reg  [15:0] buff_reg;
	reg [15:0]MainMemory; // no. of bits?

	wire [2:0] fn_sel;
	wire [15:0] z;
	wire bo;

	wire [3:0] load;
	wire [4:0] regout;	 
	 


endmodule
