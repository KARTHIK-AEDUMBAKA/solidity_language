// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;
contract evm_store {
    uint public number = 89;  //storage 
    struct struct_store {
        uint256 number_struct;
        string name_struct;
     }   // strack

    struct_store[] public struct_stores;
    function memory_store(uint _number_struct, string memory _name_struct) public {  //memory

        _name_struct ="karthik"; //see in memory we can change the data 
        struct_stores.push(struct_store(_number_struct,_name_struct));
    }



    function calldata_store(uint _number_struct, string calldata _name_struct) public {  //calldata

        _name_struct ="karthik"; //see in calldata we can not change the data 
        struct_stores.push(struct_store(_number_struct,_name_struct));
    }

   
}