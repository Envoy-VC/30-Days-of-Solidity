// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Mappings {
    struct Student {
        string name;
        string subject;
        uint256 marks;
    }

    mapping(address => Student) public addressToStudent;
    Student student1;

    function addDetails() public {
        student1 = Student("Daniel", "Maths", 85);
        addressToStudent[0x5B38Da6a701c568545dCfcB03FcB875f56beddC4] = student1;
    }
}
