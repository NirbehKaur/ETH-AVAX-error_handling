/*For this project, write a smart contract that implements the require(), assert() and revert() statements.*/
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Calculator {

    function multiply(uint a, uint b) public pure returns (uint) {
        require((a!=0 && b != 0), "Multiplication of a number by 0 yields 0!!");
        uint product = a * b;
        return product;
    }

    function divide(uint a, uint b) public pure returns (uint) {
        require(b != 0, "Division by zero is not allowed!!");
        uint quotient = a / b;
        return quotient;
    }

    function add(uint a, uint b) public pure returns (uint) {
        uint sum = a + b;
        return sum;
    }

    function subtract(uint a, uint b) public pure returns (uint) {
        if(a>b){
            uint sub1= a-b;
            return sub1;
        }else{
            revert("Negative answer obtained!!");
        }
    }

    function isEven(uint number) public pure returns (bool) {
        assert(number >= 0);
        bool isEvenNumber = (number % 2) == 0;
        return isEvenNumber;
    }
}
