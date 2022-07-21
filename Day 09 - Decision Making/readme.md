<div align="center">
  <h1> 30 Days Of Solidity: Decision Making</h1>
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

[<< Day 8](../Day%2008%20-%20Loops/readme.md) | [Day 10 >>](../Day%2010%20-%20Arrays/readme.md)

![Day 9](./cover.png)

---

# 📔 Day 9

## If Statement

This is the most basic conditional statement. It is used to make a decision whether the statement or block of code will be executed or not. If the condition is true the statements will be executed, else no statement will execute.

**Syntax** -

```solidity
if (expression) {
    Statement(s) to be executed if expression is true
}
```

Example -

```solidity
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract MyContract {
    uint i = 4;
    function ifStatement() public returns(bool) {
        if(i>5) {
            return true;
        }
    }
}
```

Output -

```solidity
"0": "bool: false"
```

---

## If - Else Statements

This statement is the next form of conditional statement which allows the program to execute in a more controlled way. Here if the condition is true then the, if block is executed while if the condition is false then else block, is executed.

![If - Else Statements](../assets/if-else.jpg)

**Syntax** -

```solidity
if (expression) {
    Statement(s) to be executed if expression is true
} else {
    Statement(s) to be executed if expression is false
}
```

Example -

```solidity
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract MyContract {
    uint i = 4;

    function ifElseStatement() public returns (string memory) {
        if (i > 5) {
            return "i is greater than 5";
        } else {
            return "i is less than 5";
        }
    }
}
```

Output -

```solidity
"0": "string: i is less than 5"
```

---

## If-Else If-Else Statement

This is a modified form of if…else conditional statement which is used to make a decision among several options. The statements start execution from if statement and as the condition of any if block is true the block of code associated with it is executed and rest if are skipped, and if none of the condition is true then else block executes.

**Syntax** -

```solidity
if (expression 1) {
    Statement(s) to be executed if expression 1 is true
} else if (expression 2) {
    Statement(s) to be executed if expression 2 is true
} else if (expression 3) {
    Statement(s) to be executed if expression 3 is true
} else {
    Statement(s) to be executed if no expression is true
}
```

Example -

```solidity
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract MyContract {
    uint i = 4;

    function ifElseIfElseStatement() public returns (string memory) {
        if (i < 2) {
            return "i is less than 2";
        } else if (i >= 2 && i < 8) {
            return "i is between 2 and 8";
        } else {
            return "i is greater than 8";
        }
    }
}

```

Output -

```solidity
"0": "string: i is between 2 and 8"
```

---

[<< Day 8](../Day%2008%20-%20Loops/readme.md) | [Day 10 >>](../Day%2010%20-%20Arrays/readme.md)
