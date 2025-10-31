// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract FavoriteTeam {

    //STRUCT
    
    struct Person {
        string name;
        string favoriteTeam;
        uint256 favoriteRating;
    }

    //ARRAY
    Person[] public listOfPersons;
    mapping(string => uint256) public nameToFavRating;

    //MAPPING
    function addListOfPersons(string calldata _name, string memory _favTeam, uint256 _favRating) public {
        listOfPersons.push(Person(_name, _favTeam, _favRating));
        nameToFavRating[_name] = _favRating;
    }        
}