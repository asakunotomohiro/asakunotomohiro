# Perl言語
ここは、プログラミング言語のPerl言語を勉強するブランチになる。  

## ブランチの利用方法
現時点でのブランチは、Perl言語の基礎知識5種類を勉強するブランチになる。  
その勉強は、本命である「Pythonで学ぶアルゴリズムの教科書」を勉強するための前戯だ。  

## Perl5
オライリー社のPerl第7版を購入したことはあとで呟いているのだが、その書籍に書いている「はじめに」に、「**Perl6**という別言語が存在するが、Perlを勉強したい人はPerl5を求めているはずだ。」と説明している。  
本来であれば、Perlから名前を変えたかったようだが、Perl6という名前を付けてしまい、そのまま開発を進ませたような説明をしている。  
そのため、Perl6は世の中にあるが、Perl5.24で話を進めるようだ。  
そして、せっかくPerl5.24で説明をするというのだからそのバージョン以降で動くプログラムを作ろうと思う。  
※悲しいかな。本命から逸れたことには触れないで頂きたい。  
書籍ですらPerl6ではなく、Perl5で話を進めるというのに、Perl6が結局何だったのか話題に触れないままで問題ないように、気にするだけ無駄になる。  
また、そのバージョンで動かすには、プログラムファイルの行頭に`use v5.24;`を記述するようだ。  
現時点でそのバージョンにしたかったのだが、最新版がv5.34だった・・・仕方ない。  
[最新版](https://www.perl.org/get.html)を導入しよう。  

<details><summary>Perlのインストール作業記録</summary>

以下、実際のインストール作業(書籍のP361にある)。

    $ \curl -L https://install.perlbrew.pl | bash
      % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                     Dload  Upload   Total   Spent    Left  Speed
    100   170  100   170    0     0    229      0 --:--:-- --:--:-- --:--:--   230
    100  1574  100  1574    0     0   1389      0  0:00:01  0:00:01 --:--:--  7058

    ## Download the latest perlbrew

    ## Installing perlbrew
    Using Perl </usr/bin/perl>
    perlbrew is installed: ~/perl5/perlbrew/bin/perlbrew

    perlbrew root (~/perl5/perlbrew) is initialized.

    Append the following piece of code to the end of your ~/.bash_profile and start a
    new shell, perlbrew should be up and fully functional from there:

        source ~/perl5/perlbrew/etc/bashrc

    Simply run `perlbrew` for usage details.

    Happy brewing!

    ## Installing patchperl

    ## Done.
    $

以下、上記の管理プログラム導入後に、(現時点での)最新版のPerlをインストールする(Path通しが必要)。

    $ perlbrew install perl-5.34.0
    -bash: perlbrew: command not found
    $
    $ ~/perl5/perlbrew/bin/perlbrew install perl-5.34.0
    Fetching perl 5.34.0 as /Users/asakunotomohiro/perl5/perlbrew/dists/perl-5.34.0.tar.gz
    Download https://www.cpan.org/src/5.0/perl-5.34.0.tar.gz to /Users/asakunotomohiro/perl5/perlbrew/dists/perl-5.34.0.tar.gz
    Installing /Users/asakunotomohiro/perl5/perlbrew/build/perl-5.34.0/perl-5.34.0 into ~/perl5/perlbrew/perls/perl-5.34.0

    This could take a while. You can run the following command on another shell to track the status:

      tail -f ~/perl5/perlbrew/build.perl-5.34.0.log


    Installation process failed. To spot any issues, check

      /Users/asakunotomohiro/perl5/perlbrew/build.perl-5.34.0.log

    If some perl tests failed and you still want to install this distribution anyway,
    do:

      (cd /Users/asakunotomohiro/perl5/perlbrew/build/perl-5.34.0/perl-5.34.0; make install)

    You might also want to try upgrading patchperl before trying again:

      perlbrew install-patchperl

    Generally, if you need to install a perl distribution known to have minor test
    failures, do one of these commands to avoid seeing this message:

      perlbrew --notest install perl-5.34.0
      perlbrew --force install perl-5.34.0

    $
失敗したようだ。  

以下、個別に(上記のヒント通りに)インストール再開。

    $ cd /Users/asakunotomohiro/perl5/perlbrew/build/perl-5.34.0/perl-5.34.0; make install
    ./miniperl -Ilib make_ext.pl cpan/Archive-Tar/pm_to_blib  MAKE="/Applications/Xcode.app/Contents/Developer/usr/bin/make" LIBPERL_A=libperl.a
    ./miniperl -Ilib m
    　　　・
    　　　・
    　　　・
      /Users/asakunotomohiro/perl5/perlbrew/perls/perl-5.34.0/man/man1/streamzip.1
      /Users/asakunotomohiro/perl5/perlbrew/perls/perl-5.34.0/man/man1/xsubpp.1
      /Users/asakunotomohiro/perl5/perlbrew/perls/perl-5.34.0/man/man1/zipdetails.1
    $
成功した(`echo $?`)？  

試しに最新版で動かす。

    $ ~/perl5/perlbrew/bin/perlbrew switch perl-5.34.0

    A sub-shell is launched with perl-5.34.0 as the activated perl. Run 'exit' to finish it.

    bash-3.2$ exit
    exit
    $
    $ perl --version	←☆要は、Path通しが必要と言うことか。

    This is perl 5, version 18, subversion 4 (v5.18.4) built for darwin-thread-multi-2level
    (with 2 registered patches, see perl -V for more detail)

    Copyright 1987-2013, Larry Wall

    Perl may be copied only under the terms of either the Artistic License or the
    GNU General Public License, which may be found in the Perl 5 source kit.

    Complete documentation for Perl, including FAQ lists, should be found on
    this system using "man perl" or "perldoc perl".  If you have access to the
    Internet, point your browser at http://www.perl.org/, the Perl Home Page.

    $
動いた。  
ただ、想定と違う実行方法になっている。  

以下、動作確認。

    $ cat ./version.pl
    use v5.24;

    print $^V
    $ perl ./version.pl
    Perl v5.24.0 required--this is only v5.18.4, stopped at ./version.pl line 1.
    BEGIN failed--compilation aborted at ./version.pl line 1.
    $
動かない。  
Path通しが必要なのか・・・。  
おかしいだろう。  
何のための**brew**か・・・そっちのPathを通せば良い？  

以下、最先端のバージョン導入。

    $ ~/perl5/perlbrew/bin/perlbrew install perl-blead
    Fetching perl-blead as /Users/asakunotomohiro/perl5/perlbrew/dists/blead.tar.gz
    Installing /Users/asakunotomohiro/perl5/perlbrew/build/blead/perl5-blead into ~/perl5/perlbrew/perls/perl-blead

    This could take a while. You can run the following command on another shell to track the status:

      tail -f ~/perl5/perlbrew/build.perl-blead.log


    perl-blead is successfully installed.
    $ echo $?
    0
    $
これが有効だったか確認する前に、Pathを通してしまった。  

以下、Path通し後のバージョン確認。

    $ perlbrew --version
    /Users/asakunotomohiro/perl5/perlbrew/bin/perlbrew  - App::perlbrew/0.92
    $

以下、インストール可能なバージョン表示。

    $ perlbrew available
    # perl
       perl-5.35.3
    i  perl-5.34.0
       perl-5.32.1
       perl-5.30.3
       perl-5.28.3
       perl-5.26.3
       perl-5.24.4
       perl-5.22.4
       perl-5.20.3
       perl-5.18.4
       perl-5.16.3
       perl-5.14.4
       perl-5.12.5
       perl-5.10.1
        perl-5.8.9
        perl-5.6.2
      perl5.005_03
      perl5.004_05


    # cperl
      cperl-5.30.0
      cperl-5.30.0-RC1


    $

以下、**perlbrew**のアップデート。

    $ perlbrew self-upgrade
    Your perlbrew is up-to-date.
    $

以下、PerlBrewにて、インストール済みのバージョン確認。

    $ perlbrew list
      perl-blead
      perl-5.34.0
    $

以下、バージョン切り替えコマンド実施。

    $ perlbrew switch 5.34.0
    $ echo $?
    0
    $ perl --version

    This is perl 5, version 34, subversion 0 (v5.34.0) built for darwin-2level

    Copyright 1987-2021, Larry Wall

    Perl may be copied only under the terms of either the Artistic License or the
    GNU General Public License, which may be found in the Perl 5 source kit.

    Complete documentation for Perl, including FAQ lists, should be found on
    this system using "man perl" or "perldoc perl".  If you have access to the
    Internet, point your browser at http://www.perl.org/, the Perl Home Page.

    $

以下、PerlBrewバージョンを終了する(既存のPerlを有効化)。

    $ perlbrew off
    perlbrew is turned off.
    $ perl --version

    This is perl 5, version 18, subversion 4 (v5.18.4) built for darwin-thread-multi-2level
    (with 2 registered patches, see perl -V for more detail)

    Copyright 1987-2013, Larry Wall

    Perl may be copied only under the terms of either the Artistic License or the
    GNU General Public License, which may be found in the Perl 5 source kit.

    Complete documentation for Perl, including FAQ lists, should be found on
    this system using "man perl" or "perldoc perl".  If you have access to the
    Internet, point your browser at http://www.perl.org/, the Perl Home Page.

    $
※上記で切り替えた続きなので、バージョンが切り替わっているのは確認済み。  

以下、プログラム側でのバージョン確認。

    $ cat version.pl
    use v5.24;

    print $^V . "\n"
    $ perl version.pl
    v5.34.0
    $
`v5.24`指定をしているのに、`v5.34.0`として動いた。  
[う〜ん](https://perldoc.jp/func/use%20VERSION)。  
Perl全く分からない。  


---
### 新機能の利用
まず初めに、バージョン指定の方法。  
ファイル行頭に記述するのは、前述通りだが、他にも方法がある。  
以下のどれかを記述すれば良い(すべて同じ意味)。
```Perl
use v5.24;
use 5.24.0;
use 5.024;
```
※v5.12以降の指定により、暗黙的に`strict`と`warnings`が有効になる。  

#### [新機能のロード無し](https://perldoc.jp/func/require)
最小バージョンを指定する(どういう意味？)。
```Perl
require v5.24;
```

#### [必要になったときに新機能をロードする](https://perldoc.jp/docs/modules/feature-1.20/feature.pod)。
書籍の説明が理解できないのだが、指定した新機能をロードする？
```Perl
use feature qw(:5.10);
```
※この書き方により、指定バージョンに関連するタグを暗黙のうちにロードするようだ。  

#### 個別に新機能のロード実施。
全てではなく、個別にロードする(上記とは違うってことだよね)。
```Perl
use feature qw(state signatures);
```

#### 新機能の無効。
`feature`プラグマにより無効化しているため、そのプラグマが使えるバージョンが最低でも必要になる。
```Perl
no feature qw(:all);
```
※要は、無効化するほど古いバージョンを使っていないのに、新しいのでは動かないという思い込みの強い人が使うバージョン指定だろう。  

</details>

ちなみに、本書の1章分の学習時間は1〜2時間ほどだそうだ(1週間で読了できるそうだ)。  
そして、[Perl6](https://raku.org)は、[Raku](https://docs.raku.org)に名前が変わっていると思って良いよね。  

## 勉強方法
勉強するプログラミング言語の一つとしている。  
家にある本は古いため、以下のサイトを参考にしながら勉強を進めていくことにする。  
[perldoc.jp：公式ドキュメント・モジュールドキュメントサイト](https://perldoc.jp)  

"[初めてのPerl](https://www.oreilly.co.jp/books/)"は、[第5版](https://www.oreilly.co.jp/books/9784873114279/)を紙の本で持ち、[第6版](https://www.oreilly.co.jp/books/9784873115672/)をPDF版で持っている。  
第5版を読破していたとは言え、完全に忘れているため、読み直そうと思っていた。  
しかし、[第7版](https://www.oreilly.co.jp/books/9784873118246/)の目次を確認したときに驚いた。  
**[スマートマッチ](https://perldoc.jp/docs/perl/5.10.0/perlsyn.pod#Smart32matching32in32detail)** と **[given-when](https://perldoc.jp/docs/perl/5.22.1/perlsyn.pod#Experimental32Details32on32given32and32when)**
は、どこに行った？  
[バグ](https://perldoc.jp/docs/perl/5.34.0/perlsyn.pod#Switch32Statements)があったという報告も見えるし・・・。  

第6版のP5(1.2 Perlとは何の略でしょうか？)に記載している脚注5で、
> 「怠惰」(lazy)と言う言葉で、Larryを侮辱しているわけではありません。（以降略  

という説明が完全にLarry(Perlの開発者)を侮辱しているというのがアメリカンで面白い。  
そして、第7版では、驚くべきことに、侮辱していないことへの説明をしながら本当は侮辱していた第6版の注釈から今回本文に昇格されているという・・・。  
さすがアメリカン書籍だ。  
要は、注釈扱いだったモブ(注釈)説明から本文(主人公)に大抜擢されるというフリーガイ現象が発生したと言うことだ。  
素晴らしい。  
私も主人公になれるように頑張るぞ。  

## 開発環境
開発には、`MacVim`を使う。  

* 以下、私の利用環境。  
  * 勉強環境のコンパイルバージョン：perl 5, version 34, subversion 0 (v5.34.0)  
```terminal
$ perl --version

This is perl 5, version 34, subversion 0 (v5.34.0) built for darwin-2level

Copyright 1987-2021, Larry Wall

Perl may be copied only under the terms of either the Artistic License or the
GNU General Public License, which may be found in the Perl 5 source kit.

Complete documentation for Perl, including FAQ lists, should be found on
this system using "man perl" or "perldoc perl".  If you have access to the
Internet, point your browser at http://www.perl.org/, the Perl Home Page.

$
```

  * プログラムファイルの拡張子：`*.pl`  
　　※Prologのプログラムファイル拡張子と同じ。  
  * 実行方式：インタプリタ方式  
  * 標準の文字コード(プログラムファイル)：UTF-8  
　　※プラグマ(`use utf8;`)宣言が必要。  
  * 文字区切り(行末記号)：セミコロン`;`  
  * インデント：フリーフォーマット  
  * 標準の出力関数：`print`・`printf`・`say`  
  * コメント方法：`#`  

以下、ハローワールド。
```terminal
$ cat helloWorld.pl
print("Hello World.")
$ ./helloWorld.pl	←☆単体で実行することは出来ないようだ。
./helloWorld.pl: line 1: syntax error near unexpected token `"Hello World."'
./helloWorld.pl: line 1: `print("Hello World.")'
$ perl ./helloWorld.pl	←☆一応Perlであることを示してからの実行(改行なし出力ゆえにプロンプト表記が行末に掛かっている)。
Hello World.$
$
```

## 「Pythonで学ぶアルゴリズムの教科書」
※プログラミングに使う基礎知識を統一する(簡単に済ませられる量に絞り込む)。  

* 基礎知識5種類  
  * [x] [変数(スカラー)](#variable変数)2021/08/29  
  * [x] [配列](#arrangement配列)2021/08/31  
  * [ ] [条件分岐](#Conditional条件分岐)  
  * [ ] [繰り返し](#repetition繰り返し)  
  * [ ] [関数](#function関数)  

## 具体的な基礎知識
何はともあれ、まずは、"Hello World"を表示するプログラムを作る。  
その後で、基礎中の基礎となる制御構造(構造化プログラミング)を簡略化しながら勉強する。  
そのため、以下の手順で勉強を進めることにする。  

* 以下、手順。  
  * [x] 手順1. 勉強用のブランチに移動する。  
  * [x] 手順2. ルートディレクトリのひな形ディレクトリをコピーしてくる。  
  * [x] 手順3. コピーしてきたディレクトリ名を"基礎知識用の勉強"に変更する。  
  * [x] 手順3-0. ここまでは、上位ディレクトリにある"README.md"で作業を終えているはず。  
  * [x] 手順3-1. 当ファイル(`README.md`)の書き換えを行う。  
        ※ **上位ディレクトリにある"README.md"** は触らない。  
        ※勉強項目は転記するが、実際の具体的な勉強項目は記載しないことにする(見にくくて仕方ない)。  
  * [x] 手順3-2. `helloWorld.[言語用の拡張子]`のファイルを作り、おなじみ"Hello World."プログラムを作る。  
  * [ ] 手順3-3. main関数不要であれば、"**実行済み**"ディレクトリを削除すること。  
  * [x] 手順3-4. コミットする。  
  * [ ] 手順4. 各ディレクトリで、5種類の"絶対的に勉強する一覧"を勉強する。  
    * 以下、5種類の内訳。  
    [x] 変数  
    [ ] 配列  
    [ ] 条件分岐  
    [ ] 繰り返し  
    [ ] 関数  
  * [ ] 手順4-1. 箇条書きごとに勉強を進める。  
  * [ ] 手順4-2. 箇条書きごとに勉強を終えることで、コミット実施する。  
  * [ ] 手順4-3. 次の箇条書きに移り、勉強を継続(再開)する。  
  * [x] 手順4-X. 変数などの勉強で箇条書きごとにコミットは辛いよね。  
  * [ ] 手順5. 1つのプログラミング言語で、手順4の勉強1種類を終えた時に、次のプログラミング言語に移る。  
         (細かく分けることでやる気が維持される・・・はず)  
  * [ ] 手順6. 上記、5種類の基礎知識を終わるまで繰り返す。  
  * [ ] 手順7. 5種類の基礎知識終了にて、"study2programming"ブランチにマージする。  


### ※注意事項
基礎知識として、5種類を勉強するが、その目的はアルゴリズムの勉強用であって、5種類を本格的に極めるためではない。  
そのため、1つ1つを最小限に絞り込み、1つを10分前後の勉強時間に収まるように気をつけること。  


#### 以下、概要。
<a name="variable変数"></a>
* [変数(スカラー)](#variable変数sub)  
  * 変数の宣言方法  
    数値の代入  
    文字列の代入  
    代入したそれらの出力  
  * 代入した値の変更方法  
    変数を用いた計算  
    * 計算用演算子の説明  
    * データ型の説明  
      数値-整数型  
      数値-小数型  
      文字列  
      論理値  
    * データ型の変換(キャスト)  
  * ※スコープは"関数"で説明する。  

<a name="arrangement配列"></a>
* [配列(リスト)](#arrangement配列sub)  
  Perlでの配列とリストは別物。  
  配列：データを入れる入れ物であって、データは関係ない。  
  リスト：配列に入れるためのデータであって、入れ物ではない。  
  * 宣言方法  
    要素  
    要素数  
    添え字(インデックス)  
  * 要素追加方法  
  * 2次元配列  
    Perlでの多次元配列は不可能(リファレンスを使えば可能)。  
  * ※取り出しは"for"で説明する。  

<a name="Conditional条件分岐"></a>
* [条件分岐](#Conditional条件分岐sub)  
  * if文  
    条件式  
    * if文からの派生  
      if〜elif〜else  
    * 演算子  
      論理演算子  
      比較演算子  

<a name="repetition繰り返し"></a>
* [繰り返し](#repetition繰り返しsub)  
  * for文  
    条件式  
    多重(入れ子)利用  
    break  
    continue  
    拡張for文  
    　例）range  
    配列からの取り出し。  
  * while文  
    条件式  
    無限ループ  

<a name="function関数"></a>
* [関数](#function関数sub)  
  書式  
  引数  
  戻り値  
  * 組み合わせ  
    引数無し-戻り値無し  
    引数あり-戻り値無し  
    引数無し-戻り値あり  
    引数あり-戻り値あり  
  * 変数の有効範囲(スコープ)  
    グローバル変数  
    ローカル変数  

<a name="variable変数sub"></a>
### 変数(スカラー)
値の格納方法について。  
※複雑な説明はしない。  

* 絶対的に勉強する一覧  
  * [変数の宣言方法](#subVariable1)  
  * [変数への代入方法及び変数の利用](#subVariable2)  
    * [x] 代入演算子(`=`)  
  * [変数値の出力方法](#subVariable3)  
  * [データ型](#subVariable4)  
    なし。  
    * [x] 整数(`int`)  
    * [x] 浮動小数点型(`float`)  
    * [x] 文字型(`string`)  
    * [x] 真偽型(`bool`)  
      数値0が偽。それ以外真。  
  * [変数値を使った計算方法](#subVariable5)  
    * [x] 算術演算子  
      * [x] 足し算(`+`)  
      * [x] 引き算(`-`)  
      * [x] 掛け算(`*`)  
      * [x] 割り算(`/`)  
      * [x] 累乗(`**`)  
      * [ ] 割り算の商(`//`)  
        ないようだ。  
      * [x] 割り算の余り(`%`)  
  * [型変換(キャスト)方法](#subVariable6)  
    * [x] 明示変換  


<a name="subVariable1"></a>
#### 変数(スカラー)
様式：
`my $変数名;`  

変数名は、大小文字区別する(変数名に多バイト文字は使わないのが吉)。  
他のプログラミング言語と違い、データ型はない。  

変数とスカラーは異なるようだ。  
文字列をスカラーと良い、それを格納する入れ物を変数というのだろう。  

<a name="subVariable2"></a>
#### 変数への代入方法及び変数の利用
様式：
`my $変数名 = 値;`  

現在のバージョンは、最新版を使っている。  
そのため、最新版を使う場合、変数宣言を明確にしなければエラーになる。  
宣言明記とは`my`のこと。  
これは、レキシカル変数(my変数)と良い、基本的にはブロック内で変数宣言するときに付けるのだが、今回のように最新版(v5.12以降)であれば、自動的にレキシカル変数が必要になる。  
また、古いバージョンの時に宣言を明確にする場合は、`use strict;`を宣言する。  

<a name="subVariable3"></a>
#### 変数値の出力方法
今後、ここにプログラムを記載する場合、`use v5.24;`を省略する(実際のプログラムファイルには記載している)。  

```Perl
my $hoge = "boo";
print $hoge;	# boo
print $hoge , $hoge;	# booboo	←☆カンマ接続の場合は1つ目のhoge変数出力及び2つ目のhoge変数出力をしている。
print $hoge . $hoge;	# booboo	←☆ピリオド接続の場合は、1つ目と2つ目のhoge変数を連結後に出力している。
print "$hoge";	# boo
print '$hoge';	# $hoge
print "${hoge}'s";	# boo's	←☆下記のやり方では出力できないため、括弧で変数を明確にしている。
print "$hoge's" . $hoge;	# boo
```
※最後の1文がなぜこの表記になるのか分からない。  

また、変数展開はダブルクォーテーションに囲まれてもできるため、ダブルクォート展開とも言われている。  
可能な限りダブルクォーテーションを使わずに、変数だけで出力させるのが良い？  

愚痴：おかしい。  
一昔前は、print関数は、括弧付きで使っていたはずなのに、、、  
他のプログラム言語と勘違いしている？  

<a name="subVariable4"></a>
#### データ型
なし。  
全ての数値を使った計算は、例外なく倍精度浮動小数点数で行う(要は、整数値は存在しない)。  

Bool型もない。  
しかし、数値0であれば偽を表す。  
それ以外の数値は真を意味する。  

<a name="subVariable5"></a>
#### 変数値を使った計算方法
全ての数値を使った計算は、例外なく倍精度浮動小数点数で行う(要は、整数値は存在しない)。  

|演算子|意味|備考|
|------|----|----|
|`+`|加算||
|`-`|減算||
|`*`|乗算||
|`/`|除算||
|`**`|累乗||
|`//`|除算の商|Perlにない。|
|`%`|剰余演算||

<a name="subVariable6"></a>
#### 型変換(キャスト)方法
様式：
`int(計算式)`

```Perl
my $hoge;

$hoge = 2021 / 829;
say $hoge;	# 2.437876960193

$hoge = int(2021 / 829);
say $hoge;	# 2

$hoge = int(82.9 + 0.5);
say $hoge;	# 83
```
わざわざ切り捨てる必要あるか？  
最後の式は、四捨五入なので、使い道はある。  

<a name="subVariable999"></a>
#### 変数での説明しない項目。

<details><summary>今回は勉強を見送る一覧</summary>

* [ ] 定数  
  ない？  
* [ ] データ型  
  ない。  
* [ ] リテラル  
  * [ ] 整数リテラル  
  * [ ] 浮動小数点リテラル  
  * [ ] 文字リテラル  
  * [ ] 文字列リテラル  
* [ ] キャスト  
  * [ ] 暗黙変換  
    暗黙をわざわざ説明しない。  
* [ ] 演算子  
  * [ ] 優先順位  

* ちょっと高度な話題  
  * [ ] ポインタ  

* 関数を変数に代入  
* 関数を引数に使う  

</details>

<a name="arrangement配列sub"></a>
### 配列
Perlでの配列とは、データ(リストのこと)を入れる入れ物でしかない。データは全く関係ない。  
Perlでのリストとは、配列に入れるためのデータであって、入れ物は全く無関係になる。  
そして、リストを入れる入れ物の配列のことを変数ともいう(P43)。  
今回のPerlでは今までのルールから外れ、配列を優先して勉強し、その後でリストに触れる(後日談：結局一緒に勉強していることになっている)。  
※本来であれば、配列があるのだからリストは触らないのだが、配列だけでは勉強できないため、仕方ない。  

* 絶対的に勉強する一覧  
  * [x] [配列の宣言方法](#subArrangement1)  
        [x] 要素とは。  
        [x] 要素数とは。  
        [x] 添え字とは。  
  * [x] [配列への追加方法](#subArrangement2)  
  * [x] [二次元配列の宣言方法](#subArrangement3)  


<a name="subArrangement1"></a>
#### リスト(配列とは異なるようだ)
様式：
`my ($変数1, $変数2, $変数3, ・・・) = (値1, 値2, 値3, ・・・);`  

コンマ区切りしたものをリストと呼ぶ。  

#### 配列
様式：
`my @配列名;`  


<a name="subArrangement2"></a>
#### 配列への追加方法
様式：
`my @配列名 = (値1, 値2, 値3, ・・・)`  

最初の要素への取得方法。  
`$配列名[0]`  
これで**値1**が取り出せる。  
もしくは、値1を書き換える。  

配列は0から数える。
```Perl
my @hoge = (20210831, 20210901);
say @hoge;	# 2021083120210901
say $hoge[0];	# 20210831
say $hoge[1];	# 20210901
```

上記で言えば、2つ分の要素が配列に格納されている。  
そのため、配列の3番目要素(添え字2)以降はない。  
しかし、それ以降にも追加が可能。
```Perl
$hoge[9] = 20210901 + 9;	# 20210901
```
※この場合、[2]から[8]は、`undef`が自動的に格納されている。  

最後の要素への確認方法(配列は上記利用)。
```Perl
say $hoge[-1];	# 20210901
```

上記の数列が格納されている配列に文字列を格納することもできる。
```Perl
$hoge[99] = 'boo';	# boo
$hoge[88] = "bar";	# bar
$hoge[77] = 77777;	# 77777
```

リスト関数(`qw()`)での代入も可能。
```Perl
my @hoge = qw(h o h e);
say @hoge;	# hoge
```
※`$hoge[0]`には、**h**が格納されている。  
※クォーテーションでくくっていないため、要素が繋がって出力されている。  

以下、ダブルクォーテーションでくくって出力する。
```Perl
my @hoge = qw(h o h e ,);
say "@hoge";	# h o g e ,
```

以下、シングルクォーテーションでくくって出力する。
```Perl
my @hoge = qw(h o h e ,);
say '@hoge';	# @hoge
```
※配列要素が展開されず、そのまま出力された。  

以下、文字列として`@`記号を出力する場合は、エスケープシーケンスを付ける。
```Perl
say "hoge@Boge";	# エラー
say "hoge\@Boge";	# hoge@Boge
```

※[繰り返し](#repetition繰り返し)処理にて、配列内の要素を取り出す。  
1つづつ取り出す作業をせずに、勝手に取り出してくれる。  

##### 要素確認。
配列への代入個数を調べる。
```Perl
my @hoge = qw(20210831, 20210901, );
my $len = @hoge;	# 配列を変数に代入する(配列の添え字無し)。
say $len;	# 2
```

別の方法(関数利用)
```Perl
say scalar(@hoge);
```


##### 配列のコピー。
配列は、そのままイコール記号での代入でコピーできる。
```Perl
my @hoge = qw(20210831, 20210901, );
my @boo;
@boo = @hoge;
$hoge[0] = "bar";
say "@boo";	# 20210831, 20210901,
```
hoge配列への変更では、@booに影響ない。  


##### 添え字確認。
上記要素数の確認ではなく、最大添え字の調べ方。
```Perl
my @hoge = qw(20210831, 20210901, );
say $#hoge;	# 1
```


##### 空確認
空確認は、要素数0で判断できる。
```Perl
my @hoge = qw(20210831, 20210901, );
# 配列要素の空確認。
if (@hoge > 0) {
	say "空でない。"
}
# 別の方法。
if (@hoge) {
	say "空でない。"
}
```


<a name="subArrangement3"></a>
#### 二次元配列の宣言方法
Perlでの2次元配列は、配列で宣言できないため、学習見送り。  

以下、配列同士の連結。
```Perl
my @hoge = qw(20210830 20210831 );
my @bar = qw(20210901 20210902 );
my @boo = (@hoge, @bar);
say "@boo";	# 20210830 20210831 20210901 20210902
```
※配列内容が展開されてから新しい配列に格納される。  

<a name="subArrangement999"></a>
#### 配列での説明しない項目。

[以下、今回の言語に関係の無い項目を削除すること(対象言語に存在するが、見送るもののみ、以下残す)。]  
<details><summary>今回は勉強を見送る一覧</summary>

* 本来の配列操作。
  * [ ] pop演算子  
  * [ ] push演算子  
  * [ ] shift演算子  
  * [ ] unshift演算子  
  * [ ] splice演算子  

* Perlの組み込み関数。  
  * [ ] Join関数。  
    連結。  
  * [ ] split関数。  
    分割。  
  * [ ] 置換。  

* 配列の応用  
  * [ ] 多次元配列。  
    リファレンス。  
  * [ ] 配列を複製する方法。  
  * [ ] 配列からスライスを作成する方法。  
  * [ ] reverse演算子  
  * [ ] sort演算子  
  * [ ] each演算子  

* 構造体  
  * [ ] 構造体の複製  
  * [ ] 構造体からのスライス作成  
  * [ ] 共用体  
  * [ ] 列挙体  

* コレクション  
  * [ ] List?  
  * [ ] Set  
  * [ ] Map  
  * [ ] Queue  

</details>

<a name="Conditional条件分岐sub"></a>
### 条件分岐

* 絶対的に勉強する一覧  
  * [ ] [単純分岐-"もし"1つ。](#subConditional1)  
    基本構造例：if  
  * [ ] [多岐分岐-"もし"2つ以上。](#subConditional1)  
    基本構造例：if〜else if〜  
  * [ ] [論理演算子(ド・モルガンの法則)](#subConditional2)  
    * [ ] 論理積(`AND`・`&&`)  
    * [ ] 論理和(`OR`・`||`)  
  * [ ] [比較演算子](#subConditional3)  
    * [ ] 等しい(`==`)  
    * [ ] 等しくない(`!=`)  
    * [ ] より大きい(`>`)  
    * [ ] より小さい(`<`)  
    * [ ] 以上(`>=`)  
    * [ ] 以下(`<=`)  


<a name="subConditional1"></a>
#### 条件分岐
様式：

<a name="subConditional2"></a>
#### 論理演算子(ド・モルガンの法則)

|演算子|意味|備考|
|------|----|----|
|`&&`|論理積|別表記`AND`|
|`||`|論理和|別表記`OR`|

<a name="subConditional3"></a>
#### 比較演算子

|演算子|意味|備考|
|------|----|----|
|`==`|等号||
|`!=`|不等||
|`>`|より大きい||
|`<`|より小さい||
|`>=`|以上||
|`<=`|以下||

<a name="subConditional999"></a>
#### 条件分岐での説明しない項目。

[以下、今回の言語に関係の無い項目を削除すること(対象言語に存在するが、見送るもののみ、以下残す)。]  
<details><summary>今回は勉強を見送る一覧</summary>

* 多岐分岐-条件にて複数から選ぶ。  
  基本構造例：switch  

* 関係演算子  
  * [ ] 三項演算子(`?:`)  
  * [ ] 論理演算子  
    * [ ] 排他的論理和(`XOR`・`NOT OR`・`^`)  
    * [ ] 否定(`NOT`・`!`・`~`)  
    * [ ] ビット演算子(`&`・`|`)  

* 演算子の優先順位  

* 他の話題例  
  * [ ] 変数の比較  
  * [ ] 配列の比較  

* ジャンプ  
  * [ ] goto文  

</details>

<a name="repetition繰り返しsub"></a>
### 繰り返し

* 絶対的に勉強する一覧  
  * [ ] [指定回数条件での繰り返し](#subRepetition1)  
    [ ] [基本構造例：for( 条件式 )](#subRepetition2)  
    [ ] [基本構造例：拡張for命令(`in`)](#subRepetition3)  
    [ ] [`for`の入れ子。](#subRepetition4)  
  * [ジャンプ処理](#subRepetition5)  
    * [ ] break  
    * [ ] continue  
  * [ ] [真偽条件での繰り返し](#subRepetition6)  
    [ ] [基本構造例：while( 条件式 )](#subRepetition6)  
    [ ] [無限ループ](#subRepetition7)  


<a name="subRepetition1"></a>
#### 繰り返し
様式：

<a name="subRepetition2"></a>
##### 指定回数条件での繰り返し：for( 条件式 )
様式：

<a name="subRepetition3"></a>
##### 指定回数条件での繰り返し：拡張for命令
様式：

<a name="subRepetition4"></a>
#### `for`の入れ子。

<a name="subRepetition5"></a>
#### ジャンプ処理

<a name="subRepetition6"></a>
#### 真偽条件での繰り返し：while( 条件式 )
様式：

<a name="subRepetition7"></a>
#### 無限ループ
様式：

<a name="subRepetition999"></a>
#### 繰り返しでの説明しない項目。

[以下、今回の言語に関係の無い項目を削除すること(対象言語に存在するが、見送るもののみ、以下残す)。]  
<details><summary>今回は勉強を見送る一覧</summary>

* [ ] 真偽条件での繰り返し  
  基本構造例：do〜while( 条件式 )  

</details>

<a name="function関数sub"></a>
### 関数

* 絶対的に勉強する一覧  
  * [ ] 使い回せるようにまとめること。  
    * [ ] [引数と戻り値の組み合わせ。](#subFunction1)  
      [ ] 引数無し-戻り値無し  
      [ ] 引数あり-戻り値無し  
      [ ] 引数無し-戻り値あり  
      [ ] 引数あり-戻り値あり  
    * [スコープ](#subFunction2)  
      [ ] グローバルスコープ変数  
      [ ] ローカルスコープ変数  

<a name="subFunction1"></a>
#### 関数
様式：

<a name="subFunction2"></a>
#### スコープ

<a name="subFunction999"></a>
#### 関数での説明しない項目。

[以下、今回の言語に関係の無い項目を削除すること(対象言語に存在するが、見送るもののみ、以下残す)。]  
<details><summary>今回は勉強を見送る一覧</summary>

そもそもPythonは、普通に必要？  
しかし、アルゴリズムの勉強には不要なのだろう。  

* 標準的な関数  
  * [ ] 可変長引数  
  * [ ] 再帰関数  
  * [ ] 高階関数  
    変数の応用部分で説明する？  
* オブジェクト指向  
  * [ ] クラスの定義  
  * [ ] フィールド  
  * [ ] メソッド  
  * [ ] コンストラクタ  
* オブジェクト指向  
  * [ ] カプセル化  
  * [ ] 継承  
  * [ ] ポリモーフィズム  
* オブジェクト指向  
  * [ ] 例外処理  
  * [ ] 列挙型  
  * [ ] 入れ子クラス  
  * [ ] ジェネリクス  
  * [ ] ラムダ式(無名関数？)  

</details>


## Gitのマージルール
個々の言語ごとにブランチをそれぞれ作成する。  
そのブランチで作業する。  
以下、流れとして、、、

* ブランチ作成などの初期作業。  
  1. [ ] 対象言語のブランチ作成  
  1. [ ] そのブランチで勉強する。  
  1. [ ] 切りの良い場所でコミット実施。  

  * 上記作業再開。  
    1. [ ] 前回の勉強を再開する。  
    1. [ ] 1章分の勉強終了後、"study2programming"にマージする。  
    1. [ ] 誤字脱字程度のコミットはスカッシュしたい。  
    1. [ ] "study2programming"をPushする。  
       ※masterにマージすることはない。  
    1. [ ] 章ごとにタグ付けをする(Push実施)。  

study2programmingに取り込むときのマージは、3方向マージ(`--no-ff`)を使う。  
例外作業として、masterに取り込む場合はチェリーピッキングでピンポイントに必要最小限のコミットのみを取り込む(しつこいが、masterに取り込むことはしたくない)。  
あわよくば、Gitの勉強にもなればと思ったが、思った以上に難しい。  


以上。
