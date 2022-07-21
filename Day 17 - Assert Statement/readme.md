<div align="center">
  <h1> 30 Days Of Solidity: Assert Statement</h1>
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

[<< Day 16](../Day%2016%20-%20Require%20Statement/readme.md) | [Day 18 >>](../Day%2018%20-%20Revert%20Statement/readme.md)

![Cover](./cover.png)

---

# 📔 Day 17

## Assert Statement

Its syntax is similar to the require statement. It returns a boolean value after the evaluation of the condition. Based on the return value either the program will continue its execution or it will throw an exception. Instead of returning the unused gas, the assert statement consumes the entire gas supply and the state is then reversed to the original state. Assert is used to check the current state and function conditions before the execution of the contract. Below are some cases with assert type exceptions :

- When an assert is called with a condition that results in false.
- When a zero-initialized variable of a function is called.
- When a large or a negative value is converted to an enum.
- When a value is divided or modulo by zero.
- When accessing an array in an index which is too big or negative.

**Syntax:**

```solidity
assert(condition);
```

Example:

```solidity
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract ErrorsAndChecks {
    bool result;

    function assertStatement(uint256 _num1, uint256 _num2) public {
        uint256 sum = _num1 + _num2;
        assert(sum <= 255);
        result = true;
    }

    function checkAssert() public view returns (string memory) {
        if (result == true) {
            return "No Overflow";
        } else {
            return "Overflow exist";
        }
    }
}
```

Output:
when we pass input as 78 and 84 and then run the checkAssert function we get the output as

```solidity
0 : string: No Overflow
```

as sum = 78 + 84 = 162 is less than or equal to 255.

when we pass input as 198 and 84 and then run the checkAssert function we get the output as

```solidity
0 : string: No Overflow
```

as sum = 198 + 84 = 282 is greater than 255.

---

[<< Day 16](../Day%2016%20-%20Require%20Statement/readme.md) | [Day 18 >>](../Day%2018%20-%20Revert%20Statement/readme.md)
