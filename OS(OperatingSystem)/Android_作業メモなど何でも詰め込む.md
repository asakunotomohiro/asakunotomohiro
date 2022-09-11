# Android操作作業で得た知見全てをここに記録する。
私の持っている[AndroidOS](https://www.android.com)は、全て携帯電話になる。  
そのため、携帯電話を触ったときの操作が主になることだろう。  
※[Android開発](https://developer.android.com)は、別で記録する。  
※[日本Androidの会](https://www.android-group.jp)があることを始めてしまったよ([@Twitter](https://twitter.com/androidgroup_jp))。  

[個人メモ(総合的な優先度の高いメモ)](#memo99999)  

---
<a id="androidOperatingSystem"></a>
## Android
一応は五苦九苦しながら八転九倒したことを記録しているが、環境構築は別リポジトリに存在しているため、そちらを見ておけば何かしらの参考になる・・・だろう。  

* 必須設定。  
  * GooglePlayアプリの設定。  
    * ネットワーク設定：「**アプリの自動更新しない**」を選ぶ。  
    * アプリ購入時の生体認証不可。  
    * アプリ購入時は常に認証を求める。  
  * 個々のアプリ設定。  
    * 基本的に、WiFiのみで接続するように見直す。  
    * Digital Wellbeingツールでのアプリ使用時間設置(以下のは全て0分)  
      * アシスタント  
      * Go Compiler  
      * Google TV  
      * YouTube  
      * YT Music  

* バージョン別解説。  
  もしかしたら端末固有かもしれないが、、、  
  * [Android8](#android10OperatingSystem)  
  * [Android10](#android10OperatingSystem)  
  * [Android11](#android11OperatingSystem)  

* アプリケーション別解説。  
  * [Termux](#softwareTermux)  
    現在のGooglePlay版では利用できない。  
    その代わりに[F-Droid](https://f-droid.org)と言うGooglePlayの無法地帯版を導入後に、[Termux](https://f-droid.org/packages/com.termux/)をインストールする。  
  * [DroidVim](#softwareDroidvim)  
    現在のGooglePlay版に存在する。  
  * [QuickEditプロ](#softwareQuickeditpro)  
    テキストエディタ  
  * [AquaMozc](#softwareAquamozcrimtitan)  
    IME。  


<a id="android10OperatingSystem"></a>
## Android8
いま持っている携帯電話のバージョンは、8.1.0になる。  
古いが、未だに使っている。  
家だけで、しかもWiFi運用なので、あまり使っているとは言いがたいが・・・。  


<a id="android10OperatingSystem"></a>
## Android10
WindowsOSのバージョンも10だ。  
microSDカードの[認識が変わる](#android10peratingsystem2microsdcard4adb)ようだ。  


<a name="android10peratingsystem2microsdcard4adb"></a>
### microSDカードの内部ストレージ化
この対応不要。  
外部ストレージだけで、ソフトウェアの保存先をMicroSDカードにできる。  

今まで普通に使えていたmicroSDカードが認識しなくなった。  
壊れたのかと思ったが、OSバージョンを上げたことで認識しなくなったため、仕様変更が入ったと思い、調べた。  
む〜ん。  
外部ストレージのみ対応になったようだ？  
調べた割に、よく分からない。  
しかし、`adb`と言うコマンドを使うことで、強制的にできるようだ(きっと・・・)。  

当たり前だが、パソコン(Mac・Windows・Linux)及び携帯電話に接続できるUSBケーブルがあること。  

<details><summary>作業記録。</summary>

今となっては不要作業であり、無駄な記録になってしまったはずだが、消すのも面倒くさいので残すことにした。  

* Mac端末側の操作　その1  
  * [**Android SDK**](https://developer.android.com/studio)を入手する。  
    もしかしたらこれだけでは動かないかもしれない。  
    ※私の環境は、ある程度整っているため、これだけの入手で動く。  
    そのなかでもadbだけが欲しい。  
  * OSに合わせて入手する。  
    私は、[SDK Platform-Tools for Mac](https://developer.android.com/studio/releases/platform-tools)を入手。  
    現時点でのバージョンは、**31.0.3(2021年8月)** とのこと。  

* Android10端末側の操作　その1  
  1. **設定**を開く。  
  1. **デバイス情報**を開く。  
  1. **ビルド番号**を複数回タップする。  
     この操作により、**開発者向けオプション**が有効になる。  

* Android10端末側の操作　その2  
  1. **設定**を開く。  
  1. **システム**を開く。  
  1. **詳細設定**を開く。  
  1. **開発者向けオプション**を開く。  
  1. **デバッグ**項目の**USBデバッグ**を有効化する。  
     ※パソコンと携帯電話間でのデータコピーなどが可能になる。  
     * **モバイルデータを常にONにする**  
       OFFにしてみた(そもそもこれ何？)。  
     * **デザリング時のハードウェア アクセラレーション**  
       OFFにしてみた(そもそもこれ何？)。  
     * **外部ストレージへのアプリの書き込みを許可**  
       機会があればOnにしたい(そもそもこれ何？)。  

* Android10端末側の操作　その3  
  * パソコンと接続する。  
    **USBデバッグを許可しますか？** に、**許可**をタップ。  

* Mac端末側の操作　その2  
  * 以下のコマンドを打ち込む。  

```terminal
$ ./adb shell	←☆Path通しをしていないため、カレントディレクトリにあることを示して実行。
Titan:/ $ sm list-disks	←☆マイクロSDカード容量の確認。
disk:179,128
Titan:/ $ sm partition disk:179,128 private	←☆その全容量を内部ストレージとして割り当てる。
Titan:/ $ exit	←☆無事に抜け出る。
$
```

* Android10端末側の操作　その4  
  * 無事にmicroSDカードを認識したかどうかを確認する。  
    私の場合は、512GB用を認識しているのだが、なぜか20.43GBが使用されている状態で認識されている。  
    そのうち15GBは、システムとして割り当てられており、アプリとキャッシュデータには0GBだ。  
    おかしいだろう・・・。  
    20GB以上の使用もおかしいことだが、15GBの割り当てのうち5GBが未割り当てなのに割り当て済みって・・・。  
  1. **設定**を開く。  
  1. **システム**を開く。  
  1. **詳細設定**を開く。  
  1. **開発者向けオプション**を開く。  
  1. **開発者向けオプション**を**Off**に切り替える。  
  1. **設定**⇒**システム**⇒**開発者向けオプション**が消えていることを確認すること。  

* Android10端末側の操作　その5  
  あとは好みでmicroSDカードを使い倒していけば良い。  
  例えば、**Kindle**アプリケーションのユーザデータが**72GB**使用しているため、移動するとか・・・。  
  んで、移動後のサイズを確認したらほぼ変わらず・・・何でだよ。  
  内部ストレージに72GB近くが残ったままで、microSDカードには、300MB近くが移動しただけ・・・何のために何時間も掛けてmicroSDカードの認識方法を調べたと思っているよ・・・悲しい。  
  そもそもキンドルアプリの設定項目に**SDカードにダウンロード**がない。  
  ⇒原因は、フォーマット形式にあった。  
  AndroidOSが認識できるMicroSDカードのフォーマット形式があるようだ。  
  どれが正しいのか分からないが、AndroidOSでのフォーマットでの(今回の開発者向けオプション有効化)作業は認識しなかった。  
  正確には認識したのだが、使える認識方法では無かった。目の前にあるのにないという現象だ。  
  次に試したのが**exFAT**形式フォーマットのアロケーションユニットサイズが**128KB**だ。  
  駄目だった。  
  ⇒原因は、フォーマット形式にあった。  
  次に試したのが**FAT**形式フォーマットのアロケーションユニットサイズが**512バイト**だ。  
  駄目だった。  
  ⇒原因は、フォーマット形式にあった。  
  次に試したのが**exFAT**形式フォーマットかつ、内部ストレージ化ではなく、普通に外部ストレージとして認識させた。  
  駄目だった。  
  ⇒原因は、フォーマット形式にあった。  
  次に試したのが他のAndroid端末でのフォーマットだ。  
  フォーマット形式は不明だが、何とかなった。  
  駄目だった。  
  ⇒原因不明。  
  解決策が分からない。  
  しかし、どのフォーマット形式にも共通なのは、最初のダウンロードは問題ないこと。  
  大量にダウンロードすることで、それまで問題なくダウロードしたキンドル本が全て消えてしまう現象に遭遇する。  
  逆に言えば、欲張らず、必要分すら我慢して数冊分のみダウンロードすれば問題ないと言うこと。  
  ダウンロード環境には問題あるが、とりあえず生活に問題ないぐらいの書籍を取得しておけばいいだろう。  
  きっとね。  
  Kindleソフトウェアに問題があると思うが、どうしようもない。  
  それとも本当にMicroSDカードに問題があるか・・・物理的に問題があるように思えないのだがな・・・。  
  Kindleソフトウェアへの対応を諦め、GoogleBookソフトウェアの本をダウンロードすることにした。  
  そして、Android10端末が固まり、勝手に再起動することになり、そして、起動中の画面から先に進まないという・・・何でだよ。  
  仕方なく、MicroSDカードをWindows端末に接続させた。  
  要は、Android開発からMicroSDカードを抜き取ったと言うことなので、正常に起動した(MicroSDカードが原因と言うことか)。  
  そして、Windows端末では、MicroSDカードを認識できず、固まるという・・・。  


* ちなみに、**adb**は、[Homebrew](https://brew.sh/index_ja)にはない。  

以下、その作業。
```terminal
$ brew install adb
Updating Homebrew...
Warning: No available formula or cask with the name "adb". Did you mean arb, gdb, cdb or sdb?
==> Searching for similarly named formulae...
These similarly named formulae were found:
mariadb                     mariadb@10.2                qt-mariadb                  sdb
mariadb-connector-c         mariadb@10.3                arb
mariadb-connector-odbc      mariadb@10.4                gdb
mariadb@10.1                mariadb@10.5                cdb
To install one of them, run (for example):
  brew install mariadb
==> Searching for a previously deleted formula (in the last month)...
Error: No previously deleted formula found.
==> Searching taps on GitHub...
Error: No formulae found in taps.
$
$ ./adb --version
Android Debug Bridge version 1.0.41
Version 31.0.3-7562133
Installed as /Users/asakunotomohiro/Desktop/platform-tools/./adb
$
```
そもそも**adb**単体でのインストール指定が問題だったのかもな。  

</details>


<a id="android11OperatingSystem"></a>
## Android11
いま持っている携帯電話の最新OSとして使っているバージョンが11になる。  
WindowsOSのバージョンは10だが、11に対応した能力を備えている(対応させないのならば、だから何だって話だが)。  


<a id="android11OperatingSystemosreinstall"></a>
### 端末再インストール
以下のメモはすべてお釈迦になった(復元した場合、本当に復元される)。  
まさか、復元したくないものまで復元されるとは・・・別途取捨選択させて欲しい。  

* Googleアカウントログイン直後にインストーするアプリ一覧。  
  * 既存アプリの更新  
  * BlackBerry ランチャー  

* 手順  
  1. ~~上記アプリ導入後、全て起動する。~~  
     ~~利用規約に同意するのも目的のひとつ。~~  
  1. ~~端末再起動。~~  
  1. ~~「アプリとデータのコピー」実施。~~  
     1. ~~「データの引き継ぎ-クラウドのバックアップ」~~  
     1. ~~同端末の当時の最新版のバックアップを選ぶ。~~  
     1. ~~復元対象の選択。~~  
        * ~~「アプリ」のみ。~~  
        * ~~「連絡先・SMSメッセージ・通話履歴・デバイスの設定」不要。~~  

* 既存のアプリ一覧。  
  * IME  
    * AquaMozc for Titan  
    * ATOK  
    * Hacker's Keyboard  
  * エディタ  
    * QuickEditプロ  
    * Jota+  
    * Go Compiler  
    * Pydroid 3  
    * DroidVim  
    * ezPDF Reader  
  * 通信  
    * Firefox  
    * Signal  
    * Telegram  
    * VK Mail  
    * AOL  
    * GitHub  
    * ONE  
  * 生活補助  
    * Remember The Milk  
    * To Do  
    * Todoist  
    * Toggle Track  
    * ループ習慣トラッカー  
    * Y!天気  
    * スマートアラーム  
    * WriteNote Pro  
    * Starbucks  
    * 映画.com  
    * Foursquare  
    * Kindle  
    * Google Book  
    * Google レンズ  
    * Google 翻訳  
  * SNS  
    * Reddit  
    * Slack  
    * Twitter  
    * Instagram  
  * ゲーム  
    * Steam  
    * Shredder Chess  
    * Swarm  
    * シムシティ  
  * その他  
    * ファイルマネージャ  
    * BlackBerry ランチャ  
      BlackBerry Hub+ サービスも自動でインストールされるようだ。  

<a id="softwareTermux"></a>
## [Termux](https://termux.com)
AndroidOSで、Linux環境を擬似的に作れるというアプリケーションのひとつ。  
しかも、結構有名になっているため、探せばすぐに見つかる。  
使い方もすぐに見つかる。  


<a name="softwareTermuxstorage"></a>
### ストレージへの可視化
他のディレクトリへの接続方法として、以下のコマンドにより、可能になる。  
`termux-setup-storage`


<a name="softwareTermuxpackage"></a>
### パッケージ管理
現在のGooglePlayからのバージョンでは利用できなくなっている。  

<details><summary>GooglePlay版の操作。</summary>

完全にゴミ記録。  

・アップグレード
```terminal
$ pkg upgrade
Testing the available mirrors:
[*] https://dl.bintray.com/termux/termux-packages-24: bad
[*] https://grimler.se/termux-packages-24: ok
[*] https://main.termux-mirror.ml: ok
[*] https://termux.mentality.rip/termux-packages-24: ok
Picking mirror: https://main.termux-mirror.ml
Ign:1 https://dl.bintray.com/grimler/game-packages-24 games InRelease
Ign:2 https://dl.bintray.com/grimler/science-packages-24 science InRelease
Err:3 https://dl.bintray.com/grimler/game-packages-24 games Release
  403  Forbidden
Ign:4 https://main.termux-mirror.ml stable InRelease
Err:5 https://dl.bintray.com/grimler/science-packages-24 science Release
  403  Forbidden
Err:6 https://main.termux-mirror.ml stable Release
  Redirection from https to 'http://ww38.main.termux-mirror.ml/dists/stable/Release' is forbidden
Reading package lists... Done
E: The repository 'https://dl.bintray.com/grimler/game-packages-24 games Release' does not have a Release file.
N: Metadata integrity can't be verified, repository is disabled now.
N: Possible cause: repository is under maintenance or down (wrong sources.list URL?).
E: The repository 'https://dl.bintray.com/grimler/science-packages-24 science Release' does not have a Release file.
N: Metadata integrity can't be verified, repository is disabled now.
N: Possible cause: repository is under maintenance or down (wrong sources.list URL?).
E: The repository 'https://main.termux-mirror.ml stable Release' does not have a Release file.
N: Metadata integrity can't be verified, repository is disabled now.
N: Possible cause: repository is under maintenance or down (wrong sources.list URL?).
$
```

・アップデート
```terminal
$ pkg update
Checking availability of current mirror: ok
Ign:1 https://dl.bintray.com/grimler/game-packages-24 games InRelease
Ign:2 https://dl.bintray.com/grimler/science-packages-24 science InRelease
Err:3 https://dl.bintray.com/grimler/game-packages-24 games Release
403  Forbidden
Ign:4 https://main.termux-mirror.ml stable InRelease
Err:5 https://dl.bintray.com/grimler/science-packages-24 science Release
403  Forbidden
Err:6 https://main.termux-mirror.ml stable Release
Redirection from https to 'http://ww38.main.termux-mirror.ml/dists/stable/Release' is forbidden
Reading package lists... Done
E: The repository 'https://dl.bintray.com/grimler/game-packages-24 games Release' does not have a Release file.
N: Metadata integrity can't be verified, repository is disabled now.
N: Possible cause: repository is under maintenance or down (wrong sources.list URL?).
E: The repository 'https://dl.bintray.com/grimler/science-packages-24 science Release' does not have a Release file.
N: Metadata integrity can't be verified, repository is disabled now.
N: Possible cause: repository is under maintenance or down (wrong sources.list URL?).
E: The repository 'https://main.termux-mirror.ml stable Release' does not have a Release file.
N: Metadata integrity can't be verified, repository is disabled now.
N: Possible cause: repository is under maintenance or down (wrong sources.list URL?).
$
```

・ソフトウェアインストール失敗
```terminal
$ pkg install openssh
Checking availability of current mirror: ok
Reading package lists... Done
Building dependency tree... Done
E: Unable to locate package openssh
$ pkg install git
Checking availability of current mirror: ok
Reading package lists... Done
Building dependency tree... Done
E: Unable to locate package git
$
```
どうやら、Adroid10向けに対応できていないのが原因で、今後はGooglePlayからインストールしたTermuxは使い物にならないそうだ。  
残念だ。  

</details>


<a name="softwareTermuxinstallok"></a>
### インストール可能にする対応
野良(?)[ソフトウェア](https://f-droid.org)をインストールすることで、利用可能な[Termux](https://f-droid.org/packages/com.termux/)もインストールできる。  
野良とは言え、公式ページ(?)のはずなので、利用には問題ないと思う。  
それでも無法地帯であるには変わらないため、あるからという理由でバカチョン導入したらえらい目に遭うだろう。  
そして、[GooglePlay](https://play.google.com)の場所にあるソフトウェアも安全が保証されているわけでは無いため、どっこいどっこいであるため、欲しいのは手にいれて使おう。  

とりあえずインストール方法はインターネット上にあるため、それを参考にインストールすること。  

インストールを間違えた場合は、パッケージのアップデートなどで気づく。  

<details><summary>エラーメッセージ。</summary>

以下、**apt update**を実行後の内容。
```text
Get:1 https://deb.kcubeterm.me/termux-main stable InRelease [507 B]
Err:1 https://deb.kcubeterm.me/termux-main stable InRelease
  Clearsigned file isn't valid, got 'NOSPLIT' (does the network require authentication?)
Reading package lists... Done
E: Failed to fetch https://deb.kcubeterm.me/termux-main/dists/stable/InRelease  Clearsigned file isn't valid, got 'NOSPLIT' (does the network require authentication?)
E: The repository 'https://deb.kcubeterm.me/termux-main stable InRelease' is not signed.
N: Metadata integrity can't be verified, repository is disabled now.
N: Possible causes: unstable or tampered Internet connection, wrong sources.list, outdated keyring or host is down currently.
N: Please note that all hosting problems or other serious issues we announce on our social media pages.
N: Use termux-change-repo for switching to a mirror.
```

</details>

<details><summary>正常メッセージ。</summary>

上記コマンド。
```text
Get:1 https://packages.termux.dev/apt/termux-main stable InRelease [14.0 kB]
Get:2 https://packages.termux.dev/apt/termux-main stable/main aarch64 Packages [436 kB]
Fetched 450 kB in 3s (174 kB/s)
Reading package lists... Done
Building dependency tree... Done
49 packages can be upgraded. Run 'apt list --upgradable' to see them.
```

</details>

何が原因か分からないが、ダウンロードディレクトリからのインストールではなく、FDroidアプリからインストールをする必要があるようだな。  


<a name="softwareTermuxshortcutkey"></a>
### ショートカットキー
[公式(?)wikiページ](https://wiki.termux.com/wiki/Touch_Keyboard)に記載あり。

* 私が必須で使いたいキー  
  むしろ、他のショートカットキーも知っておくべきだろう。  
  以下、ボリューム上げキーとの組み合わせ。  
  * **+Q**：メニューバーの表示トグル  
    正確にはツールバーというようだ。  
  * **+E**：Escキー。  
  * **+T**：Tabキー。  
  * **+A**：←矢印キー。  
  * **+S**：↓矢印キー。  
  * **+W**：↑矢印キー。  
  * **+D**：→矢印キー。  
  * **+L**：パイプキー(`|`)。  
  * **+H**：チルダキー(`~`)。  
  * **+U**：アンダースコアキー(`_`)。  


<a id="softwareDroidvim"></a>
## [DroidVim](https://play.google.com/store/apps/details?id=com.droidvim)
AndroidOSで、Vim環境を擬似的に作れるというアプリケーションのひとつ。  
しかも、結構有名になっているため、探せばすぐに見つかる。  
使い方もすぐに見つかる。  

シェルも使えるが、当然のように[**BusyBox**](https://busybox.net)であるため、出来ることは少ない。  


<a name="softwareDroidvimstorage"></a>
### ストレージへの可視化
他のディレクトリへの接続方法として、以下のボタン押下により、可能になる。  
`MANAGE_EXTERNAL_STORAGES`  
※[設定]画面-[シェル]画面にある。  

そして、内蔵ではなく、外部SDカード(microSD)などに対して有効なのかもしれない。  
ない場合、ドキュメントディレクトリやダウンロードディレクトリなどに接続できない。  


<a name="softwareDroidvimime"></a>
### 日本語入力方法。
ATOKでは文節区切りの変換が出来ないため、利用は論外(買い切り版)。  
[AquaMozc](https://play.google.com/store/apps/details?id=jp.gr.aqua.mozc)であれば可能だが、1回目の入出力では英字入力のみになるため、何度かの入力を試みる必要が発生する(1回目の入力で出来ないからという理由で諦めるな)。  
また、全てのOS向けに対応しているかも不明([KeyOne](http://foxinc.jp/blackberry/device/keyone)・[無印Titan](https://www.kickstarter.com/projects/jellyphone/titan-unihertz-rugged-qwerty-smartphone)は問題なく利用できた)。  


<a name="softwareDroidvimpackage"></a>
### パッケージ管理
現在のGooglePlayからでも利用できる。  
[追加メニュー]画面-[Git/Python]を選ぶ。  
もしくは、[Markdown to Html]を選ぶ。  
通常は全て取得すれば良い(どれも有料)。  

* 一覧  
  どれもGooglePlayから取得する。  
  * Git - arm64  
    **curl**も利用可能になるそうだ。  
    現時点でのバージョンは、**2.29.2**。  
  * Python - arm64  
    現時点でのバージョンは、**3.8.7**。  
  * Md2Html - arm64  
    **[Markdown to Html]**メニューを選んだときにインストールされる。  

せっかくならば、Perlを使えるようにして欲しかったぞ。  


<a id="softwareQuickeditpro"></a>
## [QuickEdit](https://play.google.com/store/apps/details?id=com.rhmsoft.edit)
素晴らしいエディタ。  
そして、設定変更はない。  
すべてデフォルトで問題ない。  

* 設定  
  * フォルダの引き出し：On  
  * オートインデント：On  
  * ファイルフィルター：On  
  * セッションをレジューム：On  
  * 行番号：On  
  * 以下、Off。  
    * ワードラップ  
    * 戻るボタンで元に戻す  
    * 自動大文字変換  
    * アクセサリー表示  
    * 自動保存  
    * 全画面表示  


<a id="softwareAquamozcrimtitan"></a>
## [AquaMozc](https://play.google.com/store/apps/details?id=jp.gr.aqua.mozc)
素晴らしいIME。  
ノーマルのAquaMozcはBlackBerry用だが、[Titan](https://play.google.com/store/apps/details?id=jp.gr.aqua.mozc.titan)もある。  

* BlackBerry用の設定  
  * キーマップの設定  
    システム配列  
  * 変換候補の表示位置  
    入力文字列直下：Key2  
    画面最下端：KeyOne  
  * チェックボックスOn  
    * 英数字直接入力  
    * symキーをスペースキーとして使用  
    * キー押下時ポップアップ  
  * 入力キーボード  
    QWERTY  
  * フルスクリーンモード  
    横画面で有効にする  
  * キーボードテーマの選択  
    マテリアル デザイン(ライト)  

* Titanシリーズ用の設定  
  * キーマップの設定  
    設定項目自体なし。  
    システム配列  
  * 変換候補の表示位置  
    入力文字列直下  
  * チェックボックスOn  
    * 英数字直接入力  
    * キー押下時ポップアップ  
    * シフトとCtrlキーを交換：Slim  

なぜに設定をファイルに出力できないのだろう。  


<a id="memo99999"></a>
## 個人メモ(総合的な優先度の高いメモ)


---
ーーー 最終行 ーーー
<!-- vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=markdown expandtab: -->
