# Perl言語
ここは、プログラミング言語のPerl言語を勉強するブランチになる。  


<a name="algorithmHowToUseTheBranch"></a>
## ブランチの利用方法
ここのブランチは、Python書籍からアルゴリズムをPerlに置き換えて勉強するのに使う。  
また、具体的なアルゴリズムの種類は、下記書籍の目次チャプターに限定する。  
書籍名：Pythonで学ぶアルゴリズムの教科書  
※チャプターごとにブランチを分けていく。  


<a name="algorithmHowToStudy"></a>
## 勉強方法
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


<a name="algorithmDevelopmentEnvironment"></a>
## 開発環境
開発には、`MacVim`を使う。  
大きな規模にしてまで勉強を継続する予定はないかな。  
Perlを極めるには、毎日最低でも20分間はPerlの勉強を続けなければいけないとのことだが、それは無理。  
Perlerになるつもりはない。  

<a name="algorithmCheckTheStatusOfTheActualWorkingEnvironment"></a>
<details><summary>実際に作業する環境の状況確認</summary>

* 勉強環境。  
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
　　※他にも`*.cgi`を使えるそうだ。  
　　※[`*.pm`](#practicaluseModule)は、Perlプログラムとは異なる(モジュール用プログラム)。  
  * 実行方式：インタプリタ方式  
  * 標準の文字コード(プログラムファイル)：UTF-8  
　　※プラグマ(`use utf8;`)宣言が必要。  
  * 文字コードの扱い：
　　例）UTF-8・Unicode  
  * 文字区切り(行末記号)：セミコロン`;`  
    文を区切るために必要なだけであって、文を終わらせるために付けるのではない。  
    そのため、次に続く文がない場合は、セミコロン不要で実行できる(それでも付けろよ)。  
  * インデント：フリーフォーマット  
  * 標準の出力関数：`print`・`printf`・`say`  
    整形関数：[`sprintf`](https://perldoc.jp/func/sprintf)  
  * 標準のフォーマット関数：  
　　例）`printf`など。
　　※必須記入項目ではなく、勉強途中での記載でも可とする。  
  * 単数行コメント方法：`#`  
  * 複数行コメント方法：
    [大きなブロックで囲む方法](https://perldoc.jp/docs/perl/5.10.0/perlfaq7.pod#How32can32I32comment32out32a32large32block32of32perl32code63)：
    PODマーカーで囲むこと。  
  * デバッガ機能(デバッグ技法)：  

</details>


<a name="algorithmTextbookLearnedinPythonBook"></a>
## 「[Pythonで学ぶアルゴリズムの教科書](https://book.impress.co.jp/books/1120101024)」
本の概要。  
> エンジニアの基礎体力を身につける  

<a name="basicKnowledgeFiveTypesOfStudyRange"></a>
<details><summary>基礎知識5種類の項目</summary>

※プログラミングに使う基礎知識を統一する(簡単に済ませられる量に絞り込む)。  
* 基礎知識5種類  
  * [x] [変数](#variable変数)  
  * [x] [配列](#arrangement配列)  
    ここでのPythoでは、`リスト(list)`を配列と呼んでいる。  
    ここでのPerlでは、リストはリストであり、配列は配列である。  
  * [x] [条件分岐](#Conditional条件分岐)  
  * [x] [繰り返し](#repetition繰り返し)  
  * [x] [関数](#function関数)  

</details>

<a name="algorithmTextbookLearnedinPythonContents"></a>
* [アルゴリズム勉強目次](#algorithmTextbookLearnedinPython)  
  * [x] [Chapter 1 プログラミングの基礎知識](#basicKnowledgeFiveTypesOfStudyRange)  
    現時点で完了している(上記の基礎知識5種類として)。  
  * [x] [Chapter 2 プログラミングの力を養う](#algorithmTextbookLearnedinPythonChapter2)  
  * [ ] [Chapter 3 データ構造を学ぶ](#algorithmTextbookLearnedinPythonChapter3)  
  * [ ] [Chapter 4 サーチ](#algorithmTextbookLearnedinPythonChapter4)  
  * [ ] [Chapter 5 ソート](#algorithmTextbookLearnedinPythonChapter5)  
  * [ ] [Chapter 6 ハッシュ](#algorithmTextbookLearnedinPythonChapter6)  
  * [ ] [Chapter 7 さまざまなアルゴリズムを学ぶ](#algorithmTextbookLearnedinPythonChapter7)  
  * [ ] [Chapter 8 アルゴリズムを見える化する](#algorithmTextbookLearnedinPythonChapter8)  
  * Appendix 1 Pythonのインストール方法
  * Appendix 2 テキストエディタと統合開発環境
  * Appendix 3 Pythonの記述ルール


<a name="breakingAwayFromBasicKnowledge"></a>
<details><summary>応用知識の項目</summary>

<a name="expandTheScopeOfBasicKnowledge"></a>
### 基礎知識5種類の勉強範囲を広げる
基礎知識5種類の勉強は、アルゴリズムの勉強用に特化していたが、この部分は、通常開発ができる範囲に手を広げる。  

* 基礎知識5種類の範囲を広げる  
  * [ ] [変数](#practicaluseVariable変数)  
  * [ ] [配列](#practicaluseArrangement配列)  
    [x] 配列の任意の場所へ追加・削除。  
    [x] 配列のコピー  
    [x] 要素数確認  
    [x] 添え字での最大数確認  
    [x] 空確認  
    [ ] リスト演算子(`grep`・`map`)  
    [ ] eval  
  * [ ] [条件分岐](#practicaluseConditional条件分岐)  
    * [x] [三項演算子](#practicaluseConditionalternary)(`?:`)  
      Perlでは、[条件演算子](https://perldoc.jp/docs/perl/perlop.pod#Conditional32Operator)のこと。  
    * [x] [if修飾子](#practicaluseConditionalifmodifier)  
  * [ ] [繰り返し](#practicaluseRepetition繰り返し)  
  * [ ] [関数](#practicaluseFunction関数)  


<a name="rangeOtherThanBasicKnowledge"></a>
### 基礎知識5種類の勉強以外の項目
基礎知識5種類に納められない範囲の勉強に手を広げる。  

* [応用知識](#appliedknowledge)  
  * [ ] [ポインタ・リファレンス](#practicalusePointer)  
    * [x] リファレンス  
      [x] 変数  
      [x] 配列  
      [x] ハッシュ  
      [ ] 関数(サブルーチン)  
      [ ] OSの環境変数  
      [ ] ファイルハンドルへのリファレンス  
    * [x] デリファレンス  
    * [x] 入れ子  
      本当は途中。  
    * [ ] スコープ  
    * [ ] サブルーチンへのリファレンス  
    * [ ] 応用利用  
  * [ ] [NULL・nil](#practicaluseNull)  
  * [ ] [ハッシュ(連想配列)](#practicaluseHash)  
    [x] 特徴  
    [x] 作成方法  
    [x] 取得方法  
    [x] 変更方法(並べ替え含む)  
    [x] キーの重複  
    [x] 繰り返し処理。  
    [x] 既存キーの確認方法。  
    [x] 値の削除方法。  
    [x] OSの環境変数  
  * [ ] [ファイル操作](#practicaluseFileoperation)  
  * [ ] [ディレクトリ操作](#practicaluseDirectorymanipulation)  
  * [ ] [オブジェクト指向](#practicaluseObjectorientation)  
    [x] オブジェクト指向入門2021/11/12(読み切っていない)  
    [ ] Perl入門  
    [ ] オブジェクト指向Perl入門  
    [ ] 配列とスカラのbless  
    [ ] その他のデータ型のbless  
    [ ] 継承  
    [ ] ポリモーフィズム  
    [ ] クラス生成の自動化  
    [ ] 統合  
    [ ] 演算子のオーバーロード  
    [ ] カプセル化  
    [ ] 総称  
    [ ] 多重ディスパッチ  
    [ ] 永続オブジェクト  
  * [ ] [テスト方法](#practicaluseTester)  
  * [x] [標準関数(モジュール)](#practicaluseModule)  
  * [ ] [プロセス管理](#practicaluseSystemfunc)  
  * [x] [パッケージ](#practicalusePackages)  

</details>


<a name="algorithmSpecificBasicKnowledge"></a>
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


## 具体的な基礎知識
何はともあれ、まずは、"Hello World"を表示するプログラムを作る。  
その後で、基礎中の基礎となる制御構造(構造化プログラミング)を簡略化しながら勉強する。  
そのため、以下の手順で勉強を進めることにする。  

* 以下、手順。  
  * [x] 手順1. 勉強用のブランチに移動する。  
  * [x] 手順2. ルートディレクトリのひな形ディレクトリをコピーしてくる。  
    ※ディレクトリ名をプログラミング言語に変更する。  
    ※配下の**Pythonで学ぶアルゴリズムの教科書 一生モノの知識と技術を身につける**ディレクトリは削除。  
  * [x] 手順2-1. 当ファイル(`README.md`)の書き換えを行う。  
        ※ 開発環境を記録する。  
        ※ アルゴリズムの勉強用項目は隠しておく(`details`・`summary`)代わりに、基礎知識5種類の勉強用の項目は出しておく。  
  * [x] 手順2-2. `helloWorld.[言語用の拡張子]`のファイルを作り、おなじみ"Hello World."プログラムを作る。  
  * [x] 手順2-3. main関数不要であれば、"**実行済み**"ディレクトリを削除すること。  
  * [x] 手順2-4. コミットする。  
  * [x] 手順3. 各ディレクトリで、5種類の"絶対的に勉強する一覧"を箇条書きごとに勉強する。  
    * 以下、5種類の内訳。  
      ※そのとき、(できる限り)プログラムファイルに[モードライン](../エディタ活用メモ/Vimエディタ_作業メモなど何でも詰め込む.md)を記載する。  
      ※チェックリストは上記にある。  
      変数  
      配列  
      条件分岐  
      繰り返し  
      関数  
  * [x] 手順3-1. 箇条書きごとにコミット実施する。  
  * [x] 手順4. 1つのプログラミング言語で、手順3の勉強1種類を終えた時に、次のプログラミング言語に移る。  
         (細かく分けることでやる気が維持される・・・はず)  
  * [x] 手順4-1. 今回のプログラミング言語に戻ってきたことにより、次の箇条書きに移り、勉強を継続(再開)する。  
  * [x] 手順5. 上記、5種類の基礎知識を終わるまで繰り返す。  
  * [x] 手順6. 5種類の基礎知識終了にて、"study2programming"ブランチにマージする。  

</details>


<a name="algorithmSpecificAlgorithmPreSolvingProcedure"></a>
<details><summary>アルゴリズム問題解決の作業手順</summary>

## 具体的なアルゴリズム問題解決前手順
アルゴリズムの勉強に、以下の手順を行う。  

* 以下、手順。  
  * [x] 手順1. 勉強用のブランチに移動する(上記[目次](#algorithmTextbookLearnedinPythonContents)の1チャプター分専用ブランチとする)。  
  * [x] 手順2. ルートディレクトリのひな形ディレクトリ配下の必要なディレクトリをコピーする。  
    **Pythonで学ぶアルゴリズムの教科書 一生モノの知識と技術を身につける** ディレクトリ配下の必要なチャプター用ディレクトリ。  
  * [x] 手順3. 当ファイル(`README.md`)の書き換えを行う。  
    [x] アルゴリズムの勉強用に変更する。  
    [x] アルゴリズムの勉強用項目を出すが、基礎知識5種類の勉強項目は隠す(`details`・`summary`)。  
  * [x] 編集後、コミットする。  
  * [ ] 手順4. 各ディレクトリで、チャプタごとに勉強を進める。  
    ※そのとき、(できる限り)プログラムファイルに[モードライン](https://vim-jp.org/vim-users-jp/2009/06/02/Hack-20.html)を記載する。  
    ※チェックリストは上記にある。  
    Chapter 2 プログラミングの力を養う  
    Chapter 3 データ構造を学ぶ  
    Chapter 4 サーチ  
    Chapter 5 ソート  
    Chapter 6 ハッシュ  
    Chapter 7 さまざまなアルゴリズムを学ぶ  
    Chapter 8 アルゴリズムを見える化する  
  * [ ] 手順5. 1つのプログラミング言語で、手順4の勉強1種類(要は、1チャプタ分の子部分)を終えた時に、次のプログラミング言語に移る。  
  * [ ] 手順6. 1チャプタ分終了にて、"study2programming"ブランチにマージする。  

</details>


<a name="algorithmHelloWorld"></a>
### ハローワールドプログラム
Perlは、ワンライナープログラミング言語で有名だが、一応プログラムらしく作成した。  

以下、作業記録。
```terminal
$ cat helloWorld.pl
#!/usr/bin/perl -w

print "Hello World.\n";
print $^V . "\n";
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
※当たり前だが、このシェバングの場合、古い[バージョン](#algorithmCheckTheStatusOfTheActualWorkingEnvironment)のため、勉強用には適しておらず、今後も`perl プログラムファイル名.pl`とする。  


<a name="algorithmNotes"></a>
### ※注意事項
「アルゴリズムを勉強することが目的」であるということを理解すること。  
しかし、やる気を維持するためにも1冊分を読了させることも目的としており、深掘りせずに進めることも考慮すること。  
要は、深く踏み込むか、流し読み程度に抑えるかどうかはそのときに決める。  


<a name="variable変数"></a>
<details><summary>実際の変数の勉強</summary>

### 変数(スカラ)
値の格納方法について。  
※複雑な説明はしない。  

**変数**と**スカラー**は**異なる**ようだ。  
文字列をスカラーと良い、それを格納する入れ物を変数というのだろう。  

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
#### 変数
様式：
`my $変数名;`  
※`use vars`ステートメントで**my**が必須にできるが、そもそも最新バージョンであれば自動で必須になっている。  

変数名は、大小文字区別する(変数名に多バイト文字は使わないのが吉)。  
また、変数名の最長は251バイト以内と決められている。  
他のプログラミング言語と違い、データ型はない。  


##### デフォルト変数(`$_`)
変数を指定する場所で変数が指定されていない場合、`$_`が自動的に使われる(ユーザからの目には見えないが、あえてそれを指定することもできる)。  

```Perl
$_ = "hoge";	# myを付けてはならない(暗黙宣言)。
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
これは、[レキシカル変数](#subVariable2lexical)(my変数)と言い、基本的にはブロック内で変数宣言するときに付けるのだが、今回のように最新版(v5.12以降)であれば、自動的にレキシカル変数が必要になる。  
また、古いバージョン利用時に宣言を明確にする場合は、`use strict;`を付ける。  


<a name="subVariable2lexical"></a>
##### レキシカル変数
**my**キーワードを変数宣言時に付ける。  

* 特徴  
  * どのパッケージにも属さない。  
  * 宣言ブロック内でのみ利用可能。  
    ブロック外での利用はできない。  
  * ブロックから外れた場合に破棄される。  
    また、forループ時の繰り返し先頭時に再作成される。  

レキシカル変数は、基本的に上記のルールに則って運用されている。  
しかし、例外があり、それがリファレンスとして扱われるとき。  
以下、そのプログラム。
```perl
use v5.24;

sub referencefunc()
{
	my @bar = @_;
	push @bar, "hoge";
	return \@bar;
}

sub main()
{
	my $test = &referencefunc("boo", "bar");

	say $$test[0];	# boo
	say $$test[1];	# bar
	say $$test[2];	# hoge
}

main();
```
関数内でのレキシカル変数barを宣言しており、関数を抜けたときにその関数が破棄されるはずだが、リファレンスとして値を戻しているため、メイン関数内でbarに追加された変数を利用できる。  
利用し終えたことをPerlプログラムが検知したときに、その変数が破棄される。  
また、メイン関数内か直接bar変数を利用することは出来ない(ゆえに、配列を変数にリファレンスとして代入しているのは、[無名配列](#practicalusePointerAnonymousarrayreference)と同義`$test = ["boo", "bar", "hoge",];`)。  

※[リファレンス](#practicalusePointer)は、別途説明している。  
※[パッケージ変数](#practicalusePackages)は応用知識として説明している。  


<a name="subVariable3"></a>
#### 変数値の出力方法
今後、`use v5.24;`を前提とする。  

```Perl
my $hoge = "boo";
print $hoge;	# boo
print $hoge , $hoge;	# booboo	←☆カンマ接続の場合は1つ目のhoge変数出力及び2つ目のhoge変数出力をしている。
print $hoge . $hoge;	# booboo	←☆ピリオド接続の場合は、1つ目と2つ目のhoge変数を連結後に出力している(文字列結合)。
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

|データ型|サイズ|備考|
|--------|------|----|
|int||なし。|
|float||なし。|
|string||なし。|
|bool||なし。|


##### bool値
以下が、Bool値の代替方法。  

* ブール値と判断できる条件  
  * 値が数字であれば0は偽を表す。それ以外は真を表す。  
  * 値が文字列であれば、空文字(`''`)と文字列(`'0'`)は偽を表す。それ以外は真を表す。  
  * 変数に値がない場合は偽を表す(undefの場合偽ということ)。

※配列宣言しただけでは空文字が設定されるため、偽になる。  
※ブール値を反転させる場合は否定演算子(`!`)を使う。  

以下、実施。

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
  [ ] [constantプラグマ](https://perldoc.jp/docs/modules/constant-1.17/constant.pod)  
  これは、関数定義で書き込みできないようにしている(他のプログラミング言語のような定数とは概念からして異なる)。  
  他にも定数のやり方はあるようだが、Perlに元から付けられているものではないのだろう。  
* [ ] データ型  
  ない(キャストするときに必要？)。  
  * [ ] 整数(`long`など)  
  * [ ] 浮動小数点型(`double`など)  
  * [x] 型推論  
    ほぼこれ。  
  * [ ] 複素数型  
* [ ] リテラル  
  * [ ] 整数リテラル  
    10進数以外の説明(一応プログラムはある)。  
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
    Perlでは、リファレンスのこと(ちょっとだけ調べた)。  

* 関数を変数に代入  
* 関数を引数に使う  

</details>

</details>


<a name="arrangement配列"></a>
<details><summary>実際の配列の勉強</summary>

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
#### 配列
様式：
`my @配列名;`  
各要素への接続：
`$配列名[0]`  
※配列の先頭は0であり、1は2番目になる。  

一般的なPerlでの配列とは、リストをコンテナ化したもの。  


##### リスト(配列とは異なる)
様式：
`my ($変数1, $変数2, $変数3, ・・・) = (値1, 値2, 値3, ・・・);`  
`my ($変数1, $変数2, $変数3, ・・・) = qw(値1 値2 値3 ・・・);`  

コンマ区切りしたものをリストと呼ぶ。  
また、カンマなしでのリスト化をする場合は、`qw`を使う。  


<a name="subArrangement1Arrayflattening"></a>
###### リストの平坦化
リストでの入れ子はできない。  
例）
```perl
my @hoge = (18, 19, (20, 17));
say "@hoge";	# 18 19 20 17
say "$hoge[2]";	# 20
```
[リファレンス](#practicalusePointer)にて、[可能](#practicaluseReferencearray)。  


##### デフォルト配列(`@_`)
これは[関数](#function関数)の引数として使うのが一般的。  


<a name="subArrangement2"></a>
#### 配列への追加方法
様式：
[配列](#subArrangement2wrongarray)は0から始まるが、意識する必要は無いだろう。  

様式：
`my @配列名 = (値1, 値2, 値3, ・・・)`  

* 追加方法  
  * 配列末尾への対応。  
    スタック`stack`(後入れ先出し法：Last In First Out, LIFO)  
    * 取り出し[pop](#subArrangement2pop)  
      配列の**最後**から要素を**取り出す**。  
    * 追加[push](#subArrangement2push)  
      配列の**最後**に要素を**追加**する。  
      `unshift`の追加処理より**早い**。  
  * 配列先頭への対応。  
    キュー`queue`(先入れ先出し法：First In First Out, FIFO)  
    * 取り出し[shift](#subArrangement2shift)  
      配列の**先頭**から要素を**取り出す**。  
      `pop`の取り出しより**早い**。  
    * 追加[unshift](#subArrangement2unshift)  
      配列の**先頭**に要素を**追加**する。  

以下、配列の要素外に値を入れた場合、指定場所に入る。
```perl
my @hoge = ( 20211117, 20211118, );
say $hoge[0];   # 20211117
say $hoge[1];   # 20211118

$hoge[3] = 20211120;
say $hoge[3];   # 空(undef)
```
また、それまで存在していなかった要素位置は空になっている。  


<a name="subArrangement2pop"></a>
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
※取り出すため、元の配列からは削除される。  

<a name="subArrangement2push"></a>
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

<a name="subArrangement2shift"></a>
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

<a name="subArrangement2unshift"></a>
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


配列は0から数えるが、意識する必要はあるか？
```Perl
my @hoge = (20210831, 20210901);
say @hoge;	# 2021083120210901
say $hoge[0];	# 20210831
say $hoge[1];	# 20210901
```


最後の要素値確認方法(要素位置を1マイナスにする)。
```Perl
my @hoge = (20210831, 20210901);
say $hoge[-1];	# 20210901
```


最後の要素位置の取得方法(`$#`を前置する)。
```Perl
my @hoge = (20210831, 20210901);
say $#hoge;	# 1
my $count = @hoge;
say $count;	# 2
say $hoge[$#hoge]	# 20210901	←☆最後の要素値を取得。
say $hoge[-1]	# 20210901	←☆最後の要素値を取得。
say $hoge[-2]	# 20210831	←☆最後から2番目の要素値を取得。
```


数列が格納されている配列に文字列を格納することもできる。
```Perl
my @hoge = (20210831, 20210901);
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


<a name="subArrangement3"></a>
#### 二次元配列の宣言方法
配列の中で配列を宣言する場合、中にある配列をリファレンスとして外側の配列に渡すことで、2次元配列になる。  

```perl
my @hoge = qw(20210927 20210928 );
my @boo = qw(20210929 20210930 );

my $twoarray = [\@hoge, \@boo];

say $twoarray->[0];	# ARRAY(0x7ff4b5004328)
say $twoarray->[1];	# ARRAY(0x7ff4b50047f0)

say $twoarray->[0][0];	# 20210927
say $twoarray->[0][1];	# 20210928
say $twoarray->[1][0];	# 20210929
say $twoarray->[1][1];	# 20210930
```

以下、直接の書き方。
```perl
my $twoarray = [[20210830, 20210831], [20210901, 20210902]];

say $twoarray->[0];	# ARRAY(0x7f95808061a0)
say $twoarray->[1];	# ARRAY(0x7f9580806338)

say $twoarray->[0][0];	# 20210830
say $twoarray->[0][1];	# 20210831
say $twoarray->[1][0];	# 20210901
say $twoarray->[1][1];	# 20210902
```

以下、通常の配列を連結しただけでは連結されてしまい、1次元配列になってしまう。  
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

* 本来の配列操作。  
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
    [ ] 3次元配列以上の宣言方法。  
    [x] リファレンス(少しだけ調べた)。  
  * [x] 配列を複製する方法。  
  * [x] [配列からスライスを作成する方法。](#practicaluseArrangement配列)  

* 構造体  
  Perlには[ない](https://perldoc.jp/docs/perl/5.10.0/perlfaq7.pod#How32do32I32declare47create32a32structure63)ようだ。  
  * 共用体  
  * 列挙体  

* コレクション  
  * [x] [ハッシュ(`%ハッシュ名`)](#practicaluseHash)  
    [x] [ハッシュスライス作成](#practicaluseHashdslice)  
  * [x] List(配列)  
  * [ ] Set  
  * [ ] Map  
  * [ ] Queue  

</details>

</details>


<a name="Conditional条件分岐"></a>
<details><summary>実際の条件分岐の勉強</summary>

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
|より大きい|`>`|`gt`|グレタザン(より大きい：greater than)|
|より小さい|`<`|`lt`|レスザン(決して…でない：less than)|
|以上(等しいもしくは大きい)|`>=`|`ge`|(greater than or equal to)|
|以下(等しいもしくは小さい)|`<=`|`le`|(less than or equal to)|


<a name="subConditional999"></a>
#### 条件分岐での説明しない項目。

<details><summary>今回は勉強を見送る一覧</summary>

* 多岐分岐  
  * [x] [三項演算子(`?:`)](#practicaluseConditionalternary)  
  * [x] [if修飾子](#practicaluseConditionalifmodifier)：処理に対してif文が末尾に付く。  
    例）`say "hello world." if($hoge == "hoge");`  
    if文の条件式が真だった場合に、say処理が走る。  
  * 基本構造例：switch  
    [スイッチ構文](https://perldoc.jp/docs/perl/5.10.0/perlfaq7.pod#How32do32I32create32a32switch32or32case32statement63)はない？  
    v5.10以降であれば使える。  
  * if文の否定：unless  
  * unless修飾子：if修飾子と同じように使える。  

* 関係演算子  
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

</details>


<a name="repetition繰り返し"></a>
<details><summary>実際の繰り返しの勉強</summary>

### 繰り返し

* 絶対的に勉強する一覧  
  * [x] [指定回数条件での繰り返し](#subRepetition1)  
    [x] [基本構造例：for( 条件式 )](#subRepetition2)  
    [x] [基本構造例：拡張for命令(`in`)](#subRepetition3)  
    [x] [`for`の入れ子。](#subRepetition4)  
  * [ジャンプ処理](#subRepetition5)  
    * [x] break  
      Perlでは[`last`](#subRepetition5last)  
    * [x] continue  
      Perlでは[`next`](#subRepetition5next)  
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
アルゴリズム以外にも使うのは当然の技術。
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

* [last](#subRepetition5last)  
  while処理を抜け出る。  
  ※他のプログラミング言語でいえば、`break`文。  
  使える繰り返し：`for`・`foreach`・`while`・`until`・裸のブロック。  
* next  
  while処理の先頭に戻り、条件式を評価する。  
  ※他のプログラミング言語でいえば、`continue`文。  
  使える繰り返し：`for`・`foreach`・`while`・`until`・裸のブロック。  


<a name="subRepetition5last"></a>
以下、break(last)での繰り返し処理強制中断。  
```perl
my @hoge = (20210901, 20210902, );

# 繰り返しの入れ子。
#	lastラベルで抜け出る。
LASTJUMP: foreach my $boo ( @hoge ) {
	foreach my $number ( 1..10 ) {
		if ( $number == 3 ) {
			say "$number：$boo";
						# 3：20210901
					# 以下のラベルがない場合、
						#	3：20210902
					# も出力している。
					# lastのため、1つ目の繰り返しを抜け出ている。
		}
		last LASTJUMP if ( $number == 3);
	}
}
```

<a name="subRepetition5next"></a>
以下、continue(next)での繰り返し処理強制中断。  
```perl
my @boo = (20210901, 20210902, );

#	nextで抜け出る。
LASTJUMP: foreach my $hoge ( @boo ) {
	foreach my $number ( 1..10 ) {
		if ( $number == 3 ) {
			say "$number：$hoge";	# 出力なし。
		}
		next LASTJUMP if ( $number == 2);
			# 1つ目のforeach処理に戻るため、3以降にインクリメントされず、処理が終了する。
			# このnext処理がない場合、当然のように2行が出力される。
#					3：20210901
#					3：20210902
	}
}
```


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
過去のバージョンでは出来なかった。  


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

</details>


<a name="function関数"></a>
<details><summary>実際の関数の勉強</summary>

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
      [x] ローカルスコープ変数  
      利用バージョンにより、エラーになる。  


<a name="subFunction1"></a>
#### 関数
様式：
```Perl
sub 関数名 {
	処理;
}
```

引数の受け取り方は、可変長引数として[デフォルト配列(`@_`)](#subArrangement1)を使う。  

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
	処理A;
	return 戻り値;
	処理B;
}
```
この演算子を付けた場合、処理のどこだろうが、必ず戻り値として意図した戻し方ができる。  
明記しなければ、最後の処理に限定されてしまい、バグを埋め込むことになる。  
ちなみに、この例の場合は、処理Bは絶対に実行されないバグになる(明記したことでバグを埋め込むことになってしまった)。  

* 戻り値の種類  
  * voidコンテクスト  
    意味：戻り値がない。  
  * 変数コンテクスト  
    正式名は、スカラコンテクスト。  
  * 配列コンテクスト  
    正式名は、リストコンテクスト。  

```perl
hoge($test);		# 戻り値なし。

$boo = hoge($test);	# 戻り値がスカラコンテクスト。

@bar = hoge($test);	# 戻り値がリストコンテクスト。
($r1, $r2) = hoge($test);	# 戻り値がリストコンテクスト。
print( hoge($test) );		# 戻り値がリストコンテクスト。
```
これらの情報は、`wantarray`関数にて識別できる。  
（判別よりも識別の言葉が適切だよね？）  

* `wantarray`関数の戻り値  
  現在の関数から値を戻す場合の種類のこと。  
  ※これを有効活用するために、[**if修飾子**](#practicaluseConditionalifmodifier)を使う。  
  * `undef`  
    偽の未定義であるため、戻り値を返さない。  
    ※関数の呼び出し元が何も受け取らないことを意味する。  
  * `""`  
    偽だが定義済みであるため、スカラを返す。  
  * `1`  
    真であり定義済みである、リストを返す。  

<a name="functionReturnScalarList"></a>
<details><summary>関数からの戻り値の挙動確認(wantarray関数)</summary>

呼び出し側による戻り値の期待に沿った型で戻せる。  

以下、プログラム。
```perl
use v5.24;

# 以下、サブルーチン
sub func
{
	my $boo = "本日は晴天なり。";
	my @bar = ("boo", "bar",);

	say "関数内部処理。";

	return @bar if wantarray();				# 呼び出し側が配列を期待する場合は配列で戻す。
	return $boo  if defined(wantarray());	# 呼び出し側が変数を期待する場合は変数で戻す。
}

# 以下、戻り値なし。
func();	# 何もしない(正確な表現⇒何も戻ってこない)。
	# 関数内部処理。
	# は、出力された。

# 以下、戻り値の種類がスカラコンテクスト。
my $scalar = func();
say $scalar;	# 本日は晴天なり。

# 以下、戻り値の種類がリストコンテクスト。
my @list = func();
say "@list";	# boo bar
say $list[0];	# boo
say $list[1];	# bar
```

また、戻り値を常に受け取ってもらう前提のサブルーチンの場合、以下のように警告を出せる。
```perl
use v5.24;
use Carp;	# ←☆警告表示にはこれが必要。

# 以下、サブルーチン
sub function
{
	say "戻り値受け取り警告。";
	carp "戻り値は使うため、受け取るようにしましょう。";
}

function();
#	戻り値は使うため、受け取るようにしましょう。 at 関数戻り値の種類.pl line 8.
#	main::function() called at 関数戻り値の種類.pl line 11
#	戻り値受け取り警告。	←☆警告後に処理が走る(上から順番に処理が動くわけではないって事)。
```
※警告を出すための関数呼び込み(要は、インクルード)が必須。  
付け忘れた場合、エラーが出る。  
```terminal
String found where operator expected at 関数戻り値の種類.pl line 7, near "carp "戻り値は使うため、受け取るようにしましょう。""
	(Do you need to predeclare carp?)
syntax error at 関数戻り値の種類.pl line 7, near "carp "戻り値は使うため、受け取るようにしましょう。""
Execution of 関数戻り値の種類.pl aborted due to compilation errors.
```

以下、関数の呼び出し元の特定関数利用プログラム。
```perl
use v5.24;

sub asakuno {
	say "関数内";

	my ($package, $file, $line) = caller();

	return ($package, $file, $line);
}

my ($retpack, $retFile, $retLine) = asakuno();
say $retpack;	# main	←☆呼び出し元のパッケージ。
say $retFile;	# 関数の呼び出し元.pl	←☆呼び出し元のコードを含んでいるファイルの名前。
say $retLine;	# 11	←☆呼び出し元のファイル内の行。
```

</details>

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
※[クロージャ](#practicaluseClosure)を使う場合は、変数生存期間を考慮すること。  

* ローカル変数。  
[local](https://perldoc.jp/func/local)宣言がずっとエラーになる。  
様式：
`local 変数名;`  
この形式で[宣言](https://perldoc.jp/docs/perl/5.16.1/perlsub.pod#Temporary32Values32via32local40-41)できるのは確かだ。  

その理由は、利用バージョンにある。  
レキシカル変数(**my**)付きを強制するバージョンを利用する場合は、ローカル宣言ができないようだ。  

以下、ローカル変数の利用例）
```perl
$hoge = "本日は晴天なり。";
$count = 0;
$number = 0;

sub hoge {
	local $hoge = "本日はお日柄も良く";
	local $number  = 100;
	print $hoge . ' <$count：' . $count . '> <$number：' . "$number>\n";
}

$count++; $nubmer++;
print $hoge . '   <$count：' . "$count>\n";
		# 本日は晴天なり。   <$count：1>
$count++; $nubmer++;
&hoge();
		# 本日はお日柄も良く <$count：2> <$number：100>
$count++; $nubmer++;
print $hoge . '   <$count：' . "$count>\n";
		# 本日は晴天なり。   <$count：3>
```
無理して使う必要は無い・・・かな。  
しかし、上記リンク先での説明には、ローカル変数は3カ所で使わなければならない状況があるとのこと。  


※これらとは別に[パッケージ](#practicalusePackages)変数も存在する。  


<a name="subFunction999"></a>
#### 関数での説明しない項目。

<details><summary>今回は勉強を見送る一覧</summary>

* 標準的な関数  
  * [x] 可変長引数  
    Perlでは常に可変長になる。  
  * [x] [再帰関数](#findTheFactorialOfNChapter2Recursivefunction)  
    アルゴリズムの勉強で使っている。  
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


<a name="algorithmTextbookLearnedinPython"></a>
#### ☆アルゴリズムの勉強チャプタ概要☆
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
  [x] [n進法を理解する。](#understandnAryNotationChapter2)  
<a name="algorithmTextbookLearnedinPythonChapter3"></a>
* [Chapter3 データ構造を学ぶ](#learnDataStructuresOverviewChapter3)  
  今までに勉強した配列(リスト)を用いた発展を遂げる。  
  ※今回利用するリストはアルゴリズム(概念)用語であり、Pythonで用いているリスト(配列)という用語とは別物。  
  ※例外処理(`try〜except〜finally`)の説明をしている(いずれ基礎知識として勉強に組み込む必要がある？)。  
  以下、各項目(目次)。  
  [x] [スタック](#stackChapter3)2021/10/04  
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
  [線形探索](#linearSearchChapter4)  
  [二分探索](#binarySearchChapter4)  
  [木探索](#treeExplorationChapter4)  
  [計算量について知る](#knowAboutComputationalComplexityChapter4)  
  [ランダウの記号](#landauSignChapter4)  
  [数当てゲーム](#numberGuessingGameChapter4)  
  [ビット演算を学ぶ](#learnBitwiseOperationsChapter4)  
<a name="algorithmTextbookLearnedinPythonChapter5"></a>
* [Chapter5 ソート](#sortOverviewChapter5)  
  一定の規則に従い、並び替えること。  
  ※有名な並べ替えアルゴリズムのみ。  
  以下、各項目(目次)。  
  [選択ソート](#selectionSortChapter5)  
  [バブルソート](#bubbleSortChapter5)  
  [挿入ソート](#insertionSortChapter5)  
  [クイックソート](#quickSortChapter5)  
  [マージソート](#mergeSortChapter5)  
  [ヒープソート](#heapsortChapter5)  
  [クイックソートの再起の過程を出力する。](#outputTheProcessOfQuicksortRecurrenceChapter5)  
  [再帰関数を用いたマージソート。](#mergeSortUsingARecursiveFunctionChapter5)  
  [プログラミング言語用のソート・ヒープ・キュー関数の使い方。](#howToUsePythonSortInstructionsAndHeapqModuleChapter5)  
  [ソートの計算量と計算時間。](#sortCalculationComplexityAndCalculationTimeChapter5)  
<a name="algorithmTextbookLearnedinPythonChapter6"></a>
* [Chapter6 ハッシュ](#hashOverviewChapter6)  
  ハッシュとは、データから算出した小さな値のこと。  
  今回は、そのハッシュとしての値を算出する方法を勉強する。  
  以下、各項目(目次)。  
  [ハッシュとは。](#whatIsAHashChapter6)  
  [ハッシュ関数](#hashFunctionChapter6)  
  [ハッシュテーブル](#hashTableChapter6)  
  [衝突を回避する。](#avoidCollisionsChapter6)  
  [暗号学的ハッシュ関数](#cryptographicHashFunctionChapter6)  
<a name="algorithmTextbookLearnedinPythonChapter7"></a>
* [Chapter7 さまざまなアルゴリズムを学ぶ](#learnVariousAlgorithmsOverviewChapter7)  
  アルゴリズムを勉強する上で必ず関わるアルゴリズムになる。  
  むしろ、ここまで勉強できてアルゴリズムを勉強したと言えるのではないだろうか。  
  以下、各項目(目次)。  
  [ユークリッドの互除法](#euclideanAlgorithmChapter7)  
  [文字列探索](#stringSearchChapter7)  
  [アルゴリズムを理解するヒント(処理の過程の出力)。](#tipsForUnderstandingTheAlgorithmChapter7)  
<a name="algorithmTextbookLearnedinPythonChapter8"></a>
* [Chapter8 アルゴリズムを見える化する](#visualizeTheAlgorithmOverviewChapter8)  
  今回のアルゴリズムを勉強することで、アルゴリズム(もしくはデータ)を可視化する方法を勉強できる。  
  以下、各項目(目次)。  
  [n次関数の曲線を描く。](#drawACurveOfTheNthOrderFunctionChapter8)  
  [フラクタル図形を描く。](#drawAFractalFigureChapter8)  
  [迷路を解く過程を描く。](#drawTheProcessOfSolvingTheMazeChapter8)  
  [アルゴリズムを使い分ける。](#useDifferentAlgorithmsChapter8)  
  [マンデルブロー集合を描こう。](#letsDrawTheMandelbrotSetChapter8)  


<a name="developProgrammingSkillsOverviewChapter2"></a>
### プログラミングの力を養う
基礎的なプログラミングの力を養っていく。  

[メニューに戻る](#algorithmTextbookLearnedinPythonChapter2)


<a name="findTheAverageValueChapter2"></a>
#### 平均値を求める。
勉強内容はPythonと基本同じ。  
それをPerl用に移植する。  

<details><summary>展開</summary>

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

</details>

[メニューに戻る](#algorithmTextbookLearnedinPythonChapter2)


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

<details><summary>展開</summary>

以下、実際のプログラム。
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

</details>

[メニューに戻る](#algorithmTextbookLearnedinPythonChapter2)


<a name="outputTheMultiplicationTableChapter2"></a>
#### 九九の式を出力する。
Pythonでやったように、九九の式を出すのではなく、九九表を出すことにする。  
ルールはPythonと同じ。  

<details><summary>展開</summary>

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

</details>

`sprintf`は、今回初めて使った。  

[メニューに戻る](#algorithmTextbookLearnedinPythonChapter2)


<a name="findAPrimeNumberChapter2"></a>
#### 素数を求める。
素数とは、1とその数以外に約数を持たない2以上の自然数のこと。  

Pythonに倣い、試す数は**2〜2分のn**までの数で割ることを調べる方法をとる。  
例えば、10を調べる場合、その半分より大きい数(**6**・**7**・**8**・**9**)では、10を割ることが出来ない。  
そのことを利用した方法で素数を求める。  
後日、[エラトステネスの篩](#eratosthenesSieveChapter2)を使った効率のいいアルゴリズムを勉強する。  

<details><summary>展開</summary>

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
[比較演算子](#subConditional3)の扱いにてんやわんやする。  

</details>

[メニューに戻る](#algorithmTextbookLearnedinPythonChapter2)


<a name="findTheFactorialOfNChapter2"></a>
#### nの階乗を求める。
**階乗とは**
1からnまでの全ての整数の積をnの階乗という。  

<a name="findTheFactorialOfNChapter2Recursivefunction"></a>
<details><summary>再帰関数</summary>

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

</details>

<details><summary>展開</summary>

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
他のプログラミング言語とちゃんぽんで進めるのは間違っていることを実感している・・・が、やめられない。  

</details>

[メニューに戻る](#algorithmTextbookLearnedinPythonChapter2)


<a name="eratosthenesSieveChapter2"></a>
#### エラトステネスの篩
効率よく素数を求めることができるアルゴリズムのこと。  


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
	say $outputTable =~ s/\s*$//mgr;
	say;
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

</details>

<details><summary>Perlプログラムの出力結果</summary>

以下、出力結果。
```text
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

</details>

[メニューに戻る](#algorithmTextbookLearnedinPythonChapter2)


<a name="understandnAryNotationChapter2"></a>
#### n進法を理解する。
アルゴリズムの1つとして勉強することではない。  
普通の一般説明。  

<details><summary>展開</summary>

```perl
sub main() {
	say "2進数リテラル";
	say 0b11111111, ", ",0b0, ", ",0b10101010, ", ",-0b1, ", ",0b1, ", ",0b1001101000110010011101110;
	# 出力結果：255, 0, 170, -1, 1, 20210926

	say "8進数リテラル";
	say 0377, ", ",00, ", ",0252, ", ",-01, ", ",01, ", ",0115062356;
	# 出力結果：255, 0, 170, -1, 1, 20210926

	say "10進数リテラル";
	say 255, ", ",0, ", ",170, ", ",-1, ", ",1, ", ",20210926;
	# 出力結果：255, 0, 170, -1, 1, 20210926

	say "16進数リテラル";
	say 0xff, ", ",0x00, ", ",0xAA, ", ",-0x1, ", ",0x1, ", ",0x13464EE;
	# 出力結果：255, 0, 170, -1, 1, 20210926

}
&main();
```

</details>

[メニューに戻る](#algorithmTextbookLearnedinPythonChapter2)


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
後入れ先出し法。  
後から入れたデータを先に取り出す。  
入れることを"Push"と言い、取り出すことを"Pop"と言う。  

以下、スタックアルゴリズム用プログラム。
```perl
use v5.24;

sub push() {
	# 第2引数をリファレンスとして受け取る。
	my ( $ii, $stack) = @_;

	push @$stack, $ii;
}

sub pop() {
	# 第1引数をリファレンスとして受け取る。
	my ( $stack) = @_;

	if (@$stack <= 0) {
		return "取り出すデータが存在しません。";
	}
	else {
		return pop @$stack;
	}
}

sub main() {
	my @stack;

	say "1. 0から3までを追加";
	for my $ii ( 0..3 ) {
		&push($ii, \@stack);
	}
	say "2. 99を追加";
	&push(99, \@stack);
	say "3. 5から9までを追加";
	for my $ii ( 5..9 ) {
		&push($ii, \@stack);
	}
	say "-- 取り出し開始 --";
	for my $ii ( 0..10 ) {
		my $data = &pop(\@stack);
		say "取り出したデータ：", $data;
	}
	say "-- 取り出し終了 --";
}
&main();
```
Perlで関数にまとめるのが馬鹿らしいほど間抜けなプログラムになっている。  

以下、出力結果。
```terminal
1. 0から3までを追加
2. 99を追加
3. 5から9までを追加
-- 取り出し開始 --
取り出したデータ：9
取り出したデータ：8
取り出したデータ：7
取り出したデータ：6
取り出したデータ：5
取り出したデータ：99
取り出したデータ：3
取り出したデータ：2
取り出したデータ：1
取り出したデータ：0
取り出したデータ：取り出すデータが存在しません。
-- 取り出し終了 --
```


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


<a name="appliedknowledge"></a>
## 応用知識
基礎知識5種類だけではアルゴリズムの勉強に足りない部分が発生したため、ちょっとだけ手を広げて勉強した。  

* 応用部分  
  * [リファレンス](#practicalusePointer)  
  * [ハッシュ(連想配列)](#practicaluseHash)  
  * [オブジェクト指向](#practicaluseObjectorientation)  
    2021/11/11〜  
  * 今後も機会があれば増やしていく。  


<a name="practicaluseVariable変数"></a>
<details><summary>応用知識-変数(スカラ)</summary>




</details>


<a name="practicaluseArrangement配列"></a>
<details><summary>応用知識-配列</summary>

### スプライス(任意の場所への追加・削除)
配列への操作方法の応用として、配列途中への追加・削除を行う。  

```perl
my @hoge = (1..10);

say "@hoge";	# 1 2 3 4 5 6 7 8 9 10
say "配列のスライスとして置き換え。";
@hoge[2, 6, 4] = (88, 20211118, 99);
say "@hoge";	# 1 2 88 4 99 6 20211118 8 9 10

say "配列のスライス。";
my $two = 2;
say "@hoge[$two, 6, $#hoge, -2]";	# 88 20211118 10 9
```
配列をリストとして扱うため、配列の接頭辞に`@`を使う。  

* 配列を任意の場所で継ぎ接ぎ：
  * `$変数名 = splice @配列名, 添え字;`  
    添え字以降の要素が取り除かれ、配列最後の要素が変数に代入される。  
  * [`@配列名 = splice @配列名, 添え字;`](#practicaluseArrangementArraysplicetwoArg)  
    添え字の要素以降が配列に代入される。  
    要は、第2引数までの利用。  
  * [`@配列名 = splice @配列名, 添え字, 要素数;`](#practicaluseArrangementArraysplicethreeArg)  
    添え字の要素以降から要素数までが配列に代入される。  
    要は、第3引数までの利用。  
  * [`@配列名 = splice @配列名, 添え字, 要素数, リスト;`](#practicaluseArrangementArraysplicefourArg)  
    添え字の要素以降から要素数までが配列に代入され、その分をリストで置き換える。  
    要は、第4引数までの利用。  
    要素数の部分を0指定した場合、その場所に挿入する(置き換えではなくなる)。  

<a name="practicaluseArrangementArraysplicetwoArg"></a>
以下、`splice`演算子による添え字番号指定の取り出し(第2引数までの利用)。
```Perl
my @hoge = ( 1..10 );
say "@hoge";	# 1 2 3 4 5 6 7 8 9 10
@boo = splice @hoge, 2;
say "@hoge";	# 1 2
say "@boo";		# 3 4 5 6 7 8 9 10
```

<a name="practicaluseArrangementArraysplicethreeArg"></a>
以下、`splice`演算子による添え字番号指定の取り出し(第3引数までの利用)。
```Perl
my @hoge = ( 1..10 );
say "@hoge";	# 1 2 3 4 5 6 7 8 9 10
@boo = splice @hoge, 2, 3;
say "@hoge";	# 1 2 6 7 8 9 10
say "@boo";		# 3 4 5
```

<a name="practicaluseArrangementArraysplicefourArg"></a>
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


### 配列のコピー。
配列は、そのままイコール記号での代入でコピーできる。
```Perl
my @hoge = qw(20210831, 20210901, );
my @boo;
@boo = @hoge;
$hoge[0] = "bar";
say "@boo";	# 20210831, 20210901,
```
hoge配列への変更では、@booに影響ない。  


### 要素数確認。
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


### 添え字での最大数確認。
上記要素数の確認ではなく、最大添え字数の調べ方。
```Perl
my @hoge = qw(20210831, 20210901, );
say $#hoge;	# 1
```
配列は0から数える。  
2つの要素があるため、最大配列添え字は1になる。  
その1が結果として得られている。  


### 空確認
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


<a name="subArrangement2wrongarray"></a>
### 間違った配列操作
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

<a name="practicaluseConditional条件分岐"></a>
<a name="practicaluseConditionalternary"></a>
<details><summary>応用知識-条件分岐(三項演算子)</summary>

### 三項演算子(条件演算子)`?:`
様式：
`条件式 ? 真の時の値 : 偽の時の値;`  

[公式ページの条件演算子](https://perldoc.jp/docs/perl/perlop.pod#Conditional32Operator)  
> "?" の前の引数が真であれば ":" の前の引数が返されますが、 真でなければ、":" の後の引数が返されます。  

以下、例）
```perl
my @bar = (20211123, 20211124, );
my $boo = 20211123;

# 以下は、左の数字と変数内容を比較し、真であれば"数字代入"が$hogeに代入される。
my $hoge = 20211123 == $boo ? "数字代入" : "文字列代入";
say $hoge;	# 数字代入

# 以下は、左の数字と変数内容を比較し、偽であれば"文字列代入"が$hogeに代入される。
my $hoge = 20211123 == $bar[1] ? "数字代入" : "文字列代入";
say $hoge;	# 文字列代入
```
ちなみに、`undef`・`""`・`0`・`"0"`は、全て偽になる。  

<details><summary>三項演算子の入れ子</summary>

見にくいため、常識として使わないこと。  
プログラミングしているときですら大変だろうが、保守はそれ以上に大変になることが予想される。  

```perl
my @boo = (20211123, 20211124, );

my $hoge = 20211120 == $boo[0] ? "11/20"
		:  20211121 == $boo[0] ? "11/21"
		:  20211122 == $boo[0] ? "11/22"
		:  20211123 == $boo[0] ? "11/23"	# ←☆これが代入される。
		:  20211124 == $boo[0] ? "11/24"
		:  "日付なし";
say $hoge;	# 11/23

my $hoge = 20211120 == $boo[0] ? "11/20"
		:  20211121 == $boo[0] ? "11/21"
		:  20211122 == $boo[0] ? "11/22"
		:  20211124 == $boo[0] ? "11/24"
		:  "日付なし";	# ←☆これが代入される。
say $hoge;	# 日付なし
```
すでに見にくい。  
**if**文の入れ子も見にくいように思うが、これよりマシだろう。  

</details>

</details>

<a name="practicaluseConditionalifmodifier"></a>
<details><summary>応用知識-条件分岐(if修飾子)</summary>

コードを短くするために、文の後ろに修飾子を置くことができる。  
今回は、**if**を置くことにする。  

### [if修飾子](https://perldoc.jp/docs/perl/5.12.1/perlsyn.pod)
様式：
`文 if 条件式;`  

以下、例）
```perl
my $hoge = 20211124;

say $hoge if $hoge == 20211124;	# 20211124

if ( $hoge == 20211124 ) {
	say $hoge;	# 20211124
}
```
※入れ子はできない。  

以下、0判定結果
```perl
my $hoge;
say $hoge	if $hoge;	# 出力なし(undef)。

$hoge = 0;
say $hoge	if $hoge;	# 出力なし。
```
`defined-or`演算子の出番はないと思って良いだろう。  

当然ながら**if**だけでなく、**unless**・**until**・**while**・**foreach**がある。  

</details>

<a name="practicalusePointer"></a>
<details><summary>応用知識-リファレンス</summary>

### [リファレンス](https://perldoc.jp/docs/perl/5.8.8/perlref.pod)
データの複雑な相互関係を表現するのに適している。  

公式サイトの説明を一部引用
> Perl はシンボリックリファレンスを変数として使うことを簡単にしただけでなく、 任意のデータについて「ハード」リファレンスを持つことを可能としたのです。  
> 任意のスカラはハードリファレンスを保持することができます。  
> 配列とハッシュはスカラから構成されているので、あなたはいまや配列の配列、 ハッシュの配列、配列のハッシュ、関数のハッシュの配列等々を簡単に 組み立てることができるのです。  
・・・中略・・・  
> Perlでリファレンスを使うのは非常に簡単です。  
> 原則のオーバーライドが一つあるだけです。  
> Perl はリファレンス(referencing)やデリファレンス(defreferencing)を 暗黙に行うことはありません。  
> スカラがリファレンスを保持しているとき、それは常に単純なスカラとして 振る舞います。  
> 勝手に配列や、ハッシュ、サブルーチンとして振る舞うようなことはありません。  
> デリファレンスをすることによって、自分で明示的に Perl に 教える必要があります。  

※句点で勝手に改行を入れた。  


<a name="practicalusePointerreference"></a>
#### リファレンス
利用方法は、リファレンスを取得したい対象の先頭に`\`を付けることで取得できる。  
元の変数のことを**リファレント**と言う(下記で言う **$foo**や **@ARGV**など)。  
※リファレンスカウントは、[変数](#variable変数)にて説明している。  

以下、リファレンス作成。
```Perl
$scalarref = \$foo;     # 配列
$arrayref  = \@ARGV;    # 配列
$hashref   = \%ENV;     # ハッシュ
$coderef   = \&handler; # 関数
$globref   = \*foo;     # 型グロブ
```
ただ、  
> バックスラッシュ演算子を使って IO ハンドル(ファイルハンドルまたは ディレクトリハンドル)へのリファレンスを生成することはできません。  

以下、[戻す](#practicalusePointerdereference)。
```Perl
say ${$scalarref};	# \$foo     配列
say @{$arrayref} ;	# \@ARGV    配列
    say $arrayref->[0];	# \@ARGV    配列の1つ目の要素。
    say $arrayref->[1];	# \@ARGV    配列の2つ目の要素。
say %{$hashref}  ;	# \%ENV     ハッシュ
    say $hashref->{key1};	# \%ENV     ハッシュのキー1(値を取り出す)。
    say $hashref->{key2};	# \%ENV     ハッシュのキー2(値を取り出す)。
say $coderef->();	# \&handler 関数(呼び出し後、変な数字が含まれてしまうのは、リターン結果を実行結果にしているため)。
say *{$globref}  ;	# \*foo     	←個人的には、同名の変数・配列・ハッシュ・関数を1つにまとめることができると思っている。
```
当たり前だが、配列のリファレンスに対して、ハッシュのリファレント扱いした場合、エラーになる([解決っぽい何か](#practicalusePointerreferentidentification))。  
※上記は、配列やハッシュの個々の取得にアロー演算子を活用した。  

例）
```perl
use v5.24;

my $hoge = "Perlプログラム";
my @hoge = ("配列-配列", "リファレンス");	# この末尾に文字列を追加する。

say "配列リファレンス";

sub arrayReferenceEdit() {
	my $one = shift @_;
	my $two = shift;	# 配列のアドレスを取得している(\@hoge)。

	say $one;
	# 以下、リファレンスとして配列のアドレスが代入されている。
	say $two;
	# 以下、デリファレンスしながら値の書き換え。
	for my $value ( @$two ) {
		say "$valueを書き換える。";
		# 出力結果：
#				配列-配列を書き換える。
#				リファレンスを書き換える。
		# 以下、書き換え実施。
		$value = "書き換え：" . $value . "を書き換える";
	}
}
&arrayReferenceEdit($hoge, \@hoge);

say $hoge[0];	# 書き換え：配列-配列を書き換える
say $hoge[1];	# 書き換え：リファレンスを書き換える
```
難しいが、C言語のポインタと思えば良いだろう。  
しかし、記号を使い分けるのは慣れないと思う。  


<a name="practicalusePointerreferentidentification"></a>
##### リファレントの識別。
配列のリファレンスを変数のリファレントとして扱う場合、エラーになる。  
そのエラーを事前に回避するには、`ref`関数を用いることで、識別し、適切なリファレントに紐付けられる。  

```perl
use v5.24;

sub refFunc(){
	return "ハンドラー関数";
}

sub trace(){
	my ($val) = @_;
	if (ref($val) eq 'SCALAR'){
		return "変数$$val";
	}
	elsif (ref($val) eq 'ARRAY'){
		return "配列@$val";
	}
	elsif (ref($val) eq 'HASH'){
		return "ハッシュ" . %{$val};
	}
	elsif (ref($val) eq 'CODE'){
		return "関数" . &{$val}();
	}
	elsif (ref($val) eq 'REF'){
		return "リファレンスのリファレンス";
	}
	else{
		return "不明($val)";
	}
}

sub referent() {
	my $foo  = 20211128;
	my @ARGV = (20211128, 20211129);
	my %ENV  = (20211128=>"hoge", 20211129=>"本日は晴天なり。");

	my $scalarref = \$foo;     # 変数
	my $arrayref  = \@ARGV;    # 配列
	my $hashref   = \%ENV;     # ハッシュ
	my $coderef   = \&refFunc; # 関数
	my $doublescalar = \$scalarref;	# 変数のリファレンスをリファレンス化。

	say ref($scalarref);	# 変数
					# SCALAR
	say ref($arrayref);		# 配列
					# ARRAY
	say ref($hashref);		# ハッシュ
					# HASH
	say ref($coderef);		# 関数
					# CODE
	say ref($doublescalar);	# 変数のリファレンスをリファレンス化。
					# REF

	say "識別：" . &trace($scalarref);	# 識別：変数20211128
	say "識別：" . &trace($arrayref);	# 識別：配列20211128 20211129
	say "識別：" . &trace($hashref);	# 識別：ハッシュ2
	say "識別：" . &trace($coderef);	# 識別：関数ハンドラー関数
	say "識別：" . &trace($doublescalar);	# 識別：リファレンスのリファレンス
}
&referent();
```
ちょっとばかり意図していない結果になった。  
個人的には、識別後に適切な処理をさせると思ったのだが、エラー用関数として動かすぐらいしかできないようだ。  
意図した動きは、今後の勉強次第で出来るようになるのだろう。  
そのためのオブジェクト指向プログラミングだと思っているが・・・。  

refの戻り値
|データ型|ref関数の戻り値|
|--------|---------------|
|スカラ値|undef|
|スカラへのリファレンス|"SCALAR"|
|配列へのリファレンス|"ARRAY"|
|ハッシュへのリファレンス|"HASH"|
|関数へのリファレンス|"CODE"|
|ファイルハンドルへのリファレンス|"IO"または"IO::Handle"|
|型グロブへのリファレンス|"GLOB"|
|事前コンパイルパターンへのリファレンス|"Regexp"|
|別のリファレンスへのリファレンス|"REF"|


<a name="practicalusePointerAnonymousarrayreference"></a>
##### 名前無し配列へのリファレンス(無名配列)
※"名前なし"とは、配列からリファレンスを作らずに、いきなり配列リファレンスを作ることを指す。  
> 名前の無い配列へのリファレンスは、大かっこを使って作ることができます:  

```perl
my $arrayref = [1, 2, ['a', 'b', 'c']];

say $arrayref->[0];		# 1
say $arrayref->[1];		# 2
say $arrayref->[2];		# ARRAY(0x7f91690037a8)
say $arrayref->[2][0];	# a
say $arrayref->[2][1];	# b
say $arrayref->[2][2];	# c
say $arrayref->[3];		# 空文字列(undef)
```

以下、失敗
```perl
my @two = ('a', 'b', 'c');
my @one = (1, 2, @two);
my $arrayref = [@one];

say $arrayref->[0];		# 1
say $arrayref->[1];		# 2
say $arrayref->[2];		# a
say $arrayref->[3];		# b
say $arrayref->[4];		# c
```
理由：配列の[平坦化](#subArrangement1Arrayflattening)が行われるため。 

以下、成功。
```perl
my @two = ('a', 'b', 'c');
my @one = (1, 2, \@two);
my $arrayref = [@one];  # my $arrayref = (\@one);	←☆同じ意味。

say $arrayref->[0];		# 1
say $arrayref->[1];		# 2
say $arrayref->[2];		# ARRAY(0x7f9fb2801b08)
say $arrayref->[2][0];	# a
say $arrayref->[2][1];	# b
say $arrayref->[2][2];	# c
```

難しい。  
C言語のポインタだと思っていたのだが難しい。  
よくよく考え直せば、もしかしてC言語のポインタを忘れている？  


<a name="practicalusePointerAnonymoushashreference"></a>
##### 名前無しハッシュへのリファレンス(無名ハッシュ)
※"名前なし"とは、ハッシュからリファレンスを作らずに、いきなりハッシュリファレンスを作ることを指す。  
> 名前の無いハッシュへのリファレンスは、中かっこを使って作ることができます:  

以下、無名のハッシュ例）
```perl
my $hashref = {
	Adam  => 'Eve',
	Clyde => 'Bonnie',
};

say $hashref->{Adam};	# Eve
say $hashref->{Clyde};	# Bonnie
say $hashref;			# HASH(0x7fa9be8037a8)
#say %hashref;	# Global symbol "%hashref" requires explicit package name (did you forget to declare "my %hashref"?) at test.pl line 10.
```

以下、無名ハッシュをネスト化
```perl
my $hashref = {
	spiderman  => {
		nickname1 => 'Spidey',
		nickname2 => 'Friendly Neighborhood',
		nickname3 => 'Web head',
		nickname4 => 'Web slinger',
	},
	character => {
		SpiderMan => 'Peter Benjamin Parker',
		MJ => 'Mary Jane Watson',
		firstnight => 'Gwendolyn "Gwen" Stacy',
	},
};

say $hashref->{spiderman}{nickname1};	# Spidey
say $hashref->{character}{SpiderMan};	# Peter Benjamin Parker
say $hashref;				# HASH(0x7f834f00d7d0)
say $hashref->{spiderman};	# HASH(0x7f834e8037a8)
say $hashref->{character};	# HASH(0x7f8350000c90)
say $hashref->{SpiderMan}{nickname1};	# 空文字列(undef)
```


<a name="practicalusePointerAnonymousfuncreference"></a>
##### 名前無し関数へのリファレンス(無名サブルーチン)
※"名前なし"とは、サブルーチンからリファレンスを作らずに、いきなりサブルーチンリファレンスを作ることを指す。  
> 無名サブルーチンのへのリファレンスは、サブルーチン名の無い sub を使って 作ることができます:  

以下、無名の関数例）
```perl
use v5.24;

my $boo = "本日は晴天なり。";
my @boo = ("本日は", "晴天なり。");

my $subfunc = sub {
			say $boo;	# 本日は晴天なり。
			$boo = "boo";
			say "引数：" . $_[0];	# 引数：関数内から関数外の無名関数を呼ぶ。

			return $boo;
	};

sub funcReference() {
	my $bar = say $subfunc->("関数内から関数外の無名関数を呼ぶ。");
	say $bar;	# boo
				# 1
	$bar = sub {
			say $boo . "関数内の無名サブルーチンからの表記" . $boo[0];
		};
	say $bar->();	# boo関数内の無名サブルーチンからの表記本日は
					# 1
}
my $hoge = \&funcReference;
$hoge->($boo, \@boo);
```
関数呼び出し後に表示される**1**は何？  
毎回疑問を持っているが、毎回調べないという・・・。  

※**クロージャ**によるオブジェクト指向の概念で説明が行われる。  
また、第5章と11章にも今回の無名サブルーチンを使う。  


#### シンボリックリファレンス
リファレンスとして使われた値が既に定義されていたときには、それはシンボリックリファレンスとして扱われるようだが、何を言っている？  

```perl
$name = "foo";

# 以下、全てエラーになる。
$$name = 1;         # Sets $foo
${$name} = 2;       # Sets $foo
${$name x 2} = 3;   # Sets $foofoo
$name->[0] = 4;     # Sets $foo[0]
@$name = ();        # Clears @foo
&$name();           # Calls &foo() (as in Perl 4)

# 5の代入が出来ずにエラーになる。
$pack = "THAT";
${"${pack}::$name"} = 5;    # Sets $THAT::foo without eval
```
この書き方が出来ないように`use strict 'refs';`を宣言すれば良い。  
宣言する場合は、ブロックで囲み、`no strict 'refs';`を宣言すれば良い。  


<a name="practicalusePointerdereference"></a>
#### デリファレンス
リファレンスの実体化？  

> 変数名やサブルーチン名の一部として識別子を置くところでは、適切な 型のリファレンスを持った単純スカラ変数でその識別子を 置き換えることができます:  

以下、変数用のデリファレンス。
```perl
use v5.24;

sub dereferenceScalar() {
	my $hoge = "bar";
	my $refhoge = \$hoge;

	say "以下、変数用のデリファレンス";
	say '通常の変数$hoge          ：' . "$hoge";
					# 出力結果：通常の変数$hoge          ：bar
	say 'リファレンス値$refhoge   ：' . "$refhoge";
					# 出力結果：リファレンス値$refhoge   ：SCALAR(0x7ff9b801c608)
	say 'デリファレンス値$$refhoge：' . "$$refhoge";
					# 出力結果：デリファレンス値$$refhoge：bar

}
&dereferenceScalar();
```

以下、配列用のデリファレンス。
```perl
sub dereferenceArray() {
	my @hoge = ("本日は晴天なり。", "bar", );
	my $refhoge = \@hoge;

	say "以下、配列用のデリファレンス";
	say '通常の配列@hoge          ：' . "@hoge";
					# 出力結果：通常の配列@hoge          ：本日は晴天なり。 bar
	say 'リファレンス値@refhoge   ：' . "$refhoge";
					# 出力結果：リファレンス値@refhoge   ：ARRAY(0x7ff9b801c770)
	say 'デリファレンス値@$refhoge：' . "@$refhoge";
					# 出力結果：デリファレンス値@$refhoge：本日は晴天なり。 bar
}
&dereferenceArray();
```

以下、ハッシュ用のデリファレンス。
```perl
sub dereferenceHash() {
	my %hoge = ("本日は晴天なり。", "bar", );
	my $refhoge = \%hoge;

	say "以下、ハッシュ用のデリファレンス";
	say '通常のハッシュ%hoge                    ：' . "%hoge";
					# 出力結果：通常のハッシュ%hoge                    ：%hoge
	while( my ($key, $value) = each %$refhoge ) {
		say '通常のハッシュ%hoge(%key, $value)      ：' . "$key -> $value";
					# 出力結果：通常のハッシュ%hoge(%key, $value)      ：本日は晴天なり。 -> bar
	}
	say 'リファレンス値%refhoge                 ：' . "%$refhoge";
					# 出力結果：リファレンス値%refhoge                 ：%HASH(0x7ff9b801c920)
	while( my ($key, $value) = each %$refhoge ) {
		say 'デリファレンス値%$refhoge(%key, $value)：' . "$key -> $value";
					# 出力結果：デリファレンス値%$refhoge(%key, $value)：本日は晴天なり。 -> bar
	}
}
&dereferenceHash();
```
※そもそもの[ハッシュとは](#practicaluseHash)  

当然関数用など他にもデリファレンスが必要なリファレンスもある。  


#### 入れ子
入れ子にできる種類は、複数ある。  

* 現在の確認項目  
  * 変数  
  * 配列  
  * ハッシュ  

* 未確認  
  * 関数  

以下、変数の入れ子・・・変数を入れ子するというのは可笑しいと言うか、不可能だよね。
```perl
sub scalarReference() {
	# 目的：配列をリファレンスとして配列の中に格納し、さらにそれをリファレンスとして配列に入れるという入れ子をすること。
	my $hoge1 = $hoge;	# 変数にスカラー値を代入する。
	my $bar = \$hoge1;	# それをリファレンスとして別の変数に代入する。
	say \$hoge1;				# SCALAR(0x7f87e1809b88)
	say $bar;					# SCALAR(0x7f87e1809b88)
	say $hoge;					# 本日は晴天なり。
	$hoge = \$bar;		# さらに、リファレンス変数が代入されている変数を別の変数にリファレンスとして代入する(混乱する)。
	say \$bar;					# REF(0x7f87e1809ba0)
	say $hoge;					# REF(0x7f87e1809ba0)
	say;
	say '$hogeをデリファレンス($$hoge)：' . "$$hoge";	# $hoge1 のアドレスが入っていると思っている。
				# 出力結果：$hogeをデリファレンス($$hoge)：SCALAR(0x7f87e1809b88)
	say '$$hogeをデリファレンス($$$hoge)：' . "$$$hoge";	# スカラー値 が入っていると思っている。
				# 出力結果：$$hogeをデリファレンス($$$hoge)：本日は晴天なり。
}
&scalarReference();
```

<a name="practicaluseReferencearray"></a>
以下、配列をリファレンスとして、配列に代入し、さらにその配列をリファレンスとして配列に代入するという入れ子をしている。
```perl
sub arrayReference() {
	say '@hogeの値：' . "@hoge";					# @hogeの値：20210923 Perl難しい
	my @hoge1 = ("hogeのアドレス格納用配列リファレンス", \@hoge);		# 配列に配列リファレンスを代入する。
	say '@hogeのアドレス：' . \@hoge;				# @hogeのアドレス：ARRAY(0x7fdda280a388)
	say '@hoge1の値：' . "@hoge1";					# @hoge1の値：hogeのアドレス格納用配列リファレンス ARRAY(0x7fdda280a388)
	my @bar = ("hoge1のアドレス格納用配列リファレンス", \@hoge1);	# それをリファレンスとして別の配列に代入する。
	say '@hoge1のアドレス：' . \@hoge1;				# @hoge1のアドレス：ARRAY(0x7fdda280aaf0)
	say '@barの値：' . "@bar";						# @barの値：hoge1のアドレス格納用配列リファレンス ARRAY(0x7fdda280aaf0)
	my @boo = (\@bar);		# さらに、リファレンス配列が代入されている配列を別の配列にリファレンスとして代入する(混乱する)。
	say '@barのアドレス：' . \@bar;					# @barのアドレス：ARRAY(0x7fdda280abb0)
	say '@booの値：' . "@boo";						# @booの値：ARRAY(0x7fdda280abb0)
					# 出力結果：

	say;
	say '@booの要素を出力($boo[0])：' . "$boo[0]";	# @bar のアドレスが入っていると思っている。
				# 出力結果：@booの要素を出力($boo[0])：ARRAY(0x7fdda280abb0)
	say '@booをデリファレンス($boo[0]->[0])：' . "$boo[0]->[0]";	# @bar の第1要素目が入っていると思っている。
				# 出力結果：@booをデリファレンス($boo[0]->[0])：hoge1のアドレス格納用配列リファレンス
	say '@booをデリファレンス($boo[0]->[1])：' . "$boo[0]->[1]";	# @bar の第2要素目が入っていると思っている(ここにhoge1のアドレスが入っている)。
				# 出力結果：@booをデリファレンス($boo[0]->[1])：ARRAY(0x7fdda280aaf0)
	say '@booをデリファレンス($boo[0]->[1][0])：' . "$boo[0]->[1][0]";	# @hoge1 の第1要素が入っていると思っている。
				# 出力結果：@booをデリファレンス($boo[0]->[1][0])：hogeのアドレス格納用配列リファレンス
	say '@booをデリファレンス($boo[0]->[1][1])：' . "$boo[0]->[1][1]";	# @hoge1 の第2要素が入っていると思っている(hogeのアドレスが入っている)。
				# 出力結果：@booをデリファレンス($boo[0]->[1][1])：ARRAY(0x7fdda280a388)
	say '@booをデリファレンス($boo[0]->[1][1][0])：' . "$boo[0]->[1][1][0]";	# @hoge の第1要素が入っていると思っている。
				# 出力結果：@booをデリファレンス($boo[0]->[1][1][0])：20210923
	say '@booをデリファレンス($boo[0]->[1][1][1])：' . "$boo[0]->[1][1][1]";	# @hoge の第2要素が入っていると思っている。
				# 出力結果：@booをデリファレンス($boo[0]->[1][1][1])：Perl難しい

	say;
	say \@hoge1;	# ARRAY(0x7fdda280aaf0)	←☆上記と同じ結果が出ている。
	say \@_;		# ARRAY(0x7fdda28181d8)
}
&arrayReference();
```
要は、これこそが2次元配列と言うことか？  


以下、配列のリファレンスを変数に代入し、その変数のリファレンスを変数に代入している。
```perl
sub arrayReference() {
	my $refhoge = \@hoge;			# 変数に配列リファレンスを代入する。
	my $refbar = \$refhoge;	# それをリファレンスとして別の変数に代入する。
	my $hoge = \$refbar;		# さらに、リファレンス変数が代入されている変数を別の変数にリファレンスとして代入する(混乱する)。

	say '@hogeの値を出力：' . "@hoge";	# そもそもの値確認。
					# 出力結果：@hogeの値を出力：20210923 Perl難しい

	say;
	say '$hogeの値を出力  ：' . "$hoge";	# $refbar のアドレスが入っていると思っている(最終結果)。
					# 出力結果：$hogeの値を出力  ：REF(0x7fba480140e8)
	say '$refbarのアドレス：' . \$refbar;	# $refbarのアドレス：REF(0x7fba480140e8)
	say '$hogeをデリファレンス：' . "$$hoge";	# $refbar が入っていると思っている。
					# 出力結果：$hogeをデリファレンス：REF(0x7fba48014160)
	say '$refhogeのアドレス   ：' . \$refhoge;	# $refhogeのアドレス   ：REF(0x7fba48014160)

	say;
	my $dehoge = $$hoge;	# $refbar が代入されたと思っている。
	say '$dehogeを出力：' . "$dehoge";	# $refbar が入っていると思っている。
					# 出力結果：$dehogeを出力：REF(0x7fba48014160)
	say '$dehogeを出力：' . "$$hoge";	# $refbar が入っていると思っている。
					# 出力結果：$dehogeを出力：REF(0x7fba48014160)

	say;
	my $dedehoge = $$dehoge;
	say '$dedehogeを出力：' . "$dedehoge";	# $refhoge が入っていると思っている。
					# 出力結果：$dedehogeを出力：ARRAY(0x7fba48005d88)
	say '$dedehogeを出力：' . "$$$hoge";	# $refhoge が入っていると思っている。
					# 出力結果：$dedehogeを出力：ARRAY(0x7fba48005d88)

	say;
	say '@hogeを出力：' . "@$$$hoge";	# $hoge が入っていると思っている。
					# 出力結果：@hogeを出力：20210923 Perl難しい
	say '$hoge[0]を出力：' . "$$$$hoge[0]";	# $hoge が入っていると思っている。
					# 出力結果：$hoge[0]を出力：20210923
	say '$hoge[1]を出力：' . "$$$$hoge[1]";	# $hoge が入っていると思っている。
					# 出力結果：$hoge[1]を出力：Perl難しい

}
&arrayReference();
```
これをするだけの利益はあるのだろうか。  

以下、ハッシュをリファレンスとして変数に代入し、その変数をリファレンスとして変数に代入している。
```perl
sub hashReference() {
	my %hogehash = (%hoge);			# ハッシュにハッシュリファレンスを代入する。
	my $barhash = \%hogehash;	# それをリファレンスとして別のハッシュに代入する。
	my $boo = \$barhash;	# さらに、ハッシュリファレンスが代入されているハッシュを別のハッシュにリファレンスとして代入する(混乱する)。

	my $deboo = $$boo;	# ハッシュのリファレンスをデリファレンスした($barhashになっている)。
	my %dedeboo = %$deboo;	# ハッシュのリファレンスをデリファレンスした($hogehashになっている)。
	while( my ($key, $value) = each %dedeboo ) {
		say '%dedebooの要素を出力($boo[0])：' . "$key -> $value";	# %barhash が入っていると思っている。
			# 出力結果：
#					%dedebooの要素を出力($boo[0])：hoge -> 20210923
#					%dedebooの要素を出力($boo[0])：boo -> 本日は晴天なり。
#					%dedebooの要素を出力($boo[0])：bar -> Perl難しい
	}

	while( my ($key, $value) = each %$$boo ) {
		say '%hogeの要素を出力(%$$boo)：' . "$key -> $value";	# %barhash が入っていると思っている。
			# 出力結果：
#					%hogeの要素を出力(%$$boo)：hoge -> 20210923
#					%hogeの要素を出力(%$$boo)：bar -> Perl難しい
#					%hogeの要素を出力(%$$boo)：boo -> 本日は晴天なり。
	}
}
&hashReference();
```
本当にやりたかったことは、ハッシュのネストであって、これではない。  


#### スコープ


#### サブルーチンへのリファレンス


#### 応用利用

</details>

<a name="practicaluseHash"></a>
<details><summary>応用知識-ハッシュ(連想配列)</summary>

### [ハッシュ(連想配列)](https://perldoc.jp/func/values)
> リストコンテキストでは、指定したハッシュのすべての値を返します。  

[キー/値のハッシュスライス](https://perldoc.jp/docs/perl/5.34.0/perldata.pod#Key47Value32Hash32Slices)  
※[リファレンス](#practicalusePointer)のハッシュもある。

* 3つの特徴  
  * キーは重複不可(一意であること)。  
  * 値は重複可能。  
  * 順番は存在しない。  

* Perlでの哲学  
  * ハッシュの大きさに制限はない。  


#### 作成方法
様式：`%ハッシュ名 = ('キー1', 値1, 'キー2', 値2, ・・・ );`  
`%ハッシュ名 = (キー1=>値1, キー2=>値2, ・・・ );`  
例）
```perl
my %hoge = (
	hoge => 20210922,
	bar  => 9784873118246,
	boo  => "本日は晴天なり。",
);
```
※キー(左辺)が文字列の場合は、シングルクォーテーションで囲む、もしくは、`=>`を使う場合は省略可能。  
当然右辺が文字列の場合は、クォーテーション記号が必要になる。  
※丸括弧`()`の意味は、リスト。  


コピーもできるが、負担が掛かるため、止めた方が良い。
`my %new_has = %old_hash;`  


#### 取得方法
愚痴：作成方法が丸括弧で、取得方法が波括弧なのは混乱する(リストとの区別が付かないのが原因)。  
`$ハッシュ名{キー};`  


```perl
sub associativearray() {
	my %hoge = (
		'hoge' => 100006601775326,
		'boo'  => 100011324721840,
		'bar'  => "300505",
	);

	say "$hoge{'hoge'}";			# 100006601775326
	say "$hoge{'100006601775326'}";	# 空文字列

	for my $key (keys(%hoge)) {
		my $value = $hoge{$key};
		say "$key -> $value";
		# 出力結果：
#				hoge -> 100006601775326
#				boo -> 100011324721840
#				bar -> 300505
	}
	say "%hoge";	# %hoge
	say %hoge;		# hoge100006601775326boo100011324721840bar300505	←☆当然実行ごとに値が変わる。
}
&associativearray();
```


#### 変更方法
様式：
`$ハッシュ名{キー} = 値;`  
※**キー**にスペースを含まない場合、クォーテーション記号は不要。  


##### キーと値を入れ替える。
**reverse**により、入れ替えが可能。  

```perl
sub associativearray() {
	my %hoge = (
		hoge => 100006601775326,
		boo  => 100011324721840,
		bar  => "300505",
	);

	for my $key (keys(%hoge)) {
		my $value = $hoge{$key};
		say "$key -> $value";
		# 出力結果：
#				hoge -> 100006601775326
#				boo -> 100011324721840
#				bar -> 300505
	}
	say "-" x 30;
	my %revershoge = reverse %hoge;
	for my $key (keys(%revershoge)) {
		my $value = $revershoge{$key};
		say "$key -> $value";
		# 出力結果：
#				100006601775326 -> hoge
#				100011324721840 -> boo
#				300505 -> bar
	}
}
&associativearray();
```


##### keys関数・values関数
順不同ではあるが、かならず対になる取得ができる。  
先頭から末尾までを1つづつ取り出すには、**keys**・**values**・[**each**](#practicaluseHasheach)の3種類が使える。  

```perl
sub associativearray() {
	my %hoge = (
		hoge => 100006601775326,
		boo  => 100011324721840,
		bar  => "300505",
	);

	my @key = keys %hoge;
	my @value = values %hoge;
	say "キー：@key";	# キー：hoge bar boo
	say "値：@value";	# 値：100006601775326 300505 100011324721840

	say "以下、組数";
	my $count = keys %hoge;
	say "個数：$count";	# 個数：3
	my $count = values %hoge;
	say "個数：$count";	# 個数：3

	if (%hoge) {
		say "ハッシュ内容がある。";	# ハッシュ内容がある。
	}
}
&associativearray();
```


<a name="practicaluseHashdslice"></a>
##### スライス
ハッシュへの操作方法の応用として、ハッシュ値をスライス方法にて変更する。  

以下、そのプログラム。
```perl
sub associativearray() {
	my %boo = (
		boo => 20211119,
		bar => 9784873118246,
		hoge => "BK4873118247",
	);

	# 以下、通常の値出力方法。
	say "$boo{boo}, $boo{bar}";	# 20211119, 9784873118246

	# 以下、スライスでの出力方法。
	say @boo{"boo", "bar"};	# 202111199784873118246
	say @boo{qw(boo bar)};	# 202111199784873118246

	# 以下、スライスでの値変更。
	@boo{qw(boo bar)} = (123, 456);
	say @boo{qw(boo bar)};	# 123456
	say "$boo{boo}";	# 123
	say "$boo{bar}";	# 456
	say "$boo{hoge}";	# BK4873118247
}
&associativearray();
```
あいにく、削除や追加方法は分からなかった。  
しかし、ハッシュ相手なのだから不要だろう。  
[削除方法](#practicaluseHashdelete)は必要だよな。  


##### キーの並べ替え
正しいやり方が分からない。  

```perl
	my %hoge = (
		hoge => 20210922,
		boo => 4873118247,
		bar => "sort",
	);

	foreach ( sort keys %hoge ) {
		say "$_ -> $hoge{$_}";
	}
```


##### 値での並べ替え
正しいやり方が分からない。  

```perl
	my %hoge = (
		hoge => 20210922,
		boo => 4873118247,
		bar => "sort",
	);

	foreach ( sort { $hoge{$a} <=> $hoge{$b} } keys %hoge ) {
		say "$_ -> $hoge{$_}";
	}
```


#### キーの重複
上書きされる。  

追加代入様式：
`$既存のハッシュ名{追加したいキー名} = 追加したい値;`  


<a name="practicaluseHashforeach"></a>
#### 繰り返し処理(通常取り出し)。
取り出すものによって、取得方法が異なる(当たり前のこと)。  

以下、値のみを得る方法。
```perl
sub associativearray() {
	my %hoge = (
		hoge => 20211118,
		booo => 9784873118246,
		barr => "本日は晴天なり。",
	);
	# 左辺がキー・右辺が値。

	foreach my $key ( keys %hoge ){
		say "$hoge{$key}";
#				9784873118246
#				20211118
#				本日は晴天なり。
	}
}
&associativearray();
```

以下、値のみを得る方法(第2弾)。
```perl
sub associativearray() {
	my %hoge = (
		hoge => 20211118,
		booo => 9784873118246,
		barr => "本日は晴天なり。",
	);
	# 左辺がキー・右辺が値。

	foreach my $value ( values %hoge ) {
		say $value;
#				20211118
#				9784873118246
#				本日は晴天なり。
		say $hoge{$value};	# ←☆想定通りに空文字だった(当然3行分空文字として出力されている)。
	}
}
&associativearray();
```


<a name="practicaluseHasheach"></a>
#### 繰り返し処理(`each`関数)。

```perl
sub associativearray() {
	my %hoge = (
		hoge => 20210922,
		boo => 20180120,
		bar => "続・初めてのPerl 改訂第2版",
	);

	while( my ($key, $value) = each %hoge ) {
		say "$key -> $value";
		# 出力結果：
#					bar -> 続・初めてのPerl 改訂第2版
#					boo -> 20180120
#					hoge -> 20210922
	}
}
&associativearray();
```
ループ内であれば、eachが実行されるたびに、次のキーと値の対が取得される。  
これは、反復子(イテレータ：iterator)技術により、現在値を保持しているため。  


##### 既存キーの確認方法(`exists`関数)。
キーが存在すれば、どのようなキーだろうが、存在するとして扱われる。  

```perl
sub associativearray() {
	my %hoge = (
		hoge => 20210923,
		boo  => 20210922,
	);

	if ( exists $hoge{"hoge"} ) {
		say '$hoge{"hoge"}が存在する。';
				# 出力結果：$hoge{"hoge"}が存在する。
	}
	if ( exists $hoge{"bar"} ) {
		say '$hoge{"bar"}が存在する。';
				# 出力結果：
				# 出力しない。
	}
}
&associativearray();
```


<a name="practicaluseHashdelete"></a>
#### 値の削除方法(`delete`関数)。
削除すると言うことは、ハッシュ定義内から消すと言うことであり、`undef`を代入することではない。  

```perl
sub associativearray() {
	my %hoge = (
		hoge => 4873118247,
		boo => 20210922,
		bar => "本日は晴天なり。",
	);

	while( my ($key, $value) = each %hoge ) {
		say "$key -> $value";
		# 出力結果：
#				hoge -> 4873118247
#				boo -> 20210922
#				bar -> 本日は晴天なり。
	}

	say "-" x 30;
	delete $hoge{'hoge'};
	while( my ($key, $value) = each %hoge ) {
		say "$key -> $value";
		# 出力結果：
#				boo -> 20210922
#				bar -> 本日は晴天なり。
	}
}
&associativearray();
```


#### OSの環境変数(`%ENV`)

以下、環境変数をPerlで取得する。
```terminal
$ set | grep HISTCONTROL
HISTCONTROL=ignoreboth
$
```

以下、取得できている。
```perl
say "$ENV{HISTCONTROL}";	# ignoreboth
```

何に使うのか分からないが、GoでのGUI開発は日本語文字を取得するのに環境変数を利用しているな・・・。  

</details>

<a name="practicaluseModule"></a>
<details><summary>応用知識-モジュール</summary>

基本的には[Perlドキュメント](https://perldoc.jp)を見た方が良いようだ。  
もしくは、普通にHelpを使う。  
例）
```terminal
$ perldoc File::Basename
    File::Basename - Parse file paths into directory, filename and suffix.

SYNOPSIS
　　　・
　　　・
　　　・
$
```
そもそもモジュールと[パッケージ](#practicalusePackages)はどう違う？  


<a name="practicaluseModulemain"></a>
### [モジュール](https://perldoc.jp/docs/perl/5.20.1/perlmod.pod)
車輪の再開発をせずに、望む車輪を選べ、そして使える。  
**use**ステートメントにより、標準ディレクトリから探し出し、一致ファイルの内部コードを使えるようにする。  

例）
`use Database::Access::Control;`  
* **::** をOSごとに、適切なPathに置き換える。  
  * Unix・Linux・OS/2  
    `Database/Access/Control.pm`  
  * Windows  
    `Database\Access\Control.pm`  
  * MacOS  
    `Database:Access:Control.pm`  
  * VMS  
    `[Database:Access]Control.pm`  

* グローバグ配列変数  
  * **@INC**  
    以下を変更もしくは、追加できる。  
    標準ライブラリ  
    ユーザ定義ライブラリのディレクトリ  
  * import文  
    **import**と言うサブルーチンから探し出し、使う。  

* モジュールのセットアップ  
  1. モジュールを格納したい標準ライブラリディレクトリを選択する。  
     `~/Home/`など？  
  1. このディレクトリの存在をPerlに指示する。  
     `use lib "/Users/asakunotomohiro/lib/perl5/";	# ←☆変数は使えないため気をつけること。`  
     `BEGIN { push @INC, "/Users/asakunotomohiro/lib/perl5/"; }`  
     ~~`BEGIN { unshift @INC, "/Users/asakunotomohiro/lib/perl5/"; }`~~  
     ※`use lib`とは、ライブラリを使うのではなく、ライブラリを探すPathの設定をするだけ。  
  1. モジュール名の各コンポーネント(最後のコンポーネントを除く)に対応するサブディレクトリを標準ライブラリの下にネストして作成する。  
     モジュール名例）`AAAA::SSS::KKK::NNN`  
     ディレクトリ例）`AAAA/SSS/KKK`  
  1. 最下位のサブディレクトリにテキストファイルを作成する。  
     ファイル名例）`NNN.pm`  
  1. このテキストファイルにコードを挿入する。  
  1. テキストファイルの末尾に、真に評価される付加的なステートメントを追加する。  
     `1;`  

* モジュール内のバージョン制御  
  * 使うモジュールのバージョン指定。  
    `use Database::Access::Control 1.20;`  
  * [パッケージ](#practicalusePackages)内でのバージョン指定。  
    `$VERSION = 1.00;`  

* モジュール内のエクスポート制御  
  **import**サブルーチンを呼び出すが、標準では何もしない。  
  そして、独自に作ることで、その動作を変更できる。  
  * 個別呼び出しに応じたモジュールも存在する。  
    呼び出し例）
    `use File::Basename qw(fileparse basename)`  
    ※この場合は、サブルーチンとして**dirname**ルーチンを呼び出さないことになる。  
    そして、dirnameを個別に呼び出したい場合、`File::Basename::dirname($hoge);`とすればいい。  
  * サブルーチン呼び出し不可。  
    例）
    `use File::Basename ();`  
    これにより、サブルーチンを呼び出さないことになる。  
    また、`use File::Basename;`の場合は、デフォルトのサブルーチン呼び出しが発生する(モジュール開発者が決めている)。  


上記の説明、だいたい分からない。  
todo: もういちど読み直す。  


</details>

<a name="practicalusePackages"></a>
<details><summary>応用知識-パッケージ</summary>

どちらかと言えば、基礎知識5種類の関数のうちスコープに当てはまりそうな気がする。  


<a name="practicalusePackagesmain"></a>
### パッケージ
スコープがパッケージになったと思えば良い。  

```perl
use v5.24;

sub sample() {
	say "mainパッケージ";	←☆パッケージの区切りをしていない場合、メインパッケージ扱いされる。
}

package Subboo;	←☆ここ以降がサブbooパッケージ。
sub sample(){
	say "Subbooパッケージ";
}
&sample("boo");	←☆パッケージないのサンプル関数を呼び出す。
#	出力結果：Subbooパッケージ

main::sample();	←☆外部パッケージのサンプル関数を呼び出すため、それを明記している。
#	出力結果：mainパッケージ

Subbar::sample()	←☆外部パッケージのサンプル関数を呼び出すため、それを明記している。;
#	出力結果：Subbarパッケージ

package Subbar;	←☆ここ以降がサブbarパッケージ。
sub sample(){
	say "Subbarパッケージ";
}
```

上記は、1つづつパッケージに関数などが納められている。  
私の想定した入れ子ができると思ったが出来そうにない。  
例えば、AパッケージにBパッケージが入っているようなこと。  
この定義は、上記の挙動通り、別パッケージになる。  
また、入れ子ではなく、パッケージの階層を深くすることはできる。  
その理由は、かぶらないようにするためだろう。  
以下、そのプログラム。
```perl
use v5.24;

sub sample(){	←☆パッケージ名を付けていないため、メインパッケージになる。
	say "mainパッケージ";
}

package Subboo::bar::hoge;
sub sample(){
	say "Subboo入れ子パッケージhoge";
}
&sample();
#	出力結果：Subパッケージhoge

package Subboo::bar::barboo;
sub sample(){
	say "Subboo入れ子パッケージbarboo";
}
&sample();
#	出力結果：Subboo入れ子パッケージbarboo

package Subboo;
sub sample(){
	say "Subboo単体パッケージ";
}

package Subboo::bar::hoge;
sub sample(){	←☆同じパッケージ名の同じ関数名が上記にある。
	say "Subパッケージhoge";
}

package main;
Subboo::bar::hoge::sample();	←☆同じパッケージ名の同じ関数名の1つを呼ぶ。
#	出力結果：Subパッケージhoge	←☆後ろにある関数が呼ばれる。

Subboo::sample();
#	出力結果：Subboo単体パッケージ

Subboo::bar::hoge::sample();
#	出力結果：Subパッケージhoge

Subboo::bar::barboo::sample();
#	出力結果：Subboo入れ子パッケージbarboo

sample();	←☆先頭のメインパッケージにある関数を呼ぶ。
#	出力結果：mainパッケージ
```
勝手に、パッケージの重ね掛けと命名したが、よくよく見れば入れ子かな・・・しかしな・・・。  
とりあえず、階層を深くし、途中のパッケージ名を変えることで、機能ごとに分ける価値が生まれる・・・と思う。  


#### パッケージ内でのバージョン指定
パッケージ内での利用Perlバージョンを指定する場合、バージョン変数に設定する。  
`$VERSION = 1.00;`  
当たり前だが、**my**を付けてはならない。  
また、付ける必要がある場合は、完全修飾のバージョン指定が必要になる。  

```perl
package Subboo::bar::hoge;
use strict;
$Subboo::bar::hoge::VERSION = 1.00;
```


#### パッケージ変数
利用不可。  
バージョンの問題から変数宣言時に`my`を付ける必要がある。  
これを付けた場合、[レキシカル変数](#subVariable2)になってしまう。  

</details>

<a name="practicaluseAutoload"></a>
<details><summary>応用知識-自動ロード</summary>

基本的に、関数呼び出し時に、その関数がない場合エラーになる。  
それを回避するために、スタブ(?)とした関数を呼び出せるようになっている。  
それをキャッチオールサブルーチンと言い、それをAUTOLOADとも言う。  
※自動ロード時に発生する関数名が`$AUTOLOAD`に格納されるのだが、**v5.10**以下に限定されている(回避方法不明)。  

```perl
use v5.24;

Sub::hoge::boo::sample();
#	出力結果：Sub入れ子パッケージsample関数

#	以下、キャッチオールサブルーチン未定義での呼び出し結果。
#Sub::hoge::boo::testFunc();
#	出力結果：Undefined subroutine &Sub::hoge::boo::testFunc called at 自動ロード(Autoload).pl line 7.

#	以下、キャッチオールサブルーチン定義実施後の呼び出し結果。
Sub::hoge::boo::testFunc();
#	出力結果：未定義関数(Sub::hoge::boo::testFunc)呼び出し。

#	以下、キャッチオールサブルーチン定義実施後の呼び出し結果(v5.11以降)。
#Sub::hoge::boo::testFunc();
#	出力結果：Global symbol "$AUTOLOAD" requires explicit package name (did you forget to declare "my $AUTOLOAD"?) at 自動ロード(Autoload).pl line 28.

#	以下、キャッチオールサブルーチン定義実施後の呼び出し結果(v5.11以降)。
#		my $AUTOLOAD;
#Sub::hoge::boo::testFunc();
#	出力結果：未定義関数()呼び出し。

use v5.10;	# ここ以降、このバージョンで動く。

package Sub::hoge::boo;
sub AUTOLOAD{
#	my $AUTOLOAD;
	say "未定義関数($AUTOLOAD)呼び出し。";
}

sub sample(){
	say "Sub入れ子パッケージsample関数";
}
```

</details>

<a name="practicaluseClosure"></a>
<details><summary>応用知識-クロージャ</summary>

今まで、[リファレンス](#practicalusePointer)での[無名関数](#practicalusePointerAnonymousfuncreference)だと思っていたが、違うようだ。  
Perlの**クロージャ**とは、**関数外で宣言された変数を関数内で呼び出すこと**を指す。  

以下、基本的なクロージャプログラム。
```perl
use v5.24;

{	←☆このブロック外から`$hoge`変数を使えない(唯一使う方法は、sample関数経由をすること)。
	my $hoge = "borhogebar";	←☆関数外で宣言された変数を関数内で使っていることに意味がある。
	sub sample(){	←☆この関数名がクロージャとして宣言されたことになる。
		say "$hoge";
	}
	&sample();
	#	出力結果：borhogebar
}
#say "$hoge";
#	出力結果：Global symbol "$hoge" requires explicit package name (did you forget to declare "my $hoge"?) at クロージャの基本.pl line 13.
#			Execution of クロージャの基本.pl aborted due to compilation errors.

&sample();
#	出力結果：borhogebar
```
要は、関数外での変数利用は、関数内からのみにすることがクロージャの役割と言うこと。  
それをするためには、ブロックで囲む必要があると言うこと。  

以下、変数の生存期間が呼び出され後も生きていることの確認。
```perl
use v5.24;

sub closure
{
	my $hoge = "borhogebar" . $_[0];
	sub sample(){
		say "$hoge";
	}
	&sample();
}
&sample();
#	出力結果：空文字列(undef)

&closure();
#	出力結果：borhogebar

&closure("引数");
#	出力結果：borhogebar	←☆上記1回目の呼び出しにて、変数が作られているため、今回の呼び出しでは、前回作成した変数を使い回している。
```
クロージャで気をつける箇所が、この変数の生存期間(スコープ)部分になる。  

以下、何とか変数の生存期間を無視できるようになった(当たり前だが、クロージャの使い方として間違っているだろう)。
```perl
use v5.24;

sub closure
{
	my $hoge = "borhogebar" . $_[0];
	my $func = sub {
		return "$hoge";
	};
	say $func->();
}
&closure();
#	出力結果：borhogebar

&closure("引数");
#	出力結果：borhogebar引数

&closure("2回目の呼び出し");
#	出力結果：borhogebar2回目の呼び出し
```
クロージャの利点は、変数の使い回しのはずなので、このプログラムは根本的に間違っているはず。  

以下、クロージャと無名関数の正しい使い方のはず(特に後半部分)。
```perl
use v5.24;

sub closure
{
	my $hoge = 20211211 + $_[0];
	sub {
		$hoge += $_[0];	# 変数への加算
	};
}
my $func = &closure(1);	# 20211212を基準になる。
say &closure();
#	出力結果：CODE(0x7fbc1a002ba0)

say &closure->();	# 20211212
#	出力結果：20211211

say &closure->(0);	# 20211212+0
#	出力結果：20211211

say &closure->(100);	# 20211212+100
#	出力結果：20211311

say &closure->(1);	# 20211212+1
#	出力結果：20211212

say "上記は、全て単発呼び出しになっている。以下は、変数を使い回している(変数への加算が行われている)。";

say $func->(111);	# 20211212+111
#	出力結果：20211323

say $func->(5);	# 20211212+111+5
#	出力結果：20211328
```

</details>

<a name="practicaluseTypeglob"></a>
<details><summary>応用知識-型グロブ</summary>

数時間調べたが、結局[型グロブ](https://perldoc.jp/docs/perl/5.8.8/perldata.pod)が何か分からなかった。  
書籍の中で、`FILE`と言う文言に対して、`$FILE`・`@FILE`・`%FILE`・`&FILE`の説明をしているが、**FILE**に限定されていると言うことか？  
もしくは、FILEが固有変数で、好きに割り当てることにより、柔軟なプログラムになると言うことか？  
普通のファイルを指す変数だと思ったが、違う？  
その場合、普通のファイルを使う場合とかぶる？  
違うようだ。  
`*`記号を使うことを説明しているようで、あとに続く名前は何でも良いようだ。  

変数の宣言をする場合、**my**を付けてはならない。  
付けるのは、**our**だ。  

```perl
use v5.24;

our $boo = "本日は晴天なり。";
our @boo = ("本日は", "晴天なり。");
our %boo = (
				1=>"boo",
				2=>"bar",
				3=>"hoge",
			);
sub boo() {
		say "boo関数";
		my $bar = "晴天なり。";
		my @bar = (20211211, 20211212, );
		my %bar = (
						$bar[0]=>$bar . "本日は",
						$bar[1]=>$bar . "bar",
						);
		return 0;
	};

# 型グロブのリファレンス作成。
my $hoge = \*boo;

say $boo;	# 本日は晴天なり。
say *boo;	# *main::boo
say \*boo;	# GLOB(0x7f83e581c188)
say $hoge;	# GLOB(0x7f83e581c188)

say "-" x 30;

say ${*hoge};	# 空文字列(undef)
say ${*$hoge};	# 本日は晴天なり。

say "-" x 30;

say &{*$hoge}();	# boo関数
say "@{*$hoge}";	# 本日は 晴天なり。
say ${*$hoge}[0];	# 本日は
say ${*$hoge}[1];	# 晴天なり。
say %{*$hoge};		# 2bar3hoge1boo
say "%{*$hoge}{1}";	# %{*GLOB(0x7fa06a003388)}{1}
say %{*$hoge}{1};	# 1boo
say %{*$hoge}{2};	# 2bar
say %{*$hoge}{3};	# 3hoge
```
しどろもどろで作ったプログラムのため、あっているのか分からないが、とりあえず紐付けはできた・・・ようだ。  

</details>

<a name="practicaluseObjectorientation"></a>
<details><summary>応用知識-オブジェクト指向</summary>

<details><summary>参考文献</summary>

* 1冊目  
  書籍名：オブジェクト指向Perlマスターコース―オブジェクト指向の概念とPerlによる実装方法  
概要
> Perlによるオブジェクト指向プログラミングの実践技法を紹介します。  
> 継承、ポリモーフィズム、カプセル化などのオブジェクト指向の概念を分かりやすく解説し、それら概念をPerlで実装する具体的な方法をサンプルコードを示しながら詳説します。  
> 保守性と再利用性に富んだPerlプログラムを構築するためのテクニックが凝縮された一冊といえるでしょう。  

20年以上前の本ではあるが、最近出版されたオブジェクト指向を対象とした、かつ、Perl言語の2つを組み合わせはない。  
Java言語当たりを対象としたオブジェクト指向本が主流になっている。  
残念ではあるが、そもそもがオブジェクト指向向けの言語ではないのだから当たり前と言えば当たり前ではある。  

* 目次  
  1. 章 オブジェクト指向入門
  1. 章 Perl入門
  1. 章 オブジェクト指向Perl入門
  1. 章 配列とスカラのbless
  1. 章 その他のデータ型のbless
  1. 章 継承
  1. 章 ポリモーフィズム
  1. 章 クラス生成の自動化
  1. 章 統合
  1. 章 演算子のオーバーロード
  1. 章 カプセル化
  1. 章 総称
  1. 章 多重ディスパッチ
  1. 章 永続オブジェクト
  1. 付録
  * 付録A クイックリファレンス
  * 付録B 他の言語との比較
  * 付録C 参考文献
  * 付録D 用語集

</details>


### [オブジェクト指向](https://perldoc.jp/docs/perl/5.10.0/perltoot.pod)
オブジェクト指向とは何かという初心者として始める。  
C言語出身なもので・・・。  

Perlとオブジェクト指向との関係は、後付けのものであり、生来ではない。  
そのため、中途半端になっているそうだ。  
例えば、型保証と適切なデータカプセル化を強制しておらず、継承も完全なサポートになっていないそうだ。  
そして、オブジェクト経由でのメソッド呼び出しは、通常のPerlサブルーチン呼び出しよりも著しく遅いそうだ。  
もっとも、今から20年以上前のことなので、今はどうなっているのか分からない。  

非オブジェクト指向プログラムに比べて20〜50%の速度低下があるとは言え、20年以上前の出来事であるため、最近発売された[MacBook Pro-Apple M1 Maxチップ](https://www.apple.com/jp/macbook-pro-14-and-16/)を使いさえすれば、瞬く間にプログラムは正常終了することだろう。  


<a name="objectorientedPerl4894713004one"></a>
#### 第1章 オブジェクト指向入門
* 概要
オブジェクト指向の基本事項(オブジェクト・クラス・属性・メソッド・継承・ポリモーフィズム・集約・インタフェイス・総称性・永続性)について復習する。  

* オブジェクト指向理論5種類。  
  この5種類を把握することで、オブジェクト指向の大半を理解したと言い切れる(残りの少しを会得しづらいのだろう)。  
  * **[オブジェクトとは](#objectorientedPerl4894713004oneObject)**  
    データの特定・アクセス・修正・保護を行う手段の提供。  
  * **[クラスとは](#objectorientedPerl4894713004oneClass)**  
    特定オブジェクトからのアクセス可能なデータ種類及びアクセス方法を記述したものの提供。  
  * **[メソッドとは](#objectorientedPerl4894713004oneMethod)**  
    オブジェクトのデータに対するアクセス・修正・処理を行うための手段の提供。  
  * **[継承とは](#objectorientedPerl4894713004oneInheritance)**  
    オブジェクトの既存クラスにデータもしくはメソッドを追加する手段の提供。  
  * **[ポリモーフィズム(多態性)とは](#objectorientedPerl4894713004oneDiversity)**  
    個々のオブジェクトに属するクラスに応じて、同じメッセージに対して異なった応答を行うことが可能な手段の提供。  
    プログラミング言語によっては、かなりしんどい定義方法になる。  

余談：
執筆時点でオブジェクト指向プログラミングは30年の歴史があったようだ。  
そのため、現在では、半世紀ほどの歴史がある概念だった。  
私が学生時代からあるのだから当然と言えば当然か。  
半世紀ほど前にオブジェクト指向プログラミングに触れた程度の人は忘れていることを考慮し、1章目で概念から説明を始めたようだ。  

懺悔：
これらの説明だけでも数十ページある。  
要は、挫折した。  
todo: 後日読み直す。  


<a name="objectorientedPerl4894713004oneObject"></a>
##### オブジェクトとは


別名：
クラスインスタンス・インスタンス変数  


<a name="objectorientedPerl4894713004oneClass"></a>
##### クラスとは


別名：
ユーザ定義型・オブジェクトテンプレート・メタオブジェクト・パッケージ・モジュール  


<a name="objectorientedPerl4894713004oneMethod"></a>
##### メソッドとは


別名：？  


<a name="objectorientedPerl4894713004oneInheritance"></a>
##### 継承とは


別名：
サブクラス化・クラスの特殊化・導出  


<a name="objectorientedPerl4894713004oneDiversity"></a>
##### ポリモーフィズム(多態性)とは


別名：？  


<a name="objectorientedPerl4894713004two"></a>
#### 第2章 Perl入門
Perlにおけるオブジェクト指向は、標準的な言語機能(ハッシュ・パッケージ・サブルーチン・リファレンス)を用いることで実現するらしく、他のプログラミング言語では考えられないほど少ない機能で実現する必要がある。  
この他に、結合要素というのを使うそうだ。  

* Perlの中核要素  
  * [スカラ(変数)](#variable変数)  
    厳密には、変数とスカラは異なる。  
  * [配列](#arrangement配列)  
  * [ハッシュ](#practicaluseHash)  
  * [関数(サブルーチン)](#function関数)  
  * [リファレンス・リファレント](#practicalusePointer)  
  * [パッケージ](#practicalusePackages)  

* Perlの非中核要素  
  * [モジュール](#practicaluseModule)  
  * [自動ロード](#practicaluseAutoload)  
  * [クロージャ](#practicaluseClosure)  
  * [型グロブ](#practicaluseTypeglob)  

* CPAN  
  * [利用方法](#)  
  * [CPAN内の検索方法](#)  


<a name="objectorientedPerl4894713004three"></a>
#### 第3章 オブジェクト指向Perl入門


<a name="objectorientedPerl4894713004four"></a>
#### 第4章 配列とスカラのbless


<a name="objectorientedPerl4894713004five"></a>
#### 第5章 その他のデータ型のbless


<a name="objectorientedPerl4894713004six"></a>
#### 第6章 継承


<a name="objectorientedPerl4894713004seven"></a>
#### 第7章 ポリモーフィズム


<a name="objectorientedPerl4894713004eight"></a>
#### 第8章 クラス生成の自動化


<a name="objectorientedPerl4894713004nine"></a>
#### 第9章 統合


<a name="objectorientedPerl4894713004ten"></a>
#### 第10章 演算子のオーバーロード


<a name="objectorientedPerl4894713004eleven"></a>
#### 第11章 カプセル化


<a name="objectorientedPerl4894713004twelve"></a>
#### 第12章 総称


<a name="objectorientedPerl4894713004thirteen"></a>
#### 第13章 多重ディスパッチ


<a name="objectorientedPerl4894713004fourteen"></a>
#### 第14章 永続オブジェクト


<a name="objectorientedPerl4894713004appendixa"></a>
#### 付録A クイックリファレンス


<a name="objectorientedPerl4894713004appendixb"></a>
#### 付録B 他の言語との比較


<a name="objectorientedPerl4894713004appendixc"></a>
#### 付録C 参考文献


<a name="objectorientedPerl4894713004appendixd"></a>
#### 付録D 用語集


</details>


<a name="gitflow"></a>
## ※Gitのマージルール
study2programmingに取り込むときのマージは、3方向マージ(`--no-ff`)を使う。  

* [ ] "study2programming"にマージする時のルール。  
  * [ ] 誤字脱字程度のコミットはスカッシュしたい。  
  * [ ] マージ後"study2programming"をPushする。  
    ※masterにマージすることはない。  
  * [ ] マージごとにタグ付けをする(そしてPush実施)。  

* 例外としてmasterに取り込む場合は、チェリーピッキングでピンポイントに必要最小限のコミットのみを取り込む(しつこいが、masterに取り込むことはしたくない)。  
  言いたいことは、履歴を複数にしたくないと言うこと。  


以上。
<!-- vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=markdown expandtab: -->
