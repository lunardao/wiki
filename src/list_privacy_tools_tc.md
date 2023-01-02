# 隱私工具清單

隨着去中心化、隱私性的技術和零知識密碼學不斷地發展，隱私和去中心化的分布不再是一個遙遠的未來目標。LunarDAO的目標之一，是要找出此時此刻已有哪些工具和可能性可供我們利用。作為一個Lunarpunks的社群，我們有能力編制出一個堅實的資源庫，包括鏈接和應用手冊，並不斷地擴展。

## 在線視頻共享平台

[**FreeTube**]（https://freetubeapp.io/）：<br>
一個私人的YouTube客戶端。</br>

[**Invidious**](https://inv.riverside.rocks/):<br>
Invidious是一個類似YouTube但開源的平台，旨在作為YouTube官方網站的隱私替代。<br>
- [文檔](https://github.com/iv-org/documentation)</br>

## 即時通信軟件/客戶端

在日常私人通信上，你有必要選擇一個會隱藏你的IP地址的軟件，如 [ProtonVPN](https://protonvpn.com/download)、[RiseupVPN](https://riseup.net/en/vpn) 或 [TOR](https://www.torproject.org/download/)。如果使用手機通訊，不要使用SIM卡，並將手機設置為在每次重新連接時自動重置MAC地址。

[**ircd**](https://darkrenaissance.github.io/darkfi/misc/ircd/ircd.html):br>
ircd是一個完全匿名的點對點通信工具，由DarkFi開發，可以加密或不加密使用，支持私信或群聊。它可以在終端中直接與 [Weechat](https://weechat.org/) 等客戶端協同工作。沒有需要建立一個賬戶，沒有驗證碼，也沒有臃腫的應用程序和多剩的空屏。它是完全分布式的，在TOR上運行。

[**Session**](https://getsession.org/):<br>
Session是一個開源的通信工具，支持私人和匿名通信，私信、群聊和語音通話。
- [文檔](https://github.com/oxen-io)<br>
- [白皮書](https://arxiv.org/pdf/2002.04609.pdf)</br>。

[**Signal**](https://www.signal.org/)：<br>
Signal是一個免費的、端到端的私人通信工具，用於私信、群聊，語音或視像通話。目前，你需要一個電話號碼來要設置Signal。
- [文檔](https://www.signal.org/docs/)</br>

[**Element**](https://element.io/)：<br>
端到端的加密通信工具，用於私信、群聊以及視頻。可以與其他通信應用程式橋接，甚至例如是 Whatsapp 和 Telegram 等商業、中心化和非隱私的即時通信軟件。<br>
- [文檔](https://github.com/vector-im)</br>

[**XMPP**](https://xmpp.org/) ，以 [Jabber](jabber.org) 或 [Pidgin](https://pidgin.im/) 來應用：<br>
XMPP是一套用於即時通訊、群組聊天、語音和視頻通話的開放技術。它是分散和開源的。<br>
- [文檔](https://xmpp.org/about/technology-overview/)</br>

[**Simplex chat**](https://simplex.chat/)：<br>
用於聊天、音頻和視頻的端到端加密通訊工具，不會分配識別碼給用戶。
- [文檔](https://github.com/simplex-chat/simplex-chat)</br>

## 虛擬機和Tails

[**Tails**](https://tails.boum.org/)：<br>
Tails是一個防監控、可移植的操作系統。整個操作系統在一個USB手指上，不訪問也不存儲數據到電腦中（只使用RAM）。關機后不會存儲元數據。默認設定下會瞞騙MAC地址，更只會用TOR網絡連接到互聯網。手指上的數據是加密的。它是基於極簡版的Debian – Gnome。默認下具有GPG加密、電子郵件客戶端、洋蔥文件共享、Pidgin、擦除選項、keepass、元數據清理等工具。它還有一個功能，移除手指會立即關閉電腦。
- [文檔](https://tails.boum.org/doc/index.en.html)</br>

[**Whonix**](https://www.whonix.org/)：<br>
Whonix是一個虛擬機器，會像一個應用程序一樣在作業系統內運行，以幫助用戶在互聯網上保持匿名，例如將IP地址隨機化和使用TOR。關閉時沒有數據會被存儲。
- [文檔](https://www.whonix.org/wiki/Documentation)</br>

[**立方體**](https://www.qubes-os.org/)：<br>
通過虛擬化，在一個安全區隔模型中工作，將硬件和虛擬機（qubes）相互隔離。它不只是一個假設用戶會遭受攻擊而產生的技術解決方案，而且還是一套思維方式與實踐方法。即當惡意鏈接或文件被打開時，因為是在一次性虛擬機中，用戶因此所受的損害將會減低。
- [文檔](https://www.qubes-os.org/doc/)</br>

## 文件加密

[**OpenPGP**]（https://www.openpgp.org/）：<br>
OpenPGP是用於電子郵件通信的端到端加密協議。<br>
- [文檔](https://www.openpgp.org/software/developer/)</br>

[**Rage**](https://github.com/str4d/rage):<br>
Rage是一個以Rust實施的Age（Actual Good Encryption）。它的特點是使用細小的顯式密鑰，沒有配置選項，以及可組合性的UNIX風格。在終端中運作。</br>

## 電子郵件客戶端

[**Tutanota**](https://tutanota.com/)

[**Protonmail**](https://proton.me/)

[**Riseup**](https://mail.riseup.net)

[**Systemli**](https://www.systemli.org/service/mail/)

## 硬槃加密

[**VeraCrypt**](https://www.veracrypt.fr/en/Home.html)：<br>
VeraCrypt是一個免費的開源硬碟加密軟件，用於創建加密存儲空間、隱藏或可見的分區或裝置。</br>

[**LUKS**](https://docs.fedoraproject.org/en-US/quick-docs/encrypting-drives-using-LUKS/#_overview_of_luks):<br>
LUKS是linux發行版以及Tails上的一個功能。它用於加密分區，如手指或硬碟。

## VPN和TOR

[**ProtonVPN**](https://protonvpn.com/download)

[**RiseupVPN**](https://riseup.net/en/vpn)

[**TOR瀏覽器**](https://www.torproject.org/download/)

## MAC地址隨機化

無線網路、藍牙和以太網連接都使用MAC地址。MAC地址是一組12位的十六進制數字，每兩位數字之間用冒號或連字號分開。MAC地址用於識別用戶本地網絡中的裝置。由於每個裝置的MAC都是獨一無二的，這地址可以用來追蹤用戶。當走動時，手機會掃描附近的無線網路並廣播其MAC地址。為了更好地保護隱私，學習如何改變MAC地址是一件好事。以下有三個涉及這個問題的資源。

[Android developers](https://android-developers.googleblog.com/2017/04/changes-to-device-identifiers-in.html)
[GrapheneOS](https://grapheneos.org/usage#updates-security)
[Cyberithub](https://www.cyberithub.com/how-to-change-the-mac-address-on-ubuntu-20-04-lts-macchanger/)

## IMEI隨機化

### 「香蕉手機」

IMEI是 [國際移動設備識別] (https://en.wikipedia.org/wiki/International_Mobile_Equipment_Identity) 的縮寫。它是GSM、或3GPP和iDEN移動電話以及一些衛星電話的數字標識，每組都是獨一無二的。

**IMEI隨機化*∶有不同的方法可以破解諾基亞的「香蕉手機」(Nokia 8110)，以實現IMEI隨機化。最簡單的方法是安裝 [華萊士工具箱] (https://gitlab.com/suborg/wallace-toolbox/-/archive/master/wallace-toolbox-master.zip)

[**隨機IMEI生成器**](https://randommer.io/imei-generator)

- 在諾基亞8110上安裝 [**Gerda OS**] (https://gerda.tech/#h1.4_install) 以提高可用性。

## 安全的安卓手機

安裝上 [**Grapene OS**] (https://grapheneos.org/)的谷歌Pixel手機（很諷刺地）。

## 徹底粉碎／擦除文件

[**Shred files on linux**](https://www.freecodecamp.org/news/securely-erasing-a-disk-and-file-using-linux-command-shred/)：<br>
Shred命令會將一份文件或硬碟的數據復蓋上几次，這使得第三方軟件或硬件探測難以恢復數據。這當然有助保護用戶的隱私。</br>
