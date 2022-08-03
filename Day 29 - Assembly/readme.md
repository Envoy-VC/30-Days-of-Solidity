<div align="center">
  <h1> 30 Days Of Solidity: Assembly</h1>
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

[<< Day 28](../Day%2028%20-%20Abstract%20Contract/readme.md) | [Day 30 >>](../Day%2030%20-%20Polymorphism/readme.md)

![Cover](./cover.png)

---

# 📔 Day 29

Assembly ( also called assembler language ) refers to any low-level programming language that is converted to machine code using an assembler. Assembler languages are tied to either a physical or a virtual machine, because they implement its instruction set. An instruction tells simply the CPU to do some fundamental task, such as adding two numbers

Examples of processors are the Intel x86 or ARM. Intel x86 has around 1503 machine instructions. They are commonly referred as opcodes.

The Ethereum Virtual Machine (EVM), has also its own instruction set.

> **The EVM contains [141](https://github.com/wolflo/evm-opcodes) opcodes in its instruction set**

Solidity has an option to write an assembly language code inside the smart contract’s source code. With the help of Solidity assembly, we can directly interact with the EVM using the opcodes. Assembly provides more control over some logic which cannot be possible using only solidity, like pointing to the specific memory block. One of the main advantages is that it reduces the cost of the gas used to deploy the contract.

Solidity has two ways to implement the assembly language:

### **Inline Assembly** :

Inline assembly code can be written inside solidity code for more fine-grain control and especially used for enhancing the language via creating new libraries. Inline assembly can be inserted in between solidity statements in a way that EVM can understand. It can also be used when the optimizer is not able to produce efficient code. Solidity becomes easier when features like assembly local variables, functions calls, switch statements, if statements, loops, etc are used.

**Syntax**:

```solidity
assembly{
     // assembly language statements
}
```

Example -

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract InlineAssembly {
    function add(uint a) public view returns (uint b) {

        // Inline assembly code
        assembly {
            // Creating a new variable 'c'
            // Calculate the sum of 'a+16' with the 'add' opcode
            // assign the value to the 'c'
            let c := add(a, 16)

            // Use 'mstore' opcode to store 'c' in memory
            // at memory address 0x80
            mstore(0x80, c)
            {
                // Creating a new variable
                // Calculate the sum of 'sload(c)+12'
                // means values in variable 'c' with the 'add' opcode
                // assign the value to 'd'
                let d := add(sload(c), 12)

                // assign the value of 'd' to 'b'
                b := d

            // 'd' is deallocated now
            }

            // Calculate the sum of 'b+c' with the 'add' opcode
            // assign the value to 'b'
            b := add(b, c)

            // 'c' is deallocated here
        }
    }
}
```

When we pass `5` as an argument to `add` function we get

```solidity
0:
uint256: b 33
```

---
