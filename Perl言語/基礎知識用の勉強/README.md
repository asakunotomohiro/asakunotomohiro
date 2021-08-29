# Perl言語
ここは、プログラミング言語のPerl言語を勉強するブランチになる。  

## ブランチの利用方法
現時点でのブランチは、Perl言語の基礎知識5種類を勉強するブランチになる。  
その勉強は、本命である「Pythonで学ぶアルゴリズムの教科書」を勉強するための前戯だ。  

## Perl5
オライリー社のPerl第7版を購入したことは、あとで呟いているのだが、書籍に書いている「はじめに」は、「**Perl6**という別言語が存在するが、Perlを勉強したい人はPerl5を求めているはずだ。」と説明している。  
本来であれば、Perlから名前を変えたかったようだが、Perl6という名前を付けてしまい、そのまま開発を進ませたような説明をしている。  
そのため、Perl6は世の中にあるが、Perl5.24で話を進めるようだ。  
そして、せっかくPerl5.24で説明をするというのだからそのバージョン以降で動くプログラムを作ろうと思う。  
※悲しいかな。本命から逸れたことには触れないで頂きたい。  
書籍ですらPerl6ではなく、Perl5で話を進めるというのに、Perl6が結局何だったのか話題に触れないままで問題用に、気にするだけ無駄になる。  
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

職場でPerlを使う環境だったが、記号だらけになるのを嫌い、ほとんど記号などを使わず、配列などもシフトさせずに添え字を使い、文書処理などの細かい作業を`awk`や`sed`任せにしていた。  
Perlは、単純に`awk` `sed`を呼び出すだけのキッカーの役割でしかなく、Perlを使うことを無駄にするこだわりを持っている現場だった。  
Perlの開発者は言う「`awk`では細かい文書処理ができないため、Perlを作った」と・・・。  

そんな間抜けなこだわりは、その小さいプロジェクトだけに完結せず、ドコモ自体も[アレア品川ビル](http://www.area-shinagawa.com/)の2階からの入退室管理は警備員を配置するなどの厳重管理をする癖して、1階からは自由に入館できるできる仕組みを放置するこだわりを持っていた。  
しかも、守秘義務に同意したが、なぜかそれを反故にされ、契約を切られた。  
ずさんなセキュリティ管理をするぐらい入退室管理を自由にさせるほどだから守秘義務の契約なども屁とも思わず、派遣社員の私を踏みにじってくるのだろう。  
くっそぉ〜。  
逆か？  
守秘義務に限らず、契約を気分で変えるため、セキュリティ云々の話は興味が無いのかな・・・。  

同ビルの13階は、自由に契約できるようだが、最低15万円ほどの賃料で借りられるようだ(2坪もないって・・・)。  
建物に自由入館できるとは言え、各フロアに入るには、カギが必要・・・それを言えば、1階からもそうだから・・・大丈夫ってことかな。  

現実世界での不自由さから解放されて[フリーガイ](https://www.20thcenturystudios.jp/movie/Freeguy.html)になれるように[初めてのPerl 第7版](https://www.oreilly.co.jp/books/9784873118246/)を手に入れた。  
バグのない世界を作れるようになりたいからな。  

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
  * 勉強環境のコンパイルバージョン：perl 5, version 18, subversion 4 (v5.18.4)  
```terminal
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
```
しまった。  
せっかく第7版の書籍`Perl 5.24`を購入したのに、バージョンが古いままだ。  

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
  * [ ] [変数(スカラー)](#variable変数)  
  * [ ] [配列](#arrangement配列)  
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
    [ ] 変数  
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
    * [ ] 代入演算子(`=`)  
  * [変数値の出力方法](#subVariable3)  
  * [データ型](#subVariable4)  
    * [ ] 整数(`int`)  
    * [ ] 浮動小数点型(`float`)  
    * [ ] 文字型(`string`)  
    * [ ] 真偽型(`bool`)  
  * [変数値を使った計算方法](#subVariable5)  
    * [ ] 算術演算子  
      * [ ] 足し算(`+`)  
      * [ ] 引き算(`-`)  
      * [ ] 掛け算(`*`)  
      * [ ] 割り算(`/`)  
      * [ ] 累乗(`**`)  
      * [ ] 割り算の商(`//`)  
      * [ ] 割り算の余り(`%`)  
  * [型変換(キャスト)方法](#subVariable6)  
    * [ ] 明示変換  


<a name="subVariable1"></a>
#### 変数(スカラー)
様式：

<a name="subVariable2"></a>
#### 変数への代入方法及び変数の利用
様式：

<a name="subVariable3"></a>
#### 変数値の出力方法

<a name="subVariable4"></a>
#### データ型

|データ型|サイズ|備考|
|--------|------|----|
|int|||
|float|||
|string|||
|bool|||

<a name="subVariable5"></a>
#### 変数値を使った計算方法

|演算子|意味|備考|
|------|----|----|
|`+`|加算||
|`-`|減算||
|`*`|乗算||
|`/`|除算||
|`**`|累乗||
|`//`|除算の商||
|`%`|剰余演算||

<a name="subVariable6"></a>
#### 型変換(キャスト)方法
様式：

<a name="subVariable999"></a>
#### 変数での説明しない項目。

[以下、今回の言語に関係の無い項目を削除すること(対象言語に存在するが、見送るもののみ、以下残す)。]  
<details><summary>今回は勉強を見送る一覧</summary>

* [ ] 定数  
* [ ] データ型  
  * [ ] 整数(`long`など)  
  * [ ] 浮動小数点型(`double`など)  
  * [ ] 型推論  
  * [ ] 複素数型  
* [ ] リテラル  
  * [ ] 整数リテラル  
  * [ ] 浮動小数点リテラル  
  * [ ] 文字リテラル  
  * [ ] 文字列リテラル  
* [ ] キャスト  
  * [ ] 暗黙変換  
* [ ] 演算子  
  * [ ] 優先順位  

* ちょっと高度な話題  
  * [ ] ポインタ  

* 関数を変数に代入  
* 関数を引数に使う  

</details>

<a name="arrangement配列sub"></a>
### 配列
Perlでの配列とは、データを入れる入れ物でしかない。データは全く関係ない。  
Perlでのリストとは、配列に入れるためのデータであって、入れ物は全く無関係になる。  
今回のPerlでは今までのルールから外れ、配列を優先して勉強し、その後でリストに触れる。  
※本来であれば、配列があるのだからリストは触らないのだが、配列だけでは勉強できないため、仕方ない。  

* 絶対的に勉強する一覧  
  * [ ] [配列の宣言方法](#subArrangement1)  
        [ ] 要素とは。  
        [ ] 要素数とは。  
        [ ] 添え字とは。  
  * [ ] [配列への追加方法](#subArrangement2)  
  * [ ] [二次元配列の宣言方法](#subArrangement3)  


<a name="subArrangement1"></a>
#### 配列
様式：

<a name="subArrangement2"></a>
#### 配列への追加方法
様式：

<a name="subArrangement3"></a>
#### 二次元配列の宣言方法
Perlでの2次元配列は、配列で宣言できないため、学習見送り。  

<a name="subArrangement999"></a>
#### 配列での説明しない項目。

[以下、今回の言語に関係の無い項目を削除すること(対象言語に存在するが、見送るもののみ、以下残す)。]  
<details><summary>今回は勉強を見送る一覧</summary>

* 配列の応用  
  * [ ] 3次元配列以上の宣言方法。  
  * [ ] 配列を複製する方法。  
  * [ ] 配列からスライスを作成する方法。  

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
