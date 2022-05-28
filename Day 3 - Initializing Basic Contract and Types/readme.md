
Smart contracts are simply programs stored on a blockchain that run when predetermined conditions are met. They typically are used to automate the execution of an agreement so that all participants can be immediately certain of the outcome, without any intermediary’s involvement or time loss. They can also automate a workflow, triggering the next action when conditions are met.

```solidity
contract ContractName {
    Statement1;
    Statement2;
}
```
---

## Value Types

Solidity offers the programmer a rich assortment of built-in as well as user defined data types. Following table lists down seven basic C++ data types −

| Type                |     Keyword      | Values                                                                                                                                                                                                                 |
| ------------------- |:----------------:| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Boolean             |       bool       | true/false                                                                                                                                                                                                             |
| Integer             |     int/uint     | Signed and unsigned integers of varying sizes.                                                                                                                                                                         |
| Integer             |  int8 to int256  | Signed int from 8 bits to 256 bits. int256 is the same as int.                                                                                                                                                         |
| Integer             | uint8 to uint256 | Unsigned int from 8 bits to 256 bits. uint256 is the same as uint.                                                                                                                                                     |
| Fixed Point Numbers |  fixed/unfixed   | Signed and unsigned fixed point numbers of varying sizes.                                                                                                                                                              |
| Fixed Point Numbers |     fixedMxN     | Signed fixed point number where M represents number of bits taken by type and N represents the decimal points. M should be divisible by 8 and goes from 8 to 256. N can be from 0 to 80. fixed is same as fixed128x18. |
