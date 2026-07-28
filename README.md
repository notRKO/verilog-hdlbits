# Verilog HDLBits

Solutions to HDLBits exercises while learning digital design and RTL coding.

## About

The goal of this repository is to strengthen my understanding of **digital logic design** and **RTL coding** by solving progressively challenging HDLBits exercises.

Through these exercises, I am building a stronger foundation in both **combinational and sequential logic**, while becoming more comfortable with Verilog HDL and hardware-oriented thinking.

## Progress

**Problems Solved: 90**

## Topics Covered

- Basics of Verilog
- Verilog Vectors
- Modules and Module Hierarchy
- Combinational Logic
- Boolean Logic and K-Maps
- Multiplexers (MUXes)
- Always Blocks
- Case Statements
- Procedural Blocks
- Flip-Flops
- Registers
- Synchronous and Asynchronous Resets
- Sequential Logic
- Counters
- Byte-Enable Logic
- Circuit Analysis from Simulation Waveforms
- Reading and Interpreting Timing Waveforms

## Repository Structure

The repository is organized according to the HDLBits sections, with each solution file named after its corresponding question.

```text
00_Getting_Started/
01_Verilog_Language/
02_Circuits/
03_Verification_Reading_Simulations/
```

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

### `always @(negedge clk)`

> "Wait for the falling clock edge, then update the output."

Used when sequential logic is triggered by the negative edge of the clock.

### Synchronous Reset

A synchronous reset is checked only on the active clock edge.

```verilog
always @(posedge clk) begin
    if (reset)
        q <= 0;
    else
        q <= d;
end
```

### Asynchronous Reset

An asynchronous reset can change the output immediately when the reset signal changes.

```verilog
always @(posedge clk or posedge reset) begin
    if (reset)
        q <= 0;
    else
        q <= d;
end
```

### Indexed Vector Part Select

An indexed vector part select can be useful when selecting a fixed-width portion of a vector based on an index:

```verilog
assign out = in[sel*4 +: 4];
```

### Registers

A register is a collection of flip-flops used to store and hold binary data.

For example, an 8-bit register can be described as:

```verilog
always @(posedge clk) begin
    q <= d;
end
```

### Byte-Enable Logic

Byte-enable signals can control which portions of a register are updated on a given clock cycle.

For a 16-bit register:

```verilog
if (byteena[1])
    q[15:8] <= d[15:8];

if (byteena[0])
    q[7:0] <= d[7:0];
```

This allows individual bytes to be updated while the remaining bits retain their previous values.

### Circuit Analysis from Simulation Waveforms

Some HDLBits problems provide simulation waveforms instead of explicit circuit descriptions. These exercises require analysing the relationship between inputs and outputs and implementing the inferred combinational logic.

### Counters

Counters are sequential circuits that update their stored value on each clock edge.

A basic binary counter can be implemented as:

```verilog
always @(posedge clk) begin
    if (reset)
        q <= 0;
    else
        q <= q + 1;
end
```

A decade counter can limit the count to values from `0` through `9`:

```verilog
always @(posedge clk) begin
    if (reset)
        q <= 0;
    else if (q == 9)
        q <= 0;
    else
        q <= q + 1;
end
```