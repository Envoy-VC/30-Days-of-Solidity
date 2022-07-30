<div align="center">
  <h1> 30 Days Of Solidity: Libraries</h1>
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

[<< Day 26](../Day%2026%20-%20Events%20and%20Hashing/readme.md) | [Day 28 >>](../Day%2028%20-%20Abstract%20Contract/readme.md)

![Cover](./cover.png)

---

# 📔 Day 27

A `library` in Solidity is a different type of smart contract that contains reusable code. Once deployed on the blockchain (only once), it is assigned a specific address and its properties / methods can be reused many times by other contracts in the Ethereum network.

They enable to develop in a more modular way. Sometimes, it is helpful to think of a library as a **singleton** in the EVM, a piece of code that can be called from any contract without the need to deploy it again.

---

### Benefits

- `Usability` - Functions in a library can be used by many contracts. If you have many contracts that have some common code, then you can deploy that common code as a library.
- `Economical` - Common code deployed as a library will conserve gas because gas also depends on the size of the contract. Because inheritance in Solidity involves duplicating code, using a base contract rather than a library to separate the common code won't conserve gas.
- `Good add-ons` - Data types can have member functions added using Solidity libraries. To execute complex math operations on numbers, for instance, consider libraries similar to the standard libraries or packages that you can use in other programming languages.

---

### Limitations

- They do not have any storage (so can’t have non-constant state variables)
- They can’t hold ethers (so can’t have a fallback function)
- Doesn’t allow payable functions (since they can’t hold ethers)
- Cannot inherit nor be inherited
- Can’t be destroyed (no `selfdestruct()` function since version 0.4.20)

---

### How to define a library

Instead of using the customary contract keyword used for typical smart contracts, you use the keyword library to establish a library contract.

```solidity
pragma solidity ^0.5.0;
library libraryName {
    // struct, enum or constant variable declaration
    // function definition with body
}
```

As libraries contracts do not have storage. Therefore, they can’t hold state variables (state variables that are non-constant). However, libraries can still implement some data type :

- struct and enum : these are user-defined variables.
- any other variable defined as constant (immutable), since constant variables are stored in the contract’s bytecode, not in storage.

Let's begin building a library of math operations.

```solidity
pragma solidity ^0.8.7;
library MathLib {

    struct MathConstant {
        uint Pi;             // π (Pi) ≈ 3.1415926535...
        uint Phi;            // Golden ratio ≈ 1.6180339887...
        uint Tau;            // Tau (2pi) ≈ 6.283185...
        uint Omega;          // Ω (Omega) ≈ 0.5671432904...
        uint ImaginaryUnit;  // i (Imaginary Unit) = √–1
        uint EulerNb;        // Euler number ≈ 2.7182818284590452...
        uint PythagoraConst; // Pythagora constant (√2) ≈ 1.41421...
        uint TheodorusConst; // Theodorus constant (√3) ≈ 1.73205...
    }

    function multiply(uint a, uint b) public view returns (uint, address) {
        return (a * b, address(this));
    }

}
```

> [SafeMath](https://docs.openzeppelin.org/docs/math_safemath) library available in open zeppelin smart contracts collection is a popular solidity library that is used to protect from [overflow](https://ethereumdev.io/safemath-protect-overflows/).

---

### How to deploy libraries

- `Embedded Library`: The EVM merely embeds the library within the contract if a smart contract is using a library that only has internal functionalities. JUMP statement is used in place of a delegate call to call a function (normal method call). In this situation, deploying the library separately is not necessary.

- `Linked Library` : On the other hand, if a library has external or public functions, it must be deployed. A distinct address in the blockchain will be created by the library's deployment. This address must be connected to the calling contract.

---

### How to use a Library in a smart contract?

#### **Step 1 : Importing the library**

Under the pragma , just specify the following statement :

```solidity
import LibraryName from “./library-file.sol”;

// For importing multiple libraries
import {Library1, Library3} from "./library-file.sol";

```

#### **Step 2 : Using the Library**

To use a library within a smart contract, we use the syntax using

```
LibraryName for Type
```

This directive can be use to attach library functions (from the library LibraryName) to any type (Type).

```
pragma solidity ^0.8.7;
contract MyContract {

    using MathLib for uint;

    uint256 a = 10;
    uint256 b= 10;
    uint256 c = a.add(b);

}
library MathLib {

    function add(uint256 a, uint256 b) external pure returns (uint256) {
        uint256 c = a + b;
        assert(c >= a);
        return c;
    }

}
```

---

[<< Day 26](../Day%2026%20-%20Events%20and%20Hashing/readme.md) | [Day 28 >>](../Day%2028%20-%20Abstract%20Contract/readme.md)
