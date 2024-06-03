/*For this project, write a smart contract that implements the require(), assert() and revert() statements.*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandling {

    uint256 public totalSupply;
    address public owner;

    constructor() {
        owner = msg.sender;
        totalSupply = 0;
    }

   mapping(address=> uint) public balances;


   function mintToken(address addr, uint val) public {
    require(msg.sender==owner,"Only owner can mint tokens");
    totalSupply += val;
    balances[addr] += val;
   }


   function burnToken(address addr,uint val) public {
    if(balances[addr]<= val){
        revert("Transaction not possible!! Amount to be burn is greater than or equal to total amount");
    }else{
        totalSupply-=val;
        balances[addr]-=val;
    }
   }

   function getBalance() public view returns (uint256) {
       assert(totalSupply>=0);
        return totalSupply;
    }

}
