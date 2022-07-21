// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract MyContract {
    uint8 j = 0;
    uint256 public num = 2;

    function resetNum() public {
        num = 2;
        j = 0;
    }

    function whileLoop() public returns (uint256) {
        while (j < 5) {
            j++;
            num *= 2;
        }
        return num;
    }

    function doWhile() public returns (uint256) {
        do {
            j++;
            num *= 2;
        } while (j < 5);
        return num;
    }

    function forLoop() public returns (uint256) {
        for (j; j < 5; j++) {
            num = num * 2;
        }
        return num;
    }

    function breakStatement() public returns (uint256) {
        for (j; j < 5; j++) {
            if (j == 3) {
                break;
            }
            num = num * 2;
        }
        return num;
    }
}
