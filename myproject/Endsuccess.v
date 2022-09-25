`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:40:46 01/03/2020 
// Design Name: 
// Module Name:    Endsuccess 
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
module Endsuccess(
input wire clk,
	 input wire over,
	 input wire success,
	 input wire [5:0] movement,
	 input wire[9:0] x,
    input wire[8:0] y, 
	 output wire Win_end,
    output reg [11:0] data,
	 output wire E_end
    );

always@ (*) begin
		if(success==1)begin
      data=Win_color;
		end
      if(over==1)begin
		data=E_color;
		end
		end

sucessBg wincontrol (
	.clk(clk),.success(success),.movement(movement),.Win_end(Win_end),.x(x),.y(y),.color(Win_color));

Endcontrol endcontrol (
	.clk(clk),.over(over),.movement(movement),.End_end(E_end),.x(x),.y(y),.color(E_color));
	
endmodule
