# Lab 1 - Verilog

## Lab 1 - 1: 4-Bit Binary-To-Gray-Code Converter

### Design Specification

[Source Code](./lab1_1/)

Input: a, b, c, d

Output: w, x, y, z

**Block Diagram**

![]()


### Design Implementation

```verilog
assign w = a;
assign x = a ^ b;
assign y = b ^ c;
assign z = c ^ d;
```

### Reference

- [Java T Point - Binary to Gray code conversion](https://www.javatpoint.com/)
- [Wikipedia - Two's complement](https://en.wikipedia.org/wiki/Two%27s_complement)

## Lab 1 - 2: 4-Bit Adder-Subtractor

[Source Code](./lab1_2/)

### Design Specification

**Full Adder**

Input: a, b, c_in

Output: sum, c_out

**4-Bit Adder-Subtractor**

Input [3:0]a, [3:0]b, m

Output [3:0]s, v

**Block Diagram**

![]()

### Design Implementation

**Full Adder**

For 1-bit addition, it would yield 0 when 1 + 1 or 0 + 0. Otherwise, it would yield 1. As a result, we can use XOR gate to implement the addition operation $sum = a \oplus b \oplus c_{in}$ like the following code.

```verilog
assign sum = (a ^ b) ^ c_in;
```

As for the carry bit, 

```verilog
assign c_out = (a & b) | c_in & (a ^ b);
```

**4-Bit Adder-Subtractor**

### Reference

- [GEEKSFORGEEKS - 4-bit binary Adder-Subtractor](https://www.geeksforgeeks.org/4-bit-binary-adder-subtractor/amp/)
- [Electronics Tutorials - Binary Adder](https://www.electronics-tutorials.ws/combination/comb_7.html)

## Lab 1 - 3: 3-Bit Signed Binary Max

[Source Code](./lab1_3/)
