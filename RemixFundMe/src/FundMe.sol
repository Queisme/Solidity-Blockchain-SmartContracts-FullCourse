
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

//import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract FundMe {

    uint256 public minimumUsd = 5;


    function fund() public payable {
        // Allow users to send $
        // Have a minimum $ sent ($5)
        require(msg.value >= minimumUsd, "Must sent atleast 1 ETH"); // 1e18 = 1 ETH
    } 

    //function withdraw() public {}

    function getPrice() public {
        // Address 0x694AA1769357215DE4FAC081bf1f309aDC325306
        // ABI
    }

    function getConversionRate() public {}

    function getVersion() public view returns(uint256){
        //return AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306).version();
    }



}