// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage {
    // override
    // virtual & override

    function store(uint256 _newNumber) public override {
        myFavoriteNumber = _newNumber + 5;
    }
}