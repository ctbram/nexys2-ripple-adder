`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:47:16 03/23/2023 
// Design Name: 
// Module Name:    display_ptr 
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
module display_ptr(
input clk,
output reg [1:0] dp=0
    );

always @(posedge clk) dp <= dp + 1;

endmodule
