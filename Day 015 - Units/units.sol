// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract MyUnits {
    // 1 wei == 1
    // 1 gwei == 1e9
    // 1 ether == 1e18
    uint256 costOfNFT = 12.5 ether;
    uint256 gasLimit = 3000 wei;

    //1 == 1 seconds
    //1 minutes == 60 seconds
    //1 hours == 60 minutes
    //1 days == 24 hours
    //1 weeks == 7 days

    uint256 durationOfMint = 7 days;
}
