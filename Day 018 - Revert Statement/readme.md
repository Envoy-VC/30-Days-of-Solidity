<div align="center">
  <h1> 100 Days Of Solidity: Revert Statement</h1>
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

[<< Day 17](../Day%20017%20-%20Assert%20Statement/readme.md) | [Day 19 >>]()

![Cover](./cover.png)

---

# 📔 Day 18

## Revert Statement

This statement is similar to the require statement. It does not evaluate any condition and does not depends on any state or statement. It is used to generate exceptions, display errors, and revert the function call. This statement contains a string message which indicates the issue related to the information of the exception. Calling a revert statement implies an exception is thrown, the unused gas is returned and the state reverts to its original state.  Revert is used to handle the same exception types as require handles, but with little bit more complex logic.

Example:
```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract RevertStatement {
    function checkOverflow(uint256 _num1, uint256 _num2)
        public
        view
        returns (string memory, uint256)
    {
        uint256 sum = _num1 + _num2;
        if (sum < 0 || sum > 255) {
            revert(" Overflow Exist");
        } else {
            return ("No Overflow", sum);
        }
    }
}
```

Output:
when we pass 96 and 178 to the function checkOverflow, it will throw an exception with the message "Overflow Exist".
```solidity
call to RevertStatement.checkOverflow errored: VM error: revert.

revert
	The transaction has been reverted to the initial state.
Reason provided by the contract: " Overflow Exist".
Debug the transaction to get more information.
```
---

[<< Day 17](../Day%20017%20-%20Assert%20Statement/readme.md) | [Day 19 >>]()