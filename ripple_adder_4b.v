`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:00:54 03/21/2023 
// Design Name: 
// Module Name:    ripple_adder_4b 
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
module ripple_adder_4b(
    input [3:0] a,
    input [3:0] b,
    output [3:0] sum,
    output carry_out
    );
	 
wire c0,c1,c2;

full_adder fa0(
	.a(a[0]),
	.b(b[0]),
	.ci(0),
	.sum(sum[0]),
	.co(c0));

full_adder fa1(
	.a(a[1]),
	.b(b[1]),
	.ci(c0),
	.sum(sum[1]),
	.co(c1));

full_adder fa2(
	.a(a[2]),
	.b(b[2]),
	.ci(c1),
	.sum(sum[2]),
	.co(c2));

full_adder fa3(
	.a(a[3]),
	.b(b[3]),
	.ci(c2),
	.sum(sum[3]),
	.co(carry_out));

endmodule
