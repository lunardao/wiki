# List of privacy tools

As efforts on decentralization, privacy and zero-knowledge cryptography constantly develop, we should not see privacy and distribution as a goal in a distant future. LunarDAO aims to see what tools and possibilities are there here and now. As a community of Lunarpunks we have the ability to compile a solid pool of resources, links, manuals which constantly evolves. It is import for everyone to make their own evaluation of these projects privacy standard and make an informed decision what to use based on that.

## Online video sharing platforms

[**FreeTube**](https://freetubeapp.io/):<br>
A private YouTube client.</br>

[**Invidious**](https://inv.riverside.rocks/):<br>
Invidious is an open-source alternative to YouTube and is intended as a privacy alternative to the official YouTube website.<br>
- [Documentation](https://github.com/iv-org/documentation)</br>

## Messaging apps/clients

For all the private messaging options it is necessary to use an application to hide your IP address, such as [ProtonVPN](https://protonvpn.com/download), [RiseupVPN](https://riseup.net/en/vpn) or [TOR](https://www.torproject.org/download/). If used on phone - do not use a sim-card and set up an automatic reset of the mac address on every re-connection.

[**ircd**](https://darkrenaissance.github.io/darkfi/misc/ircd/ircd.html):<br>
Ircd is a fully anonymous peer-to-peer communication tool developed by DarkFi which can be used encrypted or unencrypted, supports DM and group chats. Works with clients like [Weechat](https://weechat.org/) directly in terminal. No need to create an account, no captchas, no bloated app with extra empty screen space. Fully distributed, runs on tor.

[**Session**](https://getsession.org/):<br>
Session is an open source messenger that supports private and anonymous communications; DM, group chats, and voice calls.<br>
- [Documentation](https://github.com/oxen-io)<br>
- [Whitepaper](https://arxiv.org/pdf/2002.04609.pdf)</br>

[**Signal**](https://www.signal.org/):<br>
Signal is a free, end-to-end private messenger for DM, group chats and calls. At present, to set up Signal you need a phone number.<br>
- [Documentation](https://www.signal.org/docs/)</br>

[**Molly**](https://molly.im/):<br>
Molly is an independent Signal fork for Android. Molly is compatible with Signal user but also has a few more unique features, including SOCKS proxy and Tor support.<br>
- [Documentation](https://github.com/mollyim/mollyim-android)</br>

[**Element**](https://element.io/):<br>
End-to-end encrypted messenger for DM and group chats, and video. Bridges to other chat app, even commercial/centralized an not private ones, such as Whatsapp and Telegram.<br>
- [Documentation](https://github.com/vector-im)</br>

[**XMPP**](https://xmpp.org/) with [Jabber](jabber.org) or [Pidgin](https://pidgin.im/):<br>
XMPP is a set of open technologies for instant messaging, group chat, voice and video calls. It is decentralized and open source.<br>
- [Documentation](https://xmpp.org/about/technology-overview/)</br>

[**Simplex chat**](https://simplex.chat/):<br>
End-to-end encrypted messaging for chat, audio and video with no identifiers assigned to the users.<br>
- [Documentation](https://github.com/simplex-chat/simplex-chat)</br>

## Virtual machines and Tails

[**Tails**](https://tails.boum.org/):<br>
Tails is a portable operating system which protects against surveillance. The entire OS is on a USB without accessing or storing data in the computer (only using RAM). No metadata stored after shut down. MAc adress spoofing and tor network to connect to internet by default. Data on USB encrypted. Based on a minimalistic version of Debian - Gnome. GPG encryption, email client, onion file share, pidgin, wiping option, keepass, metadata cleaner etc by default. Tails has a function which shuts down the computer immediatly after USB removal.<br>
- [Documentation](https://tails.boum.org/doc/index.en.html)</br>

[**Whonix**](https://www.whonix.org/):<br>
Whonix is a virtual machine that runs like a process (an app) inside the OS, to help user stay anonymous on internet by for example randomizing IP address and using TOR. When shut down, no data is stored.<br>
- [Documentation](https://www.whonix.org/wiki/Documentation)</br>

[**Qubes**](https://www.qubes-os.org/):<br>
Works on a model of secure compartmentalization through virtualization, isolating both hardware and virtual machines (qubes) from each other. Creating not only a technical solution under the assumption that a user will suffer exploits, but also a mindset and praxis how to protect the user and limit the damage when events such as opening malicious links or files happen, by doing so in a disposable virtual machine.<br>
- [Documentation](https://www.qubes-os.org/doc/)</br>

## File encryption

[**OpenPGP**](https://www.openpgp.org/):<br>
OpenPGP is end-to-end encryption protocol used for email communication.<br>
- [Documentation](https://www.openpgp.org/software/developer/)</br>

[**Rage**](https://github.com/str4d/rage):<br>
Rage is a rust implementation of age. It features small explicit keys, no config options, and UNIX-style composability. Runs in terminal.</br>

## Email clients

[**Tutanota**](https://tutanota.com/)

[**Protonmail**](https://proton.me/)

[**Riseup**](https://mail.riseup.net)

[**Systemli**](https://www.systemli.org/service/mail/)

## Disk encryption

[**VeraCrypt**](https://www.veracrypt.fr/en/Home.html):<br>
VeraCrypt is a free open source disk encryption software for creating encrypted storage; hidden or visible partitions or devices.</br>

[**LUKS**](https://docs.fedoraproject.org/en-US/quick-docs/encrypting-drives-using-LUKS/#_overview_of_luks):<br>
LUKS is a feature in linux distributions as well as on Tails. It is used for encryption of particitions, such as USB or disk.</br>

## VPN and Onion routing

[**ProtonVPN**](https://protonvpn.com/download)

[**RiseupVPN**](https://riseup.net/en/vpn)

[**TOR browser**](https://www.torproject.org/download/)

[**Lokinet**](https://lokinet.org/) is a private browser (onion routing) that doesn't reveal you Ip address. It is decentralized and run on nodes in [Oxen network](https://oxen.io/). More info about how it works and differences with other options in their [faq](https://lokinet.org/faq.)

## MAC address randomization

Wi-Fi, Bluetooth, and Ethernet connections all use MAC addresses. MAC addresses are always a 12 digit hexadecimal number, with the numbers separated every two digits by a colon or hyphen. MAC addresses are used to identify which device is which on users local network. Because they’re unique, MAC addresses can be used to track a user. When walking around, a smartphone scans for nearby Wi-Fi networks and broadcasts its MAC address. For better privacy it is good to learn how to change the MAC address. Here are three pages which addresses this issue.

[Android developers](https://android-developers.googleblog.com/2017/04/changes-to-device-identifiers-in.html)
[GrapheneOS](https://grapheneos.org/usage#updates-security)
[Cyberithub](https://www.cyberithub.com/how-to-change-the-mac-address-on-ubuntu-20-04-lts-macchanger/)

## IMEI randomization

### Banana phone

IMEI stands for [International Mobile Equipment Identity](https://en.wikipedia.org/wiki/International_Mobile_Equipment_Identity). It is a unique numeric identifier of GSM, or 3GPP and iDEN mobile phones, as well as some satellite phones.

**IMEI randomization**: Nokia "Banana" phone (NOkia 8110) has different ways to be hacked for IMEI randomization. The most simple way is to install [Wallace Toolbox](https://gitlab.com/suborg/wallace-toolbox/-/archive/master/wallace-toolbox-master.zip)

[**Random IMEI generator**](https://randommer.io/imei-generator)

- Installing [**Gerda OS**](https://gerda.tech/#h1.4_install) on Nokia 8110 for improved usability.

## Secure android phones

Google pixel (yes strangely enough) with [**Graphene OS**](https://grapheneos.org/)

## Digital photo metadata removal

[**Exiftool**](https://exiftool.org/)

[**ExifCleaner**](https://exifcleaner.com/)


## File sharing tools

[**Onionshare**](https://onionshare.org/)

[**Send**](https://github.com/timvisee/send-instances/#instances)

## Shred/Wipe files

[**Shred files on linux**](https://www.freecodecamp.org/news/securely-erasing-a-disk-and-file-using-linux-command-shred/):<br>
The shred command helps to overwrite the data of a file or disk several times. This makes it harder for third party software and hardware probing to recover the data, which is supporting users privacy.</br>

[**bleachbit**](https://www.bleachbit.org/)

## Privacy resources

[**Privacytools**](https://www.privacytools.io/)  PrivacyTools.io provides services, tools and privacy guides to counter global mass surveillance.

[**Anonymous Planet: The Hitchhiker’s Guide to Online Anonymity**](https://anonymousplanet.org/) This is a maintained guide with the aim of providing an introduction to various online tracking techniques, online ID verification techniques, and detailed guidance to creating and maintaining (truly) anonymous online identities.

[**Privacy Guides**](https://www.privacyguides.org/) The privacy tools are primarily chosen based on security features, with additional emphasis on decentralized and open-source tools.

## Other guides

[**Hitchhiker's guide to anonymity**](https://anonymousplanet.org/guide.html) 

[**Privacy guides**](https://www.privacyguides.org/basics/common-threats/)
