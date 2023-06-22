# キーボード
キーボードについての話題と言うより、私専用にキーマップの配置を記録する。  
配置の書き換え方法を記録表現が適切だろうか。  

<a id="keyboard"></a>
## キーボードのキーマップ変更
現在所持しているキーボードでキーマップを変更する方法は数種類ある。  
その中でもQMKを用いたキーボードを長らく利用しているため、主にQMK利用について記録する。
それ以外も存在することを記録しておく。  

* キーマップ設定方法  
  * [QMK](#keyboard_qmk)  


<a id="keyboard_qmk"></a>
## QMKによるキーマップ変更方法について。
私は、QMKを使い、組み立てたキーボードにキーマップを書き込んでいる。  
大本：<https://github.com/qmk/qmk_firmware>  
正確には、自分専用に作成したキーマップをキーボードに書き込んでいる(結局一緒の表現か？)。  

* 作業手順  
  1. [大本のブランチをフォークする。](#keyboard_qmk_forks)  


<a id="keyboard_qmk_forks"></a>
### ブランチフォーク
大本：<https://github.com/qmk/qmk_firmware>  
※Githubにログイン前提。  

* フォーク手順  
  1. ブランチ名の右側に「**Fork**」項目があり、その右側の下向き星印をクリックする。  
     プルダウンが表示されること。  
  1. 新しいフォークを選ぶ。  
     「**Create a new fork**」をクリックすること。  
  1. フォーク画面にそれぞれ記入する。  
     * リポジトリ名を付ける(混乱しないためにも同名が望ましいだろう)。  
     * 一言説明を付ける(**Description**はオプションだが変更せずにそのままで問題ない)。  
     * マスターブランチのみコピーを選ぶ(私は**Copy the `master` branch only**にチェックしたが、好みで)。  
  1. **Create fork**ボタン押下する。  
     フォークが行われる。  

* クローン手順  
  1. ローカルにクローンする(思ったより時間かかる)。  
     `git clone git@github.com:asakunotomohiro/qmk_firmware.git`  

```terminal
$ git clone git@github.com:asakunotomohiro/qmk_firmware.git -b master qmk_firmware20230621
Cloning into 'qmk_firmware20230621'...
remote: Enumerating objects: 448751, done.
remote: Counting objects: 100% (36/36), done.
remote: Compressing objects: 100% (30/30), done.
remote: Total 448751 (delta 9), reused 12 (delta 4), pack-reused 448715
Receiving objects: 100% (448751/448751), 247.93 MiB | 1.52 MiB/s, done.
Resolving deltas: 100% (227884/227884), done.
Updating files: 100% (35573/35573), done.
$ echo $?
0
$
```

* コンパイル環境構築手順  
  1. クローン環境でコンパイル実施。  

```terminal
$ ll
total 288
drwxr-xr-x   31 asakunotomohiro  staff    992  6 23 00:33 util/
drwxr-xr-x  120 asakunotomohiro  staff   3840  6 23 00:33 users/
drwxr-xr-x    5 asakunotomohiro  staff    160  6 23 00:33 tmk_core/
drwxr-xr-x   15 asakunotomohiro  staff    480  6 23 00:33 tests/
-rw-r--r--    1 asakunotomohiro  staff   3331  6 23 00:33 shell.nix
-rw-r--r--    1 asakunotomohiro  staff  10474  6 23 00:33 setup.cfg
-rw-r--r--    1 asakunotomohiro  staff    129  6 23 00:33 requirements.txt
-rw-r--r--    1 asakunotomohiro  staff    131  6 23 00:33 requirements-dev.txt
-rw-r--r--    1 asakunotomohiro  staff   2424  6 23 00:33 readme.md
drwxr-xr-x  113 asakunotomohiro  staff   3616  6 23 00:33 quantum/
drwxr-xr-x   23 asakunotomohiro  staff    736  6 23 00:33 platforms/
-rw-r--r--    1 asakunotomohiro  staff    694  6 23 00:33 paths.mk
-rw-r--r--    1 asakunotomohiro  staff     44  6 23 00:33 nose2.cfg
-rw-r--r--    1 asakunotomohiro  staff   1684  6 23 00:33 license_Modified_BSD.md
-rw-r--r--    1 asakunotomohiro  staff  35058  6 23 00:33 license_GPLv3.md
-rw-r--r--    1 asakunotomohiro  staff  15174  6 23 00:33 license_GPLv2.md
drwxr-xr-x   15 asakunotomohiro  staff    480  6 23 00:33 lib/
drwxr-xr-x    4 asakunotomohiro  staff    128  6 23 00:33 layouts/
drwxr-xr-x  933 asakunotomohiro  staff  29856  6 23 00:33 keyboards/
drwxr-xr-x   19 asakunotomohiro  staff    608  6 23 00:33 drivers/
-rw-r--r--    1 asakunotomohiro  staff    278  6 23 00:33 doxygen-todo
drwxr-xr-x  181 asakunotomohiro  staff   5792  6 23 00:33 docs/
drwxr-xr-x    6 asakunotomohiro  staff    192  6 23 00:33 data/
drwxr-xr-x   15 asakunotomohiro  staff    480  6 23 00:33 builddefs/
-rw-r--r--    1 asakunotomohiro  staff  15380  6 23 00:33 Makefile
-rw-r--r--    1 asakunotomohiro  staff  18092  6 23 00:33 LICENSE
-rw-r--r--    1 asakunotomohiro  staff   8688  6 23 00:33 Doxyfile
$ make planck/rev7:default	←☆説明通りにやるが失敗する。
make: qmk: Command not found
make: *** No rule to make target 'planck/rev7:default'. Stop.
|
| QMK's make format is:
|     make keyboard_folder:keymap_folder[:target]
|
| Where `keyboard_folder` is the path to the keyboard relative to
| `qmk_firmware/keyboards/`, and `keymap_folder` is the name of the
| keymap folder under that board's `keymaps/` directory.
|
| Examples:
|     keyboards/dz60, keyboards/dz60/keymaps/default
|       -> make dz60:default
|       -> qmk compile -kb dz60 -km default
|     keyboards/planck/rev6, keyboards/planck/keymaps/default
|       -> make planck/rev6:default:flash
|       -> qmk flash -kb planck/rev6 -km default
|
ERROR: Cannot run "qmk hello"!

 Please run qmk setup to install all the dependencies QMK requires.	←☆QMKをインストールしておく必要がある？

make: *** [planck/rev7:default] Error 1
$ qmk setup	←☆たしかにインストールされていない。
zsh: command not found: qmk
$ brew install --cask qmk-toolbox	←☆QMKツールボックスをインストール。
Running `brew update --auto-update`...
==> Auto-updated Homebrew!
==> Updated Homebrew from 4.0.21 (e37650d12) to 4.0.24 (52967ee53).
Updated 2 taps (homebrew/core and homebrew/cask).
==> New Formulae
cargo-generate      conda-lock          getmail6            git-tools           hivex               jsmn                lowdown             mariadb@10.11       ord                 slsa-verifier
charls              core-lightning      gffread             grype               jsign               judy                ls-lint             minigraph           shush               typical
==> New Casks
apple-hewlett-packard-printer-drivers   command-x                               eset-cyber-security                     graalvm-jdk                             mumu-x
audiocupcake                            devpod                                  frappe-books                            grs-bluewallet                          rode-connect

You have 11 outdated formulae installed.


The 4.0.24 changelog can be found at:
  https://github.com/Homebrew/brew/releases/tag/4.0.24
==> Downloading https://github.com/qmk/qmk_toolbox/releases/download/0.2.2/QMK.Toolbox.app.zip
==> Downloading from https://objects.githubusercontent.com/github-production-release-asset-2e65be/102075885/7a9672d3-0ccf-43b2-91b3-535865eeab24?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIW
################################################################################################################################################################################################## 100.0%
==> Installing Cask qmk-toolbox
==> Moving App 'QMK Toolbox.app' to '/Applications/QMK Toolbox.app'
🍺  qmk-toolbox was successfully installed!	←☆インストールできたようだ。
$ qmk hello	←☆駄目じゃねぇか。
zsh: command not found: qmk
$ brew tap homebrew/cask-drivers	←☆説明書通りなのに、なぜ駄目だ。
Error: homebrew/cask-drivers was deprecated. This tap is now empty and all its contents were either deleted or migrated.
$
```


以上。
<!-- vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=markdown expandtab: -->
