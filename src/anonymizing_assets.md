# Anonymizing assets

LunarDAO is focused on privacy oriented projects. This ethos permeates how you should participate in the DAO. Privacy techniques are strongly encouraged when interacting with the DAO. Make sure to also DYOR. 

**Privacy leaks**

Each piece of information that a user gives up degrades their privacy. Achieving anonymity on a transparent chain is extremely difficult. 

Privacy degradation stems from:

- Doxxed addresses
- Network leaks
- Side channel attacks

LunarDAO participants should solve for all of these threats.

## Resources

If you are looking to participate in the DAO, a user should use anonmyzing privacy techniques BEFORE particpating in the DAO. Here are two guides that give information about how to best anonymize your ETH using tools like Tornado cash and off-chain strategies. 

### Protect network pivacy and metadata

Consider using [NYM mixnet](https://nymtech.net/) to protect your IP address and metadata, [Tor browser](https://www.torproject.org/download/), [Geph](https://geph.io/en), [Proton VPN](https://protonvpn.com/download) or [Mullvad VPN](https://mullvad.net/en/pricing/) (note that VPNs change location, but doesn't necessarily protect metadata. DYOR) or run your own private node to submit transactions. Another option is to run operations on [Tails](https://tails.boum.org/install/) or in a [Virtual machine](https://wiki.lunardao.net/virtualbox_whonix.html).

Your IP address and the wallet software has the ability to de-anonymize a user. If the software or software provider can collect the information, assume it **is** collecting the information. 

**ETH Node**

If you have the ability to run an ETH node, you should do so before transmitting any transaction. If you end up running your own node be sure to change your wallet software to your RPC.

Running a node:

- [How to sync an Etherum node via Tor](http://medium.com/@oaeee/how-to-sync-an-ethereum-node-via-tor-755534775ae1)
- [Spin up your own Etherum node](https://ethereum.org/en/developers/docs/nodes-and-clients/run-a-node/#reaching-rpc)
- [Random list of healthy seed nodes](https://ethernodes.org/tor-seed-nodes)

**RPC Settings**

If you don't run a node, you should still change your RPC to a more private option.

- How to [change your RPC](https://wiki.lunardao.net/change_rpc.html) in Metamask.

Potential RPC options:

- [SecureRpc](https://securerpc.com/)
- [zmok.io](https://zmok.io/) - allows use of tor nodes

Of course aim to use a provider you can trust. The endpoint maintained by Paralelní Polis community is free for anyone to use: `https://bordel.xyz`.

## Anonymize assets using ETH

1) Add Metamask extension/add-on to Tor Browser (it will say it's for Firefox, but it will work anyway).  
*Note: always protect your network privacy. See above.*

- NEVER use same wallet which you have used for doxxed crypto and do no not use this wallet going forward with doxxed crypto. This wallet should be completely separate from any other activity you've done on-chain or off. 

2) Create two new Metamask accounts on Tor browser. Only use these accounts with Tor browser. See steps in [Fiat to crypto](./fiat_to_crypto.md) 'Set up metamask wallet'.

3) Anonymize your assets by using [Firn](https://app.firn.cash/) and send to your new account.

Remember:  
- Don't withdraw immediately after depositing.  
- Don't withdraw the exact same amount you deposited.  
- Don't withdraw to a previously used address.

- [Here](https://docs.firn.cash/overview/using-firn) is a user guide.  

## Anonymize assets using XMR

*Note: As shared above, network privacy is an important part of remaining undoxxed.*

When starting with ETH/BTC/USDT/LTC/USDC (and many more options) on non-anon wallet.

1) Set up a Monero wallet on desktop or in a Virtual machine.  

2) Swap ETH/BTC/USDT/LTC/USDC (etcetera) to Monero (XMR) from non-anon wallet with:  

- [Fixed float](https://fixedfloat.com)  
- [Trocador](https://trocador.app/en)  
- [Change now](https://changenow.io)  
- [Sideshift](https://sideshift.ai)    

3) Send XMR to your new Monero wallet.

4) [Set up Metamask wallet](./fiat_to_crypto.md) on Tor browser (and [change RPC](https://wiki.lunardao.net/change_rpc.html)).

5) Swap back to ETH from XMR using options in step 2 and sent asset to the new wallet which was set up in step 4.  
  
## Anonymize assets using BTC    
  
*Note: Bitcoin is a transparent UTXO based chain. Any privacy obfuscation you've performed is visible on-chain. The process described below provides plausible deniability for the user.
  
If you want to keep your assets in BTC, you can use coinjoin to break the previous bitcoin on-chain history.  
  
1) Setup a [Samourai wallet](https://samouraiwallet.com/). The best practice is that you should use your own node for this practice. [Ronindojo](https://ronindojo.io/) is a node package that has great compatibility with Samourai wallet.  
  
2) Send BTC to your samourai wallet and coinjoin your BTC. The user has a variety of UTXO denominations to choose from.  You can obtain a larger anonymity-set by keeping your BTC coinjoining for more rounds.  
  
3) If you are spending, you have the ability to perform a 2-person collaborative coinjoin with another user via their spend tool called Stonewall2x. This makes the spend transaction look more confusing on-chain.

4) If looking to receive donations or publicly post a static bitcoin address, consider using the samourai wallet feature called paynym. The sending/receiving wallet must be compatible with the Paynym standard. Paynyms are a stealth address built on bitcoin.
