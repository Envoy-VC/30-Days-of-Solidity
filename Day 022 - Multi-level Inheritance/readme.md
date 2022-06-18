<div align="center">
  <h1> 100 Days Of Solidity: Multi-level Inheritance</h1>
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

[<< Day 21](../Day%20021%20-%20Single%20Inheritance/readme.md) | [Day 23 >>](../Day%20023%20-%20Hierarchical%20Inheritance/readme.md)

![Cover](./cover.png)

---

# 📔 Day 22

##  Multi-level Inheritance

It is very similar to single inheritance, but the difference is that it has levels of the relationship between the parent and the child. The child contract derived from a parent also acts as a parent for the contract which is derived from it.

**Example**: In the below example, contract A is inherited by contract B, contract B is inherited by contract C, to demonstrate Multi-level Inheritance.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Defining parent contract A
contract A {
    string internal x;
    string a = "Multi";
    string b = "Level";

    // Defining external function to return concatenated string
    function getA() external {
        x = string(abi.encodePacked(a, b));
    }
}

// Defining child contract B inheriting parent contract A
contract B is A {
    string public y;
    string c = "Inheritance";

    // Defining external function to return concatenated string
    function getB() external payable returns (string memory) {
        y = string(abi.encodePacked(x, c));
    }
}

// Defining child contract C inheriting parent contract A
contract C is B {
    function getC() external view returns (string memory) {
        return y;
    }
}

// Defining calling contract
contract caller {
    // Creating object of child C
    C cc = new C();

    // Defining public function to return final concatenated string
    function testInheritance() public returns (string memory) {
        cc.getA();
        cc.getB();
        return cc.getC();
    }
}
```

Output:

when we call the testInheritance function, the output is "MultiLevelInheritance".

---

[<< Day 21](../Day%20021%20-%20Single%20Inheritance/readme.md) | [Day 23 >>](../Day%20023%20-%20Hierarchical%20Inheritance/readme.md)