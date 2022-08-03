<div align="center">
  <h1> 30 Days Of Solidity: Polymorphism</h1>
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

[<< Day 29](../Day%2029%20-%20Assembly/readme.md)

![Cover](./cover.png)

---

# 📔 Day 30

Polymorphism is an ability to process data in more than one form. Like any other programming language Solidity also supports polymorphism. Solidity supports two types of polymorphism, Function Polymorphism, and Contract Polymorphism.

## Function Polymorphism

Function Polymorphism is also known as method overloading. In function polymorphism, multiple functions are declared having the same name within the same contract or inheriting contract. Functions differ on the basis of the number of parameters or parameter datatypes. Declaration of function cannot be overload by functions that differ only in return type.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Contract definition
contract methodOverloading {

    // Function to get value of the string variable
    function getValue(string memory _strin) public pure returns(string memory) {
        return _strin;
    }

    // function to get value of the unsigned integer variable
    function getValue(uint _num) public pure returns(uint) {
        return _num;
    }
}
```

---

## Contract Polymorphism

Contract polymorphism means using multiple contract instances interchangeably when they are related to each other by using inheritance. This helps in calling the child contract functions using the instance of the parent contract.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract parent{

    // Internal state variable
    uint internal sum;

    // Function to set the value of internal state variable sum
    function setValue(uint _num1, uint _num2) public {
        sum = _num1 + _num2;
    }

    // Function to return a value 10
    function getValue() virtual public view returns(uint) {
        return 10;
    }
}

// Defining child contract
contract child is parent{

    // Function getValue overloaded to return internal state
    // variable sum defined in the parent contract
    function getValue() override public view returns(uint) {
        return sum;
    }
}

// Defining calling contract
contract ContractPolymorphism {

    // Creating object
    parent pc = new child();

    // Function to set values of 2 unsigned integers
    function getInput(uint _num1, uint _num2) public {
        pc.setValue(_num1, _num2);
    }

    // Function to get value of internal state variable sum
    function getSum() public view returns(uint) {
        return pc.getValue();
    }
}
```

When we deploy `ContractPolymorphism` contract and call function `getInput` with values `52` and `78` and then call the `getSum` method we get

```solidity
0:
uint256: 130
```

---

[<< Day 29](../Day%2029%20-%20Assembly/readme.md)
