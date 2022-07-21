<div align="center">
  <h1> 30 Days Of Solidity: Enums</h1>
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

[<< Day 11](../Day%2011%20-%20Array%20Operations/readme.md) | [Day 13 >>](../Day%2013%20-%20Structs/readme.md)

![Day 12](./cover.png)

---

# 📔 Day 12

Enums are the way of creating user-defined data types, it is usually used to provide names for integral constants which makes the contract better for maintenance and reading.

Enums restrict the variable with one of a few predefined values, these values of the enumerated list are called enums. Options are represented with integer values starting from zero, a default value can also be given for the enum. By using enums it is possible to reduce the bugs in the code.

**Syntax**

```solidity
enum <enumerator_name> {
    element 1,
    element 2,
    ....,
    element n
}
```

Example:

```solidity
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract EnumType {
    // Creating an enumerator
    enum Days {
        Monday,
        Tuesday,
        Wednesday,
        Thursday,
        Friday,
        Saturday,
        Sunday
    }
    // Declaring variables of type enumerator
    Days day;

    // Setting a default value
    Days constant defaultDay = Days.Monday;

    // Get default Day
    function getDefaultDay() public pure returns (Days) {
        return defaultDay;
    }

    // Set day to a object from the enumerator Days
    function setDay() public {
        day = Days.Tuesday;
    }

    // get value of day
    function getDay() public view returns (Days) {
        return day;
    }
}
```

Output:

When we run the getDefaultDay function, we get the default value of the enumerator.

```solidity
0:uint8: 0
```

When we run the getDay function we get `0:uint8: 0` as we have set it to a default value of Monday.

When we run the setDay function and then run the getDay function we get `0:uint8: 1` as setDay function has set the value of `day` to Tuesday.

---

[<< Day 11](../Day%2011%20-%20Array%20Operations/readme.md) | [Day 13 >>](../Day%2013%20-%20Structs/readme.md)
