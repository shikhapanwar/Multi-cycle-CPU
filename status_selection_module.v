`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:43:56 10/27/2017 
// Design Name: 
// Module Name:    status_selection_module 
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
module status_selection_module(conditional_wires, cc, status
    );

	input [8:0]conditional_wires;
	input [3:0] cc;
	output reg status;
	
	always @(*)
		begin
			case (cc)
				4'b0000 : status <= conditional_wires[0];
				4'b0001 : status <= conditional_wires[1];
				4'b0010 : status <= conditional_wires[2];
				4'b0011 : status <= conditional_wires[3];
				4'b0100 : status <= conditional_wires[4];
				4'b0101 : status <= conditional_wires[5];
				4'b0110 : status <= conditional_wires[6];
				4'b0111 : status <= conditional_wires[7];
				4'b1000 : status <= conditional_wires[8];
				//4'b00 : status <= conditional_wires[0];
			
			endcase
		end


endmodule
