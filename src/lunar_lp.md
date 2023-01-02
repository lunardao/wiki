# LUNAR liquidity provider

*These protocols can be changed by a LunarDAO Squad decision (LIP + vote)*

Liquidity providing - mechanics and rewards:

* At launch 4% of $LUNAR total supply (8% of circulating supply) and 8% of all collected ETH will be locked to a Protocol Owned Liquidity (POL) Pool for 2 years. 
* This pool allows to trade $LUNAR/ETH pair and is fully managed the LunarDAO Squad. 
* 8% of $LUNAR emissions will go directly to this POL as well. All the the fees and rewards by default go directly to LunarDAO treasury.  
* Anyone can stake ETH/LUNAR pair - join this liquidity pool and earn the fees and premium rewards.

The specifics of the Protocol Owned Liquidity.

* Provides market liquidity by staking two tokens to a pool: $LUNAR and ETH.
* Opens at launch and locked for 2 years.
* POL is based on deterministic algorithm (automated market maker) used by other decentralized trading protocols.
	- The weights are fixed - trade changes the value of each staked token (the pice of $LUNAR changes based on supply and demand).
* The LunarDAO Squad can decide to open other Liquidity Pool, Liquidity Bootstrapping Pool (LBP) or reversed LBP (rLBP) to have a better control over their native token and potential price. In such scenario a weight in the pool is programmed to shift with time to incentivize some of the token metrics to grow or decline. (LBPs and rLBPs are based on Balancer AMM mechanism called Liquidity Bootstrapping Pool - read [here](https://docs.balancer.fi/products/balancer-pools/liquidity-bootstrapping-pools-lbps) and [here](https://tokenomicsdao.xyz/blog/articles/reverse-liquidity-bootstrapping/) and [here](https://tokenomicsdao.substack.com/p/tokenomics-101-balancer).
* At launch the LUNAR/ETH POL pool weight balance will be set to 50:50 at launch.
* Everyone can participate in providing liquidity in POL and earn rewards.
* Traders pay small fees using the LP. This fee on LUNAR/ETH pool is set at launch to be 0.5% when buying $LUNAR and 1% when selling $LUNAR. 
	* The fees at launch are distributed: 99% to LP providers and 1% for Dev maintanance. 
	* This mechanism rewards LP providers more when traders sell as their staked $LUNAR value decreses.
	* The fee % and its allocation can be changed by the Squad (submit LIP and vote).
* Liquidity mining: Aditionally 10% of all $LUNAR emissions go to LP providers as a premium reward.	
* $LUNAR POL rewards are distributed according to the same locking conditions, voting benefits and staking reward ration according the locking time period as single asset staking pools. The longer period the LP provider locks the tokens into the pool, the larger ratio of rewards and $VOX token she gets.
* When staking in an LP pool, VOX tokens are minted and allocated to the LP provider based on the amount of $LUNAR in the staked pair LUNAR/ETH and the locking time period.
* $VOX minted when the inital POL is locked by the treasury are automatically burned as the treasury is not a subject of voting and the $VOX in the treasury would dilute the total amount of $VOX (votes).
* However every LP pool creates a unique market, the spot price of any LP pool reflects a global market price through arbitrages.


**LBP: value and weight calculation**

The Spot price (SP) formula in a pool where weights can shift over time is:

weight = value in usd terms
x = first asset (ie ETH)
y = second asset (ie $LUNAR)

SP = (amount x / weight x) / (amount y / weight y)
if weight x = weight y it means the pool is 50/50 and the SP = amount x / amount y 
