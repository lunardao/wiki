# Anonymizing assets

LunarDAO is focused on privacy-preserving projects. This ethos permeates how you should participate in the DAO. Privacy techniques are strongly encouraged when interacting with the DAO. 

**Privacy leaks**

Each piece of information that a user gives up degrades their privacy. Achieving anonymity on a transparent chain is extremely difficult. 

Privacy degradation stems from:

- Doxxed addresses
- Network leaks
- Side channel attacks

LunarDAO participants should solve for all of these threats.

## Resources:

If you are looking to participate in the DAO, a user should use anonmyzing privacy techniques BEFORE particpating in the DAO. Here are two guides that give information about how to best anonymize your ETH using tools like zk.money and off-chain strategies. Consider using [NYM mixnet](nymtech.net) to protect your IP address and metadata or your own private node to submit transactions.
- [Nexus, Black Sky](https://nexus.blacksky.network/zine/00000000/how-to-anonymize-eth)
- [xanny.eth](https://mirror.xyz/xanny.eth/SGxwfVQ75831z5vFaS1LrlatUJEhxBvZ2cyTvAdCD0k)

Your IP address and the wallet software has the ability to de-anonymize a user. If the software or software provider can collect the information, assume it **is** collecting the information. 

**ETH Node**

If you have the ability to run an ETH node, you should do so before transmitting any transaction. If you end up running your own node be sure to change your wallet software to your RPC.

Running a node:

- [How to sync an Etherum node via Tor](http://medium.com/@oaeee/how-to-sync-an-ethereum-node-via-tor-755534775ae1)
- [Spin up your own Etherum node](https://ethereum.org/en/developers/docs/nodes-and-clients/run-a-node/#reaching-rpc)
- [Random list of healthy seed nodes](https://ethernodes.org/tor-seed-nodes)

**RPC Settings**

If you don't run a node, you should still change your RPC to a more private option.

How to change your RPC in wallet software: 

- [How to change Ethereum's RPC](https://docs.llama.fi/chainlist/how-to-change-ethereums-rpc)
- [How to add a custom network RPC](https://metamask.zendesk.com/hc/en-us/articles/360043227612-How-to-add-a-custom-network-RPC)

Potential RPC options:

- [SecureRpc](https://securerpc.com/)
- [zmok.io](https://zmok.io/) - allows use of tor nodes

Of course aim to use a provider you can trust. The endpoint maintained by Paralelní Polis community is free for anyone to use: `https://bordel.xyz`.


**Steps to anonymize while using eth**:

- Add Metamask extension/add-on to Tor Browser (it will say it's for Firefox, but it will work anyway).
- Create a new Metamask account.
- Only use this account with Tor browser which means that you'll have to set up the add-on every time as Tor browser won't save any data (which is the privacy consideration we are looking for).
- Anonymize your assets by using Tornado cash and send to your new account.

More info in [Privacy tools](./list_privacy_tools.md).


