// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract structType {
    struct Student {
        string name;
        string gender;
        uint256 roll_no;
    }

    // Declaring a structure object
    Student student1;

    // Assigning values to the fields for the structure object student2
    Student student2 = Student("Jeff", "Male", 1);

    // Defining a function to set values for the fields for structure student1
    function setStudentDetails() public {
        student1 = Student("Teresa", "Female", 2);
    }

    // Defining a function to get Student Details
    function studentInfo()
        public
        view
        returns (
            string memory,
            string memory,
            uint256
        )
    {
        return (student1.name, student1.gender, student1.roll_no);
    }
}
