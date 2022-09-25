`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:25:17 12/28/2018
// Design Name:   state_fsm
// Module Name:   C:/Users/dydxh/Project/KeyKong/state_fsm_sim.v
// Project Name:  KeyKong
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: state_fsm
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module state_fsm_sim;

	// Inputs
	reg clk;
	reg start;
	reg restart;
	reg over;
	reg success;

	// Outputs
	wire [1:0] state;

	// Instantiate the Unit Under Test (UUT)
	state_fsm uut (
		.clk(clk), 
		.start(start), 
		.restart(restart), 
		.over(over), 
		.success(success), 
		.state(state)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		start = 0;
		restart = 0;
		over = 0;
		success = 0;

		// Wait 100 ns for global reset to finish
		#100;
		over = 1;#20;
		success = 1;#20;
		restart = 1;#20;
		over = 0;#20;
		success = 0;#20;
		restart = 0;#20;
		start = 1;#20;
		start = 0;#20;
		restart = 1;#20;
		restart = 0;#20;
		start = 1;#20;
		start = 0;#20;
		success = 1;#20;
		success = 0;#20;
		restart = 1;#20;
		restart = 0;#20;
		start = 1;#20;
		start = 0;#20;
		over = 1;#20;
		over = 0;#20;
		// Add stimulus here
	end
	
	always begin
		clk = 1'b0; #20;
		clk = 1'b1; #20;
	end
      
endmodule

