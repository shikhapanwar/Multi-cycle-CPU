`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:43:57 10/26/2017 
// Design Name: 
// Module Name:    reg_bank_module 
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
module reg_bank_module(z, reg_no, ld_reg, t_reg, x );
{
	wire [2:0] reg_no;
	reg ld_0=0, ld_1=0, ld_2=0, ld_3=0, ld_4=0, ld_5=0, ld_6=0, ld_7=0;
	reg t_0=0, t_1=0, t_2=0, t_3=0, t_4=0, t_5=0, t_6=0, t_7=0;

	register r0(z, ld_0, t_0, x);
	register r1(z, ld_1, t_1, x);
	register r2(z, ld_2, t_2, x);
	register r3(z, ld_3, t_3, x);
	register r4(z, ld_4, t_4, x);
	register r5(z, ld_5, t_5, x);
	register r6(z, ld_6, t_6, x);
	register r7(z, ld_7, t_7, x);
	
	always @(*)
		begin
		
		ld_0=0; ld_1=0; ld_2=0; ld_3=;, ld_4=0; ld_5=0; ld_6=0; ld_7=0;
		t_0=0; t_1=0; t_2=0; t_3=0; t_4=0; t_5=0; t_6=0; t_7=0;
		
			if(ld_reg == 1)
				begin
				case(reg_no)
					3'b000:  ld_0 == 1;
					3'b001:  ld_1 == 1;
					3'b010:  ld_2 == 1;
					3'b011:  ld_3 == 1;
					3'b100:  ld_4 == 1;
					3'b101:  ld_5 == 1;
					3'b110:  ld_6 == 1;
					3'b111:  ld_7 == 1;
				endcase
			end
				
			if(t_reg == 1)
				begin
				case(reg_no)
					3'b000:  t_0 == 1;
					3'b001:  t_1 == 1;
					3'b010:  t_2 == 1;
					3'b011:  t_3 == 1;
					3'b100:  t_4 == 1;
					3'b101:  t_5 == 1;
					3'b110:  t_6 == 1;
					3'b111:  t_7 == 1;
				endcase
				end	
		end
	
endmodule
	
}


endmodule
