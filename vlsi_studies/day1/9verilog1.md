What is Verilog?

  Hardware Description Language (HDL) → used to model and simulate digital circuits before fabrication.
  Used in VLSI design flow → RTL design → synthesis → gate-level → physical design.
  IEEE 1364 standard (SystemVerilog = extension).

Design Levels

  Behavioral → Algorithmic (uses always, if, case, etc.)
  Dataflow → Equation-based (assign statements)
  Gate-level → Built-in primitive gates (AND, OR, NAND, etc.)
  Structural → Module interconnection (hierarchical design).

Basic Structure of a Module:
  module and_gate (output y, input a, b);
  assign y = a & b;
  endmodule
  
Explanation
  module / endmodule → boundaries
  input, output → ports
  assign → continuous assignment
  & → bitwise AND operator

Simulation Flow

  Write design (.v)
  Write testbench
  Compile + simulate using Icarus Verilog or Vivado
  View waveform in GTKWave
