# C1: Token

## Control Objective

If a project contains a Token smart contract, it is necessary to follow the standard and create a secure contract based on it. Learn from past mistakes that have been identified and have solutions ready.

Ensure that a verified contract satisfies the following high-level requirements:
* Contract follows a tested and stable Token standard,
* Vulnerabilities identified in various Token implementations have been taken into account during implementation.

Category “C1” lists requirements related to the Token smart contract as one of the project components.

## Security Verification Requirements

| # | Description |
| --- | --- |
| **C1.1** | Verify that the token contract follows tested and stable Token standards. |
| **C1.2** | Verify that the security considerations of the standard used are known and handled by the team.  |
| **C1.3** | Verify that the total token supply matches the documentation. |
| **C1.4** | Verify that the number of minted and burned tokens does not disturb the operation of the system specified in the documentation. |
| **C1.5** | Verify that if the token contains a fee, its maximum value is predetermined and matches the documentation. |
| **C1.6** | Verify that the transfer business logic is consistent, especially when re-sending tokens to the same address (*from == to*). |
| **C1.7** | Verify that if the implemented functions include external calls, they are handled correctly and do not introduce unsafe external calls to the system. |
| **C1.8** | Verify that the *approve()* function from the ERC-20 standard change the allowed amount only to *0* or from *0*. |
| **C1.9** | Verify that the token does not have double entry point and does not track user balances in more than one smart contract. |

## References

For more information, see also:

* [Token Implementation Best Practice](https://consensys.github.io/smart-contract-best-practices/tokens/)
* [iToken Duplication Incident Report](https://bzx.network/blog/incident)
* [The Dangers of Token Integration](https://www.youtube.com/watch?v=6GaCt_lM_ak)

# C2: Governance

## Control Objective

If a project contains a Governance smart contract, it is necessary to follow the standard and create a secure contract based on it. Learn from past mistakes that have been identified and have solutions ready.

Ensure that a verified contract satisfies the following high-level requirements:
* Contract follows a tested and stable Governance standard,
* The project is managed by a DAO or a multisig contract,
* Vulnerabilities identified in various Governance implementations have been taken into account during implementation.

Category “C2” lists requirements related to the Governance smart contract as one of the project components.

## Security Verification Requirements

| # | Description |
| --- | --- |
| **C2.1** | Verify that Governance contract follows tested and stable Governance standards. |
| **C2.2** | (DAO) Verify that the governance contract is protected from the attacks that use flash loans. |
| **C2.3** | (DAO) Verify that the votes over taking actions by governance are counted correctly, following the documentation.  |
| **C2.4** | (DAO) Verify that the delays associated with the enforcement of actions are consistent with those described in the documentation. |
| **C2.5** | (DAO) Verify that the actions can only be performed after voting is completed (unless explicitly stated otherwise in the documentation).
| **C2.6** | (DAO) Verify that the actions can be performed only following the voting result (voted yes - must be performed, voted no or not obtaining the required number of votes - cannot be performed).
| **C2.7** | Verify that special actions that can be performed only by Governance are marked in the documentation. |
| **C2.8** | Verify that the Governance cannot do more than declared in the documentation. |
| **C2.9** | Verify that the ownership transfer is a 2-step process where the candidate accepts it in a separate transaction and the previous owner does not lose privileges until it is done. |
| **C2.10** | Verify that key operations on the Governance contract can only be performed with the appropriate permissions. Functions in this contract should not be available to general users.|

## References

For more information, see also:

* [Strategies for Secure Governance with Smart Contracts](https://www.youtube.com/watch?v=GbDAmMdmh8Q)
* [MakerDAO Governance Module](https://docs.makerdao.com/smart-contract-modules/governance-module)

# C3: Oracle

## Control Objective

If a project builds an Oracle smart contract, it is necessary to follow the standard and create a secure contract based on it. Learn from past mistakes that have been identified and have solutions ready.

Ensure that a verified contract satisfies the following high-level requirements:
* Contract follows a tested and stable Oracle standard,
* Manipulating the oracle's results is unprofitable and easy to detect,
* Vulnerabilities identified in various Oracle implementations have been taken into account during implementation.

Category “C3” lists requirements related to the Oracle smart contract as one of the project components.

## Security Verification Requirements

| # | Description |
| --- | --- |
| **C3.1** | Verify that the manipulation of the returned data by Oracle is unprofitable for the attacker. |
| **C3.2** | Verify that there are alerts set and monitored for large and sudden changes in the price feed. |
| **C3.3** | Verify if there is a way to mark the data as incorrect. |
| **C3.4** | Verify that the supply with incorrect data is penalized. |
| **C3.5** | Verify that the value (e.g., price for an asset) returned by oracle cannot be influenced in a single block. |

## References

For more information, see also:

* [ORACLES](https://ethereum.org/en/developers/docs/oracles/)
* [The Dangers of Price Oracles in Smart Contracts](https://www.youtube.com/watch?v=YGO7nzpXCeA)
* [So you want to use a price oracle](https://samczsun.com/so-you-want-to-use-a-price-oracle/)

# C4: Vault

## Control Objective

If a project builds a Vault smart contract, it is necessary to follow the standard and create a secure contract based on it. Learn from past mistakes that have been identified and have solutions ready.

Ensure that a verified contract satisfies the following high-level requirements:
* Contract follows a tested and stable Vault standard,
* Stores user funds securely,
* Vulnerabilities identified in various Vault implementations have been taken into account during implementation.

Category “C4” lists requirements related to the Vault smart contract as one of the project components.

## Security Verification Requirements

| # | Description |
| --- | --- |
| **C4.1** | Verify that the user's balance is updated based on funds received and not the funds declared to be sent. |
| **C4.2** | Verify that only the user has access to their funds unless they explicitly allow their funds to be managed. |
| **C4.3** | Verify that the user can safely withdraw their funds at any time, even during an emergency pause. |
| **C4.4** | Verify that if there is a Vault in the system, then users' funds are stored on it. |
| **C4.5** | Verify that shares are distributed in proportion to the user's deposited funds. |
| **C4.6** | Verify that the same amount of shares for different users allows the same amount of funds to be withdrawn. |
| **C4.7** | Verify that a user depositing the same amount earlier will get more rewards than the one who deposits the same amount later. |
| **C4.8** | Verify that depositing rounds down the assets and withdrawing rounds up. |
| **C4.9** | Verify that the transferred amount is confirmed by checking balances before and after the deposit if the vault is going to support fee-on-transfer tokens (or any token is allowed). |
| **C4.10** | Verify that the vault is allowed to transfer tokens only from *msg.sender* to prohibit stealing from users who approved the vault contract. |
| **C4.11** | Verify that the deposit and withdraw business logic is consistent and symmetrical, especially when re-sending tokens to the same address (*from* == *to*). |


## References

For more information, see also:

* [Vault | Solidity 0.8](https://www.youtube.com/watch?v=HHoa0c3AOqo)
* [EIP-4626](https://eips.ethereum.org/EIPS/eip-4626)
* [ERC4626 Tokenized Vault Standard](https://academy.apeworx.io/articles/erc-4626-tokenized-vault-standard)
* [Securing ERC4626 Implementations](https://www.youtube.com/watch?v=5KVD7EX6HWQ)
* [Yearn Finance Vault Audit](https://github.com/yearn/yearn-security/blob/master/audits/20210719_ToB_yearn_vaultsv2/ToB_-_Yearn_Vault_v_2_Smart_Contracts_Audit_Report.pdf)

# C5: Bridge

## Control Objective

If a project contains a Bridge smart contract, it is necessary to follow the standard and create a secure contract based on it. Learn from past mistakes that have been identified and have solutions ready.

Ensure that a verified contract satisfies the following high-level requirements:
* Contract follows a tested and stable Bridge standard,
* It is impossible to abuse the signature verification logic,
* Potential threats related to bridges are taken into consideration.

Category “C5” lists requirements related to the Bridge smart contract as one of the project components.

## Security Verification Requirements

| # | Description |
| --- | --- |
| **C5.1** | Verify that bridge requires all necessary values to be included in the message and signed: chain ids, receiver, amount, nonce. |
| **C5.2** | Verify that used signatures are invalidated to protect the bridge from replay attacks. |
| **C5.3** | Verify that the message hash generation algorithm is resistant to collision attacks. |
| **C5.4** | Verify that bridge includes source and destination chain identifiers in the signed message and correctly verifies them. |
| **C5.5** | Verify that bridge does not allow spoofing chain identifiers. |
| **C5.6** | Verify that bridge uses a nonce parameter to prevent the same operation (the same sender, receiver, and amount) to be executed multiple times. |
| **C5.7** | Verify that signed message cannot be used in a different context (use domain separator from EIP-712). |
| **C5.8** | Verify that the case of 0 being returned by ecrecover function is handled securely. |
| **C5.9** | Verify that privileged contracts are separated from cross-chain relay calls. Attacker should not be able to cross-call the privileged contract. |
| **C5.11** | Verify each supported blockchain's finality is taken into account when settling relay calls. |
| **C5.12** | Verify that bridge disregards calls originating from different function than designed. |
| **C5.13** | Verify that bridge requires adequate amount of fees to process the message. |
| **C5.14** | Verify that the maximum gas consumption for relayed messages is limited or fully backed by sender (e.g., in terms of fee). |

## References
For more information, see also:
* [EEA Crosschain Security Guidelines Version 1.0](https://entethalliance.github.io/crosschain-interoperability/crosschainsecurityguidelines.html)
* [Open problems in cross-chain protocols](https://arxiv.org/pdf/2101.12412.pdf)
* [Cross Chain Awareness](https://docs.openzeppelin.com/contracts/4.x/api/crosschain)
* [The Dark Side of DeFi: Cross-Chain Bridge Hacks](https://quantstamp.com/blog/the-dark-side-of-defi-cross-chain-bridge-hacks/)
* [What Are Cross-Chain Smart Contracts?](https://blog.chain.link/cross-chain-smart-contracts/)
* [Aurora Inflation Spend Bugfix Review](https://medium.com/immunefi/aurora-infinite-spend-bugfix-review-6m-payout-e635d24273d)
* [WORMHOLE - REKT](https://rekt.news/wormhole-rekt/)
* [RONIN NETWORK - REKT](https://rekt.news/ronin-rekt/)
* [EIP-712: Ethereum typed structured data hashing and signing](https://eips.ethereum.org/EIPS/eip-712)
* [Learn EVM attacks - Bridges](https://github.com/coinspect/learn-evm-attacks#bridges)
* [Awesome Interoperability - bridges](https://docs.nomad.xyz/resources/awesome-interoperability)
* [PolyNetwork hack - privilege escalation via cross-chain call](https://research.kudelskisecurity.com/2021/08/12/the-poly-network-hack-explained/)

# C6: NFT

## Control Objective

If a project builds an NFT smart contract, it is necessary to follow the standard and create a secure contract based on it. Learn from past mistakes that have been identified and have solutions ready.

Ensure that a verified contract satisfies the following high-level requirements:
* Contract follows a tested and stable NFT standard,
* Vulnerabilities identified in various NFT implementations have been taken into account during implementation.

Category “C6” lists requirements related to the NFT smart contract as one of the project components.

## Security Verification Requirements

| # | Description |
| --- | --- |
| **C6.1** | Verify that the source code of the NFT implementation is available on explorer. |
| **C6.2** | Verify that all necessary functions and events are present, have consistent types and all functions emit the proper events in order to follow the ERC standard. |
| **C6.3** | Verify that predefined solidity methods (such as block.timestamp, block.coinbase, or blockhash) are not used as a source of entropy for generating random numbers. |
| **C6.4** | Verify that project inform users to adjust the gas limit depending on the number of NFTs they want to mint, as digital wallets set default maximum gas limits which may not be sufficient and could result in wasted ether for reverted transaction. |
| **C6.5** | Verify that the re-entrancy attacks are mitigated by following Checks-Effects-Interaction pattern, in case of using the standard ERC721 safeMint function calls the onERC721Receiver function on the receiver address. |
| **C6.6** | Verify that in case of NFT sales where metadata is publicly accessible during the sale, the process is divided into two separate transactions. Ensure that the empty token is minted in the first transaction, but the NFT metadata is assigned in the second, pseudo-randomly. |
| **C6.7** | Verify that the potential attacker does not have any profit (e.g., special NFT being minted) from sending multiple transactions to the NFT contract (even though paying for gas). |
| **C6.8** | Verify that the Inter Planetary File System (IPFS) is used to store all metadata of NFTs on-chain.|
| **C6.9** | Verify that the ERC712 standard is implemented for signature verification (instead of custom usage of *eth_sign* and *personal_sign* functions). |

## References

For more information, see also:

* [NFT Attack Vectors](https://github.com/Quillhash/NFT-Attack-Vectors)

# C7: Liquid staking

## Control Objective

If a project manages liquid staking, it is necessary to follow the standard and create secure contracts based on it. Learn from past mistakes that have been identified and have solutions ready.

Ensure that a verified contract satisfies the following high-level requirements:
* Contracts follow best security practices for liquid staking,
* Rewards for users are distributed accordingly to promises,
* Potential threats related to liquid staking are taken into consideration.

Category “C7” lists requirements related to the liquid staking smart contracts as  project components.

## Security Verification Requirements

| # | Description |
| --- | --- |
| **C7.1** | Verify that the rewards mechanism for staked tokens is implemented correctly, and that rewards are distributed fairly and proportionally to all stakers. |
| **C7.2** | Verify that all rewards and fees values are in accordance with the documentation. |
| **C7.3** | Verify that the rewards mechanism is protected against manipulation or exploitation by malicious actors, such as those who attempt to stake large amounts of tokens to gain an unfair advantage. |
| **C7.4** | Verify that during the first stake (when pool is empty) appropriate amount of tokens is received by the user. |
| **C7.5** | Verify that the staking protocol has appropriate controls in place to prevent unauthorized access to the staked coins and the system's infrastructure. |
| **C7.6** | Verify that the protocol has a mechanism for detecting and preventing any attempts at "double-staking" or "stake grinding". |
| **C7.7** | Verify that there is a mechanism in place to detect and prevent any attempts at "staking pool front-running," where a malicious staking pool operator can manipulate the rewards mechanism to their advantage. |
| **C7.8** | Verify that user bond is sufficient to cover protocol risks. |
| **C7.9** | Verify that the rewards mechanism is protected against "slashing attacks" where a malicious actor attempts to cause other stakers to lose their rewards by attempting to vote for multiple validators at once. |
| **C7.10** | Verify that the protocol has a way to handle the situation where a validator goes offline or becomes unresponsive. |
| **C7.11** | Verify that the protocol has a way to handle the situation where a validator is found to be compromised and their private keys are leaked. |


## References
For more information, see also:
* [Distributed validator specs](https://github.com/ethereum/distributed-validator-specs)
* [Distributed Validators: Improving Staking No Matter Your ETH Balance](https://www.youtube.com/watch?v=zSt6McTVNVE)
* [MAXIMAL EXTRACTABLE VALUE (MEV)](https://ethereum.org/en/developers/docs/mev/)
