# Bitcoin Lightning Network

## On-Chain Bitcoin Transactions
Let's look at Alice and Bob and how they would proceed to create an on-chain transaction. Bob needs to have some Bitcoin, in this case one Bitcoin, and Bob wants to send it to Alice.

Bob knows Alice's address. He creates the transaction, which means he first has to sign it, declaring that the Bitcoin that belongs to Bob is now being sent to Alice. He uses his private key to sign this transaction, and now he has created a valid transaction.
At this point, no one knows about it. It's just a piece of data with a valid signature. The next step is to broadcast the transaction—that means to send the transaction to the Bitcoin peer-to-peer network.

The Bitcoin network is composed of Bitcoin nodes. Some of them are mining nodes, but not all. Maybe Alice also runs a node (she doesn't have to; she doesn't even have to be online in case of an on-chain transaction), but maybe she runs a node and at this point she learns that Bob is trying to send her some money.
But she's not jumping for joy yet because Bob could also sign a different transaction which says that the same Bitcoin should be sent to Charlie. Unless this transaction is confirmed by the miners and included in the Bitcoin blockchain ledger, there's not much to celebrate.

In this case, with every transaction, Bob needs to pay the miners to include that transaction in a block and the blockchain. The blockchain, which consists of the ledger of all transactions, is quite large. If every coffee purchase, every dinner, and every small transaction had to be recorded, every Bitcoin full node running in the world would need to store this information. Bitcoin would not be a very useful technology because it would spam this large book of all transactions with ones that are maybe not so important, and maybe not everyone should know about them or keep them on their drives.


## Lightning Network Solution

That's why Lightning Network was invented. In Lightning Network, Bob doesn't send the Bitcoin directly but funds a special address that requires signatures of both Alice and Bob.

Because this special address(i.e lnxxx) is funded by Bob (let's say Bob wants to commit 10 Bitcoin because he expects he's going to use this channel more and maybe get another coffee tomorrow), he allocates 10 Bitcoin and sends them to this mutual address.

Of course, because this address requires the signatures of both Alice and Bob, it would not be very wise without the signature from Alice. Alice's signature says that she doesn't have any of these coins and all coins should be sent back to Bob. When Bob sees this signature, he gladly signs this transaction as well, and both Alice and Bob now have a channel.

The funding transaction (which sends the 10 Bitcoin to this channel) is broadcasted and mined. But what you see on the screen is called the commitment transaction—it requires both signatures and it determines how Alice and Bob are splitting the funds among themselves. This transaction is not broadcasted on the Bitcoin blockchain and is not mined at all. It is just stored by both Alice and Bob.

If Alice becomes unavailable (due to computer failure, internet outage, or any other circumstance that takes her offline) and stops responding to Bob's requests, Bob remains protected. He possesses a signed transaction that can be broadcast to the network at any time. Since this transaction already contains both parties' signatures, miners will accept and process it without question, returning Bob's funds to him. This security mechanism ensures Bob never risks losing his money—if Alice becomes unresponsive or attempts anything suspicious, Bob simply broadcasts the latest commitment transaction to recover his funds.

## Making Payments Through the Channel

Now they have a channel, but there are no payments yet. This is the point when the channel is created and fully funded, and that is usually the only time any miner is involved.

Bob can easily send one Bitcoin over to Alice, which basically means that the split of the 10 Bitcoin is different—there is one Bitcoin that belongs to Alice and nine Bitcoins that belong to Bob. This can be done again. Let's say Bob wants to buy some more super expensive coffee for another coin—the split changes again: Alice has two, Bob has eight.

## Preventing Fraud
This is very simple now because you have seen that all these transactions are signed. But what if Bob is evil and says, "Oh, Alice is not responding, let's broadcast this old transaction where I have nine Bitcoin and not the new one where I have eight Bitcoin"?
Lightning Network, of course, solves this problem. The old state of a payment channel cannot be broadcasted—well, in fact it can be broadcasted, but if Bob would do this, he would not only not have nine Bitcoin, he would lose all his money.

This mechanism of revoking old transactions is called the revocation or penalization transaction, and it is implemented in the Bitcoin protocol.

This way, only the latest state that both Alice and Bob agree with can be broadcasted, and any other state that splits the channel funds in any different way cannot be broadcasted—or if it's broadcast, then the other party that did not broadcast the transaction will take all the money from the channel. So you don't have to trust the counterparty to not cheat, and you can be sure that either your counterparty broadcasts the newest state or you will get much more Bitcoin.

## Routing Payments Through Multiple Channels
Now, what if Bob would like to buy something not from Alice but from Charlie? The problem is Bob doesn't have a channel with Charlie—he only has a channel with Alice. But thankfully, Alice has a channel with Charlie as well.
In this scenario, we have two channels:

Alice and Bob have a channel where two Bitcoin belong to Alice and eight Bitcoin belong to Bob
Alice also has a channel with Charlie, which is split evenly: five Bitcoin on Alice's side and five Bitcoin on Charlie's side

In this case, when Alice opens her Bitcoin wallet, she sees a balance of seven Bitcoin, but this is actually Bitcoin from two channels. She can send seven Bitcoin, but she would have to use both channels at the same time.
But let's consider the original question: how to make sure that Charlie can send some money to Bob and use Alice just as an intermediary?

The easiest solution would be that Charlie just sends one Bitcoin to Alice and tells her, "Please send one Bitcoin to Bob." But if it were that simple, Alice could say, "No, I have the latest commitment transaction. I actually have six Bitcoin from your channel, and I still have two Bitcoin with Bob. If I just broadcast these transactions and do a so-called force close, Alice could actually have one more Bitcoin than she's supposed to."

## Hash Time Locked Contracts (HTLCs)
The way to solve this is using something called HTLC (Hash Time Locked Contract).
In case of a successful payment:

Charlie should send one Bitcoin to Alice only when Alice sends one Bitcoin to Bob
In any other case, the channel state should remain the same as it was before

The payment is based on an invoice created by Bob. This invoice includes something called a hash—if the secret is known, and this secret has the property that the hash of the secret using a hash function equals the specified value, then the payment goes through.
First, both channels create an additional output for the payment in transit. If the payment goes through and Alice commits to paying Bob, Bob reveals the secret (in this case, "super secret"). Bob tells Alice the secret, so he's taking the Bitcoin, which is correct. If Alice doesn't agree with it, Bob can say, "Alice is not cooperating. I am broadcasting this transaction, and I actually know the secret, so the Bitcoin belongs to me anyway."

In the normal case, Alice cooperates and gives the Bitcoin to Bob, but she now needs to claim that Bitcoin from Charlie. She sends the secret to Charlie and says, "Give me my Bitcoin now." Again, Charlie can say, "That's right, it's your Bitcoin, so let's adjust the channel state." But if Charlie doesn't cooperate, Alice can just broadcast this transaction revealing the secret, and she will get the Bitcoin anyway. In this case, Charlie cooperates, it's all correct, and the channel balances in both channels are updated:

- Alice still has seven Bitcoins
- Bob has one more Bitcoin (nine total)
- Charlie has one less Bitcoin (four total)

What happened is that we have an atomic way to send Bitcoin through these payment channels. Again, no on-chain transaction has been created—everything happens in this "whispering style" between Charlie, Alice, and Bob. At every moment, everyone has a signed channel commitment transaction which allows them to claim the money they are supposed to get. There is no way anyone can cheat; everyone has their own private keys. You don't have to trust any third party.

# The Lightning Network as a Whole

This way, we can create a network of payments. In this network, we can send payments without actually creating so many entries in the official Bitcoin blockchain ledger, and we can route payments through other channels. We don't actually need to have a direct channel open to a place where we pay—we can open a few channels to different nodes in the network, and then it works just like the internet.

You probably don't have a fiber cable directly to Google—you just ask your mobile network provider or internet service provider to send your search request to Google, and they do it. In this case, we can also route payments, not just search queries or website or email traffic. This means we can have a super fast, instant payment network that just works.
What is also nice (which I didn't mention because I wanted to keep it simple) is that Alice should be compensated for this service. She can collect a small fee for routing the transaction because she has to lock her liquidity for a short while. Until the timeout if the payment doesn't go through, she cannot use that one Bitcoin, so she should be compensated for this locked liquidity.
Anyway, Bitcoin Lightning Network fees are much lower than including a transaction in the blockchain and telling the whole world about your coffee and dinner purchases.

# Modern Lightning Wallets
New-generation Lightning wallet such as Breez or Phoenix, won't require you to deal with channels at all—they are magically created when needed, and you just scan a QR code and send payment.

- Breez - https://breez.technology/
- Phonenix - https://phoenix.acinq.co/

Above technical information is maybe more relevant for operators of Lightning nodes, liquidity providers, or Lightning service providers. It's mainly for those who need to be able to receive payments, because for receiving, you need capacity—you need to have a channel where someone can send you Bitcoins.

In our example, Bob can only receive one more Bitcoin, and if he wants to receive more, he needs to have someone open a new channel. But most user-facing apps do this automatically in the background, although opening a channel requires an on-chain transaction, so there is a fee for opening a channel.