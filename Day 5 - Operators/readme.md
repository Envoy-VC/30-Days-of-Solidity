<div align="center">
  <h1> 100 Days Of Solidity: Operators</h1>
  <a class="header-badge" target="_blank" href="https://dev.to/envoy_">
  <img src="https://img.shields.io/badge/dev.to-0A0A0A?style=for-the-badge&logo=devdotto&logoColor=white">
  </a>
  <a class="header-badge" target="_blank" href="https://twitter.com/Envoy_1084">
  <img alt="Twitter Follow" src="https://img.shields.io/twitter/follow/Envoy_1084?style=social">
  </a>

<sub>Author:
<a href="https://dev.to/envoy_" target="_blank">Vedant Chainani</a><br>
<small> June, 2022</small>
</sub>
</div>

[<< Day 4](../Day%204%20-%20Variables%20and%20Scopes/readme.md) | [Day 6 >>](../Day%206%20-%20Types/readme.md)

![Day X](./cover.png)

---

# 📔 Day 5


# Operators

Solidity supports the following types of operators.

- Arithmetic Operators
- Comparison Operators
- Logical (or Relational) Operators
- Assignment Operators
- Conditional (or ternary) Operators

---

## Arithmetic Operators

| Operator | Description | Example |
| -------- | ----------- | ------- |
|  + (Addition) |Adds two operands  | A + B will give 30 |
| - (Subtraction)  | Subtracts the second operand from the first | A - B will give -10 |
|  *  (Multiplication) | Multiply both operands | A * B will give 200 |
| / (Division) | Divide the numerator by the denominator  | B / A will give 2 |
| % (Modulus) | Outputs the remainder of an integer division | B % A will give 0 |
| ++ (Increment) | Increases an integer value by one | A++ will give 11 |
| -- (Decrement) | Decreases an integer value by one |  A-- will give 9 |

---

## Comparison Operators


| Operator | Description | Example |
| -------- | ----------- | ------- |
| = = (Equal) | Checks if the value of two operands are equal or not, if yes, then the condition becomes true. | (A == B) is not true. |
| != (Not Equal) | Checks if the value of two operands are equal or not, if the values are not equal, then the condition becomes true. | (A != B) is true. |
| > (Greater than) | Checks if the value of the left operand is greater than the value of the right operand, if yes, then the condition becomes true. |(A > B) is not true.  |
| < (Less than) | Checks if the value of the left operand is less than the value of the right operand, if yes, then the condition becomes true. | (A < B) is true. |
| >= (Greater than or Equal to) | Checks if the value of the left operand is greater than or equal to the value of the right operand, if yes, then the condition becomes true. | (A >= B) is not true. |
| <= (Less than or Equal to) | Checks if the value of the left operand is less than or equal to the value of the right operand, if yes, then the condition becomes true. | (A <= B) is true. |

---

## Logical (or Relational) Operators

Assume variable A holds 10 and variable B holds 20, then −

| Operator | Description | Example |
| -------- | ----------- | ------- |
| && (Logical AND) | If both the operands are non-zero, then the condition becomes true. | (A && B) is true. |
| \|\| (Logical OR) | If any of the two operands are non-zero, then the condition becomes true. | (A || B) is true. |
| ! (Logical NOT) | Reverses the logical state of its operand. If a condition is true, then the Logical NOT operator will make it false. |  ! (A && B) is false. |

---

## Bitwise Operators

Assume variable A holds 2 and variable B holds 3, then −

| Operator | Description | Example |
| -------- | ----------- | ------- |
| & (Bitwise AND) | It performs a Boolean AND operation on each bit of its integer arguments. | It performs a Boolean AND operation on each bit of its integer arguments. |
| \| (BitWise OR) |It performs a Boolean OR operation on each bit of its integer arguments.  |(A \| B) is 3.  |
| ^ (Bitwise XOR) | It performs a Boolean exclusive OR operation on each bit of its integer arguments. Exclusive OR means that either operand one is true or operand two is true, but not both. | (A ^ B) is 1. |
|~ (Bitwise Not)  | It is a unary operator and operates by reversing all the bits in the operand. | (~B) is -4. |
| << (Left Shift) | It moves all the bits in its first operand to the left by the number of places specified in the second operand. New bits are filled with zeros. Shifting a value left by one position is equivalent to multiplying it by 2, shifting two positions is equivalent to multiplying by 4, and so on. | (A << 1) is 4. |
| >> (Right Shift) | Binary Right Shift Operator. The left operand's value is moved right by the number of bits specified by the right operand. | (A >> 1) is 1. |
| >>> (Right shift with Zero) | This operator is just like the >> operator, except that the bits shifted in on the left are always zero. | (A >>> 1) is 1. |

---

## Assignment Operators

| Operator | Description | Example |
| -------- | ----------- | ------- |
| = (Simple Assignment ) | Assigns values from the right side operand to the left side operand | C = A + B will assign the value of A + B into C |
| += (Add and Assignment) | It adds the right operand to the left operand and assigns the result to the left operand. | C += A is equivalent to C = C + A |
| −= (Subtract and Assignment) |It subtracts the right operand from the left operand and assigns the result to the left operand.  | C -= A is equivalent to C = C - A |
| *= (Multiply and Assignment) |It multiplies the right operand with the left operand and assigns the result to the left operand.  | C *= A is equivalent to C = C * A |
| /= (Divide and Assignment) | It divides the left operand with the right operand and assigns the result to the left operand. | C /= A is equivalent to C = C / A |
| %= (Modules and Assignment) | It takes modulus using two operands and assigns the result to the left operand. | C %= A is equivalent to C = C % A |


**Note** − Same logic applies to Bitwise operators so they will become like <<=, >>=, >>=, &=, |= and ^=

---

## Conditional Operator (? :)

The conditional operator first evaluates an expression for a true or false value and then executes one of the two given statements depending upon the result of the evaluation.

| Operator | Description |
| -------- | ----------- | 
| ? : (Conditional ) | If Condition is true? Then value X : Otherwise value Y |

---