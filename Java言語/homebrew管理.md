# Java言語
[Java言語](https://dev.java)の開発環境用に[Homebrew](https://brew.sh)を使う。  
[JDK](https://docs.oracle.com/javase/jp/7/)が欲しいとは思っているが・・・。  


## brewでのJavaバージョン確認
以下、確認作業。
```terminal
$ brew search java
==> Formulae
app-engine-java           java          javacc          jslint4java             pdftk-java
google-java-format        java11        javarepl        libreadline-java
==> Casks
eclipse-java              font-noto-sans-javanese          homebrew/cask-versions/java-beta
eclipse-javascript        oracle-jdk-javadoc

If you meant "java" specifically:
It was migrated from homebrew/cask to homebrew/core.
$
```
どれをインストールすれば良いのか全く分からない。  
そもそも**java11**が最新版であるかのような感じだが、[java16](https://www.oracle.com/news/announcement/oracle-announces-java-16-031621.html)や[java17](https://www.oracle.com/java/technologies/javase-jdk17-doc-downloads.html)はどこいった？  
[オラクルのJava](https://www.oracle.com/java/technologies/downloads/)とは違う？  

**java11**の詳細(?)を確認したが、どうやら本物のJavaではないようだな。  
**openjdk@11**だと言われたぞ。  


## ハードウェアの名前確認
`uname`コマンドで確認できるようだ。
```terminal
$ uname -m
x86_64
$
```
**Arm 64**が何を表しているのか分からないが、[**x64 DMG**](https://www.oracle.com/java/technologies/downloads/#jdk17-mac)をインストールすれば良いようだな。  
私の環境では**x86**なんだが、関係なく**x64**でいいんだよね・・・きっと。。。他に選択肢がないので・・・いいのだろう・・・。  


## Oracle-Java17のインストール
とりあえず[インストール](https://java.com/ja/download/help/mac_install.html)(`jdk-17_macos-x64_bin.dmg`)。  

以下、インストール前の状況
```terminal
$ javac -version
javac 13
$ java -version
java version "13" 2019-09-17
Java(TM) SE Runtime Environment (build 13+33)
Java HotSpot(TM) 64-Bit Server VM (build 13+33, mixed mode, sharing)
$
```

以下、インストール後の状況
```terminal
$ javac --version
javac 17
$ java --version
java 17 2021-09-14 LTS
Java(TM) SE Runtime Environment (build 17+35-LTS-2724)
Java HotSpot(TM) 64-Bit Server VM (build 17+35-LTS-2724, mixed mode, sharing)
$
```


## Homebrewでのインストール
ようやく本題。

その前に、インストール済みかどうかの確認。
```terminal
$ brew list java
Error: No available formula or cask with the name "java". Did you mean javacc?
$ brew list javac
Error: No available formula or cask with the name "javac". Did you mean javacc?
$ brew list | grep java
$
```
インストールされていない。  


まずは、brewからゴミを削除する。
```terminal
$ brew cleanup
Warning: Skipping glib: most recent version 2.70.0 not installed
Removing: /Users/asakunotomohiro/Library/Caches/Homebrew/glib--2.68.4... (6.2MB)
Warning: Skipping go: most recent version 1.17.1 not installed
Removing: /Users/asakunotomohiro/Library/Caches/Homebrew/go--1.17... (165.0MB)
Error: Permission denied @ apply2files - /usr/local/lib/docker/cli-plugins
$
```
最後のエラーは何？  
[ドッカー](../仮想環境/docker_作業メモなど何でも詰め込む.md)は削除したのだが・・・。  


以下、**java**のインストール実施。
```terminal
$ brew install java
==> Downloading https://ghcr.io/v2/homebrew/core/openjdk/manifests/16.0.2
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/openjdk/blobs/sha256:d92651670572e834a36ca2af789646a28c4745930c19a3468b92834da9
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:d92651670572e834a36ca2af789646a28c4745930c1
######################################################################## 100.0%
==> Pouring openjdk--16.0.2.mojave.bottle.tar.gz
==> Caveats
For the system Java wrappers to find this JDK, symlink it with
  sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

openjdk is keg-only, which means it was not symlinked into /usr/local,
because macOS provides similar software and installing this software in
parallel can cause all kinds of trouble.

If you need to have openjdk first in your PATH, run:
  echo 'export PATH="/usr/local/opt/openjdk/bin:$PATH"' >> /Users/asakunotomohiro/.bash_profile

For compilers to find openjdk you may need to set:
  export CPPFLAGS="-I/usr/local/opt/openjdk/include"

==> Summary
🍺  /usr/local/Cellar/openjdk/16.0.2: 646 files, 329.0MB
$ javac --version
javac 17
$
```
バージョンが最新の17になったままだ。  
java11がインストールされるのでは？  
ログからは16っぽいのだが・・・。  


## brewでのインストール後の状況
よく分からないが、16のバージョンがインストールされている？
```terminal
$ brew info java
openjdk: stable 16.0.2 (bottled) [keg-only]
Development kit for the Java programming language
https://openjdk.java.net/
/usr/local/Cellar/openjdk/16.0.2 (646 files, 329.0MB)
  Poured from bottle on 2021-09-19 at 01:14:15
From: https://github.com/Homebrew/homebrew-core/blob/HEAD/Formula/openjdk.rb
License: GPL-2.0-only with Classpath-exception-2.0
==> Dependencies
Build: autoconf ✔
==> Caveats
For the system Java wrappers to find this JDK, symlink it with
  sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

openjdk is keg-only, which means it was not symlinked into /usr/local,
because macOS provides similar software and installing this software in
parallel can cause all kinds of trouble.

If you need to have openjdk first in your PATH, run:
  echo 'export PATH="/usr/local/opt/openjdk/bin:$PATH"' >> /Users/asakunotomohiro/.bash_profile

For compilers to find openjdk you may need to set:
  export CPPFLAGS="-I/usr/local/opt/openjdk/include"

==> Analytics
install: 177,735 (30 days), 495,227 (90 days), 1,850,848 (365 days)
install-on-request: 47,979 (30 days), 136,781 (90 days), 598,705 (365 days)
build-error: 0 (30 days)
$
```
Path通しが必要なのが分かった。  


とりあえず、以下、直接のバージョン確認。
```terminal
$ pwd
/usr/local/opt/openjdk/bin
$ ll
total 0
lrwxr-xr-x  1 asakunotomohiro  admin  46  6  8 21:25 jaotc@ -> ../libexec/openjdk.jdk/Contents/Home/bin/jaotc
　　　・
　　　・
　　　・
lrwxr-xr-x  1 asakunotomohiro  admin  50  6  8 21:25 serialver@ -> ../libexec/openjdk.jdk/Contents/Home/bin/serialver
$ ./javac --version
javac 16.0.2
$ brew list | grep java
$ brew list | grep jdk
openjdk
$
```

Path通しというか、リンクファイルの作成。
```terminal
$ ll /Library/Java/JavaVirtualMachines/openjdk.jdk
ls: /Library/Java/JavaVirtualMachines/openjdk.jdk: No such file or directory
$ ll /usr/local/opt/openjdk/libexec/openjdk.jdk
total 0
drwxr-xr-x  5 asakunotomohiro  admin  160  6  8 21:25 Contents/
$ sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
Password:
$ ll /Library/Java/JavaVirtualMachines/openjdk.jdk
lrwxr-xr-x  1 root  wheel  42  9 19 01:30 /Library/Java/JavaVirtualMachines/openjdk.jdk@ -> /usr/local/opt/openjdk/libexec/openjdk.jdk
$
```

一応Path通しをしたことで、バージョンを落とせたが・・・。
```terminal
$ . _profile_common_EnvironmentVariable
$ javac --version
javac 16.0.2
$
```
ここまでする必要があるならば、普通にオラクルのJavaをインストールすれば良いように思う・・・。  
バージョン切り替えする必要は全くないのだから・・・。  

※OracleのJavaに戻す場合は、Path通しの部分をコメントアウトするだけでいい(リンクファイル作成は触らないと言うこと)。  

```terminal
$ brew list java
/usr/local/Cellar/openjdk/16.0.2/bin/jaotc
/usr/local/Cellar/openjdk/16.0.2/bin/jar
　　　・
　　　・
　　　・
/usr/local/Cellar/openjdk/16.0.2/libexec/openjdk.jdk/ (575 files)
/usr/local/Cellar/openjdk/16.0.2/share/man/ (29 files)
$
```


### バージョン確認。

```terminal
$ javac --version
javac 16.0.2
$ java --version
openjdk 16.0.2 2021-07-20
OpenJDK Runtime Environment Homebrew (build 16.0.2+0)
OpenJDK 64-Bit Server VM Homebrew (build 16.0.2+0, mixed mode, sharing)
$
```


以上。
<!-- vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=markdown expandtab: -->
