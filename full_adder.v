`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:22:17 03/16/2023 
// Design Name: 
// Module Name:    full_adder 
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
module full_adder(
input a,b,ci,
output sum,
output co
);
	 
	wire p,q,r;

	half_adder ha1(.a(a),
						.b(b),
						.sum(p),
						.co(q)
						);
	half_adder ha2(.a(p),
						.b(ci),
						.sum(sum),
						.co(r)
						);
	assign co = q|r;

endmodule
