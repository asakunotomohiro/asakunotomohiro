# PGP(GnuPG)-暗号技術
[暗号](https://www.gnupg.org)技術管理(?)に[Homebrew](https://brew.sh)を使う。  


<a name="encryptusinggnupg"></a>
## brewでのGnuPG確認
以下、確認作業。
```terminal
$ brew list | grep gnupg
$ brew search gnupg
==> Formulae
gnupg       gnupg-pkcs11-scd        gnupg@1.4       gnupg@2.2       gnu-go
$
```


<a name="hardwarename"></a>
## ハードウェアの名前確認
`uname`コマンドで確認できるようだ。
```terminal
$ uname -m
x86_64
$
```
Java環境を整えるわけではないのだから今回は気にする必要なし。  


<a name="homebrewgnupginstall"></a>
## Homebrewでのインストール
その前に、インストール済みかどうかの確認。
```terminal
$ brew list | grep gnupg
$
```
インストールされていない。  


まずは、brewからゴミを削除する。
`brew cleanup`  


以下、**GnuPG**のインストール実施。
```terminal
$ gpgconf	←☆今回使いたかったプログラム。
zsh: command not found: gpgconf
$
$ brew install gnupg	←☆インストール実施。
==> Downloading https://formulae.brew.sh/api/formula.jws.json
#=#=-  #      # Downloading https://formulae.brew.sh/api/cask.jws.json
#=#=-  #      # Fetching dependencies for gnupg: libunistring, libidn2, libtasn1, nettle, p11-kit, libevent, libnghttp2, unbound, gnutls, libgpg-error, libassuan, libgcrypt, libksba, libusb, npth and pinentry
==> Fetching libunistring
==> Downloading https://ghcr.io/v2/homebrew/core/libunistring/manifests/1.1
###################################################################################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libunistring/blobs/sha256:4224b6d2525c68567fba97103f44fe6f95e62990bddab83e4849d048f3799cda
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:4224b6d2525c68567fba97103f44fe6f95e62990bddab83e4849d048f3799cda?se=2023-05-14T04%3A15%3A00Z&sig=VdfV9Cn
###################################################################################################################################################################################### 100.0%
==> Fetching libidn2
==> Downloading https://ghcr.io/v2/homebrew/core/libidn2/manifests/2.3.4_1-1
###################################################################################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libidn2/blobs/sha256:64f5b404f308f58ea4dbe787559fb802abd9b624dabd9a1703aa241a2a86d0fb
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:64f5b404f308f58ea4dbe787559fb802abd9b624dabd9a1703aa241a2a86d0fb?se=2023-05-14T04%3A15%3A00Z&sig=YSmLDog
###################################################################################################################################################################################### 100.0%
==> Fetching libtasn1
==> Downloading https://ghcr.io/v2/homebrew/core/libtasn1/manifests/4.19.0
###################################################################################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libtasn1/blobs/sha256:cf95a18e2fabf1675d77ec8a1abb41fdb091cef689dec3318a420ad2f25beb76
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:cf95a18e2fabf1675d77ec8a1abb41fdb091cef689dec3318a420ad2f25beb76?se=2023-05-14T04%3A15%3A00Z&sig=aODXmxx
###################################################################################################################################################################################### 100.0%
==> Fetching nettle
==> Downloading https://ghcr.io/v2/homebrew/core/nettle/manifests/3.8.1
###################################################################################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/nettle/blobs/sha256:f2fa03ad5664fdcf8475c1490a22f66d26056779911fd92ae2cb0d36998319a4
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:f2fa03ad5664fdcf8475c1490a22f66d26056779911fd92ae2cb0d36998319a4?se=2023-05-14T04%3A15%3A00Z&sig=FXWeArR
###################################################################################################################################################################################### 100.0%
==> Fetching p11-kit
==> Downloading https://ghcr.io/v2/homebrew/core/p11-kit/manifests/0.24.1_1
###################################################################################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/p11-kit/blobs/sha256:092795b583a9f4e529eca159e4fbadfb4c92b4af1b62174e0e7882f8a7961908
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:092795b583a9f4e529eca159e4fbadfb4c92b4af1b62174e0e7882f8a7961908?se=2023-05-14T04%3A15%3A00Z&sig=2LQ4J2b
###################################################################################################################################################################################### 100.0%
==> Fetching libevent
==> Downloading https://ghcr.io/v2/homebrew/core/libevent/manifests/2.1.12
###################################################################################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libevent/blobs/sha256:4867e07fed355e41bf50f9f44e29307c0004387dd49f743e3b387478572dc8a8
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:4867e07fed355e41bf50f9f44e29307c0004387dd49f743e3b387478572dc8a8?se=2023-05-14T04%3A15%3A00Z&sig=AHiI7m%
###################################################################################################################################################################################### 100.0%
==> Fetching libnghttp2
==> Downloading https://ghcr.io/v2/homebrew/core/libnghttp2/manifests/1.53.0
###################################################################################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libnghttp2/blobs/sha256:ce807466c0310e903e9c70d2f84cf0f73e82c04934132f79ff13cf868d524305
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:ce807466c0310e903e9c70d2f84cf0f73e82c04934132f79ff13cf868d524305?se=2023-05-14T04%3A15%3A00Z&sig=i9HEEoR
###################################################################################################################################################################################### 100.0%
==> Fetching unbound
==> Downloading https://ghcr.io/v2/homebrew/core/unbound/manifests/1.17.1
###################################################################################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/unbound/blobs/sha256:c870e90be341227604999ffa9b66bac97bb193a9088fe09ad2ad5a0471dbbd6b
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:c870e90be341227604999ffa9b66bac97bb193a9088fe09ad2ad5a0471dbbd6b?se=2023-05-14T04%3A15%3A00Z&sig=xzECSKw
###################################################################################################################################################################################### 100.0%
==> Fetching gnutls
==> Downloading https://ghcr.io/v2/homebrew/core/gnutls/manifests/3.8.0
###################################################################################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/gnutls/blobs/sha256:d375f9982faad9b6664508624629c9018ecf807d34c38bb91f875557cc9aa0cf
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:d375f9982faad9b6664508624629c9018ecf807d34c38bb91f875557cc9aa0cf?se=2023-05-14T04%3A15%3A00Z&sig=a2IeIeO
###################################################################################################################################################################################### 100.0%
==> Fetching libgpg-error
==> Downloading https://ghcr.io/v2/homebrew/core/libgpg-error/manifests/1.47
###################################################################################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libgpg-error/blobs/sha256:aeffa4d66556e265070446531d84cbe6a953b66ea53c34f6d89637db22635790
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:aeffa4d66556e265070446531d84cbe6a953b66ea53c34f6d89637db22635790?se=2023-05-14T04%3A15%3A00Z&sig=sWuY0Sf
###################################################################################################################################################################################### 100.0%
==> Fetching libassuan
==> Downloading https://ghcr.io/v2/homebrew/core/libassuan/manifests/2.5.5
###################################################################################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libassuan/blobs/sha256:27d666e26e2017829f33e9b367286dededcaea0b818135cd606c45efd5d5821c
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:27d666e26e2017829f33e9b367286dededcaea0b818135cd606c45efd5d5821c?se=2023-05-14T04%3A15%3A00Z&sig=BZbX0Ej
###################################################################################################################################################################################### 100.0%
==> Fetching libgcrypt
==> Downloading https://ghcr.io/v2/homebrew/core/libgcrypt/manifests/1.10.2
###################################################################################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libgcrypt/blobs/sha256:e09e21e188996fea1e67c6593a21407384ff3aceb99ef59f05877a2a77676d6a
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:e09e21e188996fea1e67c6593a21407384ff3aceb99ef59f05877a2a77676d6a?se=2023-05-14T04%3A15%3A00Z&sig=DoHu7AW
###################################################################################################################################################################################### 100.0%
==> Fetching libksba
==> Downloading https://ghcr.io/v2/homebrew/core/libksba/manifests/1.6.3
###################################################################################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libksba/blobs/sha256:62b24304adae5bfa956619c08dc2374a7ea32fac01e7e61752ce092248cfd492
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:62b24304adae5bfa956619c08dc2374a7ea32fac01e7e61752ce092248cfd492?se=2023-05-14T04%3A15%3A00Z&sig=q6%2Bcz
###################################################################################################################################################################################### 100.0%
==> Fetching libusb
==> Downloading https://ghcr.io/v2/homebrew/core/libusb/manifests/1.0.26
###################################################################################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libusb/blobs/sha256:ab90516396d8dc99f96d31615bcbddfcfd2082fcc7494dabb9d22b275628e800
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:ab90516396d8dc99f96d31615bcbddfcfd2082fcc7494dabb9d22b275628e800?se=2023-05-14T04%3A15%3A00Z&sig=OA99NGR
###################################################################################################################################################################################### 100.0%
==> Fetching npth
==> Downloading https://ghcr.io/v2/homebrew/core/npth/manifests/1.6
###################################################################################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/npth/blobs/sha256:b57db2aba825a5f895e946878002f81d307a1b2cdf60c18ac8d70860321eb5d6
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:b57db2aba825a5f895e946878002f81d307a1b2cdf60c18ac8d70860321eb5d6?se=2023-05-14T04%3A15%3A00Z&sig=Mdm12s1
###################################################################################################################################################################################### 100.0%
==> Fetching pinentry
==> Downloading https://ghcr.io/v2/homebrew/core/pinentry/manifests/1.2.1
###################################################################################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/pinentry/blobs/sha256:5a929b4926da533a676b19d3cb1225b796a4046e08fd922a9784422b67dff29d
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:5a929b4926da533a676b19d3cb1225b796a4046e08fd922a9784422b67dff29d?se=2023-05-14T04%3A15%3A00Z&sig=5zjQ9aJ
###################################################################################################################################################################################### 100.0%
==> Fetching gnupg
==> Downloading https://ghcr.io/v2/homebrew/core/gnupg/manifests/2.4.1
###################################################################################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/gnupg/blobs/sha256:2b0658379f05d1ccdca9c6d650f5253bb110d560edaabeb13d3f9d29fb6b2bb7
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:2b0658379f05d1ccdca9c6d650f5253bb110d560edaabeb13d3f9d29fb6b2bb7?se=2023-05-14T04%3A15%3A00Z&sig=xy1W9Zi
###################################################################################################################################################################################### 100.0%
==> Installing dependencies for gnupg: libunistring, libidn2, libtasn1, nettle, p11-kit, libevent, libnghttp2, unbound, gnutls, libgpg-error, libassuan, libgcrypt, libksba, libusb, npth and pinentry
==> Installing gnupg dependency: libunistring
==> Pouring libunistring--1.1.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/libunistring/1.1: 56 files, 5.0MB
==> Installing gnupg dependency: libidn2
==> Pouring libidn2--2.3.4_1.arm64_monterey.bottle.1.tar.gz
🍺  /opt/homebrew/Cellar/libidn2/2.3.4_1: 79 files, 1MB
==> Installing gnupg dependency: libtasn1
==> Pouring libtasn1--4.19.0.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/libtasn1/4.19.0: 61 files, 717.9KB
==> Installing gnupg dependency: nettle
==> Pouring nettle--3.8.1.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/nettle/3.8.1: 91 files, 2.9MB
==> Installing gnupg dependency: p11-kit
==> Pouring p11-kit--0.24.1_1.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/p11-kit/0.24.1_1: 67 files, 3.9MB
==> Installing gnupg dependency: libevent
==> Pouring libevent--2.1.12.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/libevent/2.1.12: 57 files, 2.1MB
==> Installing gnupg dependency: libnghttp2
==> Pouring libnghttp2--1.53.0.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/libnghttp2/1.53.0: 13 files, 737.7KB
==> Installing gnupg dependency: unbound
==> Pouring unbound--1.17.1.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/unbound/1.17.1: 58 files, 5.7MB
==> Installing gnupg dependency: gnutls
==> Pouring gnutls--3.8.0.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/gnutls/3.8.0: 1,281 files, 10.6MB
==> Installing gnupg dependency: libgpg-error
==> Pouring libgpg-error--1.47.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/libgpg-error/1.47: 49 files, 1.6MB
==> Installing gnupg dependency: libassuan
==> Pouring libassuan--2.5.5.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/libassuan/2.5.5: 17 files, 523.3KB
==> Installing gnupg dependency: libgcrypt
==> Pouring libgcrypt--1.10.2.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/libgcrypt/1.10.2: 23 files, 3.3MB
==> Installing gnupg dependency: libksba
==> Pouring libksba--1.6.3.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/libksba/1.6.3: 18 files, 513.8KB
==> Installing gnupg dependency: libusb
==> Pouring libusb--1.0.26.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/libusb/1.0.26: 22 files, 595KB
==> Installing gnupg dependency: npth
==> Pouring npth--1.6.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/npth/1.6: 12 files, 136.4KB
==> Installing gnupg dependency: pinentry
==> Pouring pinentry--1.2.1.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/pinentry/1.2.1: 12 files, 417.5KB
==> Installing gnupg
==> Pouring gnupg--2.4.1.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/gnupg/2.4.1: 140 files, 12.4MB
==> Running `brew cleanup gnupg`...
Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
$
$ gpgconf
gpg:OpenPGP:/opt/homebrew/Cellar/gnupg/2.4.1/bin/gpg
gpgsm:S/MIME:/opt/homebrew/Cellar/gnupg/2.4.1/bin/gpgsm
keyboxd:公開鍵:/opt/homebrew/Cellar/gnupg/2.4.1/libexec/keyboxd
gpg-agent:プライベート鍵:/opt/homebrew/Cellar/gnupg/2.4.1/bin/gpg-agent
scdaemon:スマートカード:/opt/homebrew/Cellar/gnupg/2.4.1/libexec/scdaemon
dirmngr:ネットワーク:/opt/homebrew/Cellar/gnupg/2.4.1/bin/dirmngr
pinentry:パスフレーズ入力:/opt/homebrew/opt/pinentry/bin/pinentry
$
```
実行したいプログラムが手に入った。  

<details><summary>関係あるのか？</summary>

よく分かっていないが、必要なようだ。
```terminal
$ brew install pinentry-mac
==> Downloading https://formulae.brew.sh/api/formula.jws.json
-#O=#     #      # Downloading https://formulae.brew.sh/api/cask.jws.json
###################################################################################################################################################################################### 100.0%
==> Fetching pinentry-mac
==> Downloading https://ghcr.io/v2/homebrew/core/pinentry-mac/manifests/1.1.1.1
###################################################################################################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/pinentry-mac/blobs/sha256:7ebbe0d43dcdf88c28e7df80ddb21ca669968107beaf7dd224efc461cc25474b
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:7ebbe0d43dcdf88c28e7df80ddb21ca669968107beaf7dd224efc461cc25474b?se=2023-05-14T12%3A55%3A00Z&sig=LjQ11FP
###################################################################################################################################################################################### 100.0%
==> Pouring pinentry-mac--1.1.1.1.arm64_monterey.bottle.tar.gz
==> Caveats
You can now set this as your pinentry program like

~/.gnupg/gpg-agent.conf
    pinentry-program /opt/homebrew/bin/pinentry-mac
==> Summary
🍺  /opt/homebrew/Cellar/pinentry-mac/1.1.1.1: 19 files, 513.3KB
==> Running `brew cleanup pinentry-mac`...
Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
$ which pinentry-mac
/opt/homebrew/bin/pinentry-mac
$
```
PINやパスフレーズ入力をさせるために[必要](https://docs.github.com/ja/authentication/managing-commit-signature-verification/telling-git-about-your-signing-key)とのこと。  

</details>

<a name="homebrewgnupgversion"></a>
### バージョン確認。

```terminal
$ gnupg --version
zsh: command not found: gnupg
$
$ gpgconf --version
gpgconf (GnuPG) 2.4.1
Copyright (C) 2023 g10 Code GmbH
License GNU GPL-3.0-or-later <https://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
$
```


以上。
<!-- vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=markdown expandtab: -->
