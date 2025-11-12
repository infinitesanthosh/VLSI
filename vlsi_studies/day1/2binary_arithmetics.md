Chapter 2: Binary Arithmetic

Operations

Binary arithmetic uses only 0s and 1s.

|    Operation   |                  Rule                 |          Example          |
|----------------|---------------------------------------|---------------------------|
| Addition       | 0+0=0, 0+1=1, 1+0=1, 1+1=10           | 101₍₂₎ + 011₍₂₎ = 1000₍₂₎ |
| Subtraction    | 0−0=0, 1−0=1, 1−1=0, 0−1=1 (borrow 1) | 100₍₂₎ − 011₍₂₎ = 001₍₂₎  |
| Multiplication | Same as AND logic                     | 101 × 10 = 1010           |
| Division       | Same as decimal but with binary rules | 1010 ÷ 10 = 101           |

---

Complements:

1’s Complement  
→ Invert all bits (0→1, 1→0)  
Example: 1010 → 0101  

2’s Complement  
→ 1’s complement + 1  
Example: 1010 → 0101 + 1 = 0110  

---

Subtraction using 2’s Complement:

A = 1011 (11)
B = 0101 (5)
B(2’s comp) = 1011
A + B(2’s comp) = 10110
Ignore carry → 0110 (6)

---

Tyoes of complement:
                    1) Radix complement r ---> (r^n)-N
                    2) Diminished complement r-1 ---> {(r-1)^n}-N
1's and 2's complement for binary numbers.
9's and 10's complement for decimal numbers.
