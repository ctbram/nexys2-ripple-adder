`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:59:52 03/16/2023 
// Design Name: 
// Module Name:    hex_7seg 
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
module hex2_7seg(
input [3:0] hex_digit,
output reg [6:0] sseg
);

always@(*) begin
	case(hex_digit)
//                  abcdefg
//                  6543210
		   0: sseg=7'b0000001;
		   1: sseg=7'b1001111;
		   2: sseg=7'b0010010;
		   3: sseg=7'b0000110;
		   4: sseg=7'b1001100;
		   5: sseg=7'b0100100;
		   6: sseg=7'b0100000;
		   7: sseg=7'b0001111;
		   8: sseg=7'b0000000;
		   9: sseg=7'b0001100;
		4'ha: sseg=7'b0001000;
		4'hb: sseg=7'b1100000;
		4'hc: sseg=7'b0110001;
		4'hd: sseg=7'b1000010;
		4'he: sseg=7'b0110000;
		4'hf: sseg=7'b0111000;
		default:sseg=7'b1111111;
	endcase
end

endmodule
