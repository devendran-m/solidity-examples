// SPDX-License-Identifier: MIT
pragma solidity 0.8.30; // state the version (^0.8.25 & >0.8.25 <0.9.0 are also valid)


contract SimpleStorage {
    uint256 public favoriteNumber; //initialized to 0

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber; // _favoriteNumber is a local variable       
    }    

    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }
   
}

