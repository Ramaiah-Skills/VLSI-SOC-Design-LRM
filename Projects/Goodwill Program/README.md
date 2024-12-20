# Calculator with memory on MAX 10 FPGA (DE10-Lite)

This repository contains the Verilog implementation of a basic calculator module for the MAX 10 DE10-Lite FPGA board (MAX 10 10M50DAF484C7G). The design supports basic arithmetic operations and outputs results using a 7-segment display. The functionality has been implemented and verified on hardware.

## Features
- *Arithmetic Operations:*
  - Addition
  - Subtraction
  - Multiplication
  - Division
- *Inputs:*
  - Two 3-bit numbers (a and b)
  - Operation selector (op)
  - Address selector (addr)
  - Reset (rst)
  - Load (load)
- *Outputs:*
  - 7-segment display showing the result in decimal format.

## Hardware Setup
- *FPGA Board:* Intel MAX 10 DE10-Lite (10M50DAF484C7G)
- *7-Segment Displays:* Two 7-segment displays onboard.
- *Inputs:* Configured via switches or push buttons on the DE10-Lite board.
- *Outputs:* Results displayed on the 7-segment displays.

## File Structure
- calculator.v: Main Verilog module implementing the calculator functionality.
- seven_segment_display.v: Module for driving the 7-segment display.
- calculator_tb.v: Testbench for simulation and verification.
- README.md: Documentation for the project.

## Functional Description
### Inputs:
- a [2:0]: First operand (3-bit).
- b [2:0]: Second operand (3-bit).
- op [1:0]: Operation selector:
  - 00: Addition
  - 01: Subtraction
  - 10: Multiplication
  - 11: Division
- addr: Address selector for displaying stored results.
- rst: Synchronous reset.
- load: Load signal to perform operation and update results.

### Outputs:
- sev_seg_1 [6:0]: First digit of the result on the 7-segment display.
- sev_seg_2 [6:0]: Second digit of the result on the 7-segment display.

## Simulation
Simulation was performed using the provided calculator_tb.v testbench. The testbench validates the functionality of all operations and displays the content of the internal RAM (test_ram).

## Hardware Implementation
### Steps:
1. *Synthesize Design:*
   - Open the design in Quartus Prime software.
   - Compile the Verilog files and check for errors.
2. *Pin Assignment:*
   - Use the constraints.qsf file or manually assign the input and output pins according to the DE10-Lite pinout.
3. *Program the FPGA:*
   - Use the Quartus Programmer to load the compiled .sof file onto the FPGA board.
4. *Verify Outputs:*
   - Use the onboard switches to provide input values.
   - Observe the results on the 7-segment display.

## Results
The functionality of the calculator was successfully verified on the MAX 10 DE10-Lite FPGA board. All operations produced correct results and were displayed accurately on the 7-segment displays.

## Future Improvements
- Support for larger bit-width operands.
- Additional arithmetic operations (e.g., modulus).
- Input and result display using external peripherals (e.g., an LCD or UART interface).

## Tools Used
- *FPGA Board:* Intel MAX 10 DE10-Lite (10M50DAF484C7G)
- *Development Environment:* Quartus Prime Lite Edition
- *Simulation Tools:* ModelSim

## How to Run
1. Clone this repository:
   
   git clone <repository_url>
   
2. Open the project in Quartus Prime.
3. Assign pins as per the constraints file or the DE10-Lite user manual.
4. Compile and program the FPGA.
5. Use switches to provide input values and verify results on the 7-segment display.

## Author
[Rohan K](https://github.com/vaibruce)  
(Trainee at Ramaiah Skill Academy)
