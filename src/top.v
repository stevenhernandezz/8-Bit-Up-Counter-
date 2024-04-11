/***************************************************************************
***                                                                      ***
*** EE 526 L Experiment #6                 Steven Hernandez, Fall, 2023 ***
***                                                                      ***
*** Experiment #6 Top		                                  ***
***                                                                      ***
****************************************************************************
*** Filename: Top.v          Created by Steven Hernandez, 10/20/23     ***
***                                                                      ***
****************************************************************************
*** This module is for a top-level design unti                           ***
****************************************************************************/

`timescale 1 ns/ 1 ns

module top(CLOCK, RESET, ENABLE, LOAD, DATA, COUNT);
   output [7:0] COUNT;
	input [7:0] DATA;
	input CLOCK, RESET, ENABLE, LOAD;    //inputs 

	wire AASD_RESET;
	
	AASD a1( .CLOCK(CLOCK), .RESET(RESET), .AASD_RESET(AASD_RESET));  //instantiations 

   counter c1(.CLOCK(CLOCK), .RESET(AASD_RESET), .ENABLE(ENABLE), .LOAD(LOAD), .DATA(DATA), .COUNT(COUNT));
 

endmodule 
