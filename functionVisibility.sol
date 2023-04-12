
// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;
 contract A { function f1() public pure returns (uint) //outside (like output)
  { 
     return 1; //return a constant value
      }
     function f2() private pure returns (uint)
     { uint z= f3(); //within //call the internal function f3 and assign its return value to z 
     return 2; //return a constant value 
     } function f3() internal pure returns (uint)
     { uint256 x=f1(); //within //call the public function f1 and assign its return value to x 
     uint y=f2(); //within //call the private function f2 and assign its return value to y 
     return 3; //return a constant value 
     } function f4() external pure returns (uint) //outside (like output) 
     { return 4; //return a constant value 
     } 
     }

contract B is A{ //inherit from contract A 
uint public bx = f3(); // devived //call the inherited internal function f3 and assign its return value to bx // 
// uint public by=f4(); //we will get the ERROR because again we are call the fuction WITHIN the function uint public ba= f1(); 
//devived //call the inherited public function f1 and assign its return value to ba

}

contract C{ //create a new contract C 
A obj = new A(); //create an instance of contract A 
uint public cx=obj.f4(); //call the external function f4 of contract A and assign its return value to cx 
uint public cy=obj.f1(); //call the public function f1 of contract A and assign its return value to cy 
}



