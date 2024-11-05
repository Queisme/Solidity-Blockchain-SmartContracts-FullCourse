// Get funds from users
// Withdraw funds
// Set a minimum funding value in USD


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

contract FundMe {

    uint256 public minimumUsd = 5;


    function fund() public payable {
        // Allow users to send $
        // Have a minimum $ sent ($5)
        require(msg.value >= minimumUsd, "Must sent atleast 1 ETH"); // 1e18 = 1 ETH
    } 

    //function withdraw() public {}



}