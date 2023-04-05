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

<a id="androidoperatingsystem"></a>
## Android

* 目次  
  * [ローカル端末での暗号化](#androidoperatingsystem_encryptLocal)  

<a id="androidoperatingsystem_encryptLocal"></a>
### Android(ローカル端末暗号化)
当然ながらアプリを使う。  

[Cryptomator](https://cryptomator.org)というソフトウェアなのだが、残念ながらAndroidだけでなく、MacOS・Windows・Linux向けなど多岐に渡る。  
実に素晴らしい。  


<a id="macoperatingsystem"></a>
## MacOS


<a id="windowsoperatingsystem"></a>
## Windows


<a id="linuxoperatingsystem"></a>
## Linux
職場で使うOSだ。  
※学生時代は仮想環境にLinuxをインストールしてプログラミングの勉強をしていたが、社会人になってからMacを利用することになったため、Linux環境が不要になった。  
面白そうなLinuxディストリビューションはインストールして触ったことあるが、それっきりで終わるという・・・(しかも、それが深夜で終わった頃には25時とか26時とか・・・4〜5時間後には起床して通勤するというのに、、、若かった)。  

ここでは重要だが、頻繁に使わないコマンドをまとめようと思う。  
※[grep](../検索利用メモ/正規表現の勉強_作業メモなど何でも詰め込む.md)・[awk](../ドキュメント作成技法/sedとawk_作業メモなど何でも詰め込む.md)・[sed](../ドキュメント作成技法/sedとawk_作業メモなど何でも詰め込む.md)・[find](../検索利用メモ/findの勉強_作業メモなど何でも詰め込む.md)などなどの主要なコマンドは別資料にまとめている(二重管理するつもりはないが、別に分けるのも難しい状況で困る)。  


<a id="unixoperatingsystem"></a>
## UNIX


<a id="operatingsystemnetwork"></a>
## ネットワーク利用

* 目次  
  * [VPN](#operatingsystemnetwork_vpn)  
  * [PGP](#operatingsystemnetwork_pgp)  

<a id="operatingsystemnetwork_vpn"></a>
### VPN
パソコンからの利用は気にしていないのだが、BlackBerry端末以外の携帯電話からのネットワーク利用は、情報漏洩が気になってしまう。  
今更感はあるが・・・。  
と言うことで、VPNを利用しようと思う。  

中国製の携帯電話は、、、なかなか・・・日本産も最近では怪しいからな。  

とは言え、金を掛けたくないため、無料のVPNを利用することにした。

無料で有名なのは、[VPN Gate](https://www.vpngate.net/ja/)らしく、無料開放されている。  
とは言え、[不正利用防止の取り組み](https://www.vpngate.net/ja/about_abuse.aspx)として通信ログを記録しているため、VPNとは何ぞやという感じになってしまうが・・・。  
金を掛けられないため、仕方ない。  


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
他に紹介しているソフトウェアは、[GPG Keychain](https://gpgtools.org)と言うツールなのだが、よく分かっていない(が、とりあえずインストールしている)。  
そして、2種類のうち、後者のGPGKeychainは、有料だが、何に金を払えばいいのかいまいち分かっていない(そして、支払いせずに使えている)。  
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
鍵の有効期間は? (0)
鍵は無期限です
これで正しいですか? (y/N) y

GnuPGはあなたの鍵を識別するためにユーザIDを構成する必要があります。

本名: asakunotomohiro	←☆メール受信者が識別できる名前が望ましい。
電子メール・アドレス: asakunotomohiro@pgp.asakunotomohiro.ml	←☆そのまま。
コメント: pgp@mail	←☆必要なのか不明だが、私が他のPGPメールアカウントと区別できるコメントを付けた。
あなたは文字集合'utf-8'を使っています。
次のユーザIDを選択しました:
    "asakunotomohiro (pgp@mail) <asakunotomohiro@pgp.asakunotomohiro.ml>"

名前(N)、コメント(C)、電子メール(E)の変更、またはOK(O)か終了(Q)? O
たくさんのランダム・バイトの生成が必要です。キーボードを打つ、マウスを動か
す、ディスクにアクセスするなどの他の操作を素数生成の間に行うことで、乱数生
成器に十分なエントロピーを供給する機会を与えることができます。
gpg: 失効証明書を '/Users/asakunotomohiro/.gnupg/openpgp-revocs.d/59296979596919C949D969E919B979E979798949.rev' に保管しました。
公開鍵と秘密鍵を作成し、署名しました。

pub   ed25519 2023-01-06 [SC]
      58286878586818C848D868E818B878E878788848
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
sec  ed25519/1EBD72E572718D44
     作成: 2023-01-06  有効期限: 無期限      利用法: SC
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
鍵の有効期間は? (0)
鍵は無期限です
これで正しいですか? (y/N) y
本当に作成しますか? (y/N) y
たくさんのランダム・バイトの生成が必要です。キーボードを打つ、マウスを動か
す、ディスクにアクセスするなどの他の操作を素数生成の間に行うことで、乱数生
成器に十分なエントロピーを供給する機会を与えることができます。

sec  ed25519/1E7D727572717D74
     作成: 2023-01-06  有効期限: 無期限      利用法: SC
     信用: 究極        有効性: 究極
ssb  cv25519/F6C67696465606D6
     作成: 2023-01-06  有効期限: 無期限      利用法: E
[  究極  ] (1). asakunotomohiro (pgp@mail) <asakunotomohiro@pgp.asakunotomohiro.ml>

gpg> save	←☆この保存を忘れないこと(同時に終了する)。
$
```
副鍵が作成できたかどうかは、`gpg -k`にて確認できる。  

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


sec  ed25519/1E7D727572717D74 2023-01-06 asakunotomohiro (pgp@mail) <asakunotomohiro@pgp.asakunotomohiro.ml>

この鍵を鍵リングから削除しますか? (y/N) y	←☆主鍵の削除。
これは秘密鍵です! 本当に削除しますか? (y/N) y
gpg: 秘密副鍵: の削除に失敗しました: 操作がキャンセルされました	←☆副鍵を使うため、残しておく必要がある(故に削除キャンセル)。
gpg: asakunotomohiro@pgp.asakunotomohiro.ml: delete key failed: 操作がキャンセルされました
$
```

</details>

使い方は後日。  


<a id="operatingsystemcurrentstatus"></a>
## 現状
今は、基本的にMacOSを使っている。  
ゲームなどにはWindows10OS端末を使っている。  
仮想OSでLinuxを動かすこともあったが、今は触っていないのが現状だ。  

携帯電話は、AndroidOSのみになっている。  
昔は、BlackBerryOSだったが、今は昔・・・悲しいよ。  


以上。
<!-- vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=markdown expandtab: -->
