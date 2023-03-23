`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:01:41 03/22/2023 
// Design Name: 
// Module Name:    clk_divider 
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
module clk_divider(
input clk_50mhz,
output reg clk_4ms=0
);

localparam count = 99999;  // 4ms clock => count = 50Mhz * 4ms / 2 = (100000 - 1)

integer clk_counter = 0;

always @(posedge clk_50mhz)
begin
	if(clk_counter == count)
	begin
		clk_counter <= 0;
		clk_4ms <= ~clk_4ms;
	end
	else
	begin
		clk_counter <= clk_counter + 1;
		clk_4ms <= clk_4ms;  //store
	end
end

endmodule
