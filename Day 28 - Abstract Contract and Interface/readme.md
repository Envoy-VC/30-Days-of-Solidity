<div align="center">
  <h1> 30 Days Of Solidity: Abstract Contract and Interface</h1>
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

[<< Day 27](../Day%2027%20-%20Libraries/readme.md) | [Day 29 >>](../Day%2029%20-%20Assembly/readme.md)

![Cover](./cover.png)

---

# 📔 Day 28

## Abstract Contract

Abstract Contract is one which contains at least one function without any implementation. Such a contract is used as a base contract. Generally an abstract contract contains both implemented as well as abstract functions. Derived contract will implement the abstract function and use the existing functions as and when required.

Example-

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

abstract contract Calculator {
   function getResult() virtual public returns(uint);
}
contract Test is Calculator {
   function getResult() override public  pure returns(uint) {
      uint a = 1;
      uint b = 2;
      uint result = a + b;
      return result;
   }
}
```

---

## Interface

When it comes to smart contracts, interfaces are their skeleton or backbone. It defines the contract’s functionalities and how to trigger them.

This way, Dapps or other smart contracts can know how to interact with any smart contract implementing a specific interface since the interface is known.

The most relevant example is by far the popular [ERC20 token standard](https://ethereum.org/en/developers/docs/standards/tokens/erc-20/). This interface standard defines standard functions for a contract that represent a token. The Solidity code taken from [OpenZeppelin](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/IERC20.sol) explains pretty well what these functions are supposed to do.

There are so many ERC20 tokens out there! And all of them can be interacted with in the same way.

- want to know how many tokens X you own? Call the `balanceOf(...) `function.
- want to transfer some tokens X to someone? Call the `transfer(...) `function.

Knowing that a smart contract is based on a specific interface makes it easy:

- understand what the contract can do, and
- know how to interact with the contract.

It removes the need of understanding the complexity behind the actual functions themselves. In a nutshell, remember that:

> **Interface contracts do not focus on process or behaviour (how a function does a specific job).** > **But instead, focus on “what the contract can do”.**

Example for a Counter Interface `ICounter.sol`

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

interface ICounter {
    function decrement() external;
    function increment() external;
}
```

and the main contract `Counter.sol`

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "./ICounter.sol";

contract Counter is ICounter {
    uint private count;

    function increment() public virtual override {
        count += 1;
    }

    function decrement();() public virtual override {
        count -= 1;
    }
}
```

If the contract does not implement all functions (in other words, if some functions implementations are missing), it can only be used as an abstract contract and cannot be deployed directly.

The other contract that will derive from it will have to implement the functions missing the implementations.

All functions declared inside an interface are implicitly `virtual` . They are virtual by default, even if they do not include the virtual keyword in their definition inside the interface.

Any function that overrides them (= the actual function implementation) do not need the `override` keyword. This specificity was introduced in Solidity 0.8.8, as the Solidity docs state:

**Starting from Solidity 0.8.8, the override keyword is not required when overriding an interface function…**

However, this is not always the case. Exceptions exist.

**…except for the case where the function is defined in multiple bases.**

Another rule about these function implementations is that “it is not because a function overrides the function defined in an interface that it can automatically be overridden again in a future inherited contract”. This is only possible when the overriding function is marked virtual in turn.

Another misconception is to define functions definitions only for functions that are state changing. ❓

Functions part of an interface can also be view functions. In fac, the highly popular [IERC20 interface](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/IERC20.sol) defines two view functions: `totalSupply(...)` and `balanceOf(...)`.

---

[<< Day 27](../Day%2027%20-%20Libraries/readme.md) | [Day 29 >>](../Day%2029%20-%20Assembly/readme.md)
