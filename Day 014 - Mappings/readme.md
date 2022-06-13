<div align="center">
  <h1> 100 Days Of Solidity: Mappings</h1>
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

[<< Day 13](../Day%20013%20-%20Structs/readme.md) | [Day 15 >>](../Day%20015%20-%20Units/readme.md)

![Day 14](./cover.png)

---

# 📔 Day 14

Mapping in Solidity acts like a hash table or dictionary in any other language. These are used to store the data in the form of key-value pairs, a key can be any of the built-in data types but reference types are not allowed while the value can be of any type. Mappings are mostly used to associate the unique Ethereum address with the associated value type.

**Syntax:**
```solidity
mapping(key => value) <access specifier> <name>;
```
Example:
```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Mappings {
    struct Student {
        string name;
        string subject;
        uint marks;
    }

    mapping(address => Student) public addressToStudent;
    Student student1;

    function addDetails() public {
        student1 = Student("Daniel","Maths",85);
        addressToStudent[0x5B38Da6a701c568545dCfcB03FcB875f56beddC4] = student1;
    }
}
```

Here we map a `address` to a `Student` struct.and the function `addDetails` adds the details of the student to struct student1 and then maps it to address 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4.

Output when we pass the above address in addressToStudent mapping:
```solidity
{
	"0": "string: name Daniel",
	"1": "string: subject Maths",
	"2": "uint256: marks 85"
}
```

---

[<< Day 13](../Day%20013%20-%20Structs/readme.md) | [Day 15 >>](../Day%20015%20-%20Units/readme.md)