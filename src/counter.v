/***************************************************************************
***                                                                      ***
*** EE 526 L Experiment #6                 Steven Hernandez, Fall, 2023 ***
***                                                                      ***
*** Experiment #6 Counter		                                  ***
***                                                                      ***
****************************************************************************
*** Filename: Counter.v          Created by Steven Hernandez, 10/20/23     ***
***                                                                      ***
****************************************************************************
*** This module is for an 8-bit up counter                              ***
****************************************************************************/

`timescale 1 ns/ 1ns
module counter(CLOCK, RESET, ENABLE, LOAD, COUNT, DATA);
	output reg [7:0] COUNT;
	input [7:0] DATA;
	input CLOCK, RESET, ENABLE, LOAD;

always @(posedge CLOCK or negedge RESET)begin     
	if(!RESET) 
	COUNT <=8'd0;				//RESET, ACTIVE LOW INPUT 
	else if(ENABLE) begin    //ENABLE, ACTIVE HIGH INPUT 
		if(LOAD) 
		COUNT<=DATA;
		else begin
			COUNT<=COUNT+1; //incrementing
      end
     end
     else 
      COUNT<= COUNT;  //assigning count back 
		end
endmodule
