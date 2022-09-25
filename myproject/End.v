`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:28:08 01/01/2020 
// Design Name: 
// Module Name:    End 
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
module End(input wire clk,
	 input wire over,
	 input wire movement,
	 input w
	 input wire[9:0] x,
    input wire[8:0] y, 
    output wire[11:0] color,
	 output wire state
    );

localparam End_choice1 = 1'b0,
              
				  
	reg is_end;
	reg next_state;
	
	assign welcome_end = is_end;
	
	
	initial begin
	next_state <= 1'b0;
	is_end <= 0;
	end
	
	always @ (posedge clk) begin
        state <= next_state;
   end
	
	always@ (*) begin
		if(over == 1)begin 
			  next_state = state;
			  is_end = 0;
			  case (state)
					End_choice1: 
					begin
						 if (movement[4]||movement[5]) is_end = 1;
					end
			  endcase
		 end
    end
	 
reg  [9:0]numx;
reg  [8:0]numy;
reg [18:0] num;
wire [15:0] start_out;
reg read;
end E1(.clka(clk), .wea(0), .dina(0), .addra(num), .douta(start_out[15:0]));
	 always @(posedge clk) begin
		numx <= x - 10'd20;
		numy <= y - 10'd15;
		read <= (numx >= 0) && (numx < 600) && (numy >= 0) && (numy < 450);
		if(read) begin
			num <= numy * 600 + numx;
			color <= start_out[11: 0];
		end
		else begin
			color <= 11'h000;
		end
	end
	

endmodule
