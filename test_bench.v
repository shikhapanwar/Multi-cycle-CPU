`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:07:30 10/22/2017
// Design Name:   controller
// Module Name:   /home/shikha/Document/Academics/Controller_design/test_bench_f1.v
// Project Name:  Controller_design
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_bench_f1;

	// Inputs
	reg clk;
	reg [15:0] IR;

	// Outputs
	wire y;
	wire l_y;
	wire t_pc;
	wire t_mar;
	wire l_pc;
	wire l_mar;
	wire l_mdr;
	wire l_ir;
	wire l_sp;
	wire t_mdr;
	wire t_ir;
	wire t_sp;
	wire mem_active;
	wire rd_wr;
	wire state;

	// Instantiate the Unit Under Test (UUT)
	controller uut (
		.clk(clk), 
		.IR(IR), 
		.y(y), 
		.l_y(l_y), 
		.t_pc(t_pc), 
		.t_mar(t_mar), 
		.l_pc(l_pc), 
		.l_mar(l_mar), 
		.l_mdr(l_mdr), 
		.l_ir(l_ir), 
		.l_sp(l_sp), 
		.t_mdr(t_mdr), 
		.t_ir(t_ir), 
		.t_sp(t_sp), 
		.mem_active(mem_active), 
		.rd_wr(rd_wr), 
		.state(state)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		IR = 16'b1111000000100000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always
		begin
			#20 clk = ~clk;
			 $display("state = %b",state);
		end
      
      
endmodule
