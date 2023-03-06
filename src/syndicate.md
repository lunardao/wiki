# Syndicate

Each fundraising cycle (possibly each investment) is treated as a separated entity, unique sub-DAO. Members joining in future fundraising events share a new treasury (sub-DAO or a guild) without an access to the investments from the past. All treasury related proposals have impact only on the separated guild/sub-DAO in which the proposing Squad member is at. The management/admin fee (0.5% for new members and per investment execution) is applied on each subDAOs.

There are cases in which all the votes across the subDAOs are seen as one DAO and vote on a decision together. In such cases the votes are counted and evaluated like if all the subDAOs were one DAO. Regardless of different investments in the subDAOs, every 1 $VOX = 1 vote. The scenarios include:

a) Overall Governance change proposal which has an impact on everyone (remove multi-sig, change number of Sentinels, change the whitepaper etc)

b) A core-team proposal to cover additional costs: If such proposal passes the payment is taken proportionaly to the token weights of the subDAOs (and their members).

If at least 50%+1 $VOX of total voting weight across the subDAOs is not for the proposal, the proposal is canceled, needs to be re-done.

(Alternatively the assets can be still pooled together but an on-chain Snapshot of $VOX at the time of the investment is taken. The DAO uses proxy tokens to track who had tokens at the time of investment. This greatly simplifies raising, because every new treasury is always ETH.)

**Genesis Event: DAO launch & the initial raise**

- Price: 100 $VOX (shares) = 1 ETH  
- Minimum tribute: To be decided as the the DAO launches as portfolio by default.  
- Permissionless entry  
- Contract has upper limit & time expiry; mints shares according to investors' tribute size, the price of everyone's shares is the same.

***Example***

In examples we will use place holders X, Y & Z for supported project and Tx, Ty & Tz for their tokens

In the real life scenario the amount of shares (the tribute) will be arbitrary per each member and some members will likely RageQuit with their funds. This example is simplified to get the understanding of the portfolio logic.

- 100 people join the Squad for 10 ETH each -> 1000 $VOX (shares) each.  
- Treasury net = 1000 ETH; 100 000 $VOX (shares) was minted.  
- The Squad invests 500 ETH to X in exchange for their token Tx. Deal is 1 ETH = 1000 Tx.  
- No-one RageQuits.  
- Treasury net = 500 ETH + 500 000 Tx, represented by 100 000 $VOX (shares).  
- Each member owns 1000 $VOX (shares) representing 5 ETH + 5000 Tx.

**Second LunarDAO raising event**

Because the new members joining another entity, separated from the initial DAO launch treasury, raise looks like the same like the Genesis Event. In such scenario each sub-DAO manages their funds on their own in parallel to each other.

**Overall Governance Changes**

Decisions regarding to the general governance is voted in all the sub-DAOs together and counted as one vote event.

***Example***

- Genesis event -> DAO launch -> 1m $VOX across 100 members.  
- Squad decided to not allow for future onboarding to the DAO and there is a strong community will to join LunarDAO.  
- New subDAO launches -> 500 000 $VOX across 50 members.  
- Proposal to remove multi-sig from the DAO execution -> vote will be in the overall DAO consisting of the sum of all $VOX in all subDAOs.  
- Total $VOX in all subDAOs = 150m.  
- 1/3 of the members vote = 500 000 votes  
    - a) 50% + 1 $VOX are for -> multi-sig gets removed  
    - b) 50% and less are for -> multisig stays

**LunarDAO operation funding proposal**

A core-team proposal to cover additional costs for the dministration, dev, ops, media, research etc. The proposal is for the entire LunarDAO (all the subDAOs). The votes are counted and evaluated like if all the subDAOs were one DAO. Regardless of different investments in the subDAOs, every 1 $VOX = 1 vote.

***Example***

- Genesis event -> DAO launches -> 1m $VOX minted between 100 members (10 000 ETH). 
- DAO invests in project X with 5 000 ETH -> Every $VOX (shares) represent 50% ETH and 50% token Tx.  
- Squad decided to not allow for future onboarding to the DAO and there is a strong community will to join LunarDAO.  
- New subDAO launches -> 1m $VOX minted between 1000 members (10 000 ETH).  
- There are 2 subdDAOs now.  
- The core team submits LIP to get 30 ETH funding for the work done. -> vote will be in the overall DAO consisting of the sum of all ETH in all subDAOs.  
- As the impact per member is on their ETH, the voting power it ETH weighted -> every subDAO 2 member has 2x voting power per $VOX as they have 2x bigger exposure to ETH than the subDAO 1 members.  
- If the vote passes 30 ETH are sent proportionaly to the ETH weights per each LunarDAO member.  
    - 10 ETH is sent from SubDAO 1 members in total.  
    - 20 ETH is sent from SubDAO 2 members in total.

**Summary**

- Every new raise cycle is unrelated to the previous investments.  
- New subDAOs mint $VOX (shares) for the same price like the previous ones, no bonding curve.  
- Old members are inaffected by the new members, no dillution, no more funds in the existing subDAOs.  
- Each member can be part of multiple sub-DAOs.  
- Decisions regarding to the general governance is voted in all the sub-DAOs together and counted as one vote event.  
- Core team additional funding. The asset proposed is a sum of all subDAOs sizes of that asset. Vote power is per the proposed asset weight per member.  
    - If agreed, the payment is sent proportionally to the token weights of the subDAOs and its members.
