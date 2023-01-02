# Current LIP

LIP stands for LunarDAO Improvement Proposal. The LIP document is the primary mechanism to inform LunarDAO community about new proposals. These LIPs may propose changes in governance, guidelines, or rules and serve as the main reference for investment decisions. The LIP is a concise, explicit and technical specification on how to submit a proposal. Anyone who holds $100 $VOX or more (calculated in 7 days staking ratio) can submit an LIP. Current LIP and LIP-0001 is looking the same right now. In the future this might change as the community offers new proposals. Therefore we have category for how the original LIP looked like while still being able to see the most current version.

## LIP types

If the member wants to submit an LIP, which does not concern funds, it is *standard*, even if the category is not mentioned here. 

**Standard**: governance, protocol changes, guidelines, rules

**Investment**: treasury allocation, project support, fundraising

## LIP status

- **Proposal**: The LIP is submitted and a discussion in the community is initiated. The author can develop perspectives and motivations for the proposal with the community and answer questions. The author will develop the proposal based on the community feedback. 
- **Accepted**: Accepted proposal can concern treasury and be directly executed. If it's unrelated to treasury, the decision will be implemented by the committee responsible for implementation, and is coordinated by Stewards.
- **Rejected**: The proposal should follow due process for voting, or be automatically rejected. At least 50% + 1 $VOX is needed (of total amount of $VOX which is participating in voting) for a proposal to be approved.

If LunarDAO Community and Squad members have expressed criticisms and evaluated the proposal to be non-aligned with community sentiment, or unsupported, the author should consider re-writing the LIP or decide to not proceed to snapshot voting. 

## Voting

Submit the finalized LIP, the date and time of the vote. Update status and vote date in the header, announce on the forum - the vote should be announced a minimum of 7 days ahead of time. The vote shall be open for 48h and will be done through snapshot. At least 50% + 1 $VOX (of total amount of $VOX which is participating in voting) is needed for a proposal to be approved, else the proposal is rejected.

## Template for proposals 

**Every LIP draft should contain these parts:**

- **Header**: Includes title, LIP type, author, email address, date, status, vote date. The status and voting date must be updated on the final version of LIP

- **Summary**: A short description of the proposal. Reference to previous proposals.

Some LIPs will be continuously developed, such as LIP-0001. In these cases, for transparency and context, the author can write a reference to a previously accepted proposals by using the LIP number.

- **Problem**: Describe why the proposal is needed

- **Solution**: Describe the proposal and what solution it will bring for the DAO

- **Implementation**: What resources or action is needed to be able to implement the proposal

- **Community input**: The final version of the LIP, before voting, must also contain a link to community discussions on the proposal.

**An LIP which is type Investment, afforementioned, also needs to include the following**:

* Value to the ecosystem (knowledge, tools etc)
* Requested size of support in terms of USD 
* Offered amount of X tokens (if the project is monetary based)
* Time period needed for execution or expected time of launch (when Token becomes liquid)
* Is team X supported by private investors or VCs, other DAOs (or plans to) or just LunarDAO?
* If yes: In which size and what is the price of token T to other supporting subjects? 	   (Share the cap table if applicable)
* If project X is token based: detail T tokenomics
* Wallet address to recieve the support

### Style

- LIP shall be written in Markdown format.
- Contact refers to the authors nick on the community forum, Discourse.
- The header to be written in the following format, including these points:

```
---
title: LIP-<number>
LIP type: <standard/investment>
author: <name>
contact: <forum_alias>
date: <date created on, in ISO 8601 (yyyy-mm-dd) format>
status: <proposal/accepted/rejected>
vote date: <in ISO 8601 (yyyy-mm-dd) format>
---
```
