# OS(Operating System)
学生時代はWindowsOSを使い、社会人になったときはゲームから離れるためにもMac端末を購入して使っていた。  
今後は、それらだけでなく、他のOS向けに得られた知見をここで記録に残そうと思う。  

* 一覧  
  * [ネットワーク利用](#operatingsystemnetwork)  
  * [Android](#androidoperatingsystem)  
  * [MacOS](#macoperatingsystem)  
  * [Windows](#windowsoperatingsystem)  
  * [Linux](#linuxoperatingsystem)  
  * [UNIX](#unixoperatingsystem)  

<a id="operatingsystemnetwork"></a>
## ネットワーク利用

総務省：[国民のためのサイバーセキュリティサイト](https://www.soumu.go.jp/main_sosiki/cybersecurity/kokumin/index.html)  
独立行政法人情報処理推進機構：[情報セキュリティ](https://www.ipa.go.jp/security/index.html)  
内閣サイバーセキュリティセンター(NISC)：<https://www.nisc.go.jp>  

ログイン可能なサービスで、[2段階認証](https://www.itmedia.co.jp/news/articles/2304/25/news080.html)が利用できる場合は必ず設定する。  
また、[Hitomi Kimura](https://twitter.com/hitok_/status/1650720610065035264)さんによる心配事について、利用規約やプライバシー規約を見返したが問題なさそうだった。  
そもそも用語を理解していないのだが、2要素認証などとは別物？  
そして、Googleによる[パスキー](https://security.googleblog.com/2022/10/SecurityofPasskeysintheGooglePasswordManager.html)の利用についても考慮する。  

* 検索エンジン  
  * [duckduckgo](https://duckduckgo.com)  
  * [startpage](https://www.startpage.com)  
  * [qwant](https://www.qwant.com/)  
    日本未対応。  
  * [ecosia](https://www.ecosia.org)  
  * [metager](https://metager.org)  
  * 以下、安全性不明。  
    * <https://swisscows.com/en>  
    * <https://www.mojeek.com>  
    * <https://searx.nixnet.services/>  
    * <https://search.privacyguides.net/>  

* 目次  
  * [ネットサーフィン](#operatingsystemnetwork_internetsurfing)  
  * [VPN](#operatingsystemnetwork_vpn)  
  * [PGP](#operatingsystemnetwork_pgp)  
  * [FIDOセキュリティキー](#operatingsystemnetwork_yubico)  
  * [メール](#operatingsystemnetwork_mail)  

* 仕様書  
  * [CRYPTREC暗号の仕様書](https://www.cryptrec.go.jp/method.html)  

* 備忘  
  世間が騒いだときに覗く場所？  
  * [日本ネットワークインフォメーションセンター](https://www.nic.ad.jp/ja/)  

* 記事  
  * [米国のアンチウイルスユーザーの61%は無料ソフトウェアを使用](https://www.security.org/antivirus/antivirus-consumer-report-annual/)  

ネット活用時に、[教員向け ChatGPT 講座 ～基礎から応用まで～](https://www.youtube.com/watch?v=lwccHzqfuvc)が参考になるかも？  


<a id="operatingsystemnetwork_internetsurfing"></a>
### ネットサーフィン
普通にネットサーフィンをするだけならば問題ないように思うが、ログインが伴う作業の場合は、暗号化をしておくのが吉だろう。  
もっとも、Twitterアカウントデータが[流出](https://piyolog.hatenadiary.jp/entry/2023/01/07/000622)する出来事は私のあずかり知らぬところになるため、私だけが暗号化通信しても意味がない。  

* [利用規約およびプライバシーポリシーを分析後、評価](https://tosdr.org)するサイト。  
  * [Googleの概要](https://policies.google.com)  
    * セキュリティ  
      * [Google Password Manager](https://security.googleblog.com/2022/10/SecurityofPasskeysintheGooglePasswordManager.html)  
      * [Google Authenticator](https://security.googleblog.com/2023/04/google-authenticator-now-supports.html)  

* ブラウザ  
  * [Tor](https://www.torproject.org)  
    通信の自由を保障されるネットサーフィンが可能(通信経路を多重にするため、通信速度が低下する)。  
  * [Firefox](#operatingsystemnetwork_mail_SendAndReceiveInBrowser)  
    通常利用のブラウザ。  
  * [Pale Moon](https://www.palemoon.org/)  
    Firefoxブラウザ用の古いアドオンを動かせるようにしているブラウザだが、使わない(むしろ使ったことがない)。  
  * [GNU IceCat](https://www.gnu.org/software/gnuzilla/)  
    独自ソフトを動かないようにする仕組みがある？(使ったことがないため分からない)  
  * [SeaMonkey](https://www.seamonkey-project.org/)  
    ブラウザ機能だけでなく、メール送受信もできるようだが、使うことはないだろう。  

* ルータ  
  * [Wavlink](https://www.wavlink.com/en_us/index.html)  
    [安価な場合バックドアが存在する](https://gigazine.net/news/20201124-walmart-jetstream-router-backdoor/)ようだ。  
    そのため、使ってはならない。  
  * [Dリンク](https://www.dlink-jp.com)  
    [バックドアの脆弱性](https://www.itmedia.co.jp/enterprise/articles/1312/03/news038.html)があるため、使うべきでない。  
  * [TP-Link](https://www.tp-link.com/)  
    [NTPサーバに負荷を掛けるバグを含む](https://en.wikipedia.org/wiki/NTP_server_misuse_and_abuse)[問題](https://www.tp-link.com/jp/press/news/17792/)があった。  
    そして、[TFTPバックドア](https://sekurak.pl/tp-link-httptftp-backdoor/)として、root権限で実行できる？(翻訳がいまいちで理解できない部分が多い)  
    とにかく使ってはならないルータのひとつ。  
  * [NETGEAR](https://www.netgear.com/jp/home/wifi/routers/)  
    [バグを含んでいた](https://ja.wikipedia.org/wiki/Network_Time_Protocol#.E3.82.A6.E3.82.A3.E3.82.B9.E3.82.B3.E3.83.B3.E3.82.B7.E3.83.B3.E5.A4.A7.E5.AD.A6-.E3.83.8D.E3.83.83.E3.83.88.E3.82.AE.E3.82.A2NTP.E5.95.8F.E9.A1.8C)。  
    バックドアではないが、[検証不十分](https://pc.watch.impress.co.jp/docs/news/1086464.html)なルータを使うのは恐ろしい。  
  * [NASベンダーとして知られるSynologyから、その技術を応用した無線LANルーター「RT2600ac」が発売された。](https://internet.watch.impress.co.jp/docs/column/shimizu/1070396.html)  
    買うとしたらこれ(違う、持て余す)。  
  * [Linuxルーターを狙ったGo言語で書かれたマルウェアGobRAT](https://blogs.jpcert.or.jp/ja/2023/05/gobrat.html)  
    ルータがLinuxで動いている話？  
  * 英文  
    [This WiFi router is a Black Friday steal. Experts say it's a security risk.](https://mashable.com/article/jetstream-wifi-router-backdoor)  
    [Walmart-exclusive router and others sold on Amazon & eBay contain hidden backdoors to control devices](https://cybernews.com/security/walmart-exclusive-routers-others-made-in-china-contain-backdoors-to-control-devices/)  

ネットサーフィンとはちょっと違うが、クラウドストレージを利用する場合は[ゼロ知識証明](https://ja.wikipedia.org/wiki/ゼロ知識証明)が使われているサービスを利用する・・・つもり。  
そのため、今はGoogleドライブなどから撤退するために、そこに置いてある資材を引き上げているのだが、遅々として進まない。  
また、[Rcloneによる暗号化ストレージ](https://zenn.dev/milly/books/rclone-crypt-gdrive)にすることで、移行する必要がなくなるようだ。  
Googleドライブに限らず、他のクラウドストレージにも対応しているようだ。  

* クラウドストレージ  
  * [idrive(アカウント作成時にのみゼロ知識証明を選べる)サブスクリプション](https://www.idrive.com)  
    ※有料版のみ。  
  * [メガ(ゼロ知識証明利用可能)サブスクリプション](https://mega.nz/aff=jnWJKfzcabA)  
  * [pCloud(有料でゼロ知識証明利用可能)買い切り型](https://partner.pcloud.com/r/92117)

* 論外。  
  * [Dropbox](https://www.dropbox.com/)  
    [パスワード](https://internet.watch.impress.co.jp/docs/news/1018032.html)[漏洩発生](https://gigazine.net/news/20160901-60-million-dropbox-account-stole/)[サービス会社](https://cybersecurity-jp.com/news/11601)なので。。。  

サブスクリプションの場合は、利用したい容量と金額が合わず、なかなか契約に踏み切れない。  

[クラウドを支えるこれからの暗号技術](https://herumi.github.io/ango/)がPDFとして配布されており、暗号について勉強することができる。  
その前段階として、結城 浩さんの[暗号技術入門](https://www.sbcr.jp/product/4797382228/)を読む必要がある。  
そのため、一応紙媒体として購入したが・・・ほぼ読んでいないのが現状だ(絶対に読み終わるぞぉ)。  

そして、[パスワード自動生成(EpisoPass)](https://episopass.com)もあり、いちおう簡単には解読されないであろう技術も世の中に出回っている。  

* 記事  
  * [光回線の検証に「一戸建てを買うしかなかった」20年前～今では合計13Gbpsが自宅に](https://internet.watch.impress.co.jp/docs/special/1499490.html)  
  * [リチャード・ストールマンの個人サイト(RMS)](https://stallman.org)  
    将来は自己開発のみのコンピュータだけで生活したい。  
  * [さよならGAFAM：5社一気にブロック→地獄です](https://www.gizmodo.jp/2019/02/i-cut-the-big-five-tech-giants-from-my-life-it-was-hell.html)  
    こんな極端な排除をするつもりはないが、目に見えるGAFAMは避けたいと思っている。  
  * [Wi-Fiルーターのサポート期間っていつまで？　国内メーカー4社に聞いてみた](https://internet.watch.impress.co.jp/docs/special/1114330.html)  
    とりあえず、国内産のを使うことにした。  
  * [内部告発者のほぼ全員が嫌がらせを受けており70%はすぐに解雇されるか辞職を余儀なくされる、最悪の場合は殺害されることも](https://gigazine.net/news/20230502-whistleblowers-fired-forced-resign/)  
  * [｢女を知る前に男と性体験してしまった｣ジャニー喜多川氏に弄ばれたと綴ったアイドルの悲痛な叫び](https://president.jp/articles/-/69852)  
  * [8万人超の少年が食い物にされていた…夜のキャンプ場でボーイスカウトが受けた性的虐待の実態](https://president.jp/articles/-/70042)  

* Winny  
  内部告発者を守るために作られたソフトウェア。  
  [一般社団法人日本ハッカー協会](https://www.hacker.or.jp/)  

* OpenID  
  [基本から理解するJWTとJWT認証の仕組み](https://developer.mamezou-tech.com/blogs/2022/12/08/jwt-auth/)  
  これは、OpenIDを理解するための前知識であり、OpenIDやOAuth2.0などの説明はない。  
  [IndieAuth.com](https://indieauth.com)は何か関係ある？  


<a id="operatingsystemnetwork_vpn"></a>
### VPN
パソコンからの利用は気にしていないのだが、BlackBerry端末以外の携帯電話からのネットワーク利用は、情報漏洩が気になってしまう。  
今更感はあるが・・・。  
と言うことで、VPNを利用しようと思う。  

* VPNの接続種類(プロトコル)  
  基本は以下6種類(まだある？)。  
  * [PPTP](https://network.yamaha.com/setting/router_firewall/vpn/multi_function/triadic-pptp_remote)  
    TCP/IPネットワーク上のある機器から任意のアドレスの別の機器まで仮想的な伝送路を構築し、データを送受信するためのプロトコル（通信規約）(By.[e-Words](https://e-words.jp/w/PPTP.html))。  
    電話回線を使うときに(Microsoft社により)開発された規約だと考えれば、古いため、使うのはためらう。  
  * [L2TP/IPsec](http://www.rtpro.yamaha.co.jp/RT/docs/l2tp_ipsec/index.html)  
    L2TPクライアントからインターネット越しにセキュアな通信を可能にするそうだ(ルータ配下のプライベートネットワーク内の端末設定が必要だということなのだろう)。  
    言うなれば、ルータを自前で持っておく必要がある？  
  * [IKEv2](https://jpn.nec.com/univerge/ix/faq/ikev2.html)  
    鍵交換技術を採用した方式なので安全性は高い？(そして、弱い鍵交換技術は使えない？)  
  * [OpenVPN](https://www.openvpn.jp/introduction/)  
    GPLライセンスによるオープンソースプロトコルなのだろうが、、、それがどうした？  
  * [SSTP](http://campus-vpn.cc.tsukuba.ac.jp/ja/howto_sstp.aspx)  
    すべての通信をTCP上に載せるため、ファイアウォールを簡単に通過することができるから何？  
    何より、WindowsOS端末利用が前提での開発のようで、他の端末では対応していない可能性が高いようだ。  
  * [WireGuard](https://www.wireguard.com)  
    最先端の暗号技術を使用する非常にシンプルで高速で、OpenVPNと比べると高いパフォーマンスを発揮するそうだ(By.[archlinux](https://wiki.archlinux.jp/index.php/WireGuard))。  

<https://twitter.com/ockeghem/status/1660623191784448003>  
> なぜVPN業者の信頼性が大切かと言うと、VPN業者は、やろうと思えば簡単に中間者攻撃できるし、アプリをインストールするタイプであれば、それはマルウェアかもしれないわけで、「VPN 無料」とかで検索して安易に使ったら絶対だめ

~~[30分でランチ勉強！クラウド時代の当たり前「VPN」を学んでどこからでも安全なリモートワークを実現！](https://www.youtube.com/watch?v=yiLTEGrghfY)~~  
⇒ただの広告だった。  

中国製の携帯電話は、、、なかなか・・・日本産も最近では怪しいからな。  

有名なのは[VPN Gate](https://www.vpngate.net/ja/)らしい。  
とは言え、[不正利用防止の取り組み](https://www.vpngate.net/ja/about_abuse.aspx)として通信ログを記録しているため、VPNとは何ぞやという感じになってしまうが・・・。  
仕方ない。  

[公衆無線LANではVPNを使ったほうが安全？知っておきたいVPNの仕組み](https://pc.watch.impress.co.jp/docs/topic/feature/1502158.html)  

私の[IPアドレス](https://www.cman.jp/network/support/go_access.cgi)について調べるために、ネット検索した場合、[NordVPN](https://nordvpn.com/ja/what-is-my-ip/)が出てくる。  
そんなにここのVPNはいいのか？  
話は変わるが、[WHOISサービス](https://whois.jprs.jp)というのは何だ。  

それはさておき、[Kape Technologies](https://www.kape.com)と言う会社の存在が大事だ。  
この会社は前身が<ttp://crossrider.com>と言うブラウザのプラグイン開発会社だった。  
この前身社は、自社の広告などをユーザの意思にかかわらず、表示させ、利益を得ていたとのことで、当時の新聞社などが[批判](https://techcrunch.com/2012/06/28/crossriders-cross-browser-extension-development-platform-comes-out-of-beta/)したようだ。  
原因は、プラグインプログラムの虚弱性かなにかをつつくことで、第3者が利益を得られるようになったこと(コンピュータウィルスを仕込めることにつながる)。  
そのため、前身社は、開発継続が困難になったという経緯がある。  
その会社が名前を変えて、他のVPN会社を買収したことにより、VPN契約利用者の個人情報を売るようなことをしているのではないかという憶測が出回ることになった。  
元ネタ：[ギガジン](https://gigazine.net/news/20211015-former-malware-kape-technologies-owns-vpn-services/)  

* その買収された会社  
  * [ExpressVPN](https://www.expressvpn.com/)  
  * [CyberGhostVPN](https://www.cyberghostvpn.com/)  
  * [Private Internet Access VPN](https://www.privateinternetaccess.com/)  
  * [Zenmate](https://zenmate.com)  
  * [Webselenese](https://www.webselenese.com)  
    レビューサイト(自社製品を高得点にするための買収？)。  
    2023年の評価も上位3位が自社製品(買収会社)。  
    4位以降に他社製品([NordVPN](https://nordvpn.com/)・[Surfshark](https://surfshark.com/))。  

* [IPアドレスから住所の割り出し](https://www.geolocation.com/ja)  
  本当か？  

<a id="operatingsystemnetwork_pgp"></a>
### PGP
基本的には、PGPにて暗号化を行うのだが、大げさなことをしなくても[Cryptomator](#androidoperatingsystem_encryptLocal)アプリを利用するだけで十分に思う。  
しかし、それは秘密鍵暗号方式とも言える方法であり、公開鍵暗号方式ではない。  
不特定多数とのやりとりでは、後者を利用するのが望ましいだろう。  

東京大学情報基盤センターにて、[GPGによる公開鍵暗号と署名](https://lecture.ecc.u-tokyo.ac.jp/johzu/joho/Y2022/GPG/GPG/index.html)の説明をしている(去年の資料？)。    

* 目次  
  * [利用ソフトウェア](#operatingsystemnetwork_pgp_software)  
  * [利用方法](#operatingsystemnetwork_pgp_howtoencrypt)  
  * [YubiKey(FIDOセキュリティキー)への鍵焼き](#operatingsystemnetwork_pgp_yubico)  
  * [PGP鍵サーバへの登録](#operatingsystemnetwork_pgp_keyserver)  
  * [PGPをKeybaseに紐付け](#operatingsystemnetwork_pgppeggingcontrol_keybase)  
  * [PGPをkeyoxideに紐付け管理](#operatingsystemnetwork_pgppeggingcontrol_keyoxide)  


<a id="operatingsystemnetwork_pgp_software"></a>
#### 利用ソフトウェア
[GnuPG](https://www.gnupg.org/index.html)(通称[OpenPGP](https://www.openpgp.org))を使う。  
これを使う理由は、有名だからなのか、[Apple社](https://support.apple.com/ja-jp/HT201214)が説明していたこととオープンソースなので、問題はないだろうと判断した。  
他に紹介しているソフトウェアは、[GPG Keychain](https://gpgtools.org)と言うGUIツールをとりあえずインストールして使う。  
そして、GPGKeychainは有料だが、何に金を払えばいいのかいまいち分かっていない(そして、支払いせずに使えている)。  
もしかしたらサポート代金なのかもしれない(サポート不要ならば無料利用とかかな)。  


<a id="operatingsystemnetwork_pgp_howtoencrypt"></a>
#### 利用方法
PGPを使う方法というか、公開鍵の作成を示す。  
[あんちょこ](https://cheatsheets.chaospixel.com/gnupg/)  

<a id="operatingsystemnetwork_pgp_howtoencrypt_mainsubkey"></a>
<details><summary>主鍵の生成から副鍵の生成までの手順記録。</summary>

* 鍵の生成。  
  1. [主鍵の生成作業](#operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_mainkey)  
  1. [暗号用副鍵の生成作業](#operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_subkeyencryption)  
  1. [署名用副鍵の生成作業](#operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_subkeysignature)  
  1. [認証用副鍵の生成作業](#operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_subkeycertification)  
  1. [優先指定リストを設定](#operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_setpref)  
  1. [主鍵の秘密鍵をエクスポート](#operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_mainexport)  
  1. [主鍵の秘密鍵を削除](#operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_maindelete)  
  1. [副鍵のパスフレーズ変更](#operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_subchangepass)  

<a id="operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_mainkey"></a>
以下、主鍵の生成作業。
```terminal
$#gpg -K --with-subkey-fingerprint asakuno.secure@pgp.asakuno.org	←☆鍵指紋を表示するコマンド(複数ある場合詳細に知りたい)。
$ gpg --full-gen-key --expert	←☆主鍵の生成。
gpg (GnuPG) 2.4.1; Copyright (C) 2023 g10 Code GmbH
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

ご希望の鍵の種類を選択してください:
   (1) RSA と RSA
   (2) DSA と Elgamal
   (3) DSA (署名のみ)
   (4) RSA (署名のみ)
   (7) DSA (機能をあなた自身で設定)
   (8) RSA (機能をあなた自身で設定)
   (9) ECC (署名と暗号化) *デフォルト
  (10) ECC (署名のみ)
  (11) ECC (機能をあなた自身で設定)	←☆これ。
  (13) 既存の鍵
  (14) カードに存在する鍵
あなたの選択は? 11

このECC鍵にありうる操作: Sign Certify Authenticate
現在の認められた操作: Sign Certify	←☆署名機能不要(副鍵で補う)。

   (S) 署名機能を反転する	←☆これ。
   (A) 認証機能を反転する
   (Q) 完了

あなたの選択は? s

このECC鍵にありうる操作: Sign Certify Authenticate
現在の認められた操作: Certify	←☆証明機能が残った。

   (S) 署名機能を反転する
   (A) 認証機能を反転する
   (Q) 完了	←☆これ。

あなたの選択は? q
ご希望の楕円曲線を選択してください:
   (1) Curve 25519 *デフォルト	←☆現時点ではこれが最強のようだ。
   (2) Curve 448	←☆本当の最強はこれかもしれないが、普段使いできないので論外。
   (3) NIST P-256
   (4) NIST P-384
   (5) NIST P-521	←☆これが現時点の最強選択肢のはずだが、バックドア有り(第3者に、無断復号化される)。
   (6) Brainpool P-256
   (7) Brainpool P-384
   (8) Brainpool P-512	←☆最強硬度？(しかし、キーサーバが対応していない。何より処理が遅いようだ)。
   (9) secp256k1	←☆これは何？	NISTの何か？
あなたの選択は? 1
鍵の有効期限を指定してください。
         0 = 鍵は無期限	←☆これ。
      <n>  = 鍵は n 日間で期限切れ
      <n>w = 鍵は n 週間で期限切れ
      <n>m = 鍵は n か月間で期限切れ
      <n>y = 鍵は n 年間で期限切れ
鍵の有効期間は? (0)0
鍵は無期限です
これで正しいですか? (y/N) y

GnuPGはあなたの鍵を識別するためにユーザIDを構成する必要があります。

本名: asakunotomohiro	←☆メール受信者が識別できる名前が望ましい。
電子メール・アドレス: asakuno.secure@pgp.asakuno.org	←☆説明そのまま。
コメント: securemail@セキュアメール	←☆コメントは不要らしいが、他のPGPメールアカウントと区別できるコメントを付けた(一度付けたら変更不可？)。
あなたは文字集合'utf-8'を使っています。
次のユーザIDを選択しました:
    "asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>"

名前(N)、コメント(C)、電子メール(E)の変更、またはOK(O)か終了(Q)? O	←☆OkのOを入力。
たくさんのランダム・バイトの生成が必要です。キーボードを打つ、マウスを動か
す、ディスクにアクセスするなどの他の操作を素数生成の間に行うことで、乱数生
成器に十分なエントロピーを供給する機会を与えることができます。	←☆普通にパスフレーズ入力画面が出てきた(そこに入力)。
gpg: 失効証明書を '/Users/asakunotomohiro/.gnupg/openpgp-revocs.d/2771F0FCF8FE74CD9B9C25439D4893D18D358530.rev' に保管しました。
公開鍵と秘密鍵を作成し、署名しました。

pub   ed25519 2023-05-22 [C]
      2771F0FCF8FE74CD9B9C25439D4893D18D358530
uid                      asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

$
$ gpg -K --with-subkey-fingerprint asakuno.secure@pgp.asakuno.org
sec   ed25519 2023-05-22 [C]
      2771F0FCF8FE74CD9B9C25439D4893D18D358530
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

$
```
最後に出てきたメッセージの「**gpg: 失効証明書を〜〜〜に保管しました。**」と言うファイルは最後に[削除](#operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_mainrevfiledel)する(当然秘密鍵と一緒に別途保管後に実施)。  
秘密鍵から作れるため、保管せずに削除してかまわない(パスフレーズを忘れた場合は必要なので、どうするかは人それぞれかな)。  

コメントには短めを付けるのが吉かもしれない。  
そして、[keyoxide](#operatingsystemnetwork_pgppeggingcontrol_keyoxide)にて、コメントが表示される。  
例）<https://keyoxide.org/3637202523e7c1309ab79e99ef2dc5827b445f4b>にて、**material for test frameworks**がコメントだろう。  
当然ながら私のコメントには、**securemail@セキュアメール**が[表示](https://keyoxide.org/2771F0FCF8FE74CD9B9C25439D4893D18D358530)されている。  

この後、[鍵管理サーバ](https://keys.openpgp.org)に登録作業をする。  

<details><summary>公開した結果。</summary>

鍵管理サーバの[検索結果](https://keys.openpgp.org/search?q=2771F0FCF8FE74CD9B9C25439D4893D18D358530)ファイルを取得。  

```terminal
$ pwd
/Users/asakunotomohiro/Downloads
$ ll 2771F0FCF8FE74CD9B9C25439D4893D18D358530.asc	←☆ダウンロードした公開鍵ファイル。
-rw-r--r--@ 1 asakunotomohiro  staff  1726  5 23 23:19 2771F0FCF8FE74CD9B9C25439D4893D18D358530.asc
$ head -6 2771F0FCF8FE74CD9B9C25439D4893D18D358530.asc
-----BEGIN PGP PUBLIC KEY BLOCK-----
Comment: 2771 F0FC F8FE 74CD 9B9C  2543 9D48 93D1 8D35 8530
Comment: asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pg	←☆文字切れが発生している。

xjMEZGs03xYJKwYBBAHaRw8BAQdAa0rxWbxU7P9OWjLwVXwxGAmEq5VTRFixr6Ku
tZPFUWXNU2FzYWt1bm90b21vaGlybyAoc2VjdXJlbWFpbEDjgrvjgq3jg6XjgqLj
$
```
名前とメールアドレスの長さの兼ね合いになるため、コメント文字数の適切な長さは分からないが、むしろ付ける必要はないと思う。  
一番大事なメールアドレスが途切れたら公開する意味がない。  

こんな注意してくれる人がいないからな・・・(気づかず)困った。  
この程度のことで鍵を作り直すのは勘弁(すでに5回作り直してしんどい)。  

</details>

**雑談(?)**  
NISTに[Dual\_EC\_DRBG](https://www.cryptrec.go.jp/topics/cryptrec-er-0001-2013.html)を使わない周知があるがどういうこと？  
> P = dQのスカラー値dの知識は攻撃者にとってバックドアになる。  

これは、NSAが関与している部分にバックドアを仕込んでいるらしいとのことだが、NSAは**SHA-256**にも考案を出しており、これには欠陥を埋め込んでいない前提で話が進んでいる。  
どう違う？  
疑似乱数生成器の作成に関わったから欠陥埋め込みが疑われ、SHA-256にはそれがないから問題なく安全だと言われている？  
そして、**SHA-1**にNSAが関わっていないはずなのに、虚弱性(衝突攻撃：ハッシュ値を同じにできる攻撃技術)があったわけだから何が正しくて何が悪いのか一般人には判断付かないように思うぞ。  

とりあえず、第三者が復号化できるって認識でいいよね。  
そして、その対策はすでにとられているということでいいよね(今回採用したから心配だ)。  
⇒対応されていない可能性があるため、**Curve 25519**を選んだ方がよかったかもしれない。  
⇒と言うことで、作り直した(採用したことで頑張って作り直したのが無駄になった)。  

<https://tex2e.github.io/rfc-translater/html/rfc8031.html>(勝手に改行付与)  
**RFC 8031 - Curve25519 and Curve448 for the Internet Key Exchange Protocol Version 2 (IKEv2) Key Agreement 日本語訳**  
> NIST曲線はランダムに検証可能に選択されていると宣伝されていますが、それらを生成するために使用されるシードについての説明はありません。  
> 対照的に、Curve25519とCurve448を選択するために使用されるプロセスは完全に文書化されており、十分に堅固であるため、独立した検証を実行できます。  
> これは、生成側がパラメータを悪意を持って操作するのを防ぐため、セキュリティ上の利点と広く見なされています。  

全く対応していないようだ。  

<同URL>(同)  
> 完全に検証可能な方法で生成された、IKEで使用可能な曲線の別のファミリーは、Brainpool曲線[RFC6954]です。  
> たとえば、brainpoolP256（グループ28）は、Curve25519およびNIST P-256に匹敵するセキュリティレベルを提供することが期待されています。  
> ただし、疑似ランダムプライムを使用しているため、NIST P-256よりもかなり遅く、NIST P-256自体はCurve25519よりも低速です。  

サーバ側が対応していればブレインプールを選んだのに、、、ムムム。  
curve448は、サーバ側が対応していないだけでなく、GPGPKeychainまで対応できていない有様。  

何より、2016年の情報か・・・古い。  
他に最強の鍵が出てきたとか？  

<https://tex2e.github.io/rfc-translater/html/rfc7748.html>(勝手に改行付与)  
**RFC 7748 - Elliptic Curves for Security 日本語訳**
> curve448の〜224ビットのセキュリティレベルは、パフォーマンスと偏執狂の間のトレードオフです。  
> 大規模な量子コンピューターは、作成されたとしても、curve25519とcurve448の両方を壊し、古典的なコンピューターの能力の合理的な予測では、curve25519は完全に安全であると結論付けています。  
> ただし、一部の設計ではパフォーマンス要件が緩和されており、楕円曲線に対するある程度の分析の進歩を回避したいため、curve448も用意されています。  

あるのは使わなければ損するだろうということで、~~curve448を選ぶことにする~~ あったものを使ったことによって失敗した。  

> ある程度の分析の進歩を回避したいため  

この日本語が理解できない。  
curve448は、curve25519より劣ると言いたいのか。そんなわけないよね。  

<details><summary>curve448を選んで失敗作業。</summary>

```terminal
$#gpg -K --with-subkey-fingerprint asakuno.secure@pgp.asakuno.org	←☆鍵指紋を表示するコマンド(複数ある場合詳細に知りたい)。
$ gpg --full-gen-key --expert
gpg (GnuPG) 2.4.1; Copyright (C) 2023 g10 Code GmbH
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

ご希望の鍵の種類を選択してください:
   (1) RSA と RSA
   (2) DSA と Elgamal
   (3) DSA (署名のみ)
   (4) RSA (署名のみ)
   (7) DSA (機能をあなた自身で設定)
   (8) RSA (機能をあなた自身で設定)
   (9) ECC (署名と暗号化) *デフォルト
  (10) ECC (署名のみ)
  (11) ECC (機能をあなた自身で設定)	←☆これ。
  (13) 既存の鍵
  (14) カードに存在する鍵
あなたの選択は? 11

このECC鍵にありうる操作: Sign Certify Authenticate
現在の認められた操作: Sign Certify

   (S) 署名機能を反転する	←☆これ。
   (A) 認証機能を反転する
   (Q) 完了

あなたの選択は? s

このECC鍵にありうる操作: Sign Certify Authenticate
現在の認められた操作: Certify

   (S) 署名機能を反転する
   (A) 認証機能を反転する
   (Q) 完了	←☆これ。

あなたの選択は? q
ご希望の楕円曲線を選択してください:
   (1) Curve 25519 *デフォルト
   (2) Curve 448	←☆これ(失敗)。
   (3) NIST P-256
   (4) NIST P-384
   (5) NIST P-521
   (6) Brainpool P-256
   (7) Brainpool P-384
   (8) Brainpool P-512
   (9) secp256k1
あなたの選択は? 2
鍵の有効期限を指定してください。
         0 = 鍵は無期限
      <n>  = 鍵は n 日間で期限切れ
      <n>w = 鍵は n 週間で期限切れ
      <n>m = 鍵は n か月間で期限切れ
      <n>y = 鍵は n 年間で期限切れ
鍵の有効期間は? (0)0
鍵は無期限です
これで正しいですか? (y/N) y

GnuPGはあなたの鍵を識別するためにユーザIDを構成する必要があります。

本名: asakunotomohiro
電子メール・アドレス: asakuno.secure@pgp.asakuno.org
コメント: securemail@セキュアメール
あなたは文字集合'utf-8'を使っています。
次のユーザIDを選択しました:
    "asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>"

名前(N)、コメント(C)、電子メール(E)の変更、またはOK(O)か終了(Q)? o
たくさんのランダム・バイトの生成が必要です。キーボードを打つ、マウスを動か
す、ディスクにアクセスするなどの他の操作を素数生成の間に行うことで、乱数生
成器に十分なエントロピーを供給する機会を与えることができます。
gpg: 失効証明書を '/Users/asakunotomohiro/.gnupg/openpgp-revocs.d/60245159FDD2D9DEAA374BED7E037A357D829F41ACE72BAB8D93EF64823EB7DF.rev' に保管しました。
公開鍵と秘密鍵を作成し、署名しました。

pub   ed448 2023-05-22 [C]
      60245159FDD2D9DEAA374BED7E037A357D829F41ACE72BAB8D93EF64823EB7DF
uid                      asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

$ gpg -K --with-subkey-fingerprint asakuno.secure@pgp.asakuno.org
sec   ed448 2023-05-22 [C]
      60245159FDD2D9DEAA374BED7E037A357D829F41ACE72BAB8D93EF64823EB7DF
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

$ gpg --edit-key --expert 60245159FDD2D9DEAA374BED7E037A357D829F41ACE72BAB8D93EF64823EB7DF
gpg (GnuPG) 2.4.1; Copyright (C) 2023 g10 Code GmbH
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

秘密鍵が利用できます。

sec  ed448/60245159FDD2D9DE
     作成: 2023-05-22  有効期限: 無期限      利用法: C
     信用: 究極        有効性: 究極
[  究極  ] (1). asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

gpg> addkey	←☆編集作業。
ご希望の鍵の種類を選択してください:
   (3) DSA (署名のみ)
   (4) RSA (署名のみ)
   (5) Elgamal (暗号化のみ)
   (6) RSA (暗号化のみ)
   (7) DSA (機能をあなた自身で設定)
   (8) RSA (機能をあなた自身で設定)
  (10) ECC (署名のみ)
  (11) ECC (機能をあなた自身で設定)
  (12) ECC (暗号化のみ)	←☆これ。
  (13) 既存の鍵
  (14) カードに存在する鍵
あなたの選択は? 12
ご希望の楕円曲線を選択してください:
   (1) Curve 25519 *デフォルト	←☆これ。
   (2) Curve 448
   (3) NIST P-256
   (4) NIST P-384
   (5) NIST P-521
   (6) Brainpool P-256
   (7) Brainpool P-384
   (8) Brainpool P-512
   (9) secp256k1
あなたの選択は? 1
鍵の有効期限を指定してください。
         0 = 鍵は無期限
      <n>  = 鍵は n 日間で期限切れ
      <n>w = 鍵は n 週間で期限切れ
      <n>m = 鍵は n か月間で期限切れ
      <n>y = 鍵は n 年間で期限切れ
鍵の有効期間は? (0)76y
鍵は日  5/ 3 14:38:27 2099 JSTで期限切れとなります
これで正しいですか? (y/N) y
本当に作成しますか? (y/N) y
たくさんのランダム・バイトの生成が必要です。キーボードを打つ、マウスを動か
す、ディスクにアクセスするなどの他の操作を素数生成の間に行うことで、乱数生
成器に十分なエントロピーを供給する機会を与えることができます。

sec  ed448/60245159FDD2D9DE
     作成: 2023-05-22  有効期限: 無期限      利用法: C
     信用: 究極        有効性: 究極
ssb  cv25519/F1EDCF20FDD6994D
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: E
[  究極  ] (1). asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

gpg> save
$ gpg -K --with-subkey-fingerprint asakuno.secure@pgp.asakuno.org
sec   ed448 2023-05-22 [C]
      60245159FDD2D9DEAA374BED7E037A357D829F41ACE72BAB8D93EF64823EB7DF
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-05-22 [E] [有効期限: 2099-05-03]
      8BD1C9B7F65655A691F0020CF1EDCF20FDD6994D

$ gpg --edit-key --expert asakuno.secure@pgp.asakuno.org
gpg (GnuPG) 2.4.1; Copyright (C) 2023 g10 Code GmbH
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

秘密鍵が利用できます。

sec  ed448/60245159FDD2D9DE
     作成: 2023-05-22  有効期限: 無期限      利用法: C
     信用: 究極        有効性: 究極
ssb  cv25519/F1EDCF20FDD6994D
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: E
[  究極  ] (1). asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

gpg> addkey	←☆編集作業。
ご希望の鍵の種類を選択してください:
   (3) DSA (署名のみ)
   (4) RSA (署名のみ)
   (5) Elgamal (暗号化のみ)
   (6) RSA (暗号化のみ)
   (7) DSA (機能をあなた自身で設定)
   (8) RSA (機能をあなた自身で設定)
  (10) ECC (署名のみ)	←☆これ。
  (11) ECC (機能をあなた自身で設定)
  (12) ECC (暗号化のみ)
  (13) 既存の鍵
  (14) カードに存在する鍵
あなたの選択は? 10
ご希望の楕円曲線を選択してください:
   (1) Curve 25519 *デフォルト	←☆これ。
   (2) Curve 448
   (3) NIST P-256
   (4) NIST P-384
   (5) NIST P-521
   (6) Brainpool P-256
   (7) Brainpool P-384
   (8) Brainpool P-512
   (9) secp256k1
あなたの選択は? 1
鍵の有効期限を指定してください。
         0 = 鍵は無期限
      <n>  = 鍵は n 日間で期限切れ
      <n>w = 鍵は n 週間で期限切れ
      <n>m = 鍵は n か月間で期限切れ
      <n>y = 鍵は n 年間で期限切れ
鍵の有効期間は? (0)76y
鍵は日  5/ 3 14:40:12 2099 JSTで期限切れとなります
これで正しいですか? (y/N) y
本当に作成しますか? (y/N) y
たくさんのランダム・バイトの生成が必要です。キーボードを打つ、マウスを動か
す、ディスクにアクセスするなどの他の操作を素数生成の間に行うことで、乱数生
成器に十分なエントロピーを供給する機会を与えることができます。

sec  ed448/60245159FDD2D9DE
     作成: 2023-05-22  有効期限: 無期限      利用法: C
     信用: 究極        有効性: 究極
ssb  cv25519/F1EDCF20FDD6994D
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: E
ssb  ed25519/F963EFA53C9DE106
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: S
[  究極  ] (1). asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

gpg> save
$ gpg -K --with-subkey-fingerprint asakuno.secure@pgp.asakuno.org
sec   ed448 2023-05-22 [C]
      60245159FDD2D9DEAA374BED7E037A357D829F41ACE72BAB8D93EF64823EB7DF
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-05-22 [E] [有効期限: 2099-05-03]
      8BD1C9B7F65655A691F0020CF1EDCF20FDD6994D
ssb   ed25519 2023-05-22 [S] [有効期限: 2099-05-03]
      80B03E078A26456A122EE6A4F963EFA53C9DE106

$ gpg --edit-key --expert asakuno.secure@pgp.asakuno.org
gpg (GnuPG) 2.4.1; Copyright (C) 2023 g10 Code GmbH
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

秘密鍵が利用できます。

sec  ed448/60245159FDD2D9DE
     作成: 2023-05-22  有効期限: 無期限      利用法: C
     信用: 究極        有効性: 究極
ssb  cv25519/F1EDCF20FDD6994D
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: E
ssb  ed25519/F963EFA53C9DE106
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: S
[  究極  ] (1). asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

gpg> addkey	←☆編集作業。
ご希望の鍵の種類を選択してください:
   (3) DSA (署名のみ)
   (4) RSA (署名のみ)
   (5) Elgamal (暗号化のみ)
   (6) RSA (暗号化のみ)
   (7) DSA (機能をあなた自身で設定)
   (8) RSA (機能をあなた自身で設定)
  (10) ECC (署名のみ)
  (11) ECC (機能をあなた自身で設定)	←☆これ。
  (12) ECC (暗号化のみ)
  (13) 既存の鍵
  (14) カードに存在する鍵
あなたの選択は? 11

このECC鍵にありうる操作: Sign Authenticate
現在の認められた操作: Sign

   (S) 署名機能を反転する	←☆これ。
   (A) 認証機能を反転する
   (Q) 完了

あなたの選択は? s

このECC鍵にありうる操作: Sign Authenticate
現在の認められた操作:

   (S) 署名機能を反転する
   (A) 認証機能を反転する	←☆これ。
   (Q) 完了

あなたの選択は? a

このECC鍵にありうる操作: Sign Authenticate
現在の認められた操作: Authenticate

   (S) 署名機能を反転する
   (A) 認証機能を反転する
   (Q) 完了	←☆これ。

あなたの選択は? q
ご希望の楕円曲線を選択してください:
   (1) Curve 25519 *デフォルト	←☆これ。
   (2) Curve 448
   (3) NIST P-256
   (4) NIST P-384
   (5) NIST P-521
   (6) Brainpool P-256
   (7) Brainpool P-384
   (8) Brainpool P-512
   (9) secp256k1
あなたの選択は? 1
鍵の有効期限を指定してください。
         0 = 鍵は無期限
      <n>  = 鍵は n 日間で期限切れ
      <n>w = 鍵は n 週間で期限切れ
      <n>m = 鍵は n か月間で期限切れ
      <n>y = 鍵は n 年間で期限切れ
鍵の有効期間は? (0)0
鍵は無期限です
これで正しいですか? (y/N) y
本当に作成しますか? (y/N) y
たくさんのランダム・バイトの生成が必要です。キーボードを打つ、マウスを動か
す、ディスクにアクセスするなどの他の操作を素数生成の間に行うことで、乱数生
成器に十分なエントロピーを供給する機会を与えることができます。

sec  ed448/60245159FDD2D9DE
     作成: 2023-05-22  有効期限: 無期限      利用法: C
     信用: 究極        有効性: 究極
ssb  cv25519/F1EDCF20FDD6994D
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: E
ssb  ed25519/F963EFA53C9DE106
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: S
ssb  ed25519/540880B6C6542231
     作成: 2023-05-22  有効期限: 無期限      利用法: A
[  究極  ] (1). asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

gpg> save
$ gpg -K --with-subkey-fingerprint asakuno.secure@pgp.asakuno.org
sec   ed448 2023-05-22 [C]
      60245159FDD2D9DEAA374BED7E037A357D829F41ACE72BAB8D93EF64823EB7DF
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-05-22 [E] [有効期限: 2099-05-03]
      8BD1C9B7F65655A691F0020CF1EDCF20FDD6994D
ssb   ed25519 2023-05-22 [S] [有効期限: 2099-05-03]
      80B03E078A26456A122EE6A4F963EFA53C9DE106
ssb   ed25519 2023-05-22 [A]
      F016649875A67475EB39BCF8540880B6C6542231

$ gpgconf --kill all
$ gpg-agent
gpg-agent[8015]: このセッションでgpg-agentは実行されていません
$ gpg-connect-agent /bye
gpg-connect-agent: gpg-agentが動いていません - 開始します'/opt/homebrew/Cellar/gnupg/2.4.1/bin/gpg-agent'
gpg-connect-agent: agent の起動のため、5秒待ちます...
gpg-connect-agent: agentへの接続が確立しました
$ gpg-agent
gpg-agent[8078]: gpg-agent running and available
$
```
GPGKeychainに取り込むことができず、完全に失敗した。  
しかし、最初気づかず、取り込めない意味が分からなかった。  
仕方ないため、Thunderbirdの**OpenPGP 鍵マネージャ**で取り込もうと思ったが、これも失敗する(むしろ、エラーが発生した：**エラー! ファイルの読み込みに失敗しました。**)。  
そうして、選んだ種類が原因で取り込めないと気づいた。。。  
気づかないため、数時間作業がすべてパーになった・・・むぅ。  

仕方ないため、数時間掛けて作った鍵を削除する。
```terminal
$ gpg -K --with-subkey-fingerprint asakuno.secure@pgp.asakuno.org
sec#  ed448 2023-05-22 [C]	←☆これを消す。
      60245159FDD2D9DEAA374BED7E037A357D829F41ACE72BAB8D93EF64823EB7DF
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-05-22 [E] [有効期限: 2099-05-03]
      8BD1C9B7F65655A691F0020CF1EDCF20FDD6994D
ssb   ed25519 2023-05-22 [S] [有効期限: 2099-05-03]
      80B03E078A26456A122EE6A4F963EFA53C9DE106
ssb   ed25519 2023-05-22 [A]
      F016649875A67475EB39BCF8540880B6C6542231

sec   nistp521 2023-05-13 [C]
      736A270643E90E1C99D470C6E1AE542959117853
uid           [  究極  ] asakunotomohiro (pgp@セキュアメール) <asakuno.secure@pgp.asakuno.org>
ssb   nistp521 2023-05-13 [E] [有効期限: 2033-05-10]
      59F46D35FB5B4645A1EBDDECCBC104D1023FDCB1
ssb   ed25519 2023-05-13 [S] [有効期限: 2033-05-10]
      31D9AF18CC00752F26322B03051AE32E00463465
ssb   ed25519 2023-05-13 [A]
      9D36A530DEC2681C48932743CFBCA7868F59AA85

$ gpg --delete-secret-key asakuno.secure@pgp.asakuno.org	←☆秘密鍵のみ削除するコマンドなので失敗。
gpg (GnuPG) 2.4.1; Copyright (C) 2023 g10 Code GmbH
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

gpg: 鍵"asakuno.secure@pgp.asakuno.org"が見つかりません
gpg: asakuno.secure@pgp.asakuno.org: delete key failed: 見つかりません
$ gpg --delete-key 60245159FDD2D9DEAA374BED7E037A357D829F41ACE72BAB8D93EF64823EB7DF	←☆鍵削除。
gpg (GnuPG) 2.4.1; Copyright (C) 2023 g10 Code GmbH
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.


pub  ed448/60245159FDD2D9DE 2023-05-22 asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

この鍵を鍵リングから削除しますか? (y/N) y
$ gpg -K --with-subkey-fingerprint asakuno.secure@pgp.asakuno.org	←☆消えたのを確認。
sec   nistp521 2023-05-13 [C]
      736A270643E90E1C99D470C6E1AE542959117853
uid           [  究極  ] asakunotomohiro (pgp@セキュアメール) <asakuno.secure@pgp.asakuno.org>
ssb   nistp521 2023-05-13 [E] [有効期限: 2033-05-10]
      59F46D35FB5B4645A1EBDDECCBC104D1023FDCB1
ssb   ed25519 2023-05-13 [S] [有効期限: 2033-05-10]
      31D9AF18CC00752F26322B03051AE32E00463465
ssb   ed25519 2023-05-13 [A]
      9D36A530DEC2681C48932743CFBCA7868F59AA85

$
```

</details>

<a id="operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_subkeyencryption"></a>
以下、暗号化用副鍵の生成作業。
```terminal
$#gpg -K --with-subkey-fingerprint asakuno.secure@pgp.asakuno.org	←☆鍵指紋を表示するコマンド(複数ある場合詳細に知りたい)。
$ gpg -K --with-subkey-fingerprint asakuno.secure@pgp.asakuno.org
sec   ed25519 2023-05-22 [C]	←☆主鍵に登録したメールアドレスから副鍵を作る。
      2771F0FCF8FE74CD9B9C25439D4893D18D358530
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

$ gpg --edit-key --expert 2771F0FCF8FE74CD9B9C25439D4893D18D358530	←☆鍵指紋指定でも作れる。
gpg (GnuPG) 2.4.1; Copyright (C) 2023 g10 Code GmbH
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

秘密鍵が利用できます。

sec  ed25519/9D4893D18D358530
     作成: 2023-05-22  有効期限: 無期限      利用法: C
     信用: 究極        有効性: 究極
[  究極  ] (1). asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

gpg> addkey	←☆副鍵の追加。
ご希望の鍵の種類を選択してください:
   (3) DSA (署名のみ)
   (4) RSA (署名のみ)
   (5) Elgamal (暗号化のみ)
   (6) RSA (暗号化のみ)
   (7) DSA (機能をあなた自身で設定)
   (8) RSA (機能をあなた自身で設定)
  (10) ECC (署名のみ)
  (11) ECC (機能をあなた自身で設定)
  (12) ECC (暗号化のみ)	←☆12を選ぶ(11でも良さそうだが)。
  (13) 既存の鍵
  (14) カードに存在する鍵
あなたの選択は? 12
ご希望の楕円曲線を選択してください:
   (1) Curve 25519 *デフォルト	←☆暗号化なのでこれを選ぶ(サーバが対応していれば8番を選ぶ)。
   (2) Curve 448
   (3) NIST P-256
   (4) NIST P-384
   (5) NIST P-521
   (6) Brainpool P-256
   (7) Brainpool P-384
   (8) Brainpool P-512
   (9) secp256k1
あなたの選択は? 1
鍵の有効期限を指定してください。
         0 = 鍵は無期限
      <n>  = 鍵は n 日間で期限切れ
      <n>w = 鍵は n 週間で期限切れ
      <n>m = 鍵は n か月間で期限切れ
      <n>y = 鍵は n 年間で期限切れ	←☆副鍵の場合は死後に対応するため、期限を設ける。
鍵の有効期間は? (0)76y	←☆最低でも80歳まで生きるつもり。
鍵は日  5/ 3 18:36:03 2099 JSTで期限切れとなります
これで正しいですか? (y/N) y
本当に作成しますか? (y/N) y
たくさんのランダム・バイトの生成が必要です。キーボードを打つ、マウスを動か
す、ディスクにアクセスするなどの他の操作を素数生成の間に行うことで、乱数生
成器に十分なエントロピーを供給する機会を与えることができます。	←☆主鍵作成に用いたパスフレーズを入力する。

sec  ed25519/9D4893D18D358530
     作成: 2023-05-22  有効期限: 無期限      利用法: C
     信用: 究極        有効性: 究極
ssb  cv25519/2B6243601FA1DBDA
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: E
[  究極  ] (1). asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

gpg> save	←☆この保存コマンドを忘れないこと(実行と同時に終了する)。
$ gpg -K --with-subkey-fingerprint asakuno.secure@pgp.asakuno.org
sec   ed25519 2023-05-22 [C]
      2771F0FCF8FE74CD9B9C25439D4893D18D358530
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-05-22 [E] [有効期限: 2099-05-03]
      728B0A778912932B9397341B2B6243601FA1DBDA

$
```
副鍵が作成できたかどうかは、`gpg -K`or`gpg --list-keys`にて確認できる。  
上記**save**コマンドで終了しない場合、副鍵が作られていないはずなので、作成確認は必須とした方がいい。  

副鍵のことまでは分からないが、主鍵を変更する場合は、その周知をする必要がある。  
鍵交換連絡用ひな形：[Key Transition](https://help.riseup.net/en/security/message-security/openpgp/key-transition)  

以下、副鍵作成結果確認。
```terminal
$ gpg -K --with-subkey-fingerprint asakuno.secure@pgp.asakuno.org
sec   ed25519 2023-05-22 [C]	←☆主鍵(1種類の機能有り：Cは鍵に対する署名)。
      2771F0FCF8FE74CD9B9C25439D4893D18D358530
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-05-22 [E] [有効期限: 2099-05-03]	←☆副鍵(1種類の機能有り：Eは暗号化)。
      728B0A778912932B9397341B2B6243601FA1DBDA

$
```

<a id="operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_subkeysignature"></a>
[Keybase](#operatingsystemnetwork_pgppeggingcontrol_keybase)への鍵紐付けにも使うため、署名鍵作成は必須になる。  

<details><summary>署名のみの副鍵新規追加作成作業。</summary>

```terminal
$#gpg -K --with-subkey-fingerprint asakuno.secure@pgp.asakuno.org	←☆鍵指紋を表示するコマンド(複数ある場合詳細に知りたい)。
$ gpg --edit-key --expert asakuno.secure@pgp.asakuno.org	←☆鍵の編集。
gpg (GnuPG) 2.4.1; Copyright (C) 2023 g10 Code GmbH
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

秘密鍵が利用できます。

sec  ed25519/9D4893D18D358530
     作成: 2023-05-22  有効期限: 無期限      利用法: C
     信用: 究極        有効性: 究極
ssb  cv25519/2B6243601FA1DBDA
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: E
[  究極  ] (1). asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

gpg> addkey	←☆副鍵追加(今回は、署名用)。
ご希望の鍵の種類を選択してください:
   (3) DSA (署名のみ)
   (4) RSA (署名のみ)
   (5) Elgamal (暗号化のみ)
   (6) RSA (暗号化のみ)
   (7) DSA (機能をあなた自身で設定)
   (8) RSA (機能をあなた自身で設定)
  (10) ECC (署名のみ)	←☆今回はこれ。
  (11) ECC (機能をあなた自身で設定)
  (12) ECC (暗号化のみ)
  (13) 既存の鍵
  (14) カードに存在する鍵
あなたの選択は? 10
ご希望の楕円曲線を選択してください:
   (1) Curve 25519 *デフォルト	←☆これを選ぶ。
   (2) Curve 448
   (3) NIST P-256
   (4) NIST P-384
   (5) NIST P-521
   (6) Brainpool P-256
   (7) Brainpool P-384
   (8) Brainpool P-512
   (9) secp256k1
あなたの選択は? 1
鍵の有効期限を指定してください。
         0 = 鍵は無期限
      <n>  = 鍵は n 日間で期限切れ
      <n>w = 鍵は n 週間で期限切れ
      <n>m = 鍵は n か月間で期限切れ
      <n>y = 鍵は n 年間で期限切れ
鍵の有効期間は? (0)76y	←☆最低でも80歳まで有効。
鍵は日  5/ 3 18:44:25 2099 JSTで期限切れとなります
これで正しいですか? (y/N) y
本当に作成しますか? (y/N) y
たくさんのランダム・バイトの生成が必要です。キーボードを打つ、マウスを動か
す、ディスクにアクセスするなどの他の操作を素数生成の間に行うことで、乱数生
成器に十分なエントロピーを供給する機会を与えることができます。

sec  ed25519/9D4893D18D358530
     作成: 2023-05-22  有効期限: 無期限      利用法: C
     信用: 究極        有効性: 究極
ssb  cv25519/2B6243601FA1DBDA
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: E
ssb  ed25519/7A430907759D9FF4	←☆今回作成した副鍵。
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: S
[  究極  ] (1). asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

gpg> save	←☆作成した副鍵の保存。
$
```

以下、鍵の確認。
```terminal
$ gpg -K --with-subkey-fingerprint asakuno.secure@pgp.asakuno.org
sec   ed25519 2023-05-22 [C]	←☆主鍵(1種類の機能有り：Cは鍵に対する署名)。
      2771F0FCF8FE74CD9B9C25439D4893D18D358530
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-05-22 [E] [有効期限: 2099-05-03]	←☆副鍵(1種類の機能有り：Eは暗号)。
      728B0A778912932B9397341B2B6243601FA1DBDA
ssb   ed25519 2023-05-22 [S] [有効期限: 2099-05-03]	←☆副鍵(1種類の機能有り：Sは署名)。今回の作成鍵。
      60A7B0576F7404D51D59520C7A430907759D9FF4

$
```

</details>

<a id="operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_subkeycertification"></a>
SSH接続するときに利用するようだ。  
そのため、とりあえず作った。  

<details><summary>認証のみの副鍵新規追加作成作業。</summary>

```terminal
$#gpg -K --with-subkey-fingerprint asakuno.secure@pgp.asakuno.org	←☆鍵指紋を表示するコマンド(複数ある場合詳細に知りたい)。
$ gpg --edit-key --expert asakuno.secure@pgp.asakuno.org
gpg (GnuPG) 2.4.1; Copyright (C) 2023 g10 Code GmbH
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

秘密鍵が利用できます。

sec  ed25519/9D4893D18D358530
     作成: 2023-05-22  有効期限: 無期限      利用法: C
     信用: 究極        有効性: 究極
ssb  cv25519/2B6243601FA1DBDA
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: E
ssb  ed25519/7A430907759D9FF4
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: S
[  究極  ] (1). asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

gpg> addkey	←☆鍵作成。
ご希望の鍵の種類を選択してください:
   (3) DSA (署名のみ)
   (4) RSA (署名のみ)
   (5) Elgamal (暗号化のみ)
   (6) RSA (暗号化のみ)
   (7) DSA (機能をあなた自身で設定)
   (8) RSA (機能をあなた自身で設定)
  (10) ECC (署名のみ)
  (11) ECC (機能をあなた自身で設定)	←☆今回はこれ。
  (12) ECC (暗号化のみ)
  (13) 既存の鍵
  (14) カードに存在する鍵
あなたの選択は? 11

このECC鍵にありうる操作: Sign Authenticate
現在の認められた操作: Sign

   (S) 署名機能を反転する	←☆これ。
   (A) 認証機能を反転する
   (Q) 完了

あなたの選択は? s

このECC鍵にありうる操作: Sign Authenticate
現在の認められた操作:	←☆なくなった。

   (S) 署名機能を反転する
   (A) 認証機能を反転する	←☆これ。
   (Q) 完了

あなたの選択は? a

このECC鍵にありうる操作: Sign Authenticate
現在の認められた操作: Authenticate	←☆認証機能が付いた。

   (S) 署名機能を反転する
   (A) 認証機能を反転する
   (Q) 完了	←☆これ。

あなたの選択は? q
ご希望の楕円曲線を選択してください:
   (1) Curve 25519 *デフォルト	←☆これ(128ビットの暗号強度)。
   (2) Curve 448	←☆224ビットの暗号強度。
   (3) NIST P-256
   (4) NIST P-384
   (5) NIST P-521	←☆バックドアあり。
   (6) Brainpool P-256
   (7) Brainpool P-384
   (8) Brainpool P-512
   (9) secp256k1
あなたの選択は? 1
鍵の有効期限を指定してください。
         0 = 鍵は無期限
      <n>  = 鍵は n 日間で期限切れ
      <n>w = 鍵は n 週間で期限切れ
      <n>m = 鍵は n か月間で期限切れ
      <n>y = 鍵は n 年間で期限切れ
鍵の有効期間は? (0)	←☆SSH扱いするため、期限は無関係。
鍵は無期限です
これで正しいですか? (y/N) y
本当に作成しますか? (y/N) y
たくさんのランダム・バイトの生成が必要です。キーボードを打つ、マウスを動か
す、ディスクにアクセスするなどの他の操作を素数生成の間に行うことで、乱数生
成器に十分なエントロピーを供給する機会を与えることができます。

sec  ed25519/9D4893D18D358530	←☆主鍵。
     作成: 2023-05-22  有効期限: 無期限      利用法: C
     信用: 究極        有効性: 究極
ssb  cv25519/2B6243601FA1DBDA
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: E	←☆暗号機能に特化した副鍵。
ssb  ed25519/7A430907759D9FF4
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: S	←☆署名機能に特化した副鍵。
ssb  ed25519/82AA8224E47F7A68
     作成: 2023-05-22  有効期限: 無期限      利用法: A	←☆今回作成した副鍵(認証機能限定)。
[  究極  ] (1). asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

gpg> save
$ gpg -K --with-subkey-fingerprint asakuno.secure@pgp.asakuno.org
sec   ed25519 2023-05-22 [C]	←☆主鍵(1種類の機能有り：Cは鍵に対する署名)。
      2771F0FCF8FE74CD9B9C25439D4893D18D358530
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-05-22 [E] [有効期限: 2099-05-03]	←☆副鍵(1種類の機能有り：Eは暗号)。
      728B0A778912932B9397341B2B6243601FA1DBDA
ssb   ed25519 2023-05-22 [S] [有効期限: 2099-05-03]	←☆副鍵(1種類の機能有り：Sは署名)。
      60A7B0576F7404D51D59520C7A430907759D9FF4
ssb   ed25519 2023-05-22 [A]	←☆副鍵(1種類の機能有り：Aは認証)。今回の作成鍵。
      8013753761C78FA1A48230C682AA8224E47F7A68

$
```
これを使い、SSHキーを管理できるようだ。  

以下、上記の認証鍵からSSHキーを生成する。  
```terminal
$#gpg -K --with-subkey-fingerprint asakuno.secure@pgp.asakuno.org	←☆鍵指紋を表示するコマンド(複数ある場合詳細に知りたい)。
$ gpg --export-ssh-key asakuno.secure@pgp.asakuno.org	←☆SSHの公開鍵を生成する(引数は、主鍵のIDを指定する)。
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHLL/a9dsX0GBVL2t+4D4imnZEMH2YYd9eHQZ9TJrjTP openpgp:0xE47F7A68
$
```
出力結果をサーバ側のSSHファイルに記載する。  
私はGithub側の**SSHキーの管理**と言う項目内容に追加した。  
**Key Type**は、**Authentication Key**にした(逆に**Signing Key**では動かない)。  
※~~**内容**に貼り付けることで、**キー名**は自動付与される~~ 自動付与されない。  

今度は、私が使う端末の環境整備を行う。  
以下、SSHの秘密鍵を今回作成したgnuPGのSSHに紐付ける(?)事前作業。
```terminal
$ gpg --list-keys --with-keygrip asakuno.secure@pgp.asakuno.org
pub   ed25519 2023-05-22 [C]
      2771F0FCF8FE74CD9B9C25439D4893D18D358530
      Keygrip = F5E7F028D27E3BDA27ACCACC7BC9169AFB1F1B8C
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
sub   cv25519 2023-05-22 [E] [有効期限: 2099-05-03]
      Keygrip = 2171B37E2634D42D99CEE1CCB9275333FC38F3CD
sub   ed25519 2023-05-22 [S] [有効期限: 2099-05-03]
      Keygrip = EF64C76F724DB6E41A170AAC86047841775F7354
sub   ed25519 2023-05-22 [A] [有効期限: 2099-05-03]
      Keygrip = 174968D4F353A60CB18A96DE3680AF8FB6C14E95	←☆これを使う。

$
$ ll ~/.gnupg/sshcontrol
-rw-------  1 asakunotomohiro  staff  1032  5 22 22:30 /Users/asakunotomohiro/.gnupg/sshcontrol
$ cat ~/.gnupg/sshcontrol

$ echo 174968D4F353A60CB18A96DE3680AF8FB6C14E95 0 >> ~/.gnupg/sshcontrol	←☆ファイル末尾に追加(不要？)。
$ tail ~/.gnupg/sshcontrol

174968D4F353A60CB18A96DE3680AF8FB6C14E95 0	←☆追加されている。
$
```
~~もしかして、不要な作業か？~~  
接続したときに(自動で)書き込まれるようだ？  
~~そんなことなく、そもそも記載せずに接続できた~~(何が正しい？)。  
SSHの公開鍵で接続した場合、自動で書き込まれるようだ。  


以下、GnuPGのエージェント起動および接続確認。
```terminal
$ gpg-agent	←☆エージェントの起動確認。
gpg-agent[58166]: このセッションでgpg-agentは実行されていません	←☆起動されていない場合、このメッセージが出る。
$ gpg-connect-agent /bye	←☆手動起動(再起動：gpg-connect-agent reloadagent /bye)。
gpg-connect-agent: gpg-agentが動いていません - 開始します'/opt/homebrew/Cellar/gnupg/2.4.1/bin/gpg-agent'
gpg-connect-agent: agent の起動のため、5秒待ちます...
gpg-connect-agent: agentへの接続が確立しました
$ gpg-agent
gpg-agent[58174]: gpg-agent running and available	←☆起動された場合のメッセージ。
$ ssh-add -L	←☆ここで登録した鍵内容が出るはずなのだが・・・。
Could not open a connection to your authentication agent.
$
```

以下、前準備有りの公開鍵確認。
```terminal
$ export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)	←☆必須(ログインシェルに記録必須)。
$ gpgconf --launch gpg-agent	←☆必須？(一度起動させることにより、常駐するのかもしれない)
$ ssh-add -L	←☆この出力が欲しかった。
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHLL/a9dsX0GBVL2t+4D4imnZEMH2YYd9eHQZ9TJrjTP (none)	←☆none表記は、SSHキーを紐付けていないから？
$ ssh-add -l
256 SHA256:MoHbrHwRWLv3BIWfcreGb55IFKY6msB6lGZGUEnRrcg (none) (ED25519)
$ ssh -T git@github.com
git@github.com: Permission denied (publickey).
$
```

以下、SSHの鍵を作成する。
```terminal
$ ssh-keygen -t ed25519 -C "github@asakunotomohiro" -f ~/.ssh/id_ed25519
Generating public/private ed25519 key pair.
Enter passphrase (empty for no passphrase):	←☆パスフレーズを入力する。
Enter same passphrase again:	←☆再入力。
Your identification has been saved in /Users/asakunotomohiro/.ssh/id_ed25519
Your public key has been saved in /Users/asakunotomohiro/.ssh/id_ed25519.pub
The key fingerprint is:
SHA256:Nl/xeDi3/tp9rFLJ1PJ7GJ++2XYUqqipgJJbtUZFHqo github@asakunotomohiro
The key's randomart image is:
+--[ED25519 256]--+
|    .o      oo. -|
|    +  o =   =oBo|
|   E -o o o - % -|
|  == = . o . * . |
|  o . o S * * =  |
|   o * + = + *   |
|      o.o . o    |
|       o.  o     |
|     .           |
+----[SHA256]-----+
$ cat ~/.ssh/id_ed25519.pub	←☆本来ならば、これをGithub上のSSH keysに貼り付ける。
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKozg11TQ6OTZvyKGUS4bToFQ7GO1Jm622uy5Gs5eOGB github@asakunotomohiro
$ ll -d ~/.ssh	←☆権限は700であること(ゆえに失格)。
drwxr-xr-x  16 asakunotomohiro  staff  512  5 26 23:49 /Users/asakunotomohiro/.ssh/	←☆失格権限。
$ ll	←☆公開鍵の権限は600であること(ゆえに失格)。
total 104
-rw-r--r--  1 asakunotomohiro  staff  5220  5 23 21:39 config
-rw-r--r--  1 asakunotomohiro  staff   188  5  6 12:03 memo.txt
-rw-r--r--  1 asakunotomohiro  staff   123  9 28  2022 id_ed25519.pub	←☆失格権限。
-rw-------  1 asakunotomohiro  staff   484  9 28  2022 id_ed25519
$ chmod 600 *.pub	←☆権限変更
$ ll
total 104
-rw-r--r--  1 asakunotomohiro  staff  5220  5 23 21:39 config
-rw-r--r--  1 asakunotomohiro  staff   188  5  6 12:03 memo.txt
-rw-------  1 asakunotomohiro  staff   123  9 28  2022 id_ed25519.pub	←☆適正権限。
-rw-------  1 asakunotomohiro  staff   484  9 28  2022 id_ed25519
$ chmod 700 ~/.ssh	←☆権限変更
$ ll -d ~/.ssh
drwx------  16 asakunotomohiro  staff  512  5 26 23:49 /Users/asakunotomohiro/.ssh/	←☆適正権限。
$ cat -n ~/.ssh/config
     1	Host github
     2		HostName github.com
     3		User asakunotomohiro
     4		PreferredAuthentications publickey
     5		IdentityFile ~/.ssh/id_ed25519
     6		IdentitiesOnly yes
     7		AddKeysToAgent yes	←☆セキュリティ対策としてNoが望ましいらしい。
     8		TCPKeepAlive no	←☆セキュリティ対策としてNoを選ぶ。
     9		#ServerAliveInterval 300
    10		UseKeychain yes	←☆動かない(パスフレーズ入力時に出てくるダイアログ上で保存しておくしかないようだ)。
    11

$ ssh -T git@github	←☆接続確認。
Enter passphrase for key '/Users/asakunotomohiro/.ssh/id_ed25519':	←☆SSHのパスフレーズを入力するが今回は公開鍵のパスフレーズなので、この入力を促すメッセージは出てこない。
Hi asakunotomohiro! You've successfully authenticated, but GitHub does not provide shell access.
$
```
SSHの鍵を作ることで接続ができるようになった。  
しかし、パスフレーズは、公開鍵の秘密鍵(パスフレーズ)を使うことになるため、できれば従来通りのSSH公開鍵方式運用を求む。  

公開鍵の確認：  
<https://github.com/asakunotomohiro.keys>  
<https://api.github.com/users/asakunotomohiro/keys>  

紐付けを解除する場合、`~/.gnupg/sshcontrol`ファイルのKeygrip先頭に`!`を追加することで紐付きが解除される(しかし、消えるわけではないのが気持ち悪い)。  
もしかして、サーバ側に登録しているSSH鍵を削除することで解除される？  
それは手間だよ(ってことは、違う方法で消す？)。  

しかも、今回のSSHキーを1個作るだけで他のサーバにも接続できるということでいいのかな。  
それはそれで虚弱性というか、1個破られたら引きずられて他も攻撃されることになるのだが・・・(そのためのパスフレーズを長く設定するのだろうけど・・・しかしな・・・)。  

TODO: 消す方法を調べる(令和5年5月15日(月))。  

接続時間などを決めるための設定を以下行う。
```terminal
$ cat ~/.gnupg/gpg-agent.conf
default-cache-ttl 600	←☆元から記入されていた。
max-cache-ttl 7200	←☆元から記入されていた。
enable-ssh-support	←☆これも今回追記。
pinentry-program $(which pinentry-mac)	←☆Githubではわざわざこの書き方をしていた。
    #pinentry-program /opt/homebrew/bin/pinentry-mac	←☆通常は、決め打ちでいいよね。
default-cache-ttl-ssh 1800	←☆30分間有効(秒指定)。接続した時間から有効時間が決まる(接続するたびに延長ってことだよね)。
max-cache-ttl-ssh 3600	←☆1時間有効(秒指定)。最初の接続から指定時間で無効化される？
$
```
もっと短くてかまわないように思うが、どうだろう。  

以下、環境変数確認。
```terminal
$ env | grep SSH
(standard input):8:SSH_AUTH_SOCK=/Users/asakunotomohiro/.gnupg/S.gpg-agent.ssh
$
```
PGPファイルを読み込むようになっていればいいようだ。  
`/private/tmp/com.apple.launchd.9MWWRUEKWD/Listeners`の表記が出たら駄目なのだろう。  

ちなみに、`~/.ssh/config`にて、**IdentitiesOnly**は使わない(No)ようだ。  
このへんもいまいち理解できない。  
とうことで、結局SSHの公開鍵方式運用が望ましいように思う。  
TODO: 調べる。  

PGPキーにて、コミットを検証できるように、アカウントに登録した。  
[説明](https://docs.github.com/ja/authentication/managing-commit-signature-verification/generating-a-new-gpg-key)とは違うが、`gpg --armor --export asakuno.secure@pgp.asakuno.org`にて出力された公開鍵を貼り付けた。  

* 以下、手順継続  
  もしかして、鍵指紋指定が必須？  
  1. `git config --global user.signingkey asakuno.secure@pgp.asakuno.org`  
     登録実施(検証には必須の設定)。  
  1. `git config --list`  
     登録確認。  
     `user.signingkey=asakuno.secure@pgp.asakuno.org`が出てくる。  
     Githubの説明では主鍵なのか副鍵なのか判断付かなかったが、副鍵への説明がここで出てきた(遅いぞ)。  
  1. `git config --global commit.gpgsign true`  
     すべてのコミットに対して署名をする場合にこのコマンドを使う(下記説明の`-S`が不要で勝手に付けてくれる)。  
     登録確認結果：`commit.gpgsign=true`  
  1. [GPGスイート](https://gpgtools.org)を使用していない場合の手順はあるが、私には不要かな。  
     これは有料だが、サポートが必要な場合であって、そうでなければ支払い不要だったかな。  
  1. PINまたはパスフレーズの入力を求めるメッセージ表示に**pinentry-mac**が必要とのこと([インストール](../encrypt暗号化/homebrew管理.md)しておいてよかったのか)。  
  1. `killall gpg-agent`にて、エージェントを止める(?)。  
  * [SSHキー](https://docs.github.com/ja/authentication/managing-commit-signature-verification/telling-git-about-your-signing-key#telling-git-about-your-ssh-key)を使って署名もできるようだが、せっかくPGP管理をしているのだから今回不要ということで。  

* 署名付きコミット方法。  
  * `git commit -S -m [コメント]`  
    これだけって・・・大文字の**S**オプションを付け忘れそうに思うが、気をつけよう(すべてのコミットに付ける場合は、上記の設定を行う)。  

実際やってみたが、コミットごとにパスフレーズ入力を求められるということか・・・いやぁ〜ん。  
非常に煩わしい(だからこそのキーチェーン機能があるのかもしれないが・・・)。  

* 署名付きタグコミット方法。  
  1. `git tag -s [タグ]`  
     タグに署名を付ける。  
  1. `git tag -v [タグ]`  
     付けた署名の検証をする。  

**注意事項**  
当たり前だが、**PGPとしての**登録メールアドレスをコミットにも適用する必要がある(登録していれば何でもいいわけではない)。  
`git config --global user.email "asakuno.secure@pgp.asakuno.org"`  
もし、違うメールアドレスにした場合、検証できず、Github上でのコミット表記が**Unverified**になる(意味：No user is associated with the committer email.)。  
※私の求めていたものと違う・・・。  
そのため、コミット用のメールアドレスを独自にする場合は、署名無しコミットにしなければ格好が付かないだろう(ゆえに、使わない)。  

さらに当たり前だが、コミット改変した場合は、検証がすべて消え去る。  
例えば、`git filter-branch -f --env-filter "GIT_AUTHOR_NAME='作業者名'; GIT_AUTHOR_EMAIL='作業者連絡先'; GIT_COMMITTER_NAME='コミット者名'; GIT_COMMITTER_EMAIL='コミット者連絡先';" HEAD`のようなコマンド。  
※このコマンドの意味は、過去のコミットをすべて指定のユーザ名・メールアドレスに書き換える。  
※~~ちなみに、私だけが作業しているため、今のところcommitterは私だけなんだよね(だから作業者である私の名前がauthorとして登録されていない)~~。  
よく分かっていないのだが、Authorを登録していない場合の**user.name**・**user.email**はAuthorになる？  
登録しなかったのは私の無知が原因ではあるが(コミットするときに、コミット個人情報がなければ入力を促されるが、作業者名などは未入力でも問題なくコミットできるため、知らずにそのまま作業していた)。  
登録は、その1種類しかない。  

* ログの検索。  
  * `git log --pretty="%h - %s" --author=asakunotomohiro`  
  * `git log --pretty="%h - %s" --committer=asakunotomohiro`  

上記2種類のコマンドで[ログを検索](https://git-scm.com/book/ja/v2/Git-の基本-コミット履歴の閲覧)した場合、**Author**を登録していないのに検索結果に出てきたということは、1種類の登録でどちらも登録されるということなのだろう。  
作業者(執筆者？Author)とコミッタ(committer)は同一人物だからこそなのだろう。  

</details>

<a id="operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_setpref"></a>
<details><summary>優先指定リストを設定する(pref・showpref・setpref・updpref)。</summary>

勘違いではない。  

以下、優先指定リストを設定する。  
これは、暗号・署名・圧縮・機能に使用するアルゴリズムを確認後、設定されていない箇所に設定する作業。  
設定する理由は、未設定の場合、後述の[keybase紐付け](#operatingsystemnetwork_pgppeggingcontrol_keybase)でエラーになるため、事前に設定しておく。  
何より、主鍵の秘密鍵が必須のようなので、ここで作業する必要がある。  

<details><summary>主鍵無しでの作業(要は失敗)。</summary>

```terminal
$ gpg --edit-key asakuno.secure@pgp.asakuno.org
gpg (GnuPG) 2.4.1; Copyright (C) 2023 g10 Code GmbH
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

秘密副鍵が利用できます。

pub  ed25519/9D4893D18D358530
     作成: 2023-05-22  有効期限: 2105-05-03  利用法: C
     信用: 究極        有効性: 究極
ssb  cv25519/2B6243601FA1DBDA
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: E
ssb  ed25519/7A430907759D9FF4
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: S
ssb  ed25519/82AA8224E47F7A68
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: A
[  究極  ] (1). asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

gpg> showpref
[  究極  ] (1). asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
     暗号方式: AES256, AES192, AES, 3DES
     AEAD: OCB	←☆これが不要らしい。
     ダイジェスト: SHA512, SHA384, SHA256, SHA224, SHA1
     圧縮: ZLIB, BZIP2, ZIP, 無圧縮
     機能: MDC, AEAD, 鍵サーバ 修正しない	←☆上記に引きずられ、ここの修正が必要。

gpg> setpref AES256 AES192 AES 3DES SHA512 SHA384 SHA256 SHA224 SHA1 ZLIB BZIP2 ZIP
この実行には秘密鍵がいります。

gpg> q
$
```

</details>

以下、その作業。
```terminal
$ gpg -K --with-subkey-fingerprint asakuno.secure@pgp.asakuno.org
sec#  ed25519 2023-05-22 [C] [有効期限: 2105-05-03]	←☆主鍵(1種類の機能有り：Cは鍵に対する署名)。証明機能。
      2771F0FCF8FE74CD9B9C25439D4893D18D358530
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-05-22 [E] [有効期限: 2099-05-03]	←☆副鍵(1種類の機能有り：Eは暗号)。
      728B0A778912932B9397341B2B6243601FA1DBDA
ssb   ed25519 2023-05-22 [S] [有効期限: 2099-05-03]	←☆副鍵(1種類の機能有り：Sは署名)。
      60A7B0576F7404D51D59520C7A430907759D9FF4
ssb   ed25519 2023-05-22 [A] [有効期限: 2099-05-03]	←☆副鍵(1種類の機能有り：Aは認証)。
      8013753761C78FA1A48230C682AA8224E47F7A68

$ keybase pgp select asakuno.secure@pgp.asakuno.org
You are selecting a PGP key from your local GnuPG keychain, and
will publish a statement signed with this key to make it part of
your Keybase.io identity.

Note that GnuPG will prompt you to perform this signature.

You can also import the secret key to *local*, *encrypted* Keybase
keyring, enabling decryption and signing with the Keybase client.
To do that, use "--import" flag.

Learn more: keybase pgp help select

 #    Algo   Key Id             Created   UserId
 =    ====   ======             =======   ======
 1    256?   9D4893D18D358530             asakunotomohiro <asakuno.secure@pgp.asakuno.org>
 Choose a key: 1
▶ ERROR key generation error: Unknown signature subpacket: 34 (error 905)	←☆何でじゃぁ。
$ keybase pgp list	←☆何も出てこないのはおかしい(要は登録失敗)。
$
$	# 上記のエラーをデバッグ実行(エラーになった行のみ以下記録)。
$	#	2023-05-22T23:41:43.095498+09:00 ▶ [ERRO keybase main.go:87] 13f key generation error: Unknown signature subpacket: 34 (error 905)
$
$ gpg -K --with-subkey-fingerprint asakuno.secure@pgp.asakuno.org
sec   ed25519 2023-05-22 [C] [有効期限: 2105-05-03]
      2771F0FCF8FE74CD9B9C25439D4893D18D358530
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-05-22 [E] [有効期限: 2099-05-03]
      728B0A778912932B9397341B2B6243601FA1DBDA
ssb   ed25519 2023-05-22 [S] [有効期限: 2099-05-03]
      60A7B0576F7404D51D59520C7A430907759D9FF4
ssb   ed25519 2023-05-22 [A] [有効期限: 2099-05-03]
      8013753761C78FA1A48230C682AA8224E47F7A68

$ gpg --edit-key asakuno.secure@pgp.asakuno.org	←☆鍵の編集。
gpg (GnuPG) 2.4.1; Copyright (C) 2023 g10 Code GmbH
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

秘密鍵が利用できます。

sec  ed25519/9D4893D18D358530
     作成: 2023-05-22  有効期限: 2105-05-03  利用法: C
     信用: 究極        有効性: 究極
ssb  cv25519/2B6243601FA1DBDA
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: E
ssb  ed25519/7A430907759D9FF4
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: S
ssb  ed25519/82AA8224E47F7A68
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: A
[  究極  ] (1). asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

gpg> pref	←☆指定可能一覧。
[  究極  ] (1). asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
     S9 S8 S7 S2 A2 H10 H9 H8 H11 H2 Z2 Z3 Z1 [mdc] [aead] [no-ks-modify]

gpg> showpref	←☆現在の設定済み確認。
[  究極  ] (1). asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
     暗号方式: AES256, AES192, AES, 3DES
     AEAD: OCB	←☆ここを空にする(あったら駄目らしい)。
     ダイジェスト: SHA512, SHA384, SHA256, SHA224, SHA1
     圧縮: ZLIB, BZIP2, ZIP, 無圧縮
     機能: MDC, AEAD, 鍵サーバ 修正しない

gpg> setpref AES256 AES192 AES 3DES SHA512 SHA384 SHA256 SHA224 SHA1 ZLIB BZIP2 ZIP	←☆設定実施(前に設定した内容と違うが大丈夫か？)。
優先指定の一覧を設定:
     暗号方式: AES256, AES192, AES, 3DES
     AEAD:	←☆空になった。
     ダイジェスト: SHA512, SHA384, SHA256, SHA224, SHA1
     圧縮: ZLIB, BZIP2, ZIP, 無圧縮
     機能: MDC, 鍵サーバ 修正しない	←☆ここからもなくなった。
優先指定を本当に更新しますか? (y/N) y	←☆実施。

sec  ed25519/9D4893D18D358530
     作成: 2023-05-22  有効期限: 2105-05-03  利用法: C
     信用: 究極        有効性: 究極
ssb  cv25519/2B6243601FA1DBDA
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: E
ssb  ed25519/7A430907759D9FF4
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: S
ssb  ed25519/82AA8224E47F7A68
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: A
[  究極  ] (1). asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

gpg> showpref	←☆再確認。
[  究極  ] (1). asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
     暗号方式: AES256, AES192, AES, 3DES
     AEAD:	←☆問題ない。
     ダイジェスト: SHA512, SHA384, SHA256, SHA224, SHA1
     圧縮: ZLIB, BZIP2, ZIP, 無圧縮
     機能: MDC, 鍵サーバ 修正しない

gpg> updpref	←☆このコマンド駄目らしい。
優先指定の一覧を設定:
     暗号方式: AES256, AES192, AES, 3DES
     AEAD: OCB
     ダイジェスト: SHA512, SHA384, SHA256, SHA224, SHA1
     圧縮: ZLIB, BZIP2, ZIP, 無圧縮
     機能: MDC, AEAD, 鍵サーバ 修正しない
優先指定を本当に更新しますか? (y/N) N	←☆戻すことになるようなので、更新拒否。

gpg> showpref
[  究極  ] (1). asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
     暗号方式: AES256, AES192, AES, 3DES
     AEAD:
     ダイジェスト: SHA512, SHA384, SHA256, SHA224, SHA1
     圧縮: ZLIB, BZIP2, ZIP, 無圧縮
     機能: MDC, 鍵サーバ 修正しない

gpg> save	←☆保存(および終了)。
$
$ gpg --edit-key asakuno.secure@pgp.asakuno.org	←☆もう一度確認。
gpg (GnuPG) 2.4.1; Copyright (C) 2023 g10 Code GmbH
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

秘密鍵が利用できます。

sec  ed25519/9D4893D18D358530
     作成: 2023-05-22  有効期限: 2105-05-03  利用法: C
     信用: 究極        有効性: 究極
ssb  cv25519/2B6243601FA1DBDA
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: E
ssb  ed25519/7A430907759D9FF4
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: S
ssb  ed25519/82AA8224E47F7A68
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: A
[  究極  ] (1). asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

gpg> showpref	←☆確認。
[  究極  ] (1). asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
     暗号方式: AES256, AES192, AES, 3DES
     AEAD:	←☆空になっている。
     ダイジェスト: SHA512, SHA384, SHA256, SHA224, SHA1
     圧縮: ZLIB, BZIP2, ZIP, 無圧縮
     機能: MDC, 鍵サーバ 修正しない

gpg> q
$
```

</details>

<a id="operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_mainexport"></a>
以下、主鍵の秘密鍵などをエクスポート。  
GUIソフトウェアとして[GPGKeychain](#operatingsystemnetwork_pgp_software)から取り出すのがいいだろう。  
そして、これを絶対に外部に漏れない場所に保管しておく。  
印刷して金庫の中でもかまわないし、主鍵が存在する端末を銀行に預けておくのも手である。  
とりあえず究極に絶対だと言われる場所であれば問題ない。  
※当たり前だが、エクスポート時に、上記で入力したパスフレーズが必要になる。  

GUI操作での取り出し方法を文字で説明するのはしんどいため、解説は他の人に委ねる(調べなければ分からないほど難しいものではないが)。  


以下、CUI上での公開鍵取りだし(**秘密鍵無し**)。  
`gpg --armor --export asakuno.secure@pgp.asakuno.org`  

以下、CUI上での秘密鍵取りだし。  
`gpg --armor --export-secret-key asakuno.secure@pgp.asakuno.org > ~/sec.asc`  

<details><summary>エクスポートした公開鍵。</summary>

```text
-----BEGIN PGP PUBLIC KEY BLOCK-----	←☆ここがパブリックになっていること(プライベートになっている場合は秘密鍵であるため速攻削除すること)。

mDMEZGs03xYJKwYBBAHaRw8BAQdAa0rxWbxU7P9OWjLwVXwxGAmEq5VTRFixr6Ku
tZPFUWW0U2FzYWt1bm90b21vaGlybyAoc2VjdXJlbWFpbEDjgrvjgq3jg6XjgqLj
g6Hjg7zjg6spIDxhc2FrdW5vLnNlY3VyZUBwZ3AuYXNha3Vuby5vcmc+iJYEExYK
AD4CGwECF4AFCZojdlEWIQQncfD8+P50zZucJUOdSJPRjTWFMAUCZGuBjAULCQgH
AgYVCgkICwIEFgIDAQIeBQAKCRCdSJPRjTWFMIqbAQCNsi17NttT2wwISc1zhPXk
Kdr3zGKEuMT/vqTy2liCfgEAofYzEy8MfAYKRWxw9pl5ahf8qj8Uxhurh2ONWcW9
6QOIuQQQEwoAHRYhBHNqJwZD6Q4cmdRwxuGuVClZEXhTBQJka1OjAAoJEOGuVClZ
EXhTIxUCCQHBT2OwNlzAdtstTDPWINDPDaP2DBqP+6dcoPW44H2WcQnyXeYoLw+I
4F9Wnus8gHU/PIi0knuJ+XGMh2fhJPtOcwIJAdMDXFP1H8Glhp8DX5BR8JfjMIDV
If8qVzsFnREpFFbPFr7XIUEg6m+AfdFwWVqtfpH6/HePedC4tkSlevPvfqp2iHUE
EBYKAB0WIQSZO3T4h+87jwgJEQRMIIkriPf1dAUCZGtapAAKCRBMIIkriPf1dM3k
AQC/dHvRvgKyucB5Fx/F3rIp/t8gHL/ODNQyuel+u2LOYgD9FwhXsSvv5ftXqGs5
oAiHHf0MS7U31f5u8hT13MjCnwOIuAQQEwoAHRYhBFJVdS/C0BEM+GEc9WNew6bX
Iz8rBQJka1sXAAoJEGNew6bXIz8rJpACBRoafHiW8cjO4fkiS2qhTq2TXYPn3mh9
aK2iLYbcrXKC7/BOBTcI+ym3ZV1umt2mtfx0NbbjMhf2hJf7cV1JtIvvAgkBTPD0
fzkAXYGdTXHA2mOKk021jmKqFCC4Vfd4Xrw/fRZVjBpAG+NAgRmS/Fy6vhjKi7Wy
BYFo2z7xRgW03ngScT+4OARkazdyEgorBgEEAZdVAQUBAQdAePKXIlBVkbO6eFFQ
Nxjv6hDi6cw1AO/+gdgGkNG+RloDAQgHiH4EGBYKACYWIQQncfD8+P50zZucJUOd
SJPRjTWFMAUCZGs3cgIbDAUJjttKAAAKCRCdSJPRjTWFMJNzAP0YcGJqiSNdeeD9
6gECoqHrqMOKCk+fP5VTzu/pe0Kx5AEA3x0xe9YJFv1pn8APHLy19pc0GO0dhMcu
7KFvCeNR+gm4MwRkazlpFgkrBgEEAdpHDwEBB0AmkABqVBrm8b84Y2xXgYBwPpBJ
JULyZbiycWpaM3FgEoj1BBgWCgAmFiEEJ3Hw/Pj+dM2bnCVDnUiT0Y01hTAFAmRr
OWkCGwIFCY7bSgAAgQkQnUiT0Y01hTB2IAQZFgoAHRYhBGCnsFdvdATVHVlSDHpD
CQd1nZ/0BQJkazlpAAoJEHpDCQd1nZ/0logA/0jJJ7ZkegK2vxwXE74e5yAMWRJU
qVnCXdEW7t24rh5cAQCVzj0/utGIRrgRWMfL2oqNeokTjWu6l2u0rTZjHxI5D3k+
AQDFg8/sY3iRw8odbH2CXc+Y70SzJXQ0HcuR6SauXyZr5gEA+1mqA13vajSQ84iJ
OHL3p1eL6cgLDgL80OlgPvnQwwK4MwRkazqhFgkrBgEEAdpHDwEBB0Byy/2vXbF9
BgVS9rfuA+Ipp2RDB9mGHfXh0GfUya40z4h+BBgWCgAmAhsgFiEEJ3Hw/Pj+dM2b
nCVDnUiT0Y01hTAFAmRrPH4FCY7bS9AACgkQnUiT0Y01hTA/mgD+MspuMRHkCNlU
L6fnF+Cm3hYxt1H1nmZFYCdD276pLfUBAM2wxGpKeHnmNZd2eNa+65ClPP5AeVao
5VIx41uqPn8H
=Bs2N
-----END PGP PUBLIC KEY BLOCK-----
```
これさえ有れば、私にメールを送ることができる。  
**動作確認**のために**使わないこと**。  

</details>

<a id="operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_signpublickey"></a>
GPGKeychainでの署名はローカル上であり、エクスポート可能な署名ではない。  
そのため、コマンド上から署名を付ける必要がある(本当か？)。  

<details><summary>公開鍵への署名作業。</summary>

コマンド上で作業する場合、署名する元の鍵はデフォルト指定された鍵を使う。  
未指定の場合は、先頭に登録されている鍵を使う。  

<details><summary>デフォルト鍵の挙動確認。</summary>

```terminal
$ cat -n ~/.gnupg/gpg.conf
     1  auto-key-retrieve
     2  no-emit-version
     3  default-key 2771F0FCF8FE74CD9B9C25439D4893D18D358530	←☆これ。
     4  #keyserver
$
$ gpg --sign-key B97E9964ACAD1907970D37CC8A9E3745558E41AF	←☆動作確認のためだけの署名作業。
　　　・・・省略・・・
gpg: デフォルトの署名用の秘密鍵として"2771F0FCF8FE74CD9B9C25439D4893D18D358530"を用います	←☆署名コマンドのみでデフォルト鍵が使われる。
　　　・・・省略・・・
この鍵は2024-05-03で期限が切れます。
本当にこの鍵にあなたの鍵"asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>"で署名してよいですか
(9D4893D18D358530)

本当に署名しますか? (y/N) N

鍵は無変更なので更新は不要です。
$
```

</details>

<details><summary>デフォルト鍵がない場合の挙動確認。</summary>

```terminal
$ cat -n ~/.gnupg/gpg.conf
     1  auto-key-retrieve
     2  no-emit-version
     3  #default-key 2771F0FCF8FE74CD9B9C25439D4893D18D358530	←☆コメントアウト。
     4  #keyserver
$ gpg --sign-key example@example.com
　　　・・・省略・・・
この鍵は2024-05-03で期限が切れます。
本当にこの鍵にあなたの鍵"asakunotomohiro (サンプル) <asakunotomohiro@example.com>"で署名してよいですか	←☆鍵束の先頭鍵が勝手に使われる。
(9D4893D18D358530)

本当に署名しますか? (y/N) N

鍵は無変更なので更新は不要です。
$
```
どの鍵が署名鍵として使われるか分からないため、デフォルト鍵は指定すべきだと思う。  
もしくは、ダミー鍵を事前に用意しておいて、それをデフォルト指定しておくとか・・・(複数あるならば有効打と思う)。  

</details>

<details><summary>デフォルト鍵をオプション指定する場合の挙動確認。</summary>

```terminal
$ cat -n ~/.gnupg/gpg.conf
     1  auto-key-retrieve
     2  no-emit-version
     3  #default-key 2771F0FCF8FE74CD9B9C25439D4893D18D358530	←☆コメントアウト。
     4  #keyserver
$ gpg --default-key 2771F0FCF8FE74CD9B9C25439D4893D18D358530 --sign-key example@example.com	←☆今回は鍵指紋で指定しているが、メールアドレスでもいい。
　　　・・・省略・・・
gpg: デフォルトの署名用の秘密鍵として"2771F0FCF8FE74CD9B9C25439D4893D18D358530"を用います
　　　・・・省略・・・
この鍵は2024-05-03で期限が切れます。
本当にこの鍵にあなたの鍵"asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>"で署名してよいですか	←☆指定した鍵を使って署名する。
(9D4893D18D358530)

本当に署名しますか? (y/N) N

鍵は無変更なので更新は不要です。
$
```
短いオプションは、`-u`を使う(ローカル署名？)。  
例）`gpg -u asakuno.secure@pgp.asakuno.org --sign-key example@example.com`  

</details>

以下、デフォルト鍵を指定した上での署名作業。
```terminal
$ gpg -K --with-subkey-fingerprint asakuno.secure@pgp.asakuno.org
sec   ed448 2023-05-22 [C]
      60245159FDD2D9DEAA374BED7E037A357D829F41ACE72BAB8D93EF64823EB7DF	←☆今回作成した鍵に前の鍵の署名を付けたい。
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-05-22 [E] [有効期限: 2099-05-03]
      8BD1C9B7F65655A691F0020CF1EDCF20FDD6994D
ssb   ed25519 2023-05-22 [S] [有効期限: 2099-05-03]
      80B03E078A26456A122EE6A4F963EFA53C9DE106
ssb   ed25519 2023-05-22 [A]
      F016649875A67475EB39BCF8540880B6C6542231

sec   nistp521 2023-05-13 [C]	←☆バックドアを含んだ鍵。
      736A270643E90E1C99D470C6E1AE542959117853	←☆この鍵を使って署名する。
uid           [  究極  ] asakunotomohiro (pgp@セキュアメール) <asakuno.secure@pgp.asakuno.org>
ssb   nistp521 2023-05-13 [E] [有効期限: 2033-05-10]
      59F46D35FB5B4645A1EBDDECCBC104D1023FDCB1
ssb   ed25519 2023-05-13 [S] [有効期限: 2033-05-10]
      31D9AF18CC00752F26322B03051AE32E00463465
ssb   ed25519 2023-05-13 [A]
      9D36A530DEC2681C48932743CFBCA7868F59AA85

$ gpg --sign-key 60245159FDD2D9DEAA374BED7E037A357D829F41ACE72BAB8D93EF64823EB7DF	←☆署名実施。

sec  ed448/60245159FDD2D9DE
     作成: 2023-05-22  有効期限: 無期限      利用法: C
     信用: 究極        有効性: 究極
ssb  cv25519/F1EDCF20FDD6994D
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: E
ssb  ed25519/F963EFA53C9DE106
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: S
ssb  ed25519/540880B6C6542231
     作成: 2023-05-22  有効期限: 無期限      利用法: A
[  究極  ] (1). asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

gpg: デフォルトの署名用の秘密鍵として"736A270643E90E1C99D470C6E1AE542959117853"を用います

sec  ed448/60245159FDD2D9DE
     作成: 2023-05-22  有効期限: 無期限      利用法: C
     信用: 究極        有効性: 究極
  主鍵フィンガープリント: 60245 159FD D2D9D EAA37 4BED7 E037A 357D8 29F41 ACE72 BAB8D

     asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

本当にこの鍵にあなたの鍵"asakunotomohiro (pgp@セキュアメール) <asakuno.secure@pgp.asakuno.org>"で署名してよいですか
(E1AE542959117853)

本当に署名しますか? (y/N) y

$ gpg -K --with-subkey-fingerprint asakuno.secure@pgp.asakuno.org
sec   ed448 2023-05-22 [C]
      60245159FDD2D9DEAA374BED7E037A357D829F41ACE72BAB8D93EF64823EB7DF
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-05-22 [E] [有効期限: 2099-05-03]
      8BD1C9B7F65655A691F0020CF1EDCF20FDD6994D
ssb   ed25519 2023-05-22 [S] [有効期限: 2099-05-03]
      80B03E078A26456A122EE6A4F963EFA53C9DE106
ssb   ed25519 2023-05-22 [A]
      F016649875A67475EB39BCF8540880B6C6542231

sec   nistp521 2023-05-13 [C]
      736A270643E90E1C99D470C6E1AE542959117853
uid           [  究極  ] asakunotomohiro (pgp@セキュアメール) <asakuno.secure@pgp.asakuno.org>
ssb   nistp521 2023-05-13 [E] [有効期限: 2033-05-10]
      59F46D35FB5B4645A1EBDDECCBC104D1023FDCB1
ssb   ed25519 2023-05-13 [S] [有効期限: 2033-05-10]
      31D9AF18CC00752F26322B03051AE32E00463465
ssb   ed25519 2023-05-13 [A]
      9D36A530DEC2681C48932743CFBCA7868F59AA85

$
```

</details>

<a id="operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_maindelete"></a>
以下、主鍵の秘密鍵を削除作業(**★**必ず、上記の取り出し後に実施すること**★**)。
```terminal
$ gpg -K --with-subkey-fingerprint asakuno.secure@pgp.asakuno.org
sec   ed25519 2023-05-22 [C]	←☆主鍵のみ削除。
      2771F0FCF8FE74CD9B9C25439D4893D18D358530
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-05-22 [E] [有効期限: 2099-05-03]	←☆副鍵は残す。
      728B0A778912932B9397341B2B6243601FA1DBDA
ssb   ed25519 2023-05-22 [S] [有効期限: 2099-05-03]	←☆副鍵は残す。
      60A7B0576F7404D51D59520C7A430907759D9FF4
ssb   ed25519 2023-05-22 [A] [有効期限: 2099-05-03]	←☆副鍵は残す。
      8013753761C78FA1A48230C682AA8224E47F7A68

$ gpg --delete-secret-key 2771F0FCF8FE74CD9B9C25439D4893D18D358530	←☆鍵の削除。
gpg (GnuPG) 2.4.1; Copyright (C) 2023 g10 Code GmbH
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.


sec  ed25519/9D4893D18D358530 2023-05-22 asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

この鍵を鍵リングから削除しますか? (y/N) y	←☆主鍵の削除。
これは秘密鍵です! 本当に削除しますか? (y/N) y	←☆確認ダイアログがGUIとして出てくるため、そこで「鍵を削除する」を選ぶ。
gpg: 秘密副鍵: の削除に失敗しました: 操作がキャンセルされました	←☆副鍵を使うため、確認ダイアログの「いいえ」を選び、副鍵を残す。
gpg: 2771F0FCF8FE74CD9B9C25439D4893D18D358530: delete key failed: 操作がキャンセルされました	←☆主鍵は消すが、副鍵残す。
$
```

以下、主鍵削除結果確認。
```terminal
$ gpg -K --with-subkey-fingerprint asakuno.secure@pgp.asakuno.org	←☆オプションのKは大文字。
sec#  ed25519 2023-05-22 [C]	←☆主鍵(秘密鍵がない場合シャープ記号が付く)。
      2771F0FCF8FE74CD9B9C25439D4893D18D358530
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-05-22 [E] [有効期限: 2099-05-03]
      728B0A778912932B9397341B2B6243601FA1DBDA
ssb   ed25519 2023-05-22 [S] [有効期限: 2099-05-03]	←☆副鍵。
      60A7B0576F7404D51D59520C7A430907759D9FF4
ssb   ed25519 2023-05-22 [A] [有効期限: 2099-05-03]	←☆副鍵。
      8013753761C78FA1A48230C682AA8224E47F7A68

$
```

<a id="operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_mainrevfiledel"></a>
主鍵の失効証明書の削除。  

以下、その作業。
```terminal
$ cd ~/.gnupg/openpgp-revocs.d/
$ pwd
/Users/asakunotomohiro/.gnupg/openpgp-revocs.d
$ ll
total 112
-rw-------  1 asakunotomohiro  staff  1430  5 22 18:24 2771F0FCF8FE74CD9B9C25439D4893D18D358530.rev
$ shred -uz 2771F0FCF8FE74CD9B9C25439D4893D18D358530.rev
$ ll
total 0
$
```
よく考えたら保存していなかった。  
しかし、主鍵から生成できるはずなので、問題なかろう(主鍵から作れる状況で失効させる必要があるのか？)。  
作成コマンド：`gpg --gen-revoke [鍵指紋]`で作れるはず。  

<a id="operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_subfingerprint"></a>
以下、副鍵を含む鍵指紋(フィンガープリント)の確認作業。
```terminal
$ gpg -K --with-subkey-fingerprint asakuno.secure@pgp.asakuno.org	←☆オプションを付けることで、副鍵のフィンガープリントを表示できる。
sec#  ed25519 2023-05-22 [C]	←☆主鍵は端末から削除済みを示すシャープ記号が付いている。
      2771F0FCF8FE74CD9B9C25439D4893D18D358530
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-05-22 [E] [有効期限: 2099-05-03]	←☆生きている間は有効。
      728B0A778912932B9397341B2B6243601FA1DBDA
ssb   ed25519 2023-05-22 [S] [有効期限: 2099-05-03]	←☆生きている間は有効。
      60A7B0576F7404D51D59520C7A430907759D9FF4
ssb   ed25519 2023-05-22 [A] [有効期限: 2099-05-03]	←☆生きている間は有効(結局SSHにも有効期限を設けた)。
      8013753761C78FA1A48230C682AA8224E47F7A68

$
```
※公開鍵のエクスポートは、主鍵および副鍵[すべて含んだ状態](https://security.stackexchange.com/questions/51474/one-public-key-contains-all-subkeys)になる。  

<a id="operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_subchangepass"></a>
以下、副鍵のパスフレーズ変更作業(主鍵のパスフレーズは変更しない)。
```terminal
$ gpg -K --with-subkey-fingerprint asakuno.secure@pgp.asakuno.org	←☆鍵の状態を知る。
sec#  ed25519 2023-05-22 [C]
      2771F0FCF8FE74CD9B9C25439D4893D18D358530
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-05-22 [E] [有効期限: 2099-05-03]
      728B0A778912932B9397341B2B6243601FA1DBDA
ssb   ed25519 2023-05-22 [S] [有効期限: 2099-05-03]
      60A7B0576F7404D51D59520C7A430907759D9FF4
ssb   ed25519 2023-05-22 [A] [有効期限: 2099-05-03]
      8013753761C78FA1A48230C682AA8224E47F7A68

$ gpg --edit-key 2771F0FCF8FE74CD9B9C25439D4893D18D358530	←☆鍵の編集。
gpg (GnuPG) 2.4.1; Copyright (C) 2023 g10 Code GmbH
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

秘密副鍵が利用できます。

pub  ed25519/9D4893D18D358530
     作成: 2023-05-22  有効期限: 無期限      利用法: C
     信用: 究極        有効性: 究極
ssb  cv25519/2B6243601FA1DBDA
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: E	←☆副鍵のパスフレーズのみ変更。
ssb  ed25519/7A430907759D9FF4
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: S	←☆副鍵のパスフレーズのみ変更。
ssb  ed25519/82AA8224E47F7A68
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: A	←☆副鍵のパスフレーズのみ変更。
[  究極  ] (1). asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

gpg> passwd	←☆パスフレーズ変更(パスワードコマンドでパスフレーズ変更？)。
gpg: 鍵 9D4893D18D358530/9D4893D18D358530: パスフレーズの変更エラー: 秘密鍵がありません	←☆主鍵は削除済みであるため、気にしない。

gpg> save	←☆今回は不要だったが、付けて損はない(毎回実行しよう)。
鍵は無変更なので更新は不要です。
$
```
GUI(**GPGKeychain**)から秘密鍵を削除した場合、すべての秘密鍵が消えるようだ。  

<details><summary>署名のみの副鍵パスフレーズ変更作業。</summary>

勘違いしていた。  
副鍵は単数・複数に関わらず、同じパスフレーズを使う。  
そして、主鍵もあれば、同時に変わる。  

```terminal
$ gpg -K asakuno.secure@pgp.asakuno.org
sec#  ed25519 2023-04-21 [SC]
      993B74F887EF3B8F080911044C20892B88F7F574
uid           [  究極  ] asakunotomohiro (pgp@securemail) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-04-21 [E] [有効期限: 2028-04-19]
ssb   ed25519 2023-04-30 [S] [有効期限: 2026-04-29]

$ gpg -K --with-subkey-fingerprint asakuno.secure@pgp.asakuno.org
sec#  ed25519 2023-04-21 [SC]
      993B74F887EF3B8F080911044C20892B88F7F574
uid           [  究極  ] asakunotomohiro (pgp@securemail) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-04-21 [E] [有効期限: 2028-04-19]
      31EC0D189C70A1AADB546650A86D2576AAA988CC
ssb   ed25519 2023-04-30 [S] [有効期限: 2026-04-29]	←☆この副鍵のパスフレーズのみ変更したい。
      06ED9B3E20676E623DE917DE00889BFF44F3F5EB

$ gpg --edit-key 06ED9B3E20676E623DE917DE00889BFF44F3F5EB	←☆ゆえに、ピンポイントで指定する。
gpg (GnuPG/MacGPG2) 2.2.41; Copyright (C) 2022 g10 Code GmbH
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

秘密副鍵が利用できます。

pub  ed25519/4C20892B88F7F574
     作成: 2023-04-21  有効期限: 無期限      利用法: SC
     信用: 究極        有効性: 究極
ssb  cv25519/A86D2576AAA988CC
     作成: 2023-04-21  有効期限: 2028-04-19  利用法: E
ssb  ed25519/00889BFF44F3F5EB	←☆これ。
     作成: 2023-04-30  有効期限: 2026-04-29  利用法: S
[  究極  ] (1). asakunotomohiro (pgp@securemail) <asakuno.secure@pgp.asakuno.org>

gpg> passwd	←☆パスフレーズ変更実施。
gpg: 鍵 4C20892B88F7F574/4C20892B88F7F574: パスフレーズの変更エラー: 秘密鍵がありません

gpg> q	←☆エラーになったのでqで終了したが、変更されているようだ(上記のエラーは主鍵に対して)。
$
```

</details>

<a id="operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_deadlineextension"></a>
以下、有効期限の延長作業。
```terminal
$ gpg -K --with-subkey-fingerprint asakuno.secure@pgp.asakuno.org
sec   ed25519 2023-05-22 [C]
      2771F0FCF8FE74CD9B9C25439D4893D18D358530	←☆主鍵の期限を付ける。
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-05-22 [E] [有効期限: 2099-05-03]
      728B0A778912932B9397341B2B6243601FA1DBDA
ssb   ed25519 2023-05-22 [S] [有効期限: 2099-05-03]
      60A7B0576F7404D51D59520C7A430907759D9FF4
ssb   ed25519 2023-05-22 [A] [有効期限: 2099-05-03]
      8013753761C78FA1A48230C682AA8224E47F7A68

$ gpg --quick-set-expire 2771F0FCF8FE74CD9B9C25439D4893D18D358530 2112-09-03	←☆誕生日を指定したかった。
gpg: '2112-09-03'は、有効な有効期限ではありません
$ gpg --quick-set-expire 2771F0FCF8FE74CD9B9C25439D4893D18D358530 2104-05-03
$ gpg --quick-set-expire 2771F0FCF8FE74CD9B9C25439D4893D18D358530 2105-05-03	←☆これに決定(主鍵の期限)。
$ gpg --quick-set-expire 2771F0FCF8FE74CD9B9C25439D4893D18D358530 2106-05-03	←☆たった1年の差で・・・。
gpg: '2106-05-03'は、有効な有効期限ではありません
$ gpg -K --with-subkey-fingerprint asakuno.secure@pgp.asakuno.org
gpg: 次回の信用データベース検査は、2105-05-03です
sec   ed25519 2023-05-22 [C] [有効期限: 2105-05-03]
      2771F0FCF8FE74CD9B9C25439D4893D18D358530
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-05-22 [E] [有効期限: 2099-05-03]
      728B0A778912932B9397341B2B6243601FA1DBDA
ssb   ed25519 2023-05-22 [S] [有効期限: 2099-05-03]
      60A7B0576F7404D51D59520C7A430907759D9FF4
ssb   ed25519 2023-05-22 [A] [有効期限: 2099-05-03]
      8013753761C78FA1A48230C682AA8224E47F7A68

$
```

<a id="operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_runencrypt"></a>
以下、暗号化および復号化の動作確認。
```terminal
$ echo "ファイルの暗号化テスト" >| testfile.txt
$ ll
total 8
-rw-r--r--  1 asakunotomohiro  staff  34  5 23 00:29 testfile.txt	←☆このファイルが対象。
$ cat testfile.txt
ファイルの暗号化テスト
$ gpg -e -r asakuno.secure@pgp.asakuno.org testfile.txt	←☆暗号化実施。
$ ll
total 16
-rw-r--r--  1 asakunotomohiro  staff  206  5 23 00:29 testfile.txt.gpg	←☆暗号化されたファイル。
-rw-r--r--  1 asakunotomohiro  staff   34  5 23 00:29 testfile.txt	←☆最初に作成した平文ファイル。
$ rm testfile.txt	←☆平文ファイル削除。
$ ll
total 8
-rw-r--r--  1 asakunotomohiro  staff  206  5 23 00:29 testfile.txt.gpg
$ cat testfile.txt.gpg
?^ٸh;???@>???I??۰?h*W§+???~???,?fN0aSc'????Q??C???i?Մ;???&C???X??wu?h??Rūp)@?l8?????????V
??ެ=??ʆ??H??,?V?-??v??p?6:z????;?[??Bߧc??k??\?c?G?,?????zp,?]???"'?Ө?&P!DN6?sM?q???%
$ gpg -d testfile.txt.gpg	←☆復号化(しかし、画面出力のみで終わる)。
gpg: cv25519鍵, ID 2B6243601FA1DBDA, 日付2023-05-22に暗号化されました
      "asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>"
gpg: デフォルトの署名用の秘密鍵として"2771F0FCF8FE74CD9B9C25439D4893D18D358530"を用います
ファイルの暗号化テスト	←☆暗号化対象の文言(平文内容を出力した結果)。
$ ll	←☆ファイルへの出力がないため、暗号化されたファイルのみある。
total 8
-rw-r--r--  1 asakunotomohiro  staff  206  5 23 00:29 testfile.txt.gpg
$ gpg -p testfile.txt.gpg	←☆私の意図した結果と異なるというか、そもそもオプションがないとはどういうこと？
無効なオプション "-p"
$ gpg -d testfile.txt.gpg -o test	←☆順番が大事なようだ。
使い方: gpg [オプション] --decrypt [filename]
$ gpg -o test -d testfile.txt.gpg	←☆復号時に、平文へのファイル指定があるため、そこに書き込む。
gpg: cv25519鍵, ID 2B6243601FA1DBDA, 日付2023-05-22に暗号化されました
      "asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>"
gpg: デフォルトの署名用の秘密鍵として"2771F0FCF8FE74CD9B9C25439D4893D18D358530"を用います
$ ll
total 16
-rw-r--r--  1 asakunotomohiro  staff   34  5 23 00:30 test	←☆指定したファイル名で出力されている。
-rw-r--r--  1 asakunotomohiro  staff  206  5 23 00:29 testfile.txt.gpg
$ cat test	←☆平文になっているのが確認できる。
ファイルの暗号化テスト
$ gpg testfile.txt.gpg	←☆復号化(推測された行動になるため、明示した方がいい)。
gpg: *警告*: コマンドが指定されていません。なにを意味しているのか当ててみます ...
gpg: cv25519鍵, ID 2B6243601FA1DBDA, 日付2023-05-22に暗号化されました
      "asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>"
gpg: デフォルトの署名用の秘密鍵として"2771F0FCF8FE74CD9B9C25439D4893D18D358530"を用います
$ ll
total 24
-rw-r--r--  1 asakunotomohiro  staff   34  5 23 00:30 testfile.txt	←☆復号化されたファイル。
-rw-r--r--  1 asakunotomohiro  staff   34  5 23 00:30 test
-rw-r--r--  1 asakunotomohiro  staff  206  5 23 00:29 testfile.txt.gpg
$ cat testfile.txt
ファイルの暗号化テスト
$
```
復号化したファイル名を暗号化ファイル名と異なる指定をした場合、平文がそのままコンピュータ上に残り、暗号化されたファイルが複数ある場合はどれを復号化したのか判断付かいかもしれない。  

※Microsoftの[PGP によるファイルの暗号化解除](https://learn.microsoft.com/ja-jp/system-center/orchestrator/standard-activities/pgp-decrypt-file?source=recommendations&view=sc-orch-2022)説明が全く理解できない。  
何かしらツールを使っているのか？  

</details>

使い方は後日。  


<a id="operatingsystemnetwork_pgp_yubico"></a>
#### YubiKey(FIDOセキュリティキー)への鍵焼き
秘密鍵をYubiKey(FIDOセキュリティキー)に焼き付ける。  
目的は、mac端末にある秘密鍵を完全消去及び手軽に使えるようにするため。  

以下、コマンド利用内容の確認作業。
```terminal
$ gpg --edit-card

Reader ...........: Yubico YubiKey OTP FIDO CCID
Application ID ...: D2760001240103040006210273540000
Application type .: OpenPGP
Version ..........: 5.8
Manufacturer .....: Yubico
Serial number ....: 21027354
Name of cardholder: [未設定]
Language prefs ...: [未設定]
Salutation .......:
URL of public key : [未設定]
Login data .......: [未設定]
Signature PIN ....: 強制なし
Key attributes ...: rsa2048 rsa2048 rsa2048
Max. PIN lengths .: 127 127 127
PIN retry counter : 3 0 3
Signature counter : 0
KDF setting ......: off
UIF setting ......: Sign=off Decrypt=off Auth=off
Signature key ....: [none]
Encryption key....: [none]
Authentication key: [none]
General key info..: [none]

gpg/card> help	←☆通常アカウント権限での利用可能コマンド一覧。
quit           このメニューを終了
admin          管理コマンドを表示
help           このヘルプを表示
list           全有効データを表示
fetch          カードURLで指定された鍵の取得
passwd         PINブロックの解除や変更のメニュー
verify         PINを確認しすべてのデータを表示する
unblock        PINをリセット・コードでブロックを解除する
openpgp        OpenPGP app にスイッチします

gpg/card> admin	←☆権限昇格。
管理者コマンドが許可されています

gpg/card> help	←☆利用可能コマンド増加。
quit           このメニューを終了
admin          管理コマンドを表示
help           このヘルプを表示
list           全有効データを表示
name           カード所有者の名前の変更
url            鍵を取得するURLの変更
fetch          カードURLで指定された鍵の取得
login          ログイン名の変更
lang           言語の優先指定の変更
salutation     カード所有者の敬称の変更
cafpr          CAフィンガープリントの変更
forcesig       署名強制PINフラグを反転
generate       新しい鍵を生成
passwd         PINブロックの解除や変更のメニュー
verify         PINを確認しすべてのデータを表示する
unblock        PINをリセット・コードでブロックを解除する
factory-reset  すべての鍵とデータを破壊します
kdf-setup      PIN認証のKDFを設定する (on/single/off)
key-attr       鍵の属性の変更
uif            ユーザインタラクションフラグの変更
openpgp        OpenPGP app にスイッチします

gpg/card>	←☆あとに続く。
```

以下、作業継続。
```terminal
gpg/card>	←☆上記から作業継続。
gpg/card> kdf-setup	←☆平文から暗号化(デフォルトPINの時に設定が必須とのこと。PIN変更後にこれをしたらPIN入力を受け付けないとか)。
                        ※管理者PINの入力を求められる(デフォルト/12345678)。

gpg/card> name	←☆氏名の入力。
カード所有者の姓 (surname): asakunotomohiro
カード所有者の名 (given name):

gpg/card> lang	←☆利用言語の設定。
言語の優先指定: ja	←☆日本語。

gpg/card> login	←☆メールアドレスの入力(ログイン名なのに？)。
ログイン・データ (アカウント名): asakuno.secure@pgp.asakuno.org

gpg/card> list

Reader ...........: Yubico YubiKey OTP FIDO CCID
Application ID ...: D2760001240103040006240372580000
Application type .: OpenPGP
Version ..........: 5.8
Manufacturer .....: Yubico
Serial number ....: 21027354
Name of cardholder: asakunotomohiro
Language prefs ...: ja
Salutation .......:
URL of public key : [未設定]
Login data .......: asakuno.secure@pgp.asakuno.org
Signature PIN ....: 強制なし
Key attributes ...: rsa2048 rsa2048 rsa2048
Max. PIN lengths .: 127 127 127
PIN retry counter : 3 0 3
Signature counter : 0
KDF setting ......: on
UIF setting ......: Sign=off Decrypt=off Auth=off
Signature key ....: [none]
Encryption key....: [none]
Authentication key: [none]
General key info..: [none]

gpg/card> url
公開鍵を取得するURL: https://keybase.io/asakunotomohiro

gpg/card> url
公開鍵を取得するURL: https://github.com/asakunotomohiro.gpg

gpg/card> quit	←☆いったん抜ける。
$
```
とりあえず、他のサイトで解説しているとおりに設定してみた。  
大丈夫だろうか・・・。  


以下、実際の鍵焼き付け作業。
```terminal
$ gpg -K asakuno.secure@pgp.asakuno.org
sec   ed25519 2023-05-22 [C] [有効期限: 2105-05-03]
      2771F0FCF8FE74CD9B9C25439D4893D18D358530
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-05-22 [E] [有効期限: 2099-05-03]
ssb   ed25519 2023-05-22 [S] [有効期限: 2099-05-03]
ssb   ed25519 2023-05-22 [A] [有効期限: 2099-05-03]

$ gpg -K --with-subkey-fingerprint asakuno.secure@pgp.asakuno.org
sec   ed25519 2023-05-22 [C] [有効期限: 2105-05-03]
      2771F0FCF8FE74CD9B9C25439D4893D18D358530
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-05-22 [E] [有効期限: 2099-05-03]
      728B0A778912932B9397341B2B6243601FA1DBDA
ssb   ed25519 2023-05-22 [S] [有効期限: 2099-05-03]
      60A7B0576F7404D51D59520C7A430907759D9FF4
ssb   ed25519 2023-05-22 [A] [有効期限: 2099-05-03]
      8013753761C78FA1A48230C682AA8224E47F7A68

$ gpg --edit-key 2771F0FCF8FE74CD9B9C25439D4893D18D358530
gpg (GnuPG) 2.4.8; Copyright (C) 2025 g10 Code GmbH
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

秘密鍵が利用できます。

sec  ed25519/9D4893D18D358530
     作成: 2023-05-22  有効期限: 2105-05-03  利用法: C
     信用: 究極        有効性: 究極
ssb  cv25519/2B6243601FA1DBDA
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: E
ssb  ed25519/7A430907759D9FF4
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: S
ssb  ed25519/82AA8224E47F7A68
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: A
[  究極  ] (1). asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

gpg> keytocard	←☆鍵の焼き付け実施。
この主鍵を本当に移動しますか? (y/N) y
鍵を保管する場所を選択してください:
   (1) 署名鍵	←☆"(2) 暗号化鍵"もあるようだ(それが副鍵のこと)。
あなたの選択は? 1	←☆管理者PINを聞かれる。

sec  ed25519/9D4893D18D358530
     作成: 2023-05-22  有効期限: 2105-05-03  利用法: C
     信用: 究極        有効性: 究極
ssb  cv25519/2B6243601FA1DBDA
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: E
ssb  ed25519/7A430907759D9FF4
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: S
ssb  ed25519/82AA8224E47F7A68
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: A
[  究極  ] (1). asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

注意: 秘密鍵のローカルなコピーは"save"だけで削除されます。
gpg> save
$
```

以下、管理者PINの変更。
```terminal
$ gpg --edit-card

Reader ...........: Yubico YubiKey OTP FIDO CCID
Application ID ...: D2760001240103040006240372580000
Application type .: OpenPGP
Version ..........: 5.8
Manufacturer .....: Yubico
Serial number ....: 21027354
Name of cardholder: asakunotomohiro
Language prefs ...: ja
Salutation .......:
URL of public key : https://github.com/asakunotomohiro.gpg	←☆1つしか登録されない？
Login data .......: asakuno.secure@pgp.asakuno.org
Signature PIN ....: 強制なし
Key attributes ...: ed25519 rsa2048 rsa2048
Max. PIN lengths .: 127 127 127
PIN retry counter : 3 0 3	←☆PINの試行回数変更コマンド：ykman openpgp access set-retries <PIN> <Reset Code> <Admin PIN>
Signature counter : 0
KDF setting ......: on
UIF setting ......: Sign=off Decrypt=off Auth=off	←☆デフォルトのままでいいと思う(変更コマンド：ykman openpgp keys set-touch <sig|enc|aut> <Off/On/Cached/Fixed/Cached-Fixed>)。
Signature key ....: 2771 F0FC F8FE 74CD 9B9C  2543 9D48 93D1 8D35 8530
      created ....: 2023-05-22 09:24:47
Encryption key....: [none]
Authentication key: [none]
General key info..:
pub  ed25519/9D4893D18D358530 2023-05-22 asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
sec>  ed25519/9D4893D18D358530  作成: 2023-05-22  有効期限: 2105-05-03
                                カード番号: 0008 21027354
ssb   cv25519/2B6243601FA1DBDA  作成: 2023-05-22  有効期限: 2099-05-03
ssb   ed25519/7A430907759D9FF4  作成: 2023-05-22  有効期限: 2099-05-03
ssb   ed25519/82AA8224E47F7A68  作成: 2023-05-22  有効期限: 2099-05-03

gpg/card> admin
管理者コマンドが許可されています

gpg/card> passwd
gpg: OpenPGPカードno. D2760001240103040006240372580000を検出

1 - change PIN
2 - unblock PIN
3 - change Admin PIN
4 - set the Reset Code
Q - quit

あなたの選択は? 3
PIN changed.

1 - change PIN
2 - unblock PIN
3 - change Admin PIN
4 - set the Reset Code
Q - quit

あなたの選択は? q

gpg/card> q
$
```

以下、現在の鍵の状況。
```terminal
$ gpg -K --with-subkey-fingerprint --list-secret-keys --with-keygrip asakuno.secure@pgp.asakuno.org
sec>  ed25519 2023-05-22 [C] [有効期限: 2105-05-03]	←☆主鍵は移動している(>記号があるためローカルにはない)。
      2771F0FCF8FE74CD9B9C25439D4893D18D358530
      Keygrip = F5E7F028D27E3BDA27ACCACC7BC9169AFB1F1B8C
   カードシリアル番号 = 0008 21027354	←☆カードに移動していることがわかる。
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-05-22 [E] [有効期限: 2099-05-03]	←☆ローカルに残っているのがわかる。
      728B0A778912932B9397341B2B6243601FA1DBDA
      Keygrip = 2171B37E2634D42D99CEE1CCB9275333FC38F3CD
ssb   ed25519 2023-05-22 [S] [有効期限: 2099-05-03]	←☆ローカルに残っているのがわかる。
      60A7B0576F7404D51D59520C7A430907759D9FF4
      Keygrip = EF64C76F724DB6E41A170AAC86047841775F7354
ssb   ed25519 2023-05-22 [A] [有効期限: 2099-05-03]	←☆ローカルに残っているのがわかる。
      8013753761C78FA1A48230C682AA8224E47F7A68
      Keygrip = 174968D4F353A60CB18A96DE3680AF8FB6C14E95

$
```
同じように移動する。

以下、移動結果。
```terminal
$ gpg -K --with-subkey-fingerprint --list-secret-keys --with-keygrip asakuno.secure@pgp.asakuno.org
sec#  ed25519 2023-05-22 [C] [有効期限: 2105-05-03]
      2771F0FCF8FE74CD9B9C25439D4893D18D358530
      Keygrip = F5E7F028D27E3BDA27ACCACC7BC9169AFB1F1B8C
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
ssb#  cv25519 2023-05-22 [E] [有効期限: 2099-05-03]
      728B0A778912932B9397341B2B6243601FA1DBDA
      Keygrip = 2171B37E2634D42D99CEE1CCB9275333FC38F3CD
ssb   ed25519 2023-05-22 [S] [有効期限: 2099-05-03]
      60A7B0576F7404D51D59520C7A430907759D9FF4
      Keygrip = EF64C76F724DB6E41A170AAC86047841775F7354
ssb>  ed25519 2023-05-22 [A] [有効期限: 2099-05-03]
      8013753761C78FA1A48230C682AA8224E47F7A68
   カードシリアル番号 = 0008 21027354
      Keygrip = 174968D4F353A60CB18A96DE3680AF8FB6C14E95

$
```
どういうこと？  



<a id="operatingsystemnetwork_pgp_keyserver"></a>
#### PGP鍵サーバへの登録
今回作成した鍵は自前で管理してもいいが、結局は公開鍵を公開することになるため、であれば[PGP鍵管理](http://www.jp.netbsd.org/ja/developers/pgp.html)用のサーバを利用しようと思う。  
メールアドレスを一般公開することで迷惑メールなどが来ることを懸念するが、最近の鍵サーバは、メールアドレスそのもので検索しなければ検索にかからないような仕組みになっている。  
一昔前の鍵サーバは、メールアドレスの一部だけでも検索にかかっていたため、迷惑メールがバンバン来ていたそうだ(それを反省したのだろう)。  
国産の[日本ネットワークインフォメーションセンター](https://www.nic.ad.jp/ja/topics/2022/20220905-03.html)では鍵管理を放棄したようだ。  


* 鍵管理サーバ(キーサーバという)一覧。  
  * <https://keys.openpgp.org>  
    これを使うことにした。  
    歴史は[新しい](https://mailarchive.ietf.org/arch/msg/openpgp/1cQeIV8s81lhwG_FQtMuc2JbRSk/)ようだな。  
    しかし、2019年の時点で[10万点](https://keys.openpgp.org/about/news)の公開鍵が登録されているようだ。  
  * <https://www.pgp.net>  
  * <https://keyserver.pgp.com>  
    日本語で扱えるようだ。  
    私の登録メールアドレスは見つけられず。  
  * <https://pgp.surf.nl>  
    私の登録メールアドレスは見つけられず。  
  * <https://keyserver.ubuntu.com>  
    私の登録メールアドレスは見つけられず。  
  * <https://keys.mailvelope.com/manage.html>  
    私の登録メールアドレスは見つけられず。  
  * <http://pgp.mit.edu>  
    私の登録メールアドレスは見つけられず。  
  * <https://keyring.debian.org>  
    どやって使う？コマンドライン上か？  
  * <sks-keyservers.net>  
    [古い](https://wiki.archlinux.jp/index.php/トーク:GnuPG)(存在しないサーバ)。  
  * [keyserver](https://www.keyserver.net)  
    古い(稼働停止済み)。  

* 登録手順(ブラウザ上)  
  <https://keys.openpgp.org>にて登録。  
  1. **upload**を選ぶ。  
     > You can also upload or manage your key.  
  1. **Upload your key**にて、公開鍵を選ぶ。  
     1. 私は**GPG Keychain**から公開鍵を排出。  
     1. `asakunotomohiro (8D358530) – 公開鍵.asc`というファイルを選ぶ。  
  1. **Upload**ボタンクリック。  
  1. 認証メールを送るボタン(**Send Verification Email**)をクリック(全文説明は、以下の引用部分がそう)。  
  1. ボタンクリック後は、ボタンの文言が**Verification Pending**に変わることを確認。  
  1. メール受信箱にて、**Verify asakuno.secure@pgp.asakuno.org for your key on keys.openpgp.org**という件名のメールを確認する。  
  1. メール本文に記載している認証URLを開く。  
  1. ブラウザ本文に、**Your key 2771F0FCF8FE74CD9B9C25439D4893D18D358530 is now published for the identity asakuno.secure@pgp.asakuno.org.**が表示され、無事に登録された。  
  1. 実際に検索を掛けて公開鍵を確認する。  

> You uploaded the key 2771F0FCF8FE74CD9B9C25439D4893D18D358530.  
> This key is now published with only non-identity information. (What does this mean?)  
> To make the key available for search by email address, you can verify it belongs to you:  
> asakuno.secure@pgp.asakuno.org  
> Note: Some providers delay emails for up to 15 minutes to prevent spam. Please be patient.  

* 登録手順(コマンドライン上)  
  そもそもの[設定](https://keys.openpgp.org/about/usage)から確認する必要がある。  

1. 設定ファイルの確認。
```terminal
$ cd ~/.gnupg
$ pwd
/Users/asakunotomohiro/.gnupg
$ ll *conf
-rw-------@ 1 asakunotomohiro  staff  87  5  6 20:18 gpg.conf
-rw-------  1 asakunotomohiro  staff  41  1  5 22:06 gpg-agent.conf
-rw-------  1 asakunotomohiro  staff  34  1  5 22:06 dirmngr.conf
$ cat -n gpg.conf	←☆このファイルにキーサーバを記述する。
     1	auto-key-retrieve
     2	no-emit-version
     3	default-key 2771F0FCF8FE74CD9B9C25439D4893D18D358530
$ cat -n gpg-agent.conf
     1	default-cache-ttl 600
     2	max-cache-ttl 7200
$ cat -n dirmngr.conf	←☆このファイルは何？
     1	keyserver hkps://keys.openpgp.org
$
```
> This is the standard configuration file read by dirmngr on startup.  
> It may contain any valid long option; the leading two dashes may not be entered and the option may not be abbreviated.  
> This file is also read after a SIGHUP however not all options will actually have an effect.  
> This default name may be changed on the command line (see option --options).  
> You should backup this file.  

よく分からない[ファイル](https://gnupg.org/documentation/manuals/gnupg/Dirmngr-Configuration.html)が起因で標準利用のキーサーバが決まる感じだな。  
鍵の検索や取得に特化しているだけかもしれない。  
素直に言われたファイル(**gpg.conf**)に書き込むことにする。  

2. 利用キーサーバをファイルに書き込む。
```terminal
$ vi gpg.conf
$ cat -n gpg.conf
     1	auto-key-retrieve
     2	no-emit-version
     3	default-key 2771F0FCF8FE74CD9B9C25439D4893D18D358530
     4	keyserver hkps://keys.openpgp.org	←☆これを書き込んだ。
$
```

3. 公開鍵をサーバに登録実施。  
様式：`gpg --keyserver [鍵サーバーのアドレス] --send-keys [鍵ID]`  
※鍵IDは、GPGKeychainから鍵の詳細画面で確認できる。
```terminal
$ gpg -K --with-subkey-fingerprint asakuno.secure@pgp.asakuno.org
sec#  ed25519 2023-05-22 [C]
      2771F0FCF8FE74CD9B9C25439D4893D18D358530
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-05-22 [E] [有効期限: 2099-05-03]
      728B0A778912932B9397341B2B6243601FA1DBDA
ssb   ed25519 2023-05-22 [S] [有効期限: 2099-05-03]
      60A7B0576F7404D51D59520C7A430907759D9FF4
ssb   ed25519 2023-05-22 [A] [有効期限: 2099-05-03]
      8013753761C78FA1A48230C682AA8224E47F7A68

$ gpg --keyserver keys.openpgp.org --send-keys 2771F0FCF8FE74CD9B9C25439D4893D18D358530	←☆鍵を鍵サーバに登録。
gpg: 鍵9D4893D18D358530をhkp://keys.openpgp.orgへ送信
$
```
~~送信しただけで登録まではできていないようで、検索にかからない~~ (検索方法に問題があったはず)。  

ちなみに、メールアドレス指定での登録はできない。
```terminal
$ gpg --keyserver keys.openpgp.org --send-keys asakuno.secure@pgp.asakuno.org
gpg: "asakuno.secure@pgp.asakuno.org"鍵IDではありません: スキップします
$
```

4. サーバ登録済みの公開鍵をメールアドレスで検索可能作業。
```terminal
$ gpg --export asakuno.secure@pgp.asakuno.org | curl -T - https://keys.openpgp.org
Key successfully uploaded. Proceed with verification here:
https://keys.openpgp.org/upload/abcdefghijklmnopqrstuvwxyz
$
```
出力されたURLが認証だろうと思い、開いたときに以下のメッセージが出力され、これでキーサーバでメールアドレス検索できると思ったのだが、できない。  
> You uploaded the key 1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ0123.  
> This key is now published with only non-identity information. (What does this mean?)  

5. 鍵サーバでの検索。
```terminal
$ gpg --keyserver keys.openpgp.org --search-keys asakuno.secure@pgp.asakuno.org
gpg: data source: http://keys.openpgp.org:11371
gpg: 鍵"asakuno.secure@pgp.asakuno.org"が鍵サーバに見つかりません	←☆認証していないため、メールアドレスでの検索ができない。
gpg: 鍵サーバの検索に失敗しました: 見つかりません
$
$ gpg --keyserver keys.openpgp.org --search-keys 2771F0FCF8FE74CD9B9C25439D4893D18D358530
gpg: data source: http://keys.openpgp.org:11371
(1)	  256 bit EDDSA key 9D4893D18D358530, 作成: 2023-05-22
Keys 1-1 of 1 for "2771F0FCF8FE74CD9B9C25439D4893D18D358530".  番号(s)、N)次、またはQ)中止を入力してください >1
gpg: 鍵9D4893D18D358530: ユーザIDがありません	←☆そして、メールアドレスを表示してくれないという・・・。
gpg:           処理数の合計: 1
$
```
メールアドレスで検索できない理由は、認証メールに付いているURLを開かないのが原因なのだが、~~認証メールを送る方法が分からない~~。  

暗号の種類によってはキーサーバ側が対応しておらず、認証メールを送る手段がとれないため、やり直す必要がある。  
やり直したことにより、見慣れた(?)画面が開き、  
`〜〜To make the key available for search by email address, you can verify it belongs to you:~~`
というメッセージの次行にメールアドレスと認証メールを送るボタンが表示される。  
以下、ボタン押下後の日本語。
```text
keys.openpgp.org

この鍵2771F0FCF8FE74CD9B9C25439D4893D18D358530をあなたはアップロードしました。
アイデンティティではない情報だけでこの鍵は公開されました。(どういう意味か？)
メールアドレスでの検索で鍵が利用できるようにするために、そのメールアドレスがあなたのものであることを検証することができます。

asakuno.secure@pgp.asakuno.org	検証を出願中です。

注意: 迷惑メール防止のために、プロバイダは15分ほどメールを遅らせることがあります。しばらくお待ちください。
```
あとはいつも通り(?)に手順を踏めばいい。  

以下、認証後の日本語。
```text
keys.openpgp.org

あなたの鍵2771F0FCF8FE74CD9B9C25439D4893D18D358530は、今、アイデンティティasakuno.secure@pgp.asakuno.orgに対して公開されました。
```

以下、検索。
```terminal
$ gpg --keyserver keys.openpgp.org --search-keys asakuno.secure@pgp.asakuno.org	←☆メールアドレスで検索可能になった。
gpg: data source: http://keys.openpgp.org:11371
(1) asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp	←☆なぜにメールアドレスが切り落とされている？
      256 bit EDDSA key 9D4893D18D358530, 作成: 2023-05-22
Keys 1-1 of 1 for "asakuno.secure@pgp.asakuno.org".  番号(s)、N)次、またはQ)中止を入力してください >1	←☆1を入力。
gpg: 鍵9D4893D18D358530:"asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>"変更なし
gpg:           処理数の合計: 1
gpg:               変更なし: 1
$
$ gpg --keyserver keys.openpgp.org --search-keys 2771F0FCF8FE74CD9B9C25439D4893D18D358530	←☆鍵指紋で検索。
gpg: data source: http://keys.openpgp.org:11371
(1) asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp
      256 bit EDDSA key 9D4893D18D358530, 作成: 2023-05-22
Keys 1-1 of 1 for "2771F0FCF8FE74CD9B9C25439D4893D18D358530".  番号(s)、N)次、またはQ)中止を入力してください >1
gpg: 鍵9D4893D18D358530:"asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>"変更なし	←☆メールアドレスが出てきた。
gpg:           処理数の合計: 1
gpg:               変更なし: 1
$
```

* 手動(ブラウザ)検索手順  
  * <https://keyoxide.org>  
    ここで検索できる(実際に探したら見つかった)。  


<a id="operatingsystemnetwork_pgppeggingcontrol_keybase"></a>
#### PGPをKeybaseに紐付け
よく分かっていないのだが、暗号通信を前提としたチャットを含むメッセージ送受信が可能な自己証明サービスとして[keybase](https://keybase.io/)と言うのがある。  
あるのは使わなければ損するだろうということで、ここで他のサービスとの紐付けを行うことにした。  
keybase公式の[取扱説明書(URLはコマンドライン)](https://book.keybase.io/docs)  

アカウント作成やアプリケーションインストールなどは説明不要だろう(WindowsOSで例えるならば、GUI操作として、「**次へ**」をクリックし続ければ、インストール完了だ)。  
そして、[公開鍵](#operatingsystemnetwork_pgp_howtoencrypt)はすでに作成済みとして、以下の作業を行う。  
※秘密鍵はアップロードしないこと。  

ちなみに、この会社は、[Zoom](https://blog.zoom.us/zoom-acquires-keybase-and-announces-goal-of-developing-the-most-broadly-used-enterprise-end-to-end-encryption-offering/)に[買収](https://keybase.io/blog/keybase-joins-zoom)された。  

以下、勘違いではないようだ？  

<details><summary>勘違い。</summary>

KeybaseGUI画面から鍵の取り込みを行うのだが、なぜかやり方のみ提示し、実際の取り込み方法はCUI操作が要求される。  
また、今回の作業は、~~鍵の特性項目すべて埋まっている必要がある~~。  
そのため、~~不足している場合は、[優先指定リストを設定](#operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_setpref)する作業にて、不足分を埋めること~~。  
```terminal
$ keybase pgp select --no-publish --import	←☆オプションは、keybaseサーバに公開鍵を渡さずに使えるようにする(と解釈した)。
　　　・
　　　・
　　　・
▶ ERROR Key 2771F0FCF8FE74CD9B9C25439D4893D18D358530 is not active in user's sigchain. Publish key first to be able to import to local Keybase keychain
$
```
~~エラーになったということは、結局公開しなければならないということなのだろう・・・(やり方が悪いだけかもしれない)~~。  
~~keybase上で公開はしなくていいのだが、むしろその表現も間違っているはずだが~~、、、  
いまだに分かっていないため、これ以降の表現は控える。  
TODO: 調べる。  

</details>

```terminal
$ keybase pgp help select
NAME:
   keybase pgp select - Select a key from GnuPG as your own and register the public half with Keybase

USAGE:
   keybase pgp select [command options] [key query]

DESCRIPTION:
   "keybase pgp select" looks at the local GnuPG keychain for all
   available secret keys. It then makes those keys available for use with keybase.
   The steps involved are: (1a) sign a signature chain link with the selected PGP
   key and the existing device key; (1b) push this signature and the public PGP
   key to the server; and if "--import" flag is passed: (2a) copy the PGP secret half
   into your local Keybase keyring; and (2b) encrypt this secret key with Keybase's
   local key security mechanism.

   By default, Keybase suggests only one PGP public key, but if you want to,
   you can supply the "--multi" flag to override this restriction. If you
   want your secret key imported into the local Keybase keyring, then use
   the "--import" flag. Importing your secret key to Keybase keyring makes
   it possible to use Keybase PGP commands like "pgp decrypt" or "pgp sign".

   If you don't want to publish signature chain link to Keybase servers, use
   "--no-publish" flag. It's only valid when both "--no-publish" and "--import"
   flags are used.

   This operation will never push your secret key, encrypted or otherwise,
   to the Keybase server.

OPTIONS:
   --multi	Allow multiple PGP keys.
   --import	Import private key to the local Keybase keyring.
   --no-publish	Only import to Keybase keyring, do not publish on user profile.

$
```
よく分かっていないが、以下まとめた。  

* keybaseの挙動手順。  
  1. 選んだ鍵に署名し、署名用鍵束に署名する。  
     この時点で理解できないのだが、どういう意味？  
  1. 署名済みの鍵束と公開鍵をサーバにあげる。  
  1. `--import`付きの場合は、秘密鍵の半分をローカルの鍵束に保存する。  
     これも理解できない(半分とは、公開鍵を表しているようだ？)。  
  1. 保存した秘密鍵を暗号化する(どうやって？どこに？何のために？)。  

* keybaseの利用説明。  
  * 大前提として、秘密鍵そのものは、サーバにあげない。  
  * 通常は、公開鍵を1つ選ぶ。  
    `--multi`付きの場合は、複数選べる。  
  * 復号化や署名をする場合は、`--import`付きで実行する必要がある。  
  * 署名付きの鍵束をサーバにあげない場合は、`--no-publish`付きで実行する必要がある。  
    その場合は、`--import`も併用しておく必要がある。  

鍵を指定しなければ、すべての秘密鍵を探し出すとのことだが、探してどうするつもりなのだろう。  
署名用の鍵束ってどういう意味？  
秘密鍵をkeybaseで使えるようにするらしいのだが、そんなにいくつも登録するのか？  
公開する公開鍵は1種類だと思うのだが？  

ちなみに、`--no-import`というオプションもあるようだ。  
鍵束に登録せずに公開鍵をサーバにあげるようだ？  
[keyoxide](#operatingsystemnetwork_pgppeggingcontrol_keyoxide)の[keybase](#operatingsystemnetwork_pgppeggingcontrol_keyoxide_keybase)にて、秘密鍵はサーバにあげるべきでない忠告が表示されている。  
その秘密鍵の話は、公開鍵についての一般知識への忠告であり、Keybaseで秘密鍵をサーバ保存することではない(と思っているのだが、どうだろう)。  
> [This operation will never push your secret key, encrypted or otherwise, to the Keybase server.](https://github.com/keybase/client/blob/324f1120754b87ef5d4b249ba7000e408caae385/go/client/cmd_pgp_select.go#L141)
問題はないということで。。。  

<details><summary>やり直すが失敗する。</summary>

以下、やり直し。

    $ keybase pgp select --import asakuno.secure@pgp.asakuno.org	←☆公開実施。
    You are selecting a PGP key to publish in your profile, and
    importing secret key to *local*, *encrypted* Keybase keyring.

    If your GnuPG key is encrypted, you will be asked for passphrase
    to unlock it. You may be asked *twice* - first by GnuPG, to export
    encrypted key bundle, and then by Keybase, to unlock the secret key.

    Please note that this will not work if your secret key lives on a
    hardware device (like a smart card or a Yubikey).

    #    Algo   Key Id             Created   UserId
    =    ====   ======             =======   ======
    1    256?   9D4893D18D358530             asakunotomohiro <asakuno.secure@pgp.asakuno.org>
    Choose a key: 1
    ▶ ERROR key generation error: GPG error: exit status 2	←☆どういうこと？
    $

なぜ取り込めない？  

原因確認として、デバッグ実行をした。  
`keybase -d pgp select --import asakuno.secure@pgp.asakuno.org`  
にて、~~主鍵~~の秘密鍵が必要ということか・・・(主鍵ではなく、署名を付ける鍵が必要)。  
```text
　　　;
▶ [DEBU keybase gpg_cli.go:405] 12f | running Gpg: /usr/local/bin/gpg --no-auto-check-trustdb --armor --sign -u 2771F0FCF8FE74CD9B9C25439D4893D18D358530
▶ [DEBU keybase gpg_cli.go:412] 130 | setting GPG_TTY=/dev/ttys027
▶ [DEBU keybase gpg_cli.go:380] 131 gpg: 署名に失敗しました: 秘密鍵がありません
▶ [DEBU keybase gpg_cli.go:380] 132 gpg: signing failed: 秘密鍵がありません
▶ [DEBU keybase log_ui.go:37] 133 - GPGKey Signing -> GPG error: exit status 2
▶ [DEBU keybase warnings.go:54] 134 + PrintOutOfDateWarnings
　　　;
```
もしくは、副鍵の秘密鍵に署名する機能がないのが原因？  
```terminal
$ gpg -K asakuno.secure@pgp.asakuno.org
sec#  ed25519 2023-05-22 [C]
      2771F0FCF8FE74CD9B9C25439D4893D18D358530
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-05-22 [E] [有効期限: 2099-05-03] [有効期限: 2028-04-19]	←☆Eは暗号化のみ。

$
```

</details>

以下、やり直しとして、公開することにした作業。

    $ gpg -K --with-subkey-fingerprint asakuno.secure@pgp.asakuno.org	←☆鍵指紋の確認。
    sec#  ed25519 2023-05-22 [C]	←☆主鍵は削除済み。
          2771F0FCF8FE74CD9B9C25439D4893D18D358530
    uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
    ssb   cv25519 2023-05-22 [E] [有効期限: 2099-05-03]	←☆暗号化に特化した鍵。
          728B0A778912932B9397341B2B6243601FA1DBDA
    ssb   ed25519 2023-05-22 [S] [有効期限: 2099-05-03]	←☆署名に特化した鍵。
          60A7B0576F7404D51D59520C7A430907759D9FF4
    ssb   ed25519 2023-05-22 [A] [有効期限: 2099-05-03]	←☆認証に特化した鍵。
          8013753761C78FA1A48230C682AA8224E47F7A68

    $ keybase pgp select asakuno.secure@pgp.asakuno.org	←☆オプション無しで実行してみた(私の正式コマンドとする)。
    You are selecting a PGP key from your local GnuPG keychain, and
    will publish a statement signed with this key to make it part of
    your Keybase.io identity.

    Note that GnuPG will prompt you to perform this signature.

    You can also import the secret key to *local*, *encrypted* Keybase
    keyring, enabling decryption and signing with the Keybase client.
    To do that, use "--import" flag.

    Learn more: keybase pgp help select

    #    Algo   Key Id             Created   UserId
    =    ====   ======             =======   ======
    1    256?   9D4893D18D358530             asakunotomohiro <asakuno.secure@pgp.asakuno.org>
    Choose a key: 1
    ▶ INFO Generated new PGP key:	←☆署名鍵を使う(これができずにKeybaseに鍵を付けられなかった)。
    ▶ INFO   user: asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
    ▶ INFO   256-bit EdDSA key, ID 9D4893D18D358530, created 2023-05-22	←☆鍵の種類がECDSAじゃない？
    $ keybase pgp list	←☆キーベースへの登録一覧(登録前に実行してみればよかった)。
    Keybase Key ID:  2771F0FCF8FE74CD9B9C25439D4893D18D358530
    PGP Fingerprint: 2771f0fcf8fe74cd9b9c25439d4893d18d358530
    PGP Identities:
       asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

    $

登録するときに、秘密鍵のパスフレーズを入力する必要がある。  
しかし、主鍵は削除済みであるため、副鍵の秘密鍵のみ入力することになる。  
主鍵がある場合は、主鍵と副鍵の両方のパスフレーズ入力が必要だったはず。  
[優先指定リストを設定](#operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_setpref)が必要だったが、無事に[Keybase](https://keybase.io/asakunotomohiro)に登録できた(上記で出てこなかったメモ書きが出てきた)。  

鍵を交換したことで、メールが送られてくる。
> Please revoke any you have lost, under "devices" in the Keybase app. And install Keybase on any new devices.  

どういう意味？  

<details><summary>登録に鍵指紋を指定した場合エラーになる。</summary>

これも勘違いだろう。  
後日、もう一度鍵指紋を指定した場合は問題なく処理できた。  

```terminal
$ keybase pgp select --import --multi 2771F0FCF8FE74CD9B9C25439D4893D18D358530
You are selecting a PGP key to publish in your profile, and
importing secret key to *local*, *encrypted* Keybase keyring.

If your GnuPG key is encrypted, you will be asked for passphrase
to unlock it. You may be asked *twice* - first by GnuPG, to export
encrypted key bundle, and then by Keybase, to unlock the secret key.

Please note that this will not work if your secret key lives on a
hardware device (like a smart card or a Yubikey).

▶ ERROR GPG error: exit status 2
$
```

</details>

<a id="operatingsystemnetwork_pgppeggingcontrol_keybase_github"></a>
ついでに、Githubに紐付ける。  
※[keyoxide](#operatingsystemnetwork_pgppeggingcontrol_keyoxide)から[Github](#operatingsystemnetwork_pgppeggingcontrol_keyoxide_github)への紐付けは別作業。  
<https://book.keybase.io/docs/cli>  
`keybase prove github`にて、紐付けができるようだ。  
以下、その作業。

    $ keybase prove --list-services --all	←☆キーベースから紐付け可能一覧コマンド。
    All supported services:
      web
      twitter
      github
      reddit
      hackernews
      https
      http
      dns
      lobste.rs
      tactoken.io
      market.link
      dmoj.ca
      theqrl.org
      omg.lol
      galactictalk.org
      app.lfg.directory
    $ keybase prove github	←☆ギットハブに紐付け。
    Your username on Github: asakunotomohiro
    Please publicly post the following Gist, and name it keybase.md	←☆ギットハブGistに一般公開で、このファイル名を付けて以下の内容を作成する。

    ### Keybase proof	←☆ここから以下を貼り付ける。

    I hereby claim:

      * I am asakunotomohiro on github.
      * I am asakunotomohiro (https://keybase.io/asakunotomohiro) on keybase.
      * I have a public key abcdefghijklmnopqrstuvwxyz

    To claim this, I am signing this object:

    ```json
    {
      "body": {
        "key": {
          "eldest_kid": "abcdefghijklmnopqrstuvwxyz",
          "host": "keybase.io",
          "kid": "abcdefghijklmnopqrstuvwxyz",
          "uid": "abcdefghijklmnopqrstuvwxyz",
          "username": "asakunotomohiro"
        },
        "merkle_root": {
          "ctime": 0123456789,
          "hash": "abcdefghijklmnopqrstuvwxyz",
          "hash_meta": "abcdefghijklmnopqrstuvwxyz",
          "seqno": 0123456789
        },
        "service": {
          "entropy": "abcdefghijklmnopqrstuvwxyz",
          "name": "github",
          "username": "asakunotomohiro"
        },
        "type": "web_service_binding",
        "version": 2
      },
      "client": {
        "name": "keybase.io go client",
        "version": "6.0.4"
      },
      "ctime": 0123456789,
      "expire_in": 0123456789,
      "prev": "abcdefghijklmnopqrstuvwxyz",
      "seqno": 23,
      "tag": "signature"
    }
    ```

    with the key [abcdefghijklmnopqrstuvwxyz](https://keybase.io/asakunotomohiro), yielding the signature:

    ```
    abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz1234567890

    ```

    And finally, I am proving ownership of the github account by posting this as a gist.

    ### My publicly-auditable identity:

    https://keybase.io/asakunotomohiro

    ### From the command line:

    Consider the [keybase command line program](https://keybase.io/download).

    ```bash
    # look me up
    keybase id asakunotomohiro
    ```	←☆ここまでを貼り付ける。

    Check GitHub now? [Y/n] y	←☆よく分からずにyを選択してしまった(紐付けるかどうかだけを聞いているのかと・・・)。
    Couldn't find posted proof.	←☆準備ができていない注意を受ける。
    Check GitHub again now? [Y/n] Y	←☆準備ができた上で同意する。
    ▶ NOTICE Success!	←☆紐付き成功。
    $

一度登録することで、継続認証するようだ？  
しかし、他の人が閲覧して紐付いていることを検証するためにも投稿は削除しないようにとのこと(そんな説明のメールが飛んできた)。  


<a id="operatingsystemnetwork_pgppeggingcontrol_keyoxide"></a>
#### PGPをkeyoxideに紐付け管理
せっかくのなので、公開しているメールアドレスを<https://keyoxide.org>に紐付けることにした。  
この作業には、**主鍵**の秘密鍵を**使う**。  

<https://codeberg.org/keyoxide/keyoxide-cli>  
にて、ローカル上で何かできるようだ。  
私は[Web](https://docs.keyoxide.org/getting-started/clients-tools/)上で操作できれば十分かな。  

* 登録一覧  
  * [Github](#operatingsystemnetwork_pgppeggingcontrol_keyoxide_github)  
  * [keybase](#operatingsystemnetwork_pgppeggingcontrol_keyoxide_keybase)  

<a id="operatingsystemnetwork_pgppeggingcontrol_keyoxide_github"></a>
<details><summary>Githubへの登録作業。</summary>

Githubというか、正確にはGithubアカウントに紐付ける作業となり、その登録方法にGithubのGistを使う。  
[Keybase](#operatingsystemnetwork_pgppeggingcontrol_keybase)から[Github](#operatingsystemnetwork_pgppeggingcontrol_keybase_github)への紐付けは別作業。  

<https://github.com/asakunotomohiro>  
<https://docs.keyoxide.org/service-providers/github/>  

<details><summary>Githubのリポジトリ登録失敗記録。</summary>

1. 手順その1  
gistへの登録に、一般公開するリポジトリは鍵指紋を名前に使うのが慣例のようだ。  
```terminal
$ gpg -K --with-subkey-fingerprint asakuno.secure@pgp.asakuno.org
sec#  ed25519 2023-05-22 [C] [有効期限: 2105-05-03]
      2771F0FCF8FE74CD9B9C25439D4893D18D358530	←☆これをリポジトリ名に付ける。
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-05-22 [E] [有効期限: 2099-05-03]
      728B0A778912932B9397341B2B6243601FA1DBDA
ssb   ed25519 2023-05-22 [S] [有効期限: 2099-05-03]
      60A7B0576F7404D51D59520C7A430907759D9FF4
ssb   ed25519 2023-05-22 [A] [有効期限: 2099-05-03]
      8013753761C78FA1A48230C682AA8224E47F7A68

$
```
書き込むファイル名は**openpgp.md**が絶対になっている。  
~~そして、これ以外のファイルを登録する必要がない~~。  
~~そのため、リポジトリ作成時にリードミーファイル・gitignoreファイル・ライセンスファイルは付けない~~。  
そもそもの作成場所を間違えていたため、とんちんかんな説明になっていた。  

1. 手順その2  
~~ローカル端末上にクローン実施~~(作成方法がおかしい)。  
`git clone git@github.com:asakunotomohiro/2771F0FCF8FE74CD9B9C25439D4893D18D358530.git`  
以下、その作業。
```terminal
$ git clone git@github.com:asakunotomohiro/2771F0FCF8FE74CD9B9C25439D4893D18D358530.git
Cloning into '2771F0FCF8FE74CD9B9C25439D4893D18D358530'...
warning: You appear to have cloned an empty repository.	←☆リポジトリ作成時に何もファイルを作ってない証拠。
$
$ ll
total 0
drwxr-xr-x   3 asakunotomohiro  staff    96  5 23 23:38 2771F0FCF8FE74CD9B9C25439D4893D18D358530/	←☆これ(当然中身は空)。
drwxr-xr-x  34 asakunotomohiro  staff  1088  5 22 01:42 dotfiles/
$
```

1. 手順その3  
~~書き込みファイルを用意する([アイデンティティの証明](https://docs.keyoxide.org/understanding-keyoxide/identity-proof-formats/))~~。  
<https://docs.keyoxide.org/getting-started/verifying-profiles/>を見て、どうすりゃいいの？  
Github上の新規にGist作成項目から下記を作る。
```terminal
$ cat openpgp.md	←☆Gistに書き込んだ内容。
This is an OpenPGP proof that connects [my OpenPGP key](https://keyoxide.org/2771F0FCF8FE74CD9B9C25439D4893D18D358530) to [this Github account](https://github.com/asakunotomohiro). For details check out https://keyoxide.org/guides/openpgp-proofs

[Verifying my OpenPGP key: openpgp4fpr:2771F0FCF8FE74CD9B9C25439D4893D18D358530]
$
```
ファイル名・ファイル内容は大事。  

1. 手順その3  
書き込みファイルを用意する([アイデンティティの証明](https://docs.keyoxide.org/understanding-keyoxide/identity-proof-formats/))。  
<https://docs.keyoxide.org/getting-started/verifying-profiles/>を見て、どうすりゃいいの？
```terminal
$ cd 2771F0FCF8FE74CD9B9C25439D4893D18D358530
$ ll
total 8
-rw-r--r--  1 asakunotomohiro  staff  410  5 24 00:04 openpgp.md	←☆ファイルを新規作成する。
$ cat openpgp.md	←☆書き込んだ内容。
This is an OpenPGP proof that connects [my OpenPGP key](https://keyoxide.org/2771F0FCF8FE74CD9B9C25439D4893D18D358530) to [this Github account](https://github.com/asakunotomohiro). For details check out https://keyoxide.org/guides/openpgp-proofs

[Verifying my OpenPGP key: openpgp4fpr:2771F0FCF8FE74CD9B9C25439D4893D18D358530]

<!-- vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=markdown expandtab: -->
$
```

1. 手順その4  
~~Githubリポジトリの設定変更~~  
~~不要と思われるようなWikis・Issuesは利用不可に設定した~~。  
~~Pull Requestsもすべて利用不可にしたかったが、どれか1つは有効化しておく必要があるらしいため、**Allow merge commits**のみ有効化した~~。  
あぁ勘違いだった。  
リポジトリを作成した上で、何かしらの作業でGistに移行できると思っていたが、[Gist](https://gist.github.com/asakunotomohiro)と言うのが別にあり、それで上記のファイル内容を貼り付けるのだろう。  
間違った作業をしてしまった。  
そもそも[説明](https://docs.keyoxide.org/service-providers/github/)されていた。  
> Log in to github.com and click on New gist.

諦めきれず、通常のリポジトリで登録することにした。
```terminal
$ gpg --list-keys --with-sig-list --list-options show-notations 2771F0FCF8FE74CD9B9C25439D4893D18D358530	←☆追加前の状況確認。
pub   ed25519 2023-05-22 [C] [有効期限: 2105-05-03]
      2771F0FCF8FE74CD9B9C25439D4893D18D358530
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
sig 3        9D4893D18D358530 2023-05-22  [自己署名]
sig          4C20892B88F7F574 2023-05-22  [ユーザIDが見つかりません]
sig          635EC3A6D7233F2B 2023-05-22  [ユーザIDが見つかりません]
sig          E1AE542959117853 2023-05-22  [ユーザIDが見つかりません]
sub   cv25519 2023-05-22 [E] [有効期限: 2099-05-03]
sig          9D4893D18D358530 2023-05-22  [自己署名]
sub   ed25519 2023-05-22 [S] [有効期限: 2099-05-03]
sig          9D4893D18D358530 2023-05-22  [自己署名]
sub   ed25519 2023-05-22 [A] [有効期限: 2099-05-03]
sig          9D4893D18D358530 2023-05-22  [自己署名]

$ gpg --edit-key 2771F0FCF8FE74CD9B9C25439D4893D18D358530	←☆主鍵の編集。
gpg (GnuPG) 2.4.1; Copyright (C) 2023 g10 Code GmbH
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

秘密鍵が利用できます。

sec  ed25519/9D4893D18D358530
     作成: 2023-05-22  有効期限: 2105-05-03  利用法: C
     信用: 究極        有効性: 究極
ssb  cv25519/2B6243601FA1DBDA
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: E
ssb  ed25519/7A430907759D9FF4
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: S
ssb  ed25519/82AA8224E47F7A68
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: A
[  究極  ] (1). asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

gpg> notation	←☆keyoxideの連携用URLを埋め込む。
注釈を入力: proof@ariadne.id=https://github.com/asakunotomohiro/2771F0FCF8FE74CD9B9C25439D4893D18D358530	←☆本来はgistURLを追記。
No notations on user ID "asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>"
Adding notation: proof@ariadne.id=https://github.com/asakunotomohiro/2771F0FCF8FE74CD9B9C25439D4893D18D358530

sec  ed25519/9D4893D18D358530
     作成: 2023-05-22  有効期限: 2105-05-03  利用法: C
     信用: 究極        有効性: 究極
ssb  cv25519/2B6243601FA1DBDA
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: E
ssb  ed25519/7A430907759D9FF4
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: S
ssb  ed25519/82AA8224E47F7A68
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: A
[  究極  ] (1). asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

gpg> save	←☆保存。
$ gpg --list-keys --with-sig-list --list-options show-notations 2771F0FCF8FE74CD9B9C25439D4893D18D358530	←☆登録後の状況確認。
pub   ed25519 2023-05-22 [C] [有効期限: 2105-05-03]
      2771F0FCF8FE74CD9B9C25439D4893D18D358530
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
sig 3    N   9D4893D18D358530 2023-05-24  [自己署名]
   署名注釈: proof@ariadne.id=https://github.com/asakunotomohiro/2771F0FCF8FE74CD9B9C25439D4893D18D358530	←☆追加された。
sig          4C20892B88F7F574 2023-05-22  [ユーザIDが見つかりません]
sig          635EC3A6D7233F2B 2023-05-22  [ユーザIDが見つかりません]
sig          E1AE542959117853 2023-05-22  [ユーザIDが見つかりません]
sub   cv25519 2023-05-22 [E] [有効期限: 2099-05-03]
sig          9D4893D18D358530 2023-05-22  [自己署名]
sub   ed25519 2023-05-22 [S] [有効期限: 2099-05-03]
sig          9D4893D18D358530 2023-05-22  [自己署名]
sub   ed25519 2023-05-22 [A] [有効期限: 2099-05-03]
sig          9D4893D18D358530 2023-05-22  [自己署名]

$ gpg -K --with-subkey-fingerprint asakuno.secure@pgp.asakuno.org
sec   ed25519 2023-05-22 [C] [有効期限: 2105-05-03]
      2771F0FCF8FE74CD9B9C25439D4893D18D358530
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-05-22 [E] [有効期限: 2099-05-03]
      728B0A778912932B9397341B2B6243601FA1DBDA
ssb   ed25519 2023-05-22 [S] [有効期限: 2099-05-03]
      60A7B0576F7404D51D59520C7A430907759D9FF4
ssb   ed25519 2023-05-22 [A] [有効期限: 2099-05-03]
      8013753761C78FA1A48230C682AA8224E47F7A68

$ gpg --send-keys 2771F0FCF8FE74CD9B9C25439D4893D18D358530
gpg: 鍵9D4893D18D358530をhkps://keys.openpgp.orgへ送信
$
```

1. 手順その5  
検索。  
<https://keyoxide.org/2771F0FCF8FE74CD9B9C25439D4893D18D358530>  
以下、その結果。
```text
---
asakunotomohiro@github.com
None of the matched service providers could be verified. Keyoxide was not able to determine which was the correct service provider or why the verification process failed.
```
失敗ですか・・・そうですか。  

1. 手順その6  
主鍵への登録内容を削除する。  
```terminal
$ gpg --list-keys --with-sig-list --list-options show-notations 2771F0FCF8FE74CD9B9C25439D4893D18D358530
pub   ed25519 2023-05-22 [C] [有効期限: 2105-05-03]
      2771F0FCF8FE74CD9B9C25439D4893D18D358530
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
sig 3    N   9D4893D18D358530 2023-05-24  [自己署名]
   署名注釈: proof@ariadne.id=https://github.com/asakunotomohiro/2771F0FCF8FE74CD9B9C25439D4893D18D358530	←☆これを消したい。
sig          4C20892B88F7F574 2023-05-22  [ユーザIDが見つかりません]
sig          635EC3A6D7233F2B 2023-05-22  [ユーザIDが見つかりません]
sig          E1AE542959117853 2023-05-22  [ユーザIDが見つかりません]
sub   cv25519 2023-05-22 [E] [有効期限: 2099-05-03]
sig          9D4893D18D358530 2023-05-22  [自己署名]
sub   ed25519 2023-05-22 [S] [有効期限: 2099-05-03]
sig          9D4893D18D358530 2023-05-22  [自己署名]
sub   ed25519 2023-05-22 [A] [有効期限: 2099-05-03]
sig          9D4893D18D358530 2023-05-22  [自己署名]

$ gpg --edit-key 2771F0FCF8FE74CD9B9C25439D4893D18D358530	←☆主鍵内容変更。
gpg (GnuPG) 2.4.1; Copyright (C) 2023 g10 Code GmbH
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

秘密鍵が利用できます。

sec  ed25519/9D4893D18D358530
     作成: 2023-05-22  有効期限: 2105-05-03  利用法: C
     信用: 究極        有効性: 究極
ssb  cv25519/2B6243601FA1DBDA
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: E
ssb  ed25519/7A430907759D9FF4
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: S
ssb  ed25519/82AA8224E47F7A68
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: A
[  究極  ] (1). asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

gpg> notation	←☆修正。
注釈を入力: -proof@ariadne.id=https://github.com/asakunotomohiro/2771F0FCF8FE74CD9B9C25439D4893D18D358530	←☆入力値の先頭にマイナス記号を付けることで削除できるようだ。
Current notations for user ID "asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>":
         proof@ariadne.id=https://github.com/asakunotomohiro/2771F0FCF8FE74CD9B9C25439D4893D18D358530
Removing notation: proof@ariadne.id=https://github.com/asakunotomohiro/2771F0FCF8FE74CD9B9C25439D4893D18D358530
進みますか? (y/N) y

sec  ed25519/9D4893D18D358530
     作成: 2023-05-22  有効期限: 2105-05-03  利用法: C
     信用: 究極        有効性: 究極
ssb  cv25519/2B6243601FA1DBDA
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: E
ssb  ed25519/7A430907759D9FF4
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: S
ssb  ed25519/82AA8224E47F7A68
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: A
[  究極  ] (1). asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

gpg> save	←☆作業を保存(忘れないこと)。
$ gpg --list-keys --with-sig-list --list-options show-notations 2771F0FCF8FE74CD9B9C25439D4893D18D358530
pub   ed25519 2023-05-22 [C] [有効期限: 2105-05-03]
      2771F0FCF8FE74CD9B9C25439D4893D18D358530
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
sig 3        9D4893D18D358530 2023-05-24  [自己署名]
sig          4C20892B88F7F574 2023-05-22  [ユーザIDが見つかりません]
sig          635EC3A6D7233F2B 2023-05-22  [ユーザIDが見つかりません]
sig          E1AE542959117853 2023-05-22  [ユーザIDが見つかりません]
sub   cv25519 2023-05-22 [E] [有効期限: 2099-05-03]
sig          9D4893D18D358530 2023-05-22  [自己署名]
sub   ed25519 2023-05-22 [S] [有効期限: 2099-05-03]
sig          9D4893D18D358530 2023-05-22  [自己署名]
sub   ed25519 2023-05-22 [A] [有効期限: 2099-05-03]
sig          9D4893D18D358530 2023-05-22  [自己署名]

$
```

<details><summary>注釈一括削除。</summary>

ちなみに、注釈の一括削除は**none**で行える。
```terminal
$ gpg --list-keys --with-sig-list --list-options show-notations 2771F0FCF8FE74CD9B9C25439D4893D18D358530	←☆状況確認。
pub   ed25519 2023-05-22 [C] [有効期限: 2105-05-03]
      2771F0FCF8FE74CD9B9C25439D4893D18D358530
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
sig 3    N   9D4893D18D358530 2023-05-26  [自己署名]
   署名注釈: proof@ariadne.id=https://gist.github.com/asakunotomohiro/114a342e6e08c909e3991860299ee379	←☆これらの注釈を削除。
   署名注釈: proof@ariadne.id=https://keybase.io/asakunotomohiro	←☆これらの注釈を削除。
sig          4C20892B88F7F574 2023-05-22  [ユーザIDが見つかりません]
sig          635EC3A6D7233F2B 2023-05-22  [ユーザIDが見つかりません]
sig          E1AE542959117853 2023-05-22  [ユーザIDが見つかりません]
sub   cv25519 2023-05-22 [E] [有効期限: 2099-05-03]
sig          9D4893D18D358530 2023-05-22  [自己署名]
sub   ed25519 2023-05-22 [S] [有効期限: 2099-05-03]
sig          9D4893D18D358530 2023-05-22  [自己署名]
sub   ed25519 2023-05-22 [A] [有効期限: 2099-05-03]
sig          9D4893D18D358530 2023-05-22  [自己署名]

$ gpg --edit-key 2771F0FCF8FE74CD9B9C25439D4893D18D358530	←☆編集コマンド。
gpg (GnuPG) 2.4.1; Copyright (C) 2023 g10 Code GmbH
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

秘密鍵が利用できます。

sec  ed25519/9D4893D18D358530
     作成: 2023-05-22  有効期限: 2105-05-03  利用法: C
     信用: 究極        有効性: 究極
ssb  cv25519/2B6243601FA1DBDA
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: E
ssb  ed25519/7A430907759D9FF4
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: S
ssb  ed25519/82AA8224E47F7A68
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: A
[  究極  ] (1). asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

gpg> none	←☆一括削除実施失敗。

無効なコマンド ("help"を参照)

gpg> notation	←☆注釈入力コマンド。
注釈を入力: none	←☆一括削除実施。
Current notations for user ID "asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>":
         proof@ariadne.id=https://gist.github.com/asakunotomohiro/114a342e6e08c909e3991860299ee379
         proof@ariadne.id=https://keybase.io/asakunotomohiro
Removing all notations
進みますか? (y/N) y	←☆実行。

sec  ed25519/9D4893D18D358530
     作成: 2023-05-22  有効期限: 2105-05-03  利用法: C
     信用: 究極        有効性: 究極
ssb  cv25519/2B6243601FA1DBDA
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: E
ssb  ed25519/7A430907759D9FF4
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: S
ssb  ed25519/82AA8224E47F7A68
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: A
[  究極  ] (1). asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

gpg> save	←☆保存。
$ gpg --list-keys --with-sig-list --list-options show-notations 2771F0FCF8FE74CD9B9C25439D4893D18D358530	←☆削除結果確認。
pub   ed25519 2023-05-22 [C] [有効期限: 2105-05-03]
      2771F0FCF8FE74CD9B9C25439D4893D18D358530
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
sig 3        9D4893D18D358530 2023-05-26  [自己署名]
sig          4C20892B88F7F574 2023-05-22  [ユーザIDが見つかりません]
sig          635EC3A6D7233F2B 2023-05-22  [ユーザIDが見つかりません]
sig          E1AE542959117853 2023-05-22  [ユーザIDが見つかりません]
sub   cv25519 2023-05-22 [E] [有効期限: 2099-05-03]
sig          9D4893D18D358530 2023-05-22  [自己署名]
sub   ed25519 2023-05-22 [S] [有効期限: 2099-05-03]
sig          9D4893D18D358530 2023-05-22  [自己署名]
sub   ed25519 2023-05-22 [A] [有効期限: 2099-05-03]
sig          9D4893D18D358530 2023-05-22  [自己署名]

$
```
2種類の注釈が消えている。

</details>

</details>

1. 手順その1  
GitHubのGistに登録。  
題名には**openpgp.md**を入力し、本文は下記の内容を貼り付ける。
```terminal
$ cat openpgp.md	←☆書き込んだ内容。
This is an OpenPGP proof that connects [my OpenPGP key](https://keyoxide.org/2771F0FCF8FE74CD9B9C25439D4893D18D358530) to [this Github account](https://github.com/asakunotomohiro). For details check out https://keyoxide.org/guides/openpgp-proofs

[Verifying my OpenPGP key: $argon2id$v=19$m=64,t=512,p=2$9TvPgs5Lp4xyWDYOb9fzUQ$yhMHBfFuDcnKKmsnK7aNuw]
$
```
作成時のボタン内容は**Create public gist**にしてからクリック。  
<https://gist.github.com/asakunotomohiro/114a342e6e08c909e3991860299ee379>  
紐付けファイルがGithubGistにできあがった。  

<details><summary>検証用URLのハッシュ化。</summary>

ちなみに、上記通り、検証URLをハッシュに置き換えて利用できる。  
<https://docs.keyoxide.org/understanding-keyoxide/identity-proof-formats/>  
にて、主鍵の鍵指紋を**Compute a hash**欄に入力する。  
入力値：`openpgp4fpr:2771f0fcf8fe74cd9b9c25439d4893d18d358530`  
そして、  
```text
(argon2)$argon2id$v=19$m=64,t=512,p=2$9TvPgs5Lp4xyWDYOb9fzUQ$yhMHBfFuDcnKKmsnK7aNuw
(bcrypt)$2a$11$7RtNeq3Jn2vwUBWMZ7dxSOfp2T0HYLD4xygxA.w7AErf1nKgMLcCW
```
の結果が得られる(例であり、実行するたびに値が変わる)。  
そして、上下どちらを使ってもかまわないが、最新版である**Argon2**を使うのがいいと思う(対応していればだが・・・？)。  

そもそもArgon2が何かを理解していない。  
<https://argon2.online>  
値を再現することもできず、、、どうなればいいのかわからない(このURL自体安全かどうか分からない。検索したら出てきただけ)。  

これを利用する利点は、GithubGistから公開鍵にたどり着けないことにある。  
公開鍵からGithubアカウントに辿れるが、その逆ができないため、メールアドレスがさらされずにアカウント同士を紐付けできることが利点・・・のようだ(知られずに紐付けようとする理由は何だろう)。  
今回堂々と掲示しているのだから私の環境では無意味だが・・・(隠せることを示したくて使った)。  
鍵指紋をハッシュ化などできなければ意味がないとも思っている。  

</details>

1. 手順その2  
主鍵への登録作業。
```terminal
$ gpg --list-keys --with-sig-list --list-options show-notations 2771F0FCF8FE74CD9B9C25439D4893D18D358530	←☆状況確認。
pub   ed25519 2023-05-22 [C] [有効期限: 2105-05-03]
      2771F0FCF8FE74CD9B9C25439D4893D18D358530
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
sig 3        9D4893D18D358530 2023-05-24  [自己署名]
sig          4C20892B88F7F574 2023-05-22  [ユーザIDが見つかりません]
sig          635EC3A6D7233F2B 2023-05-22  [ユーザIDが見つかりません]
sig          E1AE542959117853 2023-05-22  [ユーザIDが見つかりません]
sub   cv25519 2023-05-22 [E] [有効期限: 2099-05-03]
sig          9D4893D18D358530 2023-05-22  [自己署名]
sub   ed25519 2023-05-22 [S] [有効期限: 2099-05-03]
sig          9D4893D18D358530 2023-05-22  [自己署名]
sub   ed25519 2023-05-22 [A] [有効期限: 2099-05-03]
sig          9D4893D18D358530 2023-05-22  [自己署名]

$ gpg --edit-key 2771F0FCF8FE74CD9B9C25439D4893D18D358530	←☆主鍵の編集。
gpg (GnuPG) 2.4.1; Copyright (C) 2023 g10 Code GmbH
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

秘密鍵が利用できます。	←☆主鍵がある証拠。

sec  ed25519/9D4893D18D358530
     作成: 2023-05-22  有効期限: 2105-05-03  利用法: C
     信用: 究極        有効性: 究極
ssb  cv25519/2B6243601FA1DBDA
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: E
ssb  ed25519/7A430907759D9FF4
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: S
ssb  ed25519/82AA8224E47F7A68
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: A
[  究極  ] (1). asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

gpg> notation	←☆編集コマンド。
注釈を入力: proof@ariadne.id=https://gist.github.com/asakunotomohiro/114a342e6e08c909e3991860299ee379	←☆GistURLの追加。
No notations on user ID "asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>"
Adding notation: proof@ariadne.id=https://gist.github.com/asakunotomohiro/114a342e6e08c909e3991860299ee379

sec  ed25519/9D4893D18D358530
     作成: 2023-05-22  有効期限: 2105-05-03  利用法: C
     信用: 究極        有効性: 究極
ssb  cv25519/2B6243601FA1DBDA
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: E
ssb  ed25519/7A430907759D9FF4
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: S
ssb  ed25519/82AA8224E47F7A68
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: A
[  究極  ] (1). asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

gpg> save	←☆編集内容の保存。
$ gpg --list-keys --with-sig-list --list-options show-notations 2771F0FCF8FE74CD9B9C25439D4893D18D358530	←☆編集後の状況確認。
pub   ed25519 2023-05-22 [C] [有効期限: 2105-05-03]
      2771F0FCF8FE74CD9B9C25439D4893D18D358530
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
sig 3    N   9D4893D18D358530 2023-05-24  [自己署名]
   署名注釈: proof@ariadne.id=https://gist.github.com/asakunotomohiro/114a342e6e08c909e3991860299ee379	←☆追加。
sig          4C20892B88F7F574 2023-05-22  [ユーザIDが見つかりません]
sig          635EC3A6D7233F2B 2023-05-22  [ユーザIDが見つかりません]
sig          E1AE542959117853 2023-05-22  [ユーザIDが見つかりません]
sub   cv25519 2023-05-22 [E] [有効期限: 2099-05-03]
sig          9D4893D18D358530 2023-05-22  [自己署名]
sub   ed25519 2023-05-22 [S] [有効期限: 2099-05-03]
sig          9D4893D18D358530 2023-05-22  [自己署名]
sub   ed25519 2023-05-22 [A] [有効期限: 2099-05-03]
sig          9D4893D18D358530 2023-05-22  [自己署名]

$ gpg --delete-secret-key 2771F0FCF8FE74CD9B9C25439D4893D18D358530	←☆主鍵削除。
gpg (GnuPG) 2.4.1; Copyright (C) 2023 g10 Code GmbH
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.


sec  ed25519/9D4893D18D358530 2023-05-22 asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

この鍵を鍵リングから削除しますか? (y/N) y
これは秘密鍵です! 本当に削除しますか? (y/N) y
gpg: 秘密副鍵: の削除に失敗しました: 操作がキャンセルされました
gpg: 2771F0FCF8FE74CD9B9C25439D4893D18D358530: delete key failed: 操作がキャンセルされました
$ gpg --send-keys 2771F0FCF8FE74CD9B9C25439D4893D18D358530	←☆今回の編集内容をキーサーバに送信。
gpg: 鍵9D4893D18D358530をhkps://keys.openpgp.orgへ送信
$
```

1. 手順その3  
検索。  
<https://keyoxide.org/2771F0FCF8FE74CD9B9C25439D4893D18D358530>  
以下、その結果。
```text
github
asakunotomohiro

Profile link: https://github.com/asakunotomohiro
Proof link: https://gist.github.com/asakunotomohiro/114a342e6e08c909e3991860299ee379

Claim verification has completed.

The claim HAS BEEN verified by the proof.
```
ファイル名(GithubGistに付ける題名)も大事だというのが分かった。  

</details>

<a id="operatingsystemnetwork_pgppeggingcontrol_keyoxide_keybase"></a>
<details><summary>keybaseへの登録作業。</summary>

<https://keybase.io/asakunotomohiro>  
<https://docs.keyoxide.org/service-providers/keybase/>  

> Uploading your OpenPGP private key to Keybase is NOT recommended and may pose serious security risks! Consider only uploading your OpenPGP public key.  

どういう意味？  
~~オプションを付けなければ問題ない挙動だよね~~。  


1. 手順その1  
```terminal
$ gpg -K --with-subkey-fingerprint asakuno.secure@pgp.asakuno.org	←☆編集前の状況確認(コマンド間違えた)。
sec   ed25519 2023-05-22 [C] [有効期限: 2105-05-03]
      2771F0FCF8FE74CD9B9C25439D4893D18D358530
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-05-22 [E] [有効期限: 2099-05-03]
      728B0A778912932B9397341B2B6243601FA1DBDA
ssb   ed25519 2023-05-22 [S] [有効期限: 2099-05-03]
      60A7B0576F7404D51D59520C7A430907759D9FF4
ssb   ed25519 2023-05-22 [A] [有効期限: 2099-05-03]
      8013753761C78FA1A48230C682AA8224E47F7A68

$ gpg --edit-key 2771F0FCF8FE74CD9B9C25439D4893D18D358530	←☆注釈を記入するための鍵編集コマンド。
gpg (GnuPG) 2.4.1; Copyright (C) 2023 g10 Code GmbH
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

秘密鍵が利用できます。

sec  ed25519/9D4893D18D358530
     作成: 2023-05-22  有効期限: 2105-05-03  利用法: C
     信用: 究極        有効性: 究極
ssb  cv25519/2B6243601FA1DBDA
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: E
ssb  ed25519/7A430907759D9FF4
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: S
ssb  ed25519/82AA8224E47F7A68
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: A
[  究極  ] (1). asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

gpg> notation
注釈を入力: proof@ariadne.id=https://keybase.io/asakunotomohiro	←☆追加。
Current notations for user ID "asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>":
         proof@ariadne.id=https://gist.github.com/asakunotomohiro/114a342e6e08c909e3991860299ee379	←☆Github紐付け作業で追加済み。
Adding notation: proof@ariadne.id=https://keybase.io/asakunotomohiro	←☆今回追加する内容。

sec  ed25519/9D4893D18D358530
     作成: 2023-05-22  有効期限: 2105-05-03  利用法: C
     信用: 究極        有効性: 究極
ssb  cv25519/2B6243601FA1DBDA
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: E
ssb  ed25519/7A430907759D9FF4
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: S
ssb  ed25519/82AA8224E47F7A68
     作成: 2023-05-22  有効期限: 2099-05-03  利用法: A
[  究極  ] (1). asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

gpg> save	←☆保存(大事というか必須)。
$ gpg --list-keys --with-sig-list --list-options show-notations 2771F0FCF8FE74CD9B9C25439D4893D18D358530	←☆追加後の状況確認。
pub   ed25519 2023-05-22 [C] [有効期限: 2105-05-03]
      2771F0FCF8FE74CD9B9C25439D4893D18D358530
uid           [  究極  ] asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>
sig 3    N   9D4893D18D358530 2023-05-26  [自己署名]
   署名注釈: proof@ariadne.id=https://gist.github.com/asakunotomohiro/114a342e6e08c909e3991860299ee379
   署名注釈: proof@ariadne.id=https://keybase.io/asakunotomohiro	←☆これを追加。
sig          4C20892B88F7F574 2023-05-22  [ユーザIDが見つかりません]
sig          635EC3A6D7233F2B 2023-05-22  [ユーザIDが見つかりません]
sig          E1AE542959117853 2023-05-22  [ユーザIDが見つかりません]
sub   cv25519 2023-05-22 [E] [有効期限: 2099-05-03]
sig          9D4893D18D358530 2023-05-22  [自己署名]
sub   ed25519 2023-05-22 [S] [有効期限: 2099-05-03]
sig          9D4893D18D358530 2023-05-22  [自己署名]
sub   ed25519 2023-05-22 [A] [有効期限: 2099-05-03]
sig          9D4893D18D358530 2023-05-22  [自己署名]

$ gpg --delete-secret-key 2771F0FCF8FE74CD9B9C25439D4893D18D358530	←☆主鍵の削除。
gpg (GnuPG) 2.4.1; Copyright (C) 2023 g10 Code GmbH
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.


sec  ed25519/9D4893D18D358530 2023-05-22 asakunotomohiro (securemail@セキュアメール) <asakuno.secure@pgp.asakuno.org>

この鍵を鍵リングから削除しますか? (y/N) y
これは秘密鍵です! 本当に削除しますか? (y/N) y
gpg: 秘密副鍵: の削除に失敗しました: 操作がキャンセルされました
gpg: 2771F0FCF8FE74CD9B9C25439D4893D18D358530: delete key failed: 操作がキャンセルされました
$ gpg --keyserver hkps://keys.openpgp.org --send-keys 2771F0FCF8FE74CD9B9C25439D4893D18D358530	←☆公開鍵をサーバに送信。
gpg: 鍵9D4893D18D358530をhkps://keys.openpgp.orgへ送信
$
```
キーベース側での設定は不要。  

以下の説明はどこに対して作業すればいいのだろう。
> …to a signature profile:  
> Follow the instructions provided here. The claim should look like:  
> proof=https://keybase.io/USERNAME

1. 手順その2  
検索。
<https://keyoxide.org/2771F0FCF8FE74CD9B9C25439D4893D18D358530>  
以下、その結果。
```text
keybase
asakunotomohiro

Profile link: https://keybase.io/asakunotomohiro
Proof link: https://keybase.io/_/api/1.0/user/lookup.json?username=asakunotomohiro

Claim verification has completed.

The claim HAS BEEN verified by the proof.

A proxy was used to fetch the proof: proxy.keyoxide.org
```

</details>


<a id="operatingsystemnetwork_yubico"></a>
### FIDOセキュリティキー
調べてわかったのだが、ユビキーというのは、Yubicoという会社の登録商標だった。  
そのため、通常は、セキュリティキーと表現するのが適切になる(さらに正確に言えば、FIDOセキュリティキーとのこと)。  

[YubiKey 5にサイドチャネル攻撃でセキュリティが破られる脆弱性が見つかる、バージョン5.7より前のYubiKeyは永久に危険との勧告](https://gigazine.net/news/20240904-yubikeys-vulnerable-cloning-attacks-side-channel/)  
[YubiKey製品の暗号化ライブラリ脆弱性の発見に関するご案内（第一報）](https://securitykey.scsk.jp/yubikey/1644/)  
[JVNDB-2024-007966 複数の Yubico 製品における観測可能な不一致に関する脆弱性](https://jvndb.jvn.jp/ja/contents/2024/JVNDB-2024-007966.html)  
[YubiKey 暗号欠陥の脆弱性により攻撃者が秘密鍵を抽出してデバイスを複製できる](https://rocket-boys.co.jp/security-measures-lab/yubikey-encryption-flaw-secret-key-extraction/)  


* FIDOセキュリティキーの利用方法  
  * [環境構築](#operatingsystemnetwork_yubico_cliykman)  
  * [PINコード](#operatingsystemnetwork_yubico_pincode)  
  * [BIOコード](#operatingsystemnetwork_yubico_biofido)  

<a id="operatingsystemnetwork_yubico_cliykman"></a>
### 環境構築(ykman)
私はmacOSを使っているため、GUIからBIOユビキーに指紋登録ができない。  
そのため、コマンドライン操作が必須になる(GUIはWindowsOS必須のようだ)。  

<details><summary>環境インストール(Homebrew版)。</summary>
https://formulae.brew.sh/formula/ykman  

```terminal
$ ykman info
zsh: command not found: ykman
$ brew install ykman	←☆インストール実施。
==> Auto-updating Homebrew...
Adjust how often this is run with HOMEBREW_AUTO_UPDATE_SECS or disable with
HOMEBREW_NO_AUTO_UPDATE. Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
　　　・
　　　・
　　　・
==> Running `brew cleanup ykman`...
Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
==> Caveats
zsh completions have been installed to:
  /opt/homebrew/share/zsh/site-functions
$ ykman --version
YubiKey Manager (ykman) version: 5.7.2
$
```
BIO対応するには、最低でもバージョン4.*が必須(mac版は1.*のみ)。  

</details>

以下、登録済みの確認方法。
```terminal
$ ykman list	←☆端末情報。
YubiKey 5Ci (5.8.9) [OTP+FIDO+CCID] Serial: 21027354
$ ykman fido credentials list	←☆登録済みのFIDO2情報。
Enter your PIN:	←☆PINコード入力。
Credential ID  RP ID       Username         Display name
6d162734...    google.com  asakunotomohiro  asakunotomohiro
a5465a6d...    github.com  asakunotomohiro  asakunotomohiro
$
```

登録済みのFIDO2削除コマンド：`ykman fido credentials delete <credential-id>`  
端末に登録しているPINの変更コマンド：`ykman fido access change-pin`  
登録済みのFIDO2リセットコマンド：`ykman fido reset`  

以下、詳細な端末情報確認方法(表示例)。
```terminal
$ ykman info
Device type: YubiKey 5Ci	←☆この端末では指紋登録できない。
Serial number: 21027354
Firmware version: 5.8.9
Form factor: Keychain (USB-C, Lightning)
Enabled USB interfaces: OTP, FIDO, CCID

Applications
Yubico OTP  	Disabled
FIDO U2F    	Disabled
FIDO2       	Disabled
OATH        	Disabled
PIV         	Enabled	←☆有効(他無効)。
OpenPGP     	Disabled
YubiHSM Auth	Disabled
$
```
ちなみに、登録済みの"**RP ID**"一括削除はない(あるのは端末リセットのみであるため、本当にまるごと消える)。  


<a id="operatingsystemnetwork_yubico_pincode"></a>
#### PINコード
GUIで登録できる。  
Webサービスで、FIDOセキュリティキーを使うときに、Pinコード入力を促されるため、そのときに入力すればいい。  


<a id="operatingsystemnetwork_yubico_biofido"></a>
#### BIOコード
指紋認証コマンド：[ykman fido fingerprints [OPTIONS] COMMAND [ARGS]...](https://docs.yubico.com/software/yubikey/tools/ykman/FIDO_Commands.html#id17)  
* 対象製品  
  * [YubiKey C Bio - FIDO Edition](https://www.yubico.com/jp/product/yubikey-bio-series/yubikey-c-bio/)  
  * [日本代理店](https://ykey.yubion.com/collections/yubikey-bio-security-key/products/yubikey-c-bio)  

以下、指紋登録作業。
```terminal
$ ykman fido fingerprints list	←☆登録一覧コマンド(何も登録されていない)。
Enter your PIN:
$ ykman fido fingerprints add "左足指"	←☆登録作業(通常日本語入力はできないようだ)。
Enter your PIN:
Place your finger against the sensor now...
4 more scans needed.
Place your finger against the sensor now...
3 more scans needed.
Place your finger against the sensor now...
2 more scans needed.
Place your finger against the sensor now...
Capture failed. Re-center your finger, and try again.	←☆認識しなければ再登録が必要なようだ。
Place your finger against the sensor now...
1 more scans needed.
Place your finger against the sensor now...
Capture complete.
$ ykman fido fingerprints list	←☆1件登録されている。
Enter your PIN:
ID: 1e2a (右足指)
$
```


<a id="operatingsystemnetwork_mail"></a>
### メール
普段のメールの使い方について。  
※ここに記載するのは正しいのか？  

* メールの利用方法  
  * [利用サービス](#operatingsystemnetwork_mail_SendAndReceiveInService)  
  * [Webブラウザからの送受信](#operatingsystemnetwork_mail_SendAndReceiveInBrowser)  
  * [メールクライアントからの送受信](#operatingsystemnetwork_mail_SendAndReceiveOnClient)  

<a id="operatingsystemnetwork_mail_SendAndReceiveInService"></a>
#### メールサービス
利用サービスについての感想を一言つぶやく。  
使用期間というか、利用断念したサービスにも言及している。  

* メールサービス一覧  
  * [posteo](#operatingsystemnetwork_mail_serviceposteo)  
  * [lycos](#operatingsystemnetwork_mail_servicelycos)  
  * [mailbox](#operatingsystemnetwork_mail_servicemailbox)  
  * [startmail](#operatingsystemnetwork_mail_servicestartmail)  
  * [runbox](#operatingsystemnetwork_mail_servicerunbox)  


<a id="operatingsystemnetwork_mail_serviceposteo"></a>
##### posteo
<https://posteo.de/>  
月々1ユーロの支払いで安いのだが、2GBの容量しかないため、50MBの添付ファイルをやりとりする場合、数十通で限界になってしまう。  
実際にはそこまで複数のやりとりは発生しないだろうが、、、10年間のメール送受信だけでは1GBも合計で使っていないため、1通や2通ぐらいの50MB添付ファイルはたかがしれているのは目に見えている。  
そんなことより、1番の難関は英語ですべてを理解する必要があること・・・辛いため、常用できないだろう。  
メールソフトを使うことができるため、英語に苦戦するのは最初だけで、あとは使い慣れた環境で利用できるのは利点だろうか。  


<a id="operatingsystemnetwork_mail_servicelycos"></a>
##### lycos
<https://mail.lycos.com>  
よくわからないが、やめた方がいい。  
ログイン時に2段階認証を設定できず、細かい設定がないため、無料メールサービスを利用しているのと変わらない。  
昔は日本法人を持っていたとかいないとか・・・。  
5GBの容量がある。  

さらにセキュリティ的に大問題になる仕組みとして、サービス終了後にメールアカウントが保持されず、一般開放されるところ。  
そのため、第3者が取得可能になり、どう考えても乗っ取りというかなりすましになる。  
メールサービス側としては何も違法なことはしていないが、利用者が分からしたらかなりの危険度をはらんでいる。  


<a id="operatingsystemnetwork_mail_servicemailbox"></a>
##### mailbox
<https://mailbox.org/>  
日本語がないため、結構辛いように思う。  
何より、[startmail](#operatingsystemnetwork_mail_servicestartmail)と同じように、支払いができない場合、アカウントがまるごと削除されるようだ。  
どれほどの容量が使えるのか説明がない(見つけられないだけ？)。  
他のに比べてありかもしれない。  


<a id="operatingsystemnetwork_mail_servicestartmail"></a>
##### startmail
<https://www.startmail.com>  
支払いが止まった場合、アカウント内容ではなく、アカウントごと消される(復活できない)。  
そのため、安全に使うにはいいかもしれないが、支払い能力がギリギリの場合は、怖くて使えないサービスだろう。  
通常価格は、年間$59.95ドルであるため、9千円程度で、1万円も行かないと思うが、月間にしたら600円ほどかな。  
ちょっと高いため、メール中心の生活でもないため、選ばない。  

20GBの容量があるため、1度利用を始めた場合、でかい添付ファイルを頻繁にやりとりしなければ、一生もつだろう。  
私は、10年以上前に作成したGoogleアカウントに、15GBのうち1%も使っていない状況になっており、手に余る容量に悩んでいたりするほどだ。  


<a id="operatingsystemnetwork_mail_servicerunbox"></a>
##### runbox
<https://runbox.com>  
説明が多く理解できない。  
年間20ドルほど。  
高額ではない(月額200円もいかない)。  
安全面もあると思う。  


<a id="operatingsystemnetwork_mail_SendAndReceiveInBrowser"></a>
#### Webブラウザからの送受信
普段[Firefox](https://www.mozilla.org/ja/firefox/)ブラウザを使っている。  
※個人を特定されにくくするために、ユーザーエージェントを[変更](https://support.mozilla.org/en-US/kb/how-reset-default-user-agent-firefox)する必要がある。  
変更方法の詳細：<https://www.howtogeek.com/113439/how-to-change-your-browsers-user-agent-without-installing-any-extensions/>  
[Google to phase out user-agent strings in Chrome](https://www.zdnet.com/article/google-to-phase-out-user-agent-strings-in-chrome/)により、Chromeブラウザではわざわざ書き換る必要がなくなったようだが、そもそも別の方法でGoogleから個人情報を収集されていては意味がないため、Chromeブラウザを使う理由にはならないな。  

とりあえず、ユーザーエージェントの変更は分からないながらに、下記のアドオンで対応可能だと思う。  

* [Firefoxブラウザ](https://www.mozilla.org/en-US/firefox/all/#product-desktop-release)への有効[アドオン](https://addons.mozilla.org/ja/firefox/)  
  * [Canvas Defender](https://addons.mozilla.org/ja/firefox/addon/no-canvas-fingerprinting/)  
    トラッキング防止のため(Fingerprint向け)。  
    ※今までのCookie利用とは違い、JavaScriptを用いてCanvasからの生成画像による追跡になるため、それを偽物にすることで対策になるんだそうだ(そのため、定期的な作り直しが必須)。  
  * [Random User-Agent (Switcher)](https://addons.mozilla.org/ja/firefox/addon/random_user_agent/)  
    ブラウザの名前・バージョン。オペレーティングシステムの名前(Mac・Windows・Linuxなど)・バージョン。ブラウザに導入済みプラグインなどの偽物を送信する。  
    ※~~今確認したら動いていない(集計方法によっては対応しきれないようだ)~~ 以下のモードを逆で認識していたのが原因。  
    * ブラックリストモード：定義されたドメインとルールを除いた場所で有効になる。  
    * ホワイトリストモード：定義されたドメインとルールを除いた場所で無効になる。  
    * 利用例）[epicgames](https://www.epicgames.com)上で動かした場合、ログインができなくなる(偽物であることがばれた例だろう)。  
  * [uMatrix](https://addons.mozilla.org/ja/firefox/addon/umatrix/)  
    JavaScriptの無効化。  
  * [Mailvelope](https://addons.mozilla.org/ja/firefox/addon/mailvelope/)  
    ブラウザ上でPGPを利用する。  
    代替：[FlowCrypt](https://flowcrypt.com)？  
  * [Web Threat Shield](https://addons.mozilla.org/ja/firefox/addon/web-threat-shield/)  
    ライセンスを持っていないのに、なぜか入れっぱなし(これは何？)。  

* Firefoxブラウザへの無効アドオン  
  昔使っていたが、今は無効化している一覧(使わなくなった理由は忘れた)。  
  * [Disconnect](https://addons.mozilla.org/ja/firefox/addon/disconnect/)  
    トラッキング防止アドオン(有効でもよさそうだが、未使用にした理由を忘れた)。  
  * [User-Agent Switcher and Manager](https://addons.mozilla.org/ja/firefox/addon/user-agent-string-switcher/)  
    ユーザーエージェント変更(現在不要)。  
  * [NoScript Security Suite](https://addons.mozilla.org/ja/firefox/addon/noscript/)  
    JavaScriptなどをブロックする(ホワイトリスト方式で許可する)。  
  * [Saka Key](https://addons.mozilla.org/ja/firefox/addon/saka-key/)  
    viキーバインドのような挙動を得られるようだ。  
  * [Tridactyl](https://addons.mozilla.org/ja/firefox/addon/tridactyl-vim/)  
    viキーバインドのような挙動を得られるようだ。  
  * [VVimpulation](https://addons.mozilla.org/ja/firefox/addon/vvimpulation/)  
    viキーバインドのような挙動を得られるようだ。  

* Firefoxブラウザへの導入見送りアドオン  
  * [Keyboard Control for Firefox](https://addons.mozilla.org/ja/firefox/addon/keyboard-control-for-firefox/)  
    よく分からないが、古いようだ。  
  * [DownThemAll!](https://addons.mozilla.org/ja/firefox/addon/downthemall/)  
    複数の画像を一括ダウンロード(一応利用するかもということで保存しているだけだった)。  

[2023年4月においてクリックジャッキング未対策のサイトはどの条件で被害を受けるか](https://blog.tokumaru.org/2023/04/clickjacking-condition.html)  
> FirefoxのTCPを無効化するためには、設定|プライバシーとセキュリティから、強化型トラッキング防止機能から、カスタムを選択して、Cookieのチェックを外すか、その右のセレクトボックスで「クロスサイトトラッキングCookie（一番上）」を選択します。

Cookieを受け入れる設定をした場合、被害に遭うため、ブロックしなければならない。  
<https://support.yahoo-net.jp/SccYjcommon/s/article/H000012099>  
公式Yahooページには、犯罪幇助方法が説明されているってことね。  
**iPhone向けSafariで「サイト越えトラッキングを防ぐ」機能をオフにする**

> iOS 11以降では、「サイト越えトラッキングを防ぐ」がオン（有効）になっている場合があります。
> 「サイト越えトラッキングを防ぐ」がオンになっている場合、Cookie（クッキー）がSafari上に残らなくなります。
> Yahoo! JAPANでは、複数のサービスでCookieを使用しているため、「サイト越えトラッキングを防ぐ」をオンにしていると、サービス内の機能が限定されるなど、一部のサービスを利用できません。
> 以下の手順を参考に、「サイト越えトラッキングを防ぐ」機能をオフにしてからYahoo! JAPANのサービスをご利用ください。

上記一部の説明をそのまま貼り付けた。  


<a id="operatingsystemnetwork_mail_SendAndReceiveOnClient"></a>
#### メールクライアントからの送受信
[Thunderbird](https://www.thunderbird.net/ja/)ソフトウェアを利用することにした。  
残念ながら最近利用を始めたため、全く知らないことばかりだ。  
学生時代は、[秀丸メール](https://hide.maruo.co.jp/software/tk.html)を使っていた(名前から分かるとおり、[秀丸エディタ](https://hide.maruo.co.jp/software/hidemaru.html)を作っている会社のメールソフト)。  
社会人になってからは、もっぱらWeb上でメールを送受信していた(いつでもどこでもが魅力だった)。  
学生時代や社会人になってから使っていた時期もちょっとはあったが、Web上からで満足してしまった。  
代替は[SecureMyEmail](https://www.securemyemail.com/)？  
代替は[SeaMonkey](https://www.seamonkey-project.org)？  

※受信したメールが文字化けしている場合、「Thunderbirdメニュー---\>表示---\>**テキストエンコーディングを修復**」にて、修復してくれる可能性がある。  
しかし、なぜか手動ではなく自動であるため、本当に解消できるか不明。  

* 設定(以下以外はデフォルト)  
  よく考えたら本体をインストール後に数ヶ月経過しているため、設定を変更しているかどうか確認できない(変更したかどうかも完全に忘れている)。  
  * 一般  
    * 言語の外観  
      フォントとカラー：今のところ変更無し。  
    * 既読と表示  
      アドレス帳に登録されている人でもメールアドレス部分を表示する(要は、チェックを外す)。  
    * ネットワークとディスク領域  
      * ディスク領域  
        メール送信時に端末情報を載せたくない。  
        そのため、ユーザーエージェント情報を[削除](https://support.mozilla.org/en-US/questions/1375574)する方法がある。  
        画面右下の**設定エディタ...** から設定画面を開く。  
        [設定](https://support.mozilla.org/en-US/kb/config-editor)から**general.useragent.override**にて、変更したいエージェント名を入力すればいいようだ。  
        設定値：**Thunderbird/2023.04.09**(今後これを使う)  
        ※削除や変更した場合、迷惑メールや受信不良だけにとどまらず、そもそもサーバ側で受信拒否される可能性があるようだ。  
        * 現在の正式な情報確認は、以下2種類にて可能(OS・ブラウザやそれらのバージョン情報)。  
          例）`User-Agent:Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Thunderbird/102.2.0`  
          Webブラウザから送信した場合は、この情報が付かない。  
          * <https://whatmyuseragent.com>  
          * <https://browserspy.dk/browser.php>  
          * <http://mysys-check.com>(https**ではない**)  
      * 索引データベース  
        * 設定エディタ...  
          * **mailnews.wraplength**で検索---\>**0**に変更する(メール作成の自動改行を無効化する)。  
          * **mail.openpgp.allow_external_gnupg**で検索---\>**true**に変更する(OpenPGP鍵を設定できる)。  
            鍵の追加に「**GnuPG経由で外部の鍵を利用(例:〜〜〜)**」を選び、鍵IDを登録する。  
            鍵IDをGPGKeychainの鍵詳細画面から確認した場合、短いのだが・・・いいのか？  
            登録後「**〜〜〜に関連付けられた個人OpenPGP鍵がThunderbird内に1個見つかりました**」と変わる。  
            メール作成画面から「**暗号化**」のボタンが有効化されているため、それを選ぶことで、暗号化ができる。  
  * 編集  
    * スペルチェック  
      ※スペルチェックに必要な辞書を追加し、[日本語(japanese\_ja\_language\_pack-102.3.3buildid20221010.194951-tb.xpi)](https://addons.thunderbird.net/ja/thunderbird/addon/tb-langpack-ja/)の言語パックを導入する。  
      ※拡張機能のネジ絵から「ファイルからアドオンをインストール...」を選び、インストールする必要がある(なぜ、わざわざこのやり方？)。  
      導入方法：[Thunderbirdで辞書に他言語を追加して使用する方法](https://support.mozilla.org/ja/kb/how-install-and-use-another-language-dictionary-th)使えないのだが？  
      導入したが、していないことになるようで、全く認識してくれない。  
    * 送信テキスト形式  
      プレーンテキストのみ(装飾不要だと思っているため、これは絶対の設定)。  
  * プライバシーとセキュリティ  
    * メールコンテンツ  
      * 「[**プライバシー保護のため、このメッセージ内のリモートコンテンツをブロックしました**](https://support.mozilla.org/ja/kb/remote-content-in-messages)」のメッセージが非常に邪魔くさい。  
        そのため、メッセージ本文を右記の通り変更：メニュー---\>**表示**---\>**メッセージの表示形式**---\>**シンプルHTML**もしくは、**プレーンテキスト**  
    * ウェブコンテンツ  
      * サイトから送られてきたCookieを保存する。  
        * サードパーティCookieの保存：~~常に拒否~~  
        * サードパーティCookieの保存：**訪問したサイトのみ許可**(下記の**OAuth2**を使うために必要な設定)  
          また、Googleの場合は、<https://accounts.google.com>を許可にしておく(設定せずとも自動許可されるはず)。  
        * Cookieを保存する期間：**Thunderbirdを終了するまで**  
      * ウェブサイトに"Do Not Track"信号を送らない(チェックボックスにチェックを入れない)。  
        セキュリティ対策としてチェックを入れないためであり、追跡されることを許容するためではない。  
        閲覧トラフィックにリクエストが含まれ、かつそれをどうするかはウェブサイトが決めることであり、通常そのリクエスト通りの挙動をするわけではなく、閲覧データを収集および利用すると考えるのが常識としてまかり通っているため。  
    * パスワード  
      * マスターパスワードを利用する。  
    * 迷惑メール  
      すべてのチェックを外す(サーバ側ではじいているはずなので、手元にこないと思っている)。  
    * セキュリティ  
      * 詐欺メール  
        表示中のメッセージに詐欺メールの疑いがあるときに知らせる。  
        迷惑メールと同じでこないとは思っているが、万が一があるため、チェックを入れる。  
      * ウィルス対策  
        一時ファイルとして保存する(本当に対策になっているのか不明)。  
  * チャット  
    **[IRC](https://libera.chat)**・**[Matrix](https://matrix.to/#/@asakunotomohiro:matrix.org)**・**[Odnoklassniki](https://ok.ru/asakunotomohiro)**・**[XMPP](https://xmpp.org)** の4種類が使えるようだ。  
    自分でサーバを立ち上げるサービスのようだ？  


<details><summary>リベラチャットアカウント作成作業記録。</summary>

※今回のログは作成手順として残しているのであり、他の人とのチャット内容を公にした場合は、規約違反か何かでアカウント凍結される可能性があるため、外部に持ち出さないこと(今回の記録も消すかも？)。  
基本は、[登録手順書](https://libera.chat/guides/registration)通りにすれば終わるだけだが・・・。  
ちなみに、ゲストログイン後、30秒後に作成すること。  

まずは、チャット画面に入る。  
通常利用(アカウント作成用)：<https://web.libera.chat>  
実験チャット場所：<https://web.libera.chat/gamja/>  

1. 上記のURLからチャット画面に入る。  
チャット入力画面：`/nick YourNick`	←☆驚くことに、このまま打ち込む。  
チャット出力画面：  
```text
22:06:44 asakunotomohiro is now known as YourNick
22:06:44 -NickServ- This nickname is registered. Please choose a different nickname, or identify via /msg NickServ IDENTIFY YourNick <password>
```

1. ユーザ登録実施。  
チャット入力画面：`/msg NickServ REGISTER password asakuno.secure@pgp.asakuno.org`  
登録画面直後の出力メッセージ。
```text
22:07:47 -NickServ- YourNick is already registered.
```

メッセージ出力：
```text
[22:26:04] <asakunotomohiro> REGISTER password asakuno.secure@pgp.asakuno.org
[22:26:05] [NOTICE] asakunotomohiro is now registered to asakuno.secure@pgp.asakuno.org.
[22:26:05] [NOTICE] If you do not complete registration within one day, your nickname will expire.
[22:26:05] [NOTICE] Please check the address if you don't receive it. If it is incorrect, DROP then REGISTER again.
[22:26:05] [NOTICE] An email containing nickname activation instructions has been sent to asakuno.secure@pgp.asakuno.org.
```
このメッセージ出力後に、本当にメールが送られてくる。  
そのメールに認証コマンドが記載されているため、それを打ち込む必要がある。  
有効期間は1日。  

1. 認証コマンド実施。  
チャット入力画面：`/msg NickServ VERIFY REGISTER asakunotomohiro [認証文字列]`  
メッセージ出力：  
```text
[22:28:28] <asakunotomohiro> VERIFY REGISTER asakunotomohiro [認証文字列]
[22:28:28] [NOTICE] Thank you for verifying your e-mail address! You have taken steps in ensuring that your registrations are not exploited.
[22:28:28] [NOTICE] asakunotomohiro has now been verified.
```
まだ作業は残っている。  

1. セキュリティ対策実施。  
チャット入力画面：`/msg nickserv set enforce on`  
メッセージ出力：  
```text
[22:29:54] <asakunotomohiro> set enforce on
[22:29:54] [NOTICE] The ENFORCE flag has been set for account asakunotomohiro.
```

よくわからないが、これをすることで、強固なセキュリティ対策になるのだろう。  

1. **#libera-cloak**というチャンネルにて、アカウント名を確定させる。  
チャット入力画面：`!cloakme`  
メッセージ出力：  
```text
[22:32:36] → asakunotomohiro has joined
[22:32:36] [NOTICE] [#libera-cloak] Want a cloak? Type "!cloakme" without quotes. No lurking in this channel.
[22:33:32] <asakunotomohiro> !cloakme
[22:33:32] × cloaks kicked you from #libera-cloak (You've been cloaked)
[22:33:32] [NOTICE] Your new cloak is user/asakunotomohiro. This will be displayed in place of your hostname whenever you identify with NickServ.
```
これで快適にチャット生活ができる。  

ゲストユーザのユーザ情報は、`~asakunotomohiro@192.168.0.1`のように、他者に自分の居場所が判明した状態になる(だから何だって話だが)。  
今回、アカウントを作成したことにより、`~asakunoto@user/asakunotomohiro`となった。  
アットマーク記号前の文字列に不快感が・・・(文字数制限だろうが、事前説明が欲しかった)。  
これであれば、名字だけにすればよかった(もしかしたら説明があったかもしれないが、すべて英語だからな・・・)。  

</details>

* アカウントごとの受信(IMAP/POP)サーバ設定。  
  基本は[POP接続](https://support.google.com/mail/answer/7104828)により、サーバ上にメールを残さないようにすること(セキュリティ対策として)。  
  * サーバ設定  
    このあたりはサーバから与えられた値を使うしかないと思う。  
    * セキュリティ設定  
      * 接続の保護：**STARTTLS**は接続保護なし状態を保護してくれる形式。  
        しかし、できる限り**SSL/TLS接続**できる方法を探すこと(本来SSLの後継である**TLS**を使うべき)。  
      * 認証方式：~~私の利用サーバに問題があるのか分からないが、**通常のパスワード認証**のみになる~~。古い  
      * 認証方式：[OAuth2](https://support.mozilla.org/ja/kb/automatic-conversion-google-mail-accounts-oauth20)	←☆Googleのメール(Gmail)のみ？	他に対応サーバはある？	←☆有効化した場合、クッキーを受け入れる必要がある。  
    * サーバ設定  
      * 以下、チェックを付ける(それ以外は外す)。  
        * 新着メッセージがないか起動時に確認する。  
        * 新着メッセージがないか**1440**分ごとに確認する(要は**24時間**ごと)。  
        * 新着メッセージを自動的にダウンロードする。  
    * メッセージの保存  
  * 送信控えと特別なフォルダ  
    * 送信控え  
      送信したら送信トレイに入れたいのだが、それはそれでな・・・。  
      * メッセージ送信時に自動的に**次のアカウントの"送信済みトレイ**フォルダにコピーを作成する。  
      * **Cc**・**Bcc**にチェックを入れる(空欄でかまわず、いざというときに入力しやすくするため)。  
    * メッセージの保管  
      * アーカイブの保存先をローカル端末のアーカイブディレクトリとする。  
    * 下書きとテンプレート  
      * それぞれの保存先をローカル端末のそれぞれのディレクトリとする。  
  * 編集とアドレス入力  
    * 編集  
      当たり前だが、HTML形式で編集しない。  
      返信時には元のメッセージを自動引用する(**引用部の上**)。  
      返信や転送時に書名は不要だろう。  
    * アドレス入力  
      どういう意味？  
  * 迷惑メール  
    以下、どちらもチェックボックスはどれも空にする(アカウントによる)。  
    無条件でメールを受信する場合はチェックを入れるが、サーバ側ではじく場合は空にする。  
    * 選別  
    * 移動先の保存期間  
  * 同期とディスク領域  
    * メッセージの同期  
      ローカル変更がサーバ側にも影響するため、気をつけること(チェックを入れているため)。  
      基本はチェックを入れるが、アカウントによる。  
      また、POP受信の場合は項目自体がない？(そうとも言えない)  
    * ディスク領域  
      メッセージを自動削除しない。  
  * エンドツーエンド暗号化  
    * OpenPGP  
      ここで個人鍵(秘密鍵・プライベート鍵・鍵ペア)を設定する。  
      当たり前だが、設定時にはパスフレーズが必須となる。  
      また、ここで主鍵の存在を確認できる(すでに[削除済み](#operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_maindelete)なので **!** 記号が付いている)。  
    * S/MIME  
      これは何？  
      もしかして、金かかる？  
    * メッセージ送信のデフォルト設定  
      なぜにグレーアウトされている？  
    * 詳細設定  
      なぜにグレーアウトされている？  
  * 開封確認(アカウント無関係に統一)  
    * 送信メッセージについて、毎回開封確認の返送を求めない。  
    * 開封確認が届いたとき受信トレイに残す。  
    * 開封確認は一切返送しない。  

どうでもいいことだが、Googleアカウントが2年間利用なければ削除されるようになるとのこと。  
<https://japan.googleblog.com/2023/05/GoogleAccount.html>  
**無効な Google アカウントに関するポリシーを更新しました**(2023年5月19日金曜日)(勝手に改行付与)  
> メールを読む、送信する  
> Googleドライブを使用する  
> YouTube動画を見る  
> GooglePlayストアからアプリをダウンロードする  
> Google検索を使用する  
> 「Googleでログイン」でサードパーティ製のアプリやサービスにログインする  

ログインだけでは対処できないってことだよね。  
ログインして検索するだけでも有効なのかもしれないが、、、やっぱり一手間必要なのはめんどくさい。  
> YouTube に動画をアップロードしているアカウントを削除する予定は今のところありません。

とはいえ、、、いずれは削除対象になるってことを示唆しているわけだよね。。。"**今のところ**"だから。  
逆に[データ適正消去 第三者証明サービス](https://adec-cert.jp)があるんだね。  
Google・Apple・Facebookなどのデータセンタから削除することも立ち会ってくれるのかな。  
それとも日本国内だけかな・・・日本にある協会だからそうかもな。  

* アカウントごとの送信(SMTP)サーバ設定。  

* ショートカットキー
  * [すべてのスレッドを広げる(`*`)](https://support.mozilla.org/ja/kb/keyboard-shortcuts-tb)  
    デフォルトで広げてほしい。  

* 導入アドオン  
  * [Auto Address Cleaner T](#operatingsystemnetwork_mail_autoaddresscleanert)  
    送信時に宛名を削除してメールアドレスだけで送信する。  
  * [BorderColors D](#operatingsystemnetwork_mail_bordercolorsd)  
    メール送信ウィンドウの枠に宛先別の色を付ける。  
  * [Check and Send](#operatingsystemnetwork_mail_checkandsend)  
    メール送信時の宛先件数条件により、送信直前に宛先確認が可能。  
  * [Display Mail User Agent T](#operatingsystemnetwork_mail_displaymailuseragentt)  
    送信者の送信ソフトを表示する(導入するが、無効化)。  
  * [ImportExportTools NG](#operatingsystemnetwork_mail_importexporttoolsng)  
    メールのエクスポートやインポートを行う。  
  * [~~Charset Menu~~](https://addons.thunderbird.net/ja/thunderbird/addon/charset-menu)  
    文字コードを指定できる(なぜかMSN受信メールが文字化けする**Japanese(ISO-2022-JP)**？)。  
    そして、Thunderbird本体が対応させないようにしているため、導入不可。  

* 導入予定アドオン  
  * [Confirm-Address](https://addons.thunderbird.net/ja/thunderbird/addon/confirm-address-5582/)  
    誤送信防止。  
  * [FlexConfirmMail](https://addons.thunderbird.net/ja/thunderbird/addon/flex-confirm-mail)  
    誤送信防止(ダウンロードボタンに斜線が入っている理由は何？)。  
  * [非BCC受信者を制限する](https://addons.thunderbird.net/ja/thunderbird/addon/limit-non-bcc-recipients)  
    宛先件数の確認。  
  * [Quicktext](https://addons.thunderbird.net/ja/thunderbird/addon/quicktext/)  
    定型文挿入(1アカウントに複数の定型文を作れる)。  
  * [XNote++](https://addons.thunderbird.net/ja/thunderbird/addon/xnotepp/)  
    メール単体に付箋紙を付ける。  
  * [Tag Toolbar / Tag Popup](https://addons.thunderbird.net/ja/thunderbird/addon/tag-toolbar/)  
    複数のタグを1つのメールに付ける(本来は1メールに1タグ)。  
  * [Mail Merge](https://addons.thunderbird.net/ja/thunderbird/addon/mail-merge/)  
    複数の宛先に個別のタグに対応した内容で送れるようになる。  
  * [Keyword Highlight](https://addons.thunderbird.net/ja/thunderbird/addon/keyword-highlight/)  
    メール送信内容の指定単語に色を付ける。  
  * [Slideshow](https://addons.thunderbird.net/ja/thunderbird/addon/slideshow/)  
    添付画像をスライドショウ形式で閲覧可能(画像が添付されてくることはないため、導入見送り)。  
  * [Display Quota](https://addons.thunderbird.net/ja/thunderbird/addon/display-quota/)  
    IMAP利用時のメールボックス容量確認(1TB以上の容量があるため、導入見送り)。  
  * [翻訳パネル](https://addons.thunderbird.net/ja/thunderbird/addon/translation-panel-4698/)  
    翻訳(まだ不要かな)。  
  * [Mailbox Alert](https://addons.thunderbird.net/ja/thunderbird/addon/mailbox-alert/)  
    アカウントやフォルダごとに着信通知を個別に設定可能(無音設定だから意味あるのか？)。  
  * [External Editor Revived](https://addons.thunderbird.net/ja/thunderbird/addon/external-editor-revived)  
    メール送信ウィンドウでメール本文の作成を外部のエディタに委ねる。  

* 導入不可(古いため、導入できず)。  
  * [Address Close Button](https://addons.thunderbird.net/ja/thunderbird/addon/address-close-button/)  
    メール送信時の宛先を簡単に削除可能。  
  * [ルーラーバー (Ruler Bar)](https://addons.thunderbird.net/ja/thunderbird/addon/ruler-bar/)  
    メール送信ウィンドウにルーラを付ける。  

Microsoft社が無償で[Outlook](https://www.microsoft.com/ja-jp/microsoft-365/outlook)を配布した？  
どうでもいいことだが、<http://jp.msn.com/>は廃止され、<https://www.msn.com/ja-jp>に移行した？  


<a id="operatingsystemnetwork_mail_importexporttoolsng"></a>
##### ImportExportTools NGアドオンについて。
<https://addons.thunderbird.net/ja/thunderbird/addon/importexporttools-ng/>  
※PGP送受信では暗号化されたままエクスポートされる？  
※[元の開発](https://addons.thunderbird.net/ja/thunderbird/addon/importexporttools/)からフォークされた次期バージョン(**NextGen**)ということで、頭文字をとって、**NG**になっているようだ(NGを別の意味で捉えてしまった)。  

* 1つ目案：PGPから復号化後にエクスポートの手順(インポートできるか不明)。  
  1. メール単体(複数でもかまわないが、ディレクトリという意味ではない)を選択する。  
  1. 右クリック後に、「復号したメッセージをコピー」-「ローカルフォルダ」-目的のフォルダを選択する。  
  1. 復号後のフォルダからエクスポートを行う。  
     ※エクスポート方法は他の人の説明で十分理解できる(調べずとも使いこなせると思う)。  

* 2つ目案：PGPから復号化後にエクスポートの手順(インポートできるか不明)。  
  1. メール単体(複数でもかまわないが、ディレクトリという意味ではない)を選択する。  
  1. 右クリック後「メッセージを保存...」を選ぶ。  
  1. ローカルディレクトリに保存する。  
     作業完了(だが、暗号化されているのか復号化された状態なのか不明)。  

* 暗号化されていないエクスポートされたメールボックスのインポート手順(上記のPGP暗号化を復号化した状態を復元できるか不明)。  
  1. インポートディレクトリを右クリック後「ImportExportTools NG」-「mboxファイルをインポート」(インポート方法はエクスポートした形式に合わせる必要あり)を選ぶ。  
     「emlファイルをインポート」・「フォルダからすべてのemlファイルをインポート」などを選べる。  
  1. mboxファイルをインポートする場合は、どの形式でインポートするかの選択肢が出てくるため、エクスポートした形式を選ぶ必要がある。  
     作業完了。  


<a id="operatingsystemnetwork_mail_checkandsend"></a>
##### Check and Sendアドオンについて。
<https://addons.thunderbird.net/ja/thunderbird/addon/check-and-send/>  
誤送信防止用に、送信前に送信先を確認することができるアドオン。  
送信条件によっては確認不要のまま送信が可能であり、大事な宛先に限って確認することができる。  

* 設定(以下以外はデフォルト)  
  * ポップアップモード  
    別ウィンドウ  
  * 宛先の種類  
    宛先・**Bcc**が空欄だった場合に確認する。  
  * 遅延送信  
    送信前に**3秒間待機**する。  
  * 添付ファイル  
    * 添付ファイルのサイズが**11MB超え**の場合に確認する。  
    * 添付ファイルの拡張子が以下だった場合に確認する。  
      exe  
  * 単語  
    検索対象は本文のみ。  
    * 引用と書名を検索対象から除外する。  
  * 曜日／日付  
    * 不正な日時をチェックする。  

今後、条件を変えた場合ここへの記入を忘れるかもしれない。  


<a id="operatingsystemnetwork_mail_bordercolorsd"></a>
##### BorderColors Dアドオンについて。
<https://addons.thunderbird.net/ja/thunderbird/addon/bordercolors-d/>  
アカウントごとのメール送信ウィンドウ枠の色を付ける。  

* 設定(以下以外はデフォルト)  
  * Choose the highlight style  
    **Border on all sides**  

通常利用のアカウントはできる限り青に近づけた(原色の青は目に厳しいので)。  


<a id="operatingsystemnetwork_mail_autoaddresscleanert"></a>
##### Auto Address Cleaner Tアドオンについて。
<https://addons.thunderbird.net/ja/thunderbird/addon/auto-address-cleaner-t>  
送信までメールアドレスに紐付いた名前が付いたままだが、送信時にその名前を削除後、メールアドレスだけで送信する。  

設定項目はない。  


<a id="operatingsystemnetwork_mail_displaymailuseragentt"></a>
##### Display Mail User Agent Tアドオンについて。
<https://addons.thunderbird.net/ja/thunderbird/addon/display-mail-user-agent-t/>  
送信者が使用しているメーラーをアイコン表示する。  

色は淡い色にする。  
友達や会社の人とやりとりするまで無効化するつもりだったが、有効化しておこう。  
それにしても友達や会社の人たちはLINEに依存する(個人情報を他国に無償提供する理由は何だろう)。  


<a id="androidoperatingsystem"></a>
## Android
別途[作業メモ](./Android_作業メモなど何でも詰め込む.md)ファイルあり。  

[VPN](#operatingsystemnetwork_vpn)利用での[広告ブロックアプリ](https://gigazine.net/news/20220830-google-vpn-based-adblockers/)が使えなくなる？  
話は変わるが、iPhoneなどに搭載のiOSはユーザの意思に無関係に、[VPN](#operatingsystemnetwork_vpn)を無効化して[通信](https://gigazine.net/news/20221013-apple-apps-ios-16-bypass-vpn/)する機能がある？  

[数百万台以上のAndroidスマホがマルウェアに感染した状態で出荷](https://pc.watch.impress.co.jp/docs/news/1501862.html)されたものを使わされているんじゃないだろうな。  
不安だ(中国製品だから元から故意に埋め込まれている可能性も否定できないが)。  

* 目次  
  * [ローカル端末での暗号化](#androidoperatingsystem_encryptLocal)  


<a id="androidoperatingsystem_encryptLocal"></a>
### Android(ローカル端末暗号化)
当然ながらアプリを使う。  

[Cryptomator](https://cryptomator.org)というソフトウェアなのだが、残念ながらAndroidだけでなく、MacOS・Windows・Linux向けなど多岐に渡る。  
実に素晴らしい。  


<a id="macoperatingsystem"></a>
## MacOS
別途[作業メモ](./Mac_作業メモなど何でも詰め込む.md)ファイルあり。  

* 記事  
  [祝 Macintosh 30周年!! VAIOにも影響？ソニー製のPowerBook 100｜Mac](https://weekly.ascii.jp/elem/000/002/621/2621503/)  


<a id="windowsoperatingsystem"></a>
## Windows
別途[作業メモ](./Windows_作業メモなど何でも詰め込む.md)ファイルあり。  

[Windows 10 のディスク イメージ (ISO ファイル) のダウンロード](https://www.microsoft.com/ja-jp/software-download/windows10ISO)した場合、仮想環境として構築できる？  


<a id="linuxoperatingsystem"></a>
## Linux
別途[作業メモ](./Linux_作業メモなど何でも詰め込む.md)ファイルあり。  

職場で使うOSだ。  
※学生時代は仮想環境にLinuxをインストールしてプログラミングの勉強をしていたが、社会人になってからMacを利用することになったため、Linux環境が不要になった。  
面白そうなLinuxディストリビューションはインストールして触ったことあるが、それっきりで終わるという・・・(しかも、それが深夜で終わった頃には25時とか26時とか・・・4〜5時間後には起床して通勤するというのに、、、若かった)。  

ここでは重要だが、頻繁に使わないコマンドをまとめようと思う。  
※[grep](../検索利用メモ/正規表現の勉強_作業メモなど何でも詰め込む.md)・[awk](../ドキュメント作成技法/sedとawk_作業メモなど何でも詰め込む.md)・[sed](../ドキュメント作成技法/sedとawk_作業メモなど何でも詰め込む.md)・[find](../検索利用メモ/findの勉強_作業メモなど何でも詰め込む.md)などなどの主要なコマンドは別資料にまとめている(二重管理するつもりはないが、別に分けるのも難しい状況で困る)。  

* 勉強？  
  * [Linuxとコマンドラインを学ぶための5つのゲームだそう。](https://mastodon.social/@nogajun/110103822464802402)  

* コミュニティ？  
  * [openSUSE](https://www.geeko.jp)  


<a id="unixoperatingsystem"></a>
## UNIX


<a id="operatingsystemcurrentstatus"></a>
## 現状
今は、基本的にMacOSを使っている。  
ゲームなどにはWindows10OS端末を使っている。  
仮想OSでLinuxを動かすこともあったが、今は触っていないのが現状だ。  

携帯電話は、AndroidOSのみになっている。  
昔は、BlackBerryOSだったが、今は昔・・・悲しいよ。  
そして、とりあえず、[eOS](https://e.foundation/e-os/)を使っている電話機を手に入れたのだが、未だに使いこなせていないため、AndroidOSと併用というか、eOS電話機は家に置いたままになっている。  


以上。
<!-- vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=markdown expandtab: -->
