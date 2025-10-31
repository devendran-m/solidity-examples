// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract FavoriteTeam {

    uint256 favoriteRating;
    
    struct Person {
        string name;
        string favoriteTeam;
        uint256 favoriteRating;
    }

    //STRUCT

    Person public person = Person({name: "Dev", favoriteTeam: "CSK", favoriteRating: 5});

    function addPerson(string memory _name, string memory _team) public {
        person.name = _name;
        person.favoriteTeam = _team;
        person.favoriteRating = 10;
    } 

    //ARRAY
    Person[] public listOfPersons;

    //CALLDATA, MEMORY, STORAGE
    function addListOfPersons(string calldata _name, string memory _favTeam) public {
        //  _name = "Some name";
        //  _favTeam = "New Team";
         listOfPersons.push(Person(_name, _favTeam, favoriteRating));
        //  uint256 someLocalVariable = 100; //Warning example
    }        
}