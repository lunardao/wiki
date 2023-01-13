# Privacy setup

Sometimes it can feel overwhelming with all the information that is out there. This privacy set up guide is aim to support those interested in getting started with digital privacy practice, but might also provide something new even to those who have more experience. It is important to remember that even if personal privacy is important, one of the main reasons for compromised privacy is that those we communicate with are not thinking about privacy. That's why it is important to share with each other about existing resources and how to use them. Check out [Privacy resources](https://wiki.lunardao.net/privacy_resources.html) for more projects working on this.

## Secure Android phone

**What you need:**

- Google Pixel 4 or higher (less than 4 are no longer maintained. Check specifics for 6a on Graphene OS web page if you are considering getting one), which you can get from [**ProxyStore**](https://proxysto.re/) and buy in a private manner. Some of them are carrier locked (OEM unlockable) and there is no way to know until opening the phone and seeing the OEM option disabled and impossible to change. Check with the seller when buying the phone if it is possible to unlock OEM.

- [**Graphene OS**](https://grapheneos.org/install/cli)  
Here is some of the features of Graphene OS, check their website for more:  
- Graphene OS is completely without Google apps and fully encrypted.  
- Every time the phone connects to internet, the [**MAC address**](https://en.wikipedia.org/wiki/MAC_address) is changed (randomly).  
- No sensitive metadata in screenshots and pictures (it only includes the orientation). Note that metadata stripping for videos is not implemented.
- PIN scrambling, which mean that the numbers on the display change place for every time you type in your PIN, so nobody can guess from looking what your code is.  
- If the phone has been inactive for a certain period of time (from 10 min as the shortest time to 72h as longest) it will autoreboot.  
- Sensors permission can be disallowed (ie. in Camera, microphone, body sensor, activity recognition). When access is disabled, apps receive zeroed data when they check for sensor values.  
- It's possible to create multiple user on one phone, which are isolated from each other.

If you have difficulties to install, you can ask for support in our [forum](forum.lunardao.net). Graphene OS also have a [support chat](https://app.element.io/#/room/#grapheneos:grapheneos.org) (Element).

### Applications for your Graphene OS phone

**Steps for installation of applications**

- When you start getting these applications, we'd suggest that you first download [**Tor browser**](https://www.torproject.org/download/) (Download for Android). On Graphene you'll have Vanadium as a default browser, using duckduckgo.com as search engine.  
- Install Tor browser and open this application.  
- Go to [**F-Droid**](https://f-droid.org/en/) and download it. 
- Open F-droid, and download [**ProtonVPN**](https://protonvpn.com/download) or [**Bitmask**](https://f-droid.org/en/packages/se.leap.bitmaskclient/) so you directly can set up a VPN on your phone.
When your VPN in installed you can go to Settings --> Networks & internet  --> VPN. The VPN you have installed have a settings option there and you can select 'Always-on VPN' if you want to be sure that 
you Ip address is always protected. Otherwise the VPN can be switched off and on manually.
- Go to the app to check that it's on. In the free versions there a few options for which place we want the IP address to show (country in protonVPN, city in Bitmask).
- Go to [What is my IP](https://www.whatismyip.com/) to see if it correlates with your selected VPN, so you know that everything is working.
- With F-Droid downlad and install Aurora store (if you want to have apps with security issues on your island for example).
- Now you have the setup needed to install other apps you want.


**App store:** [**F-Droid**](https://f-droid.org/en/) and [**Aurora app**](https://f-droid.org/en/packages/com.aurora.store/).  
Works like any app store. 

F-Droid will mark apps with *Anti-features* if they for example contain ads, not open source or not free.

**Messenging app:** [**Signal**](https://www.signal.org/). Set it up with [**jmp.chat**](https://jmp.chat/). Signal will also stop requiring phone numbers soon. Signal is widely used and well known, but it
isn't the only messaging app that focuses on privacy.If you don't want to bother with getting a number, in [Privacy tools](https://wiki.lunardao.net/list_privacy_tools.html) there are some options to try out instead. What will matter is what our friends are using (or willing to use) as a communication tool. if we are the only one in our crew using something, it's gonna get pretty lonely. 

*How to get a number from jmp.chat:*

1. go to mov.im and sign up a new account  
2. make a new account based on the easy steps as it gets you to movim.eu or jappix.com  
3. sign in  
4. go jmp.chat and select a number  
5. add your mov.im account to the prompt  
continue with the bot in your mov.im chat based on instructions + pay

Make sure to stay anonymous when you pay for the new number with Bitcoin.
One option is to anonymize ETH and then swap to BTC:  

- Add Metamask extension/add-on to Tor Browser (it will say it's for Firefox, but it will work anyway).  
- Create a new Metamask account.  
- Only use this account with Tor browser which means that you'll have to set up the add-on every time as Tor browser won't save any data (which is the privacy consideration we are looking for).  
- [Change RPC](https://wiki.lunardao.net/change_rpc.html).  
- Anonymize your assets by using [zk.money](https://docs.aztec.network/zk-money/userguide) (or [Tornado cash](https://tornadocash.3th.ws/), also check out thus [user guide](https://cryptobriefing.com/how-to-use-tornado-cash-ethereum-privacy-solution/)) and send to your new account  
- Use [Sideshift](https://sideshift.ai/btc/eth) to swap from ETH to BTC.

BTC can be stored in [Samurai wallet](https://samouraiwallet.com/features) which is a privacy option for Bitcoin. Samurain can be used in stelth mode, so it is not visible on your phone until you dial a secret code, protects against metadata leakage. The wallet also have an offline mode and can be used as a secure storage.

**Browser:** [**Fennec**](https://f-droid.org/en/packages/org.mozilla.fennec_fdroid/) and [**Tor browser**](https://www.torproject.org/download/). Tor has built in protection of IP address.

**VPN:** [**Bitmask**](https://f-droid.org/en/packages/se.leap.bitmaskclient/), which inlcudes [Calyx](calyx.net) and [RiseupVPN](riseup.net) if you want a free option (not always working great) or [**ProtonVPN**](https://protonvpn.com/download). The optimal solution is to buy protonVPN, which gives you more options and better functionality.

**Video app (Youtube front-end):** [**NewPipe**](https://newpipe.schabi.org/) is ad free.

**Notes:** [**Markor**](https://f-droid.org/en/packages/net.gsantner.markor/) to be able to write Markdown docs which also can be used on computer. 

**Isolation of non-privacy apps:** [**Insular**](https://f-droid.org/en/packages/com.oasisfeng.island.fdroid/), which creates an *island* and isolates this space from the rest of your phone. On the island you can have apps which have security issues. Such apps can be downloaded in the island via Aurora store. 

In Insular there is *mainland* and *Island*. These two are separated frome each other. To prevent challenges in quitting all applications that have security problems. These can be stored and used on the Island. When you are in the section Mainland you can for example click on Aurora store and when you do you'll see a plus in the lower right corner. When you click on the plus, you can select to clone it to the Island. On your main screen is two options, *Personal* and *Work*. All applications on the *Island exists on the Work screen. They are visible with a lock on the logo and can be distinguished from other applications. You can move these icons to somewhere else if you want. If you open Aurora store on the Island, all application downloaded will also be stored on the Island.

**Remove metadata from pictures:** [**ObscuraCam**](https://guardianproject.info/apps/org.witness.sscphase1/) or [**Scrambled Exif**](https://f-droid.org/en/packages/com.jarsilio.android.scrambledeggsif/) to remove metadata (with ObscuraCam you can also blur faces).

To use Scrambled Exif, you don't need to go to the application. Go directly to the Gallery, select the picture you want to share, click on the *share* icon, select Scrambled Exif. Then choose the app you want to use to send the picture, contact and send. Done.

**Navigation:** [**Osmand**](https://osmand.net/) or [**maps.me**](https://maps.me/) as offline maps. maps.me is asking for a lot of permissions. You can deny all of them  if you wish to keep minimalistic (you'll be asked two times). After you denied the requests go to app settings; disallow *sensors* and allow *folder and media* (so the two allowed are *Network* and *Folder and media* for internet and storage).
Both of these apps have anti-features, but offline maps can be handy to have.

**Crypto wallet:** Send, recieve and exchange Monero, Bitcoin, Litecoin and Haven with [**Cake wallet**](https://cakewallet.com/). It's good to stick with Monero as it is privacy by default, but there might be occations when we need other currencies. If everything has been set up in a secure way, then the other transactions are at least anonymous and not doxxed by IP address. You can also use [Monerujo](https://www.monerujo.io) which is a Monero wallet, but it's also possible to pay BTC addresses.




