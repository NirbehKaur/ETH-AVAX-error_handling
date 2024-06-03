Overview

The ErrorHandling smart contract is an example of a Solidity contract that demonstrates the use of error handling statements: require(), assert(), and revert(). This contract allows the owner to mint and burn tokens while ensuring proper error handling to maintain the integrity of the contract's state.


Error Handling

require(): Used to ensure that certain conditions are met before executing the function logic. If the condition is not met, the transaction is reverted, and an optional error message is provided.

revert(): Explicitly reverts the transaction with a provided error message. It is used to handle custom error conditions.

assert(): Used to check for conditions that should never be false. It is typically used for internal error checking and invariants.

Contract Details

State Variables

totalSupply (uint256): Tracks the total supply of tokens in the contract.

owner (address): Stores the address of the contract owner.

balances (mapping): Maps addresses to their respective token balances.

Constructor

The constructor initializes the contract by setting the owner to the address that deploys the contract and initializing the totalSupply to 0.

constructor() {

    owner = msg.sender;
    
    totalSupply = 0;
    
}


Functions
mintToken
Mints new tokens and assigns them to a specified address. Only the owner can call this function.


function mintToken(address addr, uint val) public {

    require(msg.sender == owner, "Only owner can mint tokens");
    
    totalSupply += val;
    
    balances[addr] += val;
}


burnToken
Burns tokens from a specified address if the address has sufficient balance.


function burnToken(address addr, uint val) public {

    if (balances[addr] <= val) {
    
        revert("Transaction not possible!! Amount to be burned is greater than or equal to total amount");
        
    } else {
    
        totalSupply -= val;
        
        balances[addr] -= val;
        
    }
}


getBalance
Returns the total supply of tokens. Uses assert to ensure the total supply is never negative.


function getBalance() public view returns (uint256) {

    assert(totalSupply >= 0);
    
    return totalSupply;
    
}

Usage

Deployment: Deploy the contract using a Solidity-compatible environment like Remix or Truffle.

Minting Tokens: Call mintToken(address, uint) with the recipient address and amount of tokens to mint. Only the contract owner can perform this action.

Burning Tokens: Call burnToken(address, uint) with the address and amount of tokens to burn. Ensure the address has enough tokens.

Checking Total Supply: Call getBalance() to get the current total supply of tokens.
