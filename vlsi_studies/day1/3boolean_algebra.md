Boolean Algebra and Simplification

Concepts

- Boolean algebra deals with binary logic (0s and 1s).
- Developed by George Boole.
- Used to simplify logic expressions and minimize gates in circuits.

---

Basic Laws

|    Law       |           Expression             |        Example         |
|--------------|----------------------------------|------------------------|
| Identity     | A + 0 = A, A · 1 = A             | A + 0 = A              |
| Null         | A + 1 = 1, A · 0 = 0             | A · 0 = 0              |
| Idempotent   | A + A = A                        | A + A = A              |
| Complement   | A + A' = 1, A · A' = 0           | A + A' = 1             |
| Commutative  | A + B = B + A                    | A · B = B · A          |
| Associative  | (A + B) + C = A + (B + C)        | Same for AND           |
| Distributive | A(B + C) = AB + AC               | Works same as algebra  |
| De Morgan’s  | (AB)’ = A’ + B’, (A + B)’ = A’B’ | Used in simplification |

---

Canonical Forms

Sum of Products (SOP)
Expression = OR of AND terms  
Example: F(A,B,C) = A'B'C + AB'C' + ABC  

Product of Sums (POS)
Expression = AND of OR terms  
Example: F(A,B,C) = (A + B + C)(A' + B' + C)

--- 
→ **F = B**

---

## 🧠 Reflection
Boolean simplification reduces gate count and power consumption — crucial in digital design and VLSI optimization.
