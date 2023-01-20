// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.17;
import "./SimpleStorage.sol"; 

// This contract is a factory contract that creates and manages multiple instances of SimpleStorage contract
contract StorageFactory {
    
    // An array to store multiple SimpleStorage contract instances
    SimpleStorage[] public simpleStorageArray;
    
    // A function to create a new instance of SimpleStorage contract
    function createSimpleStorageContract() public {
        // Creating a new instance of SimpleStorage contract
        SimpleStorage simpleStorage = new SimpleStorage();
        // Storing the new instance in the simpleStorageArray
        simpleStorageArray.push(simpleStorage);
    }
    
    // A function to store a number in a specific SimpleStorage contract instance
    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        // Store the number in the specified SimpleStorage contract instance
        simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
    }
    
    // A function to retrieve a stored number from a specific SimpleStorage contract instance
    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) { 
        // Retrieve the stored number from the specified SimpleStorage contract instance
        return simpleStorageArray[_simpleStorageIndex].retrieve();
    }
}
