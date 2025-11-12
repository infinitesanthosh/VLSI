Signed and Unsigned Numbers

Concepts

In digital systems, numbers can be unsigned (only positive) or signed (positive & negative).

---

Unsigned Numbers
- Represent only positive values.  
- Example (8 bits):  
  - Minimum: 0000 0000 → 0  
  - Maximum: 1111 1111 → 255  

Formula:  
Value = Σ (bit × 2ⁿ)**  

---

Signed Number Representations

| Method             |                 Description                           |  Range (8-bit example)   |
|--------------------|-------------- ----------------------------------------|--------------------------|
|   Sign-Magnitude   | MSB = Sign (0→+, 1→−); rest magnitude bits            | −127 to +127             |
|   1’s Complement   | Positive → same as binary, Negative → invert all bits | −127 to +127 (two zeros) |
|   2’s Complement   | Positive → same, Negative → invert all bits + 1       | −128 to +127             |
|       Excess-128   | Bias added (used in floating-point exponent)          | 0–255 mapped to −128→+127|

---

Examples

1. Represent −5 in 8-bit sign magnitude
   → 0000 0101 → 1000 0101  

2. Represent −5 in 1’s complement
   → 0000 0101 → 1111 1010  

3. Represent −5 in 2’s complement 
   → 0000 0101 → 1111 1011  

---

Addition Rules (2’s Complement)
1. Add both numbers normally.  
2. Ignore carry out of MSB.  
3. Overflow if sign of operands ≠ sign of result. 


---

2’s complement arithmetic is the backbone of CPU and ALU design.  
All processors (and Verilog simulators) use it for signed number calculations.
