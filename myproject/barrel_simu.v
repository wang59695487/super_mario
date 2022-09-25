`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:56:55 12/30/2018
// Design Name:   barrel
// Module Name:   C:/Users/dydxh/Project/testipcore/barrel_simu.v
// Project Name:  testipcore
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: barrel
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module barrel_simu;

	// Inputs
	reg clk;
	reg rst;
	reg start;
	reg over;

	// Outputs
	wire [9:0] x;
	wire [8:0] y;
	wire [1:0] state;
	wire [2:0] animation_state;

	// Instantiate the Unit Under Test (UUT)
	barrel uut (
		.clk(clk), 
		.rst(rst), 
		.start(start), 
		.over(over), 
		.x(x), 
		.y(y), 
		.state(state), 
		.animation_state(animation_state)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		start = 0;
		over = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		rst = 0; #50;
		start = 1; #4000;
		over = 1;#50;
		rst = 1; over = 0;#50;
		rst = 0; start = 1; #50;
	end
	
	always begin
		clk = 1'b1;#20;
		clk = 1'b0;#20;
	end
      
endmodule

