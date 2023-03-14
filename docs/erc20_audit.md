## ERC20 token audit process

1. Decimals: If it's a DeFi protocol, I confirm whether it supports tokens with decimals != 18, and if so, ensure that the platform can handle these tokens correctly.
2. Zero address transfer: I ensure that the contract does not allow the transfer of tokens to a zero address.
3. Fee on transfer support: Confirm if the contract supports fees on transfer tokens, and if so, ensure that the fee calculation and collection mechanisms are functioning correctly.
4. If the contract has approve function that takes a token parameter: verify that it works with tokens that cannot be approved to zero (USDT) or that approval to zero is disabled.
5. Rebasing tokens support: Determine whether the contract supports rebasing tokens and, if so, ensure that the rest of the functionality supports that.
6. Determine what happens if a user is blacklisted from a token, and ensure that the protocol functionality is not affected by that.
7. Last, but not least - make sure the protocol uses any of the available safe transfer libraries.
