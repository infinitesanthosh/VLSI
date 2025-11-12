Operators, Data Types, and Gate Primitives

Data types:

| Type      | Used For                            | Example         |
| --------- | ----------------------------------- | --------------- |
| `wire`    | Physical connection                 | `wire a, b, y;` |
| `reg`     | Storage element in behavioral block | `reg y;`        |
| `integer` | Loop counters, testbenches          | `integer i;`    |


Operators:
| Category    | Examples        | Notes                                   |           |                           |
| ----------- | --------------- | --------------------------------------- | --------- | ------------------------- |
| Arithmetic  | `+ - * / %`     | Synthesizable only if hardware supports |           |                           |
| Relational  | `< <= > >=`     | Output is 1 bit                         |           |                           |
| Equality    | `== != === !==` | `===` checks X/Z too                    |           |                           |
| Logical     | `&&             |                                         | !`        | Boolean operations        |
| Bitwise     | `&              | ^ ~`                                    | Bit-level |                           |
| Reduction   | `&              | ^ ~& ~                                  | ~^`       | Reduces all bits to 1 bit |
| Shift       | `<< >> <<< >>>` | Arithmetic/logical shifts               |           |                           |
| Conditional | `?:`            | Ternary operator                        |           |                           |


Gate-level primitives:
  and (y, a, b);
  or  (y, a, b);
  not (y, a);
  nand(y, a, b);
  nor (y, a, b);
  xor (y, a, b);
  xnor(y, a, b);
Used in structural modeling
Fast for testing small circuits
Example:
        module xor_gate(output y, input a, b);
          xor (y, a, b);
        endmodule

I can do anythind through Christ who strengthens me. In my weakness God's strength is made perfect. Amen.
