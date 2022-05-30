![Cover](./cover.png)

This is Day `1` of `100` in Solidity Series.

Today I Learned About Licences and Pragma Keyword in Solidity

---

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
