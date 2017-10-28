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
module data_path( ld_reg, t_reg, ld_ir, t_ir, ld_mar, t_mar, ld_mdr, t_mdr, ld_sp, t_sp, ld_pc, t_pc, ld_reg, t_reg, selector, controller_fn, mem_data);
	//input 
	input ld_reg, t_reg;
	input ld_ir, t_ir;
	input ld_mar, t_mar;
	input ld_mdr, t_mdr;
	input ld_sp, t_sp;
	input ld_pc, t_pc;
	input selector, controller_fn;
	
	input mem_data;
	wire mem_addr;
	wire fn_sel, carry;
	wire status;
	wire x, z;
	wire y; 
	wire [15:0] instruction;
	//MULTIPLEXER_2 mux2(instruction[9:8], controller_fn, selector, fn_sel);
	register y_buffer(x, ld_y, t_y, y);
	register IR(z, ld_ir, t_ir, instruction);
	register MAR(z, ld_mar, t_mar, mem_addr);
	register MDR(mem_data, ld_mdr, t_mdr, x);
	register SP(z, ld_sp, t_sp, x);
	register PC(z, ld_pc, t_pc, x);
	//ALU_module ALU(x, y, fn_sel, z, carry);
	
	//status_detection_storage_selection_module status_detection_storage_selection(carry, instruction[15:12], status);
	reg_bank_module reg_bank(z, instruction[6:4], ld_reg, t_reg, x);//selects one of 8 registers, as specified in IR[6:4]

endmodule
