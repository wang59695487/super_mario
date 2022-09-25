`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:44:41 01/01/2020 
// Design Name: 
// Module Name:    Endcontrol 
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

module Endcontrol(
	 input wire clk,
	 input wire over,
	 input wire [5:0] movement,
	 input wire[9:0] x,
    input wire[8:0] y, 
    output wire [11:0] color,
	 output reg End_end
    );
	
				  
	reg is_end;
	
	
	initial begin
	is_end <= 0;
	end
	
	always @ (posedge clk) begin
		  End_end <= is_end;
   end
	
	
	always@ (*) begin
		if(over == 1)begin 
			  is_end = 0; 
			    if (movement[4]||movement[5])begin
				     is_end = 1;
					end
		 end
		 if(over!=1)begin
	    is_end = 0;
		end
	 
    end
	 
//ÏÔÊ¾Ä£¿é	 
	 
wire [1:0] is_display ;
wire[15:0] address [1:0];
wire [11:0] data [1:0];
reg read;

  reg [11:0] nextcolor;
assign color = nextcolor; 

localparam     title_posx = 105,
					title_posy = 80,
					sign_posx = 254,
					sign_posy = 280; 
	localparam[9:0] width = 380;
   localparam[8:0] height = 122;
	 
	localparam[9:0] width2 = 380;
   localparam[8:0] height2 = 143;
	
					
	 assign is_display[0] = (x >=title_posx & x < title_posx + width & y >= title_posy  & y < title_posy + height);
    assign address[0] = (y - title_posy) * width + (x - title_posx);
	 assign is_display[1] = (x >=sign_posx & x < sign_posx + width2 & y >= sign_posy  & y < sign_posy + height2);
    assign address[1] = (y - sign_posy) * width2 + (x - sign_posx);
	
	  endd m0(.spo(data[0]),.a(address[0]));
	  sign m1(.spo(data[1]),.a(address[1]));
 
  always@(*)begin
	 if(is_display[0])nextcolor <= data[0];
	 else if(is_display[1])nextcolor <= data[1];
	 else nextcolor <= 11'h000;
	 end
endmodule
