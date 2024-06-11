Overview

The ErrorHandling smart contract is an example of a Solidity contract that demonstrates the use of error handling statements: require(), assert(), and revert(). This repository contains a simple smart contract written in Solidity for performing basic arithmetic operations. The contract includes functions for multiplication, division, addition, subtraction, and checking if a number is even.


Error Handling

require(): Used to ensure that certain conditions are met before executing the function logic. If the condition is not met, the transaction is reverted, and an optional error message is provided.

revert(): Explicitly reverts the transaction with a provided error message. It is used to handle custom error conditions.

assert(): Used to check for conditions that should never be false. It is typically used for internal error checking and invariants.

Contract Functions:

multiply(uint a, uint b) public pure returns (uint)

Multiplies two unsigned integers and returns the product. Throws an error if either argument is zero.

divide(uint a, uint b) public pure returns (uint)

Divides the first unsigned integer by the second and returns the quotient. Throws an error if the second argument is zero.

add(uint a, uint b) public pure returns (uint)

Adds two unsigned integers and returns the sum.

subtract(uint a, uint b) public pure returns (uint)

Subtracts the second unsigned integer from the first and returns the difference. Throws an error if the result would be negative.

isEven(uint number) public pure returns (bool)

Checks if a number is even and returns true if it is, false otherwise.




Deployment: Deploy the contract using a Solidity-compatible environment like Remix or Truffle.


