# Privacy setup

Sometimes it can feel overwhelming with all the information that is out there. This privacy setup guide's aim is to support those interested in getting started with digital privacy practices, but might also provide something new to those who are more experienced. It is important to remember that even if personal privacy is paramount, one of the main reasons for compromised privacy is that those we communicate with are not thinking about privacy. That's why it is important to share existing resources with each other as well as understanding how to use them. Check out [**Privacy resources**](https://wiki.lunardao.net/privacy_resources.html) for more projects.

## Secure Android phone

**What you need:**

- **Google Pixel 4 or higher** (less than 4 is no longer maintained. Check specifics for 6a on Graphene OS web page if you are considering getting one), which can be purchased from [**ProxyStore**](https://proxysto.re/) in a private manner. Some of the Google Pixel phones are carrier locked (OEM locked) and there is no way to know until opening the phone and viewing if the OEM unlock option is disabled. Check with the seller when buying the phone if it is possible to unlock OEM. This OEM unlock is needed to be able to install Graphene OS. You want a device that is OEM unlockable, and not tied to a specific phone carrier. 

**Graphene OS**

- [**Command line installer**](https://grapheneos.org/install/cli)  
- [Wenb installer](https://grapheneos.org/install/web)

**Here are some of the features of Graphene OS, check their website for more:**

- Graphene OS is completely free of Google apps and fully encrypted.  
- Every time the phone connects to internet, the [**MAC address**](https://en.wikipedia.org/wiki/MAC_address) is changed (randomly).  
- No sensitive metadata in screenshots and pictures (it only includes the orientation). Note that metadata stripping for videos is not implemented.  
- PIN scrambling, which means that the numbers on the display change place every time the user enters the PIN, so nobody can figure out the PIN from watching the user input their code.  
- If the phone has been inactive for a certain period of time (from 10 min as the shortest time to 72h as longest) it will autoreboot.  
- Sensor permission can be disallowed (ie. in Camera, microphone, body sensor, activity recognition). When access is disabled, apps receive zeroed data when they check for sensor values.  
- It's possible to create multiple users on one phone. The separate users are isolated from each other.

Here is some information about the lack of privacy with Google and the benefits with Graphene OS. Check out [GrapheneOS; the greatest mobile OS of all time](https://yewtu.be/watch?v=yIZmUINSvQ4), which also include links (in descriptions) to more reading on 'Privacy violations of stock android' and Samsung and Facebook data collection.

If you have difficulties installing, you can ask for support in our [**forum**](forum.lunardao.net). Graphene OS also has a [**support chat**](https://app.element.io/#/room/#grapheneos:grapheneos.org) (Element).

### Steps for installation of applications

- When starting the process of installing applications, the recommendation is to first download [**Tor browser**](https://www.torproject.org/download/) for android. On Graphene, Vanadium is the pre-installed default browser, using [**duckduckgo.com**](duckduckgo.com) as search engine. This application can be used.  
- Install Tor browser and open this application.  
- Go to [**F-Droid**](https://f-droid.org/en/) and download the F-Droid app repository.  
- Open F-droid, and download [**ProtonVPN**](https://protonvpn.com/download) or [**Bitmask**](https://f-droid.org/en/packages/se.leap.bitmaskclient/) and directly set up a VPN.
- After the VPN is installed, go to Settings --> Networks & internet  --> VPN. The installed VPN has a settings option there. Select *'Always-on VPN'* to be sure that the IP address is always protected. Otherwise the VPN can be switched off and on manually.  
- Go to the preferred VPN app to check that it's on. In the free versions there a few options for IP address (country in protonVPN, city in Bitmask).  
- Go to [**What is my IP**](https://www.whatismyip.com/) to see if it correlates with the selected VPN.
- With F-Droid, downlad and install [**Aurora store**](https://f-droid.org/en/packages/com.aurora.store/)(to be able to install apps with security issues on an island, using insular, for example).  
- When this setup is completed, install other applications.

### Applications for your Graphene OS phone

**App store:** 

- [**F-Droid**](https://f-droid.org/en/)
  
- [**Aurora app**](https://f-droid.org/en/packages/com.aurora.store/).  

Both function like any app store. F-Droid will mark apps with *Anti-features* if, for example, they contain ads or not open source or not free.

**Messaging app:**  

- [**Signal**](https://www.signal.org/)  
- Set it up with [**jmp.chat**](https://jmp.chat/).  

Signal will stop requiring phone numbers soon. Signal is widely used and well known, but it isn't the only messaging app that focuses on privacy. If you don't want to bother with getting a number, in [**Privacy tools**](https://wiki.lunardao.net/list_privacy_tools.html) there are some other options to try out instead. 

***How to get a number from jmp.chat:***

1. Go to [**mov.im**](mov.im) and sign up a new account. Make sure to use a VPN when you create an account, so that IP address is not leaked.
2. Make a new account based on the guided steps as it gets you to [movim.eu](movim.eu) or [jappix.com](jappix.com).  
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

BTC can be stored in [**Samuorai wallet**](https://samouraiwallet.com/features) which is a privacy wallet for Bitcoin. Samuorai can be used in stealth mode (which means that it is not visible on the phone until dialling a secret code), protects against metadata leakage. The wallet also has an offline mode and can be used as [**offline storage**](https://samouraiwallet.com/offline) which is proposed to be used together with [**Sentinel**](https://docs.samourai.io/sentinel) which allows you to track the balances and transactions of your offline storage.

**Email:**

- [**Tutanota**](https://tutanota.com/)  
Is end-to-end encrypted mail (between Tutanota email addresses). Tutanota also encrypts the entire mailbox and also offer encrypted address book and calendar.

- [**Protonmail**](https://proton.me)  
The Protonmail mobile app can be downloaded in the Aurora Store. It is possible to set up a free email. To create the email anonymously, be sure to use a VPN when signing up. It is end-to-end encrypted between protonmail accounts.
If you want to email other addresses privately, create an encryption key with:

- [OpenKeychain](https://www.openkeychain.org/)With this application it is possible to create or import an encryption key. To set up, write a nick and an email and a key will be generated. To share the *Public key*, select the entry that was just made --> click on the three dots in the upper right corner __> choose *Advanced* --> *Share* --> *Share with* and share icon --> the application to use in order to send the key --> Send. The format will be .asc. You can import this .asc file into your Protonmail account.

**Browser:**  

- [**Tor browser**](https://www.torproject.org/download/). Tor has built in protection of IP address.

- [**Fennec**](https://f-droid.org/en/packages/org.mozilla.fennec_fdroid/) is based on the latest Firefox release. This browser blocks trackers and also has a private mode. The private mode means that when selecting the mask in the upper right corner of the browser, a tab with enhanced privacy properties will open, from which history is cleared when closing the tab or app.

**VPN:**  

An IP address is a digital address. Every device connected to the internet has one, and someone who looks up your IP address can see your location. Check [**whatismyip.com**](whatismyip.com) to see the information connected to your your IP address. The VPN, such as the ones listed below, is used to protect the IP address. When using a VPN it appears as if you are somewhere else in the world.

- [**ProtonVPN**](https://protonvpn.com/download)  
Has a free option. The optimal solution is to buy protonVPN, which gives more options for location and better functionality. ProtonVPN can be bought with crypto.

- [**Mullvad**](https://mullvad.net/en/pricing/)  
This VPN can be payed in cash and Monero. No free option.

- [**Bitmask**](https://f-droid.org/en/packages/se.leap.bitmaskclient/), inlcudes [**Calyx**](calyx.net) and [**RiseupVPN**](riseup.net). Both are free options.

**Video app (Youtube front-end):**  

- [**NewPipe**](https://newpipe.schabi.org/) is an ad free YouTube alternative.

**Notes:**  

- [**Markor**](https://f-droid.org/en/packages/net.gsantner.markor/) for writing Markdown docs, and because its also compatible with any other plaintext software on any platfrom, it is compatible with usage on computer.

**Isolation of non-privacy apps:**  

- [**Insular**](https://f-droid.org/en/packages/com.oasisfeng.island.fdroid/), which creates an *island* and isolates this space from the rest of your phone. On the island you can have apps which have security issues. Such apps can be downloaded in the island via Aurora store. 

In Insular there is *Mainland* and *Island*. These two are separated frome each other. Certain applications you use will cause security problems. If you want to prevent the challenges in using these applications, the apps can be stored and used on the Island. For example, When you are in the Mainland section, you can click on Aurora store and when you do you'll see a plus (+) in the lower right corner. When you click on the plus (+), you can select to clone it to the Island. On your main screen there will be two options, *Personal* and *Work*. All applications on the *Island exists on the Work screen. They are visible with a lock on the logo and can be distinguished from other applications. You can move these icons to somewhere else if you desire. If you open Aurora store on the Island, all downloaded applications from the Aurora store will also be stored on the Island.

**Remove metadata from pictures:**  

- [**ObscuraCam**](https://guardianproject.info/apps/org.witness.sscphase1/). Blur faces and remove metadata. 
 
- [**Scrambled Exif**](https://f-droid.org/en/packages/com.jarsilio.android.scrambledeggsif/) to remove metadata.

To use Scrambled Exif, you don't need to open the application. Instead, go directly to the Gallery, select the picture you want to share, click on the *share* icon, select Scrambled Exif. Then choose the app you want to use to send the picture, contact and send. Done.

**Navigation:**  

- [**Osmand**](https://osmand.net/)  

- [**maps.me**](https://maps.me/) 
 
Both of these applications can be used as offline maps. maps.me asks for a lot of permissions. It is possible to deny all of them for privacy considerations (the request for permissions appear two times). After having denied the requests, go to Settings --> Apps --> All apps --> maps.me/OsmAnd --> Permissions. Disallow *sensors* and allow *folder and media* (so the two allowed are *Network* and *Folder and media* for internet and storage). Both of these apps have anti-features, but offline maps can be handy to have.

**Crypto wallet:** 

- [**Monerujo**](https://www.monerujo.io) is a Monero wallet, which allows you to use Tor Onion nodes when connecting the wallet and is therefore a good privacy option. 

- [**Cake wallet**](https://cakewallet.com/). Send, receive and exchange Monero, Bitcoin, Litecoin and Haven with Cake Wallet.  It's good to utilize Monero as it is private by default, but there might be occasions when other currencies are needed. If your device has been set up in a secure way, then other transactions are at least anonymous and not doxxed from your physical IP address.  

- [**Samuorai wallet**](https://samouraiwallet.com/features)  
Is a BTC privacy oriented wallet that is based on the [**Zerolink framework**](https://nopara73.medium.com/introducing-zerolink-the-bitcoin-fungibility-framework-dc5338086198). Samourai routes over tor by default, includes coin control, and maintains strong privacy preserving spend tools. 




