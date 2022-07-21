<div align="center">
  <h1> 30 Days Of Solidity: Multiple Inheritance</h1>
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

[<< Day 23](../Day%2023%20-%20Hierarchical%20Inheritance/readme.md) | [Day 25 >>](../Day%2025%20-%20Fallback%20and%20Receive%20Function/readme.md)

![Cover](./cover.png)

---

# 📔 Day 24

## Multiple Inheritance

In Multiple Inheritance, a single contract can be inherited from many contracts. A parent contract can have more than one child while a child contract can have more than one parent.

**Example**: In the below example, contract A is inherited by contract B, contract C is inheriting contract A, and contract B, thus demonstrating Multiple Inheritance.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Defining contract A
contract A {
    string internal x;

    function setA() external {
        x = "Multiple Inheritance";
    }
}

// Defining contract B
contract B {
    uint256 internal pow;

    function setB() external {
        uint256 a = 2;
        uint256 b = 20;
        pow = a**b;
    }
}

// Defining child contract C
// inheriting parent contract
// A and B
contract C is A, B {
    // Defining external function
    // to return state variable x
    function getStr() external returns (string memory) {
        return x;
    }

    // Defining external function
    // to return state variable pow
    function getPow() external returns (uint256) {
        return pow;
    }
}

// Defining calling contract
contract caller {
    // Creating object of contract C
    C contractC = new C();

    // Defining public function to
    // return values from functions
    // getStr and getPow
    function testInheritance() public returns (string memory, uint256) {
        contractC.setA();
        contractC.setB();
        return (contractC.getStr(), contractC.getPow());
    }
}
```

Output:

when we call the testInheritance function, the output is ("Multiple Inheritance", 1024).

---

[<< Day 23](../Day%2023%20-%20Hierarchical%20Inheritance/readme.md) | [Day 25 >>](../Day%2025%20-%20Fallback%20and%20Receive%20Function/readme.md)
