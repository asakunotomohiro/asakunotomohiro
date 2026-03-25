# Neovimエディタ利用作業で得た知見全てをここに記録する。

[個人メモ(総合的な優先度の高いメモ)](#memo99999)  

---
## 参考URL


---
## 参考書籍(1冊目)。
書籍：[Neovimを始める最初の半歩](#kadokawaVimSpeedUpEdit9784048916592contents)  
ISBN：978-4-87310-287-0  
ASIN：  
著者：黒崎 玄([くろさきげん](https://ankokudan.org/d/d.htm?member-j.html#くろさきげん))  
発行：2025/08  
出版社：暗黒通信団  
関連先URL：<https://ankokudan.org/d/d.htm?detail287-detailread-j.html>  
形式：単行本  

書籍内容：
> Neovimは長い歴史があるUNIX系OSのエディタ(の末裔)である。熱狂的なファンがいる、癖のあるエディタである。このエディタに慣れた人は病人とまでいわれる。UNIX系のエディタはどれも自由奔放にカスタマイズができるが、Neovimもそうである。さあカスタマイズしよう。この本とともに。  


---
<!-- 目次部分(リンクになるところ) -->
<!-- 目次：https://techbookfest.org/product/gFNdfJy2bK0qsiUWcDDPgM -->
<a id="theDarksideCommunicationGroup9784873102870contents"></a>
## [Neovimを始める最初の半歩](#theDarksideCommunicationGroup9784873102870)
* [まえがき](#theDarksideCommunicationGroup9784873102870000000)  

1. 章 [Neovim を使ってみよう！](#theDarksideCommunicationGroup9784873102870010000)  
    1. [はじめに](#theDarksideCommunicationGroup9784873102870010001)  
    1. [なぜ Neovim なのか？](#theDarksideCommunicationGroup9784873102870010002)  
    1. [本書の目的や構成](#theDarksideCommunicationGroup9784873102870010003)  

1. 章 [環境のセットアップ](#theDarksideCommunicationGroup9784873102870020000)  
    1. [使い捨て環境の構築](#theDarksideCommunicationGroup9784873102870020001)  
    1. [Devbox を使った環境構築](#theDarksideCommunicationGroup9784873102870020002)  
    1. [Docker を使った環境構築](#theDarksideCommunicationGroup9784873102870020003)  

1. 章 [プラグインとプラグインマネージャー](#theDarksideCommunicationGroup9784873102870030000)  
    1. [プラグインとは、](#theDarksideCommunicationGroup9784873102870030001)  
    1. [プラグインマネージャーとは](#theDarksideCommunicationGroup9784873102870030002)  

1. 章 [スターターキットの導入](#theDarksideCommunicationGroup9784873102870040000)  
    1. [Lazy Vimの導入](#theDarksideCommunicationGroup9784873102870040001)  
    1. [LazyVim の機能追加](#theDarksideCommunicationGroup9784873102870040002)  

1. 章 [追加のカスタマイズ](#theDarksideCommunicationGroup9784873102870050000)  
    1. [カラースキーマの変更](#theDarksideCommunicationGroup9784873102870050001)  
    1. [プラグインの設定変更](#theDarksideCommunicationGroup9784873102870050002)  
    1. [Neovim 本体の設定](#theDarksideCommunicationGroup9784873102870050003)  

1. 章 [まとめ](#theDarksideCommunicationGroup9784873102870060000)  
    1. [操作方法を覚えよう](#0theDarksideCommunicationGroup978487310287060001)  
    1. [カスタマイズを楽しもう](#theDarksideCommunicationGroup9784873102870060002)  
    1. [コミュニティに参加しよう](#theDarksideCommunicationGroup9784873102870060003)  

* [あとがき](#theDarksideCommunicationGroup9784873102870909999)  

1. [個人メモ](#memo1999)  
---
## 参考書籍(2冊目)。
書籍：  
ISBN：  
ASIN：  
著者：  
訳者：  
発行：YYYY/MM/DD 発売日  
出版社：  
関連先URL：<URL>  
形式：単行本  

<!-- 目次部分(リンクになるところ) -->
### 目次
1. [個人メモ](#memo3999)  

---
<!-- リンク先(目次部分のリンクの飛び先) -->
## ーーー　上位、後ろの章になり、下側に若い章が来る。  

<a id="memo99999"></a>
## 個人メモ(総合的な優先度の高いメモ)



---
<a id="theDarksideCommunicationGroup9784873102870"></a>
## 書籍：Neovimを始める最初の半歩

<a id="theDarksideCommunicationGroup9784873102870000000"></a>
### まえがき
仮想環境を構築後、使い捨て環境としてNeovimを使うとのこと。

* 仮想環境  
  * [Devbox](https://www.jetify.com/devbox)  
    * [手順](#theDarksideCommunicationGroup9784873102870020002)  
  * [Docker](https://www.docker.com/)  
    * [手順](#theDarksideCommunicationGroup9784873102870020003)  

<a id="theDarksideCommunicationGroup9784873102870010000"></a>
### Neovim を使ってみよう！

<a id="theDarksideCommunicationGroup9784873102870010001"></a>
#### はじめに

<a id="theDarksideCommunicationGroup9784873102870010002"></a>
#### なぜ Neovim なのか？

<a id="theDarksideCommunicationGroup9784873102870010003"></a>
#### 本書の目的や構成

<a id="theDarksideCommunicationGroup9784873102870020000"></a>
### 環境のセットアップ

<a id="theDarksideCommunicationGroup9784873102870020001"></a>
#### 使い捨て環境の構築

<a id="theDarksideCommunicationGroup9784873102870020002"></a>
#### Devbox を使った環境構築

[インストール](https://www.jetify.com/docs/devbox/installing-devbox#macos)
```terminal
$ curl -fsSL https://get.jetify.com/devbox | bash	←☆インストール実施。
Devbox 📦 by Jetify
  Instant, easy and predictable development environments.

  This script downloads and installs the latest devbox binary.

Confirm Installation Details
  Location:     /usr/local/bin/devbox
  Download URL: https://releases.jetify.com/devbox

? Install devbox to /usr/local/bin (requires sudo)? [Y/n] y	←☆インストール場所(ここがデフォルト？)。

Downloading and Installing
✓ Downloading devbox binary... [DONE]
→ Installing in /usr/local/bin/devbox (requires sudo)...
Password:	←☆mac端末のパスワード。
Sorry, try again.
✓ Installing in /usr/local/bin/devbox... [DONE]
✓ Successfully installed devbox 🚀

Next Steps
  1. Learn how to use devbox
     Run devbox help or read the docs at https://github.com/jetify-com/devbox
  2. Get help and give feedback
     Join our community at https://discord.gg/jetify
$ echo $?
0
$
```

また、環境ファイル(dotfiles)の管理に[direnv](https://github.com/direnv/direnv)を使うことで、開発環境を分離することが容易になるとのこと。  
https://direnv.net
```terminal
$ brew install direnv
==> Auto-updating Homebrew...
Adjust how often this is run with `$HOMEBREW_AUTO_UPDATE_SECS` or disable with
`$HOMEBREW_NO_AUTO_UPDATE=1`. Hide these hints with `$HOMEBREW_NO_ENV_HINTS=1` (see `man brew`).
==> Downloading https://ghcr.io/v2/homebrew/core/portable-ruby/blobs/sha256:cef6f881f516d2cdbd0a5bfc7e20318da8b047cf2674ee27c5d4858d3ecd6430
####################################################################################################################################################### 100.0%
==> Pouring portable-ruby-4.0.1.arm64_big_sur.bottle.tar.gz
==> Auto-updated Homebrew!
==> Updated Homebrew from 5.0.16 (01cfc40124) to 5.1.1 (d974a18df9).
Updated 3 taps (osx-cross/arm, homebrew/core and homebrew/cask).
==> New Formulae
apache-arrow-adbc: Cross-language, Arrow-native database access
apkeep: Command-line tool for downloading APK files from various sources
atuin-server: Sync server for atuin - Improved shell history for zsh, bash, fish and nushell
buildkitd: Concurrent, cache-efficient, and Dockerfile-agnostic builder toolkit (Daemon)
checkpwn: Check Have I Been Pwned and see if it's time for you to change passwords
cline: AI-powered coding agent for complex work
cloudflare-speed-cli: Cloudflare-based speed test with optional TUI
ctx7: Manage AI coding skills and documentation context
cyan: iOS app injector and modifier
dlpack: Common in-memory tensor structure
docker-engine: Pack, ship and run any application as a lightweight container (Daemon)
dtop: Terminal dashboard for Docker monitoring across multiple hosts
et: Remote terminal with IP roaming
ffc.h: Single-header C99 accelerated float/double parsing
flowrs: TUI application for Apache Airflow
garden: Grow and cultivate collections of Git trees
ggml: Tensor library for machine learning
gittype: CLI code-typing game that turns your source code into typing challenges
googleworkspace-cli: CLI for Drive, Gmail, Calendar, Sheets, Docs, Chat, Admin, and more
icestorm: Tools for analyzing and creating Lattice iCE40 FPGA bitstream files
ipapatch: CLI tool to patch iOS IPA files and their plugins
kubectl-tree: Kubectl plugin to browse Kubernetes object hierarchies as a tree
lief: Library to Instrument Executable Formats
lua@5.4: Powerful, lightweight programming language
mkbrr: Is a tool to create, modify and inspect torrent files. Fast
models: Fast TUI and CLI for browsing AI models, benchmarks, and coding agents
nfd2nfc: Convert filesystem entry names from NFD to NFC for cross-platform compatibility
nono: Capability-based sandbox shell for AI agents with OS-enforced isolation
oh-my-agent: Portable multi-agent harness for .agents-based skills and workflows
openspec: Spec-driven development (SDD) for AI coding assistants
osx-cross/arm/arm-gcc-bin@15
pet: Simple command-line snippet manager
pipewire-gstreamer: GStreamer Plugin for PipeWire
portless: Replace port numbers with stable, named local URLs for humans and agents
powershell: Command-line shell and scripting language
rustypaste-cli: CLI tool for rustypaste
scala-cli: Scala language runner and build tool
sem-cli: Semantic version control CLI with entity-level diffs and blame
spicedb: Open Source, Google Zanzibar-inspired database
summarize: Multi-modal AI tool to extract and summarize content
topicctl: Declarative Kafka topic management
torf-cli: CLI tool for creating, reading and editing torrent files
tsshd: UDP SSH server for trzsz-ssh (tssh) with roaming support
upterm: Instant terminal sharing
vapoursynth-bestsource: Audio/video source and FFmpeg wrapper
vapoursynth-bm3d: BM3D denoising filter for VapourSynth
vapoursynth-descale: VapourSynth plugin to undo upscaling
vuls: Agentless Vulnerability Scanner for Linux/FreeBSD
weave: Entity-level semantic merge driver for Git using tree-sitter
wireplumber: Session / policy manager implementation for PipeWire
wmbusmeters: Read wired or wireless mbus protocol to acquire utility meter readings
x-cli: Command-line power tool for Twitter
zsign: Cross-platform codesigning tool for iOS apps
zvbi: Vertical Blanking Interval (VBI) decoding library
zxc: High-performance asymmetric lossless compression library
zycore-c: Zyan Core Library for C
==> New Casks
dbeaverteam: Universal database tool and SQL client
dbvr: Lightweight CLI tool for running database operations
fidelity-trader+: Trading platform
font-ghanachocolate
font-miranda-sans
font-selawik
gram: Code editor focused on stability, without AI, subscriptions, or telemetry
ltx-desktop: Desktop app for generating videos with LTX models
paseo: Self-hosted daemon for AI coding agents
seamly2d: Pattern making software
spectra-app: OpenSpec document management desktop app
spokenly: Dictation and transcription app with AI-powered editing
supasidebar: Arc-like sidebar to save links, files and folders from any browser
t3-code: Minimal GUI for AI code agents
tablepro: Native database client for MySQL, PostgreSQL, SQLite, and MongoDB
tencent-ugit: Tencent Git GUI Client
ulaa: Privacy-centric browser with advanced tracking protection
vcmi: Open-source engine for Heroes of Might & Magic III
voicemod: Real-time voice changer and soundboard
wowup-cf: World of Warcraft addon manager
x-air-edit: Remote control for the Behringer X AIR series mixers

You have 34 outdated formulae installed.


The 5.1.0 release notes are available on the Homebrew Blog:
  https://brew.sh/blog/5.1.0
The 5.1.1 changelog can be found at:
  https://github.com/Homebrew/brew/releases/tag/5.1.1
==> Fetching downloads for: direnv
✔︎ Bottle Manifest direnv (2.37.1)                                                                                                  Downloaded   14.9KB/ 14.9KB
✔︎ Bottle Manifest bash (5.3.9)                                                                                                     Downloaded   11.1KB/ 11.1KB
✔︎ Bottle bash (5.3.9)                                                                                                              Downloaded    3.4MB/  3.4MB
✔︎ Bottle direnv (2.37.1)                                                                                                           Downloaded    6.4MB/  6.4MB
==> Installing direnv dependency: bash
==> Pouring bash--5.3.9.arm64_tahoe.bottle.tar.gz
🍺  /opt/homebrew/Cellar/bash/5.3.9: 172 files, 13.8MB
==> Pouring direnv--2.37.1.arm64_tahoe.bottle.tar.gz
🍺  /opt/homebrew/Cellar/direnv/2.37.1: 12 files, 11.6MB
==> Running `brew cleanup direnv`...
Disable this behaviour by setting `HOMEBREW_NO_INSTALL_CLEANUP=1`.
Hide these hints with `HOMEBREW_NO_ENV_HINTS=1` (see `man brew`).
$ echo $?
0
$ direnv --version
2.37.1
$
```
※ディレクトリ移動に合わせて環境変数を自動で切り替えるシェル拡張ツールのこと。

以下、Devboxを使うための準備作業。
```terminal
$ mkdir -p neovimTest/dev20260324
$ cd neovimTest
$ devbox init	←☆初期化(?)作業。
✓ Downloading version 0.17.0... [DONE]
✓ Verifying checksum... [DONE]
✓ Unpacking binary... [DONE]

$ echo $?
0
$ ll -a
total 8
-rw-r--r--    1 asakunotomohiro  staff   342B  3月 24 22:31 devbox.json
drwxr-xr-x    4 asakunotomohiro  staff   128B  3月 24 22:31 ./
drwxr-xr-x    2 asakunotomohiro  staff    64B  3月 24 22:29 dev20260324/
drwx------@ 860 asakunotomohiro  staff    27K  3月 24 22:29 ../
$ devbox add curl nerdfonts git lazygit fzf ripgrep fd unzip nodejs	←☆下準備作業(べらんぼうに時間が掛かる)。

Nix is not installed. Devbox will attempt to install it.

Press enter to continue or ctrl-c to exit.

 INFO nix-installer v2.34.1
`nix-installer` needs to run as `root`, attempting to escalate now via `sudo`...
Password:
 INFO nix-installer v2.34.1
 INFO Step: Create an APFS volume `Nix Store` for Nix on `disk3` and add it to `/etc/fstab` mounting on `/nix`
 INFO Step: Provision Nix
 INFO Step: Create build users (UID 351-382) and group (GID 350)
 INFO Step: Configure Time Machine exclusions
 INFO Step: Configure Nix
 INFO Step: Configuring zsh to support using Nix in non-interactive shells
 INFO Step: Create a `launchctl` plist to put Nix into your PATH
 INFO Step: Configure upstream Nix daemon service
 INFO Step: Remove directory `/nix/temp-install-dir`
 INFO Waiting up to 10s for Nix daemon socket
 INFO Running self test for shell sh
 INFO Running self test for shell bash
 INFO Running self test for shell zsh
Nix was installed successfully!
To get started using Nix, open a new shell or run `. /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh`

Nix installed successfully. Devbox is ready to use!
Info: Adding package "curl@latest" to devbox.json
Ensuring nixpkgs registry is downloaded.
Downloaded 'github:NixOS/nixpkgs/34a626458d686f1b58139620a8b2793e9e123bba' to '/nix/store/jzpjpvpbr0ma8prlfhp3wk89p0i85ac3-source' (hash 'sha256-nAlsuFVl77/sioOE3ce7ukm8iC+DmhakoYsDQfcbpLY=').
Ensuring nixpkgs registry is downloaded: Success
Info: Adding package "nerdfonts@latest" to devbox.json
Info: Adding package "git@latest" to devbox.json
Info: Adding package "lazygit@latest" to devbox.json
Info: Adding package "fzf@latest" to devbox.json
Info: Adding package "ripgrep@latest" to devbox.json
Info: Adding package "fd@latest" to devbox.json
Info: Adding package "unzip@latest" to devbox.json
Info: Adding package "nodejs@latest" to devbox.json
Info: Installing the following packages to the nix store: unzip@latest, nodejs@latest, curl@latest, git@latest, nerdfonts@latest, lazygit@latest, fzf@latest, ripgrep@latest, fd@latest

nodejs NOTES:
Devbox automatically configures Corepack for Nodejs when DEVBOX_COREPACK_ENABLED=1. You can install Yarn or Pnpm by adding them to your `package.json` file using `packageManager`
Corepack binaries will be installed in your local `.devbox` directory

This plugin creates the following helper files:

To show this information, run `devbox info nodejs`


$ echo $?
0
$
$ devbox add neovim	←☆本命のNeovimエディタをインストール実施。
Info: Adding package "neovim@latest" to devbox.json
Info: Installing the following packages to the nix store: neovim@latest
$ echo $?
0
$
$ devbox generate direnv	←☆.envrcファイルの作成(思ったより時間が掛かった)。
Info: Ensuring packages are installed.
✓ Computed the Devbox environment.
Success: generated .envrc file in "".
Success: ran `direnv allow `
$ echo $?
0
$ ls -la
total 56
drwxr-xr-x    7 asakunotomohiro  staff    224  3月 25 00:13 .
drwx------@ 860 asakunotomohiro  staff  27520  3月 24 22:29 ..
drwxr-xr-x    8 asakunotomohiro  staff    256  3月 25 00:13 .devbox
-rw-r--r--    1 asakunotomohiro  staff    276  3月 25 00:13 .envrc	←☆これのことだろう。
drwxr-xr-x    2 asakunotomohiro  staff     64  3月 24 22:29 dev20260324
-rw-r--r--    1 asakunotomohiro  staff    518  3月 24 23:56 devbox.json
-rw-r--r--    1 asakunotomohiro  staff  20163  3月 25 00:13 devbox.lock
$ cat .envrc
#!/usr/bin/env bash

# Automatically sets up your devbox environment whenever you cd into this
# directory via our direnv integration:

eval "$(devbox generate direnv --print-envrc)"

# check out https://www.jetify.com/docs/devbox/ide_configuration/direnv/
# for more details
$ echo "export NVIM_APPNAME=./dev20260324" >> .envrc	←☆設定ファイルへの書き込み作業。
$ ln -s $(pwd)/dev20260324 ~/.config/dev20260324	←☆リンクファイルの作成作業。
$ cat .envrc
#!/usr/bin/env bash

# Automatically sets up your devbox environment whenever you cd into this
# directory via our direnv integration:

eval "$(devbox generate direnv --print-envrc)"

# check out https://www.jetify.com/docs/devbox/ide_configuration/direnv/
# for more details
export NVIM_APPNAME=./dev20260324	←☆ファイル末尾に追記した内容。
$
$ direnv allow	←☆.envrcファイルの読み込み。
$ direnv reload
$
$ nvim	←☆これで起動できるはず。
zsh: command not found: nvim
$
```

<a id="theDarksideCommunicationGroup9784873102870020003"></a>
#### Docker を使った環境構築
Dockerのインストールコマンド：`brew install docker`

ドッカーファイル内容。
```terminal
$ cat -n Dockerfile
     1	FROM manjarolinux/base:latest
     2	
     3	# パッケージリスト更新
     4	RUN pacman -Syu
     5	
     6	# AUR用にyayをインストール。
     7	RUN pacman -S --noconfirm yay
     8	
     9	# 必要なパッケージをインストール
    10	RUN pacman -S --needed --noconfirm \
    11		base-devel \
    12		binutils \
    13		curl \
    14		gcc \
    15		git \
    16		make \
    17		nodejs \
    18		sudo \
    19		unzip \
    20		yay
    21	
    22	# ユーザjohnを作成し、パスワードを設定。
    23	#RUN useradd -m -G wheel -s /bin/bash john && \
    24	#	echo "john ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
    25	RUN useradd -m -G wheel -s /bin/bash asakunotomohiro && \
    26		echo "asakunotomohiro ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
    27	
    28	# 一般ユーザjohnのホームディレクトリを作業ディレクトリに設定
    29	#WORKDIR /home/john
    30	WORKDIR /home/asakunotomohiro
    31	
    32	# 一般ユーザjohnに切り替え。
    33	#USER john
    34	USER asakunotomohiro
    35	
    36	# yayを使用したパッケージのインストール
    37	RUN yay -S --needed --noconfirm \
    38		fd \
    39		fzf \
    40		lazygit \
    41		nerd-fonts \
    42		ripgrep
    43	
    44	# GitHubからNeovimのAppImageをダウンロード
    45	## arm64, x86_64のどちらを選ぶかはホスト端末依存。
    46	## 補足：
    47	##	arm64: Apple Siliconや最新のスマホなどが使っている。
    48	##	x86_64: 昔からのパソコン(IntelやAMDのチップ)が使っている。
    49	ARG PLATFORM=arm64
    50	ARG NVIM_APP=nvim-linux-${PLATFORM}.appimage
    51	ARG URL=https://github.com/neovim/neovim/releases/latest/download
    52	
    53	RUN curl -LO ${URL}/${NVIM_APP}
    54	
    55	# NeovimのAppImageを実行可能にする。
    56	RUN chmod u+x ${NVIM_APP}
    57	
    58	# NeovimのAppImageを展開
    59	RUN ./${NVIM_APP} --appimage-extract
    60	
    61	# NeovimのAppImageを移動
    62	RUN sudo mv squashfs-root /
    63	
    64	# Symbolic linkを作成
    65	RUN sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
    66	
    67	# bashの起動
    68	SHELL ["/bin/bash", "-c"]
$
```

以下、ビルド作業。
```terminal
$ docker buildx build -t neovim_docker .
[+] Building 125.0s (16/16) FINISHED                                                                                                   docker:desktop-linux
 => [internal] load build definition from Dockerfile                                                                                                   0.0s
 => => transferring dockerfile: 1.77kB                                                                                                                 0.0s
 => [internal] load metadata for docker.io/manjarolinux/base:latest                                                                                    0.9s
 => [internal] load .dockerignore                                                                                                                      0.0s
 => => transferring context: 2B                                                                                                                        0.0s
 => [ 1/12] FROM docker.io/manjarolinux/base:latest@sha256:bbf1f1d746f28e138eea610e140d2f28cbb5b7c5da2fbff034b883527aa604e9                            0.0s
 => CACHED [ 2/12] RUN pacman -Syu                                                                                                                     0.0s
 => CACHED [ 3/12] RUN pacman -S --noconfirm yay                                                                                                       0.0s
 => CACHED [ 4/12] RUN pacman -S --needed --noconfirm  base-devel  binutils  curl  gcc  git  make  nodejs  sudo  unzip  yay                            0.0s
 => [ 5/12] RUN useradd -m -G wheel -s /bin/bash asakunotomohiro &&  echo "asakunotomohiro ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers                    0.1s
 => [ 6/12] WORKDIR /home/asakunotomohiro                                                                                                              0.0s
 => [ 7/12] RUN yay -S --needed --noconfirm  fd  fzf  lazygit  nerd-fonts  ripgrep                                                                   107.7s
 => [ 8/12] RUN curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-arm64.appimage                                           2.2s
 => [ 9/12] RUN chmod u+x nvim-linux-arm64.appimage                                                                                                    0.1s
 => [10/12] RUN ./nvim-linux-arm64.appimage --appimage-extract                                                                                         0.3s
 => [11/12] RUN sudo mv squashfs-root /                                                                                                                2.4s
 => [12/12] RUN sudo ln -s /squashfs-root/AppRun /usr/bin/nvim                                                                                         0.2s
 => exporting to image                                                                                                                                11.0s
 => => exporting layers                                                                                                                               11.0s
 => => writing image sha256:d6681635501e9e62823efa131799b648777ef2cb5d03ce240ce71b4e6228e710                                                           0.0s
 => => naming to docker.io/library/neovim_docker                                                                                                       0.0s

What's next:
    View a summary of image vulnerabilities and recommendations → docker scout quickview
$ echo $?
0
$
```

<a id="theDarksideCommunicationGroup9784873102870030000"></a>
### プラグインとプラグインマネージャー

<a id="theDarksideCommunicationGroup9784873102870030001"></a>
#### プラグインとは、

<a id="theDarksideCommunicationGroup9784873102870030002"></a>
#### プラグインマネージャーとは

<a id="theDarksideCommunicationGroup9784873102870040000"></a>
### スターターキットの導入

<a id="theDarksideCommunicationGroup9784873102870040001"></a>
#### Lazy Vimの導入

<a id="theDarksideCommunicationGroup9784873102870040002"></a>
#### LazyVim の機能追加

<a id="theDarksideCommunicationGroup9784873102870050000"></a>
### 追加のカスタマイズ

<a id="theDarksideCommunicationGroup9784873102870050001"></a>
#### カラースキーマの変更

<a id="theDarksideCommunicationGroup9784873102870050002"></a>
#### プラグインの設定変更

<a id="theDarksideCommunicationGroup9784873102870050003"></a>
#### Neovim 本体の設定

<a id="theDarksideCommunicationGroup9784873102870060000"></a>
### まとめ

<a id="0theDarksideCommunicationGroup978487310287060001"></a>
#### 操作方法を覚えよう

<a id="theDarksideCommunicationGroup9784873102870060002"></a>
#### カスタマイズを楽しもう

<a id="theDarksideCommunicationGroup9784873102870060003"></a>
#### コミュニティに参加しよう

<a id="theDarksideCommunicationGroup9784873102870909999"></a>
### あとがき


<a id="memo1999"></a>
### 個人メモ


---
ーーー 最終行 ーーー
<!-- vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=markdown expandtab: -->
