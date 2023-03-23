 `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:32:56 03/23/2023 
// Design Name: 
// Module Name:    sseg_ctrl 
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
module sseg_ctrl(
input [1:0] dp,
input [6:0] d0,
input [6:0] d1,
input [6:0] d2,
input [6:0] d3,
output reg [6:0] sseg
    );

always @(dp)
begin
	case(dp)
		0 : sseg = d0;
		1 : sseg = d1;
		2 : sseg = d2;
		3 : sseg = d3;
	endcase
end

endmodule
