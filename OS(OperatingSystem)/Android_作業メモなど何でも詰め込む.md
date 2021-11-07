# Android操作作業で得た知見全てをここに記録する。
私の持っている[AndroidOS](https://www.android.com)は、全て携帯電話になる。  
そのため、携帯電話を触ったときの操作が主になることだろう。  
※[Android開発](https://developer.android.com)は、別で記録する。  
※[日本Androidの会](https://www.android-group.jp)があることを始めてしまったよ([@Twitter](https://twitter.com/androidgroup_jp))。  

[個人メモ(総合的な優先度の高いメモ)](#memo99999)  

---
<a id="androidOperatingSystem"></a>
## Android

* バージョン別解説。  
  * [Android8](#android10OperatingSystem)  
  * [Android10](#android10OperatingSystem)  

* アプリケーション別解説。  
  * [Termux](#softwareTermux)  
    現在のGooglePlayバージョンでは利用できない。  


<a id="android10OperatingSystem"></a>
## Android8
いま持っている携帯電話のバージョンは、8.1.0になる。  
古いが、未だに使っている。  
家だけで、しかもWiFi運用なので、あまり使っているとは言いがたいが・・・。  


<a id="android10OperatingSystem"></a>
## Android10
いま持っている携帯電話の最新OSとして使っているバージョンが10になる。  
ちなみに、WindowsOSのバージョンも10だ(そして、11に対応した能力があるようだ)。  


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

以下、手順。  

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


<a id="softwareTermux"></a>
## [Termux](https://termux.com)
AndroidOSで、Linux環境を擬似的に作れるというアプリケーションのひとつ。  
しかも、結構有名になっているため、探せばすぐに見つかる。  
使い方もすぐに見つかる。  


<a name="softwareTermuxstorage"></a>
### ストレージへの可視化
可視化とは言わないが、他のディレクトリへの接続方法として、以下のコマンドにより、可能になる。  
`termux-setup-storage`


<a name="softwareTermuxpackage"></a>
### パッケージ管理
現在のGooglePlayからのバージョンでは利用できなくなっている。  

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
$ echo !?
bash: !?: event not found
$
```

・アップデート
```terminal
$
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


<a name="softwareTermuxinstallok"></a>
### インストール可能にする対応
野良(?)[ソフトウェア](https://f-droid.org/packages/com.termux/)をインストールすることで、Termuxの代替になるそうだ。  
野良とは言え、公式ページのはずなので、利用には問題ないと思う。  


<a id="memo99999"></a>
## 個人メモ(総合的な優先度の高いメモ)


---
ーーー 最終行 ーーー
<!-- vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=markdown expandtab: -->
