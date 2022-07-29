<div align="center">
  <h1> 30 Days Of Solidity: Fallback Function</h1>
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

[<< Day 24](../Day%2024%20-%20Multiple%20Inheritance/readme.md) | [Day 26 >>](../Day%2026%20-%20Events%20and%20Hashing/readme.md)

![Cover](./cover.png)

---

# 📔 Day 25

The solidity fallback function is executed if none of the other functions match the function identifier or no data was provided with the function call. Only one unnamed function can be assigned to a contract and it is executed whenever the contract receives plain Ether without any data. To receive Ether and add it to the total balance of the contract, the fallback function must be marked payable. If no such function exists, the contract cannot receive Ether through regular transactions and will throw an exception.

Properties of a fallback function:

- Has no name or arguments.
- If it is not marked payable, the contract will throw an exception if it receives plain ether without data.
- Can not return anything.
- Can be defined once per contract.
- It is also executed if the caller meant to call a function that is not available
- It is mandatory to mark it external.
- It is limited to 2300 gas when called by another function. It is so for as to make this function call as cheap as possible.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Receiver{
    mapping(address => uint) public addressToAmount;

    receive() external payable {
        addressToAmount[msg.sender] += msg.value;
    }
}

contract Sender {
    uint amount = 1 ether;
    address payable _receiver = payable(0xcD6a42782d230D7c13A74ddec5dD140e55499Df9);
    function sendEther() public payable {
        _receiver.transfer(amount);
    }
}
```

**fallback()**

This function is called for all messages sent to this contract, except plain Ether transfers (there is no other function except the receive function). Any call with non-empty calldata to this contract will execute

**receive()**

This function is called for plain Ether transfers, i.e. for every call with empty calldata.

---

[<< Day 24](../Day%2024%20-%20Multiple%20Inheritance/readme.md) | [Day 26 >>]()
