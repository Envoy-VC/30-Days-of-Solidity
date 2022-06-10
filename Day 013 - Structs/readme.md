<div align="center">
  <h1> 100 Days Of Solidity: Structs</h1>
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

[<< Day 12](../Day%20012%20-%20Enums/readme.md) | [Day 14 >>]()

![Day X](./cover.png)

---

# 📔 Day 13

Structs in Solidity allows you to create more complicated data types that have multiple properties. You can define your own type by creating a struct.

They are useful for grouping together related data.

Structs can be declared outside of a contract and imported in another contract. Generally, it is used to represent a record. To define a structure struct keyword is used, which creates a new data type. 

**Syntax:**
```solidity
struct <structure_name> {  
   <data type> variable_1;  
   <data type> variable_2; 
}
```

Example:
```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract structType {
    struct Student {
        string name;
        string gender;
        uint roll_no;
    }

    // Declaring a structure object
    Student student1;

    // Assigning values to the fields for the structure object student2
    Student student2 = Student("Jeff","Male",1);

    // Defining a function to set values for the fields for structure 
    // student1
    function setStudentDetails() public {
        student1 = Student("Teresa","Female",2);
    }

    // Defining a function to get Student Details
    function studentInfo() public view returns (string memory, string memory, uint) {
        return(student1.name , student1.gender , student1.roll_no);
    }
}
```

Output - 
When we run setStudentDetails it stores values in the structure `student2`
and when we call the studentInfo function we get
```solidity
{
	"0": "string: Teresa",
	"1": "string: Female",
	"2": "uint256: 2"
}
```

---

[<< Day 12](../Day%20012%20-%20Enums/readme.md) | [Day 14 >>]()