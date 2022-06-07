<div align="center">
  <h1> 100 Days Of Solidity: Arrays</h1>
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

[<< Day 9](../Day%20009%20-%20Decision%20Making/readme.md) | [Day 11 >>](../Day%20011%20-%20Array%20Operations/readme.md)

![Day X](./cover.png)

---

# 📔 Day 10

Arrays are data structures that store the fixed collection of elements of the same data types in which each and every element has a specific location called index. Instead of creating numerous individual variables of the same type, we just declare one array of the required size and store the elements in the array and can be accessed using the index. In Solidity, an array can be of fixed size or dynamic size. Arrays have a continuous memory location, where the lowest index corresponds to the first element while the highest represents the last element.

## Creating an Array

To declare an array in Solidity, the data type of the elements and the number of elements should be specified. The size of the array must be a positive integer and data type should be a valid Solidity type

**Syntax** -

```solidity
<data type>[<size optional>] <name> = <initialization>
```

---

## Fixed-size Arrays

The size of the array should be predefined. The total number of elements should not exceed the size of the array. If the size of the array is not specified then the array of enough size is created which is enough to hold the initialization.

Example -

```solidity
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract MyContract {
    // Declaring Array
    uint256[6] fixedArray;

    // Defining function to assign value to fixed Array

    function assignValueToFixedArray() public returns (uint256[6] memory) {
        fixedArray = [10, 20, 30, 40, 50, 60];
        return (fixedArray);
    }
}
```

Output -

```solidity
"0": "uint256[6]: 10,20,30,40,50,60"
```

---

## Dynamic Arrays

The size of the array is not predefined when it is declared. As the elements are added the size of array changes and at the runtime, the size of the array will be determined.

Example -

```solidity
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract MyContract {
    // Declaring Array
    uint256[] dynamicArray;

    // Defining function to assign value to dynamic Array
    function assignValueToDynamicArray() public returns (uint256[] memory) {
        dynamicArray = [1, 5, 3, 7, 9, 1, 2, 6];
        return (dynamicArray);
    }
}
```

Output -

```solidity
"0": "uint256[]: 1,5,3,7,9,1,2,6"
```

---

[<< Day 9](../Day%20009%20-%20Decision%20Making/readme.md) | [Day 11 >>](../Day%20011%20-%20Array%20Operations/readme.md)
