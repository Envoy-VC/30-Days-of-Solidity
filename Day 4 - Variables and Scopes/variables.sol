// SPDX-License-Identifier: MIT

pragma solidity ^0.8.6;

contract SolidityTest {
    uint256 storedData; // State variable

    constructor() public {
        storedData = 10; // Using State variable
    }

    function getResult() public view returns (uint256) {
        uint256 a = 1; // local variable
        uint256 b = 2;
        uint256 Result = a + b;
        return Result; //access the local variable
    }
}

contract C {
    uint256 public data = 30;
    uint256 internal iData = 10;

    function x() public returns (uint256) {
        data = 3; // internal access
        return data;
    }
}

contract Caller {
    C c = new C();

    function f() public view returns (uint256) {
        return c.data(); //external access
    }
}

contract D is C {
    function y() public returns (uint256) {
        iData = 3; // internal access
        return iData;
    }
}
