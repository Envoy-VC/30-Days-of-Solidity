# Variables

Solidity supports three types of variables.

- `State Variables` − Variables whose values are permanently stored in a contract storage.

- `Local Variables` − Variables whose values are present till function is executing.

- `Global Variables` − Special variables exists in the global namespace used to get information about the blockchain.

---

While naming your variables in Solidity, keep the following rules in mind.

- You should not use any of the Solidity reserved keywords as a variable name. For example, break or boolean variable names are not valid.
- Solidity variable names should not start with a numeral (0-9). They must begin with a letter or an underscore character. For example, 123test is an invalid variable name but _123test is a valid one.
- Solidity variable names are case-sensitive. For example, Name and name are two different variables.

---

## State Variable

Variables whose values are permanently stored in a contract storage.

```solidity
pragma solidity ^0.8.6;

contract SolidityTest {
   uint storedData;      // State variable
   constructor() public {
      storedData = 10;   // Using State variable
   }
}
```
---

## Local Variable

Variables whose values are available only within a function where it is defined. Function parameters are always local to that function.

```solidity
pragma solidity ^0.8.6;
contract SolidityTest {
   uint storedData; // State variable
   constructor() public {
      StoredData = 10;
   }
   function getResult() public view returns(uint){
      uint a = 1; // local variable
      uint b = 2;
      uint Result = a + b;
      return Result; //access the local variable
   }
}
```

# Global Variables
These are special variables which exist in global workspace and provide information about the blockchain and transaction properties.

| Name | Returns |
 ---  | --- |
|  blockhash(uint blockNumber) returns (bytes32)  |  Hash of the given block - only works for 256 most recent, excluding current, blocks   |
| block.coinbase (address payable)   |   Current block miner's address  |
| block.difficulty (uint)   |   Current block difficulty  |
|  block.gaslimit (uint)  | Current block gaslimit    |

More on Global Variables [here](https://docs.soliditylang.org/en/v0.8.10/units-and-global-variables.html#block-and-transaction-properties)

---

## Variable Scopes

Scope of local variables is limited to function in which they are defined but State variables can have three types of scopes.

- `Public` − Public state variables can be accessed internally as well as via messages. For a public state variable, an automatic getter function is generated.
- `Internal` − Internal state variables can be accessed only internally from the current contract or contract deriving from it without using this.
- `Private` − Private state variables can be accessed only internally from the current contract they are defined not in the derived contract from it.

eg- 

```solidity
pragma solidity ^0.8.6;
contract C {
   uint public data = 30;
   uint internal iData= 10;
   
   function x() public returns (uint) {
      data = 3; // internal access
      return data;
   }
}
contract Caller {
   C c = new C();
   function f() public view returns (uint) {
      return c.data(); //external access
   }
}
contract D is C {
   function y() public returns (uint) {
      iData = 3; // internal access
      return iData;
   }
   function getResult() public view returns(uint){
      uint a = 1; // local variable
      uint b = 2;
      uint result = a + b;
      return storedData; //access the state variable
   }
}
```