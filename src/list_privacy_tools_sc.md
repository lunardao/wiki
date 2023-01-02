# 隐私工具清单

随着去中心化、隐私性的技术和零知识密码学不断地发展，隐私和去中心化的分布不再是一个遥远的未来目标。LunarDAO的目标之一，是要找出此时此刻已有哪些工具和可能性可供我们利用。作为一个Lunarpunks的社群，我们有能力编制出一个坚实的资源库，包括链接和应用手册，并不断地扩展。

## 在线视频共享平台

[**FreeTube**]（https://freetubeapp.io/）：<br>
一个私人的YouTube客户端。</br>

[**Invidious**](https://inv.riverside.rocks/):<br>
Invidious是一个类似YouTube但开源的平台，旨在作为YouTube官方网站的隐私替代。<br>
- [文档](https://github.com/iv-org/documentation)</br>

## 即时通信软件/客户端

在日常私人通信上，你有必要选择一个会隐藏你的IP地址的软件，如 [ProtonVPN](https://protonvpn.com/download)、[RiseupVPN](https://riseup.net/en/vpn) 或 [TOR](https://www.torproject.org/download/)。如果使用手机通讯，不要使用SIM卡，并将手机设置为在每次重新连接时自动重置MAC地址。

[**ircd**](https://darkrenaissance.github.io/darkfi/misc/ircd/ircd.html):<br>
ircd是一个完全匿名的点对点通信工具，由DarkFi开发，可以加密或不加密使用，支持私信或群聊。它可以在终端中直接与 [Weechat](https://weechat.org/) 等客户端协同工作。没有需要建立一个账户，没有验证码，也没有臃肿的应用程序和多剩的空屏。它是完全分布式的，在TOR上运行。

[**Session**](https://getsession.org/):<br>
Session是一个开源的通信工具，支持私人和匿名通信，私信、群聊和语音通话。
- [文档](https://github.com/oxen-io)<br>
- [白皮书](https://arxiv.org/pdf/2002.04609.pdf)</br>。

[**Signal**](https://www.signal.org/)：<br>
Signal是一个免费的、端到端的私人通信工具，用于私信、群聊，语音或视像通话。目前，你需要一个电话号码来要设置Signal。
- [文档](https://www.signal.org/docs/)</br>

[**Element**](https://element.io/)：<br>
端到端的加密通信工具，用于私信、群聊以及视频。可以与其他通信应用程式桥接，甚至例如是 Whatsapp 和 Telegram 等商业、中心化和非隐私的即时通信软件。<br>
- [文档](https://github.com/vector-im)</br>

[**XMPP**](https://xmpp.org/) ，以 [Jabber](jabber.org) 或 [Pidgin](https://pidgin.im/) 来应用：<br>
XMPP是一套用于即时通讯、群组聊天、语音和视频通话的开放技术。它是分散和开源的。<br>
- [文档](https://xmpp.org/about/technology-overview/)</br>

[**Simplex chat**](https://simplex.chat/)：<br>
用于聊天、音频和视频的端到端加密通讯工具，不会分配识别码给用户。
- [文档](https://github.com/simplex-chat/simplex-chat)</br>

## 虚拟机和Tails

[**Tails**](https://tails.boum.org/)：<br>
Tails是一个防监控、可移植的操作系统。整个操作系统在一个USB闪存盘上，不访问也不存储数据到计算机中（只使用RAM）。关机后不会存储元数据。默认设定下会瞒骗MAC地址，更只会用TOR网络连接到互联网。闪存盘上的数据是加密的。它是基于极简版的Debian – Gnome。默认下具有GPG加密、电子邮件客户端、洋葱文件共享、Pidgin、擦除选项、keepass、元数据清理等工具。它还有一个功能，移除闪存盘会立即关闭计算机。
- [文档](https://tails.boum.org/doc/index.en.html)</br>

[**Whonix**](https://www.whonix.org/)：<br>
Whonix是一个虚拟机器，会像一个应用程序一样在操作系统内运行，以帮助用户在互联网上保持匿名，例如将IP地址随机化和使用TOR。关闭时没有数据会被存储。
- [文档](https://www.whonix.org/wiki/Documentation)</br>

[**立方体**](https://www.qubes-os.org/)：<br>
通过虚拟化，在一个安全区隔模型中工作，将硬件和虚拟机（qubes）相互隔离。它不只是一个假设用户会遭受攻击而产生的技术解决方案，而且还是一套思维方式与实践方法。即当恶意链接或文件被打开时，因为是在一次性虚拟机中，用户因此所受的损害将会减低。
- [文档](https://www.qubes-os.org/doc/)</br>

## 文件加密

[**OpenPGP**]（https://www.openpgp.org/）：<br>
OpenPGP是用于电子邮件通信的端到端加密协议。<br>
- [文档](https://www.openpgp.org/software/developer/)</br>

[**Rage**](https://github.com/str4d/rage):<br>
Rage是一个以Rust实施的Age（Actual Good Encryption）。它的特点是使用细小的显式密钥，没有配置选项，以及可组合性的UNIX风格。在终端中运作。</br>

## 电子邮件客户端

[**Tutanota**](https://tutanota.com/)

[**Protonmail**](https://proton.me/)

[**Riseup**](https://mail.riseup.net)

[**Systemli**](https://www.systemli.org/service/mail/)

## 硬盘加密

[**VeraCrypt**](https://www.veracrypt.fr/en/Home.html)：<br>
VeraCrypt是一个免费的开源硬盘加密软件，用于创建加密存储空间、隐藏或可见的分区或装置。</br>

[**LUKS**](https://docs.fedoraproject.org/en-US/quick-docs/encrypting-drives-using-LUKS/#_overview_of_luks):<br>
LUKS是linux发行版以及Tails上的一个功能。它用于加密分区，如闪存盘或硬盘。

## VPN和TOR

[**ProtonVPN**](https://protonvpn.com/download)

[**RiseupVPN**](https://riseup.net/en/vpn)

[**TOR浏览器**](https://www.torproject.org/download/)

## MAC地址随机化

无线网路、蓝牙和以太网连接都使用MAC地址。MAC地址是一组12位的十六进制数字，每两位数字之间用冒号或连字号分开。MAC地址用于识别用户本地网络中的装置。由于每个装置的MAC都是独一无二的，这地址可以用来追踪用户。当走动时，手机会扫描附近的无线网路并广播其MAC地址。为了更好地保护隐私，学习如何改变MAC地址是一件好事。以下有三个涉及这个问题的资源。

[Android developers](https://android-developers.googleblog.com/2017/04/changes-to-device-identifiers-in.html)
[GrapheneOS](https://grapheneos.org/usage#updates-security)
[Cyberithub](https://www.cyberithub.com/how-to-change-the-mac-address-on-ubuntu-20-04-lts-macchanger/)

## IMEI随机化

### 「香蕉手机」

IMEI是 [国际移动设备识别] (https://en.wikipedia.org/wiki/International_Mobile_Equipment_Identity) 的缩写。它是GSM、或3GPP和iDEN移动电话以及一些卫星电话的数字标识，每组都是独一无二的。

**IMEI随机化*∶有不同的方法可以破解诺基亚的「香蕉手机」(Nokia 8110)，以实现IMEI随机化。最简单的方法是安装 [华莱士工具箱] (https://gitlab.com/suborg/wallace-toolbox/-/archive/master/wallace-toolbox-master.zip)

[**随机IMEI生成器**](https://randommer.io/imei-generator)

- 在诺基亚8110上安装 [**Gerda OS**] (https://gerda.tech/#h1.4_install) 以提高可用性。

## 安全的安卓手机

安装上 [**Grapene OS**] (https://grapheneos.org/)的谷歌Pixel手机（很讽刺地）。

## 彻底粉碎／擦除文件

[**Shred files on linux**](https://www.freecodecamp.org/news/securely-erasing-a-disk-and-file-using-linux-command-shred/)：<br>
Shred命令会将一份文件或硬盘的数据复盖上几次，这使得第三方软件或硬件探测难以恢复数据。这当然有助保护用户的隐私。</br>
