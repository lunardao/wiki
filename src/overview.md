# Governance

Access to resources is fundamental for everyone. Crypto provides the means for people to have power over their own resources. The concept of a DAO has been battle tested in all kinds of forms. LunarDAO aims to learn from the experiences of those before us. There is no single perfect format and stagnation leads to a dead end. A main limitation when pushing for changes is an inability to imagine the world we want to build. With curiosity, the frame of DAOs offers vast possibilities for progress and expansion. Anyone can join LunarDAO. It is a space where lunarpunks can come together, share ideas and knowledge, initiate and support projects, and build liberating tech in pursuit of autonomy.

## Community

A Community member is anyone who sees themselves as a part of the DAO mission; participates on the [forum](forum.lunardao.net), [ircd](https://wiki.lunardao.net/ircd.html), [telegram](https://t.me/LunarDAO_Official) and contributes to the development of the DAO through work or by sharing experiences, resources and proposals. No token is required to be a part of the community. Community members have no voting power.

## Squad

A LunarDAO Squad member is every community member who owns $VOX (shares). During fundraising event, anyone who buy $VOX can become a squad member. The minimum tribute is 0.1 ETH. $VOX represent the member's share of the treasury as well as voting power. LunarDAO Squad members can exit the DAO with their funds at any time through ragequit.

## Voting

LIP (LunarDAO Improvement Proposal) is the basis of governance in LunarDAO. Anyone can share and discuss proposals on the [forum](forum.lunardao.net). Only Squad members can submit and vote on proposals. In [LIP-0001](https://github.com/lunardao/lip/blob/main/lip-0001.md) there is a template and further information on the expected content and process. 

The sponsorship threshold is a minimum number of $VOX (10 $VOX which equals 0.1 ETH at launch) which is required to submit a proposal. This deposit is returned when the proposal have been accepted or rejected. Anyone else can submit a proposal by acquiring a sponsorship by offering a fee of 0.2 ETH which is non refundable and will be sent to the DAO treasury.

Proposals should be shared a week before the vote. Voting is open for 72h. The proposal is approved if 50% + 1 $VOX of the voting amount vote for, else it is rejected. It can also be rejected if Sentinels deem the proposal to be malicious. Voting is followed by a Grace period of 72h, during which squad members can ragequit should they disagree with the result of the voting.

## Delegation

Delegation is included in Moloch V3. Any Squad member can delegate their voting rights to others, whether they are DAO members or not. By doing this, the member no longer have governance rights, and cannot sponsor proposals. The delegate, if previously not a squad member, will become one and just like before $VOX (shares) will represent a share of the treasury as well as voting power.

## Minimum retention

To prevent dilution of assets, minimum retention is 33%. That means that if 33% of shares ragequitted a proposal during the grace period, the proposal will fail automatically as the original circumstances when the proposal was submitted, including access to funds, has changed dramatically. The squad can re-submit the proposal if they want to vote on it with the new circumstance.

## RageQuit

Ragequit enables squad members to exit with their funds, without penalty, if they do not agree with the result of a vote, or if they no longer want to be a part of the DAO. The designated time period in which members can ragequit after voting is called Grace period. Ragequit is possible no matter what the squad member voted on the proposal. This is an important function against malicious proposals and also a minority protection. With this function, all members are incentivized to bring forward proposals which are aligned with the community sentiment.

## Grace Period

The Grace period, which is 72h, is the time period during which members can Ragequit if they disagree with the result of a vote. At the end of the Grace Period, the proposal which has been voted on is processed by calling the processProposal function. It is the responsibility of Stewards to call this function.

## GuildKick

Guildkick allows the squad to remove a malicious member by forcing the them to ragequit. This is done by submitting a proposal which is then voted on. If this proposal is accepted by 50% + 1 $VOX, 100% of the shares owned by the squad member who is guildkicked is converted to loot and the member lose their voting power.

