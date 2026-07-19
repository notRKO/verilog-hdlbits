# Verilog HDLBits

Solutions to HDLBits exercises while learning digital design.

## About

The goal of this repository is to strengthen my understanding of digital logic design and RTL coding by solving progressively challenging HDLBits exercises.

## Progress

**Problems Solved:** 46

**Topics Covered**
- Basics of Verilog
- Vectors
- Modules
- Multiplexers
- Combinational Logic
- Always Blocks
- Case Statements

## Repository Structure

The repository is organized according to the HDLBits sections, with each solution file named after its corresponding question.

## Notes

Some of my key learnings so far:

- `assign` → "This wire is always equal to this expression."
- `always @(*)` → "Whenever any input changes, recalculate the output."
- `always @(posedge clk)` → "Wait for the rising clock edge, then update the output."
-  Alternatively, "indexed vector part select" works better, but has an unfamiliar syntax:
   assign out = in[sel*4 +: 4];	
   Select starting at index "sel*4", then select a total width of 4 bits with increasing (+:) index number.
   assign out = in[sel*4+3 -: 4];	
   Select starting at index "sel*4+3", then select a total width of 4 bits with decreasing (-:) index number.
   Note: The width (4 in this case) must be constant.