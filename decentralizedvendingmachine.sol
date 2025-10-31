// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DecentralizedVendingMachine { 
    address public owner; 
    uint public itemPrice = 0.001 ether; // Set a low price for testnet 
    uint public inventory = 10; // Initial stock of items

    // The contract owner is set upon deployment
    constructor() {
        owner = msg.sender;
    }

    // Function 1: Buy an item
    function buyItem() public payable {
        require(msg.value >= itemPrice, "Insufficient payment sent.");
        require(inventory > 0, "Item out of stock.");
        
        inventory--; // Decrement stock
        
        // Refund any excess Ether
        if (msg.value > itemPrice) {
            payable(msg.sender).transfer(msg.value - itemPrice);
        }
    }

    // Function 2: Refill the inventory (Only owner can call)
    function refill(uint _amount) public {
        require(msg.sender == owner, "Only the owner can refill inventory.");
        inventory += _amount;
    }

    // [Function 3: Withdraw funds (not shown, but would go here)]
    
} 
