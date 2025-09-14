# On-chain Privacy Using Lightning Network

## Introduction
The Lightning Network can be leveraged to enhance the privacy of on-chain Bitcoin transactions, functioning as an alternative to traditional coinjoin methods. From a privacy perspective, on-chain transactions and Lightning transactions differ dramatically. On-chain transactions are transparent and visible to all observers, revealing source addresses and amounts. In contrast, Lightning transactions leave no permanent public record.

## Accepting On-chain Payments with Privacy

### The Basic Concept
Imagine needing to accept payments from multiple parties who can only send on-chain transactions, while maintaining privacy between these transactions.

For example, senders who aren't familiar with Lightning payments might include OTC traders, Bitcoin ATMs, or exchanges. When receiving these payments into a Lightning wallet like Breez using separate on-chain transactions (via the "Receive via BTC address" feature), the transactions remain unlinked on the blockchain.

### Practical Example
Let's say we want to accept 0.01 BTC from person A and 0.015 BTC from person B:

1. In the Breez wallet, we first create an address to receive funds from person A
2. After this transaction confirms, we'll have that balance in our Lightning wallet
3. We then repeat the process for person B, creating a new address
4. Now we have a combined balance of 0.025 BTC in our Lightning wallet

If we want to pay someone 0.02 BTC, the most private approach is using a Lightning payment. However, we can also send BTC to an on-chain address. Since Breez uses a third-party service (Boltz) for the swap to on-chain, the transaction will never combine bitcoins from users A and B. This maintains privacy - if our goal is to prevent A from knowing about B's payment, chain analysis won't reveal this connection.

### Wallet Implementation Differences
Different Lightning wallets handle on-chain transactions differently. While Breez keeps transactions separate, Phoenix wallet accepts all on-chain payments by swapping them into a single channel, making on-chain payments more easily associated with each other.

For maximum privacy with wallets other than Breez, services like boltz.exchange can convert on-chain bitcoins into Lightning balance. Since the receiving Lightning wallet and Boltz service are operated by different entities, these payments remain outwardly unlinked.

- https://boltz.exchange/

It's important to note that this doesn't make transactions completely untraceable. With sufficient legal authority, services could potentially trace connections through their internal logs. However, for regular observers of the Lightning Network and Bitcoin blockchain, these connections remain extremely difficult to establish.

## Avoiding Amount Correlation

Receiving a specific amount like 0.01423 BTC via an on-chain to Lightning swap and then quickly sending 0.01416 BTC to another on-chain address is not secure for privacy. The similarity in amounts (differing only by the swap fee) makes correlation obvious.

Better approaches include:
- Wait for multiple incoming swaps to accumulate
- Add funds via Lightning and send out unrelated, higher amounts
- For example, receiving 0.0142323 BTC on-chain but sending 0.02 BTC out (using additional Lightning balance) makes linkage more difficult

## Lightning vs. Coinjoin

This Lightning-based privacy method offers advantages over traditional coinjoin mixing with tools like Whirlpool or Wasabi:
- Less conspicuous and controversial
- Uses reputable services for Lightning-to-on-chain swaps rather than "mixing" with unknown parties
- Funds from reputable sources are often preferred by centralized institutions that evaluate transaction risk
- You blend in with thousands of other users using standard wallet functionality

However, this approach has limitations with larger amounts (1 BTC or more) due to Lightning capacity limits and channel opening fees.

## On-chain Functionality: Phoenix vs. Breez

### Phoenix Wallet
Phoenix uses splicing technology for both sending and receiving:
- Receiving on-chain adds funds directly to your existing channel
- Creates a transaction that combines funds from your channel with new incoming funds
- Sending on-chain withdraws funds directly from your channel
- Both operations modify your channel's liquidity
- Receiving requires two on-chain transactions (currently expensive due to multisig, but will improve with taproot musig)
- Sending requires one transaction (also relatively expensive)

### Breez Wallet
Breez uses a different approach:
- Receiving on-chain uses Breez's service
- No fees if you already have a channel (otherwise 0.4% fee)
- Incoming on-chain funds are completely unrelated to your channels (good for privacy)
- Breez collects these funds and opens new channels for users
- Sending on-chain works via integrated Boltz.exchange service
- Doesn't reduce your Lightning liquidity
- Requires a service fee plus two on-chain transactions
- The two-transaction requirement makes time-sensitive payments difficult, as recipients don't see the second transaction until the first confirms