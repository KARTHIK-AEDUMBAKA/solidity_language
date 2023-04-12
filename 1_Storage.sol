// SPDX-License-Identifier: MIT
// The above line specifies the license of the code
pragma solidity >=0.6.0 <0.9.0; // This line specifies the version of Solidity compiler

contract simplestorage { // This is the contract declaration
    uint256 favoritenumber ; // This is a state variable that stores a favorite number
    struct People_arr { // This is a struct that defines a person with a name and a favorite number
        uint256 favoritenumber; // This is a property of the struct that stores the person's favorite number
        string name; // This is a property of the struct that stores the person's name
    }
    People_arr[ ] public  people_arr; // This is an array of people structs that is publicly accessible
    mapping (string => uint256) public nametofavortivenumber; // This is a mapping that associates a name with a favorite number and is publicly accessible
    function store(uint256 _favoritenumber) public { // This is a function that takes a favorite number as an argument and stores it in the state variable
        favoritenumber = _favoritenumber; // This is an assignment statement that updates the state variable

    }
    function output_fav() public  view returns (uint256){ // This is a function that returns the stored favorite number
        return favoritenumber; // This is a return statement that returns the state variable
    }

    function addpersons(string memory _name, uint256 _favoritenumber) public { // This is a function that takes a name and a favorite number as arguments and adds them to the array and the mapping
        people_arr.push(People_arr(_favoritenumber,_name)); // This is a statement that creates a new person struct with the given arguments and pushes it to the array
        nametofavortivenumber[_name]=_favoritenumber; // This is a statement that adds an entry to the mapping with the given arguments
    }
}