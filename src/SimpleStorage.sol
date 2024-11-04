// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import {console} from "forge-std/console.sol";

contract SimpleStorage {
    // Basic Types: boolean, uint, int, address, bytes
    uint256 public favoriteNumber;


    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    } 



}