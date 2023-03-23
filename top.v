`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:21:26 03/23/2023 
// Design Name: 
// Module Name:    top 
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
module top(
input clk_50mhz,
input [3:0] a,
input [3:0] b,
output [6:0] sseg,
output [3:0] anode
    );
	 
wire co;
wire [3:0] sum;
ripple_adder_4b ura(
.a(a),
.b(b),
.sum(sum),
.carry_out(co)
);
	 
wire [6:0] d0, d1, d2, d3;
hex2_7seg uh0(
.hex_digit(a),
.sseg(d0)
);

hex2_7seg uh1(
.hex_digit(b),
.sseg(d1)
);

hex2_7seg uh2(
.hex_digit(sum),
.sseg(d2)
);

hex2_7seg uh3(
.hex_digit({3'b000,co}),
.sseg(d3)
);

//assign d2 = 7'b1111111;
//assign d3 = 7'b1111111;

wire clk_4ms;
clk_divider uclk(
.clk_50mhz(clk_50mhz),
.clk_4ms(clk_4ms)
);

wire [1:0] dp;
display_ptr udp(
.clk(clk_4ms),
.dp(dp)
    );

sseg_ctrl ussc(
.dp(dp),
.d0(d0),
.d1(d1),
.d2(d2),
.d3(d3),
.sseg(sseg)
    );

anode_ctrl uac(
.dp(dp),
.anode(anode)
    );

endmodule
