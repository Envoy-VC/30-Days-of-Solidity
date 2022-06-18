<div align="center">
  <h1> 100 Days Of Solidity: Constructors</h1>
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

[<< Day 19](../Day%20019%20-%20Function%20Modifiers/readme.md) | [Day 21 >>]()

![Cover](./cover.png)

---

# 📔 Day 20

A constructor is a special method in any object-oriented programming language which gets called whenever an object of a class is initialized. It is totally different in case of Solidity, Solidity provides a constructor declaration inside the smart contract and it invokes only once when the contract is deployed and is used to initialize the contract state. A default constructor is created by the compiler if there is no explicitly defined constructor

## Creating a constructor

A Constructor is defined using a constructor keyword without any function name followed by an access modifier. It’s an optional function which initializes state variables of the contract. A constructor can be either internal or public, an internal constructor marks contract as abstract. 

Syntax:
```solidity
constructor() <Access Modifier> {          
} 
```

Following are the key characteristics of a constructor.

- A contract can have only one constructor.

- A constructor code is executed once when a contract is created and it is used to initialize contract state.

- After a constructor code executed, the final code is deployed to blockchain. This code include public functions and code reachable through public functions. Constructor code or any internal method used only by constructor are not included in final code.
- A constructor can be either public or internal.

- A internal constructor marks the contract as abstract.

Example:
```solidity
pragma solidity ^0.8.7;

contract constructorExample {
    string str;

    // Creating a constructor to set value of 'str'
    constructor() public {
        str = "Example Constructor";
    }

    // Defining function to return the value of 'str'
    function getValue() public view returns (string memory) {
        return str;
    }
}
```

---