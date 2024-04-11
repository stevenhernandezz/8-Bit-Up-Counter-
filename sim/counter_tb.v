/***************************************************************************
***                                                                      ***
*** EE 526 L Experiment #6                 Steven Hernandez, Fall, 2023 ***
***                                                                      ***
*** Experiment #6 Counter_tb		                                  ***
***                                                                      ***
****************************************************************************
*** Filename: counter_tb.v          Created by Steven Hernandez, 10/20/23     ***
***                                                                      ***
****************************************************************************
*** This module is for a testbench to test my 8bit counter               ***  
****************************************************************************/

`timescale 1 ns / 1 ns

`define MONITOR_STR_1  "%d: CLOCK = %b, COUNT=%d, DATA=%d, RESET = %b, ENABLE = %b, LOAD= %b" 

module counter_tb();
	reg CLOCK, RESET, ENABLE, LOAD;    //registering input
	reg [7:0] DATA;
	wire [7:0] COUNT;
	
	counter UUT(.CLOCK(CLOCK), .RESET(RESET),.ENABLE(ENABLE),.LOAD(LOAD), .DATA(DATA),.COUNT(COUNT));
	always begin 
		CLOCK = 1'b0;
		forever begin 
		#10 CLOCK = 1'b1;
		#10 CLOCK = 1'b0; //20ns clock
	end 
	end

	initial begin 
		$monitor(`MONITOR_STR_1, $time, CLOCK, COUNT, DATA, RESET, ENABLE, LOAD);
	end	    //monitoring from main code 

	initial begin 
	$vcdpluson; 
	 #0 RESET = 1'b0; ENABLE = 1'b1; LOAD = 1'b0; DATA = 8'd0;
    #1 RESET = 1'b1;
    wait(COUNT == 8'd8); //for parallel load  240ns
        begin
        #10
             LOAD = 1'b1; DATA = 8'd240; //loading at 240
        #10
        #10 LOAD = 1'b0; DATA = 8'd0; //starting count
        end
    #500 $finish;
    end 
endmodule

