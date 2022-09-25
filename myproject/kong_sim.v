`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:31:58 12/29/2018
// Design Name:   kong
// Module Name:   C:/Users/dydxh/Project/KeyKong/kong_sim.v
// Project Name:  KeyKong
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: kong
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module kong_sim;

	// Inputs
	reg clk;
	reg rst;
	reg start;
	reg over;

	// Outputs
	wire [9:0] x;
	wire [8:0] y;
	wire state;
	wire [1:0] animation_state;
	wire [3:0] anicnt;

	// Instantiate the Unit Under Test (UUT)
	kong uut (
		.clk(clk), 
		.rst(rst), 
		.start(start), 
		.over(over), 
		.x(x), 
		.y(y), 
		.state(state), 
		.animation_state(animation_state),
		.anicnt(anicnt)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		start = 0;
		over = 0;

		// Wait 100 ns for global reset to finish
		#100;
       
		rst = 0; #50;
		start = 1; #50;
		start = 0;
		#300;
		over = 1;#50;
		rst = 1; over = 0;#50;
		rst = 0; start = 1; #50;
		// Add stimulus here

	end
	
	always begin
		clk = 1'b1;#20;
		clk = 1'b0;#20;
   end
endmodule

