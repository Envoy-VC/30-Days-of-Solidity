// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract MyContract {
    uint256 i = 4;

    function ifStatement() public view returns (bool) {
        if (i > 5) {
            return true;
        }
    }

    function ifElseStatement() public view returns (string memory) {
        if (i > 5) {
            return "i is greater than 5";
        } else {
            return "i is less than 5";
        }
    }

    function ifElseIfElseStatement() public view returns (string memory) {
        if (i < 2) {
            return "i is less than 2";
        } else if (i >= 2 && i < 8) {
            return "i is between 2 and 8";
        } else {
            return "i is greater than 8";
        }
    }
}
