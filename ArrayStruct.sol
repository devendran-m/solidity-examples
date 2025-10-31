// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract FavoriteTeam {
    
    struct Person {
        string name;
        string favoriteTeam;
    }

    //STRUCT

    Person public person = Person({name: "Dev", favoriteTeam: "CSK"});

    function addPerson(string memory _name, string memory _team) public {
        person.name = _name;
        person.favoriteTeam = _team;
    } 

    //ARRAY
    Person[] public listOfPersons;

    function addListOfPersons(string memory _name, string memory _favTeam) public {
         listOfPersons.push(Person(_name, _favTeam));
        //  uint256 someLocalVariable = 100; //Warning example
    }    
    
}