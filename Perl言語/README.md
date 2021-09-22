# Perl言語
ここは、プログラミング言語のPerl言語を勉強するブランチになる。  


## ブランチの利用方法
ここのブランチは、Python書籍からアルゴリズムをPerlに置き換えて勉強するのに使う。  
また、具体的なアルゴリズムの種類は、下記書籍の目次チャプターに限定する。  
書籍名：Pythonで学ぶアルゴリズムの教科書  
※チャプターごとにブランチを分けていく。  


### 勉強方法
勉強するプログラミング言語の一つとしている。  
「[初めてのPerl](https://www.oreilly.co.jp/books/)」は、[第5版](https://www.oreilly.co.jp/books/9784873114279/)を紙の本で持ち、[第6版](https://www.oreilly.co.jp/books/9784873115672/)をPDF版で持っている。  
そして、今回の勉強のためだけに[第7版](https://www.oreilly.co.jp/books/9784873118246/)を(紙媒体で)購入した。  
以下のサイトも利用する。  
[perldoc.jp：公式ドキュメント・モジュールドキュメントサイト](https://perldoc.jp)  

ちなみに、  
第6版のP5に記載している脚注5で、
> 「怠惰」(lazy)と言う言葉で、Larryを侮辱しているわけではありません。（以降略  

という説明が完全にLarry(Perlの開発者)を侮辱しているというのがアメリカンで面白い。  
そして、第7版では、驚くべきことに、侮辱していないことへの説明をしながら本当は侮辱していた第6版の注釈から今回本文に昇格されているという・・・。  
さすがアメリカン書籍だ。  


### 開発環境
開発には、`MacVim`を使う。  
大きな規模にしてまで勉強を継続する予定はないかな。  
Perlを極めるには、毎日最低でも20分間はPerlの勉強を続けなければいけないとのことだが、それは無理。  
Perlerになるつもりはない。  

<details><summary>基礎知識5種類の項目</summary>

### Pythonで学ぶアルゴリズムの教科書
簡単なプログラミングに使う基礎知識を統一する。  

* 基礎知識5種類  
  * [x] [変数(スカラー)](#variable変数)2021/08/29  
  * [x] [配列](#arrangement配列)2021/08/31  
    ここでのPythoでは、`リスト(list)`を配列と呼んでいる。  
    ここでのPerlでは、リストはリストであり、配列は配列である。  
  * [x] [条件分岐](#Conditional条件分岐)2021/09/01  
  * [x] [繰り返し](#repetition繰り返し)2021/09/01  
  * [x] [関数](#function関数)2021/09/01  

</details>

* [アルゴリズム勉強目次](#algorithmTextbookLearnedinPython)  
  * [x] Chapter 1 プログラミングの基礎知識  
    現時点で完了している(上記の基礎知識5種類として)。  
  * [Chapter 2 プログラミングの力を養う](#algorithmTextbookLearnedinPythonChapter2)  
  * [Chapter 3 データ構造を学ぶ](#algorithmTextbookLearnedinPythonChapter3)  
  * [Chapter 4 サーチ](#algorithmTextbookLearnedinPythonChapter4)  
  * [Chapter 5 ソート](#algorithmTextbookLearnedinPythonChapter5)  
  * [Chapter 6 ハッシュ](#algorithmTextbookLearnedinPythonChapter6)  
  * [Chapter 7 さまざまなアルゴリズムを学ぶ](#algorithmTextbookLearnedinPythonChapter7)  
  * [Chapter 8 アルゴリズムを見える化する](#algorithmTextbookLearnedinPythonChapter8)  
  * Appendix 1 Pythonのインストール方法
  * Appendix 2 テキストエディタと統合開発環境
  * Appendix 3 Pythonの記述ルール


<details><summary>応用知識の項目</summary>

### 基礎知識5種類の勉強範囲を広げる
基礎知識5種類の勉強は、アルゴリズムの勉強用に特化していたが、今回は普通にPerlを使うための範囲にまで手を広げる。  

* 基礎知識5種類の範囲を広げる  
  * [ ] [変数(スカラー)](#practicaluseVariable変数)  
  * [ ] [配列](#practicaluseArrangement配列)  
    [ ] リスト演算子(`grep`・`map`)  
    [ ] eval  
  * [ ] [条件分岐](#practicaluseConditional条件分岐)  
  * [ ] [繰り返し](#practicaluseRepetition繰り返し)  
  * [ ] [関数](#practicaluseFunction関数)  

### 基礎知識5種類の勉強以外の項目
基礎知識5種類に納められない範囲の勉強に手を広げる。  

* 応用知識  
  * [ ] [リファレンス](#practicaluseReference)  
    [ ] スコープ  
    [ ] サブルーチンへのリファレンス  
    [ ] ファイルハンドルへのリファレンス  
    [ ] 応用利用  
  * [ ] [ハッシュ(連想配列)](#practicaluseHash)  
  * [ ] [ファイル操作](#practicaluseFileoperation)  
  * [ ] [ディレクトリ操作](#practicaluseDirectorymanipulation)  
  * [ ] [オブジェクト指向](#practicaluseObjectorientation)  
    [ ] 入門  
  * [ ] [テスト方法](#practicaluseTester)  
  * [ ] [標準モジュール](#practicaluseModule)  
  * [ ] [プロセス管理](#practicaluseSystemfunc)  

</details>


<details><summary>基礎知識5種類の作業手順</summary>

### Perl5
オライリー社のPerl第7版の書籍に書いている「はじめに」に、「**Perl6**という別言語が存在するが、Perlを勉強したい人はPerl5を求めているはずだ。」と説明している。  
本来であれば、Perlから名前を変えたかったようだが、Perl6という名前を付けてしまい、そのまま開発を進ませたような説明をしている。  
そのため、Perl6は世の中にあるが、Perl5.24で話を進めるようだ。  
当然私もPerl6ではなく、Perl5で勉強を進める。  
そして[最新版](https://www.perl.org/get.html)を使う。  


#### シジル(sigil)
以下、Perlで利用する基本的な記号の[意味](https://perldoc.jp/docs/perl/5.10.0/perlfaq7.pod#What32are32all32these32-36-64-37-42-32punctuation32signs44-32and32how32do32I32know32when32to32use32them63)。  

> $ スカラ値(数値、文字列、リファレンス)に対するもの  
> @ 配列に対するもの  
> % ハッシュ(連想配列)に対するもの  
> & サブルーチン(またの名を関数、手続き、メソッド)に対するもの  
> \* シンボル名に対する全ての型。バージョン4ではポインタのように使われていましたが、新しいperlではリファレンスが使えます。  
> <> あるファイルハンドルからレコードを入力するのに使われます。  
> \  なにかのリファレンスを取ります。  


#### 具体的な基礎知識

[x] 手順1. 勉強用のブランチに移動する。  
[x] 手順2. ルートディレクトリのひな形ディレクトリをコピーしてくる。  
[x] 手順3. コピーしてきたディレクトリ名を"基礎知識用の勉強"に変更する。  
[x] 手順4. その(ディレクトリ配下にある)"ひな形/README.md"を参考に作業を進める。  
[x] 手順4-1. これ以降は、そのファイルを元に作業を進める。  
[x] 手順5. 手順4での「5種類の基礎知識」が終わり次第、このディレクトリにある当ファイルの作業を再開する。  
[x] 手順6. 5種類の基礎知識終了にて、"study2programming"ブランチにマージする。  

</details>

<details><summary>私の作業環境</summary>

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
    文を区切るために必要なだけであって、文を終わらせるために付けるのではない。  
    そのため、次に続く文がない場合は、セミコロン不要で実行できる(それでも付けろよ)。  
  * インデント：フリーフォーマット  
  * 標準の出力関数：`print`・`printf`・`say`  
    整形関数：[`sprintf`](https://perldoc.jp/func/sprintf)  
  * コメント方法：`#`  
    [大きなブロックで囲む方法](https://perldoc.jp/docs/perl/5.10.0/perlfaq7.pod#How32can32I32comment32out32a32large32block32of32perl32code63)：
    PODマーカーで囲むこと。  

以下、ハローワールド。
```terminal
$ cat helloWorld.pl
#!/usr/bin/perl -w

print "Hello World.\n";	# Hello World.
print $^V . "\n";	# v5.18.4
$ ./helloWorld.pl
Hello World.
v5.18.4
$
```
※[シェバング](#https://www.wdic.org/w/TECH/shebang)[追加](https://perldoc.jp/docs/perl/5.34.0/perlsec.pod)で、単発実行可能になった(P14・P176)。  
※前は、恥ずかしながら`perl ./helloWorld.pl`で実行していた。  
そして、今回は、恥ずかしながら古いバージョンのPerlで実行している。  
Unixシステムでは`#!/usr/bin/env perl`で、Perlのインストール場所を探してくれるそうだ(Macで動いた)。  
Unix以外のシステムでは、`#!perl`と記述するそうだ(記述したところで動いてはくれない)。  

</details>

<details><summary>アルゴリズム問題解決の作業手順</summary>

## 具体的なアルゴリズム問題解決前手順
基礎知識5種類を勉強するのと同じように、アルゴリズムの勉強にも以下の手順で進める。  

* 以下、手順。  
  * [x] 手順1. 勉強用のブランチに移動する(上記目次の1チャプター分専用ブランチとする)。  
  * [x] 手順2. ルートディレクトリのひな形ディレクトリ配下の必要なディレクトリをコピーする。  
    **Pythonで学ぶアルゴリズムの教科書 一生モノの知識と技術を身につける** ディレクトリ配下の必要なチャプター用ディレクトリ。  
  * [x] 手順3. 当ファイル(`README.md`)の書き換えを行う。  
  * [x] 手順3-1. 勉強対象のチャプター子部分にチェックリストを付ける。  
        ※ **上位ディレクトリにある"README.md"** は触らない。  
        この手順不要？  
  * [x] 手順3-2. 目次部分を修正する。  
    同ファイルの細かい場所(下記の行頭シャープ記号3つ以上ある)箇所にリンクできるようにする。  
  * [ ] 手順3-3. コミットする。  
  * [ ] 手順4. 各ディレクトリで、各項目ごとに勉強を進める。  
    [ ] Chapter 2 プログラミングの力を養う  
    [ ] Chapter 3 データ構造を学ぶ  
    [ ] Chapter 4 サーチ  
    [ ] Chapter 5 ソート  
    [ ] Chapter 6 ハッシュ  
    [ ] Chapter 7 さまざまなアルゴリズムを学ぶ  
    [ ] Chapter 8 アルゴリズムを見える化する  
  * [ ] 手順5. 1つのプログラミング言語で、手順4の勉強1種類を終えた時に、次のプログラミング言語に移る。  
  * [ ] 手順6. 上記、1チャプター分が終わるまで繰り返す。  
  * [ ] 手順7. 1チャプター分終了にて、"study2programming"ブランチにマージする。  

</details>

### ※注意事項
アルゴリズムを勉強することが目的であるため、理解すること。  
しかし、やる気を維持するためにも1冊分を読了させることも目的として、深掘りせずに進めることも考慮すること。  
要は、深く踏み込むか、流し読み程度に抑えるかどうかはそのときに決める。  

何より、書籍記載のアルゴリズムは、サンプルとして公式ページからダウンロードできる。  
そのため、書籍通りに進めるわけには行かず、自分なりに理解できるやり方で勉強した場合、当然ながら時間が掛かり、踏み込む必要が発生するだろう。  
それでも読了も達成したいため、なかなか両立は、難しい・・・と思い込んでいるが、実際は流し読み程度に抑え、サクサク勧めていこうと思う。

<a name="variable変数"></a>
<a name="arrangement配列"></a>
<a name="Conditional条件分岐"></a>
<a name="repetition繰り返し"></a>
<a name="function関数"></a>
<details><summary>基礎知識5種類の各項目</summary>

基礎知識として、5種類を勉強するが、その目的はアルゴリズムの勉強用であって、5種類を本格的に極めるためではない。  
そのため、1つ1つを最小限に絞り込み、1つを10分前後の勉強時間に収まるように気をつけること。  

#### 概要。
* [変数](#variable変数sub)  
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
  * ※取り出しは"for"で説明する。  

* [条件分岐](#Conditional条件分岐sub)  
  * if文  
    条件式  
    * if文からの派生  
      if〜elif〜else  
    * 演算子  
      論理演算子  
      比較演算子  

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

</details>

<a name="variable変数sub"></a>
<a name="arrangement配列sub"></a>
<a name="Conditional条件分岐sub"></a>
<a name="repetition繰り返しsub"></a>
<a name="function関数sub"></a>
<details><summary>実際の基礎知識5種類の勉強</summary>

### 変数
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
      * 割り算の商(`//`)  
        ない。  
        Perlでは、`defined-or演算子`として使う。  
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

##### デフォルト変数
変数を指定する場所で変数が指定されていない場合、`$_`が自動的に使われる(ユーザからの目には見えないが、あえてそれを指定することもできる)。  

```Perl
$_ = "hoge";	# myを付けてはならない(宣言無しなのは暗黙宣言されているから)。
say;	# hoge

my @hoge = ("hoge", "bar");
foreach ( @hoge ) {
	say;	# hoge
			# bar
}
```
上記の`foreach`では、`@hoge`配列から要素を取り出した値は、`$_`に代入され、`say`にて`$_`変数値が出力される。

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
print "$hoge's" . $hoge;	# boo	←☆なぜこの表記になるのか分からない(解釈不可能や表示できないならエラーにして欲しいよ)。
```

また、変数展開はダブルクォーテーションに囲まれてもできるため、ダブルクォート展開とも言われている。  
可能な限りダブルクォーテーションを使わずに、変数だけで出力させるのが良い？  

 * 補足：クォーテーションの代替  
   * シングルクォーテーション`'`  
     `'〜'`を`q/ /`に置き換えられる。  
   * ダブルクォーテーション`"`  
     `"〜"`を`qq/ /`に置き換えられる。  
   * グレブアクセント``` ` ```  
     ``` `〜` ```を`qx/ /`に置き換えられる。  
   * 丸括弧`()`  
     `(〜)`を`qw/ /`に置き換えられる。  

|標準形|一般形|意味|展開|
|------|------|----|----|
|`''`|`q//`|リテラル文字列|しない|
|`""`|`qq//`|リテラル文字列|する|
|``` `` ```|`qx//`|コマンド実行|する|
|`()`|`qw//`|ワードリスト|しない|
|`//`|`m//`|パターンマッチ|する|
|`s///`|`s///`|パターン置換|する|
|`y///`|`tr///`|文字変換|しない|
|`""`|`qr//`|正規表現|する|


<a name="subVariable4"></a>
#### データ型
なし。  
全ての数値を使った計算は、例外なく倍精度浮動小数点数で行う(要は、整数値は存在しない)。  
そのため、Bool型もない。  

##### bool値
以下が、Bool値の代替方法。  

* ブール値と判断できる条件  
  * 値が数字であれば0は偽を表す。それ以外は真を表す。  
  * 値が文字列であれば、空文字(`''`)と文字列(`'0'`)は偽を表す。それ以外は真を表す。  
  * 変数に値がない場合は偽を表す(undefの場合偽ということ)。

※配列宣言しただけでは空文字が設定されるため、偽になる。  
※ブール値を反転させる場合は否定演算子(`!`)を使う。  

以下、実施。
```Perl
$hoge = 0;
if ($hoge) {
	say "真の場合実行。", $hoge;
}
else {
	say "偽の場合実行。", $hoge;
}
#	実行結果：偽の場合実行。0

$hoge = 1;
if ($hoge) {
	say "真の場合実行。", $hoge;
}
else {
	say "偽の場合実行。", $hoge;
}
#	実行結果：真の場合実行。1
```

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

* 定数  
  [ ] [constantプラグマ](https://perldoc.jp/docs/modules/constant-1.17/constant.pod)  
  これは、関数定義で書き込みできないようにしている(他のプログラミング言語のような定数とは概念からして異なる)。  
  他にも定数のやり方はあるようだが、Perlに元から付けられているものではないのだろう。  
* データ型  
  ない(キャストするときに必要？)。  
* [ ] リテラル  
  * [ ] 整数リテラル  
    10進数以外の解釈。  
  * [ ] 浮動小数点リテラル  
  * [ ] 文字リテラル  
  * [ ] 文字列リテラル  
    > プログラムでUnicodeをリテラルとして使いたい場合には、utf8プラグマを指定する必要があります。  
    > 指定したくない理由が理解できるまでは、常にこのプラグマを指定するのが良い習慣でしょう。  
    > `use utf8;`  
* [ ] ダブルクォート文字列リテラル  
  * バックスラッシュエスケープ  
* [ ] キャスト  
  * [ ] 暗黙変換  
    暗黙をわざわざ説明しない。  
* [ ] 演算子  
  * [ ] reverse演算子(配列用)  
  * [ ] sort演算子(配列用)  
  * [ ] each演算子(配列用)  
  * [ ] ダイヤモンド演算子(標準入力？)  
  * [ ] ダブルダイヤモンド演算子(標準入力？)  
  * [ ] ビット演算子  
    ビットAND演算子。  
    ビットOR演算子。  
    ビットXOR演算子。  
    左シフト演算子。  
    右シフト演算子。  
    ビット否定演算子。  
  * [ ] 優先順位  
    [C言語での優先順位と代わらない](https://perldoc.jp/docs/perl/5.10.0/perlfaq7.pod#Why32do32Perl32operators32have32different32precedence32than32C32operators63)  

* ちょっと高度な話題  
  * [ ] ポインタ  

* 関数を変数に代入  
* 関数を引数に使う  

</details>

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
#### リスト(配列とは異なる)
様式：
`my ($変数1, $変数2, $変数3, ・・・) = (値1, 値2, 値3, ・・・);`  

コンマ区切りしたものをリストと呼ぶ。  

#### 配列
様式：
`my @配列名;`  


<a name="subArrangement2"></a>
#### 配列への追加方法
[配列](#subArrangement2wrongarray)は0から始まるが、意識する必要は無いだろう。  

様式：
`my @配列名 = (値1, 値2, 値3, ・・・)`  

* 末尾要素の取り出し：
`$変数名 = pop @配列名;`  
※括弧を付けても利用可能(`pop(@配列名);`)。  
以下、サンプル。  

```Perl
my @hoge = ( 1..4 );
$four = pop(@hoge);
say "@hoge";	# 1 2 3
say "$four";	# 4
```

* 末尾に要素を追加：
`push @配列名, 値;`  
`push @配列名, 値1, 値2, 値3, ・・・;`  
`push @配列名, リスト;`  
※括弧を付けても利用可能(`push(@配列名, [値|リスト]);`)。  
以下、サンプル。  

```Perl
my @hoge = ( 1..4 );
push(@hoge, 20210902);
say "@hoge";	# 1 2 3 4 20210902
```

* 先頭要素を取り出し：
`$変数名 = shift @配列名;`  
※括弧を付けても利用可能(`shift(@配列名);`)。  
以下、サンプル。  

```Perl
my @hoge = ( 1..4 );
say "@hoge";	# 1 2 3 4

$four = shift @hoge;
say "@hoge";	# 2 3 4
say "$four";		# 1
```

* 先頭に要素を追加：
`unshift @配列名, 値`  
`unshift @配列名, リスト`  
※括弧を付けても利用可能(`unshift(@配列名, [値|リスト]);`)。  
以下、サンプル。  

```Perl
my @hoge = ( 1..4 );
say "@hoge";	# 1 2 3 4
unshift @hoge, 20210903;
say "@hoge";	# 20210903 1 2 3 4
```

* 専門用語  
  * スタック`stack`(後入れ先出し法：Last In First Out, LIFO)  
    `push`・`pop`の組み合わせ。  
    * push  
      配列の**最後**に要素を**追加**する。  
      `unshift`の追加処理早い。  
    * pop  
      配列の**最後**から要素を**取り出す**。  
  * キュー`queue`(先入れ先出し法：First In First Out, FIFO)  
    `shift`・`unshift`の組み合わせ。  
    * shift  
      配列の**最初**から要素を**取り出す**。  
      `pop`の取り出しより早い。  
    * unshift  
      配列の**最初**に要素を**追加**する。  

* 配列を任意の場所で継ぎ接ぎ：
  * `$変数名 = splice @配列名, 添え字;`  
    添え字以降の要素が取り除かれ、配列最後の要素が変数に代入される。  
  * `@配列名 = splice @配列名, 添え字;`  
    添え字の要素以降が配列に代入される。  
    要は、第2引数までの利用。  
  * `@配列名 = splice @配列名, 添え字, 要素数;`  
    添え字の要素以降から要素数までが配列に代入される。  
    要は、第3引数までの利用。  
  * `@配列名 = splice @配列名, 添え字, 要素数, リスト;`  
    添え字の要素以降から要素数までが配列に代入され、その分をリストで置き換える。  
    要は、第4引数までの利用。  
    要素数の部分を0指定した場合、その場所に挿入する(置き換えではなくなる)。  

以下、`splice`演算子による添え字番号指定の取り出し(第2引数までの利用)。
```Perl
my @hoge = ( 1..10 );
say "@hoge";	# 1 2 3 4 5 6 7 8 9 10
@boo = splice @hoge, 2;
say "@hoge";	# 1 2
say "@boo";		# 3 4 5 6 7 8 9 10
```

以下、`splice`演算子による添え字番号指定の取り出し(第3引数までの利用)。
```Perl
my @hoge = ( 1..10 );
say "@hoge";	# 1 2 3 4 5 6 7 8 9 10
@boo = splice @hoge, 2, 3;
say "@hoge";	# 1 2 6 7 8 9 10
say "@boo";		# 3 4 5
```

以下、`splice`演算子による添え字番号指定の置換(第4引数までの利用)。
```Perl
my @hoge = ( 1..10 );
say "@hoge";	# 1 2 3 4 5 6 7 8 9 10
@boo = splice @hoge, 2, 3, ("hoge", "boo");
say "@hoge";	# 1 2 hoge boo 6 7 8 9 10
say "@boo";		# 3 4 5
```

以下、`splice`演算子による添え字番号指定の挿入(第4引数までの利用)。
```Perl
my @hoge = ( 1..5 );
say "@hoge";	# 1 2 3 4 5
@boo = splice @hoge, 2, 0, ("hoge", "boo");
say "@ahoge";	# 1 2 hoge boo 3 4 5
say "@boo";		# [空文字のようだ]
```


配列は0から数えるが、意識する必要はあるか？
```Perl
my @hoge = (20210831, 20210901);
say @hoge;	# 2021083120210901
say $hoge[0];	# 20210831
say $hoge[1];	# 20210901
```

<a name="subArrangement2wrongarray"></a>
<details><summary>間違った配列操作</summary>

様式：
`my @配列名 = (値1, 値2, 値3, ・・・)`  

最初の要素への取得方法。  
`$配列名[0]`  
これで**値1**が取り出せる。  
もしくは、値1を書き換える。  

上記で言えば、2つ分の要素が配列に格納されている。  
そのため、配列の3番目要素(添え字2)以降はない。  
しかし、それ以降にも追加が可能。
```Perl
$hoge[9] = 20210901 + 9;	# 20210901
```
※この場合、[2]から[8]は、`undef`が自動的に格納されている。  

</details>

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
リスト関数の括弧(`()`)は、どの組み合わせでも可能(`#`・`{}`・`[]`・`<>`・`!`・`/`)。  
利点：`qw{ /usr/hoge /home/bar/ }`  
エスケープシーケンスなしで値を設定できる。  

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
`foreach my $変数名 ( @配列名 ) { ・・・ }`  
配列名には、`(1..5)`などのリストを指定する。  

<details><summary>配列操作の応用</summary>

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


##### 要素数確認。
配列への代入個数を調べる。
```Perl
my @hoge = qw(20210831, 20210901, );
my $len = @hoge;	# 配列を変数に代入する(配列の添え字無し)。
say $len;	# 2
```

以下、別の方法(関数利用)
```Perl
say scalar(@hoge);
```


##### 添え字確認。
上記要素数の確認ではなく、最大添え字数の調べ方。
```Perl
my @hoge = qw(20210831, 20210901, );
say $#hoge;	# 1
```
配列は0から数える。  
2つの要素があるため、最大配列添え字は1になる。  
その1が結果として得られている。  


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

</details>

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

<details><summary>今回は勉強を見送る一覧</summary>

* 本来の配列操作。2021/09/03
  * [x] pop演算子  
  * [x] push演算子  
  * [x] shift演算子  
  * [x] unshift演算子  
  * [x] splice演算子  

* Perlの組み込み関数。  
  配列に関係あるのか？  
  * [ ] Join関数。  
    連結。  
  * [ ] split関数。  
    分割。  
  * [ ] 置換。  

* 配列の応用  
  * [ ] 多次元配列。  
    リファレンス。  
  * [x] 配列を複製する方法。  
  * [ ] 配列からスライスを作成する方法。  

* 構造体  
  Perlには[ない](https://perldoc.jp/docs/perl/5.10.0/perlfaq7.pod#How32do32I32declare47create32a32structure63)ようだ。  
  * 構造体の複製  
  * 構造体からのスライス作成  
  * 共用体  
  * 列挙体  

* コレクション  
  * [ ] ハッシュ(`%ハッシュ名`)  
    ハッシュスライス作成  
  * [x] List  
  * [ ] Set  
  * [ ] Map  
  * [ ] Queue  

</details>

### 条件分岐

* 絶対的に勉強する一覧  
  * [x] [単純分岐-"もし"1つ。](#subConditional1)  
    基本構造例：if  
  * [x] [多岐分岐-"もし"2つ以上。](#subConditional1)  
    基本構造例：if〜else if〜  
  * [x] [論理演算子(ド・モルガンの法則)](#subConditional2)  
    * [x] 論理積(`AND`・`&&`)  
    * [x] 論理和(`OR`・`||`)  
  * [x] [比較演算子](#subConditional3)  
    * [x] 等しい(`==`)  
    * [x] 等しくない(`!=`)  
    * [x] より大きい(`>`)  
    * [x] より小さい(`<`)  
    * [x] 以上(`>=`)  
    * [x] 以下(`<=`)  


<a name="subConditional1"></a>
#### 条件分岐
条件式が真(`0`以外)を返した場合のみに処理を実行する。  
数値`0`が偽。それ以外真。  

様式：
`if ( 条件式 ) {・・・}`  

多岐分岐：
```Perl
if ( 条件式A ) {
	処理A;
} elsif ( 条件式B) {
	処理B;
} else {
	処理C;
}
```

以下、使用例。
```Perl
my @hoge = (20210901, 20210902, );
my $bar = 20210901;

if ( $hoge[0] == $bar ) {
	say "等しい。";
}
#	出力結果：等しい。
```

また、`!`を使う場合、条件式の結果を否定して判定する。
`if ( ! 条件式 ) {・・・}`  
※条件式の結果が反転される。  
否定演算子には、`!`以外に、`not`も使えるが、優先順位は低い。  

<a name="subConditional2"></a>
#### 論理演算子(ド・モルガンの法則)
以下の演算子を用いる。
|演算子|意味|備考|
|------|----|----|
|`and`・`&&`|論理積|Perlでは、論理AND演算子と言う。|
|`or`・`||`|論理和|Perlでは、論理OR演算子と言う。|

※`&&`と`||`は、`and`と`or`に比べて優先順位が低い。  


様式：
```Perl
if ( 条件式1 and 条件式2 ) {
	処理A;
	# 条件式1が偽であれば、条件式2を評価せずにelsifに移行する。
	# 条件式1が真であれば、条件式2を評価し、真であれば処理Aを実行する。
	# 　　　　　　　　　　　　　　　　　　　偽であればelsifに移行する。
} elsif ( 条件式3 or 条件式4 ) {
	処理B;
	# 条件式3が真であれば、条件式4を評価せずに処理Bが実行される。
	# 条件式3が偽であれば、条件式4を評価し、真であれば処理Bが実行される。
	# 　　　　　　　　　　　　　　　　　　　偽であればelse文を実行する。
} else {
	処理C;
}
```

<a name="subConditional3"></a>
#### 比較演算子
Perlの[演算子](https://perldoc.jp/docs/perl/perlop.pod)。  
※未定義値`undef`は、比較するときに都合良く変化してくれる。  
例えば、数値と比較する場合0になり、文字列として比較する場合空文字になる。  
そのため、変数を使う前に、宣言と同時に0クリアせずに使える(普通は0クリアなどすべき)。  

比較演算子
|比較方法|**数値**の比較|**文字列**の比較|補足|
|--------|----------|------------|----|
|等号|`==`|`eq`|イコール(equal)|
|不等|`!=`|`ne`|ノットイコール(not equal)|
|より小さい|`<`|`lt`|レスザン(決して…でない：less than)|
|より大きい|`>`|`gt`|グレタザン(より大きい：greater than)|
|以下(等しいもしくは小さい)|`<=`|`le`|(less than or equal to)|
|以上(等しいもしくは大きい)|`>=`|`ge`|(greater than or equal to)|


<a name="subConditional999"></a>
#### 条件分岐での説明しない項目。

<details><summary>今回は勉強を見送る一覧</summary>

* 多岐分岐  
  * if修飾子：処理に対してif文が末尾に付く。  
    例）`say "hello world." if($hoge == "hoge");`  
    if文の条件式が真だった場合に、say処理が走る。  
  * 基本構造例：switch  
    [スイッチ構文](https://perldoc.jp/docs/perl/5.10.0/perlfaq7.pod#How32do32I32create32a32switch32or32case32statement63)はない？  
    v5.10以降であれば使える。  
  * if文の否定：unless  
  * unless修飾子：if修飾子と同じように使える。  

* 関係演算子  
  * [ ] 三項演算子(`?:`)  
    Perlでは、条件演算子のこと。  
  * [ ] 論理演算子  
    * [ ] 排他的論理和(`XOR`・`NOT OR`・`^`)  
    * [ ] 否定(`NOT`・`!`・`~`)  
    * [ ] ビット演算子(`&`・`|`)  
    * [ ] defined-or演算子(以下説明)  

|論理演算子|意味|備考|
|----------|----|----|
|`defined-or`|`||(論理和)`演算子の改良版|定義された値の評価方法の改良|

|比較方法|数値の比較|文字列の比較|補足|
|--------|----------|------------|----|
|比較|`<=>`|`cmp`|左右対象・左辺が右辺より小さい・左辺が右辺より大きい|

* 特殊演算子  
  * `chomp演算子`  
    改行を削除するだけの演算子。  

* 演算子の優先順位  

* 他の話題例  
  * [ ] 変数の比較  
    やっているよね。  
  * [ ] 配列の比較  

* ジャンプ  
  * [ ] goto文  
    [ラベルジャンプ](#subRepetition5)は説明したけど。  

</details>

### 繰り返し

* 絶対的に勉強する一覧  
  * [x] [指定回数条件での繰り返し](#subRepetition1)  
    [x] [基本構造例：for( 条件式 )](#subRepetition2)  
    [x] [基本構造例：拡張for命令(`in`)](#subRepetition3)  
    [x] [`for`の入れ子。](#subRepetition4)  
  * [ジャンプ処理](#subRepetition5)  
    * [x] break  
      Perlでは`last`  
    * [x] continue  
      Perlでは`next`  
  * [x] [真偽条件での繰り返し](#subRepetition6)  
    [x] [基本構造例：while( 条件式 )](#subRepetition6)  
    [x] [無限ループ](#subRepetition7)  


<a name="subRepetition1"></a>
#### 繰り返し
様式：
基本的には、[拡張for命令](#subRepetition3)と同等。  
`for( [リスト] ) { ・・・ }`  

リスト例）
`1..10`  
使用例）
`for( 1..10 )`  
配列も可）
`for( @配列名 )`  

これで1から10までのリストが作られ、その間繰り返しが発生する。  

<a name="subRepetition2"></a>
##### 指定回数条件での繰り返し：for( 条件式 )
様式：
`for ( 初期化; 条件式; 増減分) { ・・・ }`  
※増減分は、初期化する変数をどうするか決める場所として使うのが一般的。  

<a name="subRepetition3"></a>
##### 指定回数条件での繰り返し：拡張for命令
様式：
`foreach my $変数名 ( リスト ) { ・・・ }`  
`foreach ( リスト ) { ・・・ }`  

※リスト部分には、(上記配列で勉強外だが)sort演算子やreverse演算子なども使える。  
例）`foreach my $変数名 ( sort(リスト) ) { ・・・ }`  
当たり前だが、foreach前にsort演算子が実行され、実行後にforeachが実行されるため、sort演算子の実行は最初の1回だけと言うことになる。  

<a name="subRepetition4"></a>
#### `for`の入れ子。
やりたければ勝手にすれば良い。
```
foreach my $変数名1 ( リスト ) {
	foreach my $変数名2 ( リスト ) {
		・・・
	}
}
```

<a name="subRepetition5"></a>
#### ジャンプ処理
繰り返しの制御として、以下を使う。  

* last  
  while処理を抜け出る。  
  ※他のプログラミング言語でいえば、`break`文。  
  使える繰り返し：`for`・`foreach`・`while`・`until`・裸のブロック。  
* next  
  while処理の先頭に戻り、条件式を評価する。  
  ※他のプログラミング言語でいえば、`continue`文。  
  使える繰り返し：`for`・`foreach`・`while`・`until`・裸のブロック。  


<a name="subRepetition6"></a>
#### 真偽条件での繰り返し：while( 条件式 )
様式：
`while ( 条件式 ) { ・・・ }`  


##### 要素番号と要素の取り出し：`each`演算子
様式：
`while( ( $添え字番号用変数名, $添え字要素用変数名 ) = each @配列名) { ・・・ }`  

```Perl
my @hoge = (20210903, 20210904, );

while( ( my $index, my $value ) = each @hoge ) {
	say "$index, $value";	# 0, 20210903
							# 1, 20210904
}
```
これはめちゃくちゃ便利。  
昔は出来なかった。  
そして、[Go](https://golang.org/doc/effective_go#for)の`for...range`ではできていたため、他の言語でも出来て欲しいと思っていた。  

<a name="subRepetition7"></a>
#### 無限ループ
様式：
`while ( ) { ・・・ }`  
`for (;;) { ・・・ }`  
条件式の部分を空にすれば無限ループになる。  

余談：
`for (i=0;;i++) `の場合、無限ループだが、繰返し回数は得られる。  

<a name="subRepetition999"></a>
#### 繰り返しでの説明しない項目。

<details><summary>今回は勉強を見送る一覧</summary>

* [ ] 真偽条件での繰り返し  
  基本構造例：do〜while( 条件式 )  
  条件否定：do〜until ( 条件式 )  
  * [ ] until修飾子  
    上記のdoと同じ？  
  * [ ] while修飾子  
    上記のdoと同じ？  

* その他の繰り返し。  
  * [ ] 文字列の繰り返し。  
    例）`say "-" x 30;`
    使ってはいるが、説明していないからな。  
  * [ ] grepによる繰り返し。  
    リストからgrepによる取り出し。  
  * [ ] mapによる繰り返し。  
    リスト要素の変換。  

* ジャンプ処理  
  * [ ] redo  
    nextのようなものだが、条件式を評価せずにwhile文の頭に戻る(要は、現在の条件で再実行)。  
    使える繰り返し：`for`・`foreach`・`while`・`until`・裸のブロック。  

</details>

### 関数
Perlでは、サブルーチンというようだ。  

* 絶対的に勉強する一覧  
  * [x] 使い回せるようにまとめること。  
    * [x] [引数と戻り値の組み合わせ。](#subFunction1)  
      Perlでは、引数チェックが出来なかった。  
      そして、戻り値有無も変更できない。  
      [x] 引数無し-戻り値無し  
      [x] 引数あり-戻り値無し  
      [x] 引数無し-戻り値あり  
      [x] 引数あり-戻り値あり  
    * [スコープ](#subFunction2)  
      [x] グローバルスコープ変数  
      [ ] ローカルスコープ変数  
      私の環境ではエラーになった。  

<a name="subFunction1"></a>
#### 関数
様式：
```Perl
sub 関数名 {
	処理;
}
```

[呼び出し方法](https://perldoc.jp/docs/perl/5.10.0/perlfaq7.pod#Whats32the32difference32between32calling32a32function32as32foo32and32foo40-41-63)：
`&関数名();`  
※関数呼び出し時にはアンパサンド(`&`)を関数名前に付けるが、不要な場合もある。  

呼び出し時に`&`を付けずに呼び出せる場合で、コードの意味が変わらないならば括弧を付けずに関数を呼び出せる。
`my 戻り値受け取り変数名 = 関数名 引数1, 引数2;`  
`&`が必要な場合は、Perlの組み込み関数と同名の場合。  

引数の有無(チェック)。  
関数呼び出し時に、引数として値を渡した場合、関数では必ず受け取ることになる(使うかどうかは別だが)。  
関数内では、`@_`の配列で受け取る。  

戻り値の有無。
```Perl
sub 関数名 {
	処理;
}
```
この関数は、最後の処理が戻り値になる。  
逆に言えば、戻り値をなくすことはできない。  

また、return演算子を使うことで、戻り値を明記させることもできる。
```Perl
sub 関数名 {
	処理;
	return 戻り値;
}
```
この演算子を付けた場合、処理のどこだろうが、必ず戻り値として意図した戻し方ができる。  
明記しなければ、最後の処理に限定されてしまい、バグを埋め込むことになる。  

* 戻り値の種類  
  * 変数コンテキスト  
    正式名は、スカラコンテキスト。  
  * 配列コンテキスト  
    正式名は、リストコンテキスト。  

* スカラーコンテキスト(長音記号不要？)。  
  これは、普通に変数1つを戻り値扱いするため、気にすることはないだろう。  

* リストコンテキスト  
  これは、配列を戻すため、呼び出し側は注意する必要がある。  
  * 例1）`my $ret = &funcHoge();`  
  これは、配列の要素数を戻すことになっている。  
  そうなの？  
  そうなんだろうけど・・・。  
  * 例2）`my ($ret) = &funcHoge();`  
  これは、配列の1つ目の値を変数に代入している。  


※関数原型(関数プロトタイプ)宣言不要。  

<a name="subFunction2"></a>
#### [スコープ](https://perldoc.jp/docs/perl/5.10.0/perlfaq7.pod#Whats32the32difference32between32dynamic32and32lexical32-40static41-32scoping63-32Between32local40-41-32and32my40-41-63)
関数内だけで永続的な変数を使う場合は、`state`での変数宣言をする(v5.10以降)。  
`state 変数名;`  

ただし、リストコンテキスト(右辺のこと)で初期化することは出来ない。  
`state @配列名 = qw(値1, 値2);`  
しかし、実際はできるんだが・・・書籍の説明が古い？  
v5.24ではできないが、最新版では出来るのか。  

* ローカル変数。  
大事な[local](https://perldoc.jp/func/local)を使えず、ずっとエラーになる。  
様式：
`local 変数名;`  
この形式で[宣言](https://perldoc.jp/docs/perl/5.16.1/perlsub.pod#Temporary32Values32via32local40-41)できるはずなのだが・・・。  
そもそも`my`を使えば良いだけなので、全く困らない(大事発言はどこへやら)。  

<a name="subFunction999"></a>
#### 関数での説明しない項目。

<details><summary>今回は勉強を見送る一覧</summary>

そもそもPythonは、普通に必要？  
しかし、アルゴリズムの勉強には不要なのだろう。  

* 標準的な関数  
  * [x] 可変長引数  
    Perlでは常に可変長になる。  
  * [ ] 再帰関数  
    今更だが、アルゴリズムの勉強に使うのでは？  
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

Perlでこれらがあるのか全く分からず。  
Perlでオブジェクト指向開発ができるだけでなく、そのやり方の本も出版されているぐらいだからあるのだろう。  
それを言えば、[C言語](https://www.shoeisha.co.jp/book/detail/9784798121130)でもオブジェクト指向プログラミングの書籍はあるからな。  

</details>

</details>

#### ☆アルゴリズムの勉強チャプタ概要☆
<a name="algorithmTextbookLearnedinPython"></a>
<a name="algorithmTextbookLearnedinPythonChapter2"></a>
* [Chapter2 プログラミングの力を養う](#developProgrammingSkillsOverviewChapter2)  
  基礎的なプログラミングの力を養っていく。  
  例えば、配列利用の関数定義・繰り返し・再帰関数・条件分岐など。  
  以下、各項目(目次)。  
  [x] [平均値を求める。](#findTheAverageValueChapter2)  
  [x] [1からnまで足し合わせる。](#addFrom1tonChapter2)  
  [x] [九九の式を出力する。](#outputTheMultiplicationTableChapter2)  
  [x] [素数を求める。](#findAPrimeNumberChapter2)  
  [x] [nの階乗を求める。](#findTheFactorialOfNChapter2)  
  [x] [エラトステネスの篩](#eratosthenesSieveChapter2)  
  [ ] [n進法を理解する。](#understandnAryNotationChapter2)  
<a name="algorithmTextbookLearnedinPythonChapter3"></a>
* [Chapter3 データ構造を学ぶ](#learnDataStructuresOverviewChapter3)  
  今までに勉強した配列(リスト)を用いた発展を遂げる。  
  ※今回利用するリストはアルゴリズム(概念)用語であり、Pythonで用いているリスト(配列)という用語とは別物。  
  ※例外処理(`try〜except〜finally`)をの説明をしている(いずれ基礎知識として勉強に組み込む必要がある？)。  
  以下、各項目(目次)。  
  [ ] [スタック](#stackChapter3)  
  [ ] [キュー](#queueChapter3)  
  [ ] [リスト](#listChapter3)  
  [ ] [木](#woodChapter3)  
  [ ] [グラフ](#graphChapter3)  
  [ ] [データを保存する。](#saveTheDataChapter3)  
<a name="algorithmTextbookLearnedinPythonChapter4"></a>
* [Chapter4 サーチ](#searchOverviewChapter4)  
  複数データから目的地を探し出すこと。  
  ※有名な探索アルゴリズムのみに限定している。  
  以下、各項目(目次)。  
  [ ] [線形探索](#linearSearchChapter4)  
  [ ] [二分探索](#binarySearchChapter4)  
  [ ] [木探索](#treeExplorationChapter4)  
  [ ] [計算量について知る](#knowAboutComputationalComplexityChapter4)  
  [ ] [ランダウの記号](#landauSignChapter4)  
  [ ] [数当てゲーム](#numberGuessingGameChapter4)  
  [ ] [ビット演算を学ぶ](#learnBitwiseOperationsChapter4)  
<a name="algorithmTextbookLearnedinPythonChapter5"></a>
* [Chapter5 ソート](#sortOverviewChapter5)  
  一定の規則に従い並び替えること。  
  ※有名な並べ替えアルゴリズムのみに限定している。  
  以下、各項目(目次)。  
  [ ] [選択ソート](#selectionSortChapter5)  
  [ ] [バブルソート](#bubbleSortChapter5)  
  [ ] [挿入ソート](#insertionSortChapter5)  
  [ ] [クイックソート](#quickSortChapter5)  
  [ ] [マージソート](#mergeSortChapter5)  
  [ ] [ヒープソート](#heapsortChapter5)  
  [ ] [クイックソートの再起の過程を出力する。](#outputTheProcessOfQuicksortRecurrenceChapter5)  
  [ ] [再帰関数を用いたマージソート。](#mergeSortUsingARecursiveFunctionChapter5)  
  [ ] [プログラミング言語用のソート・ヒープ・キュー関数の使い方。](#howToUsePythonSortInstructionsAndHeapqModuleChapter5)  
  [ ] [ソートの計算量と計算時間。](#sortCalculationComplexityAndCalculationTimeChapter5)  
<a name="algorithmTextbookLearnedinPythonChapter6"></a>
* [Chapter6 ハッシュ](#hashOverviewChapter6)  
  ハッシュとは、データから算出した小さな値のこと。  
  今回は、そのハッシュとしての値を算出する方法を勉強する。  
  以下、各項目(目次)。  
  [ ] [ハッシュとは。](#whatIsAHashChapter6)  
  [ ] [ハッシュ関数](#hashFunctionChapter6)  
  [ ] [ハッシュテーブル](#hashTableChapter6)  
  [ ] [衝突を回避する。](#avoidCollisionsChapter6)  
  [ ] [暗号学的ハッシュ関数](#cryptographicHashFunctionChapter6)  
<a name="algorithmTextbookLearnedinPythonChapter7"></a>
* [Chapter7 さまざまなアルゴリズムを学ぶ](#learnVariousAlgorithmsOverviewChapter7)  
  アルゴリズムを勉強する上で必ず関わるアルゴリズムになる。  
  むしろ、ここまで勉強できてアルゴリズムを勉強したと言えるのではないだろうか。  
  以下、各項目(目次)。  
  [ ] [ユークリッドの互除法](#euclideanAlgorithmChapter7)  
  [ ] [文字列探索](#stringSearchChapter7)  
  [ ] [アルゴリズムを理解するヒント(処理の過程の出力)。](#tipsForUnderstandingTheAlgorithmChapter7)  
<a name="algorithmTextbookLearnedinPythonChapter8"></a>
* [Chapter8 アルゴリズムを見える化する](#visualizeTheAlgorithmOverviewChapter8)  
  今回のアルゴリズムを勉強することで、アルゴリズム(もしくはデータ)を可視化する方法を勉強できる。  
  以下、各項目(目次)。  
  [ ] [n次関数の曲線を描く。](#drawACurveOfTheNthOrderFunctionChapter8)  
  [ ] [フラクタル図形を描く。](#drawAFractalFigureChapter8)  
  [ ] [迷路を解く過程を描く。](#drawTheProcessOfSolvingTheMazeChapter8)  
  [ ] [アルゴリズムを使い分ける。](#useDifferentAlgorithmsChapter8)  
  [ ] [マンデルブロー集合を描こう。](#letsDrawTheMandelbrotSetChapter8)  

<a name="developProgrammingSkillsOverviewChapter2"></a>
### プログラミングの力を養う
基礎的なプログラミングの力を養っていく。  

* 各項目。  
  * [平均値を求める。](#findTheAverageValueChapter2)  
  * [1からnまで足し合わせる。](#addFrom1tonChapter2)  
  * [九九の式を出力する。](#outputTheMultiplicationTableChapter2)  
  * [素数を求める。](#findAPrimeNumberChapter2)  
  * [nの階乗を求める。](#findTheFactorialOfNChapter2)  
  * [エラトステネスの篩](#eratosthenesSieveChapter2)  
  * [n進法を理解する。](#understandnAryNotationChapter2)  

<a name="findTheAverageValueChapter2"></a>
#### 平均値を求める。
勉強内容はPythonと基本は同じ。  
それをPerl用に移植するだけのこと。  

* ルールもPythonと同じ。  
  * 点数を配列で定義する。  
    `my @score = (70, 98, 92, 88, 64);`  
  * `for`を用いる。  

```Perl
# 以下の配列に入っている数字を使い、合計点及び平均点を求める。
my @score = (70, 98, 92, 88, 64);

my $total;	# この変数に合計点を入れる。
for ( @score ) {
	# for my $value ( @score ) {	←☆取り出した値を用意した変数に代入してもいい(むしろそうしたほうが処理速度は上がる)。
	# 以下、合算。
	$total += $_;
}
# 以下、平均点を求める(合計÷個数)。
#	my $count = @score;	←☆配列の個数を取り出して使ってもいい。
my $average = $total / @score;

say "合計点：$total";	# 合計点：412
say "平均点：$average";	# 平均点：82.4
```
Pythonより作りやすい言語ではある。  
しかし、暗黙的な`$_`を多用した場合、保守できないのがPerlなんだよな・・・。  

<a name="addFrom1tonChapter2"></a>
#### 1からnまで足し合わせる。
勉強内容はPythonと基本は同じ。  
それをPerl用に移植するだけのこと。  

<details><summary>基本内容</summary>

* ルールもPythonと同じだが、関数は定義する。  
  * `for`を用いる。  
  * ~~関数は定義しない~~。  

```Perl
sub addup1() {
	my $total;	# この変数に合計点を入れる。
	for ( 1..10 ) {
		# 以下、合算。
		$total += $_;
	}

	return $total;
}
say &addup1();	# 55
```

* ルール2  
  * nまでの値を関数の引数で受け取る。  
  * 関数内で合算した結果をreturnで返す。  
    あぁルール1でやったことだよ・・・。  

```Perl
sub addup2() {
	my ($argnum) = @_;
	my $start = 1;
	my $total;
	if ( $argnum =~ /^[0-9]+$/ ) {
		;
	}
	else {
		$start = $argnum = 0;
	}
	for ( $start..$argnum ) {
		$total += $_;
	}

	return $total;
}

say &addup2();	# 0
say &addup2(10);	# 55
say &addup2('a');	# 0
```

* ルール3  
  * 工夫して計算する。  
  * (初めの数+終わりの数)*(足し合わせる個数/2)  

```Perl
sub addup3() {
	my ($argnum) = @_;
	my $start = 1;
	if ( $argnum =~ /^[0-9]+$/ ) {
		;
	}
	else {
		$start = $argnum = 0;
	}
	my $total = ($start+$argnum)*$argnum/2;

	return $total;
}

say &addup3();	# 0
say &addup3(10);	# 55
say &addup3('a');	# 0
say &addup3(10, 20);	# 55
```

</details>

* 作業ルール。  
  * 「カール・フリードリヒ・ガウス」に倣え。  
  * 開始の数字 ＜ 終了の数字。  
    要は、nからmまで足し合わせる。  
    * 開始の数字を任意にする。  
    * 終了の数字を任意にする。  

```Perl
sub AddupGauss() {
	my ($start, $end) = @_;
	if ( scalar(@_) == 2 ) {
		# 引数が2つある場合の代入方法。
		($start, $end) = @_;
	}
	elsif ( scalar(@_) == 1 ) {
		($end) = @_;
		$start = 1;
	}
	if ( $start =~ /^[0-9]+$/ && $end =~ /^[0-9]+$/ ) {
		;
	}
	else {
		$start = $end = 0;
	}
	my $total = ($start+$end)*$end/2;

	return $total;
}

say &AddupGauss();	# 0
say &AddupGauss(10);	# 55
say &AddupGauss('a');	# 0
say &AddupGauss(1, 10);	# 55
say &AddupGauss(1, 100);	# 5050
```

<a name="outputTheMultiplicationTableChapter2"></a>
#### 九九の式を出力する。
Pythonでやったように、九九の式を出すのではなく、九九表を出すことにする。  
ルールはPythonと同じ。  

* 作業ルール。  
  * 二重ループを使う。  

以下、いつも通りの九九表出力。
```Perl
sub kukuTable() {
	for my $ii ( 1..9 ) {
		for my $jj ( 1..9 ) {
			printf("%3d", $ii * $jj);
		}
		say;
	}

	return 0;
}

&kukuTable();
```

```text
  1  2  3  4  5  6  7  8  9
  2  4  6  8 10 12 14 16 18
  3  6  9 12 15 18 21 24 27
  4  8 12 16 20 24 28 32 36
  5 10 15 20 25 30 35 40 45
  6 12 18 24 30 36 42 48 54
  7 14 21 28 35 42 49 56 63
  8 16 24 32 40 48 56 64 72
  9 18 27 36 45 54 63 72 81
```
九九表完成。

今回`sprintf`と言う今まで勉強していない関数を使ったよ。  
何をしているのやら。  

<a name="findAPrimeNumberChapter2"></a>
#### 素数を求める。
素数とは、1とその数以外に約数を持たない2以上の自然数のこと。  

Pythonに倣い、試す数は**2〜2分のn**までの数で割ることを調べる方法をとる。  
例えば、10を調べる場合、その半分より大きい数(**6**・**7**・**8**・**9**)では、10を割ることが出来ない。  
そのことを利用した方法で素数を求める。  
後日、[エラトステネスの篩](#eratosthenesSieveChapter2)を使った効率のいいアルゴリズムを勉強する。  

* 素数を求めるルール  
  * 二重ループを使う。  
  * 2から2分のnまでの数で割る。  
    ※それらの数で割り切れなければ素数。  

```perl
sub prime() {
	for my $ii ( 2..100 ) {
		# 商を求める演算子の代わりに、小数点部分を切り落とす処理としてintにキャストする。
		my $hh = int($ii / 2);
		# 真偽値はないため、普通に文字列を使う。
		my $ff = 'True';
		for my $jj ( 2..$hh ) {
			if ( ($ii % $jj) == 0 ) {
				# 真偽値がないため、0をFalseとして扱う。
				$ff = 0;
				last;
			}
		}
		if ($ff eq 'True') {
			print($ii . ",");
		}
	}

	return 0;
}

&prime();
say;
```

以下、実行結果。
```terminal
2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,
```
また、この程度の短いプログラムを作るのに30分以上掛かってしまったよ。  
[比較演算子](#subConditional3)の扱いにてんやわんやする。  

<a name="findTheFactorialOfNChapter2"></a>
#### nの階乗を求める。
**階乗とは**
1からnまでの全ての整数の積をnの階乗という。  
**再帰関数**
関数内から自身の関数を呼び出すことを再帰処理という。
また、その呼び出す仕組みの関数を再帰関数という。  

以下、再帰関数例）
```perl
sub factorial() {
	my $word = shift @_;
	my $num = length($word);
	if ( $num > 0 ) {
		factorial(substr($word, 0, $num-1));
	}
	printf("再帰関数%d回目の実行及び出力内容：%s\n", $num, $word);
	return 0
}
&factorial("hoge");
```

以下、出力結果。
```terminal
再帰関数0回目の実行及び出力内容：
再帰関数1回目の実行及び出力内容：h
再帰関数2回目の実行及び出力内容：ho
再帰関数3回目の実行及び出力内容：hog
再帰関数4回目の実行及び出力内容：hoge
```

* ルール1  
  再帰関数を使わない。  
  * 関数定義は行わない(行う)。  
  * `for`を使う。  

以下、ルール1のプログラム。
```perl
sub factorial2() {
	my $arg = shift @_;
	my $sum = 1;
	if ( $arg == 0 ) {
		$arg = 0;
	}
	for ( my $ii = $arg; $ii > 0; $ii-- ) {
		$sum = $sum * $ii;
	}
	say "${arg}! =" . $sum;
}

&factorial2(10);
```

以下、実行結果。
```terminal
10! =3628800
```

* ルール2  
  再帰関数を使う。  
  * 再帰関数の定義ルール  
    * `n = 0`
      **n! = 1**  
    * `n > 0`
      **n! = n * (n-1) * (n-2) * ・・・ * 2 * 1**
      nから1引いた数を掛け、さらに1づつ引き続けながらnが1にまるまで続ける。  

以下、20の階乗の結果のみを求めている。
```perl
sub factorial() {
	my $arg = shift @_;
	my $ret;
	if ( $arg == 0 ) {
		$ret = 1;
	}
	else {
		$ret = $arg * &factorial($arg-1);
	}

	return $ret
}

say &factorial(20);
```

以下、実行結果。
```terminal
2432902008176640000
```
Python言語のあとに着手したが、混乱する。  
しかし、すぐに取り組まなければ、そもそものアルゴリズムを忘れてしまう。  
忘れるぐらいだから理解していないとも言えるのだが・・・。  


<a name="eratosthenesSieveChapter2"></a>
#### エラトステネスの篩
効率よく素数を求めることができるアルゴリズムのこと。  
書籍のページが見にくい。短いソースコードなのだからページをまたがずに記載して欲しい。  


<details><summary>Perlプログラム</summary>

```perl
sub eratosthenes_sieve() {
	my ($eratosthenes, @argprime) = @_;

	for ( my $ii = ($eratosthenes + $eratosthenes); $ii <= $#argprime; $ii += $eratosthenes ) {
		$argprime[$ii] = "false";
	}
	say "$eratosthenesの倍数をふるい落とした。";
	&eratosthenes_table( @argprime );
	while ( $eratosthenes < $#argprime ) {
		$eratosthenes++;
		if ( $argprime[$eratosthenes] eq "true" ) {
			last;
		}
	}
	return ($eratosthenes, @argprime);
}

sub eratosthenes_table() {
	my @argprime = @_;
	my $outputTable = "";

	my $forvaluemax = @argprime;
	for my $ii ( 0..$#argprime ) {
		if ( $argprime[$ii] eq "true" ) {
			$outputTable .= sprintf("%2s, ", $ii);
		}
		else {
			$outputTable .= sprintf("／, ");
		}
		if ( ($ii % 10) == 9 ) {
			$outputTable .= sprintf("\n");
		}
	}
	say "$outputTable";
}

sub prime_eratosthenes() {
	my @prime;	# 配列宣言
	$prime[99] = 0;
	foreach my $ii ( 2..$#prime ) {
		$prime[$ii] = "true";	# 要素を真にする(0以外もしくは空文字以外を代入)。
	}

	# ふるい落とし始める最初の値を用意する。
	my $eratosthenes = 2;
	&eratosthenes_table( @prime );
	while ( $eratosthenes < 10 ) {	# √99 まで行う。
		($eratosthenes, @prime) = &eratosthenes_sieve( $eratosthenes, @prime );
	}
}
&prime_eratosthenes();
```

<details><summary>Perlプログラムの出力結果</summary>

以下、出力結果。
```teext
エラトステネスの篩
／, ／,  2,  3,  4,  5,  6,  7,  8,  9,
10, 11, 12, 13, 14, 15, 16, 17, 18, 19,
20, 21, 22, 23, 24, 25, 26, 27, 28, 29,
30, 31, 32, 33, 34, 35, 36, 37, 38, 39,
40, 41, 42, 43, 44, 45, 46, 47, 48, 49,
50, 51, 52, 53, 54, 55, 56, 57, 58, 59,
60, 61, 62, 63, 64, 65, 66, 67, 68, 69,
70, 71, 72, 73, 74, 75, 76, 77, 78, 79,
80, 81, 82, 83, 84, 85, 86, 87, 88, 89,
90, 91, 92, 93, 94, 95, 96, 97, 98, 99,

2の倍数をふるい落とした。
／, ／,  2,  3, ／,  5, ／,  7, ／,  9,
／, 11, ／, 13, ／, 15, ／, 17, ／, 19,
／, 21, ／, 23, ／, 25, ／, 27, ／, 29,
／, 31, ／, 33, ／, 35, ／, 37, ／, 39,
／, 41, ／, 43, ／, 45, ／, 47, ／, 49,
／, 51, ／, 53, ／, 55, ／, 57, ／, 59,
／, 61, ／, 63, ／, 65, ／, 67, ／, 69,
／, 71, ／, 73, ／, 75, ／, 77, ／, 79,
／, 81, ／, 83, ／, 85, ／, 87, ／, 89,
／, 91, ／, 93, ／, 95, ／, 97, ／, 99,

3の倍数をふるい落とした。
／, ／,  2,  3, ／,  5, ／,  7, ／, ／,
／, 11, ／, 13, ／, ／, ／, 17, ／, 19,
／, ／, ／, 23, ／, 25, ／, ／, ／, 29,
／, 31, ／, ／, ／, 35, ／, 37, ／, ／,
／, 41, ／, 43, ／, ／, ／, 47, ／, 49,
／, ／, ／, 53, ／, 55, ／, ／, ／, 59,
／, 61, ／, ／, ／, 65, ／, 67, ／, ／,
／, 71, ／, 73, ／, ／, ／, 77, ／, 79,
／, ／, ／, 83, ／, 85, ／, ／, ／, 89,
／, 91, ／, ／, ／, 95, ／, 97, ／, ／,

5の倍数をふるい落とした。
／, ／,  2,  3, ／,  5, ／,  7, ／, ／,
／, 11, ／, 13, ／, ／, ／, 17, ／, 19,
／, ／, ／, 23, ／, ／, ／, ／, ／, 29,
／, 31, ／, ／, ／, ／, ／, 37, ／, ／,
／, 41, ／, 43, ／, ／, ／, 47, ／, 49,
／, ／, ／, 53, ／, ／, ／, ／, ／, 59,
／, 61, ／, ／, ／, ／, ／, 67, ／, ／,
／, 71, ／, 73, ／, ／, ／, 77, ／, 79,
／, ／, ／, 83, ／, ／, ／, ／, ／, 89,
／, 91, ／, ／, ／, ／, ／, 97, ／, ／,

7の倍数をふるい落とした。
／, ／,  2,  3, ／,  5, ／,  7, ／, ／,
／, 11, ／, 13, ／, ／, ／, 17, ／, 19,
／, ／, ／, 23, ／, ／, ／, ／, ／, 29,
／, 31, ／, ／, ／, ／, ／, 37, ／, ／,
／, 41, ／, 43, ／, ／, ／, 47, ／, ／,
／, ／, ／, 53, ／, ／, ／, ／, ／, 59,
／, 61, ／, ／, ／, ／, ／, 67, ／, ／,
／, 71, ／, 73, ／, ／, ／, ／, ／, 79,
／, ／, ／, 83, ／, ／, ／, ／, ／, 89,
／, ／, ／, ／, ／, ／, ／, 97, ／, ／,

以上。
```
※見にくいため、末尾の半角スペースを勝手に削除した(Perl側で削除する方法はある？)。

</details>

</details>

疲れる。  
他のプログラミング言語に置き換えるのは無謀だったかも。  


<a name="understandnAryNotationChapter2"></a>
#### n進法を理解する。

<a name="learnDataStructuresOverviewChapter3"></a>
### データ構造を学ぶ

* 各項目。  
  * [スタック](#stackChapter3)  
  * [キュー](#queueChapter3)  
  * [リスト](#listChapter3)  
  * [木](#woodChapter3)  
  * [グラフ](#graphChapter3)  
  * [データを保存する。](#saveTheDataChapter3)  

<a name="stackChapter3"></a>
#### スタック

<a name="queueChapter3"></a>
#### キュー

<a name="listChapter3"></a>
#### リスト

<a name="woodChapter3"></a>
#### 木

<a name="graphChapter3"></a>
#### グラフ

<a name="saveTheDataChapter3"></a>
#### データを保存する。

<a name="searchOverviewChapter4"></a>
### サーチ

* 各項目。  
  * [線形探索](#linearSearchChapter4)  
  * [二分探索](#binarySearchChapter4)  
  * [木探索](#treeExplorationChapter4)  
  * [計算量について知る](#knowAboutComputationalComplexityChapter4)  
  * [ランダウの記号](#landauSignChapter4)  
  * [数当てゲーム](#numberGuessingGameChapter4)  
  * [ビット演算を学ぶ](#learnBitwiseOperationsChapter4)  

<a name="linearSearchChapter4"></a>
#### 線形探索

<a name="binarySearchChapter4"></a>
#### 二分探索

<a name="treeExplorationChapter4"></a>
#### 木探索

<a name="knowAboutComputationalComplexityChapter4"></a>
#### 計算量について知る

<a name="landauSignChapter4"></a>
#### ランダウの記号

<a name="numberGuessingGameChapter4"></a>
#### 数当てゲーム

<a name="learnBitwiseOperationsChapter4"></a>
#### ビット演算を学ぶ

<a name="sortOverviewChapter5"></a>
### ソート

* 各項目。  
  * [選択ソート](#selectionSortChapter5)  
  * [バブルソート](#bubbleSortChapter5)  
  * [挿入ソート](#insertionSortChapter5)  
  * [クイックソート](#quickSortChapter5)  
  * [マージソート](#mergeSortChapter5)  
  * [ヒープソート](#heapsortChapter5)  
  * [クイックソートの再起の過程を出力する。](#outputTheProcessOfQuicksortRecurrenceChapter5)  
  * [再帰関数を用いたマージソート。](#mergeSortUsingARecursiveFunctionChapter5)  
  * [プログラミング言語用のソート・ヒープ・キュー関数の使い方。](#howToUsePythonSortInstructionsAndHeapqModuleChapter5)  
  * [ソートの計算量と計算時間。](#sortCalculationComplexityAndCalculationTimeChapter5)  

<a name="selectionSortChapter5"></a>
#### 選択ソート

<a name="bubbleSortChapter5"></a>
#### バブルソート

<a name="insertionSortChapter5"></a>
#### 挿入ソート

<a name="quickSortChapter5"></a>
#### クイックソート

<a name="mergeSortChapter5"></a>
#### マージソート

<a name="heapsortChapter5"></a>
#### ヒープソート

<a name="outputTheProcessOfQuicksortRecurrenceChapter5"></a>
#### クイックソートの再起の過程を出力する。

<a name="mergeSortUsingARecursiveFunctionChapter5"></a>
#### 再帰関数を用いたマージソート。

<a name="howToUsePythonSortInstructionsAndHeapqModuleChapter5"></a>
#### プログラミング言語用のソート・ヒープ・キュー関数の使い方。
Python限定にしたくなかったが、他のプログラミング言語にはない可能性がある。  
[ヒープ](https://docs.microsoft.com/ja-jp/windows/win32/memory/heap-functions)と言うのはアルゴリズムより、コンピュータでの概念のほうが一般的なのかな。  
[C言語](https://code-reference.com/c/stdlib.h)ですら[クイックソート](https://ja.cppreference.com/w/c/algorithm)があるのだから他のプログラミング言語にはあってしかるべき。  

<a name="sortCalculationComplexityAndCalculationTimeChapter5"></a>
#### ソートの計算量と計算時間。

<a name="hashOverviewChapter6"></a>
### ハッシュ

* 各項目。  
  * [ハッシュとは。](#whatIsAHashChapter6)  
  * [ハッシュ関数](#hashFunctionChapter6)  
  * [ハッシュテーブル](#hashTableChapter6)  
  * [衝突を回避する。](#avoidCollisionsChapter6)  
  * [暗号学的ハッシュ関数](#cryptographicHashFunctionChapter6)  

<a name="whatIsAHashChapter6"></a>
#### ハッシュとは。
調べればすぐに出てくる。  
そもそもプログラマーがハッシュを知らないというのはあり得ない。  
[Git](https://git-scm.com/book/ja/v2/使い始める-Gitの基本)でも[履歴閲覧](https://docs.github.com/ja/github/searching-for-information-on-github/searching-on-github/searching-commits)に[コミットハッシュ値](https://git-scm.com/book/ja/v2/Git-の基本-コミット履歴の閲覧)を使う。  

<a name="hashFunctionChapter6"></a>
#### ハッシュ関数

<a name="hashTableChapter6"></a>
#### ハッシュテーブル

<a name="avoidCollisionsChapter6"></a>
#### 衝突を回避する。

<a name="cryptographicHashFunctionChapter6"></a>
#### 暗号学的ハッシュ関数

<a name="learnVariousAlgorithmsOverviewChapter7"></a>
### さまざまなアルゴリズムを学ぶ

* 各項目。  
  * [ユークリッドの互除法](#euclideanAlgorithmChapter7)  
  * [文字列探索](#stringSearchChapter7)  
  * [アルゴリズムを理解するヒント(処理の過程の出力)。](#tipsForUnderstandingTheAlgorithmChapter7)  

<a name="euclideanAlgorithmChapter7"></a>
#### ユークリッドの互除法

<a name="stringSearchChapter7"></a>
#### 文字列探索

<a name="tipsForUnderstandingTheAlgorithmChapter7"></a>
#### アルゴリズムを理解するヒント(処理の過程の出力)。

<a name="visualizeTheAlgorithmOverviewChapter8"></a>
### アルゴリズムを見える化する

* 各項目。  
  * [n次関数の曲線を描く。](#drawACurveOfTheNthOrderFunctionChapter8)  
  * [フラクタル図形を描く。](#drawAFractalFigureChapter8)  
  * [迷路を解く過程を描く。](#drawTheProcessOfSolvingTheMazeChapter8)  
  * [アルゴリズムを使い分ける。](#useDifferentAlgorithmsChapter8)  
  * [マンデルブロー集合を描こう。](#letsDrawTheMandelbrotSetChapter8)  

<a name="drawACurveOfTheNthOrderFunctionChapter8"></a>
#### n次関数の曲線を描く。

<a name="drawAFractalFigureChapter8"></a>
#### フラクタル図形を描く。

<a name="drawTheProcessOfSolvingTheMazeChapter8"></a>
#### 迷路を解く過程を描く。

<a name="useDifferentAlgorithmsChapter8"></a>
#### アルゴリズムを使い分ける。

<a name="letsDrawTheMandelbrotSetChapter8"></a>
#### マンデルブロー集合を描こう。

<a name="practicaluseReference"></a>
<details><summary>応用知識-リファレンス</summary>

### [リファレンス](https://perldoc.jp/docs/perl/5.8.8/perlref.pod)

#### スコープ

#### サブルーチンへのリファレンス

#### ファイルハンドルへのリファレンス

#### 応用利用

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
<!-- vim: set ts=4 sts=4 sw=4 tw=0 expandtab: -->
