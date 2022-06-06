// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract MyContract {
    uint256[6] arr = [10, 20, 30, 40, 50, 60];
    uint256[] arr_1 = [1, 5, 4, 7, 8, 9, 3, 2, 4, 7, 8, 5, 9, 7];

    function getValue(uint256 _index) public view returns (uint256 _value) {
        _value = arr[_index];
    }

    function getLength() public view returns (uint256) {
        return arr_1.length;
    }

    function pushElement(uint256 _value) public returns (uint256[] memory) {
        arr_1.push(_value);
        return arr_1;
    }

    function popElement() public returns (uint256[] memory) {
        arr_1.pop();
        return arr_1;
    }
}
