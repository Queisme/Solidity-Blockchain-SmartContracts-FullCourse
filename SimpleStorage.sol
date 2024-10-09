// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26; //stating our version

contract SimpleStorage {
    //Basic Types: boolean (true, false),
    //             uint (unsigned integer, positive whole number),
    //             int (a signed whole number, positive or neg),
    //             address (an address - like metamask account addy),
    //             bytes ()
    //bool hasFavoriteNumber = true;
    //uint256 favoriteNumber = 88; //can set their bits, uint default = 256; intialized without assignment defaults to 0
    //int256 favoriteInt = -88;
    //string favoriteNumberinText = "eighty-eight"; //are bytes object just with text - can convert to bytes easily
    //address myAddress = 0x9Edc8dCDe643578d840C8470DB9733A083c9123B;
    //bytes32 favoriteBytes32 = "cat"; //represent hex. bytes32 is needed & largest.

    // Function Visibility Specifiers (there are 4) - if you don't actively label it will default to internal
    // public - visible externally & internally
    // private - only visibile in the current contract
    // external - only visible externally (only for functions)
    // internal - only visible internally

    uint256 public favoriteNumber; //defaults to internal so must add public if you want to see it

    //this function is updating something
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // view, pure
    // view - a function marked view means we're going to read state from the blockchain
    //        and disallow updating state
    // pure - disallow updating state and they disallow reading from state or storage
    // // this view function is only reading from the blockchain & returning that
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }
    // // this pure function doesn't allow reading from state or storage
    // function retrieve() public pure returns(uint256){
    //    return 1110;
    //}
}
