	`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:29:52 10/20/2017 
// Design Name: 
// Module Name:    controller 
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
module controller( clk, IR,  y, l_y, t_pc, t_mar, l_pc, l_mar, l_mdr, l_ir, l_sp, t_mdr, t_ir, t_sp, mem_active, rd_wr, state );

		 input clk;
		 input [15:0] IR;	 
		 output state ;
		 integer state = 1;
		 reg [2:0] fn_sel;
		
		output y;
		output l_y;
		output t_pc; 
		output t_mar;
		output l_pc;
		output l_mar;
		output  l_mdr;
		output l_ir;
		output l_sp;
		output t_mdr;
		output t_ir;
		output t_sp;
		
  reg y;
  reg l_y;
  reg t_pc; 
  reg t_mar;
  reg l_pc;
  reg l_mar;
   reg l_mdr;
  reg l_ir;
  reg l_sp;
  reg t_mdr;
  reg t_ir;
  reg t_sp;
		
		reg t_reg0;
		reg t_reg1;
		reg t_reg2;
		reg t_reg3;
		reg t_reg4;
		reg t_reg5;
		reg t_reg6;
		reg t_reg7;
		reg l_reg0;
		reg l_reg1;
		reg l_reg2;
		reg l_reg3;
		reg l_reg4;
		reg l_reg5;
		reg l_reg6;
		reg l_reg7;
		output mem_active;
		output rd_wr;
		
		reg mem_active;
	  reg rd_wr;
		
	 reg cond;
	reg [2:0] trans_x = 3'b000;
		reg [2:0] inc_x = 3'b001;
		reg [2:0] dec_x = 3'b010;
		reg [2:0] add_ = 3'b011;
		reg [2:0] neg_ = 3'b100;
		reg [2:0] or_ = 3'b101;
		reg [2:0] not_ = 3'b110;
wire uc_ = 1;	
wire c_ = 0;
wire nc_ = 0;
wire z_ = 0;
wire nz_ = 0;
wire v_ = 0;
wire nv_ = 0;
wire s_ = 0;
wire ns_ = 0;

	 always @(posedge clk)
	 begin
			case(state)
			1:		begin
			
			 $display("%d\n",state);
							
							t_pc = 1;
							l_mar = 1;
						
   						y = 0;
						  l_y = 0;
						  t_mar = 0;
						  l_pc = 0;
						   l_mdr = 0;
						  l_ir = 0;
						  l_sp = 0;
						   t_mdr = 0;
						   t_ir = 0;
						   t_sp = 0;
						  t_reg0 = 0;
						  t_reg1 = 0;
						  t_reg2 = 0;
						  t_reg3 = 0;
						  t_reg4 = 0;
						  t_reg5 = 0;
						  t_reg6 = 0;
						  t_reg7 = 0;
						  l_reg0 = 0;
						  l_reg1 = 0;
						  l_reg2 = 0;
						  l_reg3 = 0;
						  l_reg4 = 0;
						  l_reg5 = 0;
						  l_reg6 = 0;
						  l_reg7 = 0;
						  mem_active = 0;
						  rd_wr = 0;
							
							state = 2;
							$display("state here = %d\n", state);
							fn_sel = trans_x;
							//call_ALU();
							//t_pc = 0;
							//l_mar = 0;
							
					end
			2:
					begin
					
					
							rd_wr = 1; // write
							t_mar = 1;
							l_mdr = 1;
							mem_active = 1; // memory active
							state =3;
							
			          y = 0;
						  l_y = 0;
						  t_pc = 0; 
						  l_pc = 0;
						  l_mar = 0;
						  l_ir = 0;
						  l_sp = 0;
						   t_mdr = 0;
						   t_ir = 0;
						   t_sp = 0;
						  t_reg0 = 0;
						  t_reg1 = 0;
						  t_reg2 = 0;
						  t_reg3 = 0;
						  t_reg4 = 0;
						  t_reg5 = 0;
						  t_reg6 = 0;
						  t_reg7 = 0;
						  l_reg0 = 0;
						  l_reg1 = 0;
						  l_reg2 = 0;
						  l_reg3 = 0;
						  l_reg4 = 0;
						  l_reg5 = 0;
						  l_reg6 = 0;
						  l_reg7 = 0;
							
							//mfc = 1;
							//t_mar = 0;
							//l_mdr = 0;
							//mem_active = 0; 	
					end
			3:
					begin
					$display("currently at state%d\n",state);
					
							t_mdr = 1;
							l_ir = 1;

                          y = 0;
						  l_y = 0;
						  t_pc = 0; 
						  t_mar = 0;
						  l_pc = 0;
						  l_mar = 0;
						   l_mdr = 0;
						  l_sp = 0;
						   t_ir = 0;
						   t_sp = 0;
						  t_reg0 = 0;
						  t_reg1 = 0;
						  t_reg2 = 0;
						  t_reg3 = 0;
						  t_reg4 = 0;
						  t_reg5 = 0;
						  t_reg6 = 0;
						  t_reg7 = 0;
						  l_reg0 = 0;
						  l_reg1 = 0;
						  l_reg2 = 0;
						  l_reg3 = 0;
						  l_reg4 = 0;
						  l_reg5 = 0;
						  l_reg6 = 0;
						  l_reg7 = 0;
						  mem_active = 0;
						  rd_wr = 0;

							fn_sel = trans_x;
							state = 4;
							//call ALU
							//state = 4;
							//t_mdr = 0;
							//l_ir = 0;							
					end
					
			4 : 
					begin
								 $display("%d\n",state);
								t_pc = 1;
								l_pc = 1;
								
                          y = 0;
						  l_y = 0;
						  t_mar = 0;
						  l_mar = 0;
						   l_mdr = 0;
						  l_ir = 0;
						  l_sp = 0;
						   t_mdr = 0;
						   t_ir = 0;
						   t_sp = 0;
						  t_reg0 = 0;
						  t_reg1 = 0;
						  t_reg2 = 0;
						  t_reg3 = 0;
						  t_reg4 = 0;
						  t_reg5 = 0;
						  t_reg6 = 0;
						  t_reg7 = 0;
						  l_reg0 = 0;
						  l_reg1 = 0;
						  l_reg2 = 0;
						  l_reg3 = 0;
						  l_reg4 = 0;
						  l_reg5 = 0;
						  l_reg6 = 0;
						  l_reg7 = 0;
						  mem_active = 0;
						  rd_wr = 0;
								
								fn_sel = inc_x;
								state  = 5;
								//call ALU
					end
					
			5 :
					begin
						$display("%d\n",state);
					
                          y = 0;
						  l_y = 0;
						  t_pc = 0; 
						  t_mar = 0;
						  l_pc = 0;
						  l_mar = 0;
						   l_mdr = 0;
						  l_ir = 0;
						  l_sp = 0;
						   t_mdr = 0;
						   t_ir = 0;
						   t_sp = 0;
						  t_reg0 = 0;
						  t_reg1 = 0;
						  t_reg2 = 0;
						  t_reg3 = 0;
						  t_reg4 = 0;
						  t_reg5 = 0;
						  t_reg6 = 0;
						  t_reg7 = 0;
						  l_reg0 = 0;
						  l_reg1 = 0;
						  l_reg2 = 0;
						  l_reg3 = 0;
						  l_reg4 = 0;
						  l_reg5 = 0;
						  l_reg6 = 0;
						  l_reg7 = 0;
						  mem_active = 0;
						  rd_wr = 0;					
					
							if(IR[15:12] == 4'b1111)
								begin
										state = 6;
								end
							else if(IR [15:12] == 4'b1001)
								begin
										state = 7;
								end
							else state = 8;
					end
			
			6:
					begin
					 //$display("%d\n",state);
                          y = 0;
						  l_y = 0;
						  t_pc = 0; 
						  t_mar = 0;
						  l_pc = 0;
						  l_mar = 0;
						   l_mdr = 0;
						  l_ir = 0;
						  l_sp = 0;
						   t_mdr = 0;
						   t_ir = 0;
						   t_sp = 0;
						  t_reg0 = 0;
						  t_reg1 = 0;
						  t_reg2 = 0;
						  t_reg3 = 0;
						  t_reg4 = 0;
						  t_reg5 = 0;
						  t_reg6 = 0;
						  t_reg7 = 0;
						  l_reg0 = 0;
						  l_reg1 = 0;
						  l_reg2 = 0;
						  l_reg3 = 0;
						  l_reg4 = 0;
						  l_reg5 = 0;
						  l_reg6 = 0;
						  l_reg7 = 0;
						  mem_active = 0;
						  rd_wr = 0;
					
							if(IR[11:10] == 2'b00)
								state = 9;
							else 
								state = 10;
					end
			
			
		
			7 :
					begin
					// $display("%d\n",state);
					
						t_pc =1 ;
						l_mdr = 1;
						
                          y = 0;
						  l_y = 0;
						  t_mar = 0;
						  l_pc = 0;
						  l_mar = 0;
						  l_ir = 0;
						  l_sp = 0;
						   t_mdr = 0;
						   t_ir = 0;
						   t_sp = 0;
						  t_reg0 = 0;
						  t_reg1 = 0;
						  t_reg2 = 0;
						  t_reg3 = 0;
						  t_reg4 = 0;
						  t_reg5 = 0;
						  t_reg6 = 0;
						  t_reg7 = 0;
						  l_reg0 = 0;
						  l_reg1 = 0;
						  l_reg2 = 0;
						  l_reg3 = 0;
						  l_reg4 = 0;
						  l_reg5 = 0;
						  l_reg6 = 0;
						  l_reg7 = 0;
						  mem_active = 0;
						  rd_wr = 0;
						
						fn_sel = trans_x;
						state = 11;
						
					
					end
					
			8 : 
					begin
					 //$display("%d\n",state);
					
                          y = 0;
						  l_y = 0;
						  t_pc = 0; 
						  t_mar = 0;
						  l_pc = 0;
						  l_mar = 0;
						   l_mdr = 0;
						  l_ir = 0;
						  l_sp = 0;
						   t_mdr = 0;
						   t_ir = 0;
						   t_sp = 0;
						  t_reg0 = 0;
						  t_reg1 = 0;
						  t_reg2 = 0;
						  t_reg3 = 0;
						  t_reg4 = 0;
						  t_reg5 = 0;
						  t_reg6 = 0;
						  t_reg7 = 0;
						  l_reg0 = 0;
						  l_reg1 = 0;
						  l_reg2 = 0;
						  l_reg3 = 0;
						  l_reg4 = 0;
						  l_reg5 = 0;
						  l_reg6 = 0;
						  l_reg7 = 0;
						  mem_active = 0;
						  rd_wr = 0;
					
						if (IR[15:12] == 4'b0000) cond = uc_;
						if (IR[15:12] == 4'b0001) cond = c_;
						if (IR[15:12] == 4'b0010) cond = nc_;
						if (IR[15:12] == 4'b0011) cond = z_;
						if (IR[15:12] == 4'b0100) cond = nz_;
						if (IR[15:12] == 4'b0101) cond = v_;
						if (IR[15:12] == 4'b0110) cond = nv_;
						if (IR[15:12] == 4'b0111) cond = s_;
						if (IR[15:12] == 4'b1000) cond = ns_;
						
							
						
							if(cond == 1) state = 15;
							else state = 1;
						
					end
					
			9 :
					begin //done
					 //$display("%d\n",state);

				if(IR[6:4] == 3'b000) t_reg0 = 1;
				if(IR[6:4] == 3'b001) t_reg1 = 1;
				if(IR[6:4] == 3'b010) t_reg2 = 1;
				if(IR[6:4] == 3'b011) t_reg3 = 1;
				if(IR[6:4] == 3'b100) t_reg4 = 1;
				if(IR[6:4] == 3'b101) t_reg5 = 1;
				if(IR[6:4] == 3'b110) t_reg6 = 1;
				if(IR[6:4] == 3'b111) t_reg7 = 1;
				l_mdr = 1;
				
                          y = 0;
						  l_y = 0;
						  t_pc = 0; 
						  t_mar = 0;
						  l_pc = 0;
						  l_mar = 0;
						  l_ir = 0;
						  l_sp = 0;
						   t_mdr = 0;
						   t_ir = 0;
						   t_sp = 0;
						  t_reg0 = 0;
						  t_reg1 = 0;
						  t_reg2 = 0;
						  t_reg3 = 0;
						  t_reg4 = 0;
						  t_reg5 = 0;
						  t_reg6 = 0;
						  t_reg7 = 0;
						  l_reg0 = 0;
						  l_reg1 = 0;
						  l_reg2 = 0;
						  l_reg3 = 0;
						  l_reg4 = 0;
						  l_reg5 = 0;
						  l_reg6 = 0;
						  l_reg7 = 0;
						  mem_active = 0;
						  rd_wr = 0;
				
				fn_sel = trans_x;
				state = 11;

					end
					
			10 :
					begin
					 //$display("%d\n",state);
						t_sp = 1;
						l_mar = 1;
						
                          y = 0;
						  l_y = 0;
						  t_pc = 0; 
						  t_mar = 0;
						  l_pc = 0;
						   l_mdr = 0;
						  l_ir = 0;
						  l_sp = 0;
						   t_mdr = 0;
						   t_ir = 0;
						  t_reg0 = 0;
						  t_reg1 = 0;
						  t_reg2 = 0;
						  t_reg3 = 0;
						  t_reg4 = 0;
						  t_reg5 = 0;
						  t_reg6 = 0;
						  t_reg7 = 0;
						  l_reg0 = 0;
						  l_reg1 = 0;
						  l_reg2 = 0;
						  l_reg3 = 0;
						  l_reg4 = 0;
						  l_reg5 = 0;
						  l_reg6 = 0;
						  l_reg7 = 0;
						  mem_active = 0;
						  rd_wr = 0;
						
						state =14;
						fn_sel = trans_x;
					end
					
			11 :
					begin
					 //$display("%d\n",state);
						t_sp = 1;
						l_sp = 1;
						
                          y = 0;
						  l_y = 0;
						  t_pc = 0; 
						  t_mar = 0;
						  l_pc = 0;
						  l_mar = 0;
						   l_mdr = 0;
						  l_ir = 0;
						   t_mdr = 0;
						   t_ir = 0;
						  t_reg0 = 0;
						  t_reg1 = 0;
						  t_reg2 = 0;
						  t_reg3 = 0;
						  t_reg4 = 0;
						  t_reg5 = 0;
						  t_reg6 = 0;
						  t_reg7 = 0;
						  l_reg0 = 0;
						  l_reg1 = 0;
						  l_reg2 = 0;
						  l_reg3 = 0;
						  l_reg4 = 0;
						  l_reg5 = 0;
						  l_reg6 = 0;
						  l_reg7 = 0;
						  mem_active = 0;
						  rd_wr = 0;
						
						fn_sel = dec_x;
						state = 12;
					end
					
			12 : 
					begin
					 //$display("%d\n",state);
						t_sp = 1;
						l_mar = 1;
						
                          y = 0;
						  l_y = 0;
						  t_pc = 0; 
						  t_mar = 0;
						  l_pc = 0;
						   l_mdr = 0;
						  l_ir = 0;
						  l_sp = 0;
						   t_mdr = 0;
						   t_ir = 0;
						  t_reg0 = 0;
						  t_reg1 = 0;
						  t_reg2 = 0;
						  t_reg3 = 0;
						  t_reg4 = 0;
						  t_reg5 = 0;
						  t_reg6 = 0;
						  t_reg7 = 0;
						  l_reg0 = 0;
						  l_reg1 = 0;
						  l_reg2 = 0;
						  l_reg3 = 0;
						  l_reg4 = 0;
						  l_reg5 = 0;
						  l_reg6 = 0;
						  l_reg7 = 0;
						  mem_active = 0;
						  rd_wr = 0;
						
						fn_sel = trans_x;
						state = 13;
					end
					
					
			13 : 
					begin
					 //$isplay("%d\n",c);
						mem_active = 1;
						rd_wr = 0; // write
						t_mar = 1;
						l_mdr = 1;
						
                          y = 0;
						  l_y = 0;
						  t_pc = 0; 
						  l_pc = 0;
						  l_mar = 0;
						  l_ir = 0;
						  l_sp = 0;
						   t_mdr = 0;
						   t_ir = 0;
						   t_sp = 0;
						  t_reg0 = 0;
						  t_reg1 = 0;
						  t_reg2 = 0;
						  t_reg3 = 0;
						  t_reg4 = 0;
						  t_reg5 = 0;
						  t_reg6 = 0;
						  t_reg7 = 0;
						  l_reg0 = 0;
						  l_reg1 = 0;
						  l_reg2 = 0;
						  l_reg3 = 0;
						  l_reg4 = 0;
						  l_reg5 = 0;
						  l_reg6 = 0;
						  l_reg7 = 0;
						
						state = 22;
					end
			14 :
					begin
					 //$display("%d\n",state);
						rd_wr = 0; // read
							t_mar = 1;
							l_mdr = 1;
							mem_active = 1; 
							
                          y = 0;
						  l_y = 0;
						  t_pc = 0; 
						  l_pc = 0;
						  l_mar = 0;
						  l_ir = 0;
						  l_sp = 0;
						   t_mdr = 0;
						   t_ir = 0;
						   t_sp = 0;
						  t_reg0 = 0;
						  t_reg1 = 0;
						  t_reg2 = 0;
						  t_reg3 = 0;
						  t_reg4 = 0;
						  t_reg5 = 0;
						  t_reg6 = 0;
						  t_reg7 = 0;
						  l_reg0 = 0;
						  l_reg1 = 0;
						  l_reg2 = 0;
						  l_reg3 = 0;
						  l_reg4 = 0;
						  l_reg5 = 0;
						  l_reg6 = 0;
						  l_reg7 = 0;
							
						state = 22;
					end
					
			15 : //confirm
					begin
					 //$display("%d\n",state);
							y  = {{4'b0000},{ IR[11:0]}}; // check
							//t_y = 1;
							t_pc = 1;
							l_pc = 1;
							
                     y = 0;
						  l_y = 0;
						  t_mar = 0;
						  l_mar = 0;
						   l_mdr = 0;
						  l_ir = 0;
						  l_sp = 0;
						   t_mdr = 0;
						   t_ir = 0;
						   t_sp = 0;
						  t_reg0 = 0;
						  t_reg1 = 0;
						  t_reg2 = 0;
						  t_reg3 = 0;
						  t_reg4 = 0;
						  t_reg5 = 0;
						  t_reg6 = 0;
						  t_reg7 = 0;
						  l_reg0 = 0;
						  l_reg1 = 0;
						  l_reg2 = 0;
						  l_reg3 = 0;
						  l_reg4 = 0;
						  l_reg5 = 0;
						  l_reg6 = 0;
						  l_reg7 = 0;
						  mem_active = 0;
						  rd_wr = 0;
							
							fn_sel = add_;
							state = 1;
					end
					
			//16 : 
			17 :
					begin
					 $display("%d\n",state);
					
                          y = 0;
						  l_y = 0;
						  t_pc = 0; 
						  t_mar = 0;
						  l_pc = 0;
						  l_mar = 0;
						   l_mdr = 0;
						  l_ir = 0;
						  l_sp = 0;
						   t_mdr = 0;
						   t_ir = 0;
						   t_sp = 0;
						  t_reg0 = 0;
						  t_reg1 = 0;
						  t_reg2 = 0;
						  t_reg3 = 0;
						  t_reg4 = 0;
						  t_reg5 = 0;
						  t_reg6 = 0;
						  t_reg7 = 0;
						  l_reg0 = 0;
						  l_reg1 = 0;
						  l_reg2 = 0;
						  l_reg3 = 0;
						  l_reg4 = 0;
						  l_reg5 = 0;
						  l_reg6 = 0;
						  l_reg7 = 0;
						  mem_active = 0;
						  rd_wr = 0;
					
						if(IR[11:10] == 2'b01 ) state = 18;
						else if(IR [11:0] == 2'b11 ) state = 19;
						else state = 20;
					end
					
			18 :
					begin
					 $display("%d\n",state);
						t_mdr  = 1;
						
                          y = 0;
						  l_y = 0;
						  t_pc = 0; 
						  t_mar = 0;
						  l_pc = 0;
						  l_mar = 0;
						   l_mdr = 0;
						  l_ir = 0;
						  l_sp = 0;
						   t_ir = 0;
						   t_sp = 0;
						  t_reg0 = 0;
						  t_reg1 = 0;
						  t_reg2 = 0;
						  t_reg3 = 0;
						  t_reg4 = 0;
						  t_reg5 = 0;
						  t_reg6 = 0;
						  t_reg7 = 0;
						  l_reg0 = 0;
						  l_reg1 = 0;
						  l_reg2 = 0;
						  l_reg3 = 0;
						  l_reg4 = 0;
						  l_reg5 = 0;
						  l_reg6 = 0;
						  l_reg7 = 0;
						  mem_active = 0;
						  rd_wr = 0;
						
						if(IR[6:4] == 3'b000) l_reg0 = 1;
						if(IR[6:4] == 3'b001) l_reg1 = 1;
						if(IR[6:4] == 3'b010) l_reg2 = 1;
						if(IR[6:4] == 3'b011) l_reg3 = 1;
						if(IR[6:4] == 3'b100) l_reg4 = 1;
						if(IR[6:4] == 3'b101) l_reg5 = 1;
						if(IR[6:4] == 3'b110) l_reg6 = 1;
						if(IR[6:4] == 3'b111) l_reg7 = 1;
						
						fn_sel = trans_x;
						state = 1;
					end
			19 : 
					begin
					 $display("%d\n",state);
							t_mdr = 1;
							l_pc = 1;
							
                     y = 0;
						  l_y = 0;
						  t_pc = 0; 
						  t_mar = 0;
						  l_mar = 0;
						   l_mdr = 0;
						  l_ir = 0;
						  l_sp = 0;
						   t_ir = 0;
						   t_sp = 0;
						  t_reg0 = 0;
						  t_reg1 = 0;
						  t_reg2 = 0;
						  t_reg3 = 0;
						  t_reg4 = 0;
						  t_reg5 = 0;
						  t_reg6 = 0;
						  t_reg7 = 0;
						  l_reg0 = 0;
						  l_reg1 = 0;
						  l_reg2 = 0;
						  l_reg3 = 0;
						  l_reg4 = 0;
						  l_reg5 = 0;
						  l_reg6 = 0;
						  l_reg7 = 0;
						  mem_active = 0;
						  rd_wr = 0;
							
							fn_sel = trans_x;
							state = 1;
					end
				
			20 :
					begin
					 $display("%d\n",state);
						t_mdr =1;
						l_y =1;
						
                    y = 0;
						  t_pc = 0; 
						  t_mar = 0;
						  l_pc = 0;
						  l_mar = 0;
						   l_mdr = 0;
						  l_ir = 0;
						  l_sp = 0;
						   t_ir = 0;
						   t_sp = 0;
						  t_reg0 = 0;
						  t_reg1 = 0;
						  t_reg2 = 0;
						  t_reg3 = 0;
						  t_reg4 = 0;
						  t_reg5 = 0;
						  t_reg6 = 0;
						  t_reg7 = 0;
						  l_reg0 = 0;
						  l_reg1 = 0;
						  l_reg2 = 0;
						  l_reg3 = 0;
						  l_reg4 = 0;
						  l_reg5 = 0;
						  l_reg6 = 0;
						  l_reg7 = 0;
						  mem_active = 0;
						  rd_wr = 0;
						
						fn_sel = trans_x;
						state = 21;

					end
			21 :
					begin
					 $display("%d\n",state);
                          y = 0;
						  l_y = 0;
						  t_pc = 0; 
						  t_mar = 0;
						  l_pc = 0;
						  l_mar = 0;
						   l_mdr = 0;
						  l_ir = 0;
						  l_sp = 0;
						   t_mdr = 0;
						   t_ir = 0;
						   t_sp = 0;
						  t_reg0 = 0;
						  t_reg1 = 0;
						  t_reg2 = 0;
						  t_reg3 = 0;
						  t_reg4 = 0;
						  t_reg5 = 0;
						  t_reg6 = 0;
						  t_reg7 = 0;
						  l_reg0 = 0;
						  l_reg1 = 0;
						  l_reg2 = 0;
						  l_reg3 = 0;
						  l_reg4 = 0;
						  l_reg5 = 0;
						  l_reg6 = 0;
						  l_reg7 = 0;
						  mem_active = 0;
						  rd_wr = 0;
					
						//ALU operations
						state = 1;
					end
					
			22 : 
					begin
					 $display("%d\n",state);
					
                          y = 0;
						  l_y = 0;
						  t_pc = 0; 
						  t_mar = 0;
						  l_pc = 0;
						  l_mar = 0;
						   l_mdr = 0;
						  l_ir = 0;
						  l_sp = 0;
						   t_mdr = 0;
						   t_ir = 0;
						   t_sp = 0;
						  t_reg0 = 0;
						  t_reg1 = 0;
						  t_reg2 = 0;
						  t_reg3 = 0;
						  t_reg4 = 0;
						  t_reg5 = 0;
						  t_reg6 = 0;
						  t_reg7 = 0;
						  l_reg0 = 0;
						  l_reg1 = 0;
						  l_reg2 = 0;
						  l_reg3 = 0;
						  l_reg4 = 0;
						  l_reg5 = 0;
						  l_reg6 = 0;
						  l_reg7 = 0;
						  mem_active = 0;
						  rd_wr = 0;
					
						if(IR[14] == 0) state = 15;
						if( IR[14] == 1) state = 1;
					end
	
		default: 
			begin
			//$display("default"); 
		state = 1;
			end
		endcase
	end	
	
endmodule
