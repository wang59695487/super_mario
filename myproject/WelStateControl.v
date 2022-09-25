`timescale 1ns / 1ps
//欢迎界面的控制
module WelStateControl(
	 input wire clk,
	 input wire start,
	 input wire [5:0] movement,
    output reg [1:0] state,
	 output reg welcome_end
    );
	
	localparam Welcome_choice1 = 2'b00,
              Welcome_choice2 = 2'b01,
              Acknowledge1   =   2'b10,
				  Acknowledge2   =   2'b11;
				  
	reg is_end;
	reg [1:0] next_state;
	
	 
	
	
	initial begin
	next_state <= 2'b00;
	is_end <= 0;
	end
	
	always @ (posedge clk) begin
        state <= next_state;
		  welcome_end <= is_end;
   end
	
	always@ (*) begin
		if(start == 1)begin 
			  next_state = state;
			  is_end  = welcome_end;
			  case (state)
					Welcome_choice1: 
					begin
						 if (movement[4]) is_end = 1;
						 else if(movement[3]) next_state = Welcome_choice2; 
					end
					Welcome_choice2:
					begin
						 if (movement[4]) is_end = 1;//暂时没有next_state = Acknowledge;
						 else if (movement[0]) next_state = Welcome_choice1;
					end
					Acknowledge1: 
					begin
						 if (movement[4]) is_end = 1;
					end
					Acknowledge2: 
					begin
						 if (movement[5]) is_end = 1;
					end
			  endcase
		 end
		 if(start != 1)begin
		 next_state =2'b00;
		 is_end=0;
		 end
    end
	 
endmodule
