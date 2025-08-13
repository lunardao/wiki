# Anonymizing assets

LunarDAO is focused on privacy oriented projects. This ethos permeates how you should participate in the DAO. Privacy techniques are strongly encouraged when interacting with the DAO, especially when interacting on Ethereum. Make sure to also DYOR. 

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

Consider using [NYM mixnet/VPN](https://nym.com/) to protect your IP address and metadata, [Tor browser](https://www.torproject.org/download/), [Geph](https://geph.io/en), 
[Proton VPN](https://protonvpn.com/download) or [Mullvad VPN](https://mullvad.net/en/pricing/) (note that VPNs change location, but doesn't necessarily protect metadata. DYOR) or run your own private node 
to submit transactions. Another option is to run operations on [Tails](https://tails.boum.org/install/) or in a [Virtual machine](https://wiki.lunardao.net/virtualbox_whonix.html).

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

## Anonymize assets using XMR

*Note: As shared above, network privacy is an important part of remaining undoxxed.*
*Note: Refer to our [Monero Privacy Guide](./monero.md) for a better detailed look into using Monero Privately*

Anonymizing assets when starting with ETH/BTC/USDT/LTC/USDC (and many more options) on a non-anon wallet.

1) Set up a Monero wallet on desktop or in a Virtual machine.  

2) Swap ETH/BTC/USDT/LTC/USDC (ERC20) to Monero (XMR) from non-anon wallet with:  

- [Wizard Swap](https://wizardswap.io)
- [Exolix](https://exolix.com)
- [Trocador](https://trocador.app/en)
- [Intercambio](https://intercambio.app)  
- [RetoSwap](https://retoswap.com/)
  
3) Send XMR to your new Monero wallet.

4) [Set up Metamask wallet](./fiat_to_crypto.md) on Tor browser (and [change RPC](https://wiki.lunardao.net/change_rpc.html)).

5) Swap back to ETH from XMR using options in step 2 and sent asset to the new wallet which was set up in step 4.  
