// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract SimpleStorage {

    // A variable to store a favorite number
    uint256 favoriteNumber;

    // A struct to store people with a name and favorite number
    struct People {
        uint256 favoriteNumber;
        string name;
    }
    // uint256[] public anArray;
    // An array to store multiple people
    People[] public people;

    // A mapping to map a name to a favorite number
    mapping(string => uint256) public nameToFavoriteNumber;

    // A function to store a favorite number
    function store(uint256 _favoriteNumber) public virtual {
        favoriteNumber = _favoriteNumber;
    }
    
    // A function to retrieve the stored favorite number
    function retrieve() public view returns (uint256){
        return favoriteNumber;
    }

    // A function to add a person to the people array and mapping
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        // adds a new person to the people array
        people.push(People(_favoriteNumber, _name));
        // adds a new entry to the name to favorite number mapping
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}

