Parity and Hamming Codes

Parity Bit
Used for error detection in data transmission.

| Type        |           Definition            |        Example       |
|-------------|---------------------------------|----------------------|
| Even Parity | Add 1 if total 1’s must be even | 1010 → add 0 → 10100 |
| Odd Parity  | Add 1 if total 1’s must be odd  | 1010 → add 1 → 10101 |

Receiver recalculates parity; if mismatch → error detected.

---

Limitations
Parity bit can detect single-bit error but cannot correct it.

---

Hamming Code
Used for error detection and correction.

Hamming(7,4)
- 4 data bits, 3 parity bits → total 7 bits  
- Parity bit positions: 1, 2, 4  

| Bit Position | 1  | 2  | 3  | 4  | 5  | 6  | 7  |
|--------------|----|----|----|----|----|----|----|
| Type         | P1 | P2 | D1 | P3 | D2 | D3 | D4 |

Parity equations
P1 = D1 ⊕ D2 ⊕ D4
P2 = D1 ⊕ D3 ⊕ D4
P3 = D2 ⊕ D3 ⊕ D4


Example:  
Data = 1011  
→ P1 = 1⊕0⊕1=0  
→ P2 = 1⊕1⊕1=1  
→ P3 = 0⊕1⊕1=0  
→ Final Code = 0 1 1 0 0 1 1 (P1,P2,D1,P3,D2,D3,D4)

---

Error Detection
At receiver, parity bits are checked; mismatch → error position = binary of error bits → flip it.

---

Hamming codes form the base for ECC (Error Correcting Code) in memory and communication VLSI systems.
They’re literally used in DRAM, SRAM, and Flash controller designs.
