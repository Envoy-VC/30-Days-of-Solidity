<div align="center">

<img src="https://img.shields.io/static/v1?label=solidity&message=v0.8.7&color=2ea44f&logo=solidity" alt="Solidity">

</div>

## Contents

- [Day 1 - Licences and Pragma](./Day%201%20-%20Licences%20and%20Pragma/readme.md)
- [Day 2 - Comments](./Day%202%20-%20Comments/readme.md)
- [Day 3 - Initializing Basic Contract and Types](./Day%203%20-%20Initializing%20Basic%20Contract%20and%20Types/readme.md)
- [Day 4 - Variables and Scopes](./Day%204%20-%20Variables%20and%20Scopes/readme.md)
- [Day 5 - Operators](./Day%205%20-%20Operators/readme.md)
- [Day 6 - Types](./Day%206%20-%20Types/readme.md)
- [Day 7 - Functions](./Day%207%20-%20Functions/readme.md)
- [Day 8 - Loops](./Day%208%20-%20Loops/readme.md)
- [Day 9 - Decision Making](./Day%209%20-%20Decision%20Making/readme.md)

<br>

🧡🧡🧡 HAPPY CODING 🧡🧡🧡

<div align="center">
  <h1> 100 Days Of Solidity: Licences and Pragma</h1>
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

[Day 2 >>](./Day%202%20-%20Comments/readme.md)

![Day 1](./Day%201%20-%20Licences%20and%20Pragma/cover.png)

<br>

# 📔 Day 1

## Licences

```solidity
// SPDX-Licence-Identifier: Licence Name
```

SPDX license identifiers should be added to the top of contract files.
The license should be from one of the following: [https://spdx.org/licenses/](https://spdx.org/licenses/).

⚠️ If the license identifier isn’t included in the contract file the compiler will now show a warning.

❗ If there are multiple license identifiers in the contract file the compiler will now show an error.

eg -

```solidity
// SPDX-Licence-Identifier: MIT
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


[Day 2 >>](./Day%202%20-%20Comments/readme.md)
