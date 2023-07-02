# キーボード
キーボードについての話題と言うより、私専用にキーマップの配置を記録する。  
配置の書き換え方法を記録表現が適切だろうか。  

<a id="keyboard"></a>
## キーボードのキーマップ変更
現在所持しているキーボードでキーマップを変更する方法は数種類ある。  
その中でもQMKを用いたキーボードを長らく利用しているため、主にQMK利用について記録する。
それ以外も存在することを記録しておく。  

* キーマップの設定種類。  
  * [QMK Firmware](#keyboard_qmk)  
    Planckキーボードで利用している。  
  * [ZMK Firmware](https://zmk.dev/)  
    まだ、これに対応したキーボードは持っていない。  


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
$ git clone git@github.com:asakunotomohiro/qmk_firmware.git -b master qmkFirmware
Cloning into 'qmkFirmware'...
remote: Enumerating objects: 448751, done.
remote: Counting objects: 100% (36/36), done.
remote: Compressing objects: 100% (30/30), done.
remote: Total 448751 (delta 9), reused 12 (delta 4), pack-reused 448715
Receiving objects: 100% (448751/448751), 247.93 MiB | 1.52 MiB/s, done.
Resolving deltas: 100% (227884/227884), done.
Updating files: 100% (35573/35573), done.
$
```

* コンパイル環境構築手順  
  1. クローン環境でコンパイル実施。  

以下、QMKインストール作業。
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
drwxr-xr-x  933 asakunotomohiro  staff  29856  6 23 00:33 keyboards/	←☆この配下にplanckディレクトリがある。
drwxr-xr-x   19 asakunotomohiro  staff    608  6 23 00:33 drivers/
-rw-r--r--    1 asakunotomohiro  staff    278  6 23 00:33 doxygen-todo
drwxr-xr-x  181 asakunotomohiro  staff   5792  6 23 00:33 docs/
drwxr-xr-x    6 asakunotomohiro  staff    192  6 23 00:33 data/
drwxr-xr-x   15 asakunotomohiro  staff    480  6 23 00:33 builddefs/
-rw-r--r--    1 asakunotomohiro  staff  15380  6 23 00:33 Makefile
-rw-r--r--    1 asakunotomohiro  staff  18092  6 23 00:33 LICENSE
-rw-r--r--    1 asakunotomohiro  staff   8688  6 23 00:33 Doxyfile
$ make planck/rev7:default	←☆説明通りにやるが失敗する。
make: qmk: Command not found	←☆qmkコマンドが別途必要。
$ brew tap homebrew/cask-drivers	←☆インストール失敗。
Error: homebrew/cask-drivers was deprecated. This tap is now empty and all its contents were either deleted or migrated.
$
$ brew install qmk/qmk/qmk	←☆インストール実施。
Running `brew update --auto-update`...
==> Auto-updated Homebrew!
==> Updated Homebrew from 52967ee53 to 66c6e5b5f.
Updated 1 tap (homebrew/core).
==> New Formulae
gotestsum       zrok
（略）
==> Running `brew cleanup qmk`...
Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
==> Caveats
==> qmk
QMK Firmware has been installed but your environment may not have been setup yet. Please set it up now:

    qmk setup	←☆インストール完了後に、実行するコマンド。

If you have a fork already you can specify it like this:

    qmk setup <username>/qmk_firmware

This will create qmk_firmware in your home directory. If you'd like to change this location, use the -H flag as well:

    qmk setup -H /your/preferred/path
$ qmk --version
1.1.2
$
```

以下、よく分からないCコンパイラのインストール作業。
```terminal
$ brew install avr-gcc	←☆インストールコマンド。
==> Fetching osx-cross/avr/avr-gcc@9
（略）
$
```

以下、よく分からないCコンパイラのインストール作業。
```terminal
$ brew install arm-none-eabi-gcc	←☆この指定ではインストールできない。
Warning: No available formula with the name "arm-none-eabi-gcc". Did you mean arm-none-eabi-gcc@9 or arm-none-eabi-gcc@8?
==> Searching for similarly named formulae and casks...
==> Formulae
osx-cross/arm/arm-none-eabi-gcc@8           osx-cross/arm/arm-none-eabi-gcc@9

To install osx-cross/arm/arm-none-eabi-gcc@8, run:
  brew install osx-cross/arm/arm-none-eabi-gcc@8	←☆1つ落とす理由は何だろう。
$
$ brew install osx-cross/arm/arm-none-eabi-gcc@9	←☆最新と思われるのをインストール実施。
==> Downloading https://formulae.brew.sh/api/formula.jws.json
（略）
==> Caveats
==> arm-none-eabi-gcc@9
arm-none-eabi-gcc@9 is keg-only, which means it was not symlinked into /opt/homebrew,
because it might interfere with other version of arm-gcc.
This is useful if you want to have multiple version of arm-none-eabi-gcc
installed on the same machine.

If you need to have arm-none-eabi-gcc@9 first in your PATH, run:
  echo 'export PATH="/opt/homebrew/opt/arm-none-eabi-gcc@9/bin:$PATH"' >> ~/.zshrc	←☆インストール後に、環境変数を設定する。

For compilers to find arm-none-eabi-gcc@9 you may need to set:
  export LDFLAGS="-L/opt/homebrew/opt/arm-none-eabi-gcc@9/lib"
$
$ brew install osx-cross/arm/arm-none-eabi-binutils	←☆なぜインストールされている？
Running `brew update --auto-update`...
==> Auto-updated Homebrew!
==> Updated Homebrew from 9b485e590 to 5bf89a3d2.
No changes to formulae or casks.

Warning: osx-cross/arm/arm-none-eabi-binutils 2.38 is already installed and up-to-date.
To reinstall 2.38, run:
  brew reinstall arm-none-eabi-binutils
$
```

以下、qmkセットアップ作業。
```terminal
$ qmk setup	←☆インストール作業。
☒ Could not find qmk_firmware!
Would you like to clone qmk/qmk_firmware to /Users/asakunotomohiro/qmk_firmware? [y/n] y	←☆ここでセットアップするのは軽率だったかも。
Cloning into '/Users/asakunotomohiro/qmk_firmware'...
Updating files:  31% (11137/35623)
Updating files:  32% (11400/35623)
（略）
==> Running `brew cleanup freetype`...
Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
Removing: /opt/homebrew/Cellar/freetype/2.13.0_1... (67 files, 2.4MB)
Removing: /Users/asakunotomohiro/Library/Caches/Homebrew/freetype--2.13.0_1... (911.3KB)
Installing dependencies
Warning: qmk/qmk/qmk 1.1.2_1 is already installed and up-to-date.
To reinstall 1.1.2_1, run:
  brew reinstall qmk
Linking /opt/homebrew/Cellar/avr-gcc@8/8.5.0_1...
Error: Could not symlink bin/avr-c++
Target /opt/homebrew/bin/avr-c++
is a symlink belonging to avr-gcc@9. You can unlink it:
  brew unlink avr-gcc@9

To force the link and overwrite all conflicting files:
  brew link --overwrite avr-gcc@8

To list all files that would be deleted:
  brew link --overwrite --dry-run avr-gcc@8
Linking /opt/homebrew/Cellar/arm-gcc-bin@8/8-2019-q3-update_3... 36 symlinks created.

If you need to have this software first in your PATH instead consider running:
  echo 'export PATH="/opt/homebrew/opt/arm-gcc-bin@8/bin:$PATH"' >> ~/.zshrc
（略）
Ψ Submodule status:
Ψ - lib/chibios: 2023-04-15 13:48:04 +0000 --  (11edb1610)
Ψ - lib/chibios-contrib: 2023-01-11 16:42:27 +0100 --  (a224be15)
Ψ - lib/googletest: 2021-06-11 06:37:43 -0700 --  (e2239ee6)
Ψ - lib/lufa: 2022-08-26 12:09:55 +1000 --  (549b97320)
Ψ - lib/vusb: 2022-06-13 09:18:17 +1000 --  (819dbc1)
Ψ - lib/printf: 2022-06-29 23:59:58 +0300 --  (c2e3b4e)
Ψ - lib/pico-sdk: 2023-02-12 20:19:37 +0100 --  (a3398d8)
Ψ - lib/lvgl: 2022-04-11 04:44:53 -0600 --  (e19410f8)
Ψ QMK is ready to go, but minor problems were found
$ echo $?
0
$
```

以下、makeコマンドによるコンパイル。
```terminal
$ make planck/rev7:default	←☆コンパイル作業。
Making planck/rev7 with keymap default

arm-none-eabi-gcc (GNU Tools for Arm Embedded Processors 8-2019-q3-update) 8.3.1 20190703 (release) [gcc-8-branch revision 273027]
Copyright (C) 2018 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

Compiling: keyboards/planck/rev7/matrix.c                                                           [OK]
（略）
Linking: .build/planck_rev7_default.elf                                                             [OK]
Creating binary load file for flashing: .build/planck_rev7_default.bin                              [OK]
Creating load file for flashing: .build/planck_rev7_default.hex                                     [OK]

Size after:
   text    data     bss     dec     hex filename
      0   54220       0   54220    d3cc planck_rev7_default.bin

Copying planck_rev7_default.bin to qmk_firmware folder                                              [OK]
(Firmware size check does not yet support STM32F303; skipping)
$
```

以下、qmkコマンドによるコンパイル。
```terminal
$ qmk compile -kb planck/rev7 -km default	←☆コンパイル作業。
Ψ Compiling keymap with gmake --jobs=1 planck/rev7:default


Making planck/rev7 with keymap default

arm-none-eabi-gcc (GNU Tools for Arm Embedded Processors 8-2019-q3-update) 8.3.1 20190703 (release) [gcc-8-branch revision 273027]
Copyright (C) 2018 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

Size before:
   text    data     bss     dec     hex filename
      0   54220       0   54220    d3cc planck_rev7_default.bin

Compiling: quantum/command.c                                                                        [OK]
Linking: .build/planck_rev7_default.elf                                                             [OK]
Creating binary load file for flashing: .build/planck_rev7_default.bin                              [OK]
Creating load file for flashing: .build/planck_rev7_default.hex                                     [OK]

Size after:
   text    data     bss     dec     hex filename
      0   54220       0   54220    d3cc planck_rev7_default.bin

Copying planck_rev7_default.bin to qmk_firmware folder                                              [OK]
(Firmware size check does not yet support STM32F303; skipping)
$
```

<details><summary>コンパイル失敗1回目。</summary>

```terminal
$ make planck/rev7:default
Submodule 'lib/chibios' (https://github.com/qmk/ChibiOS) registered for path 'lib/chibios'
Cloning into '/Users/asakunotomohiro/qmk_firmware/lib/chibios'...
Submodule path 'lib/chibios': checked out '11edb1610980f213b9f83161e1715a46fb7e4c51'
Submodule 'lib/chibios-contrib' (https://github.com/qmk/ChibiOS-Contrib) registered for path 'lib/chibios-contrib'
Cloning into '/Users/asakunotomohiro/qmk_firmware/lib/chibios-contrib'...
Submodule path 'lib/chibios-contrib': checked out 'a224be155ae18d38deccf33a6c1d259b9a5ad8d3'
Submodule 'lib/googletest' (https://github.com/qmk/googletest) registered for path 'lib/googletest'
Cloning into '/Users/asakunotomohiro/qmk_firmware/lib/googletest'...
Submodule path 'lib/googletest': checked out 'e2239ee6043f73722e7aa812a459f54a28552929'
Submodule 'lib/lufa' (https://github.com/qmk/lufa) registered for path 'lib/lufa'
Cloning into '/Users/asakunotomohiro/qmk_firmware/lib/lufa'...
Submodule path 'lib/lufa': checked out '549b97320d515bfca2f95c145a67bd13be968faa'
Submodule 'lib/vusb' (https://github.com/qmk/v-usb) registered for path 'lib/vusb'
Cloning into '/Users/asakunotomohiro/qmk_firmware/lib/vusb'...
Submodule path 'lib/vusb': checked out '819dbc1e5d5926b17e27e00ca6d3d2988adae04e'
Submodule 'lib/printf' (https://github.com/qmk/printf) registered for path 'lib/printf'
Cloning into '/Users/asakunotomohiro/qmk_firmware/lib/printf'...
Submodule path 'lib/printf': checked out 'c2e3b4e10d281e7f0f694d3ecbd9f320977288cc'
Submodule 'lib/pico-sdk' (https://github.com/qmk/pico-sdk.git) registered for path 'lib/pico-sdk'
Cloning into '/Users/asakunotomohiro/qmk_firmware/lib/pico-sdk'...
Submodule path 'lib/pico-sdk': checked out 'a3398d8d3a772f37fef44a74743a1de69770e9c2'
Submodule 'lib/lvgl' (https://github.com/qmk/lvgl.git) registered for path 'lib/lvgl'
Cloning into '/Users/asakunotomohiro/qmk_firmware/lib/lvgl'...
Submodule path 'lib/lvgl': checked out 'e19410f8f8a256609da72cff549598e0df6fa4cf'
Making planck/rev7 with keymap default

/bin/sh: arm-none-eabi-gcc: command not found	←☆これは何？
Generating: .build/obj_planck_rev7_default/src/info_deps.d                                          [OK]
/bin/sh: arm-none-eabi-gcc: command not found
sh: arm-none-eabi-gcc: command not found
sh: arm-none-eabi-gcc: command not found
make[1]: *** [gccversion] Error 127
Make finished with errors
make: *** [planck/rev7:default] Error 1
$
```

</details>

<details><summary>コンパイル失敗2回目。</summary>

avr-gccをインストールしたが、失敗した。  
arm-none-eabi-gccがなければだめなのだろう。  
おかしい。  
arm-none-eabi-gccをインストールしたが、エラーになる。

```terminal
$ make planck/rev7:default
Making planck/rev7 with keymap default

/bin/sh: arm-none-eabi-gcc: command not found
sh: arm-none-eabi-gcc: command not found
sh: arm-none-eabi-gcc: command not found
make[1]: *** [gccversion] Error 127
Make finished with errors
make: *** [planck/rev7:default] Error 1
$
```

以下、インストール済みの確認作業。
```terminal
$ brew list -1
==> Formulae
arm-gcc-bin@8
arm-none-eabi-binutils
arm-none-eabi-gcc@9	←☆これ。
autoconf
automake
avr-binutils
avr-gcc@8
avr-gcc@9
avrdude
berkeley-db
（略）
texinfo
unbound
webp
xorgproto
xz
zstd

==> Casks
qmk-toolbox
$
```

</details>

<details><summary>コンパイル失敗3回目。</summary>

```terminal
$ export PATH="/opt/homebrew/opt/arm-none-eabi-gcc@9/bin:$PATH"
$ arm-none-eabi-gcc --version
arm-none-eabi-gcc (Homebrew ARM GCC 9.5.0) 9.5.0
Copyright (C) 2019 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

$
$ make planck/rev7:default
Making planck/rev7 with keymap default

arm-none-eabi-gcc (Homebrew ARM GCC 9.5.0) 9.5.0
Copyright (C) 2019 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

Generating: .build/obj_planck_rev7/src/info_config.h                           [OK]
Generating: .build/obj_planck_rev7/src/default_keyboard.c                      [OK]
Generating: .build/obj_planck_rev7/src/default_keyboard.h                      [OK]
Compiling: keyboards/planck/rev7/matrix.c                                      [OK]
Compiling: keyboards/planck/planck.c                                           [OK]
Compiling: keyboards/planck/rev7/rev7.c                                        [OK]
Compiling: .build/obj_planck_rev7/src/default_keyboard.c                       [OK]
（略）
Compiling: platforms/chibios/syscall-fallbacks.c                               [OK]
Compiling: platforms/chibios/wait.c                                            [OK]
Compiling: platforms/chibios/synchronization_util.c                            [OK]
Linking: .build/planck_rev7_default.elf                                        [OK]
Creating binary load file for flashing: .build/planck_rev7_default.bin        sh: arm-none-eabi-objcopy: command not found
 [OK]
dfu-suffix: Could not open file .build/planck_rev7_default.bin for reading: No such file or directory
make[1]: *** [.build/planck_rev7_default.bin] Error 66
Make finished with errors
make: *** [planck/rev7:default] Error 1
$
```

</details>

<details><summary>コンパイル失敗4回目。</summary>

```terminal
$ qmk compile -kb planck/rev7 -km default
Ψ Compiling keymap with gmake --jobs=1 planck/rev7:default


Making planck/rev7 with keymap default

arm-none-eabi-gcc (Homebrew ARM GCC 9.5.0) 9.5.0
Copyright (C) 2019 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

Compiling: quantum/command.c                                                   [OK]
Linking: .build/planck_rev7_default.elf                                        [OK]
Creating binary load file for flashing: .build/planck_rev7_default.bin        sh: arm-none-eabi-objcopy: command not found
 [OK]
dfu-suffix: Could not open file .build/planck_rev7_default.bin for reading: No such file or directory
gmake[1]: *** [builddefs/common_rules.mk:253: .build/planck_rev7_default.bin] Error 66
gmake: *** [Makefile:392: planck/rev7:default] Error 1
Make finished with errors
$
```

</details>

以下、QMKツールボックスインストール作業。
```terminal
$ brew install --cask qmk-toolbox	←☆QMKツールボックスをインストール。
Running `brew update --auto-update`...
==> Auto-updated Homebrew!
==> Updated Homebrew from 4.0.21 (e37650d12) to 4.0.24 (52967ee53).
Updated 2 taps (homebrew/core and homebrew/cask).
==> New Formulae
cargo-generate  conda-lock      getmail6    git-tools   hivex   jsmn    lowdown     mariadb@10.11   ord     slsa-verifier
charls          core-lightning  gffread     grype       jsign   judy    ls-lint     minigraph       shush   typical
==> New Casks
apple-hewlett-packard-printer-drivers   command-x   eset-cyber-security     graalvm-jdk     mumu-x
audiocupcake                            devpod      frappe-books            grs-bluewallet  rode-connect

You have 11 outdated formulae installed.


The 4.0.24 changelog can be found at:
  https://github.com/Homebrew/brew/releases/tag/4.0.24
==> Downloading https://github.com/qmk/qmk_toolbox/releases/download/0.2.2/QMK.Toolbox.app.zip
==> Downloading from https://objects.githubusercontent.com/github-production-release-asset-2e65be/Amz-Credential=AKIAIW
####################################################################################################################### 100.0%
==> Installing Cask qmk-toolbox
==> Moving App 'QMK Toolbox.app' to '/Applications/QMK Toolbox.app'
🍺  qmk-toolbox was successfully installed!	←☆インストールできたようだ。
$ ll -d /Applications/QMK\ Toolbox.app	←☆インストール確認した。
drwxr-xr-x@ 3 asakunotomohiro  admin  96  5 18  2022 /Applications/QMK Toolbox.app/
$
```
Macのセキュリティが働き、制限がかかっていると思ったが、どうやらそういうことでもないようだ。  
GUIからの操作限定。  
※**planck_rev7_asakunotomohiro.hex**を読み込む。  

MEMO: システム設定---\>プライバシーとセキュリティ---\>セキュリティ---\>App Storeと確認済みの開発元からのアプリケーションを許可  

* 独自のキーマップ作成作業。  
  1. [planckディレクトリ配下に移動](#keyboard_qmk_planck_make_cd)。  
  1. [keymapsディレクトリ配下に独自ディレクトリ作成](#keyboard_qmk_planck_make_mkdir)。  
  1. [qmkファームウェアディレクトリ直下でqmkコンパイル](#keyboard_qmk_planck_make_qmkcompile)。  
     もしくは、[make方法でのコンパイル](#keyboard_qmk_planck_make_makecompile)。  
  1. [qmkファームウェアディレクトリ直下でqmk書き込み](#keyboard_qmk_planck_make_qmkflash)。  
     もしくは、[make方法での書き込み](#keyboard_qmk_planck_make_makeflash)。  
  1. 書き込み(動作)確認。  
     実際に書き込んだキーボードを動かして、正常に動くことを確認する。  

<a id="keyboard_qmk_planck_make_cd"></a>
以下、planckディレクトリ配下に移動。
```terminal
$ pwd
/Users/asakunotomohiro/qmkFirmware/keyboards/planck
$ ll
total 32
drwxr-xr-x  173 asakunotomohiro  staff  5536  6 28 23:37 keymaps/	←☆この配下に独自キーマップディレクトリを配置する。
drwxr-xr-x   13 asakunotomohiro  staff   416  6 25 00:09 rev7/	←☆このバージョンを基準にコンパイルする。
drwxr-xr-x    8 asakunotomohiro  staff   256  6 23 00:33 thk/
drwxr-xr-x   11 asakunotomohiro  staff   352  6 23 00:33 rev6_drop/
drwxr-xr-x    9 asakunotomohiro  staff   288  6 23 00:33 rev6/
drwxr-xr-x    6 asakunotomohiro  staff   192  6 23 00:33 rev5/
drwxr-xr-x    6 asakunotomohiro  staff   192  6 23 00:33 rev4/
drwxr-xr-x    6 asakunotomohiro  staff   192  6 23 00:33 rev3/
drwxr-xr-x    6 asakunotomohiro  staff   192  6 23 00:33 rev2/
drwxr-xr-x    6 asakunotomohiro  staff   192  6 23 00:33 rev1/
-rw-r--r--    1 asakunotomohiro  staff  1092  6 23 00:33 readme.md
-rw-r--r--    1 asakunotomohiro  staff   710  6 23 00:33 planck.c
drwxr-xr-x    7 asakunotomohiro  staff   224  6 23 00:33 light/
-rw-r--r--    1 asakunotomohiro  staff    70  6 23 00:33 info.json
drwxr-xr-x   12 asakunotomohiro  staff   384  6 23 00:33 ez/
-rw-r--r--    1 asakunotomohiro  staff  1195  6 23 00:33 config.h
$
```

<a id="keyboard_qmk_planck_make_mkdir"></a>
以下、planck/keymapsディレクトリ配下に独自ディレクトリの用意。
```terminal
$ cd keymaps
$ mkdir asakunotomohiro	←☆ディレクトリ作成より、デフォルトディレクトリをコピーするのが吉。
$ cd asakunotomohiro
$ ll	←☆デフォルトディレクトリ配下のファイルをここにコピーしている。
total 56
-rw-r--r--  1 asakunotomohiro  staff     61  6 23 00:33 rules.mk
-rw-r--r--  1 asakunotomohiro  staff     29  6 23 00:33 readme.md
-rw-r--r--  1 asakunotomohiro  staff  14588  6 23 00:33 keymap.c
-rw-r--r--  1 asakunotomohiro  staff   1475  6 23 00:33 config.h
$
```

<a id="keyboard_qmk_planck_make_qmkcompile"></a>
以下、qmkファームウェアディレクトリ直下でqmkコンパイル実施。
```terminal
$ pwd
/Users/asakunotomohiro/qmkFirmware/
$ qmk compile -kb planck/rev7 -km asakunotomohiro
Ψ Compiling keymap with gmake --jobs=1 planck/rev7:asakunotomohiro


Making planck/rev7 with keymap asakunotomohiro

Generating: .build/obj_planck_rev7_asakunotomohiro/src/info_deps.d                                  [OK]
arm-none-eabi-gcc (GNU Tools for Arm Embedded Processors 8-2019-q3-update) 8.3.1 20190703 (release) [gcc-8-branch revision 273027]
Copyright (C) 2018 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
（略）
Compiling: platforms/chibios/synchronization_util.c                                                 [OK]
Linking: .build/planck_rev7_asakunotomohiro.elf                                                     [OK]
Creating binary load file for flashing: .build/planck_rev7_asakunotomohiro.bin                      [OK]
Creating load file for flashing: .build/planck_rev7_asakunotomohiro.hex                             [OK]

Size after:
   text   data      bss     dec     hex filename
      0   54264       0   54264    d3f8 planck_rev7_asakunotomohiro.bin

Copying planck_rev7_asakunotomohiro.bin to qmk_firmware folder                                      [OK]
(Firmware size check does not yet support STM32F303; skipping)
$
```

<a id="keyboard_qmk_planck_make_makecompile"></a>
以下、上記のqmkコンパイルではなく、makeコンパイルでの作業。
```terminal
$ pwd
/Users/asakunotomohiro/qmkFirmware/
$ make planck/rev7:asakunotomohiro
Making planck/rev7 with keymap asakunotomohiro

arm-none-eabi-gcc (GNU Tools for Arm Embedded Processors 8-2019-q3-update) 8.3.1 20190703 (release) [gcc-8-branch revision 273027]
Copyright (C) 2018 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
（略）
Copying planck_rev7_asakunotomohiro.bin to qmk_firmware folder                                      [OK]
(Firmware size check does not yet support STM32F303; skipping)
$
```

<a id="keyboard_qmk_planck_make_qmkflash"></a>
以下、qmkファームウェアディレクトリ直下でqmkファイル書き込み実施。
```terminal
$ qmk flash -kb planck/rev7 -km asakunotomohiro	←☆書き込む。
Ψ Compiling keymap with gmake --jobs=1 planck/rev7:asakunotomohiro:flash


Making planck/rev7 with keymap asakunotomohiro and target flash
（略）
Copying planck_rev7_asakunotomohiro.bin to qmk_firmware folder                                      [OK]
Flashing for bootloader: stm32-dfu
Bootloader not found. Make sure the board is in bootloader mode. See https://docs.qmk.fm/#/newbs_flashing
 Trying again every 0.5s (Ctrl+C to cancel).............	←☆キーボード裏のリセットボタンを押しておく必要がある。
dfu-util 0.11
（略）
DFU mode device DFU version 011a
Device returned transfer size 2048
DfuSe interface name: "Internal Flash  "
Downloading element to address = 0x08000000, size = 54264
Erase       [=========================] 100%        54264 bytes
Erase    done.
Download    [=========================] 100%        54264 bytes
Download done.
File downloaded successfully
Submitting leave request...
Transitioning to dfuMANIFEST state
$
```
物理ボタンではなく、ソフトウェア上のリセットボタンでも問題ない。  

<a id="keyboard_qmk_planck_make_makeflash"></a>
以下、qmkファームウェアディレクトリ直下でmakeファイル書き込み実施。
```terminal
$ make planck/rev7:asakunotomohiro:dfu-util	←☆書き込み(Planckバージョンによって末尾の文字列が変わる)。
Making planck/rev7 with keymap asakunotomohiro and target dfu-util

arm-none-eabi-gcc (GNU Tools for Arm Embedded Processors 8-2019-q3-update) 8.3.1 20190703 (release) [gcc-8-branch revision 273027]
Copyright (C) 2018 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
（略）
Download done.
File downloaded successfully
Submitting leave request...
Transitioning to dfuMANIFEST state
$
```
今後は新しいPlanckを手に入れることを考えれば、**dfu-util**を使うことになるだろう。  
もし、古いPlanckを使う場合は、**dfu**を使うようだ。  
makeの場合は、コンパイルと書き込みが同時にできるが、qmkコマンドではそれができないのだろうか。
不便だ。  

<details><summary>書き込み失敗1回目。</summary>

```terminal
$ make planck/rev7:asakunotomohiro:avrdude	←☆書き込めるはずだが、エラーになる。
Making planck/rev7 with keymap asakunotomohiro and target avrdude

make[1]: *** No rule to make target `avrdude'.  Stop.
Make finished with errors
make: *** [planck/rev7:asakunotomohiro:avrdude] Error 1
$
```
avrdudeとやらがインストールされていないのが原因？

</details>


以上。
<!-- vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=markdown expandtab: -->
