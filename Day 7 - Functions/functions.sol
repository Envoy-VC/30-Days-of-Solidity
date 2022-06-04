// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract MyContract {
    function add() public view returns (uint256) {
        uint256 num1 = 10;
        uint256 num2 = 16;
        uint256 sum = num1 + num2;
        return sum;
    }

    function sqrt(uint256 num) public pure returns (uint256) {
        num = num**2;
        return num;
    }
}
