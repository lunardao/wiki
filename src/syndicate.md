# Syndicate

Each fundraising cycle (possibly each investment) is treated as a separated entity, unique sub-DAO. Members joining in future fundraising events share a new treasury (sub-DAO or a guild) without an access to the investments from the past. All treasury related proposals have impact only on the separated guild/sub-DAO in which the proposing Squad member is at. The management/admin fee (0.25% for new members and 0.5 per investment execution) is applied on each subDAOs.  

There are cases in which all the votes across the subDAOs are seen as one DAO and vote on a decision together. In such cases the votes are counted and evaluated like if all the subDAOs were one DAO. Regardless of different investments in the subDAOs, every 1 $VOX = 1 vote. The scenarios include:

a) Overall Governance change proposal which has an impact on everyone (remove multi-sig, change number of Sentinels, change the whitepaper etc)

b) A core-team proposal to cover additional costs: If such proposal passes the payment is taken proportionally to the token weights of the subDAOs (and their members). 

If less than 50% + 1 $VOX of total voting weight across the subDAOs is for the proposal, the proposal is rejected.

*(Alternatively the assets can be still pooled together but an on-chain Snapshot of $VOX at the time of the investment is taken. The DAO uses proxy tokens to track who had tokens at the time of investment. This greatly simplifies raising, because every new treasury is always ETH.)*

**Genesis Event: DAO launch & the initial raise**

* Price: 100 $VOX (shares) = 1 ETH
* Minimum tribute: To be decided as the the DAO launches as portfolio by default.
* Permissionless entry
* Contract has upper limit & time expiry. mints shares according to investors' tribute size. The price of everyone's shares is the same.

***Example***

*In examples we will use place holders X, Y & Z for supported project and Tx, Ty & Tz for their tokens*

In a real life scenario the amount of shares (the tribute) will be arbitrary per each member and some members will likely RageQuit with their funds. This example is simplified to get the understanding of the syndicate logic.

* 100 people join the Squad for 10 ETH each -> 1000 $VOX (shares) each.
* Treasury net = 1000 ETH; 100 000 $VOX (shares) was minted.
* The Squad invests 500 ETH to X in exchange for their token Tx. Deal is 1 ETH = 1000 Tx.
* No-one RageQuits.
* Treasury net = 500 ETH + 500 000 Tx, represented by 100 000 $VOX (shares).
* Each member owns 1000 $VOX (shares) representing 5 ETH + 5000 Tx.

**Second LunarDAO raising event**

Because the new members joining another entity, separated from the initial DAO launch treasury, raise looks the same like the Genesis Event. In such scenario each sub-DAO manages their funds on their own in parallel to each other. 

**Overall Governance Changes**

Decisions regarding to the general governance is voted in all the sub-DAOs together and counted as one vote event.

***Example***

* Genesis event -> DAO launch -> 1m $VOX across 100 members
* Squad decided to not allow for future onboarding to the DAO and there is a strong community will to join LunarDAO.
* New subDAO launches -> 500 000 $VOX across 50 members
* Proposal to remove multi-sig from the DAO execution -> vote will be in the overall DAO consisting of the sum of all $VOX in all subDAOs.
* Total $VOX in all subDAOs = 150m. 
* 1/3 of the members vote = 500 000 votes
    - a) 50% + 1 $VOX are for -> multi-sig gets removed
    - b) 50% and less are for -> multisig stays

**LunarDAO operation funding proposal**

A core-team proposal to cover additional costs for the administration, dev, ops, media, research etcetera. The proposal can be approached in two different ways:  

* a) Divided budget proposals to each sub-DAO
* b) One proposal to one DAO conposed of all the sub-DAOs

**a)** The team divides the total sum of proposed budget between the sub-DAOs based on their weight of the given asset (ie ETH) and submits each of them as a separated proposal. The size of these proposals is calculated:

***SUM(total funding proposal ETH \* sub-DAO ETH weight / sumETH(all sub-DAOs))***

***Example a)***

* Genesis event -> DAO launches -> 1m $VOX minted between 100 members (10 000 ETH).
* DAO invests in project X with 5 000 ETH -> Every $VOX (shares) represent 50% ETH and 50% token Tx.
* Squad decided to not allow for future onboarding to the DAO and there is a strong community will to join LunarDAO.
* New subDAO launches -> 1m $VOX minted between 1000 members (10 000 ETH).
* There are 2 subdDAOs now.
* The core team submits LIP to get 30 ETH funding for the work done. -> ***the proposal size will be divided between the sub-DAOS and voted upon by each of them separately.***
* The division formula is:
    - Total ETH: SUM(all sub-DAOs ETH) = (sub-DAO1 ETH) + (sub-DAO2 ETH) = 5 000 + 10 000 = 15 000 ETH
    - Funding proposal = 30 ETH
    - Proposal to sub-DAO1 = total funding proposal ETH \* sub-DAO1 ETH / total ETH = 30 \* 5000 / 15 000 = 10 ETH
    - Proposal to sub-DAO2 = total funding proposal ETH \* sub-DAO2 ETH / total ETH = 30 \* 10000 / 15 000 = 20 ETH
* Core team submits 2 LIPs: 10 ETH to subDAO1 and 20 ETH to sub-DAO2
* Each of them vote separately according to the governance rules.
* Each sub-DAO and it's member votes as usual: 1 $VOX = 1 vote, the votes only impact the decision in the given sub-DAO.
* The core team may be supported by all, none or either of the existing sub-DAOs. 
* New proposals can be submitted per governance guidelines.

**b)** The votes are counted and evaluated like if all the subDAOs were one DAO. Regardless of different investments in the subDAOs. The vote would have to be based on the proposed asset weight per members' $VOX (shares), ie ETH if proposal is for ETH funding:  

***voting SUM(ETH weight / $VOX \* # $VOX)***

***Example b)***

* Genesis event -> DAO launches -> 1m $VOX minted between 100 members (10 000 ETH).
* DAO invests in project X with 5 000 ETH -> Every $VOX (shares) represent 50% ETH and 50% token Tx.
* Squad decided to not allow for future onboarding to the DAO and there is a strong community will to join LunarDAO.
* New subDAO launches -> 1m $VOX minted between 1000 members (10 000 ETH).
* There are 2 subdDAOs now.
* The core team submits LIP to get 30 ETH funding for the work done. -> ***The proposal will be submitted and voted upon in the parent DAO consisting of the sum of all ETH in all subDAOs.***
* As the impact per member is on their ETH, the voting power is ETH weighted 
* The vote calculation from all voting members: SUM(ETH weight/$VOX \* # $VOX)
    - sub-DAO1 member with 1000 $VOX (shares) = 0.5 / 1 \* 1000 = 500 votes
    - sub-DAO2 member with 1000 $VOX (shares) = 1 / 1 \* 1000 = 1000 votes
* In this example: Each subDAO2 member has 2x voting power per $VOX than sub-DAO1 member, as they have 2x bigger ETH weight and 2x bigger ETH exposure to than the sub-DAO1 members.
* The proposal in it's entirety either passes or not. 
* If the vote passes: 30 ETH are sent proportionally to the ETH weights per each LunarDAO member.
    * 10 ETH is sent from SubDAO 1 members in total.
    * 20 ETH is sent from SubDAO 2 members in total.

**Summary**

* Every new raise cycle is unrelated to the previous investments. 
* New subDAOs mint $VOX (shares) for the same price like the previous ones, no bonding curve.
* Old members are inaffected by the new members, no dilution, no more funds in the existing subDAOs.
* Each member can be part of multiple sub-DAOs.
* Decisions regarding the general governance is voted in all the sub-DAOs together and counted as one vote event.
* Core-team additional funding: Possible options to make one all-DAO proposal or divide them per sub-DAOs and their ETH weights. 

