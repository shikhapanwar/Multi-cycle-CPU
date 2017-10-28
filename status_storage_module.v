`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:43:21 10/27/2017 
// Design Name: 
// Module Name:    status_storage_module 
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
module status_storage_module(clk, condition_values, conditional_wires);

input clk;
input [3:0]condition_values;
output [8:0]conditional_wires;

wire [3:0] condition_values;
//reg [8:0] condtional_wires;

assign conditional_wires[0]=1;
DFF DFF_1(condition_values[0], clk, conditional_wires[1], conditional_wires[2]);
DFF DFF_2(condition_values[1], clk, conditional_wires[3], conditional_wires[4]);
DFF DFF_3(condition_values[2], clk, conditional_wires[5], conditional_wires[6]);
DFF DFF_4(condition_values[3], clk, conditional_wires[7], conditional_wires[8]);

endmodule

module DFF(D,clk,Q, Qbar);

    input clk;
	 input  D;
    output reg  Q;
    output reg Qbar;
    always @(posedge clk)
	 begin
         Q <= D;
			Qbar <= ~Q; 
    end
endmodule

