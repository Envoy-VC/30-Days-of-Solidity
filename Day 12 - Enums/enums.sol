// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract EnumType {
    // Creating an enumerator
    enum Days {
        Monday,
        Tuesday,
        Wednesday,
        Thursday,
        Friday,
        Saturday,
        Sunday
    }
    // Declaring variables of type enumerator
    Days day;

    // Setting a default value
    Days constant defaultDay = Days.Monday;

    // Get default Day
    function getDefaultDay() public pure returns (Days) {
        return defaultDay;
    }

    // Set day to a object from the enumerator Days
    function setDay() public {
        day = Days.Tuesday;
    }

    // get value of day
    function getDay() public view returns (Days) {
        return day;
    }
}
