<div align="center">
  <h1> 30 Days Of Solidity: Require Statement</h1>
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

[<< Day 15](../Day%2015%20-%20Units/readme.md) | [Day 17 >>](../Day%2017%20-%20Assert%20Statement/readme.md)

![Day 16](./cover.png)

---

# 📔 Day 16

## Require Statement

The `require` statements declare prerequisites for running the function i.e. it declares the constraints which should be satisfied before executing the code. It accepts a single argument and returns a boolean value after evaluation, it also has a custom string message option. If false then exception is raised and execution is terminated. The unused gas is returned back to the caller and the state is reversed to its original state.

Following are some cases when require type of exception is triggered :

- When require() is called with the arguments which result as false.
- When a function called by a message does not end properly.
- When a contract is created using the new keyword and the process does not end properly.
- When a codeless contract is targeted to an external function.
- When ethers are sent to the contract using the public getter method.
- When .transfer() method fails.
  - When an assert is called with a condition that results in false.
  - When a zero-initialized variable of a function is called.
  - When a large or a negative value is converted to an enum.
  - When a value is divided or modulo by zero.
  - When accessing an array in an index which is too big or negative.

**Syntax:**

```solidity
require(condition,"Error Message");
```

Example:

```solidity
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract RequireStatement {
    function requireStatement(uint _input) public view returns(string memory){
        require(_input >= 0, "invalid uint8");
        require(_input <= 255, "invalid uint8");
        return "Input is Uint8";
}
```

Output:
when we pass input as 78 we get

```solidity
"0 : Input is Uint8"
```

when we pass input as 748 we get

```solidity
"0 : invalid uint8"
```

---

[<< Day 15](../Day%2015%20-%20Units/readme.md) | [Day 17 >>](../Day%2017%20-%20Assert%20Statement/readme.md)
