# Privacy setup

Sometimes it can feel overwhelming with all the information that is out there. This privacy setup guide's aim is to support those interested in getting started with digital privacy practices, but might also provide something new to those who are more experienced. It is important to remember that even if personal privacy is paramount, one of the main reasons for compromised privacy is that those we communicate with are not thinking about privacy. That's why it is important to share existing resources with each other as well as understanding how to use them. Check out [**Privacy resources**](https://wiki.lunardao.net/privacy_resources.html) for more projects.

## Secure Android phone

**What you need:**

- **Google Pixel 4 or higher** (less than 4 is no longer maintained. Check specifics for 6a on Graphene OS web page if you are considering getting one), which can be purchased from [**ProxyStore**](https://proxysto.re/) in a private manner. Some of the Google Pixel phones are carrier locked (OEM locked) and there is no way to know until opening the phone and viewing if the OEM unlock option is disabled. Check with the seller when buying the phone if it is possible to unlock OEM. This OEM unlock is needed to be able to install Graphene OS. You want a device that is OEM unlockable, and not tied to a specific phone carrier. 

- [**Graphene OS**](https://grapheneos.org/install/cli)  

**Here is some of the features of Graphene OS, check their website for more:**

- Graphene OS is completely free of Google apps and fully encrypted.  
- Every time the phone connects to internet, the [**MAC address**](https://en.wikipedia.org/wiki/MAC_address) is changed (randomly).  
- No sensitive metadata in screenshots and pictures (it only includes the orientation). Note that metadata stripping for videos is not implemented.  
- PIN scrambling, which means that the numbers on the display change place every time the user enters the PIN, so nobody can figure out the pin from watching the user enter their code.  
- If the phone has been inactive for a certain period of time (from 10 min as the shortest time to 72h as longest) it will autoreboot.  
- Sensors permission can be disallowed (ie. in Camera, microphone, body sensor, activity recognition). When access is disabled, apps receive zeroed data when they check for sensor values.  
- It's possible to create multiple users on one phone. These seaparate users are isolated from each other.

If you have difficulties installing, you can ask for support in our [**forum**](forum.lunardao.net). Graphene OS also has a [**support chat**](https://app.element.io/#/room/#grapheneos:grapheneos.org) (Element).

### Steps for installation of applications

- When starting the process of installing applications, the recommendation is to first download [**Tor browser**](https://www.torproject.org/download/) for android. On Graphene there is Vanadium as a default browser, using [**duckduckgo.com**](duckduckgo.com) as search engine. This application can be used.  
- Install Tor browser and open this application.  
- Go to [**F-Droid**](https://f-droid.org/en/) and download the F-Droid app repository.  
- Open F-droid, and download [**ProtonVPN**](https://protonvpn.com/download) or [**Bitmask**](https://f-droid.org/en/packages/se.leap.bitmaskclient/) and directly set up a VPN.
- After the VPN is installed, go to Settings --> Networks & internet  --> VPN. The installed VPN has a settings option there. Select *'Always-on VPN'* to be sure that the IP address is always protected. Otherwise the VPN can be switched off and on manually.  
- Go to the preferred VPN app to check that it's on. In the free versions there a few options for IP address (country in protonVPN, city in Bitmask).  
- Go to [**What is my IP**](https://www.whatismyip.com/) to see if it correlates with the selected VPN.
- With F-Droid, downlad and install Aurora store (to be able to install apps with security issues on the island for example).  
- When this setup is completed, install other applications.

### Applications for your Graphene OS phone

**App store:** 

- [**F-Droid**](https://f-droid.org/en/)  
- [**Aurora app**](https://f-droid.org/en/packages/com.aurora.store/).  

Both function like any app store. F-Droid will mark apps with *Anti-features* if they for example contain ads, not open source or not free.

**Messaging app:**  

- [**Signal**](https://www.signal.org/)  
- Set it up with [**jmp.chat**](https://jmp.chat/).  

Signal will stop requiring phone numbers soon. Signal is widely used and well known, but it isn't the only messaging app that focuses on privacy.If you don't want to bother with getting a number, in [**Privacy tools**](https://wiki.lunardao.net/list_privacy_tools.html) there are some other options to try out instead. 

***How to get a number from jmp.chat:***

1. Go to [**mov.im**](mov.im) and sign up a new account.  <!---sadar: do we have a guide on getting anon emails, if so it would be good to link that here as well--->
2. Make a new account based on the easy steps as it gets you to [movim.eu](movim.eu) or [jappix.com](jappix.com).  
3. Sign in.  
4. Go jmp.chat and select a number.  
5. Add your mov.im account to the prompt.  
6. Continue with the bot in your mov.im chat based on instructions + pay

Make sure to stay anonymous when paying for the new number with Bitcoin.
One option is to anonymize ETH and then swap to BTC:   

- Add Metamask extension/add-on to Tor Browser (it will say it's for Firefox, but it will work anyway).  
- Create a new Metamask account.  
- Only use this account with Tor browser which means setting up the add-on every time as Tor browser don't save any data (which is the privacy consideration we are looking for).  
- [**Change RPC**](https://wiki.lunardao.net/change_rpc.html).  
- Anonymize assets by using [**zk.money**](https://docs.aztec.network/zk-money/userguide) (or [**Tornado cash**](https://tornadocash.3th.ws/), also check out this [**user guide**](https://cryptobriefing.com/how-to-use-tornado-cash-ethereum-privacy-solution/)) and send to the new account.  
- Use [**Sideshift**](https://sideshift.ai/btc/eth) to swap from ETH to BTC.

<!---sadar: This might also be good for an article or multiple articles: "How to remain private using ETH" "How to remain private using BTC" "How to remain private using Monero"--->

BTC can be stored in [**Samuorai wallet**](https://samouraiwallet.com/features) which is a privacy wallet for Bitcoin. Samuorai can be used in stealth mode (which means that it is not visible on the phone until dialling a secret code), protects against metadata leakage. The wallet also has an offline mode and can be used as a secure storage. <!---sadar: what do you mean used as a secure storage? --->

**Browser:**  

- [**Fennec**](https://f-droid.org/en/packages/org.mozilla.fennec_fdroid/)  
- [**Tor browser**](https://www.torproject.org/download/). Tor has built in protection of IP address.

**VPN:**  

- [**Bitmask**](https://f-droid.org/en/packages/se.leap.bitmaskclient/), which inlcudes [Calyx](calyx.net) and [RiseupVPN](riseup.net) if you want a free option (does not always work well).  
- [**ProtonVPN**](https://protonvpn.com/download). The optimal solution is to buy protonVPN, which gives more options and better functionality. protonVPN can be bought with crypto.

<!---sadar: Might be good to add other VPNs that accept cash or Monero --->


**Video app (Youtube front-end):**  

- [**NewPipe**](https://newpipe.schabi.org/) is ad free.

**Notes:**  

- [**Markor**](https://f-droid.org/en/packages/net.gsantner.markor/) to be able to write Markdown docs which also can be used on computer. 

**Isolation of non-privacy apps:**  

- [**Insular**](https://f-droid.org/en/packages/com.oasisfeng.island.fdroid/), which creates an *island* and isolates this space from the rest of your phone. On the island you can have apps which have security issues. Such apps can be downloaded in the island via Aurora store. 

In Insular there is *mainland* and *Island*. These two are separated frome each other. Certain applications you use will cause security problems. If you want to prevent the challenges in using these applications, the apps can be stored and used on the Island. For example, When you are in the Mainland section, you can click on Aurora store and when you do you'll see a plus (+) in the lower right corner. When you click on the plus (+), you can select to clone it to the Island. On your main screen there will be two options, *Personal* and *Work*. All applications on the *Island exists on the Work screen. They are visible with a lock on the logo and can be distinguished from other applications. You can move these icons to somewhere else if you desire. If you open Aurora store on the Island, all downloaded applications from the Aurora store will also be stored on the Island.

**Remove metadata from pictures:**  

- [**ObscuraCam**](https://guardianproject.info/apps/org.witness.sscphase1/). Blur faces and remove metadata.  
- [**Scrambled Exif**](https://f-droid.org/en/packages/com.jarsilio.android.scrambledeggsif/) to remove metadata.

To use Scrambled Exif, you don't need to open the application. Instead, go directly to the Gallery, select the picture you want to share, click on the *share* icon, select Scrambled Exif. Then choose the app you want to use to send the picture, contact and send. Done.

**Navigation:**  

- [**Osmand**](https://osmand.net/)  
- [**maps.me**](https://maps.me/) 
 
Both of these applications can be used as offline maps. However, they contain ads and asks for some permissions that is not necessary to approve for functionality. Check [Privacy setup](./privacy_setup.md) for more info.

**Crypto wallet:** 

- [**Cake wallet**](https://cakewallet.com/). Send, receive and exchange Monero, Bitcoin, Litecoin and Haven with Cake Wallet.  It's good to utilize Monero as it is private by default, but there might be occasions when other currencies are needed. If everything has been set up in a secure way, then the other transactions are at least anonymous and not doxxed by IP address.  
- [**Monerujo**](https://www.monerujo.io) is a Monero wallet, but it's also possible to pay BTC addresses.   <!---sadar: I would put Monerujo higher than Cake Wallet, as it allows you to use Tor Onion nodes when connecting the wallt --->
- [**Samuorai wallet**](https://samouraiwallet.com/features) which was mentioned above is a BTC privacy oriented wallet that is based on the Zerolink framework.




