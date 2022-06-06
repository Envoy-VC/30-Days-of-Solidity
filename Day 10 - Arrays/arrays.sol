// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract MyContract {
    // Declaring Array
    uint256[6] fixedArray;
    uint256[] dynamicArray;

    // Defining function to assign value to fixed Array
    function assignValueToFixedArray() public returns (uint256[6] memory) {
        fixedArray = [10, 20, 30, 40, 50, 60];
        return (fixedArray);
    }

    // Defining function to assign value to dynamic Array
    function assignValueToDynamicArray() public returns (uint256[] memory) {
        dynamicArray = [1, 5, 3, 7, 9, 1, 2, 6];
        return (dynamicArray);
    }
}
