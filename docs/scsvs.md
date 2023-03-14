# 0x100 General

# G1: Architecture, design and threat modeling

## Control Objective

Architecture, design and threat modeling in the context of creating secure smart contracts.
Consider all possible threats before the implementation of the smart contract.

Ensure that a verified contract satisfies the following high-level requirements:
* All related smart contracts are identified and used properly,
* Specific smart contracts security assumptions are considered during the design phase.

Category “G1” lists requirements related to the architecture, design and threat modeling of the smart contracts.

## Security Verification Requirements

| # | Description |
| --- | --- |
| **G1.1** | Verify that every introduced design change is preceded by an earlier threat modeling. |
| **G1.2** | Verify that the documentation clearly and precisely defines all trust boundaries in the contract (trusted relations with other contracts and significant data flows).  |
| **G1.3** | Verify that the SCSVS, security requirements or policy is available to all developers and testers. |
| **G1.4** | Verify that the events for the (state changing/crucial for business) operations are defined. |
| **G1.5** | Verify that there exists a mechanism that can temporarily stop the sensitive functionalities of the contract in case of a new attack. This mechanism should not block access to the assets (e.g. tokens) for their owners. |
| **G1.6** | Verify that the amount of unused cryptocurrencies kept on the contract is controlled and at the minimum acceptable level so as not to become a potential target of an attack. |
| **G1.7** | Verify that if fallback function can be called by anyone, it is included in the threat modeling. |
| **G1.8** | Verify that the business logic in contracts is consistent. Important changes in the logic should be allowed for all or none contract. |
| **G1.9** | Verify that code analysis tools are in use that can detect potentially malicious code. |
| **G1.10** | Verify that the latest version of the major Solidity release is used. |
| **G1.11** | Verify that, when using the external implementation of contract, you use the current version which has not been superseded. |
| **G1.12** | Verify that when functions are overridden to extend functionality, the super keyword is used to maintain functionality. |
| **G1.13** | Verify that the order of inheritance is carefully specified. |
| **G1.14** | Verify that there is a component that monitors contract activity using events. |
| **G1.15** | Verify that the threat model includes whale transactions. |
| **G1.16** | Verify that the leakage of one person's private key does not compromise the security of the entire project. |

## References

For more information, see also:

* [Instant Threat Modeling - SecuRing](https://www.youtube.com/watch?v=IwR4PAmRhhg&list=PL-lO2xrptAtav4SZgCdDkVxChWhVU3kmP&index=18)
* [OWASP Threat Modeling Cheat Sheet](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Threat_Modeling_Cheat_Sheet.md)
* [OWASP Attack Surface Analysis Cheat Sheet](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Attack_Surface_Analysis_Cheat_Sheet.md)
* [OWASP Threat modeling](https://www.owasp.org/index.php/Application_Threat_Modeling)
* [Microsoft SDL](https://www.microsoft.com/en-us/sdl/)
* [NIST SP 800-57](https://csrc.nist.gov/publications/detail/sp/800-57-part-1/rev-4/final)
* [Use events to monitor contract activity](https://consensys.github.io/smart-contract-best-practices/recommendations/#use-events-to-monitor-contract-activity)
* [An example of superseded contract - EIP 1820](https://eips.ethereum.org/EIPS/eip-1820)

# G2: Policies and procedures

## Control Objective

Policies and procedures in the context of security of DeFi projects.
Think about possible situations and be prepared in case they arise. Act consciously and efficiently in accordance with a well-thought-out strategy.

Ensure that your project satisfies the following high-level requirements:
* Security procedures and policies are thought out and ready to use,
* Procedures and policies cover known and common threats from the past of other DeFi projects,
* Employees are familiar with the policies and procedures, and they know what they are responsible for.

Category “G2” lists requirements related to the policies, and procedures in the context of security of DeFi projects.

## Security Verification Requirements

| # | Description |
| --- | --- |
| **G2.1** | Verify that the system's security is under constant monitoring (e.g. the expected level of funds). |
| **G2.2** | Verify that there is a policy to track new security bugs and to update the libraries to the latest secure version. |
| **G2.3** | Verify that the contact to the security department is publicly disclosed and the procedure for handling reported bugs (e.g., thorough BugBounty platform) is defined. |
| **G2.4** | Verify that the process prior to adding new components to the system is defined. |
| **G2.5** | Verify that the process of major system changes involves threat modeling by an external company. |
| **G2.6** | Verify that the process of adding and updating components to the system includes a security audit by an external company. |
| **G2.7** | Verify that there is a clear and known procedure in place in the event of a hack. |
| **G2.8** | Verify that the procedure in the event of hack have defined individuals to execute required actions. |
| **G2.9** | Verify that the procedure includes alarming other projects about the hack through trusted channels. |
| **G2.10** | Verify that a procedure is defined in case one of the project's private keys is leaked. |
| **G2.11** | Verify that the project has an emergency contact with the external company that conducted the last audit. |

## References

For more information, see also:

* [Emergency Procedures - Yearn Finance](https://docs.yearn.finance/vaults/0.4.2/process-and-procedures/emergency)
* [Emergency tools - Yearn Finance](https://docs.yearn.finance/vaults/0.4.2/process-and-procedures/emergency#tools)
* [Emergency checklist - Yearn Finance](https://docs.yearn.finance/vaults/0.4.2/process-and-procedures/emergency#emergency-checklist)



# 0x200 Components

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

# 0x300 Integrations

# I1: Basic

## Control Objective

The spirit of composability introduces many integrations between different entities, creating complex and multi-level relationships at the same time. This environment can introduce complex logical vulnerabilities or issues related to bad assumptions due to too much trust in external components.

Ensure that the integration process satisfies the following high-level requirements:
* We integrate with a proven component that we consider trusted,
* Vulnerabilities identified in various Token implementations have been taken into account during implementation.

Category “I1” lists requirements related to each integration with any smart contract.

## Security Verification Requirements

| # | Description |
| --- | --- |
| **I1.1** | Verify if the team is known and can be held liable for abuses. |
| **I1.2** | Verify that the external contract you want to use has been audited. |
| **I1.3** | Verify that the external contract you want to use has been verified on blockchain explorer (e.g., etherscan).  |
| **I1.4** | Verify that the contract with which you are integrating has passed SCSVS. |
| **I1.5** | Verify that the address of the integrated contract is correct, up-to-date, and consistent with the project documentation. |
| **I1.6** | Verify if the external contract is upgradeable in a trusted manner. |
| **I1.7** | Verify that no untrusted party can change the contract's implementation. |
| **I1.8** | Verify that external contracts comply with the principle of minimum rights and that their access to special functions is enforced by the appropriate modifiers. |
| **I1.9** | Verify whether the structures (types) received from the external contract are known and handled. |
| **I1.10** | Verify that the smart contract attributes that can be updated by the external contracts (even trusted) are monitored (e.g. using events) and the procedure of incident response is implemented (e.g. the response to an ongoing attack). |
| **I1.11** | Verify that the external contracts (even trusted) that are allowed to change the attributes of the smart contract (e.g., token price) have the following limitations implemented: a threshold for the change (e.g. no more/less than 5%) and a limit of updates (e.g., one update per day). |
| **I1.12** | Verify that the address called via low-level call/delegatecall/staticcall exists (it will return *true* if the contract does not exist). |

# I2: Token

## Control Objective

If a project integrates with external Token smart contracts, it is necessary to approach them with limited trust and check that they do not introduce unexpected behavior into our system.

Ensure that a verified contract satisfies the following high-level requirements:
* Contract follows a tested and stable Token standard,
* The properties of the Token that we enter into our system are known and properly handled.
* Vulnerabilities identified in various Token implementations have been taken into account during implementation.

Category “I2” lists requirements related to the Token smart contract as one of the components with which the project integrates.

## Security Verification Requirements

| # | Description |
| --- | --- |
| **I2.1** | Verify if the external Token implementation is compliant with the standard implementation. |
| **I2.2** | Verify if the rules on which a new external Token can be added to the system have been defined (no restrictions, any tokens added by Governance, etc.).  |
| **I2.3** | Verify that the allowlist approach is used when only selected tokens are introduced to the system. |
| **I2.4** | Verify if the external Token implementation is non-standard (e.g. it is deflationary, or contains a fee), it has been taken into consideration. |
| **I2.5** | Verify that if the external Token implementation includes external calls, it has been taken into consideration (e.g., protection against reentrancy). |
| **I2.6** | Verify that the external Token magnitude (decimals) are known and that all operations are executed with the correct magnitude. |
| **I2.7** | Verify that the external Token supply is specified and corresponds to the documentation. |
| **I2.8** | Verify that the external Tokens of any user cannot be locked or frozen by any entity (e.g., owner). |
| **I2.9** | Verify that the reentrancy attack has been considered when using the token contracts with callbacks (e.g. ERC-777, ERC-721, ERC-1155). |
| **I2.10** | Verify that transfer of external Tokens has been successful, comparing the balances before and after it. |
| **I2.11** | Verify that project contracts handles correctly both types of tokens, those that return false on an error and those that revert. |
| **I2.12** | Verify that the contract reverts on failed transfer. |
| **I2.13** | Verify that the protocol handles double-entry tokens (tracking user balances in a contract represented by two addresses) correctly or forbids them. |
| **I2.14** | Use OpenZeppelin's SafeERC20 for interacting with ERC20 tokens. |

## References

For more information, see also:

* [Token Interaction Checklist Consensys](https://consensys.net/diligence/blog/2020/11/token-interaction-checklist/)
* [Token Integration Checklist ToB](https://github.com/crytic/building-secure-contracts/blob/master/development-guidelines/token_integration.md)
* [The Dangers of Token Integration](https://www.youtube.com/watch?v=6GaCt_lM_ak)
* [Token Implementation Best Practice](https://consensys.github.io/smart-contract-best-practices/tokens/)
* [iToken Duplication Incident Report](https://bzx.network/blog/incident)
* [The Dangers of Surprising Code](https://samczsun.com/the-dangers-of-surprising-code/)
* [ERC20 standard peculiarities](https://github.com/d-xo/weird-erc20)

# I3: Oracle

## Control Objective

If a project integrates with external Oracle smart contracts, it is necessary to approach them with limited trust and check that they do not introduce unexpected behavior into our system.

Ensure that a verified contract satisfies the following high-level requirements:
* Contract follows a tested and stable Oracle standard,
* The values transferred are additionally verified,
* Vulnerabilities identified in various Oracle implementations have been taken into account during implementation.

Category “I3” lists requirements related to the Oracle smart contract as one of the components with which the project integrates.

## Security Verification Requirements

| # | Description |
| --- | --- |
| **I3.1** | Verify that, when using Uniswap TWAP as a price oracle, the period is long enough to make its manipulation unprofitable for the attacker (compared to the funds at potential risk). |
| **I3.2** | Verify that Oracle data is up-to-date. |
| **I3.3** | Verify that no spot oracle is used (e.g. spot price from Uniswap pool). |
| **I4.4** | Verify that, when using Uniswap V3 TWAP as price oracle, liquidity is high enough and is distributed widely across most of the price range. |
| **I4.5** | Verify that, the use a decentralized off-chain oracles unsusceptible to on-chain price manipulation attacks (e.g. Chainlink) is considered for low liquidity asset, ideally combining it with on-chain oracles to detect malicious values. |

## References

For more information, see also:

* [The Dangers of Price Oracles in Smart Contracts](https://www.youtube.com/watch?v=YGO7nzpXCeA)
* [TWAP Oracle Manipulation Risks, Mudit Gupta - DeFi Security Summit 2022](https://www.youtube.com/watch?v=Mu8ytTyStOU)
* [TWAP Oracles After the Merge, Mark Toda - DeFi Security Summit 2022](https://www.youtube.com/watch?v=mqrCvNgBXUk)
* [So you want to use a price oracle](https://samczsun.com/so-you-want-to-use-a-price-oracle/)
* [Pricing LP tokens | Warp Finance hack](https://cmichel.io/pricing-lp-tokens/)
* [Uniswap V3 tick price manipulation](https://medium.com/@hacxyk/we-rescued-4m-from-rari-capital-but-was-it-worth-it-39366d4d1812)
