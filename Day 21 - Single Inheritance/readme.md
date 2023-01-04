<div align="center">
  <h1> 30 Days Of Solidity: Single Inheritance</h1>
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

[<< Day 20](../Day%2020%20-%20Constructors/readme.md) | [Day 22 >>](../Day%2022%20-%20Multi-level%20Inheritance/readme.md)

![Cover](./cover.png)

---

# 📔 Day 21

Inheritance is one of the most important features of the object-oriented programming language. It is a way of extending the functionality of a program, used to separate the code, reduces the dependency, and increases the re-usability of the existing code. Solidity supports inheritance between smart contracts, where multiple contracts can be inherited into a single contract. The contract from which other contracts inherit features is known as a base contract, while the contract which inherits the features is called a derived contract. Simply, they are referred to as parent-child contracts. The scope of inheritance in Solidity is limited to public and internal modifiers only. Some of the key highlights of Solidity are:

- A derived contract can access all non-private members including state variables and internal methods. But using this is not allowed.
- Function overriding is allowed provided function signature remains the same. In case of the difference of output parameters, the compilation will fail.
- We can call a super contract’s function using a super keyword or using a super contract name.
- In the case of multiple inheritances, function calls using super gives preference to most derived contracts.

Solidity provides different types of inheritance.

---

## Single Inheritance

In Single or single level inheritance the functions and variables of one base contract are inherited to only one derived contract.

**Example**: In the below example, the contract parent is inherited by the contract child, to demonstrate Single Inheritance.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Defining contract
contract parent {
    uint256 internal sum;

    function setValue() external {
        uint256 a = 10;
        uint256 b = 20;
        sum = a + b;
    }
}

// Defining child contract
contract child is parent {
    function getValue() external view returns (uint256) {
        return sum;
    }
}

// Defining calling contract
contract caller {
    child cc = new child();

    // Defining function to call setValue and getValue functions
    function testInheritance() public returns (uint256) {
        cc.setValue();
        return cc.getValue();
    }
}
```

Output:

when we call the testInheritance function, the output is 30.


### constructor of parent class

If parameters are expected in the constructor method of an inherited superclass, we need to specify this in the inheriting contract in solidity


```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Defining Parent contract
contract Human {
   string name;
   uint age;
   
   constructor(string memory _name, uint256 _age){
    name = _name;
    age = _age;
   }
   
}

// contract Gavin is Human("Gavin", 35) { ... }
// or..

// Defining child contract
contract Gavin is Human {
  
  constructor() Human("Gavin", 35){ 
    // Gavin constructor scope
  }
  
}
```

---

[<< Day 20](../Day%2020%20-%20Constructors/readme.md) | [Day 22 >>](../Day%2022%20-%20Multi-level%20Inheritance/readme.md)
