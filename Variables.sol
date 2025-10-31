// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.30;


contract VariableExample {
    // STATE VARIABLES
    uint256 public stateVar = 100;
    address private owner;
    
    constructor() {
        owner = msg.sender; // Using global variable
    }
    
    function example01(uint256 _param) public view returns (uint256) {
        // LOCAL VARIABLES
        uint256 localVar = 50;
        uint256 result = localVar + _param;
        
        return result + stateVar;
    }

    function example02() public view returns (address, uint256) {
        // // LOCAL VARIABLES
        // uint256 localVar = 50;
        // uint256 result = localVar + _param;
        
        // GLOBAL VARIABLES
        address sender = msg.sender;
        uint256 timestamp = block.timestamp;
        
        return (sender, timestamp);
    }
}

