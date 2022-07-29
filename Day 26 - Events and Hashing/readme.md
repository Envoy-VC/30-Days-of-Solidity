<div align="center">
  <h1> 30 Days Of Solidity: Events and Hashing</h1>
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

[<< Day 25](../Day%2025%20-%20Fallback%20and%20Receive%20Function/readme.md) | [Day 27 >>]()

![Cover](./cover.png)

---

# 📔 Day 26

## Events

Solidity Events are the same as events in any other programming language. An event is an inheritable member of the contract, which stores the arguments passed in the transaction logs when emitted.

Events are defined within the contracts as global and called within their functions. Events are declared by using the event keyword, followed by an identifier and the parameter list, and ends with a semicolon. The parameter values are used to log the information or for executing the conditional logic. Its information and values are saved as part of the transactions inside the block. There is no need of providing variables, only datatypes are sufficient. An event can be called from any method by using its name and passing the required parameters.
**Syntax** -

```solidity
event <eventName>(parameters);
```

Example -

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract MyContract {

    event transaction(address payable, uint256);

    function sendEther(address payable to) public payable {
        to.transfer(msg.value);
        emit transaction(to,msg.value);
    }
}
```

Output logs -

```json
[
  {
    from: "0xf8e81D47203A594245E36C48e151709F0C19fBe8",
    topic: "0xa088ceb626d7ab77e5c39d79be36e959ac77a2563e711bdfce14bc1b86293691",
    event: "transaction",
    args: {
      0: "0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2",
      1: "10000000000000000000",
    },
  },
];
```

---

## Hashing

A cryptographic hash function is an algorithm that takes an arbitrary amount of data as input and produces the enciphered text of fixed size. Even a slight change in the input gives a completely different output.

Solidity provides the following cryptographic functions:

| Function                                                                 | Properties                                                                                                                                                                                     |
| ------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| keccak256(bytes memory) returns (bytes32)                                | Computes the Keccak-256 hash of the input                                                                                                                                                      |
| sha256(bytes memory) returns (bytes32)                                   | Computes the SHA-256 hash of the input                                                                                                                                                         |
| ripemd160(bytes memory) returns (bytes20)                                | Compute RIPEMD-160 hash of the input                                                                                                                                                           |
| sha256(bytes memory) returns (bytes32)                                   | Computes the SHA-256 hash of the input                                                                                                                                                         |
| ecrecover(bytes32 hash, uint8 v, bytes32 r, bytes32 s) returns (address) | Recover the address associated with the public key from Elliptic curve signature used for cryptography or return Zero if an error occurs. The parameters correspond to ECDSA Signature values. |

Example -

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract MyContract {

    uint256 digits = 5;

    function generateRandom(string memory _str) public view returns(uint256) {
        uint random = uint(keccak256(abi.encodePacked(_str))) % (10 ** digits);
        return random;
    }
}
```

The function generateRandom generates a random number of 5 digits from a string which it first converts to a `keccak256` hash and the takes modulus to give a 5 digit number

Output when string is `solidity`

```
0:
uint256: 70469
```

---

[<< Day 25](../Day%2025%20-%20Fallback%20and%20Receive%20Function/readme.md) | [Day 27 >>]()
