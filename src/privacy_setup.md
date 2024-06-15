# Privacy setup: Graphene OS & Banana phone

This privacy setup guide's aim is to support those interested in getting started with digital privacy practices, but might also provide something new to those who are more experienced. It is important to remember that even if personal privacy is paramount, one of the main reasons for compromised privacy is that those we communicate with are not thinking about privacy. That's why it is important to share existing resources with each other as well as understanding how to use them. Check out [**Privacy resources**](https://wiki.lunardao.net/privacy_resources.html) for more projects.

## Secure Android phone

### What is needed

**Google Pixel 4 or higher** (less than 4 is no longer maintained. Check specifics for 6a on Graphene OS web page if considering getting this one specifically)  
Google Pixel phones can be purchased from [**ProxyStore**](https://proxysto.re/) in a private manner. Some of the Google Pixel phones are carrier locked (OEM locked) and there is no way to know until opening the phone and viewing if the OEM unlock option is disabled. This OEM is an option in the developer options section which need to be unlocked in order to install Graphene OS. Check with the seller when buying the phone if it is possible to unlock OEM.

**Graphene OS**

- [**Command line installer**](https://grapheneos.org/install/cli)  
- [**Web installer**](https://grapheneos.org/install/web)

**Here are some of the features of Graphene OS, check their website for more:**

- Graphene OS is not based on Google and can be run completely without any Google apps, emails etcetera, but it is possible to use these applications if wanted. Rather, it is the choice of the user and not a default.
- Every time the phone connects to internet, the [**MAC address**](https://en.wikipedia.org/wiki/MAC_address) is changed (randomly).  
- No sensitive metadata in screenshots and pictures (it only includes the orientation). Note that metadata stripping for videos is not implemented.  
- There is an option for PIN scrambling, which means that the numbers on the display change place every time the user enters the PIN, so nobody can figure out the PIN from watching the user input their code.  
- If the phone has been inactive for a certain period of time (from 10 min as the shortest time to 72h as longest) it will autoreboot.  
- Sensor permission can be disallowed (ie. camera, microphone, body sensor, activity recognition). When access is disabled, apps receive zeroed data when they check for sensor values.  
- It's possible to create multiple users on one phone. The separate users are isolated from each other. More on this in section 'User profiles on Graphene OS' below.

Here is some information about the lack of privacy with Google and the benefits with Graphene OS. Check out [**GrapheneOS; the greatest mobile OS of all time**](https://yewtu.be/watch?v=yIZmUINSvQ4), which also include links (in descriptions) to more reading on 'Privacy violations of stock android' and Samsung and Facebook data collection.

If there are any difficulties with the installation, it is possible to ask for support in our [**forum**](forum.lunardao.net). Graphene OS also has a [**support chat**](https://app.element.io/#/room/#grapheneos:grapheneos.org) (Element).

### Steps for installation of applications

- When starting the process of installing applications, the recommendation is to first download [**Tor browser**](https://www.torproject.org/download/) for android. On Graphene, Vanadium is the pre-installed default browser, using [**duckduckgo.com**](duckduckgo.com) as search engine.  
- Install Tor browser via Vanadium and then open the application.
- Go to [**F-Droid**](https://f-droid.org/en/) and download the F-Droid app.  
- With F-Droid, download and install [**Aurora store**](https://f-droid.org/en/packages/com.aurora.store/)(to be able to install apps with security issues preferrably on an island (using ie.insular) or apps which is not existing in f-droid).   
- Download [**Geph**](https://geph.io/en) (from Aurora store), [**ProtonVPN**](https://protonvpn.com/download) or [**Bitmask**](https://f-droid.org/en/packages/se.leap.bitmaskclient/) from f-droid and directly set up a VPN. Check [**Privacy tools**](./list_privacy_tools.md) for more options.

**VPN:**  

An IP address is a digital address. Every device connected to the internet has one, and someone who looks up your IP address can see your location. The VPN, such as the ones mentioned above, are used to protect the IP address. When using a VPN it appears as if ths user is somewhere else in the world. 

- After the VPN is installed, go to Settings --> Networks & internet  --> VPN. The installed VPN has a settings option there. Select *'Always-on VPN'* to be sure that the IP address is always protected. The VPN can also be switched off and on manually.  
- Go to the downloaded VPN app to check that it's on. In the free versions there only a few options for IP address (it's possible to select by country in protonVPN, and by city in Bitmask).  
- Go to [**What is my IP**](https://www.whatismyip.com/) to see if it correlates with the selected VPN.
- When this setup is completed, install other applications.

The VPN solutions that exist today route traffic through proxies. Any adversary that surveils the traffic can view the size of data packets entering and leaving the VPN service. With internet traffic surveillance, an adversary can see who, when, and how often you communicate with someone. The paid ProtonVPN option provides the possibility of *secure core* which means two hops. There is also the option of [**Orbot**](https://support.torproject.org/glossary/orbot/) which is developed by Tor project. To ensure network privacy VPNs are incomplete as a solution and something to keep in mind.

### Applications for your Graphene OS phone

**App store:** 

- [**F-Droid**](https://f-droid.org/en/)
  
- [**Aurora app**](https://f-droid.org/en/packages/com.aurora.store/).  

Both function like any app store. F-Droid will mark apps with *Anti-features* if, for example, they contain ads or not open source or not free.

**Messaging app:** 

- [**Simplex chat**](https://simplex.chat/) is an end-to-end encrypted messaging for chat, audio and video with no identifiers assigned to the users. The username can be changed, random names can be generated for new chats and subaccount can be created for different communication needs.

- Many still use [**Signal**](https://www.signal.org/), which unfortunately requires a phone number. If using signal, a phone number can be acquired via [**jmp.chat**](https://jmp.chat/) or [**Crypton**](https://crypton.sh).    

Signal is widely used and well known, but it isn't the only messaging app that focuses on privacy. Also check [**Privacy tools**](https://wiki.lunardao.net/list_privacy_tools.html) for more options.

***How to get a number from jmp.chat:***

1. Go to [**mov.im**](mov.im) and sign up a new account. Make sure to use a VPN when you create an account, so that IP address is not leaked.
2. Make a new account based on the guided steps as it gets you to [**movim.eu**](movim.eu) or [**jappix.com**](jappix.com).  
3. Sign in.  
4. Go jmp.chat and select a number.  
5. Add your mov.im account to the prompt.  
6. Continue with the bot in your mov.im chat based on instructions + pay.

Make sure to stay anonymous when paying for the new number with Bitcoin. One option is to anonymize ETH and then swap to BTC:   

- Add Metamask extension/add-on to Tor Browser (it will say it's for Firefox, but it will work anyway).  
- Create a new Metamask account.  
- Only use this account with Tor browser which means setting up the add-on every time as Tor browser don't save any data (which is the privacy consideration we are looking for).  
- [**Change RPC**](https://wiki.lunardao.net/change_rpc.html).  
- Check this guide on [**how to anonymize assets**](https://wiki.lunardao.net/anonymizing_assets.html). 
- Use [**Sideshift**](https://sideshift.ai/btc/eth) to swap from ETH to BTC.  
- One can for example use [**Electrum**](https://electrum.org/) wallet to for BTC. Make sure to use tor or VPN. 

To exchange from fiat money (paper money) to crypto assets, see [**Fiat to crypto**](./fiat_to_crypto.md) guide.

<!---sadar: This might also be good for an article or multiple articles: "How to remain private using ETH" "How to remain private using BTC" "How to remain private using Monero"--->

**Email:**

- [**Tutanota**](https://tutanota.com/)  
Is end-to-end encrypted mail (between Tutanota email addresses). Tutanota also encrypts the entire mailbox and also offer encrypted address book and calendar.

- [**Protonmail**](https://proton.me)  
The Protonmail mobile app can be downloaded in the Aurora Store. It is possible to set up a free email. To create the email anonymously, be sure to use a VPN when signing up. It is end-to-end encrypted between protonmail accounts.

To email other addresses securely, create an encryption key with:

- [**OpenKeychain**](https://www.openkeychain.org/). With this application it is possible to create or import an encryption key. To set up, write a nick and an email and a key will be generated. To share the *Public key*, select the entry that was just made --> click on the three dots in the upper right corner --> choose *Advanced* --> *Share* --> *Share with* and share icon --> the application to use in order to send the key --> Send. The format will be .asc. You can import this .asc file into your Protonmail account.

**Browser:**  

- [**Tor browser**](https://www.torproject.org/download/). Tor has built in protection of IP address.

- [**Fennec**](https://f-droid.org/en/packages/org.mozilla.fennec_fdroid/) is based on the latest Firefox release. This browser blocks trackers and also has a private mode. The private mode means that when selecting the mask in the upper right corner of the browser, a tab with enhanced privacy properties will open, from which history is cleared when closing the tab or app.

**Video app (Youtube front-end):**  

- [**PipePipe**](https://f-droid.org/en/packages/InfinityLoop1309.NewPipeEnhanced/) is an ad free YouTube alternative.

**Notes:**  

- [**Markor**](https://f-droid.org/en/packages/net.gsantner.markor/) for writing Markdown docs, and because its also compatible with any other plaintext software on any platfrom, it is compatible with usage on computer.

**Isolation of non-privacy apps:**  

- [**Insular**](https://f-droid.org/en/packages/com.oasisfeng.island.fdroid/), which creates an *island* and isolates this space from the rest of your phone. On the island it is possible to keep apps which have security issues. Such apps can be downloaded in the island via Aurora store. 

In Insular there is *Mainland* and *Island*. These two are separated from each other. Certain applications can cause security problems, such as Google apps which gather a lot of user data. 

On the main screen there will be two options, *Personal* and *Work*. All applications on the Island exists on the Work screen. They are visible with a lock on the logo and through this they can be distinguished from other applications. These icons can be moved from somewhere else if this is wanted. 

In Insular: In the Mainland section, click on an application, ie. Aurora store. There is a plus (+) in the lower right corner. When clicking on the plus (+), it's possible to clone the app from Mainland to the Island. 

 If Aurora store is opened on the Island, all downloaded applications from Aurora store will be directly stored on the Island.

 Also see the option of [*User profiles on Graphene OS*](https://wiki.lunardao.net/privacy_setup.html#user-profiles-on-graphene-os) below.

**Remove metadata from pictures:**  

- [**ObscuraCam**](https://guardianproject.info/apps/org.witness.sscphase1/). Blur faces and remove metadata. 
 
- [**Scrambled Exif**](https://f-droid.org/en/packages/com.jarsilio.android.scrambledeggsif/) to remove metadata.

To use Scrambled Exif, there is no need to open the application. Instead, go directly to the Gallery, select the picture to share, click on the *share* icon, and select Scrambled Exif. Then choose the app to use in order to send the picture, choose contact and send.

**Navigation:**  

- [**Osmand**](https://osmand.net/)  

- [**maps.me**](https://maps.me/) 
 
Both of these applications can be used as offline maps. maps.me asks for a lot of permissions. It is possible to deny all of them for privacy considerations (the request for permissions appear two times). After having denied the requests, go to Settings --> Apps --> All apps --> maps.me/OsmAnd --> Permissions. Disallow *sensors* and allow *folder and media* (so the two allowed are *Network* and *Folder and media* for internet and storage). Both of these apps have [anti-features](https://f-droid.org/en/docs/Anti-Features/), but offline maps can be handy to have.

**Crypto wallet:** 

- [**Monerujo**](https://www.monerujo.io) is a Monero wallet, which allows usage of [tor onion nodes](https://www.techradar.com/features/what-is-tor-and-how-does-it-work) when connecting the wallet.

- [**Cake wallet**](https://cakewallet.com/). Send, receive and exchange Monero, Bitcoin, Litecoin and Haven with Cake Wallet. It's good to utilize Monero as it is private by default, but there might be occasions when other currencies are needed. If the device has been set up in a secure way (using VPN or tor), then other transactions are not connected to a IP address which is also connected to the real address.  

## User profiles on Graphene OS

Graphene OS *User profiles* are isolated workspaces that has it's own set of encryption keys. It functions as setting up a completely new phone and each profile have their own instances of apps, app data and profile data (contacts, media store, home directory and so on). Apps can't see the apps running on other user profiles and can only communicate with apps within the same profile. The profiles have separate passwords. It is possible to have 31 (+1 guest) profiles.

If holding the power button (as if wanting to reboot phone), select *End session* and everything that was running on the profile has been terminated (not deleted, just shut down). This avoid leakage of metadata when not actively using that profile and also ensures no apps running in the background.

To set up a new *User profile*, go to:  
- *Settings* --> *System* --> *Multiple users*.  
- Toggle *Allow Multiple users*  
- Select *Add user*, chose name etcetera. 
*Note: Everything need to be set up from scratch.*

**Sources:**  
- [**https://grapheneos.org/features#more-user-profiles**](https://grapheneos.org/features#more-user-profiles)  
- [**https://inv.riverside.rocks/watch?v=20C0FD7mGDY**](https://inv.riverside.rocks/watch?v=20C0FD7mGDY)

## Banana phone as hotspot

- Read [**SIM card data collection**](./simdata.md) to have a background for the suggestion to not use a SIM card in this set up.  
- Read [**Nokia "Banana" jailbreak**](./bananahack.md) on how to set up a Nokia 8110, to use as a hotspot for the Graphene phone, and be able to randomize IMEI number.
