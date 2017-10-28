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

	input [15:0]z;
	input [2:0]reg_no;
	input ld_reg;
	input t_reg;
	output [15:0]x;
	reg [15:0] x;
	reg [15:0] tmp_x;
	reg ld_0=0, ld_1=0, ld_2=0, ld_3=0, ld_4=0, ld_5=0, ld_6=0, ld_7=0;
	reg t_0=0, t_1=0, t_2=0, t_3=0, t_4=0, t_5=0, t_6=0, t_7=0;
	
	register r0(z, ld_0, t_0, tmp_x);
	register r1(z, ld_1, t_1, tmp_x);
	register r2(z, ld_2, t_2, tmp_x);
	register r3(z, ld_3, t_3, tmp_x);
	register r4(z, ld_4, t_4, tmp_x);
	register r5(z, ld_5, t_5, tmp_x);
	register r6(z, ld_6, t_6, tmp_x);
	register r7(z, ld_7, t_7, tmp_x);
	
	
	
	always @(*)
		begin
		
		ld_0=0;
		ld_1=0;
		ld_2=0;
		ld_3=0;
		ld_4=0;
		ld_5=0;
		ld_6=0;
		ld_7=0;
		t_0=0;
		t_1=0;
		t_2=0;
		t_3=0;
		t_4=0;
		t_5=0;
		t_6=0;
		t_7=0;
		
			if(ld_reg == 1)
				begin
				case(reg_no)
					3'b000:  begin ld_0 <= 1'b1;   end
					3'b001:  begin ld_1 <= 1'b1;  end
					3'b010:  begin ld_2 <= 1'b1;  end
					3'b011:  begin ld_3 <= 1'b1; end
					3'b100:  begin ld_4 <= 1'b1;  end
					3'b101:  begin ld_5 <= 1'b1;  end
					3'b110:  begin ld_6 <= 1'b1;  end
					3'b111:  begin ld_7 <= 1'b1;   end
				endcase
			end
				
			if(t_reg == 1)
				begin
				case(reg_no)
					3'b000:  t_0 <= 1'b1;
					3'b001:  t_1 <= 1'b1;
					3'b010:  t_2 <= 1'b1;
					3'b011:  t_3 <= 1'b1;
					3'b100:  t_4 <= 1'b1;
					3'b101:  t_5 <= 1'b1;
					3'b110:  t_6 <= 1'b1;
					3'b111:  t_7 <= 1'b1;
				endcase
				end	
				
		x = tmp_x;
				
		end
	
endmodule
	


