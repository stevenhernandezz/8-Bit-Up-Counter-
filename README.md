# 8-Bit-Up-Counter-
 This project focuses on an 8-bit up Counter by creating a reset synchronizer AASD type for reset signal.
 
## Description 
 The 8-bit up counter has an 8-bit input, a clock, reset, enable, load, and an output which is an 8-bit count. 
  - I modeled the reset as an asynchronous, active low input.
  - I modeled the enable as a synchronous, active high input. When asserted, the count is incremented or loaded with new data (if LOAD is high). If ENABLE is not asserted, the counter will hold its value. The counter does not load new data if it is not enabled
  - I modeled the LOAD as a synchronous, active high input. When asserted, the value on the data pins is loaded into the counter after the positive edge of the clock if the counter is enabled.
  - When LOAD is low, ENABLE is high and RST is high, the counter advances on the positive edge of the clock.
  - I created a module for the asynchronous assert, synchronous de-assert function of reset synchronizer as described in the figure below
  - I instantiated the two design modules in a top-level design unit. The AASD circuit should be at the same level as the counter, not embedded in it.
  - Tested the circuit by creating a testbench for the top level design.


## Dependencies
### Software
* https://mobaxterm.mobatek.net/

### Author
* Steven Hernandez
  - www.linkedin.com/in/steven-hernandez-a55a11300
  - https://github.com/stevenhernandezz
