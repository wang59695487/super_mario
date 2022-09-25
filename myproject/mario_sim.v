`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:43:43 12/28/2018
// Design Name:   mario
// Module Name:   C:/Users/dydxh/Project/KeyKong/mario_sim.v
// Project Name:  KeyKong
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mario
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mario_sim;

	// Inputs
	reg clk;
	reg rst;
	reg start;
	reg over;
	reg [4:0] keydown;

	// Outputs
	wire [9:0] x;
	wire [8:0] y;
	wire [2:0] state;
	wire [3:0] animation_state;
//	wire COLLATION_LEFT;
//	wire COLLATION_RIGHT;
//	wire COLLATION_DOWN;
//	wire COLLATION_UP;
//	wire KEYUP;
//	wire KEYDOWN;
//	wire KEYLEFT;
//	wire KEYRIGHT;
//	wire KEYJUMP;
//	wire EN_CLAMP_DOWN;
//	wire EN_CLAMP_UP;
//	wire [1:0] anicnt;
	wire [10:0] xspeed;
	wire [12:0] yspeed;
	wire [12:0] y10xspeed;

	// Instantiate the Unit Under Test (UUT)
	mario uut (
		.clk(clk), 
		.rst(rst), 
		.start(start), 
		.over(over), 
		.keydown(keydown), 
		.x(x), 
		.y(y), 
		.state(state), 
		.animation_state(animation_state), 
//		.COLLATION_LEFT(COLLATION_LEFT), 
//		.COLLATION_RIGHT(COLLATION_RIGHT), 
//		.COLLATION_DOWN(COLLATION_DOWN), 
//		.COLLATION_UP(COLLATION_UP), 
//		.KEYUP(KEYUP), 
//		.KEYDOWN(KEYDOWN), 
//		.KEYLEFT(KEYLEFT), 
//		.KEYRIGHT(KEYRIGHT),
//		.KEYJUMP(KEYJUMP),
//		.EN_CLAMP_DOWN(EN_CLAMP_DOWN), 
//		.EN_CLAMP_UP(EN_CLAMP_UP),
//		.anicnt(anicnt),
		.xspeed(xspeed),
		.yspeed(yspeed),
		.y10xspeed(y10xspeed)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		start = 0;
		over = 0;
		keydown = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
    	rst = 0; #50;
		start = 1; #50;
		start = 0;
		keydown = 5'b1000_0;#2000;
		over = 1;#50;
		rst = 1; over = 0;#50;
		rst = 0; start = 1; #50;
	end
	
	always begin
		clk = 1'b1;#20;
		clk = 1'b0;#20;
	end
      
endmodule

