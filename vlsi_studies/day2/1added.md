Half Adder & Full Adder

Understand the logic design and Verilog implementation of Half Adder and Full Adder, 
the basic building blocks of all arithmetic circuits (ALUs, Add/Subtract units) used in digital and VLSI systems.

---

1️1) Half Adder

Logic Function
Performs addition of two single-bit binary inputs.

| Input A  | Input B  | Sum (A⊕B) | Carry (A·B) |
|----------|----------|------------|-------------|
| 0        | 0        | 0          | 0           |
| 0        | 1        | 1          | 0           |
| 1        | 0        | 1          | 0           |
| 1        | 1        | 0          | 1           |

Boolean Equations
Sum= (A⊕B)
Carry= (A·B) 

Gate-Level Diagram
- Sum → XOR gate  
- Carry → AND gate

![Alt text for the Half Adder image](https://www.electronics-tutorial.net/wp-content/uploads/2015/09/HA.png)
---

Verilog Code (Gate-Level)

module half_adder(
  input  a, b,
  output sum, carry
);
  xor (sum, a, b);
  and (carry, a, b);
endmodule

Testbench:
module tb_half_adder;
  reg a, b;
  wire sum, carry;

  half_adder uut (a, b, sum, carry);

  initial begin
    $display("A B | SUM CARRY");
    $display("-------------");
    a=0; b=0; #10; $display("%b %b |  %b    %b", a,b,sum,carry);
    a=0; b=1; #10; $display("%b %b |  %b    %b", a,b,sum,carry);
    a=1; b=0; #10; $display("%b %b |  %b    %b", a,b,sum,carry);
    a=1; b=1; #10; $display("%b %b |  %b    %b", a,b,sum,carry);
    $finish;
  end
endmodule

2) Full adder:

| A | B | Cin | Sum | Carry |
| - | - | --- | --- | ----- |
| 0 | 0 | 0   | 0   | 0     |
| 0 | 0 | 1   | 1   | 0     |
| 0 | 1 | 0   | 1   | 0     |
| 0 | 1 | 1   | 0   | 1     |
| 1 | 0 | 0   | 1   | 0     |
| 1 | 0 | 1   | 0   | 1     |
| 1 | 1 | 0   | 0   | 1     |
| 1 | 1 | 1   | 1   | 1     |

Boolean equations:

Sum=A⊕B⊕Cin
Carry=(A⋅B)+(B⋅Cin)+(A⋅Cin)

Verilog code(Data flow):
module full_adder(
  input  a, b, cin,
  output sum, carry
);
  assign sum   = a ^ b ^ cin;
  assign carry = (a & b) | (b & cin) | (a & cin);
endmodule

module tb_full_adder;
  reg a, b, cin;
  wire sum, carry;

  full_adder uut (a, b, cin, sum, carry);

  initial begin
    $display("A B Cin | SUM CARRY");
    $display("-------------------");
    a=0; b=0; cin=0; #10; $display("%b %b  %b  |  %b    %b", a,b,cin,sum,carry);
    a=0; b=1; cin=1; #10; $display("%b %b  %b  |  %b    %b", a,b,cin,sum,carry);
    a=1; b=1; cin=0; #10; $display("%b %b  %b  |  %b    %b", a,b,cin,sum,carry);
    a=1; b=1; cin=1; #10; $display("%b %b  %b  |  %b    %b", a,b,cin,sum,carry);
    $finish;
  end
endmodule
