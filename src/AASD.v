/***************************************************************************
***                                                                      ***
*** EE 526 L Experiment #6                 Steven Hernandez, Fall, 2023 ***
***                                                                      ***
*** Experiment #6 AASD		                                  ***
***                                                                      ***
****************************************************************************
*** Filename: AASD.v          Created by Steven Hernandez, 10/20/23     ***
***                                                                      ***
****************************************************************************
*** This module is for a AASD reset synchronizer                         ***  
*** This will be used for creating a reset signal                        ***
****************************************************************************/

`timescale 1 ns/ 1 ns
module AASD(CLOCK, RESET, AASD_RESET);
	output reg AASD_RESET;
	input RESET, CLOCK;
	reg Q;

always @(posedge CLOCK or negedge RESET)begin     //dff
	if(!RESET)begin
	Q<=1'b0;
	AASD_RESET<=1'b0;
	end
	else begin
	Q <= RESET;
	AASD_RESET <= Q;
	end
end
endmodule

