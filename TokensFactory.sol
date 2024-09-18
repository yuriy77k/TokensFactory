// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts@4.9.0/token/ERC20/ERC20.sol";

contract MockToken is ERC20 {
    constructor(string memory _name, string memory _symbol, uint256 amount, address recipient) ERC20(_name, _symbol) {
        _mint(recipient, amount * (10 ** uint256(decimals()))); // Mint 1 billion tokens to deployer
    }
}

contract TokensFactory {

    // create token contract and mint `amount` of tokens to caller
    function createToken(string memory name, string memory symbol, uint256 amount) external returns(address token){
        token = new MockToken(name, symbol, amount, msg.sender);
    }

    // create token contract and mint 1 billion tokens to caller. Token symbol = name
    function createToken1B(string memory name) external returns(address token){
        token = new MockToken(name, name, 1e9, msg.sender);
    }
}