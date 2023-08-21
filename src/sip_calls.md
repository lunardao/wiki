# SIP calls with jmp.chat & csip
  
SIP(Session Initiation Protocol) is a protocol that is used in VoIP communications. SIP is used to initiate and setup voice or video calls. This guide explains how someone can obtain an internet based phone number without identification that can be used on a mobile device.

## Setting up metamask wallet

Make sure to stay anonymous when paying for the new number with Bitcoin. One option is to [anonymize ETH](https://wiki.lunardao.net/anonymizing_assets.html) and then swap to BTC:   

1) Add Metamask extension/add-on to Tor Browser (it will say it's for Firefox, but it will work anyway). 

Note: always protect your network privacy. NEVER use same wallet which you have used for doxxed crypto and do no not use this wallet going forward with doxxed crypto. This wallet should be completely separate from any other activity you've done on-chain or off. If there is no need to be anonymous these consideration can be disregarded.

2) Create a new Metamask account in tor browser. Only use these accounts with tor browser. See steps in [Fiat to crypto](./fiat_to_crypto.md) 'Set up metamask wallet'.

3) Anonymize your assets by using [Firn](https://app.firn.cash/) and send to your new account.

**Remember:**

- Don't withdraw immediately after depositing.

- Don't withdraw the exact same amount you deposited.

- Don't withdraw to a previously used address/Withdraw to your new Metamask wallet address.

- [Use a private RPC-endpoint](./change_rpc.md).


Use [Trocador](https://trocador.app/en/) to swap from ETH to BTC.

To exchange from fiat money (paper money) to crypto assets, see [Fiat to crypto](./fiat_to_crypto.md) guide.

## cake wallet setup

BTC can be stored in ie. [**Cake wallet**](https://cakewallet.com/).

When setting up cake wallet for the first time there are privacy-enhancing selection which can be made.

1) Open Cake Wallet. After selecting currency ad pin (in the same window as choosing seed language) –> click on “Advanced Privacy Settings”.  
2) Change the Fiat API and Exchange settings from “Enabled” to “Tor only” (recommended) or “Disabled”.  
3) Add a custom node. You can choose from many different nodes located here [Monero.fail](https://monero.fail)

Below is Cake wallets Monero onion node as an example:

```yaml
Node Address: cakexmrl7bonq7ovjka5kuwuyd3f7qnkz6z6s6dmsy3uckwra7bvggyd.onion
Node port: 18081
Login: (blank)
Password: (blank)
Use SSL: (unticked)  
```
4) Render a random wallet name. Next.  
5) Copy your seed phrase and save it somewhere securely and save the pin alongside the generated wallet name.

## Setting up JMP chat number

1) Go to [**mov.im**](https://mov.im/login) and sign up a new account. Make sure to use a VPN when you create an account, so that IP address is not leaked. Sign in.
2) Go jmp.chat and select a number.
3) Choose "I already have a Jabber ID I want to use for this number".  
4) Submit Jabber ID when prompted (your movim login ie. user@movim.eu) 
5) In cheogram.com enter " register jmp.chat" to start the registration of the number, "next" to agree to the terms and select number 2 for bitcoin payment, choose currency and next on "Enter Optional Referral Code" unless possessing such.  
6) Pay the minimum amount and whatever additional credit to use for SIP calls.

**Acquiring SIP account information in Movim**

- In cheogram bot chat enter 'Reset sip account' to get sip account information.

- Download Csip to phone. 
- Open the application & select "Add acount"  - "Basic".
	- Account name: chosen display name. 
	- User: The user name returned by cheogram sip account information. 
	- Server: What is returned in the previous step ie. jmp.cbcbc7.auth.bandwidth.com. 
	- Password: Provided in sip account information.  
- Register --> ready to call.
