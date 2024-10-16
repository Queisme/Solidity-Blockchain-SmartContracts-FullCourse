//SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

contract SimpleStorage {
    // uint256 variable gets initialized to 0 if no value is given
    
    uint256 myFavoriteNumber;

    //uint256[] listOfFavoriteNumbers;

    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;

    //Person public myFriend = Person({favoriteNumber: 7, name: "Pat"});

    function store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256){
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

}