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
$ git clone git@github.com:asakunotomohiro/qmk_firmware.git -b master qmkFirmware
Cloning into 'qmkFirmware'...
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
make: qmk: Command not found	←☆qmkコマンドが別途必要なようだ。
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
$ brew tap homebrew/cask-drivers	←☆説明書通りなのに、なぜ駄目だ。
Error: homebrew/cask-drivers was deprecated. This tap is now empty and all its contents were either deleted or migrated.
$
$ brew install qmk/qmk/qmk
Running `brew update --auto-update`...
==> Auto-updated Homebrew!
==> Updated Homebrew from 52967ee53 to 66c6e5b5f.
Updated 1 tap (homebrew/core).
==> New Formulae
gotestsum       zrok

You have 12 outdated formulae installed.

==> Tapping qmk/qmk
Cloning into '/opt/homebrew/Library/Taps/qmk/homebrew-qmk'...
remote: Enumerating objects: 446, done.
remote: Counting objects: 100% (145/145), done.
remote: Compressing objects: 100% (67/67), done.
remote: Total 446 (delta 81), reused 129 (delta 71), pack-reused 301
Receiving objects: 100% (446/446), 75.63 KiB | 1.11 MiB/s, done.
Resolving deltas: 100% (258/258), done.
Tapped 3 formulae (20 files, 107.2KB).
==> Tapping osx-cross/arm
Cloning into '/opt/homebrew/Library/Taps/osx-cross/homebrew-arm'...
remote: Enumerating objects: 351, done.
remote: Counting objects: 100% (131/131), done.
remote: Compressing objects: 100% (87/87), done.
remote: Total 351 (delta 50), reused 91 (delta 41), pack-reused 220
Receiving objects: 100% (351/351), 83.21 KiB | 495.00 KiB/s, done.
Resolving deltas: 100% (128/128), done.
Tapped 8 formulae (27 files, 133.2KB).
==> Tapping osx-cross/avr
Cloning into '/opt/homebrew/Library/Taps/osx-cross/homebrew-avr'...
remote: Enumerating objects: 1763, done.
remote: Counting objects: 100% (608/608), done.
remote: Compressing objects: 100% (223/223), done.
remote: Total 1763 (delta 412), reused 527 (delta 373), pack-reused 1155
Receiving objects: 100% (1763/1763), 390.17 KiB | 1.02 MiB/s, done.
Resolving deltas: 100% (1145/1145), done.
Tapped 10 formulae (32 files, 660.0KB).
==> Fetching dependencies for qmk/qmk/qmk: icu4c, boost, confuse, libftdi, libusb-compat, avrdude, bootloadhid, clang-format, dfu-programmer, dfu-util, make, mdloader, osx-cross/arm/arm-gcc-bin@8, automake, texinfo, avr-binutils, isl, mpfr, libmpc, osx-cross/avr/avr-gcc@8, libimagequant, libpng, fribidi, xorgproto, harfbuzz, libraqm, libtiff, openjpeg, tcl-tk, webp, pillow, python and teensy_loader_cli
==> Fetching icu4c
==> Downloading https://ghcr.io/v2/homebrew/core/icu4c/manifests/73.2
####################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/icu4c/blobs/sha256:953797d46546c570c4fab4e8b2395624ae90acd492f75b68ff9fbd115c
####################################################################################################################### 100.0%
==> Fetching boost
==> Downloading https://ghcr.io/v2/homebrew/core/boost/manifests/1.82.0_1
####################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/boost/blobs/sha256:acb65f0a6f8a12472eaa2aa223353ceac4134617bc9f99e936d65cfd52
####################################################################################################################### 100.0%
==> Fetching confuse
==> Downloading https://ghcr.io/v2/homebrew/core/confuse/manifests/3.3
####################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/confuse/blobs/sha256:1c7aa3d075082f2742747ac5034f60c90b448c694ccc5b333b71f1af
####################################################################################################################### 100.0%
==> Fetching libftdi
==> Downloading https://ghcr.io/v2/homebrew/core/libftdi/manifests/1.5_2
####################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libftdi/blobs/sha256:db8777d9eec5f36b23b191183c6d25c398484c09b2ca5833def252ef
####################################################################################################################### 100.0%
==> Fetching libusb-compat
==> Downloading https://ghcr.io/v2/homebrew/core/libusb-compat/manifests/0.1.8
####################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libusb-compat/blobs/sha256:f166717b7947442be0d3dd9f4f32af5a81dc1b88e331e6d255
####################################################################################################################### 100.0%
==> Fetching avrdude
==> Downloading https://ghcr.io/v2/homebrew/core/avrdude/manifests/7.0_2
####################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/avrdude/blobs/sha256:50c20fe810d534c1c4cea3209ca812d35167c4b51e140f715d96563d
####################################################################################################################### 100.0%
==> Fetching bootloadhid
==> Downloading https://ghcr.io/v2/homebrew/core/bootloadhid/manifests/2012-12-08
####################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/bootloadhid/blobs/sha256:2abf7dd9ed6601a8f2f42073b64abb33d20f7e81fdfd9296f544
####################################################################################################################### 100.0%
==> Fetching clang-format
==> Downloading https://ghcr.io/v2/homebrew/core/clang-format/manifests/16.0.6
####################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/clang-format/blobs/sha256:91f8990b07097ce1b70a7d0cf4141236f25ba541423b618a839
####################################################################################################################### 100.0%
==> Fetching dfu-programmer
==> Downloading https://ghcr.io/v2/homebrew/core/dfu-programmer/manifests/1.0.0
####################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/dfu-programmer/blobs/sha256:0ee3ca7e532f5126a3057d13a2939e1f0232d7b6cf2af0672
####################################################################################################################### 100.0%
==> Fetching dfu-util
==> Downloading https://ghcr.io/v2/homebrew/core/dfu-util/manifests/0.11
####################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/dfu-util/blobs/sha256:03e81fc129ada62759e3cd8d892131ca326851ab6631730ed101405
####################################################################################################################### 100.0%
==> Fetching make
==> Downloading https://ghcr.io/v2/homebrew/core/make/manifests/4.4.1
####################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/make/blobs/sha256:23e26446ffdefd2b7fe44c559e11ab6bc127abd32233847f4e7bb3de87d
####################################################################################################################### 100.0%
==> Fetching qmk/qmk/mdloader
==> Downloading https://github.com/Massdrop/mdloader/archive/1.0.7.tar.gz
==> Downloading from https://codeload.github.com/Massdrop/mdloader/tar.gz/refs/tags/1.0.7
 #=O#-    #       #
==> Fetching osx-cross/arm/arm-gcc-bin@8
==> Downloading https://developer.arm.com/-/media/Files/downloads/gnu-rm/RC1.1/gcc-arm-none-eabi-8-2019-q3-update-mac.tar.bz2
==> Downloading from https://armkeil.blob.core.windows.net/downloads/gnu-rm/gcc-arm-none-eabi-8-2019-q3-update-mac.tar.bz2
####################################################################################################################### 100.0%
==> Fetching automake
==> Downloading https://ghcr.io/v2/homebrew/core/automake/manifests/1.16.5
####################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/automake/blobs/sha256:f68481d06be7fa3f0a0881edb825a336e7f6548191c762d6bd81718
####################################################################################################################### 100.0%
==> Fetching texinfo
==> Downloading https://ghcr.io/v2/homebrew/core/texinfo/manifests/7.0.3
####################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/texinfo/blobs/sha256:203015ceba1fbf1093a5c011e19fbabe6b1dca05ad045e1978e11c6a
####################################################################################################################### 100.0%
==> Fetching osx-cross/avr/avr-binutils
==> Downloading https://raw.githubusercontent.com/archlinux/svntogit-community/c3efadcb76f4d8b1a3784015e7c472f59dbfa7de/
####################################################################################################################### 100.0%
==> Downloading https://raw.githubusercontent.com/osx-cross/homebrew-avr/18d50ba2a168a3b90a25c96e4bc4c053df77d7dc/Patch/
####################################################################################################################### 100.0%
==> Downloading https://ftp.gnu.org/gnu/binutils/binutils-2.40.tar.xz
####################################################################################################################### 100.0%
==> Fetching isl
==> Downloading https://ghcr.io/v2/homebrew/core/isl/manifests/0.26
####################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/isl/blobs/sha256:1814fe867c61b34cd5c763cf2ebda99d7883db78348c8b663f98c95a1348
####################################################################################################################### 100.0%
==> Fetching mpfr
==> Downloading https://ghcr.io/v2/homebrew/core/mpfr/manifests/4.2.0-p9
####################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/mpfr/blobs/sha256:176114984411aeb1187a50fd9ffc39d7dfe0bf5dc29ab13b0ecc5307d61
####################################################################################################################### 100.0%
==> Fetching libmpc
==> Downloading https://ghcr.io/v2/homebrew/core/libmpc/manifests/1.3.1
####################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libmpc/blobs/sha256:da4ff781bc469c82af17f98f0bdbf20932e222d0520ab784cdb322b78
####################################################################################################################### 100.0%
==> Fetching osx-cross/avr/avr-gcc@8
==> Downloading https://gist.githubusercontent.com/DavidEGrayson/88bceb3f4e62f45725ecbb9248366300/raw/gcc-11-arm-darwin.patch
####################################################################################################################### 100.0%
==> Downloading https://download.savannah.gnu.org/releases/avr-libc/avr-libc-2.1.0.tar.bz2
==> Downloading from https://mirrors.sarata.com/non-gnu/avr-libc/avr-libc-2.1.0.tar.bz2
####################################################################################################################### 100.0%
==> Downloading https://ftp.gnu.org/gnu/gcc/gcc-8.5.0/gcc-8.5.0.tar.xz
####################################################################################################################### 100.0%
==> Fetching libimagequant
==> Downloading https://ghcr.io/v2/homebrew/core/libimagequant/manifests/4.2.0
####################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libimagequant/blobs/sha256:97c3688ef5aa75bd33d85e823137164e9d466d42e13c18f728
####################################################################################################################### 100.0%
==> Fetching libpng
==> Downloading https://ghcr.io/v2/homebrew/core/libpng/manifests/1.6.40
####################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libpng/blobs/sha256:c309cf133ab08f4fd25210da897eaaff2603e9a7e1bdc178821c7e186
####################################################################################################################### 100.0%
==> Fetching fribidi
==> Downloading https://ghcr.io/v2/homebrew/core/fribidi/manifests/1.0.13
####################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/fribidi/blobs/sha256:0272f179bac6809467c56eb0b1fac7f1de88b4c012fd36e77411aec3
####################################################################################################################### 100.0%
==> Fetching xorgproto
==> Downloading https://ghcr.io/v2/homebrew/core/xorgproto/manifests/2023.2
####################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/xorgproto/blobs/sha256:de818c35cca25c4b2286a5642d5d1748320f6031039ec46b375fd1
####################################################################################################################### 100.0%
==> Fetching harfbuzz
==> Downloading https://ghcr.io/v2/homebrew/core/harfbuzz/manifests/7.3.0_1
####################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/harfbuzz/blobs/sha256:4ff40bff874789528ce27fbba3f7413ecfab35a338c7a7b98c67c25
####################################################################################################################### 100.0%
==> Fetching libraqm
==> Downloading https://ghcr.io/v2/homebrew/core/libraqm/manifests/0.10.1
####################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libraqm/blobs/sha256:ac95b8239c3e26dfd2cba18417d279cf5fe39cf1e3b02e01930e324f
####################################################################################################################### 100.0%
==> Fetching libtiff
==> Downloading https://ghcr.io/v2/homebrew/core/libtiff/manifests/4.5.1
####################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libtiff/blobs/sha256:c9ec64c61687ec04d3d98e017c2a7ec5c23ff8a061cdeaf54209197f
####################################################################################################################### 100.0%
==> Fetching openjpeg
==> Downloading https://ghcr.io/v2/homebrew/core/openjpeg/manifests/2.5.0_1
####################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/openjpeg/blobs/sha256:4608628e92a5691cd45550219c92def72e3543f372af39f88d1bda2
####################################################################################################################### 100.0%
==> Fetching tcl-tk
==> Downloading https://ghcr.io/v2/homebrew/core/tcl-tk/manifests/8.6.13_3-1
####################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/tcl-tk/blobs/sha256:f40d605c127e7a7895cd2b1506ef1ac0e59e6f8ad671a7f4e802c4726
####################################################################################################################### 100.0%
==> Fetching webp
==> Downloading https://ghcr.io/v2/homebrew/core/webp/manifests/1.3.0_1
####################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/webp/blobs/sha256:f86256aed05f84aa98f925384c6317fecc60e9f55a52c92a8c9ddcbc0af
####################################################################################################################### 100.0%
==> Fetching pillow
==> Downloading https://ghcr.io/v2/homebrew/core/pillow/manifests/9.5.0_1
####################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/pillow/blobs/sha256:996a0e92f7957956425d372f0e7b896a487708449b29b3ab57e491535
####################################################################################################################### 100.0%
==> Fetching python@3.11
==> Downloading https://ghcr.io/v2/homebrew/core/python/3.11/manifests/3.11.4-1
####################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/python/3.11/blobs/sha256:ae4c32c3a4924c93133e31d3810b5a8e992514775c6e91627e30
####################################################################################################################### 100.0%
==> Fetching teensy_loader_cli
==> Downloading https://ghcr.io/v2/homebrew/core/teensy_loader_cli/manifests/2.2
####################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/teensy_loader_cli/blobs/sha256:97148c203288820eb1f651a744f6bd0867b38383671ec7
####################################################################################################################### 100.0%
==> Fetching qmk/qmk/qmk
==> Downloading https://files.pythonhosted.org/packages/d7/d8/appdirs-1.4.4.tar.gz
####################################################################################################################### 100.0%
==> Downloading https://files.pythonhosted.org/packages/9d/50/argcomplete-3.0.5.tar.gz
####################################################################################################################### 100.0%
==> Downloading https://files.pythonhosted.org/packages/21/31/attrs-22.2.0.tar.gz
####################################################################################################################### 100.0%
==> Downloading https://files.pythonhosted.org/packages/d8/53/colorama-0.4.6.tar.gz
####################################################################################################################### 100.0%
==> Downloading https://files.pythonhosted.org/packages/6a/ab/dotty_dict-1.3.1.tar.gz
####################################################################################################################### 100.0%
==> Downloading https://files.pythonhosted.org/packages/ee/48/halo-0.0.31.tar.gz
####################################################################################################################### 100.0%
==> Downloading https://files.pythonhosted.org/packages/e0/2a/hid-1.0.5.tar.gz
####################################################################################################################### 100.0%
==> Downloading https://files.pythonhosted.org/packages/82/e5/hjson-3.1.0.tar.gz
####################################################################################################################### 100.0%
==> Downloading https://files.pythonhosted.org/packages/36/3d/jsonschema-4.17.3.tar.gz
####################################################################################################################### 100.0%
==> Downloading https://files.pythonhosted.org/packages/45/87/log_symbols-0.0.14.tar.gz
####################################################################################################################### 100.0%
==> Downloading https://files.pythonhosted.org/packages/92/c0/milc-1.6.6.tar.gz
####################################################################################################################### 100.0%
==> Downloading https://files.pythonhosted.org/packages/00/d5/Pillow-9.5.0.tar.gz
####################################################################################################################### 100.0%
==> Downloading https://files.pythonhosted.org/packages/da/6a/Pygments-2.14.0.tar.gz
####################################################################################################################### 100.0%
==> Downloading https://files.pythonhosted.org/packages/bf/90/pyrsistent-0.19.3.tar.gz
####################################################################################################################### 100.0%
==> Downloading https://files.pythonhosted.org/packages/1e/7d/pyserial-3.5.tar.gz
####################################################################################################################### 100.0%
==> Downloading https://files.pythonhosted.org/packages/d9/6e/pyusb-1.2.1.tar.gz
####################################################################################################################### 100.0%
==> Downloading https://files.pythonhosted.org/packages/71/39/six-1.16.0.tar.gz
####################################################################################################################### 100.0%
==> Downloading https://files.pythonhosted.org/packages/d3/91/spinners-0.0.24.tar.gz
####################################################################################################################### 100.0%
==> Downloading https://files.pythonhosted.org/packages/e5/4e/termcolor-2.2.0.tar.gz
####################################################################################################################### 100.0%
==> Downloading https://files.pythonhosted.org/packages/08/df/qmk-1.1.2.tar.gz
####################################################################################################################### 100.0%
==> Installing qmk from qmk/qmk
==> Installing dependencies for qmk/qmk/qmk: icu4c, boost, confuse, libftdi, libusb-compat, avrdude, bootloadhid, clang-format, dfu-programmer, dfu-util, make, mdloader, osx-cross/arm/arm-gcc-bin@8, automake, texinfo, avr-binutils, isl, mpfr, libmpc, osx-cross/avr/avr-gcc@8, libimagequant, libpng, fribidi, xorgproto, harfbuzz, libraqm, libtiff, openjpeg, tcl-tk, webp, pillow, python and teensy_loader_cli
==> Installing qmk/qmk/qmk dependency: icu4c
==> Pouring icu4c--73.2.arm64_ventura.bottle.tar.gz
🍺  /opt/homebrew/Cellar/icu4c/73.2: 268 files, 80.1MB
==> Installing qmk/qmk/qmk dependency: boost
==> Pouring boost--1.82.0_1.arm64_ventura.bottle.tar.gz
==> Downloading https://formulae.brew.sh/api/cask.jws.json
####################################################################################################################### 100.0%
🍺  /opt/homebrew/Cellar/boost/1.82.0_1: 16,057 files, 491.8MB
==> Installing qmk/qmk/qmk dependency: confuse
==> Pouring confuse--3.3.arm64_ventura.bottle.tar.gz
🍺  /opt/homebrew/Cellar/confuse/3.3: 15 files, 243.2KB
==> Installing qmk/qmk/qmk dependency: libftdi
==> Pouring libftdi--1.5_2.arm64_ventura.bottle.tar.gz
🍺  /opt/homebrew/Cellar/libftdi/1.5_2: 58 files, 1.1MB
==> Installing qmk/qmk/qmk dependency: libusb-compat
==> Pouring libusb-compat--0.1.8.arm64_ventura.bottle.tar.gz
🍺  /opt/homebrew/Cellar/libusb-compat/0.1.8: 14 files, 134.5KB
==> Installing qmk/qmk/qmk dependency: avrdude
==> Pouring avrdude--7.0_2.arm64_ventura.bottle.tar.gz
🍺  /opt/homebrew/Cellar/avrdude/7.0_2: 9 files, 2.4MB
==> Installing qmk/qmk/qmk dependency: bootloadhid
==> Pouring bootloadhid--2012-12-08.arm64_ventura.bottle.tar.gz
🍺  /opt/homebrew/Cellar/bootloadhid/2012-12-08: 6 files, 80.4KB
==> Installing qmk/qmk/qmk dependency: clang-format
==> Pouring clang-format--16.0.6.arm64_ventura.bottle.tar.gz
🍺  /opt/homebrew/Cellar/clang-format/16.0.6: 10 files, 2.9MB
==> Installing qmk/qmk/qmk dependency: dfu-programmer
==> Pouring dfu-programmer--1.0.0.arm64_ventura.bottle.tar.gz
🍺  /opt/homebrew/Cellar/dfu-programmer/1.0.0: 7 files, 159.9KB
==> Installing qmk/qmk/qmk dependency: dfu-util
==> Pouring dfu-util--0.11.arm64_ventura.bottle.tar.gz
🍺  /opt/homebrew/Cellar/dfu-util/0.11: 13 files, 285.9KB
==> Installing qmk/qmk/qmk dependency: make
==> Pouring make--4.4.1.arm64_ventura.bottle.tar.gz
🍺  /opt/homebrew/Cellar/make/4.4.1: 16 files, 1.3MB
==> Installing qmk/qmk/qmk dependency: mdloader
==> make prefix=/opt/homebrew/Cellar/mdloader/1.0.7_2
/opt/homebrew/Library/Taps/qmk/homebrew-qmk/Formula/mdloader.rb:19: warning: conflicting chdir during another chdir block
🍺  /opt/homebrew/Cellar/mdloader/1.0.7_2: 5 files, 110.7KB, built in 3 seconds
==> Installing qmk/qmk/qmk dependency: osx-cross/arm/arm-gcc-bin@8
🍺  /opt/homebrew/Cellar/arm-gcc-bin@8/8-2019-q3-update_3: 5,775 files, 509.4MB, built in 13 seconds
==> Installing qmk/qmk/qmk dependency: automake
==> Pouring automake--1.16.5.arm64_ventura.bottle.tar.gz
🍺  /opt/homebrew/Cellar/automake/1.16.5: 131 files, 3.5MB
==> Installing qmk/qmk/qmk dependency: texinfo
==> Pouring texinfo--7.0.3.arm64_ventura.bottle.tar.gz
🍺  /opt/homebrew/Cellar/texinfo/7.0.3: 417 files, 9MB
==> Installing qmk/qmk/qmk dependency: avr-binutils
==> Downloading https://formulae.brew.sh/api/formula.jws.json
####################################################################################################################### 100.0%
==> Patching
==> Applying avr-size.patch
patching file 'binutils/size.c'
==> Applying avr-binutils-elf-bfd-gdb-fix.patch
patching file 'bfd/elf-bfd.h'
==> ../configure --prefix=/opt/homebrew/Cellar/avr-binutils/2.40_2 --libdir=/opt/homebrew/Cellar/avr-binutils/2.40_2/lib/avr --infodir=/opt/homebrew/Cellar/avr-binutils/2.40_2/share/info --mandir=/opt/
==> make
==> make install
🍺  /opt/homebrew/Cellar/avr-binutils/2.40_2: 159 files, 13.5MB, built in 1 minute 4 seconds
==> Installing qmk/qmk/qmk dependency: isl
==> Pouring isl--0.26.arm64_ventura.bottle.tar.gz
🍺  /opt/homebrew/Cellar/isl/0.26: 73 files, 7.6MB
==> Installing qmk/qmk/qmk dependency: mpfr
==> Pouring mpfr--4.2.0-p9.arm64_ventura.bottle.tar.gz
🍺  /opt/homebrew/Cellar/mpfr/4.2.0-p9: 30 files, 3MB
==> Installing qmk/qmk/qmk dependency: libmpc
==> Pouring libmpc--1.3.1.arm64_ventura.bottle.tar.gz
🍺  /opt/homebrew/Cellar/libmpc/1.3.1: 12 files, 470KB
==> Installing qmk/qmk/qmk dependency: osx-cross/avr/avr-gcc@8
==> Patching
==> Applying gcc-11-arm-darwin.patch
patching file 'gcc/config/host-darwin.c'
==> ../configure --target=avr --prefix=/opt/homebrew/Cellar/avr-gcc@8/8.5.0_1 --libdir=/opt/homebrew/Cellar/avr-gcc@8/8.5.0_1/lib/avr-gcc/8 --enable-languages=c,c++ --with-ld=/opt/homebrew/opt/avr-binu
==> make BOOT_LDFLAGS=-Wl,-headerpad_max_install_names
==> make install
Forcing build system to aarch64-apple-darwin.
==> ./configure --prefix=/opt/homebrew/Cellar/avr-gcc@8/8.5.0_1 --host=avr
==> make install
🍺  /opt/homebrew/Cellar/avr-gcc@8/8.5.0_1: 1,753 files, 223.0MB, built in 6 minutes 48 seconds
==> Installing qmk/qmk/qmk dependency: libimagequant
==> Pouring libimagequant--4.2.0.arm64_ventura.bottle.tar.gz
🍺  /opt/homebrew/Cellar/libimagequant/4.2.0: 11 files, 13.6MB
==> Installing qmk/qmk/qmk dependency: libpng
==> Pouring libpng--1.6.40.arm64_ventura.bottle.tar.gz
🍺  /opt/homebrew/Cellar/libpng/1.6.40: 27 files, 1.3MB
==> Installing qmk/qmk/qmk dependency: fribidi
==> Pouring fribidi--1.0.13.arm64_ventura.bottle.tar.gz
🍺  /opt/homebrew/Cellar/fribidi/1.0.13: 67 files, 733.4KB
==> Installing qmk/qmk/qmk dependency: xorgproto
==> Pouring xorgproto--2023.2.arm64_ventura.bottle.tar.gz
🍺  /opt/homebrew/Cellar/xorgproto/2023.2: 267 files, 3.9MB
==> Installing qmk/qmk/qmk dependency: harfbuzz
==> Pouring harfbuzz--7.3.0_1.arm64_ventura.bottle.tar.gz
🍺  /opt/homebrew/Cellar/harfbuzz/7.3.0_1: 76 files, 9.2MB
==> Installing qmk/qmk/qmk dependency: libraqm
==> Pouring libraqm--0.10.1.arm64_ventura.bottle.tar.gz
🍺  /opt/homebrew/Cellar/libraqm/0.10.1: 11 files, 90.8KB
==> Installing qmk/qmk/qmk dependency: libtiff
==> Pouring libtiff--4.5.1.arm64_ventura.bottle.tar.gz
🍺  /opt/homebrew/Cellar/libtiff/4.5.1: 473 files, 8MB
==> Installing qmk/qmk/qmk dependency: openjpeg
==> Pouring openjpeg--2.5.0_1.arm64_ventura.bottle.tar.gz
🍺  /opt/homebrew/Cellar/openjpeg/2.5.0_1: 536 files, 13.8MB
==> Installing qmk/qmk/qmk dependency: tcl-tk
==> Pouring tcl-tk--8.6.13_3.arm64_ventura.bottle.1.tar.gz
🍺  /opt/homebrew/Cellar/tcl-tk/8.6.13_3: 3,064 files, 53.1MB
==> Installing qmk/qmk/qmk dependency: webp
==> Pouring webp--1.3.0_1.arm64_ventura.bottle.tar.gz
🍺  /opt/homebrew/Cellar/webp/1.3.0_1: 63 files, 2.3MB
==> Installing qmk/qmk/qmk dependency: pillow
==> Pouring pillow--9.5.0_1.arm64_ventura.bottle.tar.gz
🍺  /opt/homebrew/Cellar/pillow/9.5.0_1: 221 files, 4.2MB
==> Installing qmk/qmk/qmk dependency: python
==> Pouring python@3.11--3.11.4.arm64_ventura.bottle.1.tar.gz
==> /opt/homebrew/Cellar/python@3.11/3.11.4/bin/python3.11 -m ensurepip
==> /opt/homebrew/Cellar/python@3.11/3.11.4/bin/python3.11 -m pip install -v --no-deps --no-index --upgrade --isolated --target=/opt/homebrew/lib/python3.11/site-packages /opt/homebrew/Cellar/python@3.
🍺  /opt/homebrew/Cellar/python@3.11/3.11.4: 3,288 files, 61.9MB
==> Installing qmk/qmk/qmk dependency: teensy_loader_cli
==> Pouring teensy_loader_cli--2.2.arm64_ventura.bottle.tar.gz
🍺  /opt/homebrew/Cellar/teensy_loader_cli/2.2: 4 files, 62.4KB
==> Installing qmk/qmk/qmk
==> Downloading https://formulae.brew.sh/api/formula.jws.json
-#O=#     #       #
==> python3 -m venv --system-site-packages /opt/homebrew/Cellar/qmk/1.1.2_1/libexec
==> /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/bin/pip install -v --no-deps --no-binary
==> /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/bin/pip install -v --no-deps --no-binary
==> /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/bin/pip install -v --no-deps --no-binary
==> /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/bin/pip install -v --no-deps --no-binary
==> /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/bin/pip install -v --no-deps --no-binary
==> /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/bin/pip install -v --no-deps --no-binary
==> /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/bin/pip install -v --no-deps --no-binary
==> /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/bin/pip install -v --no-deps --no-binary
==> /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/bin/pip install -v --no-deps --no-binary
==> /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/bin/pip install -v --no-deps --no-binary
==> /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/bin/pip install -v --no-deps --no-binary
==> /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/bin/pip install -v --no-deps --no-binary
==> /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/bin/pip install -v --no-deps --no-binary
==> /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/bin/pip install -v --no-deps --no-binary
==> /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/bin/pip install -v --no-deps --no-binary
==> /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/bin/pip install -v --no-deps --no-binary
==> /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/bin/pip install -v --no-deps --no-binary
==> /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/bin/pip install -v --no-deps --no-binary
==> /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/bin/pip install -v --no-deps --no-binary
==> /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/bin/pip install -v --no-deps --no-binary
==> Caveats
QMK Firmware has been installed but your environment may not have been setup yet. Please set it up now:

    qmk setup

If you have a fork already you can specify it like this:

    qmk setup <username>/qmk_firmware

This will create qmk_firmware in your home directory. If you'd like to change this location, use the -H flag as well:

    qmk setup -H /your/preferred/path
==> Summary
🍺  /opt/homebrew/Cellar/qmk/1.1.2_1: 2,675 files, 32.3MB, built in 10 minutes 2 seconds
==> Running `brew cleanup qmk`...
Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
==> Caveats
==> qmk
QMK Firmware has been installed but your environment may not have been setup yet. Please set it up now:

    qmk setup

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
==> Downloading https://gist.githubusercontent.com/DavidEGrayson/88bceb3f4e62f45725ecbb9248366300/raw/c1f515475aff1e1e3985569d9b715edb0f317648/gcc-11-arm-darwin.patch
Already downloaded: /Users/asakunotomohiro/Library/Caches/Homebrew/downloads/def654fc009e1286443dbc4e1baa98eeeaee383d419d8a1d15200ab895520379--gcc-11-arm-darwin.patch
==> Downloading https://download.savannah.gnu.org/releases/avr-libc/avr-libc-2.1.0.tar.bz2
Already downloaded: /Users/asakunotomohiro/Library/Caches/Homebrew/downloads/82989e2eb60e70483e667482e25d205685a09019a1c993b99a467ad14d3bb2d0--avr-libc-2.1.0.tar.bz2
==> Downloading https://ftp.gnu.org/gnu/gcc/gcc-9.4.0/gcc-9.4.0.tar.xz
################################################################################################################################################################################################## 100.0%
==> Installing avr-gcc@9 from osx-cross/avr
==> Patching
==> Applying gcc-11-arm-darwin.patch
patching file 'gcc/config/host-darwin.c'
==> ../configure --target=avr --prefix=/opt/homebrew/Cellar/avr-gcc@9/9.4.0 --libdir=/opt/homebrew/Cellar/avr-gcc@9/9.4.0/lib/avr-gcc/9 --enable-languages=c,c++ --with-ld=/opt/homebrew/opt/avr-binutils
==> make BOOT_LDFLAGS=-Wl,-headerpad_max_install_names
==> make install
Forcing build system to aarch64-apple-darwin.
==> ./configure --prefix=/opt/homebrew/Cellar/avr-gcc@9/9.4.0 --host=avr
==> make install
🍺  /opt/homebrew/Cellar/avr-gcc@9/9.4.0: 1,761 files, 225.3MB, built in 8 minutes 25 seconds
==> Running `brew cleanup avr-gcc@9`...
Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
Removing: /Users/asakunotomohiro/Library/Caches/Homebrew/avr-gcc@9--patch--c4e9df9802772ddecb71aa675bb9403ad34c085d1359cb0e45b308ab6db551c6.patch... (594B)
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
####################################################################################################################### 100.0%
==> Fetching dependencies for osx-cross/arm/arm-none-eabi-gcc@9: arm-none-eabi-binutils
==> Fetching osx-cross/arm/arm-none-eabi-binutils
==> Downloading https://ftp.gnu.org/gnu/binutils/binutils-2.38.tar.xz
####################################################################################################################### 100.0%
==> Fetching osx-cross/arm/arm-none-eabi-gcc@9
==> Downloading https://gist.githubusercontent.com/DavidEGrayson/raw/gcc-11-arm-darwin.patch
Already downloaded: /Users/asakunotomohiro/Library/Caches/Homebrew/downloads/gcc-11-arm-darwin.patch
==> Downloading https://sourceware.org/pub/newlib/newlib-3.3.0.tar.gz
####################################################################################################################### 100.0%
==> Downloading https://ftp.gnu.org/gnu/gcc/gcc-9.5.0/gcc-9.5.0.tar.xz
####################################################################################################################### 100.0%
==> Installing arm-none-eabi-gcc@9 from osx-cross/arm
==> Installing dependencies for osx-cross/arm/arm-none-eabi-gcc@9: arm-none-eabi-binutils
==> Installing osx-cross/arm/arm-none-eabi-gcc@9 dependency: arm-none-eabi-binutils
==> ../configure --target=arm-none-eabi --prefix=/opt/homebrew/Cellar/arm-none-eabi-binutils/2.38
==> make
==> make install
🍺  /opt/homebrew/Cellar/arm-none-eabi-binutils/2.38: 76 files, 22.7MB, built in 1 minute 20 seconds
==> Installing osx-cross/arm/arm-none-eabi-gcc@9
==> Patching
==> Applying gcc-11-arm-darwin.patch
patching file 'gcc/config/host-darwin.c'
==> /private/tmp/arm-none-eabi-gccA9-20230624-88329-xckq98/gcc-9.5.0/configure --prefix=/ --target=arm-none-eabi
==> make all-gcc BOOT_LDFLAGS=-Wl,-headerpad_max_install_names
==> make DESTDIR=/private/tmp/arm-none-eabi-gccA9-20230624-88329-xckq98/gcc-install install-gcc
==> ../configure --target=arm-none-eabi --prefix=/opt/homebrew/Cellar/arm-none-eabi-gcc@9/9.5.0
==> make
==> make install
==> ../configure --target=arm-none-eabi --prefix=/opt/homebrew/Cellar/arm-none-eabi-gcc@9/9.5.0
==> make
==> make install
==> ../configure --target=arm-none-eabi --prefix=/opt/homebrew/Cellar/arm-none-eabi-gcc@9/9.5.0 --libdir=/opt/homebrew/Cellar/arm-none-eabi-gcc/9 --with-python-dir=share/g
==> make INHIBIT_LIBC_CFLAGS='-DUSE_TM_CLONE_REGISTRY=0' BOOT_LDFLAGS=-Wl,-headerpad_max_install_names
==> make install
==> ../configure --target=arm-none-eabi --prefix=/opt/homebrew/Cellar/arm-none-eabi-gcc@9/9.5.0 --libdir=/opt/homebrew/Cellar/arm-none-eabi-gcc/9 --with-python-dir=share/g
==> make INHIBIT_LIBC_CFLAGS='-DUSE_TM_CLONE_REGISTRY=0' BOOT_LDFLAGS=-Wl,-headerpad_max_install_names
==> make DESTDIR=/private/tmp/arm-none-eabi-gccA9-20230624-88329-xckq98/nano-install install
==> arm-none-eabi-objcopy -R .comment -R .note -R .debug_info -R .debug_aranges -R .debug_pubnames -R .debug_pubtypes -R .debug_abbrev -R .debug_line -R .debug_str -R .debug_ranges -R .debug_loc /opt/h
==> Caveats
arm-none-eabi-gcc@9 is keg-only, which means it was not symlinked into /opt/homebrew,
because it might interfere with other version of arm-gcc.
This is useful if you want to have multiple version of arm-none-eabi-gcc
installed on the same machine.

If you need to have arm-none-eabi-gcc@9 first in your PATH, run:
  echo 'export PATH="/opt/homebrew/opt/arm-none-eabi-gcc@9/bin:$PATH"' >> ~/.zshrc

For compilers to find arm-none-eabi-gcc@9 you may need to set:
  export LDFLAGS="-L/opt/homebrew/opt/arm-none-eabi-gcc@9/lib"
==> Summary
🍺  /opt/homebrew/Cellar/arm-none-eabi-gcc@9/9.5.0: 2,927 files, 399.3MB, built in 423 minutes 24 seconds
==> Running `brew cleanup arm-none-eabi-gcc@9`...
Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
Removing: /Users/asakunotomohiro/Library/Caches/Homebrew/arm-none-eabi-gcc@9--patch--c4e9df9802772ddecb71aa675.patch... (594B)
==> Caveats
==> arm-none-eabi-gcc@9
arm-none-eabi-gcc@9 is keg-only, which means it was not symlinked into /opt/homebrew,
because it might interfere with other version of arm-gcc.
This is useful if you want to have multiple version of arm-none-eabi-gcc
installed on the same machine.

If you need to have arm-none-eabi-gcc@9 first in your PATH, run:
  echo 'export PATH="/opt/homebrew/opt/arm-none-eabi-gcc@9/bin:$PATH"' >> ~/.zshrc	←☆使う方法が記載されていた。

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
$ qmk setup
☒ Could not find qmk_firmware!
Would you like to clone qmk/qmk_firmware to /Users/asakunotomohiro/qmk_firmware? [y/n] y	←☆ここでセットアップするのは軽率だったかも。
Cloning into '/Users/asakunotomohiro/qmk_firmware'...
Updating files:  31% (11137/35623)
Updating files:  32% (11400/35623)
（略）
Updating files:  98% (34911/35623)
Updating files:  99% (35267/35623)
Updating files: 100% (35623/35623)
Updating files: 100% (35623/35623), done.
Submodule 'lib/chibios' (https://github.com/qmk/ChibiOS) registered for path 'lib/chibios'
Submodule 'lib/chibios-contrib' (https://github.com/qmk/ChibiOS-Contrib) registered for path 'lib/chibios-contrib'
Submodule 'lib/googletest' (https://github.com/qmk/googletest) registered for path 'lib/googletest'
Submodule 'lib/lufa' (https://github.com/qmk/lufa) registered for path 'lib/lufa'
Submodule 'lib/lvgl' (https://github.com/qmk/lvgl.git) registered for path 'lib/lvgl'
Submodule 'lib/pico-sdk' (https://github.com/qmk/pico-sdk.git) registered for path 'lib/pico-sdk'
Submodule 'lib/printf' (https://github.com/qmk/printf) registered for path 'lib/printf'
Submodule 'lib/vusb' (https://github.com/qmk/v-usb) registered for path 'lib/vusb'
Cloning into '/Users/asakunotomohiro/qmk_firmware/lib/chibios'...
（略）
Submodule path 'lib/vusb': checked out '819dbc1e5d5926b17e27e00ca6d3d2988adae04e'
Ψ Successfully cloned https://github.com/qmk/qmk_firmware to /Users/asakunotomohiro/qmk_firmware!
Ψ Added https://github.com/qmk/qmk_firmware as remote upstream.
Ψ QMK Doctor is checking your environment.
Ψ CLI version: 1.1.2
Ψ QMK home: /Users/asakunotomohiro/qmk_firmware
Ψ Detected macOS 13.4 (Apple Silicon).
Ψ Git branch: master
Ψ Repo version: 0.21.3
Ψ - Latest master: 2023-06-24 11:54:23 -0700 (3a42fbb0c9) -- Mechlovin Zed65 rev1 Touch-Up (#21373)
Ψ - Latest upstream/master: 2023-06-24 11:54:23 -0700 (3a42fbb0c9) -- Mechlovin Zed65 rev1 Touch-Up (#21373)
Ψ - Latest upstream/develop: None
Ψ - Common ancestor with upstream/master: 2023-06-24 11:54:23 -0700 (3a42fbb0c9) -- Mechlovin Zed65 rev1 Touch-Up (#21373)
Ψ - Common ancestor with upstream/develop: None
Ψ CLI installed in virtualenv.
☒ Can't find arm-none-eabi-gcc in your path.
Would you like to install dependencies? [Y/n] Y
Checking Homebrew installation
Updated 1 tap (homebrew/cask).
==> New Casks
rio
==> Outdated Formulae
freetype

You have 1 outdated formula installed.
You can upgrade it with brew upgrade
or list it with brew outdated.
==> Upgrading 1 outdated package:
freetype 2.13.0_1 -> 2.13.1
==> Fetching freetype
==> Downloading https://ghcr.io/v2/homebrew/core/freetype/manifests/2.13.1
######################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/freetype/blobs/sha256:87a44e9a3
######################################################################### 100.0%
==> Upgrading freetype
  2.13.0_1 -> 2.13.1

==> Pouring freetype--2.13.1.arm64_ventura.bottle.tar.gz
🍺  /opt/homebrew/Cellar/freetype/2.13.1: 67 files, 2.4MB
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
Requirement already satisfied: appdirs in /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/lib/python3.11/site-packages (from -r /Users/asakunotomohiro/qmk_firmware/requirements.txt (line 2)) (1.4.4)
Requirement already satisfied: argcomplete in /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/lib/python3.11/site-packages (from -r /Users/asakunotomohiro/qmk_firmware/requirements.txt (line 3)) (3.0.5)
Requirement already satisfied: colorama in /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/lib/python3.11/site-packages (from -r /Users/asakunotomohiro/qmk_firmware/requirements.txt (line 4)) (0.4.6)
Requirement already satisfied: dotty-dict in /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/lib/python3.11/site-packages (from -r /Users/asakunotomohiro/qmk_firmware/requirements.txt (line 5)) (1.3.1)
Requirement already satisfied: hid in /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/lib/python3.11/site-packages (from -r /Users/asakunotomohiro/qmk_firmware/requirements.txt (line 6)) (1.0.5)
Requirement already satisfied: hjson in /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/lib/python3.11/site-packages (from -r /Users/asakunotomohiro/qmk_firmware/requirements.txt (line 7)) (3.1.0)
Requirement already satisfied: jsonschema>=4 in /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/lib/python3.11/site-packages (from -r /Users/asakunotomohiro/qmk_firmware/requirements.txt (line 8)) (4.17.3)
Requirement already satisfied: milc>=1.4.2 in /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/lib/python3.11/site-packages (from -r /Users/asakunotomohiro/qmk_firmware/requirements.txt (line 9)) (1.6.6)
Requirement already satisfied: pygments in /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/lib/python3.11/site-packages (from -r /Users/asakunotomohiro/qmk_firmware/requirements.txt (line 10)) (2.14.0)
Requirement already satisfied: pyserial in /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/lib/python3.11/site-packages (from -r /Users/asakunotomohiro/qmk_firmware/requirements.txt (line 11)) (3.5)
Requirement already satisfied: pyusb in /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/lib/python3.11/site-packages (from -r /Users/asakunotomohiro/qmk_firmware/requirements.txt (line 12)) (1.2.1)
Requirement already satisfied: pillow in /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/lib/python3.11/site-packages (from -r /Users/asakunotomohiro/qmk_firmware/requirements.txt (line 13)) (9.5.0)
Requirement already satisfied: attrs>=17.4.0 in /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/lib/python3.11/site-packages (from jsonschema>=4->-r /Users/asakunotomohiro/qmk_firmware/requirements.txt (line 8)) (22.2.0)
Requirement already satisfied: pyrsistent!=0.17.0,!=0.17.1,!=0.17.2,>=0.14.0 in /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/lib/python3.11/site-packages (from jsonschema>=4->-r /Users/asakunotomohiro/qmk_firmware/requirements.txt (line 8)) (0.19.3)
Requirement already satisfied: halo in /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/lib/python3.11/site-packages (from milc>=1.4.2->-r /Users/asakunotomohiro/qmk_firmware/requirements.txt (line 9)) (0.0.31)
Requirement already satisfied: spinners in /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/lib/python3.11/site-packages (from milc>=1.4.2->-r /Users/asakunotomohiro/qmk_firmware/requirements.txt (line 9)) (0.0.24)
Requirement already satisfied: log_symbols>=0.0.14 in /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/lib/python3.11/site-packages (from halo->milc>=1.4.2->-r /Users/asakunotomohiro/qmk_firmware/requirements.txt (line 9)) (0.0.14)
Requirement already satisfied: termcolor>=1.1.0 in /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/lib/python3.11/site-packages (from halo->milc>=1.4.2->-r /Users/asakunotomohiro/qmk_firmware/requirements.txt (line 9)) (2.2.0)
Requirement already satisfied: six>=1.12.0 in /opt/homebrew/Cellar/qmk/1.1.2_1/libexec/lib/python3.11/site-packages (from halo->milc>=1.4.2->-r /Users/asakunotomohiro/qmk_firmware/requirements.txt (line 9)) (1.16.0)

[notice] A new release of pip is available: 23.0.1 -> 23.1.2
[notice] To update, run: pip install --upgrade pip
Ψ All dependencies are installed.
Ψ Found arm-none-eabi-gcc version 8.3.1
Ψ Found avr-gcc version 9.4.0
⚠ We do not recommend avr-gcc newer than 8. Downgrading to 8.x is recommended.
Ψ Found avrdude version 7.0
Ψ Found dfu-programmer version 1.0.0
Ψ Found dfu-util version 0.11
Ψ Submodules are up to date.
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
$ make planck/rev7:default
Making planck/rev7 with keymap default

arm-none-eabi-gcc (GNU Tools for Arm Embedded Processors 8-2019-q3-update) 8.3.1 20190703 (release) [gcc-8-branch revision 273027]
Copyright (C) 2018 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

Compiling: keyboards/planck/rev7/matrix.c                                                           [OK]
Compiling: keyboards/planck/planck.c                                                                [OK]
Compiling: keyboards/planck/rev7/rev7.c                                                             [OK]
Compiling: .build/obj_planck_rev7/src/default_keyboard.c                                            [OK]
Compiling: quantum/keymap_introspection.c                                                           [OK]
Compiling: quantum/quantum.c                                                                        [OK]
Compiling: quantum/bitwise.c                                                                        [OK]
Compiling: quantum/led.c                                                                            [OK]
Compiling: quantum/action.c                                                                         [OK]
Compiling: quantum/action_layer.c                                                                   [OK]
Compiling: quantum/action_tapping.c                                                                 [OK]
Compiling: quantum/action_util.c                                                                    [OK]
Compiling: quantum/eeconfig.c                                                                       [OK]
Compiling: quantum/keyboard.c                                                                       [OK]
Compiling: quantum/keymap_common.c                                                                  [OK]
Compiling: quantum/keycode_config.c                                                                 [OK]
Compiling: quantum/sync_timer.c                                                                     [OK]
Compiling: quantum/logging/debug.c                                                                  [OK]
Compiling: quantum/logging/sendchar.c                                                               [OK]
Compiling: quantum/logging/print.c                                                                  [OK]
Compiling: quantum/bootmagic/bootmagic_lite.c                                                       [OK]
Compiling: quantum/bootmagic/magic.c                                                                [OK]
Compiling: quantum/matrix_common.c                                                                  [OK]
Compiling: quantum/debounce/sym_defer_g.c                                                           [OK]
Compiling: quantum/main.c                                                                           [OK]
Compiling: lib/printf/src/printf/printf.c                                                           [OK]
Compiling: quantum/process_keycode/process_audio.c                                                  [OK]
Compiling: quantum/process_keycode/process_clicky.c                                                 [OK]
Compiling: quantum/audio/audio.c                                                                    [OK]
Compiling: platforms/chibios/drivers/audio_dac_basic.c                                              [OK]
Compiling: quantum/audio/voices.c                                                                   [OK]
Compiling: quantum/audio/luts.c                                                                     [OK]
Compiling: quantum/process_keycode/process_music.c                                                  [OK]
Compiling: quantum/mousekey.c                                                                       [OK]
Compiling: drivers/eeprom/eeprom_driver.c                                                           [OK]
Compiling: drivers/eeprom/eeprom_wear_leveling.c                                                    [OK]
Compiling: quantum/wear_leveling/wear_leveling.c                                                    [OK]
Compiling: platforms/chibios/drivers/wear_leveling/wear_leveling_efl.c                              [OK]
Compiling: quantum/color.c                                                                          [OK]
Compiling: quantum/rgblight/rgblight.c                                                              [OK]
Compiling: quantum/process_keycode/process_rgb.c                                                    [OK]
Compiling: platforms/chibios/drivers/ws2812_pwm.c                                                   [OK]
Compiling: quantum/led_tables.c                                                                     [OK]
Compiling: lib/fnv/qmk_fnv_type_validation.c                                                        [OK]
Compiling: lib/fnv/hash_32a.c                                                                       [OK]
Compiling: lib/fnv/hash_64a.c                                                                       [OK]
Compiling: quantum/process_keycode/process_magic.c                                                  [OK]
Compiling: quantum/send_string/send_string.c                                                        [OK]
Compiling: quantum/encoder.c                                                                        [OK]
Compiling: quantum/command.c                                                                        [OK]
Compiling: quantum/deferred_exec.c                                                                  [OK]
Compiling: quantum/dip_switch.c                                                                     [OK]
Compiling: quantum/process_keycode/process_grave_esc.c                                              [OK]
Compiling: quantum/process_keycode/process_space_cadet.c                                            [OK]
Assembling: lib/chibios/os/common/startup/ARMCMx/compilers/GCC/crt0_v7m.S                           [OK]
Assembling: lib/chibios/os/common/startup/ARMCMx/compilers/GCC/vectors.S                            [OK]
Assembling: lib/chibios/os/common/ports/ARMv7-M/compilers/GCC/chcoreasm.S                           [OK]
Compiling: tmk_core/protocol/host.c                                                                 [OK]
Compiling: tmk_core/protocol/report.c                                                               [OK]
Compiling: tmk_core/protocol/usb_device_state.c                                                     [OK]
Compiling: tmk_core/protocol/usb_util.c                                                             [OK]
Compiling: platforms/suspend.c                                                                      [OK]
Compiling: platforms/synchronization_util.c                                                         [OK]
Compiling: platforms/timer.c                                                                        [OK]
Compiling: platforms/chibios/hardware_id.c                                                          [OK]
Compiling: platforms/chibios/platform.c                                                             [OK]
Compiling: platforms/chibios/suspend.c                                                              [OK]
Compiling: platforms/chibios/timer.c                                                                [OK]
Compiling: platforms/chibios/bootloaders/stm32_dfu.c                                                [OK]
Compiling: tmk_core/protocol/chibios/usb_main.c                                                     [OK]
Compiling: tmk_core/protocol/chibios/chibios.c                                                      [OK]
Compiling: tmk_core/protocol/usb_descriptor.c                                                       [OK]
Compiling: tmk_core/protocol/chibios/usb_driver.c                                                   [OK]
Compiling: tmk_core/protocol/chibios/usb_util.c                                                     [OK]
Compiling: lib/chibios/os/oslib/src/chmboxes.c                                                      [OK]
Compiling: lib/chibios/os/oslib/src/chmemcore.c                                                     [OK]
Compiling: lib/chibios/os/oslib/src/chmemheaps.c                                                    [OK]
Compiling: lib/chibios/os/oslib/src/chmempools.c                                                    [OK]
Compiling: lib/chibios/os/oslib/src/chpipes.c                                                       [OK]
Compiling: lib/chibios/os/oslib/src/chobjcaches.c                                                   [OK]
Compiling: lib/chibios/os/oslib/src/chdelegates.c                                                   [OK]
Compiling: lib/chibios/os/oslib/src/chfactory.c                                                     [OK]
Compiling: lib/chibios/os/common/startup/ARMCMx/compilers/GCC/crt1.c                                [OK]
Compiling: lib/chibios/os/rt/src/chsys.c                                                            [OK]
Compiling: lib/chibios/os/rt/src/chrfcu.c                                                           [OK]
Compiling: lib/chibios/os/rt/src/chdebug.c                                                          [OK]
Compiling: lib/chibios/os/rt/src/chtrace.c                                                          [OK]
Compiling: lib/chibios/os/rt/src/chvt.c                                                             [OK]
Compiling: lib/chibios/os/rt/src/chschd.c                                                           [OK]
Compiling: lib/chibios/os/rt/src/chinstances.c                                                      [OK]
Compiling: lib/chibios/os/rt/src/chthreads.c                                                        [OK]
Compiling: lib/chibios/os/rt/src/chtm.c                                                             [OK]
Compiling: lib/chibios/os/rt/src/chstats.c                                                          [OK]
Compiling: lib/chibios/os/rt/src/chregistry.c                                                       [OK]
Compiling: lib/chibios/os/rt/src/chsem.c                                                            [OK]
Compiling: lib/chibios/os/rt/src/chmtx.c                                                            [OK]
Compiling: lib/chibios/os/rt/src/chcond.c                                                           [OK]
Compiling: lib/chibios/os/rt/src/chevents.c                                                         [OK]
Compiling: lib/chibios/os/rt/src/chmsg.c                                                            [OK]
Compiling: lib/chibios/os/rt/src/chdynamic.c                                                        [OK]
Compiling: lib/chibios/os/common/ports/ARMv7-M/chcore.c                                             [OK]
Compiling: lib/chibios/os/hal/osal/rt-nil/osal.c                                                    [OK]
Compiling: lib/chibios/os/hal/src/hal.c                                                             [OK]
Compiling: lib/chibios/os/hal/src/hal_st.c                                                          [OK]
Compiling: lib/chibios/os/hal/src/hal_buffers.c                                                     [OK]
Compiling: lib/chibios/os/hal/src/hal_queues.c                                                      [OK]
Compiling: lib/chibios/os/hal/src/hal_flash.c                                                       [OK]
Compiling: lib/chibios/os/hal/src/hal_mmcsd.c                                                       [OK]
Compiling: lib/chibios/os/hal/src/hal_adc.c                                                         [OK]
Compiling: lib/chibios/os/hal/src/hal_can.c                                                         [OK]
Compiling: lib/chibios/os/hal/src/hal_crypto.c                                                      [OK]
Compiling: lib/chibios/os/hal/src/hal_dac.c                                                         [OK]
Compiling: lib/chibios/os/hal/src/hal_efl.c                                                         [OK]
Compiling: lib/chibios/os/hal/src/hal_gpt.c                                                         [OK]
Compiling: lib/chibios/os/hal/src/hal_i2c.c                                                         [OK]
Compiling: lib/chibios/os/hal/src/hal_i2s.c                                                         [OK]
Compiling: lib/chibios/os/hal/src/hal_icu.c                                                         [OK]
Compiling: lib/chibios/os/hal/src/hal_mac.c                                                         [OK]
Compiling: lib/chibios/os/hal/src/hal_mmc_spi.c                                                     [OK]
Compiling: lib/chibios/os/hal/src/hal_pal.c                                                         [OK]
Compiling: lib/chibios/os/hal/src/hal_pwm.c                                                         [OK]
Compiling: lib/chibios/os/hal/src/hal_rtc.c                                                         [OK]
Compiling: lib/chibios/os/hal/src/hal_sdc.c                                                         [OK]
Compiling: lib/chibios/os/hal/src/hal_serial.c                                                      [OK]
Compiling: lib/chibios/os/hal/src/hal_serial_usb.c                                                  [OK]
Compiling: lib/chibios/os/hal/src/hal_sio.c                                                         [OK]
Compiling: lib/chibios/os/hal/src/hal_spi.c                                                         [OK]
Compiling: lib/chibios/os/hal/src/hal_trng.c                                                        [OK]
Compiling: lib/chibios/os/hal/src/hal_uart.c                                                        [OK]
Compiling: lib/chibios/os/hal/src/hal_usb.c                                                         [OK]
Compiling: lib/chibios/os/hal/src/hal_wdg.c                                                         [OK]
Compiling: lib/chibios/os/hal/src/hal_wspi.c                                                        [OK]
Compiling: lib/chibios/os/hal/ports/common/ARMCMx/nvic.c                                            [OK]
Compiling: lib/chibios/os/hal/ports/STM32/STM32F3xx/stm32_isr.c                                     [OK]
Compiling: lib/chibios/os/hal/ports/STM32/STM32F3xx/hal_lld.c                                       [OK]
Compiling: lib/chibios/os/hal/ports/STM32/STM32F3xx/hal_efl_lld.c                                   [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/ADCv3/hal_adc_lld.c                                   [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/CANv1/hal_can_lld.c                                   [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/DACv1/hal_dac_lld.c                                   [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/DMAv1/stm32_dma.c                                     [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/EXTIv1/stm32_exti.c                                   [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/GPIOv2/hal_pal_lld.c                                  [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/I2Cv2/hal_i2c_lld.c                                   [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/RTCv2/hal_rtc_lld.c                                   [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/SPIv2/hal_i2s_lld.c                                   [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/SPIv2/hal_spi_v2_lld.c                                [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/SYSTICKv1/hal_st_lld.c                                [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/TIMv1/hal_gpt_lld.c                                   [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/TIMv1/hal_icu_lld.c                                   [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/TIMv1/hal_pwm_lld.c                                   [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/USARTv2/hal_serial_lld.c                              [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/USARTv2/hal_sio_lld.c                                 [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/USARTv2/hal_uart_lld.c                                [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/USBv1/hal_usb_lld.c                                   [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/xWDGv1/hal_wdg_lld.c                                  [OK]
Compiling: lib/chibios/os/hal/boards/ST_STM32F3_DISCOVERY/board.c                                   [OK]
Compiling: lib/chibios/os/hal/lib/streams/chprintf.c                                                [OK]
Compiling: lib/chibios/os/hal/lib/streams/chscanf.c                                                 [OK]
Compiling: lib/chibios/os/hal/lib/streams/memstreams.c                                              [OK]
Compiling: lib/chibios/os/hal/lib/streams/nullstreams.c                                             [OK]
Compiling: lib/chibios/os/hal/lib/streams/bufstreams.c                                              [OK]
Compiling: lib/chibios/os/various/syscalls.c                                                        [OK]
Compiling: platforms/chibios/syscall-fallbacks.c                                                    [OK]
Compiling: platforms/chibios/wait.c                                                                 [OK]
Compiling: platforms/chibios/synchronization_util.c                                                 [OK]
Linking: .build/planck_rev7_default.elf                                                             [OK]
Creating binary load file for flashing: .build/planck_rev7_default.bin                              [OK]
Creating load file for flashing: .build/planck_rev7_default.hex                                     [OK]

Size after:
   text    data     bss     dec     hex filename
      0   54220       0   54220    d3cc planck_rev7_default.bin

Copying planck_rev7_default.bin to qmk_firmware folder                                              [OK]
(Firmware size check does not yet support STM32F303; skipping)
$ echo $?
0
$
```

以下、qmkコマンドによるコンパイル。
```terminal
$ qmk compile -kb planck/rev7 -km default
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
$ brew install --cask qmk-toolbox	←☆QMKツールボックスをインストール(ツールボックスではなく、qmkが必須)。
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
$ qmk hello	←☆駄目じゃねぇか。
zsh: command not found: qmk
$ ll -d /Applications/QMK\ Toolbox.app	←☆インストール確認した。
drwxr-xr-x@ 3 asakunotomohiro  admin  96  5 18  2022 /Applications/QMK Toolbox.app/
$
```
Macのセキュリティが働き、制限がかかっていると思ったが、どうやらそういうことでもないようだ。  
本当にGUIからの操作のみになっている(なぜなんだろう)。  
CUIで操作できないとは説明になかった(GUIで操作することの説明もなかったぞ)。  

MEMO: システム設定---\>プライバシーとセキュリティ---\>セキュリティ---\>App Storeと確認済みの開発元からのアプリケーションを許可  

* 独自のキーマップ作成作業。  
  1. [planckディレクトリ配下に移動](#keyboard_qmk_planck_make_cd)。  
  1. [keymapsディレクトリ配下に独自ディレクトリ作成](#keyboard_qmk_planck_make_mkdir)。  
  1. [qmkファームウェアディレクトリ直下でコンパイル](#keyboard_qmk_planck_make_qmkcompile)。  

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
以下、planck/keymapsディレクトリ配下に独自ディレクトリの用意。
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

Compiling: keyboards/planck/rev7/matrix.c                                                           [OK]
Compiling: quantum/audio/muse.c                                                                     [OK]
Compiling: keyboards/planck/planck.c                                                                [OK]
Compiling: keyboards/planck/rev7/rev7.c                                                             [OK]
Compiling: .build/obj_planck_rev7/src/default_keyboard.c                                            [OK]
Compiling: quantum/keymap_introspection.c                                                           [OK]
Compiling: quantum/quantum.c                                                                        [OK]
Compiling: quantum/bitwise.c                                                                        [OK]
Compiling: quantum/led.c                                                                            [OK]
Compiling: quantum/action.c                                                                         [OK]
Compiling: quantum/action_layer.c                                                                   [OK]
Compiling: quantum/action_tapping.c                                                                 [OK]
Compiling: quantum/action_util.c                                                                    [OK]
Compiling: quantum/eeconfig.c                                                                       [OK]
Compiling: quantum/keyboard.c                                                                       [OK]
Compiling: quantum/keymap_common.c                                                                  [OK]
Compiling: quantum/keycode_config.c                                                                 [OK]
Compiling: quantum/sync_timer.c                                                                     [OK]
Compiling: quantum/logging/debug.c                                                                  [OK]
Compiling: quantum/logging/sendchar.c                                                               [OK]
Compiling: quantum/logging/print.c                                                                  [OK]
Compiling: quantum/bootmagic/bootmagic_lite.c                                                       [OK]
Compiling: quantum/bootmagic/magic.c                                                                [OK]
Compiling: quantum/matrix_common.c                                                                  [OK]
Compiling: quantum/debounce/sym_defer_g.c                                                           [OK]
Compiling: quantum/main.c                                                                           [OK]
Compiling: lib/printf/src/printf/printf.c                                                           [OK]
Compiling: quantum/process_keycode/process_audio.c                                                  [OK]
Compiling: quantum/process_keycode/process_clicky.c                                                 [OK]
Compiling: quantum/audio/audio.c                                                                    [OK]
Compiling: platforms/chibios/drivers/audio_dac_basic.c                                              [OK]
Compiling: quantum/audio/voices.c                                                                   [OK]
Compiling: quantum/audio/luts.c                                                                     [OK]
Compiling: quantum/process_keycode/process_music.c                                                  [OK]
Compiling: quantum/mousekey.c                                                                       [OK]
Compiling: drivers/eeprom/eeprom_driver.c                                                           [OK]
Compiling: drivers/eeprom/eeprom_wear_leveling.c                                                    [OK]
Compiling: quantum/wear_leveling/wear_leveling.c                                                    [OK]
Compiling: platforms/chibios/drivers/wear_leveling/wear_leveling_efl.c                              [OK]
Compiling: quantum/color.c                                                                          [OK]
Compiling: quantum/rgblight/rgblight.c                                                              [OK]
Compiling: quantum/process_keycode/process_rgb.c                                                    [OK]
Compiling: platforms/chibios/drivers/ws2812_pwm.c                                                   [OK]
Compiling: quantum/led_tables.c                                                                     [OK]
Compiling: lib/fnv/qmk_fnv_type_validation.c                                                        [OK]
Compiling: lib/fnv/hash_32a.c                                                                       [OK]
Compiling: lib/fnv/hash_64a.c                                                                       [OK]
Compiling: quantum/process_keycode/process_magic.c                                                  [OK]
Compiling: quantum/send_string/send_string.c                                                        [OK]
Compiling: quantum/encoder.c                                                                        [OK]
Compiling: quantum/command.c                                                                        [OK]
Compiling: quantum/dip_switch.c                                                                     [OK]
Compiling: quantum/process_keycode/process_grave_esc.c                                              [OK]
Compiling: quantum/process_keycode/process_space_cadet.c                                            [OK]
Assembling: lib/chibios/os/common/startup/ARMCMx/compilers/GCC/crt0_v7m.S                           [OK]
Assembling: lib/chibios/os/common/startup/ARMCMx/compilers/GCC/vectors.S                            [OK]
Assembling: lib/chibios/os/common/ports/ARMv7-M/compilers/GCC/chcoreasm.S                           [OK]
Compiling: tmk_core/protocol/host.c                                                                 [OK]
Compiling: tmk_core/protocol/report.c                                                               [OK]
Compiling: tmk_core/protocol/usb_device_state.c                                                     [OK]
Compiling: tmk_core/protocol/usb_util.c                                                             [OK]
Compiling: platforms/suspend.c                                                                      [OK]
Compiling: platforms/synchronization_util.c                                                         [OK]
Compiling: platforms/timer.c                                                                        [OK]
Compiling: platforms/chibios/hardware_id.c                                                          [OK]
Compiling: platforms/chibios/platform.c                                                             [OK]
Compiling: platforms/chibios/suspend.c                                                              [OK]
Compiling: platforms/chibios/timer.c                                                                [OK]
Compiling: platforms/chibios/bootloaders/stm32_dfu.c                                                [OK]
Compiling: tmk_core/protocol/chibios/usb_main.c                                                     [OK]
Compiling: tmk_core/protocol/chibios/chibios.c                                                      [OK]
Compiling: tmk_core/protocol/usb_descriptor.c                                                       [OK]
Compiling: tmk_core/protocol/chibios/usb_driver.c                                                   [OK]
Compiling: tmk_core/protocol/chibios/usb_util.c                                                     [OK]
Compiling: lib/chibios/os/oslib/src/chmboxes.c                                                      [OK]
Compiling: lib/chibios/os/oslib/src/chmemcore.c                                                     [OK]
Compiling: lib/chibios/os/oslib/src/chmemheaps.c                                                    [OK]
Compiling: lib/chibios/os/oslib/src/chmempools.c                                                    [OK]
Compiling: lib/chibios/os/oslib/src/chpipes.c                                                       [OK]
Compiling: lib/chibios/os/oslib/src/chobjcaches.c                                                   [OK]
Compiling: lib/chibios/os/oslib/src/chdelegates.c                                                   [OK]
Compiling: lib/chibios/os/oslib/src/chfactory.c                                                     [OK]
Compiling: lib/chibios/os/common/startup/ARMCMx/compilers/GCC/crt1.c                                [OK]
Compiling: lib/chibios/os/rt/src/chsys.c                                                            [OK]
Compiling: lib/chibios/os/rt/src/chrfcu.c                                                           [OK]
Compiling: lib/chibios/os/rt/src/chdebug.c                                                          [OK]
Compiling: lib/chibios/os/rt/src/chtrace.c                                                          [OK]
Compiling: lib/chibios/os/rt/src/chvt.c                                                             [OK]
Compiling: lib/chibios/os/rt/src/chschd.c                                                           [OK]
Compiling: lib/chibios/os/rt/src/chinstances.c                                                      [OK]
Compiling: lib/chibios/os/rt/src/chthreads.c                                                        [OK]
Compiling: lib/chibios/os/rt/src/chtm.c                                                             [OK]
Compiling: lib/chibios/os/rt/src/chstats.c                                                          [OK]
Compiling: lib/chibios/os/rt/src/chregistry.c                                                       [OK]
Compiling: lib/chibios/os/rt/src/chsem.c                                                            [OK]
Compiling: lib/chibios/os/rt/src/chmtx.c                                                            [OK]
Compiling: lib/chibios/os/rt/src/chcond.c                                                           [OK]
Compiling: lib/chibios/os/rt/src/chevents.c                                                         [OK]
Compiling: lib/chibios/os/rt/src/chmsg.c                                                            [OK]
Compiling: lib/chibios/os/rt/src/chdynamic.c                                                        [OK]
Compiling: lib/chibios/os/common/ports/ARMv7-M/chcore.c                                             [OK]
Compiling: lib/chibios/os/hal/osal/rt-nil/osal.c                                                    [OK]
Compiling: lib/chibios/os/hal/src/hal.c                                                             [OK]
Compiling: lib/chibios/os/hal/src/hal_st.c                                                          [OK]
Compiling: lib/chibios/os/hal/src/hal_buffers.c                                                     [OK]
Compiling: lib/chibios/os/hal/src/hal_queues.c                                                      [OK]
Compiling: lib/chibios/os/hal/src/hal_flash.c                                                       [OK]
Compiling: lib/chibios/os/hal/src/hal_mmcsd.c                                                       [OK]
Compiling: lib/chibios/os/hal/src/hal_adc.c                                                         [OK]
Compiling: lib/chibios/os/hal/src/hal_can.c                                                         [OK]
Compiling: lib/chibios/os/hal/src/hal_crypto.c                                                      [OK]
Compiling: lib/chibios/os/hal/src/hal_dac.c                                                         [OK]
Compiling: lib/chibios/os/hal/src/hal_efl.c                                                         [OK]
Compiling: lib/chibios/os/hal/src/hal_gpt.c                                                         [OK]
Compiling: lib/chibios/os/hal/src/hal_i2c.c                                                         [OK]
Compiling: lib/chibios/os/hal/src/hal_i2s.c                                                         [OK]
Compiling: lib/chibios/os/hal/src/hal_icu.c                                                         [OK]
Compiling: lib/chibios/os/hal/src/hal_mac.c                                                         [OK]
Compiling: lib/chibios/os/hal/src/hal_mmc_spi.c                                                     [OK]
Compiling: lib/chibios/os/hal/src/hal_pal.c                                                         [OK]
Compiling: lib/chibios/os/hal/src/hal_pwm.c                                                         [OK]
Compiling: lib/chibios/os/hal/src/hal_rtc.c                                                         [OK]
Compiling: lib/chibios/os/hal/src/hal_sdc.c                                                         [OK]
Compiling: lib/chibios/os/hal/src/hal_serial.c                                                      [OK]
Compiling: lib/chibios/os/hal/src/hal_serial_usb.c                                                  [OK]
Compiling: lib/chibios/os/hal/src/hal_sio.c                                                         [OK]
Compiling: lib/chibios/os/hal/src/hal_spi.c                                                         [OK]
Compiling: lib/chibios/os/hal/src/hal_trng.c                                                        [OK]
Compiling: lib/chibios/os/hal/src/hal_uart.c                                                        [OK]
Compiling: lib/chibios/os/hal/src/hal_usb.c                                                         [OK]
Compiling: lib/chibios/os/hal/src/hal_wdg.c                                                         [OK]
Compiling: lib/chibios/os/hal/src/hal_wspi.c                                                        [OK]
Compiling: lib/chibios/os/hal/ports/common/ARMCMx/nvic.c                                            [OK]
Compiling: lib/chibios/os/hal/ports/STM32/STM32F3xx/stm32_isr.c                                     [OK]
Compiling: lib/chibios/os/hal/ports/STM32/STM32F3xx/hal_lld.c                                       [OK]
Compiling: lib/chibios/os/hal/ports/STM32/STM32F3xx/hal_efl_lld.c                                   [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/ADCv3/hal_adc_lld.c                                   [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/CANv1/hal_can_lld.c                                   [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/DACv1/hal_dac_lld.c                                   [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/DMAv1/stm32_dma.c                                     [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/EXTIv1/stm32_exti.c                                   [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/GPIOv2/hal_pal_lld.c                                  [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/I2Cv2/hal_i2c_lld.c                                   [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/RTCv2/hal_rtc_lld.c                                   [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/SPIv2/hal_i2s_lld.c                                   [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/SPIv2/hal_spi_v2_lld.c                                [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/SYSTICKv1/hal_st_lld.c                                [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/TIMv1/hal_gpt_lld.c                                   [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/TIMv1/hal_icu_lld.c                                   [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/TIMv1/hal_pwm_lld.c                                   [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/USARTv2/hal_serial_lld.c                              [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/USARTv2/hal_sio_lld.c                                 [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/USARTv2/hal_uart_lld.c                                [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/USBv1/hal_usb_lld.c                                   [OK]
Compiling: lib/chibios/os/hal/ports/STM32/LLD/xWDGv1/hal_wdg_lld.c                                  [OK]
Compiling: lib/chibios/os/hal/boards/ST_STM32F3_DISCOVERY/board.c                                   [OK]
Compiling: lib/chibios/os/hal/lib/streams/chprintf.c                                                [OK]
Compiling: lib/chibios/os/hal/lib/streams/chscanf.c                                                 [OK]
Compiling: lib/chibios/os/hal/lib/streams/memstreams.c                                              [OK]
Compiling: lib/chibios/os/hal/lib/streams/nullstreams.c                                             [OK]
Compiling: lib/chibios/os/hal/lib/streams/bufstreams.c                                              [OK]
Compiling: lib/chibios/os/various/syscalls.c                                                        [OK]
Compiling: platforms/chibios/syscall-fallbacks.c                                                    [OK]
Compiling: platforms/chibios/wait.c                                                                 [OK]
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


以上。
<!-- vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=markdown expandtab: -->
