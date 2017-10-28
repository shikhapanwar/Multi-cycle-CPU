`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:08:46 10/27/2017 
// Design Name: 
// Module Name:    status_detection_storage_selection_module 
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
module 	status_detection_storage_selection_module (clk, z, carry, carry_n_1, cc, status);

input clk;
input [15:0]z;
input carry;
input carry_n_1;
input [3:0] cc;
output status;

wire [3:0] condition_values;
wire[8:0] conditional_wires;

status_detection_module status_detection(z, carry, carry_n_1, condition_values); 
status_storage_module status_storage(clk, condition_values, conditional_wires);
status_selection_module status_selection(conditional_wires,cc, status);


endmodule
