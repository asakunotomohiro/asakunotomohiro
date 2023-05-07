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
  * 以下、安全性不明。  
    * <https://swisscows.com/en>  
    * <https://metager.org>  
    * <https://www.ecosia.org>  
    * <https://www.mojeek.com>  
    * <https://searx.nixnet.services/>  

* 目次  
  * [ネットサーフィン](#operatingsystemnetwork_internetsurfing)  
  * [VPN](#operatingsystemnetwork_vpn)  
  * [PGP](#operatingsystemnetwork_pgp)  
  * [メール](#operatingsystemnetwork_mail)  

* 記事  
  * [Wi-Fiルーターのサポート期間っていつまで？　国内メーカー4社に聞いてみた](https://internet.watch.impress.co.jp/docs/special/1114330.html)  
    とりあえず、国内産のを使うことにした。  
  * [米国のアンチウイルスユーザーの61%は無料ソフトウェアを使用](https://www.security.org/antivirus/antivirus-consumer-report-annual/)  
  * [さよならGAFAM：5社一気にブロック→地獄です](https://www.gizmodo.jp/2019/02/i-cut-the-big-five-tech-giants-from-my-life-it-was-hell.html)  
    こんな極端な排除をするつもりはないが、目に見えるGAFAMは避けたいと思っている。  
  * [リチャード・ストールマンの個人サイト(RMS)](https://stallman.org)  
    将来は自己開発のみのコンピュータだけで生活したい。  

* 仕様書  
  * [CRYPTREC暗号の仕様書](https://www.cryptrec.go.jp/method.html)  

* 備忘  
  世間が騒いだときに覗く場所？  
  * [日本ネットワークインフォメーションセンター](https://www.nic.ad.jp/ja/)  


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


ネットサーフィンとはちょっと違うが、クラウドストレージを利用する場合は[ゼロ知識証明](https://ja.wikipedia.org/wiki/ゼロ知識証明)が使われているサービスを利用する・・・つもり。  
そのため、今はGoogleドライブなどから撤退するために、そこに置いてある資材を引き上げているのだが、遅々として進まない。  
また、[Rcloneによる暗号化ストレージ](https://zenn.dev/milly/books/rclone-crypt-gdrive)にすることで、移行する必要がなくなるようだ。  
Googleドライブに限らず、他のクラウドストレージにも対応しているようだ。  

* クラウドストレージ  
  * [idrive(アカウント作成時にのみゼロ知識証明を選べる)サブスクリプション](https://www.idrive.com)  
  * [メガ(ゼロ知識証明利用可能)サブスクリプション](https://mega.nz/aff=jnWJKfzcabA)  
  * [pCloud(有料でゼロ知識証明利用可能)買い切り型](https://partner.pcloud.com/r/92117)

サブスクリプションの場合は、利用したい容量と金額が合わず、なかなか契約に踏み切れない。  

[クラウドを支えるこれからの暗号技術](https://herumi.github.io/ango/)がPDFとして配布されており、暗号について勉強することができる。  
その前段階として、結城 浩さんの[暗号技術入門](https://www.sbcr.jp/product/4797382228/)を読む必要がある。  
そのため、一応紙媒体として購入したが・・・ほぼ読んでいないのが現状だ(絶対に読み終わるぞぉ)。  

そして、[パスワード自動生成(EpisoPass)](https://episopass.com)もあり、いちおう簡単には解読されないであろう技術も世の中に出回っている。  

<a id="operatingsystemnetwork_vpn"></a>
### VPN
パソコンからの利用は気にしていないのだが、BlackBerry端末以外の携帯電話からのネットワーク利用は、情報漏洩が気になってしまう。  
今更感はあるが・・・。  
と言うことで、VPNを利用しようと思う。  

~~[30分でランチ勉強！クラウド時代の当たり前「VPN」を学んでどこからでも安全なリモートワークを実現！](https://www.youtube.com/watch?v=yiLTEGrghfY)~~  
⇒ただの広告だった。  

中国製の携帯電話は、、、なかなか・・・日本産も最近では怪しいからな。  

有名なのは[VPN Gate](https://www.vpngate.net/ja/)らしい。  
とは言え、[不正利用防止の取り組み](https://www.vpngate.net/ja/about_abuse.aspx)として通信ログを記録しているため、VPNとは何ぞやという感じになってしまうが・・・。  
仕方ない。  

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
  * [PGP紐付け管理](#operatingsystemnetwork_pgppeggingcontrol)  
  * [PGP鍵サーバへの登録](#operatingsystemnetwork_pgp_keyserver)  


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

<a id="operatingsystemnetwork_pgp_howtoencrypt_mainsubkey"></a>
<details><summary>主鍵の生成から副鍵の生成までの手順記録。</summary>

* 鍵の生成。  
  1. [主鍵の生成作業](#operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_mainkey)  
  1. [副鍵の生成作業](#operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_subkey)  
  1. [優先指定リストを設定](#operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_setpref)  
  1. [主鍵の秘密鍵をエクスポート](#operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_mainexport)  
  1. [主鍵の秘密鍵を削除](#operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_maindelete)  
  1. [副鍵のパスフレーズ変更](#operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_subchangepass)  

<a id="operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_mainkey"></a>
以下、主鍵の生成作業。
```terminal
$ gpg --full-gen-key --expert	←☆主鍵の生成。
gpg (GnuPG/MacGPG2) 2.2.40; Copyright (C) 2022 g10 Code GmbH
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

ご希望の鍵の種類を選択してください:
   (1) RSA と RSA (デフォルト)
   (2) DSA と Elgamal
   (3) DSA (署名のみ)
   (4) RSA (署名のみ)
   (7) DSA (機能をあなた自身で設定)
   (8) RSA (機能をあなた自身で設定)
   (9) ECC と ECC
  (10) ECC (署名のみ)
  (11) ECC (機能をあなた自身で設定)	←☆これ。
  (13) 既存の鍵
  (14) カードに存在する鍵
あなたの選択は? 11

鍵ECDSA/EdDSAに認められた操作: Sign Certify Authenticate
現在の認められた操作: Sign Certify

   (S) 署名機能を反転する	←☆これ。
   (A) 認証機能を反転する
   (Q) 完了

あなたの選択は? s

鍵ECDSA/EdDSAに認められた操作: Sign Certify Authenticate
現在の認められた操作: Certify

   (S) 署名機能を反転する
   (A) 認証機能を反転する
   (Q) 完了	←☆これ。

あなたの選択は? q
ご希望の楕円曲線を選択してください:
   (1) Curve 25519	←☆これ(他のに比べて暗号強度が弱い)。
   (3) NIST P-256
   (4) NIST P-384
   (5) NIST P-521	←☆これが現時点の最強選択肢。
   (6) Brainpool P-256
   (7) Brainpool P-384
   (8) Brainpool P-512	←☆最強硬度？
   (9) secp256k1
あなたの選択は? 5
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
コメント: pgp@securemail	←☆コメントは不要らしいが、他のPGPメールアカウントと区別できるコメントを付けた。
あなたは文字集合'utf-8'を使っています。
次のユーザIDを選択しました:
    "asakunotomohiro (pgp@securemail) <asakuno.secure@pgp.asakuno.org>"

名前(N)、コメント(C)、電子メール(E)の変更、またはOK(O)か終了(Q)? O	←☆OkのOを入力。
たくさんのランダム・バイトの生成が必要です。キーボードを打つ、マウスを動か
す、ディスクにアクセスするなどの他の操作を素数生成の間に行うことで、乱数生
成器に十分なエントロピーを供給する機会を与えることができます。	←☆普通にパスフレーズ入力画面が出てきた(そこに入力)。
gpg: 失効証明書を '/Users/asakunotomohiro/.gnupg/openpgp-revocs.d/993B74F887EF3B8F080911044C20892B88F7F574.rev' に保管しました。
公開鍵と秘密鍵を作成し、署名しました。

pub   ed25519 2023-04-21 [SC]
      993B74F887EF3B8F080911044C20892B88F7F574
uid                      asakunotomohiro (pgp@securemail) <asakuno.secure@pgp.asakuno.org>>

$
```
最後に出てきたメッセージの「**執行証明書を〜〜〜に保管しました。**」と言うファイルは最後に削除する(当然秘密鍵と一緒に別途保管後に実施)。  

NISTに[Dual\_EC\_DRBG](https://www.cryptrec.go.jp/topics/cryptrec-er-0001-2013.html)を使わない周知があるがどういうこと？  
> P = dQのスカラー値dの知識は攻撃者にとってバックドアになる。  

第三者が復号化できるって認識でいいよね。  

<a id="operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_subkey"></a>
以下、副鍵の生成作業。
```terminal
$ gpg --edit-key --expert asakuno.secure@pgp.asakuno.org	←☆主鍵に登録したメールアドレスから副鍵を作る。
gpg (GnuPG/MacGPG2) 2.2.40; Copyright (C) 2022 g10 Code GmbH
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

秘密鍵が利用できます。

gpg: 信用データベースの検査
gpg: marginals needed: 3  completes needed: 1  trust model: pgp
gpg: 深さ: 0  有効性:   3  署名:   0  信用: 0-, 0q, 0n, 0m, 0f, 3u
sec  ed25519/AF8E86DF2EB86487
     作成: 2023-04-01  有効期限: 無期限      利用法: SC
     信用: 究極        有効性: 究極
[  究極  ] (1). asakunotomohiro (pgp@securemail) <asakuno.secure@pgp.asakuno.org>

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
   (1) Curve 25519	←☆今の時代に沿ったこれを選ぶ。
   (3) NIST P-256
   (4) NIST P-384
   (5) NIST P-521
   (6) Brainpool P-256
   (7) Brainpool P-384
   (8) Brainpool P-512
   (9) secp256k1
あなたの選択は? 1
鍵の有効期限を指定してください。
         0 = 鍵は無期限	←☆副鍵の場合は期限を決めてもいいが、今のところこれを選ぶ。
      <n>  = 鍵は n 日間で期限切れ
      <n>w = 鍵は n 週間で期限切れ
      <n>m = 鍵は n か月間で期限切れ
      <n>y = 鍵は n 年間で期限切れ
鍵の有効期間は? (0)5y
鍵は水  4/19 23:20:45 2028 JSTで期限切れとなります
これで正しいですか? (y/N) y
本当に作成しますか? (y/N) y
たくさんのランダム・バイトの生成が必要です。キーボードを打つ、マウスを動か
す、ディスクにアクセスするなどの他の操作を素数生成の間に行うことで、乱数生
成器に十分なエントロピーを供給する機会を与えることができます。	←☆主鍵作成に用いたパスフレーズを入力する。

sec  ed25519/AF8E86DF2EB86487
     作成: 2023-04-01  有効期限: 無期限      利用法: SC
     信用: 究極        有効性: 究極
ssb  cv25519/A6D6DB5C89224098
     作成: 2023-04-01  有効期限: 2028-04-19  利用法: E
[  究極  ] (1). asakunotomohiro (pgp@securemail) <asakuno.secure@pgp.asakuno.org>

gpg> save	←☆この保存コマンドを忘れないこと(実行と同時に終了する)。
$
```
副鍵が作成できたかどうかは、`gpg -K`or`gpg --list-keys`にて確認できる。  
上記**save**コマンドで終了しない場合、副鍵が作られていないはずなので、作成確認は必須とした方がいい。  

以下、副鍵作成結果確認。
```terminal
$ gpg -K asakuno.secure@pgp.asakuno.org
/Users/asakunotomohiro/.gnupg/pubring.kbx
-----------------------------------
pub   ed25519 2023-04-21 [SC]	←☆主鍵(2種類の機能有り：Cは鍵に対する署名・Sはファイルに対する署名)。
      993B74F887EF3B8F080911044C20892B88F7F574
uid           [  究極  ] asakunotomohiro (pgp@securemail) <asakuno.secure@pgp.asakuno.org>
sub   cv25519 2023-04-21 [E]	←☆副鍵(1種類の機能有り：Eは暗号化)。

$
```

<details><summary>署名のみの副鍵新規追加作成作業。</summary>

```terminal
$ gpg --edit-key --expert asakuno.secure@pgp.asakuno.org	←☆鍵の編集。
gpg (GnuPG/MacGPG2) 2.2.41; Copyright (C) 2022 g10 Code GmbH
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

秘密鍵が利用できます。

sec  ed25519/4C20892B88F7F574
     作成: 2023-04-21  有効期限: 無期限      利用法: SC
     信用: 究極        有効性: 究極
ssb  cv25519/A86D2576AAA988CC
     作成: 2023-04-21  有効期限: 2028-04-19  利用法: E
[  究極  ] (1). asakunotomohiro (pgp@securemail) <asakuno.secure@pgp.asakuno.org>

gpg> addkey	←☆副鍵追加。
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
   (1) Curve 25519	←☆これを選んだつもりだが？
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
鍵の有効期間は? (0)3y	←☆3年にした。
鍵は水  4/29 13:02:21 2026 JSTで期限切れとなります
これで正しいですか? (y/N) y
本当に作成しますか? (y/N) y
たくさんのランダム・バイトの生成が必要です。キーボードを打つ、マウスを動か
す、ディスクにアクセスするなどの他の操作を素数生成の間に行うことで、乱数生
成器に十分なエントロピーを供給する機会を与えることができます。

sec  ed25519/4C20892B88F7F574
     作成: 2023-04-21  有効期限: 無期限      利用法: SC
     信用: 究極        有効性: 究極
ssb  cv25519/A86D2576AAA988CC
     作成: 2023-04-21  有効期限: 2028-04-19  利用法: E
ssb  ed25519/00889BFF44F3F5EB	←☆今回作成した副鍵。
     作成: 2023-04-30  有効期限: 2026-04-29  利用法: S
[  究極  ] (1). asakunotomohiro (pgp@securemail) <asakuno.secure@pgp.asakuno.org>

gpg> save	←☆作成した副鍵の保存。
$ gpg -K asakuno.secure@pgp.asakuno.org
sec   ed25519 2023-04-21 [SC]
      993B74F887EF3B8F080911044C20892B88F7F574
uid           [  究極  ] asakunotomohiro (pgp@securemail) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-04-21 [E] [有効期限: 2028-04-19]	←☆暗号化のみの副鍵。
ssb   ed25519 2023-04-30 [S] [有効期限: 2026-04-29]	←☆署名のみの副鍵。

$
```

</details>

<details><summary>優先指定リストを設定するが、勘違いかもしれない(pref・showpref・setpref・updpref)。</summary>

<a id="operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_setpref"></a>
以下、優先指定リストを設定する。  
これは、暗号・署名・圧縮・機能に使用するアルゴリズムを確認後、設定されていない箇所に設定する作業。  
設定する理由は、未設定の場合、後述の[PGP紐付け管理](#operatingsystemnetwork_pgppeggingcontrol)でエラーになるため、事前に設定しておく。  
何より、主鍵の秘密鍵が必須のようなので、ここで作業する必要がある。  

以下、その作業。
```terminal
$ gpg -K asakuno.secure@pgp.asakuno.org
sec   ed25519 2023-04-21 [SC]
      993B74F887EF3B8F080911044C20892B88F7F574
uid           [  究極  ] asakunotomohiro (pgp@securemail) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-04-21 [E] [有効期限: 2028-04-19]

$ gpg --edit-key asakuno.secure@pgp.asakuno.org
gpg (GnuPG/MacGPG2) 2.2.41; Copyright (C) 2022 g10 Code GmbH
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

秘密鍵が利用できます。

sec  ed25519/4C20892B88F7F574
     作成: 2023-04-21  有効期限: 無期限      利用法: SC
     信用: 究極        有効性: 究極
ssb  cv25519/A86D2576AAA988CC
     作成: 2023-04-21  有効期限: 2028-04-19  利用法: E
[  究極  ] (1). asakunotomohiro (pgp@securemail) <asakuno.secure@pgp.asakuno.org>

gpg> pref	←☆指定可能一覧。
[  究極  ] (1). asakunotomohiro (pgp@securemail) <asakuno.secure@pgp.asakuno.org>
     S9 S8 S7 S2 H10 H9 H8 H11 H2 Z2 Z3 Z1 [mdc] [no-ks-modify]

gpg> showpref	←☆現在の設定済み確認。
[  究極  ] (1). asakunotomohiro (pgp@securemail) <asakuno.secure@pgp.asakuno.org>
     暗号方式: AES256, AES192, AES, 3DES
     AEAD:	←☆ここが空では困る。
     ダイジェスト: SHA512, SHA384, SHA256, SHA224, SHA1
     圧縮: ZLIB, BZIP2, ZIP, 無圧縮
     機能: MDC, AEAD, 鍵サーバ 修正しない

gpg> setpref AES256 AES192 AES 3DES SHA512 SHA384 SHA256 SHA224 ZLIB BZIP2 ZIP Uncompressed ks-modify no-mdc	←☆設定実施。
優先指定の一覧を設定:
     暗号方式: AES256, AES192, AES, 3DES
     AEAD:	←☆設定したのに空のまんまになっている？
     ダイジェスト: SHA512, SHA384, SHA256, SHA224, SHA1
     圧縮: ZLIB, BZIP2, ZIP, 無圧縮
     機能: MDC, AEAD, 鍵サーバ 修正しない
優先指定を本当に更新しますか? (y/N) y	←☆とりあえず更新。

sec  ed25519/4C20892B88F7F574
     作成: 2023-04-21  有効期限: 無期限      利用法: SC
     信用: 究極        有効性: 究極
ssb  cv25519/A86D2576AAA988CC
     作成: 2023-04-21  有効期限: 2028-04-19  利用法: E
[  究極  ] (1). asakunotomohiro (pgp@securemail) <asakuno.secure@pgp.asakuno.org>

gpg> showpref	←☆反映していないので設定前の状態が表示される。
[  究極  ] (1). asakunotomohiro (pgp@securemail) <asakuno.secure@pgp.asakuno.org>
     暗号方式: AES256, AES192, AES, 3DES
     AEAD:
     ダイジェスト: SHA512, SHA384, SHA256, SHA224, SHA1
     圧縮: ZLIB, BZIP2, ZIP, 無圧縮
     機能: MDC, AEAD, 鍵サーバ 修正しない

gpg> updpref	←☆更新。
優先指定の一覧を設定:
     暗号方式: AES256, AES192, AES, 3DES
     AEAD:	←☆なぜ空？
     ダイジェスト: SHA512, SHA384, SHA256, SHA224, SHA1
     圧縮: ZLIB, BZIP2, ZIP, 無圧縮
     機能: MDC, AEAD, 鍵サーバ 修正しない
優先指定を本当に更新しますか? (y/N) y

sec  ed25519/4C20892B88F7F574
     作成: 2023-04-21  有効期限: 無期限      利用法: SC
     信用: 究極        有効性: 究極
ssb  cv25519/A86D2576AAA988CC
     作成: 2023-04-21  有効期限: 2028-04-19  利用法: E
[  究極  ] (1). asakunotomohiro (pgp@securemail) <asakuno.secure@pgp.asakuno.org>

gpg> showpref	←☆もう一度確認。
[  究極  ] (1). asakunotomohiro (pgp@securemail) <asakuno.secure@pgp.asakuno.org>
     暗号方式: AES256, AES192, AES, 3DES
     AEAD:	←☆まだ空なのは、セーブしていないから？
     ダイジェスト: SHA512, SHA384, SHA256, SHA224, SHA1
     圧縮: ZLIB, BZIP2, ZIP, 無圧縮
     機能: MDC, AEAD, 鍵サーバ 修正しない

gpg> save	←☆保存する。
$ gpg -K asakuno.secure@pgp.asakuno.org
sec   ed25519 2023-04-21 [SC]
      993B74F887EF3B8F080911044C20892B88F7F574
uid           [  究極  ] asakunotomohiro (pgp@securemail) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-04-21 [E] [有効期限: 2028-04-19]

$ gpg --edit-key asakuno.secure@pgp.asakuno.org	←☆もう一度確認。
gpg (GnuPG/MacGPG2) 2.2.41; Copyright (C) 2022 g10 Code GmbH
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

秘密鍵が利用できます。

sec  ed25519/4C20892B88F7F574
     作成: 2023-04-21  有効期限: 無期限      利用法: SC
     信用: 究極        有効性: 究極
ssb  cv25519/A86D2576AAA988CC
     作成: 2023-04-21  有効期限: 2028-04-19  利用法: E
[  究極  ] (1). asakunotomohiro (pgp@securemail) <asakuno.secure@pgp.asakuno.org>

gpg> showpref
[  究極  ] (1). asakunotomohiro (pgp@securemail) <asakuno.secure@pgp.asakuno.org>
     暗号方式: AES256, AES192, AES, 3DES
     AEAD:	←☆駄目やん(しかし、消えるのがいいらしいとのことで・・・どういうこと？)。
     ダイジェスト: SHA512, SHA384, SHA256, SHA224, SHA1	←☆そもそもSHA1は利用しないようにしたはずだが？
     圧縮: ZLIB, BZIP2, ZIP, 無圧縮
     機能: MDC, AEAD, 鍵サーバ 修正しない

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
```terminal
$ gpg -K asakuno.secure@pgp.asakuno.org
sec#  ed25519 2023-04-21 [SC]
      993B74F887EF3B8F080911044C20892B88F7F574
uid           [  究極  ] asakunotomohiro (pgp@securemail) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-04-21 [E] [有効期限: 2028-04-19]

$ gpg --armor --export asakuno.secure@pgp.asakuno.org	←☆これで公開鍵を取り出せる。
-----BEGIN PGP PUBLIC KEY BLOCK-----
-----END PGP PUBLIC KEY BLOCK-----
$
```

<details><summary>エクスポートした公開鍵。</summary>

```text
-----BEGIN PGP PUBLIC KEY BLOCK-----	←☆ここがパブリックになっていること(プライベートになっている場合は秘密鍵であるため速攻削除すること)。

mDMEZEKbJhYJKwYBBAHaRw8BAQdA6UcR88SnTnaBRJW8F9wtWZfxLinb95t6mrE+
Y1Znpou0TGFzYWt1bm90b21vaGlybyAocGdwQOOCu+OCreODpeOCouODoeODvOOD
qykgPGFzYWt1bm8uc2VjdXJlQHBncC5hc2FrdW5vLm9yZz6IkAQTFggAOBYhBJk7
dPiH7zuPCAkRBEwgiSuI9/V0BQJkQpsmAhsDBQsJCAcCBhUKCQgLAgQWAgMBAh4B
AheAAAoJEEwgiSuI9/V05CgBAKarhzAe3PVfpaJcMu10nYsaJK1Ro0/hJTOOFWFj
+EHEAP9PMXPlpc2V2lU+7SvnJ1G6aNWt9RhauboIyLIB0dqnBLg4BGRCm7cSCisG
AQQBl1UBBQEBB0AjkrGYwyNB2krysMEr3j/aFrgKgju+kv7+BBgcNMp0WgMBCAeI
fgQYFggAJhYhBJk7dPiH7zuPCAkRBEwgiSuI9/V0BQJkQpu3AhsMBQkJZgGAAAoJ
EEwgiSuI9/V0fGAA/RuIy6Pw8ppCIrdn1pha/QoUFC5OJvuw33gbSi+X+E3tAQD3
1dOkbQ1UGUXibugr2IfwCz2s4Hv54j7E6NxsOAcRCQ==
=Bje/
-----END PGP PUBLIC KEY BLOCK-----
```
これさえ有れば、私にメールを送ることができる。  
ちょっとした*テスト*のために**使わないこと**。  
※これを使わなければ、サーバ側で削除する。  

</details>

<a id="operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_maindelete"></a>
以下、主鍵の秘密鍵を削除作業(**★**必ず、上記の取り出し後に実施すること**★**)。
```terminal
$ gpg --delete-secret-key asakuno.secure@pgp.asakuno.org	←☆鍵の削除。
gpg (GnuPG/MacGPG2) 2.2.40; Copyright (C) 2022 g10 Code GmbH
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.


sec  ed25519/AF8E86DF2EB86487 2023-04-01 asakunotomohiro (pgp@securemail) <asakuno.secure@pgp.asakuno.org>

この鍵を鍵リングから削除しますか? (y/N) y	←☆主鍵の削除。
これは秘密鍵です! 本当に削除しますか? (y/N) y	←☆確認ダイアログがGUIとして出てくるため、そこで「鍵を削除する」を選ぶ。
gpg: 秘密副鍵: の削除に失敗しました: 操作がキャンセルされました	←☆副鍵を使うため、確認ダイアログの「いいえ」を選び、副鍵を残す。
gpg: asakuno.secure@pgp.asakuno.org: delete key failed: 操作がキャンセルされました	←☆主鍵は消すが、副鍵削除せず。
$
```

以下、主鍵削除結果確認。
```terminal
$ gpg -K	←☆オプションのKは大文字。
/Users/asakunotomohiro/.gnupg/pubring.kbx
-----------------------------------
sec#  ed25519 2023-04-21 [SC]	←☆主鍵(秘密鍵がない場合シャープ記号が付く)。
      993B74F887EF3B8F080911044C20892B88F7F574
uid           [  究極  ] asakunotomohiro (pgp@securemail) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-04-21 [E]	←☆副鍵。

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
-rw-------  1 asakunotomohiro  staff  1426  4  5 13:31 993B74F887EF3B8F080911044C20892B88F7F574.rev
$ shred -uz 993B74F887EF3B8F080911044C20892B88F7F574.rev
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
sec#  ed25519 2023-04-21 [SC]	←☆主鍵は端末から削除済みを示すシャープ記号が付いている。
      993B74F887EF3B8F080911044C20892B88F7F574
uid           [  究極  ] asakunotomohiro (pgp@securemail) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-04-21 [E] [有効期限: 2028-04-19]	←☆5年後まで有効。
      31EC0D189C70A1AADB546650A86D2576AAA988CC	←☆副鍵のフィンガープリント。

$
```
※公開鍵のエクスポートは、主鍵および副鍵[すべて含んだ状態](https://security.stackexchange.com/questions/51474/one-public-key-contains-all-subkeys)になる。  

<a id="operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_subchangepass"></a>
以下、副鍵のパスフレーズ変更作業(主鍵のパスフレーズは変更しない)。
```terminal
$ gpg -K asakuno.secure@pgp.asakuno.org	←☆鍵の状態を知る。
sec#  ed25519 2023-04-21 [SC]
      993B74F887EF3B8F080911044C20892B88F7F574
uid           [  究極  ] asakunotomohiro (pgp@securemail) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-04-21 [E] [有効期限: 2028-04-19]	←☆副鍵のパスフレーズのみ変更。

$ gpg --edit-key asakuno.secure@pgp.asakuno.org	←☆鍵の編集。
gpg (GnuPG/MacGPG2) 2.2.41; Copyright (C) 2022 g10 Code GmbH
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

秘密副鍵が利用できます。

pub  ed25519/4C20892B88F7F574
     作成: 2023-04-21  有効期限: 無期限      利用法: SC
     信用: 究極        有効性: 究極
ssb  cv25519/A86D2576AAA988CC
     作成: 2023-04-21  有効期限: 2028-04-19  利用法: E
[  究極  ] (1). asakunotomohiro (pgp@securemail) <asakuno.secure@pgp.asakuno.org>

gpg> passwd	←☆パスフレーズ変更(パスワードコマンドでパスフレーズ変更？)。
gpg: 鍵 4C20892B88F7F574/4C20892B88F7F574: パスフレーズの変更エラー: 秘密鍵がありません	←☆削除済みであるため、気にしない。

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

<a id="operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_runencrypt"></a>
以下、暗号化および復号化の動作確認。
```terminal
$ echo "ファイルの暗号化テスト" > testfile.txt
$ ll
total 8
-rw-r--r--  1 asakunotomohiro  staff  34  4 22 07:52 testfile.txt	←☆このファイルが対象。
$ cat testfile.txt
ファイルの暗号化テスト
$ gpg -e -r asakuno.secure@pgp.asakuno.org testfile.txt	←☆暗号化実施。
$ ll
total 16
-rw-r--r--  1 asakunotomohiro  staff  206  4 22 07:52 testfile.txt.gpg	←☆暗号化されたファイル。
-rw-r--r--  1 asakunotomohiro  staff   34  4 22 07:52 testfile.txt	←☆最初に作成した平文ファイル。
$ rm testfile.txt	←☆平文ファイル削除。
$ ll
total 8
-rw-r--r--  1 asakunotomohiro  staff  206  4 22 07:52 testfile.txt.gpg
$ cat testfile.txt.gpg
?^ٸh;???@>???I??۰?h*W§+???~???,?fN0aSc'????Q??C???i?Մ;???&C???X??wu?h??Rūp)@?l8?????????V
??ެ=??ʆ??H??,?V?-??v??p?6:z????;?[??Bߧc??k??\?c?G?,?????zp,?]???"'?Ө?&P!DN6?sM?q???%
$ gpg -d testfile.txt.gpg	←☆復号化(しかし、画面出力のみで終わる)。
gpg: 256-ビットECDH鍵, ID A86D2576AAA988CC, 日付2023-04-21に暗号化されました
      "asakunotomohiro (pgp@securemail) <asakuno.secure@pgp.asakuno.org>"
ファイルの暗号化テスト	←☆暗号化対象の文言(平文内容を出力した結果)。
$ ll	←☆ファイルへの出力がないため、暗号化されたファイルのみある。
total 8
-rw-r--r--  1 asakunotomohiro  staff  206  4 22 07:52 testfile.txt.gpg
$ gpg -p testfile.txt.gpg	←☆私の意図した結果と異なるというか、そもそもオプションがないとはどういうこと？
無効なオプション "-p"
$ gpg -d testfile.txt.gpg -o test	←☆順番が大事なようだ。
使い方: gpg [オプション] --decrypt [filename]
$ gpg -o test -d testfile.txt.gpg	←☆復号時に、平文へのファイル指定があるため、そこに書き込む。
gpg: 256-ビットECDH鍵, ID A86D2576AAA988CC, 日付2023-04-21に暗号化されました
      "asakunotomohiro (pgp@securemail) <asakuno.secure@pgp.asakuno.org>"
$ ll
total 16
-rw-r--r--  1 asakunotomohiro  staff   34  4 22 08:07 test	←☆指定したファイル名で出力されている。
-rw-r--r--  1 asakunotomohiro  staff  206  4 22 07:52 testfile.txt.gpg
$ cat test	←☆平文になっているのが確認できる。
ファイルの暗号化テスト
$
$ gpg testfile.txt.gpg	←☆復号化(推測された行動になるため、明示した方がいい)。
gpg: *警告*: コマンドが指定されていません。なにを意味しているのか当ててみます ...
gpg: 256-ビットECDH鍵, ID A86D2576AAA988CC, 日付2023-04-21に暗号化されました
      "asakunotomohiro (pgp@securemail) <asakuno.secure@pgp.asakuno.org>"
$ ll
total 24
-rw-r--r--  1 asakunotomohiro  staff   34  4 22 08:14 testfile.txt	←☆復号化されたファイル。
-rw-r--r--  1 asakunotomohiro  staff   34  4 22 08:07 test
-rw-r--r--  1 asakunotomohiro  staff  206  4 22 07:52 testfile.txt.gpg
$ cat testfile.txt
ファイルの暗号化テスト
$
```
復号化したファイル名を暗号化ファイル名と異なる指定をした場合、平文がそのままコンピュータ上に残り、暗号化されたファイルが複数ある場合はどれを復号化したのか判断付かいかもしれない。  

※Microsoftの[PGP によるファイルの暗号化解除](https://learn.microsoft.com/ja-jp/system-center/orchestrator/standard-activities/pgp-decrypt-file?source=recommendations&view=sc-orch-2022)説明が全く理解できない。  
何かしらツールを使っているのか？  

</details>

使い方は後日。  


<a id="operatingsystemnetwork_pgppeggingcontrol"></a>
#### PGP紐付け管理
よく分かっていないのだが、暗号通信を前提としたチャットを含むメッセージ送受信が可能な自己証明サービスとして[keybase](https://keybase.io/)と言うのがある。  
あるのは使わなければ損するだろうということで、ここで他のサービスとの紐付けを行うことにした。  

アカウント作成やアプリケーションインストールなどは説明不要だろう(WindowsOSで例えるならば、GUI操作として、「**次へ**」をクリックし続ければ、インストール完了だ)。  
そして、[公開鍵](#operatingsystemnetwork_pgp_howtoencrypt)はすでに作成済みとして、以下の作業を行う。  

KeybaseGUI画面から鍵の取り込みを行うのだが、なぜかやり方のみ提示し、実際の取り込み方法はCUI操作が要求される。  
また、今回の作業は、鍵の特性項目すべて埋まっている必要がある。  
そのため、不足している場合は、[優先指定リストを設定](#operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_setpref)する作業にて、不足分を埋めること。  
```terminal
$ keybase pgp select --no-publish --import	←☆オプションは、keybaseサーバに鍵を渡さずに使えるようにする(と解釈した)。
　　　・
　　　・
　　　・
▶ ERROR Key 0116fc91768d223a2a54d85fe570b010e5bca302cc3e30c427b694a24d94b21009870a is not active in user's sigchain. Publish key first to be able to import to local Keybase keychain
$
```
エラーになったということは、結局公開しなければならないということなのだろう・・・。  

<details><summary>やり直すが失敗する。</summary>

以下、やり直し。
```terminal
$ gpg -K asakuno.secure@pgp.asakuno.org
sec#  ed25519 2023-04-21 [SC]
      993B74F887EF3B8F080911044C20892B88F7F574
uid           [  究極  ] asakunotomohiro (pgp@securemail) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-04-21 [E] [有効期限: 2028-04-19]

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
1    256?   4C20892B88F7F574             asakunotomohiro <asakuno.secure@pgp.asakuno.org>
Choose a key: 1
▶ ERROR key generation error: GPG error: exit status 2	←☆どういうこと？
$
```
なぜ取り込めない？  

原因確認として、デバッグ実行をした。  
`keybase -d pgp select --import asakuno.secure@pgp.asakuno.org`  
にて、主鍵の秘密鍵が必要ということか・・・。  
```text
　　　;
▶ [DEBU keybase gpg_cli.go:405] 12f | running Gpg: /usr/local/bin/gpg --no-auto-check-trustdb --armor --sign -u 993b74f887ef3b8f080911044c20892b88f7f574
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
sec#  ed25519 2023-04-21 [SC]
      993B74F887EF3B8F080911044C20892B88F7F574
uid           [  究極  ] asakunotomohiro (pgp@securemail) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-04-21 [E] [有効期限: 2028-04-19]	←☆Eは暗号化のみ。

$
```

</details>

以下、やり直しとして、公開することにした作業。
```terminal
$ gpg -K asakuno.secure@pgp.asakuno.org	←☆鍵の確認。
sec#  ed25519 2023-04-21 [SC]
      993B74F887EF3B8F080911044C20892B88F7F574
uid           [  究極  ] asakunotomohiro (pgp@securemail) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-04-21 [E] [有効期限: 2028-04-19]
ssb   ed25519 2023-04-30 [S] [有効期限: 2026-04-29]

$ gpg -K --with-subkey-fingerprint asakuno.secure@pgp.asakuno.org	←☆鍵のフィンガープリント確認。
sec#  ed25519 2023-04-21 [SC]	←☆主鍵削除済み。
      993B74F887EF3B8F080911044C20892B88F7F574
uid           [  究極  ] asakunotomohiro (pgp@securemail) <asakuno.secure@pgp.asakuno.org>
ssb   cv25519 2023-04-21 [E] [有効期限: 2028-04-19]	←☆暗号化に特化した鍵。
      31EC0D189C70A1AADB546650A86D2576AAA988CC
ssb   ed25519 2023-04-30 [S] [有効期限: 2026-04-29]	←☆署名に特化した鍵。
      06ED9B3E20676E623DE917DE00889BFF44F3F5EB

$ keybase pgp select --import --multi asakuno.secure@pgp.asakuno.org	←☆個人的には2種類の鍵を持ち込むつもりだったが、そんな選択肢は出てこなかった。
You are selecting a PGP key to publish in your profile, and
importing secret key to *local*, *encrypted* Keybase keyring.

If your GnuPG key is encrypted, you will be asked for passphrase
to unlock it. You may be asked *twice* - first by GnuPG, to export
encrypted key bundle, and then by Keybase, to unlock the secret key.

Please note that this will not work if your secret key lives on a
hardware device (like a smart card or a Yubikey).

#    Algo   Key Id             Created   UserId
=    ====   ======             =======   ======
1    256?   4C20892B88F7F574             asakunotomohiro <asakuno.secure@pgp.asakuno.org>
Choose a key: 1
▶ INFO Generated new PGP key:	←☆署名鍵を使う(これができずにKeybaseに鍵を付けられなかった)。
▶ INFO   user: asakunotomohiro (pgp@securemail) <asakuno.secure@pgp.asakuno.org>
▶ INFO   256-bit EdDSA key, ID 4C20892B88F7F574, created 2023-04-21
$ echo $?
0
$
```


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
     1. `asakunotomohiro (88F7F574) – 公開鍵.asc`というファイルを選ぶ。  
  1. **Upload**ボタンクリック。  
  1. 認証メールを送るボタン(**Send Verification Email**)をクリック(全文説明は、以下の引用部分がそう)。  
  1. ボタンクリック後は、ボタンの文言が**Verification Pending**に変わることを確認。  
  1. メール受信箱にて、**Verify asakuno.secure@pgp.asakuno.org for your key on keys.openpgp.org**という件名のメールを確認する。  
  1. メール本文に記載している認証URLを開く。  
  1. ブラウザ本文に、**Your key 993B74F887EF3B8F080911044C20892B88F7F574 is now published for the identity asakuno.secure@pgp.asakuno.org.**が表示され、無事に登録された。  
  1. 実際に検索を掛けて公開鍵を確認する。  
     ・・・あ・・・あぁ・・・よく分からないが、アップロードしたのと中身が違うぞ・・・どういうこと？  

> You uploaded the key 993B74F887EF3B8F080911044C20892B88F7F574.  
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
     3	default-key 993B74F887EF3B8F080911044C20892B88F7F574
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
     3	default-key 993B74F887EF3B8F080911044C20892B88F7F574
     4	keyserver hkps://keys.openpgp.org	←☆これを書き込んだ。
$
```

3. 公開鍵をサーバに登録。
```terminal
$ gpg --export asakuno.secure@pgp.asakuno.org | curl -T - https://keys.openpgp.org
Key successfully uploaded. Proceed with verification here:
https://keys.openpgp.org/upload/abcdefghijklmnopqrstuvwxyz
$
```
出力されたURLが認証だろうと思い、開いたことにより、これでキーサーバに登録できたと思ったのだが、できていないようだ。  
> You uploaded the key 993B74F887EF3B8F080911044C20892B88F7F574.  
> This key is now published with only non-identity information. (What does this mean?)  


* 検索手順  
  * <https://keyoxide.org>  
    ここで検索できる(実際に探したら見つかった)。  


<a id="operatingsystemnetwork_mail"></a>
### メール
普段のメールの使い方について。  
※ここに記載するのは正しいのか？  

* メールの利用方法  
  * [Webブラウザからの送受信](#operatingsystemnetwork_mail_SendAndReceiveInBrowser)  
  * [メールクライアントからの送受信](#operatingsystemnetwork_mail_SendAndReceiveOnClient)  

<a id="operatingsystemnetwork_mail_SendAndReceiveInBrowser"></a>
#### Webブラウザからの送受信
普段[Firefox](https://www.mozilla.org/ja/firefox/)ブラウザを使っている。  
※個人を特定されにくくするために、ユーザーエージェントを[変更](https://support.mozilla.org/en-US/kb/how-reset-default-user-agent-firefox)する必要がある。  
変更方法の詳細：<https://www.howtogeek.com/113439/how-to-change-your-browsers-user-agent-without-installing-any-extensions/>  
よく分かっていなかったが、下記のアドオンで対応可能だと思う。  

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
        * サードパーティCookieの保存：**常に拒否**  
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
        しかし、できる限り**SSL/TLS接続**できる方法を探すこと。  
      * 認証方式：私の利用サーバに問題があるのか分からないが、**通常のパスワード認証**のみになる。  
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

* アカウントごとの送信(SMTP)サーバ設定。  

* ショートカットキー
  * [すべてのスレッドを広げる(`*`)](https://support.mozilla.org/ja/kb/keyboard-shortcuts-tb)  
    デフォルトで広げてほしい。  

* 導入アドオン  
  * [ImportExportTools NG](#operatingsystemnetwork_mail_importexporttoolsng)  
    メールのエクスポートやインポートを行う。  
  * [Check and Send](#operatingsystemnetwork_mail_checkandsend)  
    メール送信時の宛先件数条件により、送信直前に宛先確認が可能。  
  * [BorderColors D](#operatingsystemnetwork_mail_bordercolorsd)  
    メール送信ウィンドウの枠に宛先別の色を付ける。  
  * [Auto Address Cleaner T](#operatingsystemnetwork_mail_autoaddresscleanert)  
    送信時に宛名を削除してメールアドレスだけで送信する。  
  * [Display Mail User Agent T](#operatingsystemnetwork_mail_displaymailuseragentt)  
    送信者の送信ソフトを表示する(導入するが、無効化)。  
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


<a id="windowsoperatingsystem"></a>
## Windows
別途[作業メモ](./Windows_作業メモなど何でも詰め込む.md)ファイルあり。  


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


以上。
<!-- vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=markdown expandtab: -->
