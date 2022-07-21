<div align="center">

<img src="https://img.shields.io/static/v1?label=solidity&message=v0.8.7&color=2ea44f&logo=solidity" alt="Solidity">

</div>

## Contents

- [Day 1 - Licenses and Pragma](./Day%2001%20-%20Licenses%20and%20Pragma/readme.md)
- [Day 2 - Comments](./Day%2002%20-%20Comments/readme.md)
- [Day 3 - Initializing Basic Contract](./Day%2003%20-%20Initializing%20Basic%20Contract/readme.md)
- [Day 4 - Variables and Scopes](./Day%2004%20-%20Variables%20and%20Scopes/readme.md)
- [Day 5 - Operators](./Day%2005%20-%20Operators/readme.md)
- [Day 6 - Types](./Day%2006%20-%20Types/readme.md)
- [Day 7 - Functions](./Day%2007%20-%20Functions/readme.md)
- [Day 8 - Loops](./Day%2008%20-%20Loops/readme.md)
- [Day 9 - Decision Making](./Day%2009%20-%20Decision%20Making/readme.md)
- [Day 10 - Arrays](./Day%2010%20-%20Arrays/readme.md)
- [Day 11 - Array Operations](./Day%2011%20-%20Array%20Operations/readme.md)
- [Day 12 - Enums](./Day%2012%20-%20Enums/readme.md)
- [Day 13 - Structs](./Day%2013%20-%20Structs/readme.md)
- [Day 14 - Mappings](./Day%2014%20-%20Mappings/readme.md)
- [Day 15 - Units](./Day%2015%20-%20Units/readme.md)
- [Day 16 - Require Statement](./Day%2016%20-%20Require%20Statement/readme.md)
- [Day 17 - Assert Statement](./Day%2017%20-%20Assert%20Statement/readme.md)
- [Day 18 - Revert Statement](./Day%2018%20-%20Revert%20Statement/readme.md)
- [Day 19 - Function Modifiers](./Day%2019%20-%20Function%20Modifiers/readme.md)
- [Day 20 Constructors](./Day%2020%20-%20Constructors/readme.md)
- [Day 21 Single Inheritance](./Day%2021%20-%20Single%20Inheritance/readme.md)
- [Day 22 Multi-Level Inheritance](./Day%2022%20-%20Multi-level%20Inheritance/readme.md)
- [Day 23 Hierarchical Inheritance](./Day%2023%20-%20Hierarchical%20Inheritance/readme.md)
- [Day 24 Multiple Inheritance](./Day%2024%20-%20Multiple%20Inheritance/readme.md)
- [Day 25 Fallback and Receive Function](./Day%2025%20-%20Fallback%20and%20Receive%20Function/readme.md)

<br>

🧡🧡🧡 HAPPY CODING 🧡🧡🧡

<div align="center">
  <h1> 30 Days Of Solidity: Licences and Pragma</h1>
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

[Day 2 >>](./Day%2002%20-%20Comments/readme.md)

![Day 1](./Day%2001%20-%20Licenses%20and%20Pragma/cover.png)

<br>

# 📔 Day 1

## Licenses

```solidity
// SPDX-License-Identifier: License Name
```

SPDX license identifiers should be added to the top of contract files.
The license should be from one of the following: [https://spdx.org/licenses/](https://spdx.org/licenses/).

⚠️ If the license identifier isn’t included in the contract file the compiler will now show a warning.

❗ If there are multiple license identifiers in the contract file the compiler will now show an error.

eg -

```solidity
// SPDX-License-Identifier: MIT
```

---

## Pragma

In Solidity the pragma keyword is used to configure compiler features and checks. The pragma directive is always local to the current file and is not global. Hence to make it applicable in your entire project of Solidity you have to include pragma directive in every file to work.

The first line is a pragma directive which tells that the source code is written for which Solidity version.

```solidity
pragma solidity ^0.8.7;
// Anything above 0.8.7

pragma solidity >=0.8.0 <0.9.0;
// Anything between 0.8.0 to 0.9.0 where 0.9.0 is not included.

pragma solidity 0.8.7;
// Only Version 0.8.7
```

---

[Day 2 >>](./Day%2002%20-%20Comments/readme.md)
