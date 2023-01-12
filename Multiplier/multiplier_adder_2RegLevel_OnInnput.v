`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:40:56 01/12/2023 
// Design Name: 
// Module Name:    multiplier_adder_2RegLevel_OnInnput 
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
module multiplier_adder_2RegLevel_OnInnput(
    input CLK,
    input [7:0] A,
    input [7:0] B,
    input [7:0] C,
    output [15:0] RES
    );
	 
	 reg [7:0] A_reg1, A_reg2, B_reg1, B_reg2;
	 wire [15:0] multaddsub;
	 
	 always @ (posedge CLK) begin
		A_reg1 <= A;
		A_reg2 <= A_reg1;
		B_reg1 <= B;
		B_reg2 <= B_reg1;
	 end
	 
	 assign multaddsub = A_reg2 * B_reg2 + C;
	 assign RES = multaddsub;

endmodule
