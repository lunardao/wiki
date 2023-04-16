# LunarDAO Architecture

**LunarDAO architecture is based on [Moloch V3](https://github.com/Moloch-Mystics/Baal) design, deployed by [DAOhaus](https://daohaus.club/moloch) and customized to fit LunarDAO governance.**

The design puts an emphasis on anonymity combined with permissionless entry for the initial Squad formation. Both are essential for a privacy oriented investment fund which aims to develop infrastructure for parallel economy. 

## Contracts

LunarDAO Treasury: [0x59F77dC848C2E45B5954975ee1969e7A22fA25F6](https://app.safe.global/settings/setup?safe=eth:0x59f77dc848c2e45b5954975ee1969e7a22fa25f6) \
Moloch V3 DAO (LunarDAO Governance): [0x747DA68Facd1459E9D9b8f928418DA30769D3Ba1](https://etherscan.io/address/0x747DA68Facd1459E9D9b8f928418DA30769D3Ba1) \
Sentinels' Safe (5/8 multi-sig): [0x622066aBA170c185c28cED6E7ccd1cB2047ef6ef](https://app.safe.global/home?safe=eth:0x622066aBA170c185c28cED6E7ccd1cB2047ef6ef) \
LunarDAO Stewards' Safe (core-team, founders): [0xAb501a8Eb58c9780eb04D683feB504fcE391A2DD](https://app.safe.global/home?safe=eth:0xAb501a8Eb58c9780eb04D683feB504fcE391A2DD) \
$VOX (voting token/treasury shares): [0x33e6ded5073f512475e17b5f19dda90d9a782478](https://etherscan.io/address/0x33e6ded5073f512475e17b5f19dda90d9a782478) \
$VOX-LOOT (non-voting token/shares): [0x94fadf770e44b7bc872fc712e4ba6aaf096fcba7](https://etherscan.io/address/0x94fadf770e44b7bc872fc712e4ba6aaf096fcba7)  
Genesis Event Onboarder Shaman: [0xFd7f0D849c1820F066aD1DEa8c8B90A59cA51Ef0](0xFd7f0D849c1820F066aD1DEa8c8B90A59cA51Ef0)

## On-chain vs Multi-sig

As mentioned in the [governance](https://github.com/lunardao/dao#sentinels) chapter, LunarDAO deployed a [Sentinel multi-sig](https://app.safe.global/home?safe=eth:0x622066aBA170c185c28cED6E7ccd1cB2047ef6ef) as a veto agent. At the same time the DAO architecture itself is based on [Moloch V3 primitive](https://github.com/lunardao/dao#moloch-v3) with a full on-chain execution. This contradiction is solved by a design where the main [LunarDAO treasury](https://app.safe.global/settings/setup?safe=eth:0x59f77dc848c2e45b5954975ee1969e7a22fa25f6) is a Gnosis Safe with two signers of which only one is needed for an execution (1/2). The two signers are:

1. [LunarDAO Squad](https://github.com/lunardao/dao#squad): a [Moloch V3 DAO](https://github.com/lunardao/dao#moloch-v3), [0x747DA68Facd1459E9D9b8f928418DA30769D3Ba1](https://etherscan.io/address/0x747DA68Facd1459E9D9b8f928418DA30769D3Ba1)
2. [LunarDAO Sentinels](https://github.com/lunardao/dao#sentinels): [Gnosis safe (5/8) multi-sig](https://app.safe.global/home?safe=eth:0x622066aBA170c185c28cED6E7ccd1cB2047ef6ef)

In this setup all the proposals are submitted, voted upon and (after grace period) executed on-chain without any Sentinels interaction. Only in the case of a [malicious proposal](https://github.com/lunardao/dao#sentinels), the Sentinels can step in and reject the proposal. Five Sentinel members must sign a veto in their [safe](https://app.safe.global/home?safe=eth:0x622066aBA170c185c28cED6E7ccd1cB2047ef6ef) in order to make such execution in the LunarDAO treasury. 

![](./pics/diagram_treasury.png)

## Moloch v3

Based on the discussions with the allies & the community, the most feasible way for the LunarDAO architecture to meet its aim, was chose [MolochDAO V3](https://github.com/Moloch-Mystics/Baal) primitive, designed by [DAOhaus](https://daohaus.club/moloch) and customized to fit LunarDAO governance architecture. The Moloch V3 contracts have much more optionality on both the initial setup and throughout the DAO life time in comparison to Moloch V2. V3 is also easier to set up and launch upon, using existing UI and implement changes on the fly, in a more democratic manner (based on community discussions and squad vote).

*Anatomy of a Moloch V3 DAO in DAOhaus. Courtesy of [DAOhaus](https://daohaus.club/moloch)* 

![](./pics/moloch_v3_anatomy_daohaus.png)

## Terminology

*For full description read [Governance](https://github.com/lunardao/dao#governance) above.*

* **Community:** Anyone engaging on the forum & chats. To be a member of the community does NOT grant voting/governance power.
* **Squad:** DAO members holding shares, voting power.
* **Sentinels:** Eight guardians ([multi-sig](https://lunardao.net/sentinel-committee-announcement.html)) of the DAO treasury.
* **Stewards:** [Anonymous](https://lunardao.net/why-anon.html) core-team/founders of the DAO, securing operations (can be exchanged, archived, scaled up).
* **Committees:** Working groups with a specific focus (research, media, education).
