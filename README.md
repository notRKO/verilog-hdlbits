# Verilog HDLBits

Solutions to HDLBits exercises while learning digital design and RTL coding.

## About

The goal of this repository is to strengthen my understanding of **digital logic design** and **RTL coding** by solving progressively challenging HDLBits exercises.

Through these exercises, I am building a stronger foundation in both **combinational and sequential logic**, while becoming more comfortable with Verilog HDL and hardware-oriented thinking.

## Progress

**Problems Solved: 75**

## Topics Covered

- Basics of Verilog
- Vectors
- Modules
- Multiplexers (MUXes)
- Combinational Logic
- K-Maps and Boolean Logic Simplification
- Always Blocks
- Case Statements
- Flip-Flops
- Sequential Logic
- Counters

## Repository Structure

The repository is organized according to the HDLBits sections, with each solution file named after its corresponding question.

## Notes

Some of my key learnings so far:

### `assign`

> "This wire is always equal to this expression."

Used for continuous assignments and combinational logic.

### `always @(*)`

> "Whenever any input changes, recalculate the output."

Used to describe combinational logic using procedural blocks.

### `always @(posedge clk)`

> "Wait for the rising clock edge, then update the output."

Used to describe synchronous sequential logic such as flip-flops, registers, and counters.

### Indexed Vector Part Select

An indexed vector part select can be useful when selecting a fixed-width portion of a vector based on an index:

```verilog
assign out = in[sel*4 +: 4];