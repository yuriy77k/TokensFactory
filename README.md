# TokensFactory
Creates new token contract and mint to caller 1 billion tokens.

```Solidity
    // create token contract and mint `amount` of tokens to caller
    function createToken(string memory name, string memory symbol, uint256 amount) external;

    // create token contract and mint 1 billion tokens to caller. Token symbol = name
    function createToken1B(string memory name) external;
```

## Deployed
- Sepolia: https://sepolia.etherscan.io/address/0x77af008a0352013d929b72fd7d85a5a5db3f0bd6#writeContract
