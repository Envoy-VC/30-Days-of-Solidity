<div align="center">
  <h1> 100 Days Of Solidity: Array Operations</h1>
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

[<< Day 10](../Day%20010%20-Arrays/readme.md) | [Day 12 >>]()

![Day 11](./cover.png)

---

# 📔 Day 11

## Array Operations

- Accessing Array Elements
- Length of Array
- Push
- Pop

---

## Accessing Array Elements

The elements of the array are accessed by using the index. If you want to access `n`th element then you have to access `(n - 1)`th index.

Example - 

```solidity
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;  
  
contract MyContract {  
  
    uint[6] arr = [10, 20, 30, 40, 50, 60];

    function getValue(uint _index) public view returns(uint _value) {
        _value = arr[_index];
    }
}
```

Output -

When we pass Index as 2 we get 
```solidity
"0": "uint256: _value 30"
```

---

## Length of Array

Length of the array is used to check the number of elements present in an array. The size of the memory array is fixed when they are declared, while in case the dynamic array is defined at runtime so for manipulation length is required.

Example -

```solidity
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract MyContract {
    uint256[] arr_1 = [1, 5, 4, 7, 8, 9, 3, 2, 4, 7, 8, 5, 9, 7];

    function getLength() public view returns (uint256) {
        return arr_1.length;
    }
}
```

Output -
```solidity
"0": "uint256: 14"
```

---

## Push

Push is used when a new element is to be added in a dynamic array. The new element is always added at the last position of the array.

Example -

```solidity
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract MyContract {
    uint256[] arr_1 = [1, 5, 4, 7, 8, 9, 3, 2, 4, 7, 8, 5, 9, 7];

    function pushElement(uint256 _value) public returns (uint256[] memory) {
        arr_1.push(_value);
        return arr_1;
    }
}
```

Output -

If we pass the value as 30 then output is 
```solidity
"0": "uint256[]: 1,5,4,7,8,9,3,2,4,7,8,5,9,7,30"
```

---

## Pop

Pop is used when the last element of the array is to be removed in any dynamic array.

Example -

```solidity
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract MyContract {
    uint256[] arr_1 = [1, 5, 4, 7, 8, 9, 3, 2, 4, 7, 8, 5, 9, 7];

    function popElement() public returns (uint256[] memory) {
        arr_1.pop();
        return arr_1;
    }
}
```

Output -
```solidity
"0": "uint256[]: 1,5,4,7,8,9,3,2,4,7,8,5,9"
```

---
[<< Day 10](../Day%20010%20-Arrays/readme.md) | [Day 12 >>]()