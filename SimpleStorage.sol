// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26; //stating our version

contract SimpleStorage {
    //Basic Types: boolean (true, false),
    //             uint (unsigned integer, positive whole number),
    //             int (a signed whole number, positive or neg),
    //             address (an address - like metamask account addy),
    //             bytes ()
    //bool hasFavoriteNumber = true;
    //uint256 favoriteNumber = 88; //can set their bits, uint default = 256; if intialized without variable assignment defaults to 0
    //int256 favoriteInt = -88;
    //string favoriteNumberinText = "eighty-eight"; //are bytes object just with text - can convert to bytes easily
    //address myAddress = 0x9Edc8dCDe643578d840C8470DB9733A083c9123B;
    //bytes32 favoriteBytes32 = "cat"; //represent hex. bytes32 is needed & largest.
    uint256 favoriteNumber; //default 0
}
