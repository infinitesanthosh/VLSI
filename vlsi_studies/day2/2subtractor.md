Half Subtractor & Full Subtractor

Objective
Understand the logic design and Verilog implementation of Half Subtractor and Full Subtractor, which perform binary subtraction.  
These circuits are fundamental in ALUs, arithmetic processors, and VLSI datapaths.

---

1) Half Subtractor

Logic Function
Performs subtraction of two single-bit binary inputs (A - B).

| A | B | Difference (A⊕B) | Borrow (A'·B) |
|---|---|-------------------|---------------|
| 0 | 0 | 0                 | 0             |
| 0 | 1 | 1                 | 1             |
| 1 | 0 | 1                 | 0             |
| 1 | 1 | 0                 | 0             |

Boolean Equations
Difference= (A⊕B)
Borrow= (A'·B)

Verilog Code (Gate-Level)

module half_subtractor(
  input  a, b,
  output diff, borrow
);
  xor (diff, a, b);
  and (borrow, ~a, b);
endmodule


2) Full adder
| A | B | Bin | Diff | Bout |
| - | - | --- | ---- | ---- |
| 0 | 0 | 0   | 0    | 0    |
| 0 | 0 | 1   | 1    | 1    |
| 0 | 1 | 0   | 1    | 1    |
| 0 | 1 | 1   | 0    | 1    |
| 1 | 0 | 0   | 1    | 0    |
| 1 | 0 | 1   | 0    | 0    |
| 1 | 1 | 0   | 0    | 0    |
| 1 | 1 | 1   | 1    | 1    |

Boolean equation:
Difference=A⊕B⊕Bin
Borrow=(A′⋅B)+(A′⋅Bin)+(B⋅Bin)

Verilog code(Datacode level):
module full_subtractor(
  input  a, b, bin,
  output diff, borrow
);
  assign diff   = a ^ b ^ bin;
  // CORRECTED: (~a & b) for the A'·B term
  // CORRECTED: (~a & bin) for the A'·Bin term
  // CORRECTED: (b & bin) for the B·Bin term
  assign borrow = (~a & b) | (~a & bin) | (b & bin); 
endmodule
