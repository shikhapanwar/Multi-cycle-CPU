module data_path(clk, ld_reg, t_reg, ld_ir, t_ir, ld_mar, t_mar, ld_mdr, t_mdr, ld_sp, t_sp, ld_pc, t_pc, ld_reg, t_reg, controller_fn, carry_alu_func, mem_addr, mem_data_out, ld_mdr_mem,
t_mdr_mem,
ld_mdr_z,
t_mdr_x,
mem_data_in
);

	//input 
	input clk;
	input ld_reg, t_reg; // input from controller
	input ld_ir, t_ir;
	input ld_mar, t_mar;
	input ld_mdr, t_mdr;
	input ld_sp, t_sp;
	input ld_pc, t_pc;
	input ld_mdr_mem, t_mdr_mem;
	input ld_mdr_z, t_mdr_x;
	
	input carry_alu_func;
	input [2:0]	controller_fn;
	
	
	input [15:0] mem_data_out; //input from memory
	output [15:0] mem_data_in; // output to memory
	output [15:0] mem_addr;
	//wire [15:0]mem_addr;
	wire [2:0]fn_sel;
	wire carry;
	wire status;
	wire x, z;
	wire y; 
	wire [15:0] instruction;
	wire carry_n_1;
	
	MULTIPLEXER_2 mux2(controller_fn,{{1'b0} ,{instruction[9:8]}}, carry_alu_func, fn_sel);
	register y_buffer(x, ld_y, t_y, y);
	register IR(z, ld_ir, t_ir, instruction);
	register MAR(z, ld_mar, t_mar, mem_addr);
	register_mdr MDR(mem_data_out, z, ld_mdr_z, ld_mdr_mem, t_mdr_mem, t_mdr_x, mem_data_in, x);
	register SP(z, ld_sp, t_sp, x);
	register PC(z, ld_pc, t_pc, x);
	alu_module ALU(x, y, fn_sel, z, carry, carry_n_1);
	
	status_detection_storage_selection_module status_detection_storage_selection(clk, z, carry, carry_n_1, instruction[15:12], status);
	reg_bank_module reg_bank(z, instruction[6:4], ld_reg, t_reg, x);//selects one of 8 registers, as specified in IR[6:4]

endmodule
