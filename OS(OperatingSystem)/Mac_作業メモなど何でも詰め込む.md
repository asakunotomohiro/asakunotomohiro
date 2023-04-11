# Mac操作作業で得た知見全てをここに記録する。
私の持っている[MacOS](https://www.apple.com)は、4〜5年周期で買い換えている。  
しかし、初期のMacOSも現役で使っているため、比較しようと思っている。  
セキュリティを考え、ネットワークに繋いでないが・・・。  

[個人メモ(総合的な優先度の高いメモ)](#memo99999)  

---
<a id="macOperatingSystem"></a>
## MacOS
複数のOS([バージョン](https://support.apple.com/en-us/HT201260))を持っている。  

今後は、Appleシリコン向けのOSを使うことになるだろう。  
現在所持している最新版は、**[macOS Monterey(Ver12.4)](https://www.apple.com/jp/macos/monterey/)** になっている(今後メインで使いたい)。  
現在所持している最古版は、**macOS Sierra(Ver10.12.6)** になっている(オフライン専用)。  

* 目次。  
  * [macOS新規利用前の設定変更](#macOperatingSystemsetting)  
  * [macOSを再インストールする方法](#macOperatingSystemreinstall)  
  * [コマンド](#macOperatingSystemreorder)  
    * [一般コマンドの導入](#macOperatingSystemreorder_coreutils)  
      Linuxには標準で入っているコマンドをMacに導入する。  
    * [ユーザ一覧表示](#macOperatingSystemreorder_dscl-list)  
      詳細には踏み込まず。  
    * [ユーザ新規追加](#macOperatingSystemreorder_dscl-create)  
      未調査。  



<a id="macOperatingSystemreinstall"></a>
### macOSを再インストールする方法
環境設定をやり直すためにも再インストールする。  
[公式ページ](https://support.apple.com/ja-jp/HT204904)  
納得できるまで再インストールするつもりだ(学生時代は三日にあげずOS再インストールしていたからな)。  

* CPU種類  
  * [Appleシリコン](#macOperatingSystemreinstallsilicon)  
    Apple自家製のCPU(今後はこのCPUを利用していくのだろう)  
  * [Intelプロセッサ](#macOperatingSystemreinstallintel)  
    遺物(WindowsOS上では現役)。  


<a id="macOperatingSystemsetting"></a>
### macOS新規利用前の設定変更
新規に端末を入手する。もしくは、OS再インストールした場合、使い勝手が悪い。  
そのため、最低限の設定をここに記す。  

* 設定項目  
  * システム環境設定関係。  
    * キーボードのショートカット：入力ソースを**command + スペース**に変えること。  
    * Touch ID：使用しない(うかつに支払いできないようにするためでもある)。  
    * Bluetooth名変更：共有画面で変更できる。  
    * Dockとメニューバー：バッテリーの割合を表示させる。  
    * セキュリティーとプライバシー  
      * 一般：パスワード要求までの時間を変更。  
      * FileVault：有効。  
      * ファイアウォール：有効。  

* インストールソフトウェア  
  * 基本は、[dotfiles-リードミーファイル](https://github.com/asakunotomohiro/dotfiles)に記載済み。  
  * Xcodeは必須([App Store](https://developer.apple.com/jp/xcode/)から導入可能)。  
    * 芋づる式に導入されるソフトウェア：Git v2.32.1  
  * Keynote  
  * Numbers  
  * Pages  
  * iMovie  
    必要か？  

* **git clone**  
  ※**makeLinkfile**の実行でgitconfigを定着させた後に、再度**git clone**を実行する必要がある。  
    macなどでは不要だろうが、Windowsの場合は勝手に改行を変更する仕様のため、macも万が一を考えて行動した方が良いだろう。  
    `git config --global core.autocrlf false`で、解決できるけど。  

* 作業ディレクトリの作成。  
  * 書類ディレクトリ配下に、今回などのgit関連を配置する。  
    ※配置場所は端末ごとに変わるだろう(よくよく考えなければ使いにくく邪魔くさい場所に常設することになる)。  

以下、ディレクトリ構成例）
```text
+--書類ディレクトリ/
   +--asakunotomohiro/
   |  +--公的アカウント/
   |  +--私的アカウント/
   |  \--ローカル/
   +--他サービス(会社とか？)/
      +--公的アカウント/
      +--私的アカウント/
      \--ローカル/
```
派遣である以上、会社データを個人端末に入れることは無いけどね。  

---

<a id="macOperatingSystemreinstallsilicon"></a>
#### appleシリコン用macOS再インストール方法
当たり前だが、公式の説明に従う。  

SDDのフォーマット形式：APFS  
※APFSとは、Apple File Systemのこと。  


> Macの電源を入れ、起動オプションのウインドウが表示されるまで電源ボタンをそのまま押し続けます。「オプション」というラベルの付いたギアマークのアイコンをクリックし、「続ける」をクリックします。

注意事項は、キーボードを触っただけで電源が入ってしまうこと。  
そのため、その時は、再度電源を落としてからやり直す必要がある。  

<details><summary>失敗作業記録。</summary>

もしかして、この手順も準備としてやっとく必要があるとか？  
まさかね。  

* 手順  
  1. 電源ボタンを押し続ける。  
  1. 「起動オプション」を表示するには電源ボタンを押し続けるようなメッセージが出るため、指示に従う。  
  1. オプションボタンを選択する(**続ける**を選び、**macOS復旧**画面が表示されるまで待つ)。  
  1. **macOS Montereyを再インストール**を選ぶ。  
     ※データは削除されないようだ(ならば、なぜインストールし直す？)。  
  1. 使用許諾契約の条約に同意する必要がある。  
  1. **Macintosh HD**を選ぶ。  
     ※**Preboot**は選べない。  
     ※復旧のためにユーザ名とパスワードの入力を求められる。  
     ※時間かかる(私の環境で~~1h30mほど~~ 30分前後でインストール完了)。  
     　残り1分が表示されてから終わるまで数分間待たされる。  
     ※省エネルギー設定を有効にしていた場合、再インストール時にも有効になったままなので、画面が暗くなる。  
     ~~また、インストール終了後は画面が真っ黒になるが、立ち上がるまで放置しておくこと~~。  
     * 話にならない。  
       まじで何のために再インストールしたのかわからない(本当にデータが消えずに、前回の状態が残っている)。  
       要は、やり直し。  
       何度やり直しても駄目だった。  
       Mac再起動後に設定アシスタントが立ち上がって(起動して)くれない。  

</details>

* 手順  
  ※工場出荷状態に戻す。  
  [Macを売却、譲渡、下取りに出す前にやっておくべきこと](https://support.apple.com/ja-jp/HT201065)  
  * 参考：[Macのすべてのコンテンツと設定を消去する](https://support.apple.com/ja-jp/HT212749)  
  1. 画面の左上隅にあるAppleメニューから「**システム環境設定**」を選択する。  
  1. メニューバーの「**システム環境設定**(要は、画面の左上隅の右隣)」メニューから「**すべてのコンテンツと設定を消去...**」を選択する。  
  1. **消去アシスタント**画面表示にて、管理者としてパスワード入力を行う。  
     * バックアップなどを聞かれるかも？  
  1. **すべてのコンテンツと設定を消去**画面にて、削除される項目目視後に、続けるボタン押下。  
     * **AppleIDからのサインアウトを案内される**ようだ。  
  1. **このMacからすべてのコンテンツと設定を消去しようとしています。**画面表示。  
     当然消去することに同意する(同意ボタンとかでは無いけど)。  
  1. 再起動する。  
     * Bluetooth機器を有効化するように促される画面が出る(かも？)。  
  1. 言語選択の画面が表示されたら工場出荷状態になった証。  
     * 売却などをする場合は**command + Q**押下にて終了する(1回のみ有効になるため、2回目以降は電源ボタン押下)。  

ちなみに、Appleシリコンのシリコンは、元素のケイ素のこと(のはず)。  
合成高分子化合物の総称を刺しているのでは無い(はず)。  


<a id="macOperatingSystemreinstallintel"></a>
#### intel用macOS再インストール方法
当たり前だが、公式の説明に従う。  
[ディスクユーティリティを使って Intel 搭載の Mac を消去する](https://support.apple.com/ja-jp/HT208496)  

HDDのフォーマット形式：HFS+  
HFS+とは、Mac OS拡張フォーマットのこと。


* HDDフォーマット手順  
  1. Macの電源を入れてすぐに「**command+R**」キーを長押し。  
  1. ユーティリティウインドウで「**ディスクユーティリティ**」を選択し、「続ける」。  
     この前段階でユーザ名・パスワード入力を求められるそうだが、私の時は何も聞かれなかった。  
  1. メインハードディスクを消去する。  
     私の環境でのハードディスク名は、「**Macintosh**」と表記されている(子としてぶら下がっているHDDを選ぶ)。  
     フォーマット：「**MacOS Extended(Journaled)**」(いわゆるMacOS拡張)を選ぶ(暗号化(Encrypted)は拡張性が下がったはずなので選ばない)。  
     方式：「**[GUIDパーティションマップ](https://support.apple.com/ja-jp/guide/disk-utility/dsku1c614201/mac)**」を選ぶ。  
  1. 前の画面に戻り、「**macOSを再インストール**」を選ぶ。  
     この前段階として、AppleIDなどの入力を求められるようだが、私の環境ではきかれなかった。  

* OS再インストール手順  
  1. 電源ボタン押下直後に以下のキーをリンゴマークが出るまで押し続ける。  
     以下の再インストール方法から選ぶ。  
     * 直近にインストールされていたmacOS：**command + R**  
       今回これを選んだ(適格性検証のためネットワーク接続必須)。  
     * Macに当初搭載されていたmacOS(か、それに近しいバージョン)：**shift + option + command + R**  
       ネットワーク接続必須。  
     * Macと互換性があるうちでいちばん新しいmacOS(か、当初搭載OSか、それに近しいバージョン)：**option + command + R**  
       ネットワーク接続必須。  
  1. 「**macOSを再インストール**」を選ぶ。  
  1. ネットワークに接続する。  
  1. 使用許諾契約の条約に同意する。  
  1. **Macintosh HD**を選ぶ。  
     ※**Recovery HD**は選べない(そもそもこれから再インストールしてほしい。なぜにネットワーク接続必須なんだよ)。  
     ※時間かかる(私の環境で30分前後でインストール完了)。  


<a id="macOperatingSystemreorder"></a>
### MacOS限定のコマンド
※Linuxコマンドは[別ファイル](./Linux_作業メモなど何でも詰め込む.md)。  

<a id="macOperatingSystemreorder_coreutils"></a>
#### 一般コマンドの導入
今回も[Homebrew](https://brew.sh)を使い、[coreutils](https://formulae.brew.sh/formula/coreutils)を導入する。  
元々の使いたいコマンドはこの中に含まれており、その1つが[shred](https://linuxjm.osdn.jp/info/GNU_coreutils/coreutils-ja_83.html)だ。  
これはファイルを復元不可能なまでに削除するため、どうしても欲しかった(個人端末で熱望する理由はないけど)。  

<details><summary>作業記録。</summary>

以下、インストール作業。
```terminal
$ brew install coreutils
Running `brew update --auto-update`...
==> Auto-updated Homebrew!
==> Fetching coreutils
==> Downloading https://ghcr.io/v2/homebrew/core/coreutils/manifests/9.2
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/coreutils/blobs/sha256:5076ee683ec021506f83687a9b2ad5e5643ef9825784cf5a92d184e947bda127
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:5076ee683ec021506f83687a9b2ad5e5643ef9825784cf5a92d184e947bda127?s
######################################################################## 100.0%
==> Installing dependencies for coreutils: gmp
==> Installing coreutils dependency: gmp
==> Pouring gmp--6.2.1_1.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/gmp/6.2.1_1: 21 files, 3.2MB
==> Installing coreutils
==> Pouring coreutils--9.2.arm64_monterey.bottle.tar.gz
==> Caveats
Commands also provided by macOS and the commands dir, dircolors, vdir have been installed with the prefix "g".
If you need to use these commands with their normal names, you can add a "gnubin" directory to your PATH with:
  PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
==> Summary
🍺  /opt/homebrew/Cellar/coreutils/9.2: 480 files, 13.2MB
==> Running `brew cleanup coreutils`...
Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
==> Caveats
==> coreutils
Commands also provided by macOS and the commands dir, dircolors, vdir have been installed with the prefix "g".
If you need to use these commands with their normal names, you can add a "gnubin" directory to your PATH with:
  PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
$ echo $?
0
$
```
Pathを通す必要があるのか？  

以下、特にPath通し作業せずに使える確認。
```terminal
$ shred --version	←☆バージョン確認。
shred (GNU coreutils) 9.2
Copyright (C) 2023 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Written by Colin Plumb.
$
```
すでに通っているPathだったのかもな(要確認)。  

以下、動作確認・・・もどき。
```terminal
$ echo "導入確認" > test20230411.txt
$ ll
total 32
-rw-r--r--   1 asakunotomohiro  staff    13  4 11 10:05 test20230411.txt	←☆このファイルを消す。
$ shred -u test20230411.txt	←☆オプション付きで実施(オプションを付けない場合削除しない)。
$ ll	←☆消えている。
total 0
$
```

</details>


<a id="macOperatingSystemreorder_dscl-list"></a>
#### 現在のユーザ一覧表示
[dscl](https://www.unix.com/man-page/osx/1/dscl/)コマンドを使うようだが、これはMac専用のようだ。  

以下、現在のユーザ一覧を表示する。
```terminal
$ dscl . list /Users | grep -v '_'
(standard input):111:asakunotomohiro	←☆現在のログインユーザ
(standard input):112:daemon	←☆デーモンだよね。
(standard input):113:nobody	←☆誰？
(standard input):114:root	←☆管理者権限ユーザだろうね。
$
```
今後Linuxコマンドとの切り分けが必要な場合、気づかずに間違ったファイルに記載しそうなんだが・・・どうしよう。  


<a id="macOperatingSystemreorder_dscl-create"></a>
#### ユーザの新規追加
ユーザ一覧を表示するコマンドと同じコマンドを使う。  
しかし、私の持っている書籍上ではGUIからの操作のみを説明しており、コマンドライン上からの説明はなかった。  
そして、私はコマンドライン上およびmacOSでユーザを追加するつもりがないため、これ以上の調査はしない。  

以下、実際には試さないが、こんな感じで作業する・・・はず。
```terminal
dscl . -create /Users/hogeUser
dscl . -create /Users/hogeUser UserShell /bin/bash
dscl . -create /Users/hogeUser RealName hogeUser
```
※**sudo**コマンド必須？  


<a id="memo99999"></a>
## 個人メモ(総合的な優先度の高いメモ)


---
ーーー 最終行 ーーー
<!-- vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=markdown expandtab: -->
