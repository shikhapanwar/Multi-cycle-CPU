`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:42:56 10/28/2017
// Design Name:   data_path
// Module Name:   /home/shikha/Document/Academics/Semester 5/coa_lab/Multi_cycle_cpu/testbench_memory.v
// Project Name:  Multi_cycle_cpu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: data_path
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench_memory;

	// Inputs
	reg ld_reg;
	reg t_reg;
	reg ld_ir;
	reg t_ir;
	reg ld_mar;
	reg t_mar;
	reg ld_mdr;
	reg t_mdr;
	reg ld_sp;
	reg t_sp;
	reg ld_pc;
	reg t_pc;
	reg ld_reg;
	reg t_reg;
	reg selector;
	reg [2:0] controller_fn;
	reg mem_data;

	// Instantiate the Unit Under Test (UUT)
	data_path uut (
		.ld_reg(ld_reg), 
		.t_reg(t_reg), 
		.ld_ir(ld_ir), 
		.t_ir(t_ir), 
		.ld_mar(ld_mar), 
		.t_mar(t_mar), 
		.ld_mdr(ld_mdr), 
		.t_mdr(t_mdr), 
		.ld_sp(ld_sp), 
		.t_sp(t_sp), 
		.ld_pc(ld_pc), 
		.t_pc(t_pc), 
		.ld_reg(ld_reg), 
		.t_reg(t_reg), 
		.selector(selector), 
		.controller_fn(controller_fn), 
		.mem_data(mem_data)
	);

	initial begin
		// Initialize Inputs
		ld_reg = 0;
		t_reg = 0;
		ld_ir = 0;
		t_ir = 0;
		ld_mar = 0;
		t_mar = 0;
		ld_mdr = 0;
		t_mdr = 0;
		ld_sp = 0;
		t_sp = 0;
		ld_pc = 0;
		t_pc = 0;
		ld_reg = 0;
		t_reg = 0;
		selector = 0;
		controller_fn = 0;
		mem_data = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

