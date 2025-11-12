Chapter 6: BCD, Excess-3 and Gray Codes

1️⃣ Binary Coded Decimal (BCD)
- Each decimal digit represented by its **4-bit binary equivalent.  
- Example: 59₁₀ = 0101 1001 (in BCD)  
- Common form: 8421 BCD

        ➕ BCD Addition
        - If result > 9, add 6 (0110) to correct.  
        Example:
                0101 (5)
                1001 (9)
              = 1110 → invalid
              + 0110 → 
              = 1 0100 → carry + correction
              → Result = 0001 0100 (14)

---

2️⃣ Excess-3 Code
- Non-weighted code used in digital displays.
- Derived by adding 3 to each BCD digit.
- Example:  
  5 → 0101 + 0011 = 1000  
  Table:  
  | Decimal | BCD  | Excess-3 |
  |---------|------|----------|
  | 0       | 0000 | 0011     |
  | 1       | 0001 | 0100     |
  | 9       | 1001 | 1100     |

---

3️⃣ Gray Code
- Successive codes differ by only one bit (used to reduce switching errors).

Binary → Gray
G₀ = B₀  
Gᵢ = Bᵢ ⊕ Bᵢ₊₁  

Example:  
Binary 1011 → Gray = 1110  

Gray → Binary
Reverse process:  
B₀ = G₀  
Bᵢ = Bᵢ₋₁ ⊕ Gᵢ  

Example:  
Gray 1110 → Binary = 1011  

---

Applications
- BCD → Digital calculators, counters  
- Excess-3 → Error detection in display systems  
- Gray → Encoders, Analog-to-Digital converters (ADCs)  

---
Gray and Excess-3 codes are not just theoretical — they’re critical in hardware interfacing and VLSI ADC design, where single-bit transitions reduce noise and glitches.
