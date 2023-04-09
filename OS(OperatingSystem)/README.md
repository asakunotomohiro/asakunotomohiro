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

* 目次  
  * [ネットサーフィン](#operatingsystemnetwork_internetsurfing)  
  * [VPN](#operatingsystemnetwork_vpn)  
  * [PGP](#operatingsystemnetwork_pgp)  
  * [メール](#operatingsystemnetwork_mail)  


<a id="operatingsystemnetwork_internetsurfing"></a>
### ネットサーフィン
普通にネットサーフィンをするだけならば問題ないように思うが、ログインが伴う作業の場合は、暗号化をしておくのが吉だろう。  
もっとも、Twitterアカウントデータが[流出](https://piyolog.hatenadiary.jp/entry/2023/01/07/000622)する出来事は私のあずかり知らぬところになるため、私だけが暗号化通信しても意味がない。  

[Torブラウザ](https://www.torproject.org)を利用することにより、通信の自由を保障されるネットサーフィンが可能になる。  
しかし、幾重にも通信経路をたどることから通信速度は無茶苦茶遅い。  

項目を分けた方がいいように思うが、クラウドストレージを利用する場合は[ゼロ知識証明](https://ja.wikipedia.org/wiki/ゼロ知識証明)が使われているサービスを利用する・・・つもり。  
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

中国製の携帯電話は、、、なかなか・・・日本産も最近では怪しいからな。  

有名なのは[VPN Gate](https://www.vpngate.net/ja/)らしい。  
とは言え、[不正利用防止の取り組み](https://www.vpngate.net/ja/about_abuse.aspx)として通信ログを記録しているため、VPNとは何ぞやという感じになってしまうが・・・。  
仕方ない。  


<a id="operatingsystemnetwork_pgp"></a>
### PGP
基本的には、PGPにて暗号化を行うのだが、大げさなことをしなくても[Cryptomator](#androidoperatingsystem_encryptLocal)アプリを利用するだけで十分に思う。  
しかし、それは秘密鍵暗号方式とも言える方法であり、公開鍵暗号方式ではない。  
不特定多数とのやりとりでは、後者を利用するのが望ましいだろう。  

* 目次  
  * [利用ソフトウェア](#operatingsystemnetwork_pgp_software)  
  * [利用方法](#operatingsystemnetwork_pgp_howtoencrypt)  

<a id="operatingsystemnetwork_pgp_software"></a>
#### 利用ソフトウェア
[GnuPG](https://www.gnupg.org/index.html)(通称OpenPGP)を使う。  
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
  1. [主鍵の秘密鍵をエクスポート](#operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_mainexport)  
  1. [主鍵の秘密鍵を削除](#operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_maindelete)  

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

   (S) 署名機能を反転する
   (A) 認証機能を反転する
   (Q) 完了	←☆これ。

あなたの選択は? q
ご希望の楕円曲線を選択してください:
   (1) Curve 25519	←☆これ。
   (3) NIST P-256
   (4) NIST P-384
   (5) NIST P-521
   (6) Brainpool P-256
   (7) Brainpool P-384
   (8) Brainpool P-512
   (9) secp256k1
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
電子メール・アドレス: asakunotomohiro@pgp.asakunotomohiro.ml	←☆そのまま。
コメント: pgp@mail	←☆必要なのか不明だが、私が他のPGPメールアカウントと区別できるコメントを付けた。
あなたは文字集合'utf-8'を使っています。
次のユーザIDを選択しました:
    "asakunotomohiro (pgp@mail) <asakunotomohiro@pgp.asakunotomohiro.ml>"

名前(N)、コメント(C)、電子メール(E)の変更、またはOK(O)か終了(Q)? O	←☆OkのOを入力。
たくさんのランダム・バイトの生成が必要です。キーボードを打つ、マウスを動か
す、ディスクにアクセスするなどの他の操作を素数生成の間に行うことで、乱数生
成器に十分なエントロピーを供給する機会を与えることができます。	←☆普通にパスフレーズ入力画面が出てきた(そこに入力)。
gpg: 失効証明書を '/Users/asakunotomohiro/.gnupg/openpgp-revocs.d/4949494949494949494949494949494949494949.rev' に保管しました。
公開鍵と秘密鍵を作成し、署名しました。

pub   ed25519 2023-04-01 [SC]
      3838383838383838383838383838383838383838
uid                      asakunotomohiro (pgp@mail) <asakunotomohiro@pgp.asakunotomohiro.ml>

$
```

<a id="operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_subkey"></a>
以下、副鍵の生成作業。
```terminal
$ gpg --edit-key --expert asakunotomohiro@pgp.asakunotomohiro.ml	←☆主鍵に登録したメールアドレスから副鍵を作る。
gpg (GnuPG/MacGPG2) 2.2.40; Copyright (C) 2022 g10 Code GmbH
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

秘密鍵が利用できます。

gpg: 信用データベースの検査
gpg: marginals needed: 3  completes needed: 1  trust model: pgp
gpg: 深さ: 0  有効性:   3  署名:   0  信用: 0-, 0q, 0n, 0m, 0f, 3u
sec  ed25519/1272727272727272
     作成: 2023-04-01  有効期限: 無期限      利用法: SC
     信用: 究極        有効性: 究極
[  究極  ] (1). asakunotomohiro (pgp@mail) <asakunotomohiro@pgp.asakunotomohiro.ml>

gpg> addkey	←☆副鍵の追加。
ご希望の鍵の種類を選択してください:
   (3) DSA (署名のみ)
   (4) RSA (署名のみ)
   (5) Elgamal (暗号化のみ)
   (6) RSA (暗号化のみ)
   (7) DSA (機能をあなた自身で設定)
   (8) RSA (機能をあなた自身で設定)
  (10) ECC (署名のみ)
  (11) ECC (機能をあなた自身で設定)	←☆これでもよさそうだが、12を選ぶ。
  (12) ECC (暗号化のみ)	←☆これ。
  (13) 既存の鍵
  (14) カードに存在する鍵
あなたの選択は? 12
ご希望の楕円曲線を選択してください:
   (1) Curve 25519	←☆主鍵と同じこれを選ぶ。
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
鍵の有効期間は? (0)0
鍵は無期限です
これで正しいですか? (y/N) y
本当に作成しますか? (y/N) y
たくさんのランダム・バイトの生成が必要です。キーボードを打つ、マウスを動か
す、ディスクにアクセスするなどの他の操作を素数生成の間に行うことで、乱数生
成器に十分なエントロピーを供給する機会を与えることができます。	←☆主鍵作成に用いたパスフレーズを入力する。

sec  ed25519/1272727272727272
     作成: 2023-04-01  有効期限: 無期限      利用法: SC
     信用: 究極        有効性: 究極
ssb  cv25519/1616161616161616
     作成: 2023-04-01  有効期限: 無期限      利用法: E
[  究極  ] (1). asakunotomohiro (pgp@mail) <asakunotomohiro@pgp.asakunotomohiro.ml>

gpg> save	←☆この保存を忘れないこと(同時に終了する)。
$
```
副鍵が作成できたかどうかは、`gpg -k`にて確認できる。  

以下、副鍵作成結果確認。
```terminal
$ gpg -k
/Users/asakunotomohiro/.gnupg/pubring.kbx
-----------------------------------
pub   ed25519 2023-04-01 [SC]	←☆主鍵。
      3838383838383838383838383838383838383838
uid           [  究極  ] asakunotomohiro (pgp@mail) <asakunotomohiro@pgp.asakunotomohiro.ml>
sub   cv25519 2023-04-01 [E]	←☆副鍵。

$
```

<a id="operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_mainexport"></a>
主鍵の秘密鍵などをエクスポート。  
GUIソフトウェアとして[GPGKeychain](#operatingsystemnetwork_pgp_software)から取り出すのがいいだろう。  
そして、これを絶対に外部に漏れない場所に保管しておく。  
印刷して金庫の中でもかまわないし、主鍵が存在する端末を銀行に預けておくのも手である。  
とりあえず究極に絶対だと言われる場所であれば問題ない。  

CUI操作での取り出し方法は分からない。  
また、GUI操作での取り出し方法を文字で説明するのはしんどいため、他の解説を見る必要がある(調べなければ分からないほど難しいものではないが)。  

<a id="operatingsystemnetwork_pgp_howtoencrypt_mainsubkey_maindelete"></a>
以下、主鍵の秘密鍵を削除作業。
```terminal
$ gpg --delete-secret-key asakunotomohiro@pgp.asakunotomohiro.ml	←☆鍵の削除。
gpg (GnuPG/MacGPG2) 2.2.40; Copyright (C) 2022 g10 Code GmbH
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.


sec  ed25519/1272727272727272 2023-04-01 asakunotomohiro (pgp@mail) <asakunotomohiro@pgp.asakunotomohiro.ml>

この鍵を鍵リングから削除しますか? (y/N) y	←☆主鍵の削除。
これは秘密鍵です! 本当に削除しますか? (y/N) y	←☆確認ダイアログがGUIとして出てくるため、そこで「鍵を削除する」を選ぶ。
gpg: 秘密副鍵: の削除に失敗しました: 操作がキャンセルされました	←☆副鍵を使うため、確認ダイアログの「いいえ」を選び、副鍵を残す。
gpg: asakunotomohiro@pgp.asakunotomohiro.ml: delete key failed: 操作がキャンセルされました	←☆主鍵は消すが、副鍵削除せず。
$
```

以下、主鍵削除結果確認。
```terminal
$ gpg -k
/Users/asakunotomohiro/.gnupg/pubring.kbx
-----------------------------------
pub   ed25519 2023-04-01 [SC]	←☆主鍵。
      3838383838383838383838383838383838383838
uid           [  究極  ] asakunotomohiro (pgp@mail) <asakunotomohiro@pgp.asakunotomohiro.ml>
sub   cv25519 2023-04-01 [E]	←☆副鍵。

$
```

</details>

使い方は後日。  


<a id="operatingsystemnetwork_mail"></a>
### メール
普段のメールの使い方について。  
※ここに記載するのは正しいのか？  

* メールの利用方法  
  * [Webブラウザからの送受信](#operatingsystemnetwork_mail_SendAndReceiveInBrowser)  
  * [メールクライアントからの送受信](#operatingsystemnetwork_mail_SendAndReceiveOnClient)  

<a id="operatingsystemnetwork_mail_SendAndReceiveInBrowser"></a>
#### Webブラウザからの送受信
普段Firefoxブラウザを使っている。  

* Firefoxブラウザへの有効アドオン  
  * [Canvas Defender](https://addons.mozilla.org/ja/firefox/addon/no-canvas-fingerprinting/)  
    トラッキング防止のため(Fingerprint向け)。
    ※今までのCookie利用とは違い、JavaScriptを用いてCanvasからの生成画像による追跡になるため、それを偽物にすることで対策になるんだそうだ(そのため、定期的な作り直しが必須)。  
  * [Evernote Web Clipper](https://addons.mozilla.org/ja/firefox/addon/evernote-web-clipper/)  
  　だいぶ前に利用を停止しているため、削除予定。  
  * [Mailvelope](https://addons.mozilla.org/ja/firefox/addon/mailvelope/)  
    ブラウザ上でPGPを利用するのに便利らしい。  
  * [Random User-Agent (Switcher)](https://addons.mozilla.org/ja/firefox/addon/random_user_agent/)  
    ブラウザの名前・バージョン。オペレーティングシステムの名前(Mac・Windows・Linuxなど)・バージョン。ブラウザに導入済みプラグインなどの偽物を送信する。  
  * [uMatrix](https://addons.mozilla.org/ja/firefox/addon/umatrix/)  
    JavaScriptの無効化。  
  * [Web Threat Shield](https://addons.mozilla.org/ja/firefox/addon/web-threat-shield/)  
    ライセンスを持っていないのに、なぜか入れっぱなし。  

* Firefoxブラウザへの無効アドオン  
  昔使っていたが、今は無効化している一覧(使わなくなった理由は忘れた)。  
  * [Disconnect](https://addons.mozilla.org/ja/firefox/addon/disconnect/)  
    トラッキング防止アドオン(有効でもよさそうだが、未使用にした理由を忘れた)。  
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
> クロスサイトトラッキングCookie（一番上）

を受け入れる設定をした場合、被害に遭うため、ブロックしなければならない。  
<https://support.yahoo-net.jp/SccYjcommon/s/article/H000012099>  
公式Yahooページには、犯罪幇助方法が説明されているってことね。  
**iPhone向けSafariで「サイト越えトラッキングを防ぐ」機能をオフにする**
```text
iOS 11以降では、「サイト越えトラッキングを防ぐ」がオン（有効）になっている場合があります。

「サイト越えトラッキングを防ぐ」がオンになっている場合、Cookie（クッキー）がSafari上に残らなくなります。

Yahoo! JAPANでは、複数のサービスでCookieを使用しているため、「サイト越えトラッキングを防ぐ」をオンにしていると、サービス内の機能が限定されるなど、一部のサービスを利用できません。

以下の手順を参考に、「サイト越えトラッキングを防ぐ」機能をオフにしてからYahoo! JAPANのサービスをご利用ください。
```
上記一部の説明をそのまま貼り付けた。  


<a id="operatingsystemnetwork_mail_SendAndReceiveOnClient"></a>
#### メールクライアントからの送受信
[Thunderbird](https://www.thunderbird.net/ja/)ソフトウェアを利用することにした。  
残念ながら最近利用を始めたため、全く知らないことばかりだ。  
学生時代は、[秀丸メール](https://hide.maruo.co.jp/software/tk.html)を使っていた(名前から分かるとおり、[秀丸エディタ](https://hide.maruo.co.jp/software/hidemaru.html)を作っている会社のメールソフト)。  
社会人になってからは、もっぱらWeb上でメールを送受信していた(いつでもどこでもが魅力だった)。  
学生時代や社会人になってから使っていた時期もちょっとはあったが、Web上からで満足してしまった。  

* 設定(以下以外はデフォルト)  
  よく考えたら本体をインストール後に数ヶ月経過しているため、設定を変更しているかどうか確認できない(変更したかどうかも完全に忘れている)。  
  * 一般  
    変更箇所なし。  
  * 編集  
    変更箇所なし？  
  * プライバシーとセキュリティ  
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
    **IRC**・**Matrix**・**Odnoklassniki**・**XMPP**の4種類が使えるようだ。  


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

* 導入予定アドオン  
  * [Confirm-Address](https://addons.thunderbird.net/ja/thunderbird/addon/confirm-address-5582/)  
    誤送信防止。  
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
  * [FlexConfirmMail](https://addons.thunderbird.net/ja/thunderbird/addon/flex-confirm-mail)  
    誤送信防止(ダウンロードボタンに斜線が入っている理由は何？)。  
  * [External Editor Revived](https://addons.thunderbird.net/ja/thunderbird/addon/external-editor-revived)  
    メール送信ウィンドウでメール本文を記載する方法を外部のエディタに委ねる。  

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
※[元の開発](https://addons.thunderbird.net/ja/thunderbird/addon/importexporttools/)からフォークされた次期バージョン(**NextGen**)ということで、頭文字をとって、**NG**になっているようだ(NGを別の意味で捉えたよ)。  

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

今後条件を変えた場合、ここへの先を忘れるかもしれない。  


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

しかし、私の使い方では機能しないだろうから無効化する。  
また、色はあらかじめ淡い色にしておこうと思う。  
友達や会社の人とやりとりするようになったときに有効化する・・・かな。。。  
なぜに友達や社会人たちはLINEに依存するのだろう(韓国かどこかに個人情報を無償提供して得るもの有るのだろうか)。  


<a id="androidoperatingsystem"></a>
## Android
別途[作業メモ](./Android_作業メモなど何でも詰め込む.md)ファイルあり。  

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
