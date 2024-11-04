// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import {console} from "forge-std/console.sol";

contract SimpleStorage {
    // Basic Types: boolean, uint, int, address, bytes
    uint256 myFavoriteNumber;


    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    mapping( string => uint256 ) public nameToFavoriteNumber;


    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    } 

    function retrieve() public view returns(uint256){
        return myFavoriteNumber;
    }

    function addPerson(uint256 _favoriteNumber, string memory _name) public {
        listOfPeople.push( Person(_favoriteNumber, _name) );
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }



}