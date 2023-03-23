`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:40:32 03/23/2023 
// Design Name: 
// Module Name:    anode_ctrl 
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
module anode_ctrl(
input [1:0] dp,
output reg [3:0] anode
    );
	 
always @(dp)
begin
	case(dp)
		0 : anode = 4'b1110;
		1 : anode = 4'b1101;
		2 : anode = 4'b1011;
		3 : anode = 4'b0111;
	endcase
end

endmodule
