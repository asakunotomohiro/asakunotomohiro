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

<a id="operatingsystemcurrentstatus"></a>
## 現状
今は、基本的にMacOSを使っている。  
ゲームなどにはWindows10OS端末を使っている。  
仮想OSでLinuxを動かすこともあったが、今は触っていないのが現状だ。  

携帯電話は、AndroidOSのみになっている。  
昔は、BlackBerryOSだったが、今は昔・・・悲しいよ。  


以上。
<!-- vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=markdown expandtab: -->
