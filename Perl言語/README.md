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
　　※本来であれば、Perlプログラムの拡張子は付けない。しかし、Windows向けに開発環境を用意する場合は拡張子を付けることになるため、関数ライブラリ(`*.pl`)と同じ拡張子が使われ出した(区別するために、プログラム用拡張子を`*.plx`にする案もあるようだが・・・定着せず)。  
　　※他にも`*.cgi`を使えるそうだ。  
　　※[`*.pm`](#practicaluseFunctionLibuse)は、Perlプログラムとは異なる(モジュール用プログラム**Perl Module**の略)。  
  * 実行方式：インタプリタ方式  
    実行手順：**コンパイル**⇒**中間コード生成**⇒**インタプリタ実行**  
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
　　例）[`printf`](#practicaluseFileoperation)など。  
  * 単数行コメント方法：`#`  
  * 複数行コメント方法：
    [大きなブロックで囲む方法](https://perldoc.jp/docs/perl/5.10.0/perlfaq7.pod#How32can32I32comment32out32a32large32block32of32perl32code63)⇒
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
  * [x] [Chapter 3 データ構造を学ぶ](#algorithmTextbookLearnedinPythonChapter3)  
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
    [x] [構造体](#practicaluseArrangementArrayStructure)  
  * [ ] [条件分岐](#practicaluseConditional条件分岐)  
    * [x] [三項演算子](#practicaluseConditionalternary)(`?:`)  
      Perlでは、[条件演算子](https://perldoc.jp/docs/perl/perlop.pod#Conditional32Operator)のこと。  
    * [x] [if修飾子](#practicaluseConditionalifmodifier)  
  * [ ] [繰り返し](#practicaluseRepetition繰り返し)  
  * [ ] [関数](#practicaluseFunction関数)  
    [x] [ライブラリ作成(`require`)](#practicaluseFunctionLibrequire)  
    [x] [モジュール作成(`use`)](#practicaluseFunctionLibuse)  
    **todo**あり。  
  * [x] [モジュール利用](#practicalusecpan)  
    インストールなど。  


<a name="rangeOtherThanBasicKnowledge"></a>
### 基礎知識5種類の勉強以外の項目
基礎知識5種類に納められない範囲の勉強に手を広げる。  

* [応用知識](#appliedknowledge)  
  * [ ] [ポインタ・リファレンス](#practicalusePointer)  
    * [x] リファレンス  
      [x] 変数  
      [x] 配列  
      [x] ハッシュ  
      [x] 関数(サブルーチン)  
      [ ] OSの環境変数  
      [ ] ファイルハンドルへのリファレンス  
    * [x] [デリファレンス](#practicalusePointerdereference)  
    * [x] 入れ子  
      本当は途中。  
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
    [x] OSのシグナル  
  * [x] [ファイルテスト](#practicaluseFiletest)  
    [x] ファイルテスト演算子  
    todo: 途中。  
    [x] stat関数  
    [x] lstat関数  
    [x] [ローカルタイム関数変換(エポック経過秒数)](#practicaluseFiletestlocaltime)。  
    [ ] ビット演算子  
    todo: 途中。  
  * [ ] [ファイル操作](#practicaluseFileoperation)  
    [x] 標準入力。  
    [x] 標準出力。  
    [x] ファイル読み込み。  
    [x] ファイル書き込み。  
    [x] ファイル削除。  
    [x] ファイル名変更(ファイル移動)。  
    [x] リンクファイル  
    [x] 特殊変数(`$.`・`$/`・`$\`・`$,`・`$"`・`$0`・`$^W`・`$ARGV`・`@ARGV`・`@F`・`DATAファイルハンドル`・本来はまだある)  
    [x] [プロパティ変更(パーミッション・オーナー・タイムスタンプ)](#practicalusePropertymanipulation)  
  * [ ] [ディレクトリ操作](#practicaluseDirectorymanipulation)  
    [x] カレントディレクトリ取得。  
    [x] ディレクトリ移動。  
    [x] グロブ  
    [x] ディレクトリハンドル。  
    [x] [プロパティ変更(パーミッション・オーナー・タイムスタンプ)](#practicalusePropertymanipulation)  
  * [ ] [オブジェクト指向](#practicaluseObjectorientation)  
    [x] オブジェクト指向入門(読み切っていない)  
        * [オブジェクト指向入門](#objectorientedPerl4894713004one)を読み直す(要は全般)。  
    [x] Perl入門(todoあり)  
        * [モジュール](#practicaluseFunctionLibuse)部分読み直し。  
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
  * [x] [標準関数(モジュール)](#practicaluseFunctionLibuse)  
    [インストール](#practicalusecpan)利用などは別にある。  
  * [ ] [プロセス管理](#practicaluseSystemfunc)  
  * [x] [正規表現](#practicaluseRegularexpression)  
    別ファイルでの記載が詳細なため、ここでは簡易ながらも説明完了とする。  
  * [x] [置換演算子](#practicaluseSubstitutedisplacement)  
    todo: あり。  
  * [ ] [スマートマッチ演算子`~~`](#practicaluseSmartmatch)  
    * [x] [switch(given-when)](#practicaluseGivenwhen)  
  * [x] [パッケージ](#practicalusePackages)  
  * [ ] [SQL/DBI](#practicalusesqlDBI)  
  * [ ] [GUI/Tk](#practicaluseGUIPerlTk)  

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

上記記号は、別名ファニー文字(funny characters・おかしな文字)と言う。  
このシジルを採用しているがために、予約語というものが存在しないようだ(他のプログラミング言語では考えられない)。  


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

    $ cat helloWorld.pl
    #!/usr/bin/perl -w
    
    print "Hello World.\n";
    print $^V . "\n";
    $ ./helloWorld.pl
    Hello World.
    v5.18.4
    $

※[シェバング](#https://www.wdic.org/w/TECH/shebang)[追加](https://perldoc.jp/docs/perl/5.34.0/perlsec.pod)で、単発実行可能になった(P14・P176)。  
※前は、恥ずかしながら`perl ./helloWorld.pl`で実行していた。  
そして、今回は、恥ずかしながら古いバージョンのPerlで実行している。  
Unixシステムでは`#!/usr/bin/env perl`で、Perlのインストール場所を探してくれるそうだ(Macで動いた)。  
Unix以外のシステムでは、`#!perl`と記述するそうだ(記述したところで動いてはくれない)。  
※当たり前だが、このシェバングの場合、古い[バージョン](#algorithmCheckTheStatusOfTheActualWorkingEnvironment)のため、勉強用には適しておらず、今後も`perl プログラムファイル名.pl`とする。  


<a name="practicaluseTkHelloWorld"></a>
#### ハローワールドプログラム
定番だが、今回は[GUI画面](#practicaluseGUIPerlTk)だ。  

以下、プログラム。
```perl
use v5.24;
use Tk;

sub gui() {
	my $mw = MainWindow->new;
	$mw->title("Hello World.");	←☆タイトルバーへの表示文字。
	$mw->Button(
				-text => "Done",	←☆表示文字。
				-command => sub { exit }
			)->pack;	# ボタン
	MainLoop;
}
&gui();
```
小さいウィンドウが開き、その中にボタンがある。  
今回は、そのボタンをクリックすることでウィンドウが終了するようにしてある。  
ウィンドウの大きさはボタンに合わせているのだろう。  

当たり前だが、プログラムを動かす場合、XQuartzが起動する(そのため、実際にプログラムが動くまでに時間が掛かる)。  


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


<a name="subVariable2global"></a>
##### グローバル変数
**our**キーワードを変数宣言時に付ける。  
様式：
`our $変数名 = 値;`  

異なる[パッケージ](#practicalusePackages)からの変数利用呼び出しにも宣言で対応できるようになる。  


<a name="subVariable2lexical"></a>
##### レキシカル(lexical)変数
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

以下、main側で宣言した変数を呼び出す。
```perl
use v5.24;

my $hoge = "ほげぇ";	←☆レキシカル変数(my)は違うパッケージ(今回はSubStaticScope)から利用できない。
our $boo = "boo";

package SubStaticScope;
say $main::hoge;	# 空文字列(undef)
say $main::boo;		# boo	←☆myを付けなければ、違うパッケージから利用できる。
```

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
|`s///`|`s///`|パターン置換|する|
|`y///`|`tr///`|文字変換|しない|
|`//`|`m//`|[正規表現](#practicaluseRegularexpression)|する|
|`""`|`qr//`|[正規表現](#practicaluseRegularexpression)|する|


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
```perl
use v5.24;

my $hoge = 0;
if ($hoge) {
	say "真の場合実行。", $hoge;
}
else {
	# こちらが実行される。
	#	実行結果：偽の場合実行。0
	say "偽の場合実行。", $hoge;
}

$hoge = 1;
if ($hoge) {
	# こちらが実行される。
	#	実行結果：真の場合実行。1
	say "真の場合実行。", $hoge;
}
else {
	say "偽の場合実行。", $hoge;
}
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
  * [x] [ビット演算子](#practicaluseFiletest)  
    ビットAND演算子。  
    ビットOR演算子。  
    ビットXOR演算子。  
    左シフト演算子。  
    右シフト演算子。  
    ビット否定演算子。  
  * [x] [マッチ演算子(正規表現)](#practicaluseRegularexpression)  
    [x] 結合演算子`=~`  
  * [ ] 優先順位  
    [C言語での優先順位と代わらない](https://perldoc.jp/docs/perl/5.10.0/perlfaq7.pod#Why32do32Perl32operators32have32different32precedence32than32C32operators63)  

* ちょっと高度な話題  
  * [x] [ポインタ](#practicalusePointer)  
    Perlでは、リファレンスのこと(そして、調査継続)。  

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
    スタック[`stack`](#stackChapter3)(後入れ先出し法：Last In First Out, LIFO)  
    * 取り出し[pop](#subArrangement2pop)  
      配列の**最後**から要素を**取り出す**。  
    * 追加[push](#subArrangement2push)  
      配列の**最後**に要素を**追加**する。  
      `unshift`の追加処理より**早い**。  
  * 配列先頭への対応。  
    キュー[`queue`](#queueChapter3)(先入れ先出し法：First In First Out, FIFO)  
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
  * [x] [Join関数](#practicaluseSubstitutedisplacement)。  
    連結。  
  * [x] [split関数](#practicaluseSubstitutedisplacement)。  
    分割。  
  * [ ] 置換。  

* 配列の応用  
  * [ ] 多次元配列(リファレンスで作成可能)。  
    [ ] 3次元配列以上の宣言方法。  
    [x] リファレンス(少しだけ調べた)。  
  * [x] 配列を複製する方法。  
  * [x] [配列からスライスを作成する方法。](#practicaluseArrangement配列)  

* [構造体](#practicaluseArrangementArrayStructure)  
  Perlにはない(無理矢理説明しているが)。  
  * 共用体  
    ない。  
  * 列挙体  
    ない。  

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
    `opendir`・`chdir`・`next`・`unlink`などと組み合わせる場合、`||`は使えず、`or`のみが動いた。  
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
```perl
use v5.24;

my @hoge = (20210901, 20210902, );
my $bar = 20210901;

if ( $hoge[0] == $bar ) {
	say "等しい。";
}
```
出力結果：等しい。

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

<details><summary>undefとの比較</summary>

以下、**undef**の取扱い。
```perl
use v5.24;

my @boo = (20211205, 20211206, );

if ( 0 == undef ) {
	say 'undefと0の比較, $boo[1]';
}
	# 出力結果：undefと0の比較, $boo[1]	←☆出力されたら失敗。

if ( $boo[1] == undef ) {
	say 'undefとの比較成功, $boo[1]';
}
	# 出力結果：	←☆出力されない(undefではないため、当然のこと)。

if ( $boo[2] == undef ) {
	say 'undefとの比較成功, $boo[2]';
}
	# 出力結果：undefとの比較成功, $boo[2]	←☆文字列ではないが、気にせずundef

if ( "$boo[2]" == undef ) {
	say 'undefとの比較成功, $boo[2]';
}
	# 出力結果：undefとの比較成功, $boo[2]	←☆文字列だが、気にせずundef

if ( defined "$boo[2]" ) {	←☆変数に値は入っていない。
	say "ここが出力されたら失敗";
}
	# 出力結果：ここが出力されたら失敗	←☆文字列として定義されている認識をされた。
	# 	いわば、この比較方法は失敗。

if ( defined $boo[2] ) {	←☆変数に値は入っていない。
	say "出力されないため、成功。";
}
	# 出力結果：	←☆出力されない。

unless ( defined $boo[2] ) {	←☆変数に値は入っていない。
	say "出力されるため、成功。";
}
	# 出力結果：	←☆出力されない。
```
**undef**との比較は、`==`だろうが、`eq`だろうが、気にしなくて良いようだな。  

</details>


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
    [v5.10以降](#practicaluseGivenwhen)であれば使える。  
  * if文の否定：unless  
  * unless修飾子：if修飾子と同じように使える。  

* 関係演算子  
  * [ ] 論理演算子  
    * [ ] 排他的論理和(`XOR`・`NOT OR`・`^`)  
    * [ ] 否定(`NOT`・`!`・`~`)  
      ※`=~`は正規表現になるため、気をつけること。  
    * [x] [ビット演算子](#practicaluseFiletest)(`&`・`|`)  
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

※[スマートマッチ演算子](#practicaluseSmartmatch)の[foreachとwhenの組み合わせ](#practicaluseSmartmatchforeach)も存在する。  


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

LASTJUMP: foreach my $boo ( @hoge ) {
	# 繰り返しの入れ子。
	foreach my $number ( 1..10 ) {
		if ( $number == 3 ) {
			say "$number：$boo";
						# 3：20210901
					# 以下のラベルがない場合、
						#	3：20210902
					# も出力している。
					# lastのため、1つ目の繰り返しを抜け出ている。
		}
		# 以下、lastラベルで抜け出る。
		last LASTJUMP if ( $number == 3);
	}
}
```
出力結果：3：20210901


<a name="subRepetition5next"></a>
以下、continue(next)での繰り返し処理強制中断。  
```perl
use v5.24;

my @boo = (20210901, 20210902, );

LASTJUMP: foreach my $hoge ( @boo ) {
	# nextで抜け出る。

	foreach my $number ( 1..10 ) {
		if ( $number == 3 ) {
			say "$number：$hoge";	# 出力なし。
		}
		next LASTJUMP if ( $number == 2);
			# 1つ目のforeach処理に戻るため、3以降にインクリメントされず、処理が終了する。
			# このnext処理がない場合、当然のように2行が出力される。
			#		3：20210901
			#		3：20210902
	}
}
```
出力結果：  
なし。  


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
処理が正常終了した場合、戻り値として1を返す。  

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

sub func
{
	# ここは、サブルーチン
	my $boo = "本日は晴天なり。";
	my @bar = ("boo", "bar",);

	say "関数内部処理。";

	return @bar if wantarray();				# 呼び出し側が配列を期待する場合は配列で戻す。
	return $boo if defined(wantarray());	# 呼び出し側が変数を期待する場合は変数で戻す。
}

func();	# 戻り値を受け取らないため、何も返されない。
		#		関数内部処理。
		# は、出力された。

my $scalar = func();	# 戻り値の種類がスカラコンテクスト。
say $scalar;	# 本日は晴天なり。

my @list = func();	# 戻り値の種類がリストコンテクスト。
say "@list";	# boo bar
say $list[0];	# boo
say $list[1];	# bar
```

また、戻り値を常に受け取ってもらう前提のサブルーチンの場合、以下のように警告を出せる。
```perl
use v5.24;
use Carp;	# ←☆警告表示にはこれが必要。

sub function
{
	# ここは、サブルーチン。
	say "戻り値受け取り警告。";
	carp "戻り値は使うため、受け取るようにしましょう。";
}

function();
	# 以下、出力結果。
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

sub hoge {
	say "関数内";

	my ($package, $file, $line) = caller();

	return ($package, $file, $line);
}

my ($retpack, $retFile, $retLine) = hoge();
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
[レキシカル変数](#subVariable1)(**my**)付きを強制するバージョンを利用する場合は、ローカル宣言ができないようだ。  

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
  [x] [スタック](#stackChapter3)  
  [x] [キュー](#queueChapter3)  
  [x] [リスト](#listChapter3)  
  [x] [木](#woodChapter3)  
  [x] [グラフ](#graphChapter3)  
  [x] [スタックとキューを扱う。](#stacksAndQueuesChapter3)  
  [x] [データを保存する。](#saveTheDataChapter3)  
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
use v5.24;

my @score = (70, 98, 92, 88, 64);	# 配列に入っている数字を使い、合計点及び平均点を求める。

my $total;	# この変数に合計点を入れる。
for ( @score ) { # 別解：for my $value ( @score ) {	←☆取り出した値を用意した変数に代入してもいい(むしろそうしたほうが処理速度は上がる)。
	$total += $_;	# 合算。
}
my $average = $total / @score;	# 平均点を求める(合計÷個数)。
	#	`my $count = @score;`	←☆配列の個数を取り出して使ってもいい。
	#	別解：my $average = $total / $count;

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
use v5.24;

sub main() {
	my $comma = $,;	←☆特殊変数を一時保存。
	$, = ', ';	←☆今のままではカンマ区切りが詰められてしまうため、コードが見やすいように変更した。
	say "2進数リテラル";
	say 0b11111111, 0b0, 0b10101010, -0b1, 0b1, 0b1001101000110010011101110;
	# 出力結果：255, 0, 170, -1, 1, 20210926

	say "8進数リテラル";
	say 0377, 00, 0252, -01, 01, 0115062356;
	# 出力結果：255, 0, 170, -1, 1, 20210926

	say "10進数リテラル";
	say 255, 0, 170, -1, 1, 20210926;
	# 出力結果：255, 0, 170, -1, 1, 20210926

	say "16進数リテラル";
	say 0xff, 0x00, 0xAA, -0x1, 0x1, 0x13464EE;
	# 出力結果：255, 0, 170, -1, 1, 20210926
	$, = $comma;	←☆特殊変数を戻す。
}
&main();
```

</details>

[メニューに戻る](#algorithmTextbookLearnedinPythonChapter2)


<a name="learnDataStructuresOverviewChapter3"></a>
### データ構造を学ぶ
基本的には、配列を用いて、データ構造を構築する。  

[メニューに戻る](#algorithmTextbookLearnedinPythonChapter3)


<a name="stackChapter3"></a>
#### スタック
後入れ先出し法。  
後から入れたデータを先に取り出す。  
入れることを"Push"と言い、取り出すことを"Pop"と言う。  

<details><summary>展開</summary>

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
※通常のアルゴリズムの勉強用に作成したプログラムはある([**algorithmStack.pl**](./Pythonで学ぶアルゴリズムの教科書\ 一生モノの知識と技術を身につける/chapter3_データ構造を学ぶ/1.スタック/algorithmStack.pl))。  

</details>

[メニューに戻る](#algorithmTextbookLearnedinPythonChapter3)


<a name="queueChapter3"></a>
#### キュー
**キュー(queue)**とは、最初に入れたデータを最初に取り出すこと。  
それを先入れ先出し(First In First Out)と言い、**FIFO**と略す。  

<details><summary>展開</summary>

以下、キュープログラム。
```perl
use v5.24;

sub enqueue() {
	# データ投入。
	my ( $ii, $enqueue) = @_;

	# 以下、末尾に追加する。
	push @$enqueue, $ii;
}

sub dequeue() {
	# データ取り出し。
	my ( $dequeue) = @_;

	if (@$dequeue <= 0) {
		return "取り出すデータが存在しません。";
	}
	else {
		# 以下、先頭から取り出す。
		return shift @$dequeue;
	}
}

sub main() {
	my @queue;

	for my $ii ( 0..3 ) {
		&enqueue($ii, \@queue);
	}
	&enqueue("途中に追加。", \@queue);
	for my $ii ( 4..5 ) {
		&enqueue($ii, \@queue);
	}
	&enqueue("最後に追加。", \@queue);
	for my $ii ( 0..8 ) {
		my $data = &dequeue(\@queue);
		say "取り出したデータ：", $data;
	}
}
&main();
```

以下、出力結果。
```terminal
取り出したデータ：0
取り出したデータ：1
取り出したデータ：2
取り出したデータ：3
取り出したデータ：途中に追加。
取り出したデータ：4
取り出したデータ：5
取り出したデータ：最後に追加。
取り出したデータ：取り出すデータが存在しません。
```
アルゴリズムの勉強としておかしなプログラムだと思うが、あるものは使わなければならない(車輪の再開発はしません)。  
※上記のプログラムは、末尾から入れて、先頭を取り出している。  
逆に、先頭から入れて、末尾から取り出すこともできるが、処理速度が[低下](#subArrangement2)するため、止めた方が良いだろう。  

</details>

[メニューに戻る](#algorithmTextbookLearnedinPythonChapter3)


<a name="listChapter3"></a>
#### リスト
データ格納変数とそのデータと繋ぐ変数を1つにしたのがノードであり、そのノードがいくつも繋がっている状態のこと。  
繋ぎ方には種類があり、今回は**片方向リスト**を採用する。  
例）**データ1--->データ2--->データ3--->End**  
しかし、それでは普通のアルゴリズムになってしまうため、そんなものを用いずに、普通にPerl言語特有の機能を活用することにした。  

<details><summary>展開</summary>

以下、プログラム。
```perl
use v5.24;

sub add_list() {
	# データ投入。
	my ( $listdata, $ii ) = @_;

	# 以下、末尾に追加する。
	push @$listdata, $ii;
}

sub del_list() {
	# データ削除。
	my ( $listdata, $data) = @_;
	my @datalist = @$listdata;	# シャローコピー(浅い複製)。

	if (@$listdata <= 0) {
		return say "リストデータ存在せず。";
	}
	else {
		my $listdataIndex = -1;
		# while( my ($index, $value) = each @$listdata ){
		while( my ($index, $value) = each @datalist ){
			if ( "$value" eq "$data" ) {
				$listdataIndex = $index;
				last;	←☆シャローコピーではあるが、リファレンスカウントから解放された(★根本の解決方法を知りたい)。
			}
		}
		if ( $listdataIndex == -1 ) {
			say "指定データ(" . $data . ")存在せず。";
			return -1;
		}
		else {
			splice @$listdata, $listdataIndex, 1;
		}

		return @datalist;
	}
}

sub put_list() {
	my ($datalist) = @_;

	foreach my $value (@$datalist) {
		print "$value--->";
	}
	say "EOF";
}

sub main() {
	my @datalist;

	print "空表示：\n　　";
	&put_list(\@datalist);
	print "空削除：\n　　";
	&del_list(\@datalist, 0);

	for my $ii ( 0..3 ) {
		&add_list(\@datalist, $ii);	←☆最初のデータを追加。
	}
	&add_list(\@datalist, "bar");	←☆途中に文字列データを1件追加。
	for my $ii ( 4..5 ) {
		&add_list(\@datalist, $ii);	←☆2件のデータを追加。
	}
	&add_list(\@datalist, "boo");	←☆最後に文字列を追加。

	print "完全：\n　　";
	&put_list(\@datalist);
	print "3削除：\n　　";
	&del_list(\@datalist, 3);
	&put_list(\@datalist);
	print "bar削除：\n　　";
	&del_list(\@datalist, "bar");
	&put_list(\@datalist);
	print "先頭削除：\n　　";
	&del_list(\@datalist, 0);
	&put_list(\@datalist);
}
&main();
```

以下、出力結果。
```terminal
空表示：
　　EOF
空削除：
　　リストデータ存在せず。
完全：
　　0--->1--->2--->3--->bar--->4--->5--->boo--->EOF
3削除：
　　0--->1--->2--->bar--->4--->5--->boo--->EOF
bar削除：
　　0--->1--->2--->4--->5--->boo--->EOF
先頭削除：
　　1--->2--->4--->5--->boo--->EOF
```
ループ処理を途中で抜け出すことで処理速度の向上を図りたかったが、そうした場合リファレンスカウントが生きたままになり、リファレンス利用が仇になり、バグも生む。  
これの解決方法はないのだろうか。  
数件だから全件走査も問題ないが、膨大な数になった場合、極端に処理速度が落ちるだろう(かろうじて解決策は施しているが・・・)。  

個人的にはシャローコピーに見えない。  

</details>

[メニューに戻る](#algorithmTextbookLearnedinPythonChapter3)


<a name="woodChapter3"></a>
#### 木
[リスト](#listChapter3)のようにノードがあり、そのノードにデータとそれを繋ぐ情報を持つ。  
繋ぎ方は木を逆さまにしような形として、頂点を根とし、下に向けて2種類の枝を伸ばし、それぞれ葉が付く。
そして、その葉から枝が2種類下に伸び、それぞれ葉が付く。
それを繰り返す。  

<details><summary>展開</summary>

以下、プログラム。
```perl
use v5.24;

my $LEFT = 0;	# 左ノード番号用定数
my $RIGHT = 1;	# 右ノード番号用定数
my $DATA = 2;	# データ値用定数

sub tree() {
	my $node = shift;
	say "指定番号のノード調査(入力なしのEnter押下にてプログラム終了)。";
	my $MAX = @$node;	# 2次元配列の個数が取得できる？

	while(){	# 無限ループ
		my $inputNumber = <STDIN>;	# ユーザからの入力用ファイルハンドル
		chomp $inputNumber;
		if( $inputNumber eq undef ) {
			# 空文字列(undef)の場合、プログラム終了。
			last;
		}
		elsif( $inputNumber =~ /[\D]+/ ) {
			# 数字以外の文字が1個以上来た場合、処理を先頭に戻すことにした(正規表現での切り分け)。
			say "入力値($inputNumber)は数字のみ。";
			next;
		}
		if( 0 <= $inputNumber and $inputNumber < $MAX){
			say "node$inputNumberの値は$node->[$inputNumber][$DATA]";
			my $leftNumber = $node->[$inputNumber][$LEFT];
			# undefの場合、偽になるため、以下の状態(変数のみ)でも問題ない(混乱するか、見にくくなるけど)。
			#	ただし、0が変数に入っていた場合も偽になるため、バグとして問題になる。
			if( $leftNumber ){
				say "左の葉は$node->[$leftNumber][$DATA]";
			}
			else{
				say "左の葉は存在しない。";
			}
			my $rightNumber = $node->[$inputNumber][$RIGHT];
			if( defined $rightNumber ){
				# 変数に値が入っている場合、真になる(そのため、以下が出力される)。
				say "右の葉は$node->[$rightNumber][$DATA]";
			}
			else{
				say "右の葉は存在しない。";
			}
		}
		else{
			say "0から" . ($MAX - 1) . "の範囲に納めること。";
		}
	}
}

sub main() {
	# 以下、2次元配列。
	my $nodeData = [
			[1,	2,	10],
			[3,	4,	20],
			[5,	undef,	30],
			[undef,	undef,	40],
			[6,	7,	50],
			[undef,	undef,	60],
			[undef,	undef,	70],
			[undef,	undef,	80],
		];

	&tree($nodeData);
}
&main();
```

以下、実行結果。
```terminal
$ perl algorithmTree.pl
指定番号のノード調査(入力なしのEnter押下にてプログラム終了)。
0
node0の値は10
左の葉は20
右の葉は30
1
node1の値は20
左の葉は40
右の葉は50
2
node2の値は30
左の葉は60
右の葉は存在しない。
3
node3の値は40
左の葉は存在しない。
右の葉は存在しない。
4
node4の値は50
左の葉は70
右の葉は80
5
node5の値は60
左の葉は存在しない。
右の葉は存在しない。
6
node6の値は70
左の葉は存在しない。
右の葉は存在しない。
7
node7の値は80
左の葉は存在しない。
右の葉は存在しない。
8
0から7の範囲に納めること。
1a	←☆数字以外を含む。
入力値(1a)は数字のみ。
a1
入力値(a1)は数字のみ。	←☆数字以外を含む。
1a2
入力値(1a2)は数字のみ。	←☆数字以外を含む。
 	←☆半角スペース1つ入力。
入力値( )は数字のみ。
	←☆何も入力せずにエンターキー押下にて、終了した。
$
```

</details>

[メニューに戻る](#algorithmTextbookLearnedinPythonChapter3)


<a name="graphChapter3"></a>
#### グラフ
図のことではあるが、点とそれらを結ぶ線から成る図形の構造のこと。  
この、線で結ぶための基点になるのが既出のノードになる。  

* グラフの種類  
  * [無向グラフ](#graphChapter3Undirectedgraph)  
    双方向に繋がっているグラフのこと。  
  * [有向グラフ](#graphChapter3Directedgraph)  
    一方通行に繋がっているグラフのこと。  

<a name="graphChapter3Undirectedgraph"></a>
<details><summary>展開：無向グラフプログラム。</summary>

以下、無向グラフプログラム例）
```perl
use v5.24;

sub undirectedGraph() {
	my ($data, $node) = @_;

	foreach my $yy (0..4) {
		foreach my $xx ($yy..4) {
			if ( $data->[$yy][$xx] == 1 and $data->[$xx][$yy] == 1) {
				say($node->[$yy] . "<--->" . $node->[$xx]);
			}
		}
	}
}

sub main() {
	my $data = [	# 無名配列リファレンス(二次元配列)
			[0, 1, 1, 0, 0],
			[1, 0, 1, 1, 0],
			[1, 1, 0, 0, 1],
			[0, 1, 0, 0, 1],
			[0, 0, 1, 1, 0],
		];
	my $node = [
			"(0)",
			"(1)",
			"(2)",
			"(3)",
			"(4)",
		];
	&undirectedGraph($data, $node);
}
&main();
```
以下、出力結果。
```terminal
(0)<--->(1)
(0)<--->(2)
(1)<--->(2)
(1)<--->(3)
(2)<--->(4)
(3)<--->(4)
```

</details>

<a name="graphChapter3Directedgraph"></a>
<details><summary>展開：有向グラフプログラム。</summary>

以下、有向グラフプログラム例）
```perl
sub directedGraph() {
	my ( $data, $node, $arrow ) = @_;

	foreach my $yy (0..4) {
		foreach my $xx ($yy..4) {
			my $e1 = $data->[$yy][$xx];
			my $e2 = $data->[$xx][$yy];
			my $aa = $e1 + $e2*2;
			if ( $aa > 0 ) {
				say $node->[$yy] . $arrow->[$aa] . $node->[$xx];
			}
		}
	}
}

sub main() {
	my $data = [	# 無名配列リファレンス(2次元配列)
			[0, 1, 1, 0, 0],
			[0, 0, 1, 1, 0],
			[0, 0, 0, 0, 0],
			[0, 1, 0, 0, 1],
			[0, 0, 1, 1, 0],
		];
	my $node = [
			"(0)",
			"(1)",
			"(2)",
			"(3)",
			"(4)",
		];
	my $arrow = [
			"",
			"-->",
			"<--",
			"<->",
		];
	say "以下、有向グラフプログラム実行。";
	&directedGraph($data, $node, $arrow);
}
```
以下、出力結果。
```terminal
(0)-->(1)
(0)-->(2)
(1)-->(2)
(1)<->(3)
(2)<--(4)
(3)<->(4)
```

</details>

[メニューに戻る](#algorithmTextbookLearnedinPythonChapter3)


<a name="stacksAndQueuesChapter3"></a>
#### スタックとキューを扱う。
ここは、Python限定と言えるぐらいPythonモジュールを利用した箇所になる。  
PythonモジュールがあるぐらいだからPerlモジュールにもキューの名前がついたのはある。  

[Thread::Queue - スレッドセーフなキュー（待ち行列）](https://perldoc.jp/docs/modules/Thread-2.00/Thread/Queue.pod)
や、
[キュー: データの受け渡し](https://perldoc.jp/docs/perl/5.16.1/perlthrtut.pod#Queues:32Passing32Data32Around)
の2カ所で説明している(2つ目のは1つ目のを詳細にしたのかな？)。  

名前から判断するならば、スレッドに関係していることが予想できるため、ここでは取り扱わないことにした。  
全く別の勉強範囲に手を出す必要があるため、アルゴリズムの勉強から遠ざかってしまう。  

[メニューに戻る](#algorithmTextbookLearnedinPythonChapter3)


<a name="saveTheDataChapter3"></a>
#### データを保存する。
プログラム実行後もプログラムが生成したデータを保存するために、今回はファイルを用いて、書き出し・読み出しを行う。  
今まで散々してきたことだが、書籍がようやく私の行動に追いついてきたことになる。  

読み書き込み先は複数あれど今までのファイル向けに準ずる。  

<details><summary>展開：ファイル書き込みプログラム。</summary>

以下、ファイル書き込みプログラム。
```perl
use v5.24;
use Cwd;	# カレントディレクトリ呼び出しモジュール。

sub writefunc() {
	my $currentDir = getcwd();	# カレントディレクトリ取得。
	my $permissions = "0755";	# このまま使う場合、10進数と解釈される(8進数に置き換える必要がある)。

	# ファイル名のみ定義。
	my $filename = "$currentDir/file.txt";

	unless( -f $filename ) {
		say "ファイル作成前。";
	}

	say "ファイルを新規作成(既存上書き)する。";
	open my $file_fh, '>', $filename or die "$filenameのファイルオープン失敗($!)";
	foreach( qw( 本日は 晴天なり。 ) ) {
		say $file_fh $_;	# ファイルへの書き込み。
	}
	close $file_fh;	# ファイルハンドル閉じる。

	if( -f $filename ) {
		say "ファイル作成成功。";
	}

	#say "ファイル削除。";
	#unlink $filename or warn "ファイル削除失敗($!)。";
	#unless( -f $filename ) {
	#	say "ファイルなし(削除済み)。";
	#}
}
&writefunc();
```

以下、作成作業。
```terminal
$ ll write.pl file.txt
ls: file.txt: No such file or directory	←☆ファイルなし。
-rwxr-xr-x  1 asakunotomohiro  staff  1003  1 25 16:49 write.pl*
$ perl write.pl	←☆プログラム実行。
ファイル作成前。
ファイルを新規作成(既存上書き)する。
ファイル作成成功。
$ cat file.txt	←☆作成後の内容を表示する。
本日は
晴天なり。
$
```
ファイル作成成功。  
作成と言うより、ファイルへの出力成功とも言える・・・だから作成か。  

</details>

<details><summary>展開：ファイル読み込みプログラム。</summary>

以下、ファイル読み込みプログラム。
```perl
use v5.24;
use Cwd;	# カレントディレクトリ呼び出しモジュール。

sub readfunc() {
	my $currentDir = getcwd();	# カレントディレクトリ取得。
	my $permissions = "0755";	# このまま使う場合、10進数と解釈される(8進数に置き換える必要がある)。

	# ファイル名のみ定義。
	my $filename = "$currentDir/file.txt";

	if( -f $filename ) {
		say "ファイルあり。";
	}

	say "ファイルを読み込む。";
	open my $file_fh, '<', $filename or die "$filenameのファイルオープン失敗($!)";
	while( defined(my $line = <$file_fh>) ) {
		chomp $line;	# 改行削除。
		say $. . "行目" . "内容：" . $line;	# ファイル内容を標準出力先に出力。
	}
	close $file_fh;

	#say "ファイル削除。";
	#unlink $filename or warn "ファイル削除失敗($!)。";
	unless( -f $filename ) {
		say "ファイルなし(削除済み)。";
	}
}
&readfunc();
```
上記、`$.`は行数を表す。  
**defined**を噛ませることにより、最終行が0だけの場合も取りこぼしを防ぐことができる。  
また、今回**while**を使ったのは、通常利用としてであり、基本はこうすべき。  
**foreach**を使った場合は、ファイル内容を一度にメモリに読み込むため、処理が遅くなるだけでなく、メモリ不足の懸念が発生する(利点は並び替え・該当行かつ前後の行も対象・などのファイル全体が必要な場合に合致する)。  

以下、読み込み作業。
```terminal
$ ll read.pl file.txt
-rwxr-xr-x  1 asakunotomohiro  staff  973  1 25 17:09 read.pl*
-rw-r--r--  1 asakunotomohiro  staff   26  1 25 16:50 file.txt	←☆このファイルを読み込む。
$ cat file.txt	←☆ファイル内容確認。
本日は
晴天なり。
$ perl read.pl	←☆プログラム実行。
ファイルあり。
ファイルを読み込む。
1行目内容：本日は
2行目内容：晴天なり。
$
```
読み込み成功。  

</details>

[メニューに戻る](#algorithmTextbookLearnedinPythonChapter3)


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
  * [switchステートメント](#practicaluseGivenwhen)  
  * 今後も機会があれば増やしていく。  


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
  * [`$変数名 = splice @配列名, 添え字;`](#practicaluseArrangementArraysplicescalar)  
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

<a name="practicaluseArrangementArraysplicescalar"></a>
以下、`splice`演算子による添え字番号指定の取り出し(第2引数までの利用結果を変数に代入)。
```Perl
use v5.24;

my @hoge = ( 1..10 );
say "@hoge";	# 1 2 3 4 5 6 7 8 9 10
my $boo = splice @hoge, 2;
say "@hoge";	# 1 2
say "$boo";		# 10
```
意図したとおり、配列最後の要素が変数に代入されている。  
そして、第2引数に指定した添え字以降が配列から削除されている。  

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
if (@hoge > 0) {
	# 配列要素の空確認。
	say "空でない。"
}

if (@hoge) {
	# 別の方法。
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

<a name="practicaluseArrangementArrayStructure"></a>
<details><summary>応用知識-配列(構造体)</summary>

配列としているのは、基礎知識5種類のひとつとして、[配列](#arrangement配列)で勉強するつもりだったから。  


<a name="practicaluseArrangementArrayStructuretypedef"></a>
### 構造体
基本的に、Perlに構造体は[ない](https://perldoc.jp/docs/perl/5.10.0/perlfaq7.pod#How32do32I32declare47create32a32structure63)。  
データ型の種類には、[スカラー](#variable変数)・[配列](#arrangement配列)・[ハッシュ](#practicaluseHash)・[サブルーチン](#function関数)・ファイルハンドルぐらいがあるだけだ。  
大雑把に使えるというのも善し悪しだというのが実感できるほど不便だ。  

以下、プログラム例）
```perl
use v5.24;

sub typedefresemble() {
	my %hoge;	# ハッシュ宣言

	say "構造体から1を取得：" . $hoge{1};	# 当たり前だが、何も値を設定していないのだから空文字列が出力される。
	$hoge{1} = 1;	# 1のキーに1の値を代入する。
	say "構造体から1を取得：" . $hoge{1};	# 1が出力される。

	$hoge{value} = "本日は晴天なり。";	# 値の設定
	say "構造体からvalueを取得：" . $hoge{value};	# 本日は晴天なり。が出力される。
		# valueを取得するからvalueが出てくるわけではない。
		# "構造体もどき"と言われる所以である。
}
&typedefresemble();
```

<a name="practicaluseArrangementArrayStructurehashreference"></a>
#### 無名ハッシュリファレンス
当然ハッシュ形式であれば、どのような形態でも扱うことができる。  
以下、例）
```perl
use v5.24;

sub typedef() {
	my $hoge = {
				1=>1,
				key=>'key',
				value=>'今日',
			};
	say $$hoge{1};		# 1
	say $$hoge{value};	# 今日
	say $hoge->{key};	# key
	say $hoge->{value};	# 今日

	# 以下、追加で値を設定できる(当たり前)。
	$hoge->{today} = 20211229;	# 数字代入
	say $hoge->{today};			# 20211229

	# 以下、変数宣言と同時に値の設定が可能(当たり前)。
	my $boo->{bar} = 'hoge';
	say $boo->{bar};	# hoge
	say $boo;			# HASH(0x7fb35c8025b8)
	say $$boo{bar};		# hoge
}
&typedef();
```
後半のプログラムは、構造体関係ないよね。


#### 無名ハッシュリファレンスを関数に渡す。
[ハッシュ](#practicaluseHash)の時に、ハッシュそのものをコピーするのは高負荷が掛かることを説明した(したうちに入らない)。  
それは、如何なる時にも通じるため、構造体もどきを関数に渡すときもリファレンスとして渡すべし。  

以下、悪手。
```perl
sub hoge{
    my %bar = @_;	←☆引数のハッシュがコピーとして受け取る。
}
&hoge(%boo);	←☆ハッシュを引数に指定する。
```
大変無駄な処理になっている。  

以下、通常の関数への渡し方。
```perl
use v5.24;

sub resembleTypedef() {
	my ($boo, $bar) = @_;	# 引数を変数に代入する。

	say $boo->{20211229};	# boo
	say $boo->{boo};		# 空文字列(undef)

	say $bar->{20211230};	# 空文字列(undef)
	say $bar->{bar};		# 晴天なり	←☆このハッシュのこのキーに紐付いた値が出力された。
}

my %boo  = (20211229=>'boo', 20211230=>'bar',);	# 普通のハッシュ。
my $bar = {boo=>'本日は', bar=>'晴天なり',};	# 無名ハッシュ
&resembleTypedef(\%boo, $bar);
```

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
use v5.24;

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

<a name="practicaluseFunction関数"></a>
<a name="practicaluseFunctionLibrequire"></a>
<details><summary>応用知識-関数(ライブラリ作成require)</summary>

* Perlのプログラム実行順序  
  ※以下、requireでのライブラリ読み込み前提説明。  
  1. コンパイル  
  1. 中間コード生成  
  1. インタプリタ実行  
  1. インタプリタ(Perlプログラム)実行時にrequireがあれば指定のファイルを読み込む。  
     そのため、実行直前まで文法エラーに気づかない。  
     しかし、未宣言変数の検出はできる。  


### 余談(@INC)
[**Perl 5.26**](https://metacpan.org/release/XSAWYERX/perl-5.26.0/view/pod/perldelta.pod)から **@INC** に標準で備わっていたカレントディレクトリが消えた(2017/05/30？)。  
その経緯は、Unix界隈では有名らしく、カレントディレクトリに実行ファイルがある場合、意図せずに実行することがあり、セキュリティ的に問題があるとのことだった。  
そのため、標準でカレントディレクトリのファイルを読み込むことを取りやめたようだ。  
今まで、**@INC**に追加されていたカレントディレクトリは、末尾だったようだ。  
今後もプログラム作成をする場合にカレントディレクトリを追加する場合は、末尾が良いようだ(`BEGIN { push @INC, "."; }`)。  
そもそもセキュリティの観点からカレントディレクトリにあるプログラム実行を廃止したことを考えれば、わざわざセキュリティを甘くする必要は無い。  
そのため、追加するのであれば、ディレクトリを指定した方が良い。  


### [ライブラリ](https://perldoc.jp/docs/perl/5.8.8/perlmodlib.pod)
ライブラリにしておけば、後から使い回すときも使い勝手がよくなるという配慮により、本来の処理から切り出す。  
他のプログラムからも呼び出せるようにしている。  

以下、呼び出し側のプログラム例）
```perl
use v5.24;
say join "\n", @INC;	←☆カレントディレクトリが存在しない。

BEGIN { push @INC, "."; };	←☆カレントディレクトリ末尾追加。
    # unshift @INC, ".";	←☆カレントディレクトリ追加失敗。
say join "\n", @INC;
    # .	←☆カレントディレクトリ追加完了するが、認識せず。

    # 以下、"@INCに記載されているディレクトリ"に配置した。
require "関数ライブラリ(呼ばれる側)require.pl";
    # 出力結果：関数ライブラリ読み込み終了
my @hoge = ("本日は", "晴天なり。");

&hoge(@hoge);			# 関数ライブラリ：本日は 晴天なり。
&hoge("関数呼び出し");	# 関数：関数呼び出し
```

以下、呼ばれる側のプログラム例）
```perl
use v5.24;

sub hoge {
	say "関数ライブラリ：@_";
}

1;	←☆真を返すための決まり事。
```
この決まり事があるが故に、関数呼び出し後に1が返ってきていた過去がある。  

</details>

<a name="practicaluseFunctionLibuse"></a>
<details><summary>応用知識-関数(モジュール作成use)</summary>

車輪の再開発をせずに、既存の車輪を使い回すことを優先し、なければ作成することになるが、使い回せるような作りにすること。  
汎用性を高める場合、限度を超える場合は使い勝手が低下してしまうため、設計をしっかり行い、役割と目的をしっかり認識して作成に取り組むこと。  
**use**ステートメントにより、標準ディレクトリから探し出し、一致ファイルの内部コードを使えるようにする。  

* モジュール  
  利用のためのヘルプ利用例）`perldoc File::Basename`  

* Perlのプログラム実行順序  
  ※以下、useでのファイル読み込み前提説明。  
  1. コンパイル  
     コンパイル実行時にuseがあれば指定のファイルを読み込む。  
  1. 中間コード生成  
  1. インタプリタ実行  

  * 以下、上記の実行順序をさらに正確に表現(できていない)。  
    モジュール内のエクスポート制御について。  
    1. コンパイル  
       コンパイル実行時にuseがあれば指定のファイル(サブルーチン)を読み込む。  
    1. そのサブルーチンのimportサブルーチンが自動呼び出しされる。  
    1. 中間コード生成  
    1. インタプリタ実行  

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

    ※あ・・・ありのまま、今起こった事を話すぜ！  
    私がモジュール説明書の前でモジュールの理解に努めていたと思ったらいつのまにか混乱していた。
    な・・・何を言っているのかわからねーと思うが、私も何をされたのかわからなかった・・・
    頭がどうにかなりそうだった。
    催眠術だとか超スピードだとか、そんなチャチなもんじゃあ断じてねえ。
    もっと恐ろしいものの片鱗を味わったぜ・・・。

* OSごとに、**::** を適切なPathに置き換える。  
  利用している最中の出来事に関係するため、開発に影響ない？  
  利用例）`use Database::Access::Control;`  
  以下のように書き換わる。  
  * Unix・Linux・OS/2  
    `Database/Access/Control.pm`  
  * Windows  
    `Database\Access\Control.pm`  
  * MacOS  
    `Database:Access:Control.pm`  
  * VMS  
    `[Database:Access]Control.pm`  

* モジュールの作成手順  
  1. モジュールの配置場所の決定。  
     `~/Hoge/`など？  
     ※これは、最初だけの作業だと思われるが、開発に関係あるのか？  
  1. このディレクトリの存在をPerlに指示する。  
     `use lib "/Users/asakunotomohiro/lib/perl5/";	# ←☆変数は使えないため気をつけること(ハードコーディングになる)。`  
     もしくは、以下で追加する(上記のほうが優れたやり方だそうだ)。  
     `BEGIN { use File::Basename; my $pwd = dirname($0); push @INC, $pwd; }	←☆このブロック内であれば変数は使える(プログラムファイルのPathを末尾に追加)。`  
     ~~`BEGIN { unshift @INC, "/Users/asakunotomohiro/lib/perl5/"; }`~~	←☆先頭への追加は止めた方が良いようだ。  
     ※`use lib`とは、ライブラリを使うのではなく、ライブラリを探すPathの設定をするだけ。  
  1. モジュール名の各コンポーネント(最後のコンポーネントを除く)に対応するサブディレクトリを標準ライブラリの下にネストして作成する。  
     モジュール名例）`AAAA::SSS::KKK::NNN`  
     ディレクトリ例）`AAAA/SSS/KKK`  
     補足：**NNN**はファイル名になる。
  1. 最下位の(適切な)サブディレクトリにテキストファイルを作成する。  
     ファイル名例）`NNN.pm`  
     ※ちなみに、ファイル名とパッケージ名は一致させておいた方が吉。  
  1. このテキストファイル(Perlプログラムファイル)にコーディングする。  
  1. テキストファイルの末尾に、真に評価される付加的なステートメントを追加する。  
     `1;`  
     ※真になれば何でも構わないが、慣例的に**1**を使う(固定文字列と思うべし)。  

* グローバル配列変数  
  * **@INC**  
    以下を変更もしくは、追加できる。  
    標準ライブラリ  
    ユーザ定義ライブラリのディレクトリ  
  * import文  
    **import**と言うサブルーチンから探し出し、使う。  

* モジュール内のバージョン制御  
  * 使うモジュールのバージョン指定。  
    `use Database::Access::Control 1.20;`  
  * [パッケージ](#practicalusePackages)内でのバージョン指定。  
    `$VERSION = 1.00;`  
    ※パッケージ変数にするため、変数名先頭に**my**を置いてはならない(**package**直後に配置するのが望ましい)。  


<a name="practicaluseFunctionLibuseProgram"></a>
### [useモジュール](https://perldoc.jp/func/use)開発方法
[モジュール](https://perldoc.jp/docs/perl/5.20.1/perlmod.pod)の説明は別途あり。  
※開発と作成のどちらの言葉が適切なのだろう。  

以下、呼び出し側のプログラム例）  
ファイル名：[**関数モジュール(呼ぶ側)use.pl**](./基礎知識用の勉強/5関数勉強/関数モジュール(呼ぶ側)use.pl)
```perl
use v5.24;
BEGIN { use File::Basename; my $pwd = dirname($0); push @INC, $pwd; }	# 末尾に追加(追加しない場合、以下のuse呼び出しがエラーになる)。

use hogebarboo;	# 出力結果：呼ぶ側のプログラムになる。
				# 出力結果：ライブラリ読み込み完了
my @hoge = ("boo", "bar", );

sub hoge {
	say "$VERSION";	# 0.99
	# 以下、パッケージ名をつけて呼ぶこともできるが、利便性が下がる(*.pmのファイル名とパッケージ名が不一致の場合にパッケージ名を付ける必要が出てくる)。
	#&hogebarboo::xxxyyyzzz();
	#	Undefined subroutine &main::xxxyyyzzz called at 関数モジュール(呼ぶ側)use.pl line 9.	←☆上記のBEGINがない場合のエラー。
	&xxxyyyzzz(@hoge);			# 関数ライブラリ：boo bar
	&xxxyyyzzz("関数呼び出し");	# 関数ライブラリ：関数呼び出し
}
&hoge();
```

以下、呼ばれる側のプログラム例）
ファイル名：[**hogebarboo.pm**](./基礎知識用の勉強/5関数勉強/関数モジュール(呼ばれる側)use.pm)
```perl
package hogebarboo;
$VERSION = 0.99;

use v5.24;

use Exporter;
our @ISA = qw(Exporter);
our @EXPORT = qw(asakuno);	←☆バージョン番号を外部から呼び出したい場合もここに追加するが、個々のモジュールバージョンを知りたい人がいないため、追加不要。

sub xxxyyyzzz {
	say "関数ライブラリ：@_";
}
```
ファイル名とパッケージ名は一致させる前提がある。  
異なる名前を付ける場合は、`*.pm`にパッケージを付けてはならない(私の技術力が甘く、適切に関数を呼び出せないため)。  
呼び出し側のプログラムからパッケージを呼び出すことで使えるようになる？(`import パッケージ名;`)  
しかし、それではパッケージ名を知っておく必要が出てくるため、オブジェクト指向の考え方から遠ざかる。  
どうやって回避する？  


#### useモジュールの実体
`use モジュール名;`の実体は、内部で、以下の動きをしている。
```perl
BEGIN{
    require モジュール名;
    import  モジュール名;
}
```
`BEGIN`は、コンパイル時に読み込まれる部分(何度useしようが、1回のみ読み込まれる)。  

</details>

todo: ファイル名とパッケージ名の相違がある場合のuse方法について調べる。  
また、他にも調べることがあるため、後日本来の作業が落ち着いてから調べ直す。  


<a name="practicalusePointer"></a>
<details><summary>応用知識-リファレンス</summary>

### [リファレンス](https://perldoc.jp/docs/perl/5.8.8/perlref.pod)
データの複雑な相互関係を表現するのに適している。  

公式サイトの説明を一部引用
> Perlはシンボリックリファレンスを変数として使うことを簡単にしただけでなく、任意のデータについて「ハード」リファレンスを持つことを可能としたのです。  
> 任意のスカラはハードリファレンスを保持することができます。  
> 配列とハッシュはスカラから構成されているので、あなたはいまや配列の配列、ハッシュの配列、配列のハッシュ、関数のハッシュの配列等々を簡単に組み立てることができるのです。  
・・・中略・・・  
> Perlでリファレンスを使うのは非常に簡単です。  
> 原則のオーバーライドが一つあるだけです。  
> Perlはリファレンス(referencing)やデリファレンス(defreferencing)を暗黙に行うことはありません。  
> スカラがリファレンスを保持しているとき、それは常に単純なスカラとして振る舞います。  
> 勝手に配列や、ハッシュ、サブルーチンとして振る舞うようなことはありません。  
> デリファレンスをすることによって、自分で明示的にPerlに教える必要があります。  

※句点で勝手に改行を入れた(余分なスペース削除)。  
**defreferencing**のスペルあっていますか？  
誤字と思うが？  


<a name="practicalusePointerreference"></a>
#### リファレンス
利用方法は、リファレンスを取得したい対象の先頭に`\`を付けることで取得できる。  
元の変数のことを**リファレント**と言う(下記で言う **$foo**や **@ARGV**など)。  
※リファレンスカウントは、[変数](#variable変数)にて説明している。  

以下、リファレンス作成。
```Perl
$scalarref = \$foo;     # 変数
$arrayref  = \@ARGV;    # 配列
$hashref   = \%ENV;     # ハッシュ
$coderef   = \&handler; # 関数
$globref   = \*foo;     # 型グロブ
```
ただ、  
> バックスラッシュ演算子を使って IO ハンドル(ファイルハンドルまたは ディレクトリハンドル)へのリファレンスを生成することはできません。  

以下、[戻す](#practicalusePointerdereference)。
```Perl
say ${$scalarref};	# \$foo     変数
say @{$arrayref} ;	# \@ARGV    配列
    say $arrayref->[0];	# \@ARGV    配列の1つ目の要素。
    say $arrayref->[1];	# \@ARGV    配列の2つ目の要素。
say %{$hashref}  ;	# \%HASH     ハッシュ
    say $hashref->{key1};	# \%HASH     ハッシュのキー1(値を取り出す)。
    say $hashref->{key2};	# \%HASH     ハッシュのキー2(値を取り出す)。
say $coderef->();	# \&handler 関数(呼び出し後、変な数字が含まれてしまうのは、リターン結果を実行結果にしているため)。
say *{$globref}  ;	# \*foo     	←☆個人的には、同名の変数・配列・ハッシュ・関数を1つにまとめることができると思っている。
```
上記の出力で得られる参照先データを[リファレント](#practicalusePointerreferentidentification)(referent・参照先)と言う(上記で言う`$foo`変数のデータのこと)。  
上記の出力で得られるデータを[デリファレンス](#practicalusePointerdereference)(dereference・参照解決)と言う(上記で言う`${$scalarref}`変数にあるデータのこと)。  
当たり前だが、配列のリファレンスに対して、ハッシュのリファレント扱いした場合、エラーになる([解決っぽい何か](#practicalusePointerreferentidentification))。  
※上記は、配列やハッシュの個々の取得にアロー演算子を活用した。  

配列リファレンス例）
```perl
use v5.24;

my $hoge = "Perlプログラム";
my @hoge = ("配列-配列", "リファレンス");	# この末尾に文字列を追加する。

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
		#		配列-配列を書き換える。
		#		リファレンスを書き換える。
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

ハッシュリファレンス例）
```perl
use v5.24;

my %hoge = (20211216=>"Perlのハッシュリファレンス", 20211217=>"本日は晴天なり。");

sub hashReference() {
	my $refHash   = shift;	# ハッシュのアドレスを取得している。

	say "以下、ハッシュリファレンス ";
	say "%$refHash";	# %HASH(0x7f9fc5805328)
	say %$refHash;		# 20211216Perlのハッシュリファレンス20211217本日は晴天なり。
	say "-" x 10;
	say "$$refHash{20211216}";	# Perlのハッシュリファレンス
	say "$$refHash{20211217}";	# 本日は晴天なり。
	say "-" x 10;
	my @boo = sort keys %$refHash;
	say "@boo";	# 20211216 20211217
	foreach my $value (@boo) {
		say "$$refHash{$value}";
		# Perlのハッシュリファレンス
		# 本日は晴天なり。
	}
	# 以下、上記と同じ事。
	foreach my $value (@boo) {
		say "$refHash->{$value}";
		# Perlのハッシュリファレンス
		# 本日は晴天なり。
	}
}
&hashReference(\%hoge);
```


<a name="practicalusePointerreferentidentification"></a>
##### リファレントの識別。
配列のリファレンスを変数のリファレントとして扱う場合、エラーになる。  
そのエラーを事前に回避するには、`ref`関数を用いることで、識別し、適切なリファレントとして扱える。  
※間違った使い方が可能なのは、**シンボルリファレンス(ソフトリファレンス)**のために存在しているため(私に理解できない部分)。  

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
		my @sumstring;
		my $hoge;
		# 以下、ハッシュの中身を取り出している。
		foreach my $tmp (keys %$val) {
			$hoge = $tmp . "=>" . $$val{$tmp};
			push (@sumstring, $hoge . ",");
		}
		return "ハッシュ" . "(@sumstring)"
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
	my %HASH  = (20211128=>"hoge", 20211129=>"本日は晴天なり。");

	my $scalarref = \$foo;     # 変数
	my $arrayref  = \@ARGV;    # 配列
	my $hashref   = \%HASH;    # ハッシュ
	my $coderef   = \&refFunc; # 関数
	my $doublescalar = \$scalarref;	# 変数のリファレンスをリファレンス化。

	say ref($scalarref);	# 変数
	# 出力結果：SCALAR
	say ref($arrayref);		# 配列
	# 出力結果：ARRAY
	say ref($hashref);		# ハッシュ
	# 出力結果：HASH
	say ref($coderef);		# 関数
	# 出力結果：CODE
	say ref($doublescalar);	# 変数のリファレンスをリファレンス化。
	# 出力結果：REF

	say "識別：" . &trace($scalarref);	# 識別：変数20211128
	say "識別：" . &trace($arrayref);	# 識別：配列20211128 20211129
	say "識別：" . &trace($hashref);	# 識別：ハッシュ(20211129=>本日は晴天なり。, 20211128=>hoge,)
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


<a name="practicalusePointerAnonymousscalarreference"></a>
##### 名前無し変数へのリファレンス(無名変数)
※"名前なし"とは、変数からリファレンスを作らずに、いきなり変数リファレンスを作ることを指す。  

```perl
use v5.10;

sub scalarReference() {
	my $hogeRef = \"本日は晴天なり。";
	say $hogeRef;	# SCALAR(0x7fb80781c7e8)
	say $$hogeRef;	# 本日は晴天なり。
}
&scalarReference();
```
変数を無名リファレンスにする利点は全くない。  


<a name="practicalusePointerAnonymousarrayreference"></a>
##### 名前無し配列へのリファレンス(無名配列)
※"名前なし"とは、配列からリファレンスを作らずに、いきなり配列リファレンスを作ることを指す。  
> 名前の無い配列へのリファレンスは、大かっこを使って作ることができます:  

以下、無名配列リファレンスを活用した配列の入れ子(二次元配列)。
```perl
use v5.24;

my $arrayref = [
				100,
				200,
				[
					'a',
					'ABCDEF',
					'c',
				],
			];

say $arrayref;			# ARRAY(0x7fc7e4014bb8)	←☆デバッグ文字列。
say $arrayref->[0];		# 100
say $arrayref->[1];		# 200
say $arrayref->[2];		# ARRAY(0x7fc7e4003448)	←☆デバッグ文字列。
say $arrayref->[2][0];	# a
say $arrayref->[2][1];	# ABCDEF
say $arrayref->[2][2];	# c
say $arrayref->[2][3];	# 空文字列(undef)
say $arrayref->[3];		# 空文字列(undef)
say "@$arrayref";		# 100 200 ARRAY(0x7faf78803448)
say "@{$arrayref->[2]}";	# a ABCDEF c
    #say "@$arrayref->[2]";		# Can't use an array as a reference at sample.pl line 24.
    #say "$$arrayref->[2]";		# Not a SCALAR reference at sample.pl line 25.
say "@{$arrayref->[2]}[0]";	# a
say "@{$arrayref->[2]}[1]";	# ABCDEF
say "@{$arrayref->[2]}[2]";	# c
    #say "@{$arrayref->[2][0]}";	# Can't use string ("a") as an ARRAY ref while "strict refs" in use at sample.pl line 30.
```

以下、上記と違い、無名配列を変数に入れるのではなく、無名配列を配列に入れる。
```perl
use v5.24;

my @arrayref = (
				[
				100,
				200,
				[
					'a',
					'ABCDEF',
					'c',
				],
			]
			);

say "@arrayref";				# ARRAY(0x7fb00e801bb8)
say "$arrayref[0]";				# ARRAY(0x7fb00e801bb8)
say "@{$arrayref[0]}";			# 100 200 ARRAY(0x7fb00e003448)
say "@{$arrayref[0]}[0]";		# 100	←☆1次元配列目の1番目の要素(見にくい)。
say "@{$arrayref[0]}[1]";		# 200
say "@{$arrayref[0]}[2]";		# ARRAY(0x7fb00e003448)
say "@{$arrayref[0]}[2]->[0]";	# a	←☆1次元配列目の1番目の要素(見にくい)。
say "@{$arrayref[0]}[2]->[1]";	# ABCDEF
say "@{$arrayref[0]}[2]->[2]";	# c
say "$arrayref[2]";				# 空文字列(undef)
say "$arrayref[0]->[0]";		# 100	←☆1次元配列目の1番目の要素(これが通常の利用方法だと思う)。
say "$arrayref[0]->[1]";		# 200
say "$arrayref[0]->[2]";		# ARRAY(0x7fb00e003448)
say "$arrayref[0]->[2][0]";		# a	←☆1次元配列目の1番目の要素(これが通常の利用方法だと思う)。
say "$arrayref[0]->[2][1]";		# ABCDEF
say "$arrayref[0]->[2][2]";		# c
```

以下、失敗(配列リファレンス利用で配列の入れ子を想定していた)
```perl
my @two = ('a', 'b', 'c');
my @one = (1, 2, @two);	←☆入れ子をするが、平坦化が行われる。
my $arrayref = [@one];

say $arrayref->[0];		# 1
say $arrayref->[1];		# 2
say $arrayref->[2];		# a
say $arrayref->[3];		# b
say $arrayref->[4];		# c
```
入れ子失敗理由：配列の[平坦化](#subArrangement1Arrayflattening)が行われるため。  

以下、宣言後の代入により、利用方法が異なる。
```perl
use v5.24;

my @two = ('a', 'b', 'c');	# 1次元配列。
my $array = \@two;			# それをリファレンスとして変数に代入する。

say $$array[0];	# a	←☆これらは変数に配列リファレンスを参照している。
say $$array[1];	# b
say $$array[2];	# c

my $one = "一代入";	# 変数利用。
my $two = "二代入";	# 変数利用。
my @array = (\$one, \$two, );	# 変数リファレンスとして配列に代入する。

say "以下のarrayは配列扱い。";
say "@array";		# SCALAR(0x7fb408805868) SCALAR(0x7fb408805898)
say $array[0];		# SCALAR(0x7fb408805868)
say \$one;			# SCALAR(0x7fb408805868)
say ${$array[0]};	# 一代入	←☆これらは配列に変数リファレンスを参照している。
say ${$array[1]};	# 二代入

say "以下のarrayは変数扱い。";
say @{$array}[0];	# a
say @$array[0];		# a
say "@$array";		# a b c
say $$array[0];		# a
say $$array[1];		# b
```


<a name="practicalusePointerAnonymoushashreference"></a>
##### 名前無しハッシュへのリファレンス(無名ハッシュ)
※"名前なし"とは、ハッシュからリファレンスを作らずに、いきなりハッシュリファレンスを作ることを指す。  
> 名前の無いハッシュへのリファレンスは、中かっこを使って作ることができます:  

以下、無名のハッシュ例）
```perl
use v5.24;

sub hashReference() {
	# 以下、無名ハッシュリファレンス。
	our $hogeRef = {20211217=>"本日は", 20211218=>"晴天なり。"};

	say "以下、ハッシュリファレンス";
	say "%$hogeRef";	# %HASH(0x7fa6a0002448)
	say %$hogeRef;		# 20211218晴天なり。20211217本日は
	say "以下、ちょっと見にくいハッシュリファレンス利用。";
	say "$$hogeRef{20211217}";	# 本日は
	say "$$hogeRef{20211218}";	# 晴天なり。
	say "以下、ちょっとましになったハッシュリファレンス利用。";
	say "$hogeRef->{20211217}";	# 本日は
	say "$hogeRef->{20211218}";	# 晴天なり。
	say "以下、キーを並び替えて取り出す。";
	my @boo = sort keys %$hogeRef;
	say "@boo";	# 20211217 20211218
	foreach my $value (@boo) {
		say "$$hogeRef{$value}";
		# 本日は
		# 晴天なり。
	}
	foreach my $value (@boo) {
		say "$hogeRef->{$value}";
		# 本日は
		# 晴天なり。
	}
}
&hashReference();
```

以下、無名ハッシュをネスト化(要は、入れ子)
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
関数呼び出し後に表示される**1**は、抑止できない？  
正常終了したかどうかを暗黙的に教えてもらいたいとは思っていない。  

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

$pack = "THAT";     # 5の代入が出来ずにエラーになる。
${"${pack}::$name"} = 5;    # Sets $THAT::foo without eval
```
この書き方が出来ないように`use strict 'refs';`を宣言すれば良い。  
宣言する場合は、ブロックで囲み、`no strict 'refs';`を宣言すれば良い。  


<a name="practicalusePointerdereference"></a>
#### デリファレンス
リファレンスの実体化？  

> 変数名やサブルーチン名の一部として識別子を置くところでは、適切な型のリファレンスを持った単純スカラ変数でその識別子を置き換えることができます:  

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
  * [変数](#practicaluseReferencescalar)  
  * [配列](#practicaluseReferencearray)  
  * [ハッシュ](#practicaluseReferencehash)  
  * [関数](#practicaluseReferencefunc)  

<a name="practicaluseReferencescalar"></a>
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
use v5.24;

my @two = ('a', 'b', 'c');	# 2次元配列部分として使う1次元配列。
my @one = (1, 2, \@two);	# 2次元配列作成。
my @array = ("配列1番目の要素", \@one, );		# 3次元配列作成。
my @twoArray = (\@array, "配列最後の要素", );	# 4次元配列作成。
my $arrayref = [@twoArray];  # ☆同じ意味。→	my $arrayref = (\@twoArray);

say $arrayref;					# twoArrayの番地表示。					ARRAY(0x7f9e57802120)
say \@twoArray;					#										ARRAY(0x7f9e57805cb0)
say $arrayref->[0];				# arrayの番地表示。						ARRAY(0x7f9e57805c68)
say \@array;					#										ARRAY(0x7f9e57805c68)
say $arrayref->[1];				# twoArray[1]の値表示。					配列最後の要素
say $arrayref->[0][0];			# array[0]の値表示。					配列1番目の要素
say $arrayref->[0][1];			# array[1]の値表示(要はoneの番地表示)。	ARRAY(0x7f9e57805c08)
say \@one;						#										ARRAY(0x7f9e57805c08)
say $arrayref->[0][1][0];		# oneの値表示。							1
say $arrayref->[0][1][1];		# oneの値表示。							2
say $arrayref->[0][1][2];		# oneの番地表示(要はtwoの番地表示)。	ARRAY(0x7f9e57805728)
say \@two;						#										ARRAY(0x7f9e57805728)
say $arrayref->[0][1][2][0];	# two[0]の値表示。						a
say $arrayref->[0][1][2][1];	# two[1]の値表示。						b
say $arrayref->[0][1][2][2];	# two[2]の値表示。						c
say "-" x 30;
say "@$arrayref";				# ARRAY(0x7f8e9d805e68) 配列最後の要素
say "@$arrayref[0]->[0]";		# 配列1番目の要素
say "@$arrayref[0]->[1]";		# ARRAY(0x7f8e9d805e08)
say "@$arrayref[0]->[1][0]";	# 1
say "@$arrayref[0]->[1][1]";	# 2
say "@$arrayref[0]->[1][2]";	# ARRAY(0x7f8e9d805928)
say "@$arrayref[0]->[1][2][0]";	# a
say "@$arrayref[0]->[1][2][1]";	# b
```
要は、これこそが多次元配列と言うことか？  
これをするだけの利益はあるのだろうか。  

ちなみに、配列リファレンスの見にくい表記が以下になる。
```perl
say "以下、2種類を別表記。";
say $arrayref->[0][1][2][2];	# c
say  @$arrayref[0]->[1][2][2];	# c
say "以下、別表記後";
say $$arrayref[0][1][2][2];		# c
say $$arrayref[0]->[1][2][2];	# c
```
矢印記法(アロー演算子)を用いた方がいいだろう。  
* `$$arrayref[0][1][2][2]`の解釈方法。  
  1. 英数字など(**arrayref**)を探し出す。  
  1. 英数字列の前に記号が付いている場合、変数などのPerlとして意味のある解釈が必要と判断する。  
  1. 名前の左側部分を確認する。  
  1. 左側部分に付いている記号が複数の場合、内側(最も後ろ・名前寄り)から解釈する。  
     例）`$$arrayref[0][1][2][2]`  
     1つ前のドル記号`$`(左から2番目)から解釈する。  
  1. 次に、外側に向かって解決していく。  
     要は、上記例で言う、左端のドル記号`$`(左から1番目)  
  1. それが終わり次第、英数列の右側(**arrayref[** の **[記号** 以降)を確認していく。  
     例）`$$arrayref[0][1][2][2]`  
     1つ目の括弧`[0]`を解釈する。  
  1. 右側の確認は、右に向かって進んでいく。  
     1. 2つ目の括弧`[1]`を解釈する。  
     1. 3つ目の括弧`[2]`を解釈する。  
     1. 4つ目の括弧`[2]`を解釈する。  

以下、通常の2次元配列(無名配列リファレンスを配列に代入)。
```perl
use v5.24;

my @arrayref = (
				[ 100, 200, ],
				[ 'a', "b", ],
				[ "本日は", "晴天なり。", ],
			);

say "@arrayref";			# ARRAY(0x7fe474003448) ARRAY(0x7fe4740189a0) ARRAY(0x7fe474018a78)
say "$arrayref[0]";			# ARRAY(0x7fe474003448)
say "$arrayref[1]";			# ARRAY(0x7fe4740189a0)
say "$arrayref[2]";			# ARRAY(0x7fe474018a78)
say "$arrayref[0]->[0]";	# 100			←☆2次元配列の1番目の要素の1番目の要素。
say "$arrayref[0]->[1]";	# 200			←☆2次元配列の1番目の要素の2番目の要素。
say "$arrayref[1]->[0]";	# a				←☆2次元配列の2番目の要素の1番目の要素。
say "$arrayref[1]->[1]";	# b				←☆2次元配列の2番目の要素の2番目の要素。
say "$arrayref[2]->[0]";	# 本日は		←☆2次元配列の3番目の要素の1番目の要素。
say "$arrayref[2]->[1]";	# 晴天なり。	←☆2次元配列の3番目の要素の2番目の要素。
```

以下、3次元配列の自動生成。
```perl
use v5.24;

my @arrayref;
$arrayref[2021][12][15] = "コミット実施。";

say "$arrayref[2021][12][15]";		# コミット実施。
say "@arrayref";					#                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ARRAY(0x7ffab4003460)
say "$arrayref[2021]->[12][15]";	# コミット実施。
say @arrayref;						# ARRAY(0x7ffab4003460)
say "$arrayref->[2021][12][15]";	# Global symbol "$arrayref" requires explicit package name (did you forget to declare "my $arrayref"?) at sample.pl line 9.	←☆arrayrefは変数ではなく配列なので、この書き方は出来ない。
```
上記は、文字列を代入していない部分は空文字列(undef)が代入されている。  
そのため、出力時に、空白文字が無茶苦茶多く表示されている。  
よって、ダブルクォーテーションで括らなければ、無駄な出力せずに必要な部分のみが出る。  


<a name="practicaluseReferencehash"></a>
以下、ハッシュの無名リファレンスを入れ子にして変数に代入している。
```perl
use v5.24;

sub hashReference() {
	my $hogeRef = {
				20211217=>{
					20211218=>"本日は",
					4774135046=>"[Perl]",
					20080620=>"[gihyo]",
				},
				20211219=>{
					20211220=>"晴天なり。",
					9784774135045=>"[オブジェクト指向]",
					196903=>"[設立]",
				},
			};
	say $hogeRef;								# HASH(0x7fb8bd806d20)
	say $hogeRef->{20211217};					# HASH(0x7fb8bd003448)
	say @{$hogeRef}{20211217};					# HASH(0x7fb8bd003448)
	say $hogeRef->{20211217}{20211218};			# 本日は
	say $hogeRef->{20211217}{4774135046};		# [Perl]
	say $hogeRef->{20211219}{20211220};			# 晴天なり。
	say $hogeRef->{20211219}{9784774135045};	# [オブジェクト指向]
}
&hashReference();
```
また、以下は、無名ハッシュリファレンスを配列に代入している。
```perl
use v5.24;

sub hashReference() {
	my $arrayRef = [
				{
					20211218=>"本日は",
					4774135046=>"[Perl]",
					20080620=>"[gihyo]",
				},
				{
					20211220=>"晴天なり。",
					9784774135045=>"[オブジェクト指向]",
					196903=>"[設立]",
				},
			];
	say $arrayRef;						# ARRAY(0x7f94aa818b20)
	say $arrayRef->[0];					# HASH(0x7f94aa803448)
	say @{$arrayRef}[0];				# HASH(0x7f94aa803448)
	say $arrayRef->[1];					# HASH(0x7f94aa8189b8)
	say $arrayRef->[0]{20211218};		# 本日は
	say $arrayRef->[0]{4774135046};		# [Perl]
	say $arrayRef->[1]{20211220};		# 晴天なり。
	say $arrayRef->[1]{9784774135045};	# [オブジェクト指向]
}
&hashReference();
```
どちらが見やすいかは人それぞれだろうか。  


<a name="practicaluseReferencefunc"></a>
#### サブルーチンへのリファレンス(別名コードレフと言う)。
コードレフ(coderef)  
関数呼び出し時には、関数名を記載するだけで呼び出せた。  
通常の関数呼び出し例）
```per
use v5.24;
sub function
{
	say "関数";
}
function();	←☆関数呼び出し。
```
その関数を無名関数リファレンスにする場合、必ずアンパサンド`&`記号を関数名の先頭に付ける必要が出てくる(上記で言う`\&function`となる)。  

以下、関数リファレンスの作成及び利用例）
```perl
use v5.24;

sub function
{
	say "関数";
}

my $funcRef = \&function;
$funcRef->();
	# 出力結果：関数

say $funcRef;	# CODE(0x7fc6db002850)
```
また、`&$funcRef();`の呼び出し方法も可能(見にくいように思うが、人それぞれ)。  

以下、無名関数リファレンスの作成及び利用例）
```perl
use v5.24;

our $function = sub
{
	say "無名関数リファレンス";
};	←☆最後の;記号を付け忘れないこと。
$function->();
	# 出力結果：無名関数リファレンス

say $function;	# CODE(0x7f90fc01c608)
```


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

[構造体もどき](#practicaluseArrangementArrayStructuretypedef)が扱えるようになる。  


<a name="practicaluseHashmake"></a>
#### 作成方法
様式1：`%ハッシュ名 = ('キー1', 値1, 'キー2', 値2, ・・・ );`  
様式2：`%ハッシュ名 = (キー1 => 値1, キー2 => 値2, ・・・ );`  
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


コピーもできるが、負担が大きいため、止めた方が良い。
`my %new_has = %old_hash;`  


<a name="practicaluseHashhowget"></a>
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

	# 以下、キーから値を取り出している。
	say "$hoge{hoge}";			# 100006601775326
	# 以下、値を基準に探すことは出来ない(この形式ではキーから探すのみ可能)。
	say "$hoge{100006601775326}";	# 空文字列

	# 以下、keys関数からキー値を取り出し、そのキー値からハッシュ値を取り出して表示している。
	for my $key (keys(%hoge)) {
		my $value = $hoge{$key};
		say "$key -> $value";
		# 出力結果：
		#		hoge -> 100006601775326
		#		boo -> 100011324721840
		#		bar -> 300505
	}
	say "%hoge";	# %hoge
	say %hoge;		# hoge100006601775326boo100011324721840bar300505	←☆当然実行ごとに表示順番が変わる。
}
&associativearray();
```


<a name="practicaluseHashmod"></a>
#### 変更方法
様式：
`$ハッシュ名{キー} = 値;`  
※**キー**にスペースを含まない場合、クォーテーション記号は不要。  


<a name="practicaluseHashchange"></a>
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
		#		hoge -> 100006601775326
		#		boo -> 100011324721840
		#		bar -> 300505
	}
	say "-" x 30;
	my %revershoge = reverse %hoge;
	for my $key (keys(%revershoge)) {
		my $value = $revershoge{$key};
		say "$key -> $value";
		# 出力結果：
		#		100006601775326 -> hoge
		#		100011324721840 -> boo
		#		300505 -> bar
	}
}
&associativearray();
```


<a name="practicaluseHashkeysvaluesfunc"></a>
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
use v5.24;

sub associativearray() {
	my %boo = (
		boo => 20211119,
		bar => 9784873118246,
		hoge => "BK4873118247",
	);

	say "以下、通常の値出力方法。";
	say "$boo{boo}, $boo{bar}";	# 20211119, 9784873118246

	say "以下、スライスでの出力方法。";
	say @boo{"boo", "bar"};		# 202111199784873118246
	say @boo{qw(boo bar)};		# 202111199784873118246
	say "@boo{'boo', 'bar'}";	# 20211119 9784873118246
	say "@boo{qw(boo bar)}";	# 20211119 9784873118246

	say "以下、スライスでの値変更。";
	@boo{qw(boo bar)} = (123, 456);
	say @boo{qw(boo bar)};	# 123456
	say "$boo{boo}";		# 123
	say "$boo{bar}";		# 456
	say "$boo{hoge}";		# BK4873118247
    #   {}括弧を[]括弧にした場合、意味が変わってくるため、今回の場合はエラーになる。
}
&associativearray();
```
[削除方法](#practicaluseHashdelete)は別途ある。  


<a name="practicaluseHashkeysort"></a>
##### キーの並べ替え
以下のプログラムで良いようだ。

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


<a name="practicaluseHashvaluesort"></a>
##### 値での並べ替え
以下のプログラムで良いようだ。

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


<a name="practicaluseHashkeyduplicate"></a>
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
		#		9784873118246
		#		20211118
		#		本日は晴天なり。
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
		#		20211118
		#		9784873118246
		#		本日は晴天なり。
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
		#			bar -> 続・初めてのPerl 改訂第2版
		#			boo -> 20180120
		#			hoge -> 20210922
	}
}
&associativearray();
```
ループ内であれば、eachが実行されるたびに、次のキーと値の対が取得される。  
これは、反復子(イテレータ：iterator)技術により、現在値を保持しているため。  


<a name="practicaluseHashexists"></a>
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
		#		hoge -> 4873118247
		#		boo -> 20210922
		#		bar -> 本日は晴天なり。
	}

	say "以下、削除実施。";
	delete $hoge{hoge};	←☆削除実施(複数の場合は配列扱いするため`@hoge{'boo', 'bar'}`などになる)。
	while( my ($key, $value) = each %hoge ) {
		say "$key -> $value";
		# 出力結果：
		#		boo -> 20210922
		#		bar -> 本日は晴天なり。
	}
}
&associativearray();
```
記号の使い分けが慣れない。  


<a name="practicaluseHashenv"></a>
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

以下、ワンライナー実行結果。
```terminal
$ perl -E 'say "$ENV{HISTCONTROL}"';
ignoreboth
$ perl -E 'say "$ENV{SHELL}"';
/bin/bash
$
```

何に使うのか分からないが、GoでのGUI開発は日本語文字を取得するのに環境変数を利用しているな・・・。  


<a name="practicaluseHashsigint"></a>
#### OSのシグナル(`%SIG`)
OSのシグナルをPerl側で制御できるようになる。  
以下、利用例）
```perl
use v5.24;

$SIG{'INT'} = sub {say "割り込み信号(2)受け取り"};	←☆この関数をシグナルハンドラと言う。

for (1..1000000) {
	say $_ . "回目の実行";
}
```
以下、実行結果
```terminal
　　　省略）
760490回目の実行
760491回目の実行
760492回目の実行
760493回目^C760494回目の実行
760495回目の実行
760496回目の実行
760497回目の実行
760498回目の実行
760499回目の実行
760500回目の実行
割り込み信号(2)受け取り	←☆`Ctrl+c`押下による反応。
760501回目の実行
760502回目の実行
760503回目の実行
760504回目の実行
　　　省略）
```
**760493回目**直後にキー入力を行い、**760500回目**直後に反応した。  

</details>

<a name="practicaluseFileoperation"></a>
<details><summary>応用知識-ファイル操作(入出力・File-I/O)</summary>

<a name="practicaluseFileoperationinputoutput"></a>
### [入力と出力](https://perldoc.jp/docs/perl/5.34.0/perlclib.pod)
標準入力からの入力では、`<STDIN>`を使う。  

以下、1行づつの読み込み例）
```perl
while( <STDIN> ) {
	say "入力行値：$_";
}
```
また、以下でも同じ結果を返す。
```perl
foreach( <STDIN> ) {
	say "入力行値：$_";
}
```
ただし、前半は1行づつの読み込みに対し、後半は全てを読み込み終えてから1行づつ出力する。  
そのため、メモリを節約するためにも`while`を使うのが吉。  
何より、さらにショートカットが利用できる。  
以下は、上記を短くしたプログラム。
```perl
while( <<>> ) {
	chomp;
	say "入力行値：$_";
}
```
ダブルダイヤモンド演算子を使うことで、標準入力を行う。  



標準出力からの出力では、`print`を使う。  

以下、出力例）
```perl
my @hoge = ("本日は\n", "晴天なり。\n", "マイクの\nテスト中。\n", );
say "以下、クォートなし。";
print @hoge;
		# 本日は
		# 晴天なり。
		# マイクの
		# テスト中。
say "以下、クォートあり。";
print "@hoge";
		# 本日は
		#  晴天なり。	←☆行頭に意図していないスペースがある。
		#  マイクの	←☆行頭に意図していないスペースがある。
		# テスト中。
```
後半の出力結果が意図していない理由は、改行が含まれているために起こった現象。  
ダブルクォーテーションで括る場合、半角スペースを挟むことになる。  
そのため、2つ目以降の要素を出力するときに、半角スペースを挟んだ後に改行が出力され、文字が出る。  
そのため、改行前に半角スペースが付いてしまう。  
解決策は、1つづつの要素出力時に`chomp`で改行を消す必要があること。  


以下、Perlの仕様である「関数呼び出しのように見えるものは、関数呼び出しである」が適用されている。  
そのため、意図していない計算結果になったのがある。
```perl
say '(2+3) ==' . (2+3);		# (2+3) ==5
say '(2+3)*4 ==' . (2+3)*4;	# (2+3)*4 ==20
say (2+3)*4;				# 5	←☆意図していない結果が出てきた。
```
最後のは、`(say (2+3))*4;`と言う意味。  


<a name="practicaluseFileoperationprintf"></a>
### [フォーマット付き出力(printf)](https://perldoc.jp/func/printf)

以下、プログラム例）
```perl
use v5.24;

say "以下、%gによる都合良く整形してくれる。";
printf "%g %g %g\n", 5/2, 51/17, 51 ** 17;	# 2.5 3 1.0683e+29

say "以下、%dによる10進数出力(小数点以下切り捨て)";
printf "%d %d %d %d\n", 10, 20220102, 2022.0102, -20220102;	# 10 20220102 2022 -20220102

say "以下、%xによる16進数出力";
printf "%x %x %x %x\n", 10, 20220102, 2022.0102, -20220102;	# a 13488c6 7e6 fffffffffecb773a

say "以下、%oによる8進数出力";
printf "%o %o %o %o\n", 10, 20220102, 2022.0102, -20220102;	# 12 115104306 3746 1777777777777662673472

say "以下、%fによる小数点出力";
printf "%f %f %f %f\n", 10, 20220102, 2022.0102, -20220102;	# 10.000000 20220102.000000 2022.010200 -20220102.000000
printf "%.3f %.3f %.3f %.3f\n", 10, 20220102, 2022.0102, -20220102;	# 10.000 20220102.000 2022.010 -20220102.000

say "以下、%記号の出力";
printf "%%\n";	# %	←☆%記号を2つ付けるのが正しい%記号表記になる。

say "以下、カラム幅を揃える。";
printf "%8d\n%8d\n%8d\n%8d\n", 10, 20220102, 2022.0102, -20220102;
			#      10
			#20220102
			#    2022
			#-20220102

say "以下、文字列出力。";
printf "[%s]\n[%-10s]\n[%10s]\n", 'hoge', 'hoge', 'hoge';
			#[hoge]
			#[hoge   ]
			#[   hoge]
printf "[%*s]\n[%*s]\n[%*s]\n", 0, 'hoge', -10, 'hoge', 10, 'hoge';
			#[hoge]
			#[hoge   ]
			#[   hoge]
```


<a name="practicaluseFileoperationarrayprintf"></a>
#### 配列とprintfの組み合わせ。
配列に格納されている個数が不明な場合、フォーマット形式を配列個数に合わせて用意することができる。  

以下、例）
```perl
use v5.24;

my @hoge = qw( 本日は 晴天なり。 マイクの テスト中。);

my $format = ("%s\n" x @hoge);
my $count = @hoge;
print $format;
			# %s
			# %s
			# %s
			# %s
say $count;	# 4
printf $format, @hoge;
			# 本日は
			# 晴天なり。
			# マイクの
			# テスト中。

printf ">" . $format . "<", @hoge;
			# >本日は
			# 晴天なり。
			# マイクの
			# テスト中。
			# <
say;

my $format = (">%s<\n" x @hoge);
printf $format, @hoge;
			# >本日は<
			# >晴天なり。<
			# >マイクの<
			# >テスト中。<

printf ">" . ("%s," x @hoge) . "<\n", @hoge;
			# >本日は,晴天なり。,マイクの,テスト中。,<

printf (">%s<\n" x @hoge), @hoge;
			# ><
			# ><
			# ><
			# ><

printf ">%s<\n" x @hoge, @hoge;
			# >本日は<
			# >晴天なり。<
			# >マイクの<
			# >テスト中。<
```


<a name="practicaluseFileoperationfilehandle"></a>
### ファイルハンドル
Perlと外部との結びつき(コネクション)を言う。  

* ファイルハンドル(filehandle)の種類  
  コネクションであり、ファイルのことではない。  
  * [裸のワード(bareword)](#practicaluseFileoperationfilehandleopen)  
    Perl5.6より古い場合に使われるが、それ以降でも使う。  
    命名規則：英数字とアンダースコアを付ける(先頭は数字以外)。  
    ※すべて大文字にすることで、将来でてくる予約語とかぶることなく使える。  
  * [スカラー変数](#practicaluseFileoperationScalarfilehandle)  
    Perl5.6以降に出来た。  
  * [リファレンス](#practicaluseFileoperationfilehandlereference)  
    上記の裸のワードやスカラー変数とは別扱いとする。  
  * Perl自身が保有する特別なファイルハンドル  
    以下は、Unix起源が主。  
    ※ユーザが以下の名前を任意に使えるが、止めた方が良い。  
    * STDIN  
      標準入力ストリーム(standart input stream)  
    * STDOUT  
      標準出力ストリーム(standard output stream)  
    * STDERR  
      標準エラーストリーム(standard error stream)  
    * DATA  
    * ARGV  
    * ARGVOUT  


<a name="practicaluseFileoperationfilehandleopen"></a>
#### ファイルハンドルを開く(裸のワード)。
Perlが必要と判断したときに、自動でファイルハンドルを開くが、手動で開く場合は、`open`演算子を使う必要がある。  

* `open HOGE, 'boo';`の挙動  
  **boo**という名前のファイルを**HOGE**というファイルハンドルに紐付ける。  
  今後のPerlプログラムでは、**HOGE**を通じて**booファイル**をイジれるようになる。  

* `open HOGE, '<boo';`の挙動  
  上記と紐付けは同じだが、入力用に使うところが今回の挙動になる。  
  ※ただし、これは、上記と同じ挙動とも言える(デフォルト動作が入力用になっているため)。  
  また、ファイル名が変数名の場合、変数を展開することになるのだが、変数に特殊記号を埋め込まれていた場合、脆弱を含むことになる。  
  今後の書き方：`open HOGE, '<', 'boo';`

* `open HOGE, '>boo';`の挙動  
  上記と紐付けは同じだが、出力用に使うところが今回の挙動になる。  
  ※既存のファイルの場合は、上書きする。  
  今後の書き方：`open HOGE, '>', 'boo';`

* `open HOGE, '>>boo';`の挙動  
  上記と紐付けは同じだが、追記出力用に使うところが今回の挙動になる。  
  `$bar='outBar.txt'; open HOGE, "> $bar";`  
  の場合、`>`の直後に半角スペースがある。これは、追加書き込みになる(スペースがない場合新規作成)。  
  今後の書き方：`open HOGE, '>>', 'boo';`

* エンコーディング(encoding)  
  文字コードを指定することができる。  
  * Perlが扱える文字コードの一覧出力プログラム。  
    `perl -MEncode -le "print for Encode->encodings(':all')"`  
    Perlで扱えるが、実行環境が用意できなければ使えないことに注意すること。  
    ※私の環境では、**utf8**と出てきたのだが、以下の指定であっているのか？  
  * 入力時の指定  
    `open HOGE, '<:encoding(UTF-8)', 'boo';`
  * 出力時の指定  
    `open HOGE, '>:encoding(UTF-8)', 'boo';`
  * 追記出力時の指定  
    `open HOGE, '>>:encoding(UTF-8)', 'boo';`

  * ディシプリン(discipline)  
    古いPerlの場合で、行末変換をしたくない場合に限り、以下の宣言で変換を抑止できる。  
    `binmode STDOUT;`これは、行末を変換しない(**STDERR**も同じ)。  
    また、これに文字コードを指定することも可能になった(**v5.6**以降)。  
    `binmode STDOUT, ':encoding(UTF-8)';`(文字コード指定が必須になった？)  
    当たり前だが、入力にも使える。  
    `binmode STDIN, ':encoding(UTF-8)';`
    ※当時はディシプリンの言葉だったが、レイヤーと改名された。  

* 改行指定  
  復帰文字：**CR**(`\r`)  
  改行文字：**LF**(`\n`)  
  * 出力時の指定  
    ※入力も同様。  
    `open HOGE, '>:crlf', $bar;`  
    ※この場合、改行文字をCRLFに変換するが、既にCRLFの場合は、CRが2個連続してしまうことに注意すること。  


<a name="practicaluseFileoperationfilehandleopenFailuredie"></a>
##### ファイルハンドルオープン失敗die
ファイルを開けない場合、失敗すると言うより、ファイルハンドルに紐付けられなければ失敗すると解釈したがあっているか？  

以下、プログラム例）
```perl
my $success = open LOG, '<', 'logfile';
if ( ! $success ) {
    say "open失敗。";
}
close LOG;
```

以下、実行。
```terminal
$ perl 無効なファイルハンドル.pl
open失敗。
以上。
$
```

Perlerとしては、以下のやり方を採用した方がいいようだ。
```perl
if( ! open LOG, '<', 'logfile' ) {
	die "オープン失敗：$!";	←☆dieが実行された場合、ここでプログラムが終了する。
}
```
処理結果が0の場合は正常と判断し、0以外の場合は以上と判断する特性を活かし、if文に直接書き込むことで、記述量を減らす。  

以下、実行。
```terminal
オープン失敗：No such file or directory at 無効なファイルハンドル.pl line 16.
```
失敗理由は`$!`によって呼び出せるが、これが有効なのはシステムへの要求失敗に限る。  
また、`$!`がない場合も**die関数**結果には、ファイル名やエラー行数を示してくれる。  
```perl
if( ! open LOG, '<', 'logfile' ) {
	die "オープン失敗：";
}
close LOG;
```
以下、メッセージ出力結果。
```terminal
オープン失敗： at 無効なファイルハンドル.pl line 19.
```
この情報を付けたくない場合、メッセージ末尾に改行文字を入れること。  
以下、そのプログラム。
```perl
if( ! open LOG, '<', 'logfile' ) {
	die "オープン失敗\n";
}
close LOG;
```
以下、メッセージ出力結果。
```terminal
オープン失敗
```

上記のプログラム作成(条件分岐)がめんどくさい場合、プラグマを使うことで回避できる。  
以下、プログラム例
```perl
use autodie;	←☆プラグマ
open LOG, '<', 'logfile';	←☆このオープン処理失敗時、dieしてくれる。
close LOG;
```
以下、実行結果。
```terminal
Can't open 'logfile' for reading: 'No such file or directory' at 無効なファイルハンドルdie.pl line 12
```
もし、このプラグマが無ければ、メッセージは何も出ず、処理が継続されるだろう。  
そして、意図していない結果になるだろうことが目に浮かぶ。  

以下、併用した場合のプログラム例
```perl
use autodie;

my $success = open LOG, '<', 'logfile';
if ( ! $success ) {
	say "open失敗。";
}
close LOG;
```
以下、実行結果。
```terminal
Can't open 'logfile' for reading: 'No such file or directory' at 無効なファイルハンドルdie.pl line 12
```
任意のメッセージを出すことが出来ないようだ。  


<a name="practicaluseFileoperationfilehandleopenFailurewarn"></a>
##### ファイルハンドルオープン失敗warn
上記の**die関数**の場合は、そこでプログラムが終了した。  
しかし、継続したい場合は、warn関数を使うことで、プログラム終了せずに継続処理が行える。  

以下、プログラム例）
```perl
if( ! open LOG, '<', 'logfile' ) {
	warn "オープン失敗：$!";
}
say "プログラム継続";
close LOG;
```
以下、出力結果(警告メッセージ)。
```terminal
オープン失敗：No such file or directory at 無効なファイルハンドルwarn.pl line 12.
プログラム継続
```


<a name="practicaluseFileoperationfileopenread"></a>
#### ファイルハンドルからのファイル読み込み。
上記のファイルハンドルを用いて、ファイル内容を読み込む。  
以下、プログラム。
```perl
use v5.24;

sub inputOutput() {
	if( ! open FILE, '<', shift) {
		die "存在するファイルを引数に渡すこと($!)。"
	}
	while( <FILE> ) {
		chomp;
		say $_;
	}

	close FILE;
}
&inputOutput(@ARGV);
```

以下、実行。
```terminal
$ perl ファイル読み込み.pl 名称未設定.txt
テストファイル。
$ perl ファイル読み込み.pl	←☆引数を渡さなければ、die関数が働くと思ったよ。
$ perl ファイル読み込み.pl abc	←☆存在しないファイルもしくは開けないファイルを渡したときにdie関数が動く。
存在するファイルを引数に渡すこと(No such file or directory)。 at ファイル読み込み.pl line 5.
$
```


<a name="practicaluseFileoperationfileopenwrite"></a>
#### ファイルハンドルからのファイル書き込み。
上記のファイルハンドルを用いて、ファイルに書き込む。  

<details><summary>完成前の勉強プログラム</summary>

以下、プログラム。
```perl
use v5.24;

my @hoge = qw( 本日は 晴天なり。 明日も晴天だ。 );

say "ファイル書き込み開始。";
sub inputOutput() {
	if( ! open FILE, '>>', shift) {
		die "書き込めるファイルを引数に渡すこと($!)。"
	}
	foreach( @hoge ) {
		say FILE $_;
	}

	close FILE;
}
&inputOutput(@ARGV);
say "ファイル書き込み終了。";
```
以下、実行結果。
```terminal
$ ls abc
ls: abc: No such file or directory
$ perl ファイル書き込み.pl abc
ファイル書き込み開始。
ファイル書き込み終了。
$ ls abc
abc
$ cat abc
本日は
晴天なり。
明日も晴天だ。
$
```

当たり前だが、引数を渡さない場合何も起こらない。
```terminal
$ ls -1 -t | head -2
ファイル書き込み.pl
名称未設定84.txt
$ perl ファイル書き込み.pl	←☆コマンドライン引数なし。
ファイル書き込み開始。
ファイル書き込み終了。
$ ls -1 -t | head -2
ファイル書き込み.pl
名称未設定84.txt
$
```

上記の書き込み方法では、ファイルハンドルを指定する必要がある。  
そのため、**select演算子**を使い、ファイルハンドルを変更する。  
以下、プログラム例）
```perl
use v5.24;

my @hoge = qw( 本日は 晴天なり。 明日も晴天だ。 );

say "ファイル書き込み開始。";
sub inputOutput() {
	if( ! open FILE, '>>', shift) {
		die "書き込めるファイルを引数に渡すこと($!)。"
	}
	select FILE;	←☆標準の出力先を任意のファイルハンドルに変更する。
	foreach( @hoge ) {
		say $_;	←☆この内容が任意のファイルハンドルに出力される。
	}

	close FILE;
}
&inputOutput(@ARGV);
say "ファイル書き込み終了。";	←☆上記で書き込み先を変更しているため、これもファイルに書き込まれる。
```
以下、実行。
```terminal
$ perl ファイル書き込み.pl abc
ファイル書き込み開始。
$ cat abc
本日は
晴天なり。
明日も晴天だ。
ファイル書き込み終了。	←☆これは、ファイルに書き込む内容ではない。
$
```
書き込んで欲しくない内容がファイルに書き込まれている。  
そのため、ファイル書き込み先を戻す必要がある。  
以下、その修正プログラム。
```perl
use v5.24;

my @hoge = qw( 本日は 晴天なり。 明日も晴天だ。 );

say "ファイル書き込み開始。";
sub inputOutput() {
	if( ! open FILE, '>>', shift) {
		die "書き込めるファイルを引数に渡すこと($!)。"
	}
	select FILE;
	foreach( @hoge ) {
		say $_;
	}
	select STDOUT;	←☆標準出力先を標準の出力先に戻した(変な日本語)。

	close FILE;
}
&inputOutput(@ARGV);
say "ファイル書き込み終了。";
```
以下、実行結果。
```terminal
$ ls abc
ls: abc: No such file or directory
$ perl ファイル書き込み.pl abc
ファイル書き込み開始。
ファイル書き込み終了。
$ ls abc
abc
$ cat abc	←☆適切な内容でファイルに書き込まれている。
本日は
晴天なり。
明日も晴天だ。
$
```

</details>

書き込み先の標準先を指定のファイルハンドルに変更し、書き込み時はバッファせずに都度フラッシュを行い、書き込み終了時に標準の出力先を標準の出力先に戻す。  
そのプログラムが以下になる。
```perl
use v5.24;

my @hoge = qw( 本日は 晴天なり。 明日も晴天だ。 );

say "ファイル書き込み開始。";
sub inputOutput() {
	if( ! open FILE, '>>', shift) {
		die "書き込めるファイルを引数に渡すこと($!)。"
	}
	select FILE;	# 標準の出力先を指定のファイルハンドルに変更する。
	$| = 1;	# 出力のたびにファイル書き込みをする(ため込まない)。
	foreach( @hoge ) {
		say $_;	# 配列内容を1行づつ書き込む。
	}
	select STDOUT;	# 標準の出力先を標準の出力先に戻す。

	close FILE;	# ファイルハンドル終了。
}
&inputOutput(@ARGV);
say "ファイル書き込み終了。";
```
以下、実行結果。
```terminal
$ perl ファイル書き込み.pl abc
ファイル書き込み開始。
ファイル書き込み終了。
$ cat abc	←☆書き込み完了。
本日は
晴天なり。
明日も晴天だ。
$
```
別のプログラムでの話だが、ファイルオープン直後に`$| = 1;`処理をさせたが、書き込みが即座に行われなかった。  
仕方ないため、close演算子を持ち込み、即座に出力させた(効率が悪いと言うより、悪手だと思う)。  
その原因が、ファイルハンドルを切り替えずに使ったため。  
有効にするには、**select**でわざわざ切り替える必要があった・・・めんどくさい。  


<a name="practicaluseFileoperationfileopenerrwrite"></a>
#### 標準エラーをファイルに書き込む。
標準エラーの出力先をファイルに変更する。  
```perl
if( ! open STDERR, '>>', '/home/hoge/.eeor_log') {
	die "エラーログファイルオープン失敗($!)。";
}
```
これでいいそうだが、どうなる？  
（検証なし。）  


<a name="practicaluseFileoperationScalarfilehandle"></a>
#### ファイルハンドルを開く(スカラー変数)。
[裸のワード](#practicaluseFileoperationfilehandleopen)の場合は、ファイルハンドルをそのまま使うことを言う。  
そして、そうでない使い方は、スカラー変数に入れてから使うことになる。  
リファレンスを操作すると言うより、ファイルハンドルというリファレンスをスカラー変数に入れて使うという表現が正確なようだ。  

以下、読み込み用プログラム例
```perl
use v5.24;

sub inputOutput() {
	my $file_fh;
	open $file_fh, '<', $_[0] or die "$_[0]のファイルオープン失敗($!)";
	say $file_fh;	# GLOB(0x7fea16814188)	←☆リファレンスであることが証明された。
	# open my $file_fh, '<', $_[0] or die "$_[0]のファイルオープン失敗($!)";	←☆変数宣言を同時に行える。
	while( <$file_fh> ) {
		chomp;
		say $_;
	}
	close $file_fh;
}
&inputOutput(@ARGV);
```
以下、実行結果。
```terminal
$ perl ファイル読み込み_スカラー変数利用.pl test.txt
テストファイル。
$ cat test.txt
テストファイル。
$
```


以下、書き込み用プログラム例
```perl
use v5.24;

my @hoge = qw( 本日は 晴天なり。 明日も晴天だ。 );

say "ファイル書き込み開始。";
sub inputOutput() {
	open my $file_fh, '>', $_[0]
		or die "$_[0]のファイルオープン失敗($!)";	←☆ファイル書き込み用にファイルハンドルを変数に代入する。
	select $file_fh;	←☆書き込み先の設定。
	foreach( @hoge ) {
		say;	←☆実際の書き込み。
	}
	select STDOUT;	←☆書き込み先を戻す。
	close $file_fh;
}
&inputOutput(@ARGV);
say "ファイル書き込み終了。";
```
以下、実行結果。
```terminal
$ ls abc
ls: abc: No such file or directory
$ perl ファイル書き込み.pl abc	←☆書き込み実施。
ファイル書き込み開始。
ファイル書き込み終了。
$ cat abc	←☆意図した通りに書き込まれている。
本日は
晴天なり。
明日も晴天だ。
$
```


<a name="practicaluseFileoperationfilehandlereference"></a>
#### ファイルハンドルへのリファレンス
古いPerlプログラムで目にする形式として、リファレンスを使った方法がある。  
大きなプログラムでは[スカラー変数](#practicaluseFileoperationScalarfilehandle)を使い、簡易的な短いプログラムでは[裸のワード(bareword)](#practicaluseFileoperationfilehandleopen)を使い、リファレンスを使うプログラムは既存の保守で目にするぐらいに留めた方が良いだろう。  

<details><summary>使い方が分からず閉鎖</summary>

以下、使用例にならないプログラム）
```perl
use v5.24;

sub inputOutput() {
	#local *FILE = $_[0];	←☆なくて動くって・・・結局リファレンス利用はどこいった？
	open (FILE, $_[0]) or die "ファイルオープン失敗($!)";
	while( <FILE> ) {
		chomp;
		say $_;
	}
}
&inputOutput(@ARGV);
```
[全く使い方が分からない](https://perldoc.jp/docs/perl/5.8.8/perldata.pod)。  

以下の使い方が正しい？
```perl
use v5.24;

sub inputOutput() {
	open (*FILE, $_[0]) or die "ファイルオープン失敗($!)";	←☆FILE先頭に*記号を付けた。
	while( <FILE> ) {
		chomp;
		say $_;
	}
	close *FILE; # アスタリスク記号のないFILEでも問題ないため、正解が分からない。
}
&inputOutput(@ARGV);
```
しかし、**open**自体がない時代に使われた技法が型グロブ何だよね？  
open使ったら意味ないというか、、、今回のプログラムにふさわしくない(と言うより、間違っている)。  
以下のプログラムが動かない理由が分からない。
```perl
use v5.24;	←☆削除しても動かないため、バージョンの問題ではないようだ。

sub inputOutput() {
	local *FILE = $_[0];
	while( <FILE> ) {
		chomp;
		say;
	}
	close *FILE;
}
&inputOutput(@ARGV);
```

</details>


<a name="practicaluseFileoperationfilehandlereference"></a>
### IO::Handle
**IO::Handle**を基底とした派生クラスのモジュールを使うことで使い勝手が向上するそうだ。  

* 派生クラスのモジュール  
  * IO::File  
    ファイル操作用モジュール。  
  * IO::Scalar  
    文字列内に出力を組み立てる外部モジュール。  
    ※インストールが必要。  
  * IO::Tee  
    複数の場所に同時出力(入力も可)を行う外部モジュール。  
    ※インストールが必要。  


<a name="practicaluseFileoperationFiledelete"></a>
### ファイル削除
ファイルを削除するには、**unlink演算子**を使うことで、ファイルの削除が完了する。  
様式：
`unlink ファイル名;`  

以下、削除プログラム例）
```perl
use v5.24;
use Cwd;	# カレントディレクトリ呼び出しモジュール。

sub inputOutput() {
	my $currentDir = getcwd();
	say "以下、削除前のディレクトリ配下状況確認(及び、ファイル削除実施)。";
	opendir my $dh, $currentDir or die "ディレクトリオープン失敗($!)。";
	while (my $filename = readdir $dh) {
		next unless $filename =~ /\.txt\z/;
		say $filename;
		say "$filenameファイルの削除結果：" . unlink $filename;	←☆実際の削除(削除件数が結果で返る)。
			# hoge.txt	←☆削除対象のファイル名。
			# hoge.txtファイルの削除結果：1	←☆実際の削除結果(1になっているのは、1ファイル削除したことを示す)。
			# boo.txt	←☆削除対象のファイル名。
			# boo.txtファイルの削除結果：1	←☆実際の削除結果。
			# bar.txt	←☆削除対象のファイル名。
			# bar.txtファイルの削除結果：1	←☆実際の削除結果。
	}
	say "以下、削除後のディレクトリ配下状況確認。";
	opendir my $dh, $currentDir or die "ディレクトリオープン失敗($!)。";
	while (my $filename = readdir $dh) {
		next unless $filename =~ /\.txt\z/;
		say $filename;
			# 何も出てこない(故に削除成功)。
	}

	closedir $dh;
```
通常利用のファイル削除実施したが、特に問題ない。  
唯一問題がある箇所は、ファイル削除失敗に対する処理が無いこと。  


#### ファイル削除失敗
通常のファイルは、Perlプログラムならば消すことができる。  
削除不可のファイルは、権限のないディレクトリにある場合に限る・・・きっと。  

以下、通常のターミナル作業。
```terminal
$ touch abc
$ chmod 000 abc
$ ll abc
----------  1 asakunotomohiro  wheel  0  1  8 21:45 abc
$ rm abc
override ---------  asakunotomohiro/wheel for abc?	←☆Yesを選択することで消せる(恐ろしい)。
$ echo $?
0
$ ll abc
----------  1 asakunotomohiro  wheel  0  1  8 21:45 abc
$
```
通常の削除は、ファイルへの権限に掛かっている。  
しかし、Perlプログラムの場合は、ディレクトリ権限による。  

以下、Perlプログラムでの削除成功(ファイルには権限がないため、失敗を想定していた)。
```terminal
$ cat test.pl	←☆プログラム内容表示(バグあり？)。
use v5.24;

say "以下、削除前のディレクトリ配下状況確認。";
foreach (<./test20220108/*>) {
	say;
}
say "abcファイル削除結果：" . unlink './test20220108/abc' or warn "ファイル削除失敗($!)\n";
say "以下、削除後のディレクトリ配下状況確認。";
foreach (<./test20220108/*>) {
	say;
}
$
$ ll test20220108
total 0
----------  1 asakunotomohiro  staff  0  1  8 22:00 abc
$ perl test.pl
以下、削除前のディレクトリ配下状況確認。
./test20220108/abc	←☆このファイルを削除予定。
abcファイル削除結果：1	←☆削除実施及び、成功。
以下、削除後のディレクトリ配下状況確認。	←☆削除されたため、何もない。
$ ll test20220108	←☆ターミナルでの確認もファイルがないことを確認した。
$
```

以下、ディレクトリの権限変更にて、Perlプログラムではファイル削除できないことを確認した。

<details><summary>プログラムミス。</summary>

以下、バグ含む。
```terminal
$ ll -d test20220108
drwxr-xr-x  3 asakunotomohiro  staff  96  1  8 22:22 test20220108/	←☆通常のディレクトリ権限。
$ ll test20220108/
total 0
-rw-r--r--  1 asakunotomohiro  staff  0  1  8 22:22 abc	←☆ファイルがあることを確認した。
$ chmod 555 test20220108/	←☆ディレクトリの権限変更。
$ ls test20220108/	←☆権限変更後もファイル確認は出来た。
abc
$ ll -d test20220108
dr-xr-xr-x  3 asakunotomohiro  staff  96  1  8 22:22 test20220108/	←☆書き込み権限が無くなっている。
$ perl test.pl	←☆Perlプログラム実行(ファイル削除実行)。
以下、削除前のディレクトリ配下状況確認。
./test20220108/abc	←☆ある。
abcファイル削除結果：0	←☆消せないようだ。
以下、削除後のディレクトリ配下状況確認。
./test20220108/abc	←☆ある。
$ ll test20220108/
total 0
-rw-r--r--  1 asakunotomohiro  staff  0  1  8 22:22 abc	←☆ディレクトリ配下に消したはずのファイルがある。
$ ll -d test20220108
dr-xr-xr-x  3 asakunotomohiro  staff  96  1  8 22:22 test20220108/	←☆権限が変わったことで、ファイルを消せなくなっている。
$
$ chmod 755 test20220108/	←☆ディレクトリ権限を戻す。
$ perl test.pl	←☆再度プログラム実行。
以下、削除前のディレクトリ配下状況確認。
./test20220108/abc
abcファイル削除結果：1	←☆消せたようだ。
以下、削除後のディレクトリ配下状況確認。
$ ll test20220108/	←☆消えている。
$
```
不思議なのは、**warn**が出力されなかったこと。  
~~どういうこと!?~~  
プログラムに原因があるのだろう。  

以下、ディレクトリ権限を全て取っ払った。
```terminal
$ ll -d test20220108
d---------  3 asakunotomohiro  staff  96  1  8 22:40 test20220108/	←☆何の権限も無い状態。
$ ll test20220108/	←☆ゆえに、中を見ること出来ず。
ls: : Permission denied
$ perl test.pl
以下、削除前のディレクトリ配下状況確認。
0	←☆しかし、警告が出てこない。
以下、削除後のディレクトリ配下状況確認。
$
```
どんな権限だろうが、warnが機能していない。  
0かどうかで判断した方が良い？  

</details>

以下、警告箇所を判断文に変更した。
```terminal
$ ll test20220108/abc	←☆削除ファイルの存在確認。
-rw-r--r--  1 asakunotomohiro  staff  0  1  8 23:18 test20220108/abc
$ perl test.pl
以下、削除前のディレクトリ配下状況確認。
./test20220108/abc
abcファイル削除結果：1	←☆通常削除。
以下、削除後のディレクトリ配下状況確認。
$ ll test20220108/abc	←☆削除成功。
ls: test20220108/abc: No such file or directory
$
$   # 以下、削除に失敗する(意図した結果なので成功)。
$ ll test20220108/abc
-rw-r--r--  1 asakunotomohiro  staff  0  1  8 23:20 test20220108/abc
$ ll -d test20220108
dr-xr-xr-x  3 asakunotomohiro  staff  96  1  8 23:20 test20220108/	←☆ディレクトリに書き込み権限がない。
$ perl test.pl
以下、削除前のディレクトリ配下状況確認。
./test20220108/abc	←☆このファイルを削除したい。
ファイル削除失敗(Permission denied)	←☆警告メッセージ出力。
以下、削除後のディレクトリ配下状況確認。
./test20220108/abc	←☆削除に失敗し、ファイルが残っている。
$ ll test20220108/abc
-rw-r--r--  1 asakunotomohiro  staff  0  1  8 23:20 test20220108/abc	←☆消したいファイルが残っている・・・要は、成功。
$
```
削除失敗時に警告を出すように[if修飾子](#practicaluseConditionalifmodifier)を使っていたが、どうやら機能の誤解をしていたようで、バグになって出力されない条件式にしていた。  
仕方ないため、通常の条件分岐式に変更した。  
以下、今回実行したプログラム。
```perl
use v5.24;

say "以下、削除前のディレクトリ配下状況確認。";
foreach (<./test20220108/*>) {
	say;
}
my $ret = unlink './test20220108/abc';	←☆削除結果を変数に代入している。
if( $ret ) {	←☆0であれば偽になることを利用した。
	say "abcファイル削除結果：$ret"
}
else{
	warn "ファイル削除失敗($!)\n"
}
say "以下、削除後のディレクトリ配下状況確認。";
foreach (<./test20220108/*>) {
	say;
}
```
今回固有のプログラムになっているが、問題ありますまい。  


<a name="practicaluseFileoperationFilenamechange"></a>
### ファイル名変更
ファイル名を変更するには、**rename関数**を使うことで、ファイル名の変更が完了する。  
様式：
`rename [変更前], [変更後];`  

Pathを変えることで、ファイルの移動も可能になる。  
様式：
`rename [Path1/ファイル名], [Path2/ファイル名];`  
ただし、
`rename [ファイル名], [Path2];`
と言う感じでファイル移動は出来ない。  
また、ファイル移動をする場合は、移動後のディレクトリ権限を持っている前提が必須になる。  
そして、ディスクを跨いだ移動はできない。  

Pathを変えることで、ファイルの移動も可能になるだけでなく、ファイル名の変更も同時にできる。  
様式：
`rename [Path1/変更前ファイル名], [Path2/変更後ファイル名];`  

上記のカンマ区切り`,`は、`=>`に置き換えることもできる。  
`rename [変更前] => [変更後];`  

以下、単純ファイル名変更プログラム(カレントディレクトリのファイルなのでグロブ使用)。
```perl
use v5.24;

sub filemove() {
	my $changefile = shift;
	say "以下、ディレクトリ内容確認。";
	foreach my $filename (<*.txt *.md>) {	←☆グロブでの利用(便利だが、サブディレクトリには使えない)。
		if( $filename eq $changefile ) {
			say "\t$filename";
		}
	}
	say "ここまでがディレクトリ確認処理。"
}

sub filenameFunc() {
	my $hoge = "テストファイル.txt";	# 変更前のファイル名。
	say "ファイル作成実施。";
	if( ! open FILE, '>>', $hoge) {	←☆ファイル名変更失敗させるときは、コメントアウトする。
		die "書き込み失敗($!)。"
	}

	&filemove($hoge);	←☆ディレクトリ状況確認。
	my $filename = 'hoge.md';	# 変更後のファイル名。
	if( -e $filename ) {
		warn "既に同名ファイルが存在する。\n";	←☆既存ファイルを上書きしないために必要な対応。
	}
	elsif( rename $hoge => $filename ){
		say "変更成功($hoge => $filename)。";
		$hoge = $filename;
	}
	else{
		warn "ファイル名変更失敗($!)。\n";
	}
	&filemove($hoge);	←☆ディレクトリ状況確認。

	say "$filenameファイルの削除結果：" . unlink "$filename" or warn "ファイル削除失敗($!)。";
}
&filenameFunc(@ARGV);
```
以下、実行記録。
```terminal
$ perl ファイル名変更.pl
ファイル作成実施。
以下、ディレクトリ内容確認。
	テストファイル.txt	←☆このファイルを変更する。
ここまでがディレクトリ確認処理。
変更成功(テストファイル.txt => hoge.md)。
以下、ディレクトリ内容確認。
	hoge.md	←☆変更後のファイル名。
ここまでがディレクトリ確認処理。
hoge.mdファイルの削除結果：1	←☆後始末。
$
```

以下、ディレクトリ権限がなく、ファイル名変更に失敗する。
```terminal
$ ll
total 16
-rw-r--r--  1 asakunotomohiro  staff     0  1  9 16:22 テストファイル.txt	←☆この名前を変えるつもり。
drwxr-xr-x  3 asakunotomohiro  staff    96  1  9 16:02 ファイルの移動先ディレクトリ/
-rwxr-xr-x  1 asakunotomohiro  staff  2912  1  9 15:56 ファイル名変更.pl*
$ ll -d .
dr-xr-xr-x  7 asakunotomohiro  staff  224  1  9 16:22 ./	←☆変更権限がない。
$ perl ファイル名変更.pl	←☆変更実施。
ファイル作成実施。	←☆これは、今回この処理はコメントアウトしている。
以下、ディレクトリ内容確認。
	テストファイル.txt
以下、単純ファイル名変更。
ファイル名変更失敗(Permission denied)。	←☆失敗。
以下、ディレクトリ内容確認。
	テストファイル.txt
以上、単純ファイル名変更。
hoge.mdファイル削除。
ファイル削除失敗(No such file or directory)。 at test.pl line 79.
以上。
$ ll
total 16
-rw-r--r--  1 asakunotomohiro  staff     0  1  9 16:22 テストファイル.txt	←☆当たり前だが、変わっていない。
drwxr-xr-x  3 asakunotomohiro  staff    96  1  9 16:02 ファイルの移動先ディレクトリ/
-rwxr-xr-x  1 asakunotomohiro  staff  2912  1  9 15:56 ファイル名変更.pl*
$
```

以下、ファイルをディレクトリに移動しつつファイル名を変更するプログラムであり、その変更後のファイル名をさらに変更しつつカレントディレクトリに戻すこともする。
```perl
use v5.24;
use Cwd;	# カレントディレクトリ呼び出しモジュール。

sub filemove() {
	my $changefile = shift;
	say "以下、ディレクトリ内容確認。";
	my $currentDir = getcwd();	# カレントディレクトリ取得。
	opendir my $dh, $currentDir or die "ディレクトリオープン失敗($!)。";
	foreach my $filename (readdir $dh) {
		next if $filename =~ /^[.]/;	# ドットから始まる場合は、ループの先頭にスキップする。
		if( -f $filename && $filename eq $changefile ) {
			say "\t$filename";
		}
		elsif( -d $filename ) {
			say "\t以下、$filenameディレクトリ配下の状況。";
			opendir my $underdh, $filename or die "配下のディレクトリオープン失敗($!)。";
			foreach my $subfilename ( readdir $underdh ) {
				next if $subfilename =~ /^[.]/;	# 正規表現利用。
				if( -f "$filename/$subfilename" && $subfilename eq $changefile ) {
					say "\t\t$subfilename";
				}
			}
			say "\t以上、ここまでがディレクトリ配下の状況。";
		}
	}
}

sub filenameFunc() {
	my $filename = "テストファイル.txt";	# 変更前のファイル名。
	say "ファイル作成実施。";
	if( ! open FILE, '>>', $filename) {
		die "書き込み失敗($!)。"
	}

	# ここからが、ファイル移動作業。
	&filemove($filename);
	say "以下、ファイル移動。";
	my $dirname = "ファイルの移動先ディレクトリ";
	my $newfilename = "bar.txt";
	if( rename $filename => "$dirname/$newfilename" ){	# ディレクトリ移動及びファイル名変更。
		say "カレントディレクトリにある$filenameファイルを'$dirname/$newfilename'に移動成功。";
		$filename = $newfilename;
	}
	else{
		warn "$filenameファイル移動失敗($!)。\n";
	}
	# ここまでが、ファイル移動作業。
	&filemove($filename);
	# ここからが、ファイル移動後にファイル名変更作業。
	my $booname = "boo.md";
	say "以下、$dirnameディレクトリからファイル($filename)をカレントディレクトリに$boonameとして移動。";
	if( rename "$dirname/$newfilename" => "$booname" ){	# 変更実施。
		say "'$dirname/$newfilename'からカレントディレクトリに$boonameファイルを移動成功。";
		$filename = $booname;
	}
	else{
		warn "ファイル移動失敗($!)。\n";
	}
	# ここまでが、ファイル移動後にファイル名変更作業。
	&filemove($filename);

	say "$filenameファイル削除。";
	unlink "$filename" or warn "ファイル削除失敗($!)。";
}
&filenameFunc(@ARGV);
```

以下、上記のプログラムの実行記録。
```terminal
$ perl ファイル名変更.pl
ファイル作成実施。
以下、ディレクトリ内容確認。
	テストファイル.txt	←☆作成されたこのファイルを移動及び名前を変える。
	以下、ファイルの移動先ディレクトリディレクトリ配下の状況。
	以上、ここまでがディレクトリ配下の状況。
以下、ファイル移動。
カレントディレクトリにあるテストファイル.txtファイルを'ファイルの移動先ディレクトリ/bar.txt'に移動成功。
以下、ディレクトリ内容確認。
	以下、ファイルの移動先ディレクトリディレクトリ配下の状況。
		bar.txt	←☆ディレクトリに移動後、ファイル名が変更された。
	以上、ここまでがディレクトリ配下の状況。
以下、ファイルの移動先ディレクトリディレクトリからファイル(bar.txt)をカレントディレクトリにboo.mdとして移動。
'ファイルの移動先ディレクトリ/bar.txt'からカレントディレクトリにboo.mdファイルを移動成功。
以下、ディレクトリ内容確認。
	以下、ファイルの移動先ディレクトリディレクトリ配下の状況。
	以上、ここまでがディレクトリ配下の状況。
	boo.md	←☆カレントディレクトリに移動完了。
boo.mdファイル削除。	←☆後始末。
$
```


<a name="practicaluseFileoperationlinkandfile"></a>
### リンクとファイル

* リンクによる制限  
  [ハードリンク](#practicaluseFileoperationlinkandfilehardlink)(hard link)のこと(`link '元ファイル名', 'リンクファイル名' or warn "ハードリンク作成失敗$!"`)。  
  * ディレクトリに対してリンク作成は出来ない。  
  * ディスクを跨いだリンク付けはできない。  

  元のファイルと繋がっているため、書き込みなどの編集が反映される。  
  しかし、元のファイルが削除された場合もリンクファイルが実体として読み書きできる。  
  そのため、ハードリンクファイルなのか、本来のファイルなのか判断できない。  
  ~~これは困ると思うのだが、なぜこれがまかり通るのだろうか。~~  
  困らない理由は、元ファイル削除後は、ハードリンクファイルが元ファイルに昇華するため。  
  また、ハードリンクファイルを削除した場合、元ファイルも引きずられて消える場合がある。  

* 上記の制限回避方法  
  * [シンボリックリンク](#practicaluseFileoperationlinkandfilesymboliclink)(ソフトリンク・symbolic link・soft link)の活用。  
    `symlink '元ファイル名', 'リンクファイル名' or "シンボリックリンク作成失敗$!"`
    * [ソフトリンクファイルから大本にたどる方法。](#practicaluseFileoperationlinkandfilesymboliclinkfollow)  
    * [存在しないファイルからソフトリンクファイルの作成。](#practicaluseFileoperationlinkandfilesymboliclinkmakeghost)  


<a name="practicaluseFileoperationlinkandfilehardlink"></a>
#### ハードリンクファイル作成
[様式](https://perldoc.jp/func/link)：
`link 元ファイル, リンクファイル`  

* 以下のプログラムでやりたいこと。  
  1. 元ファイルの作成。  
  1. 元ファイルへの書き込み。  
  1. ハードリンクファイル作成。  
  1. ハードリンクファイルへの書き込み。  
  1. 元ファイルへの書き込み。  
  1. ハードリンクファイルの内容確認。  
     元ファイルへの書き込みが反映されていることを確認するのが目的。  
  1. 元ファイルの内容確認。  
     ハードリンクファイルへの書き込みが反映されていることを確認するのが目的。  
  1. おまけで、ハードリンクファイル削除後、元ファイルの存在有無確認。  


以下、ハードリンクファイル作成用プログラム例）
```perl
use v5.24;

sub linkfunc() {
	my $hoge = "リンクファイル.txt";	# 変更前のファイル名。
	say "ファイル($hoge)作成実施。";
	die "書き込み失敗($!)。" unless open my $file_fh, '>>', $hoge;
	select $file_fh;	# 下記のフラッシュを有効にするには、ファイルハンドルを切り替える必要がある。
	$| = 1;	# 即座にフラッシュする。
	say $hoge;	# 書き込み。
	select STDOUT;

	my $cfile = 'リンクリンク.c';
	link $hoge, $cfile or warn "ハードリンクファイル作成失敗($!)。";

	die "$cfileファイルに書き込み失敗($!)。" unless open my $file_fh, '>>', $cfile;
	$| = 1;	# ファイルハンドルの切り替えをしていないため、意味がない結果になる。
	say $file_fh "リンクファイルに書き込み。";
	close $file_fh;	# $|が機能しないため、わざわざ閉じる必要がある。
	die "$hogeファイルに書き込み失敗($!)。" unless open my $file_fh, '>>', $hoge;
	say $file_fh "大本のファイルに書き込み。";
	close $file_fh;	# 書き込みを有効化するため、必要な処理。

	say "以下、$cfileファイル内容の出力。";
	die "$cfileファイルから読み込み失敗($!)。" unless open my $file_fh, '<', $cfile;
	while( <$file_fh> ) {
		chomp;
		say "\t$_";
	}
	#close $file_fh;	# 読み込みは不要なようだ。
	say "以下、$hogeファイル内容の出力。";
	die "$hogeファイルから読み込み失敗($!)。" unless open my $file_fh, '<', $hoge;
	while( <$file_fh> ) {
		chomp;
		say "\t$_";
	}
	close $file_fh;

	# 削除する順番は順不同で構わないようだ(ハードリンクファイル作成により実ファイルも消える可能性があるため、削除順序は大事だと思う)。
	unlink $cfile or warn "$cfileファイル削除失敗($!)。";
	unless( -e $cfile ) {
		say "$cfileファイルは削除済み";
	}
	if( -e $hoge ) {
		say "$hogeファイルは存在する。";
	}
	unlink $hoge or warn "$hogeファイル削除失敗($!)。";
	unless( -e $hoge ) {
		say "$hogeファイルは削除済み";
	}
}
```

以下、実行。
```terminal
$ ll
total 32
-rwxr-xr-x  1 asakunotomohiro  staff  1810  1 10 16:06 ハードリンクファイル作成.pl*
$ perl test.pl
ファイル(リンクファイル.txt)作成実施。
以下、リンクリンク.cファイル内容の出力。
	リンクファイル.txt
	リンクファイルに書き込み。
	大本のファイルに書き込み。
以下、リンクファイル.txtファイル内容の出力。
	リンクファイル.txt
	リンクファイルに書き込み。
	大本のファイルに書き込み。
$ ll
total 32
-rwxr-xr-x  1 asakunotomohiro  staff  1810  1 10 16:06 ハードリンクファイル作成.pl*
$
```
今回ハードリンクファイルを先に消したが、元ファイルも一緒になって消えることなく残った。  
Perlの挙動が把握できず(元ファイルが消えるのは条件次第だそうだが・・・)。  

<details><summary>ファイル操作としてのclose演算子の挙動確認プログラム</summary>

以下、上記プログラムからclose演算子をコメントアウトした場合の結果(ファイルハンドルへの書き込みもなし)。
```terminal
$ ll
total 32
-rwxr-xr-x  1 asakunotomohiro  staff  1844  1 10 16:12 ハードリンクファイル作成.pl*
$ perl test.pl
ファイル(リンクファイル.txt)作成実施。
以下、リンクリンク.cファイル内容の出力。	←☆読み込みが行われない。
以下、リンクファイル.txtファイル内容の出力。	←☆読み込みが行われない。
$ ll
total 48
-rw-r--r--  2 asakunotomohiro  staff   106  1 10 16:12 リンクリンク.c
-rw-r--r--  2 asakunotomohiro  staff   106  1 10 16:12 リンクファイル.txt
-rwxr-xr-x  1 asakunotomohiro  staff  1844  1 10 16:12 ハードリンクファイル作成.pl*
$ cat リンクリンク.c	←☆しかし、書き込まれている(しかし、書き込み順序が可笑しい)。
大本のファイルに書き込み。
リンクファイルに書き込み。
リンクファイル.txt
$ cat リンクファイル.txt	←☆しかし、書き込まれている(ただし、書き込み順序が可笑しい)。
大本のファイルに書き込み。
リンクファイルに書き込み。
リンクファイル.txt
$
```

</details>

<details><summary>ハードリンクファイルだけで(大本ファイルが無くて)も問題ないことの確認</summary>

以下、大本のファイルを削除後、ハードリンクファイル内容を確認した結果。
```terminal
$ ll
total 32
-rwxr-xr-x  1 asakunotomohiro  staff  1812  1 10 16:19 ハードリンクファイル作成.pl*
$ perl test.pl
ファイル(リンクファイル.txt)作成実施。
以下、リンクリンク.cファイル内容の出力。
	リンクファイル.txt
	リンクファイルに書き込み。
	大本のファイルに書き込み。
以下、リンクファイル.txtファイル内容の出力。
	リンクファイル.txt
	リンクファイルに書き込み。
	大本のファイルに書き込み。
$ ll
total 48
-rw-r--r--  2 asakunotomohiro  staff   106  1 10 16:19 リンクリンク.c	←☆ハードリンクファイル。
-rw-r--r--  2 asakunotomohiro  staff   106  1 10 16:19 リンクファイル.txt	←☆大本ファイル。
-rwxr-xr-x  1 asakunotomohiro  staff  1812  1 10 16:19 ハードリンクファイル作成.pl*
$ rm リンクファイル.txt	←☆大本ファイルの削除。
$ ll
total 40
-rw-r--r--  1 asakunotomohiro  staff   106  1 10 16:19 リンクリンク.c	←☆ハードリンクファイルのみある。
-rwxr-xr-x  1 asakunotomohiro  staff  1812  1 10 16:19 ハードリンクファイル作成.pl*
$ cat リンクリンク.c	←☆ハードリンクファイルであるにもかかわらず、大本ファイルの存在を無視して中身が保持されている。
リンクファイル.txt
リンクファイルに書き込み。
大本のファイルに書き込み。
$
```

</details>


<a name="practicaluseFileoperationlinkandfilesymboliclink"></a>
#### ソフトリンク(シンボリックリンク)ファイル作成

* 以下のプログラムでやりたいこと。  
  1. 元ファイルの作成。  
  1. 元ファイルへの書き込み。  
  1. ソフトリンクファイル作成。  
  1. ソフトリンクファイルへの書き込み。  
  1. 元ファイルへの書き込み。  
  1. ソフトリンクファイルの内容確認。  
     元ファイルへの書き込みが反映されていることを確認するのが目的。  
  1. 元ファイルの内容確認。  
     ソフトリンクファイルへの書き込みが反映されていることを確認するのが目的。  
  1. 後始末。

以下、ソフトリンクファイル作成用プログラム例）
```perl
use v5.24;

sub linkfunc() {
	my $hoge = "ソフトリンクファイル.txt";	# 変更前のファイル名。
	say "ファイル($hoge)作成実施。";
	die "書き込み失敗($!)。" unless open my $file_fh, '>>', $hoge;
	say $file_fh $hoge;	# 書き込み。
	close $file_fh;	# ファイルハンドル切り替えをしていない場合、わざわざ閉じる必要がある。

	my $cfile = 'シンボリックファイル.c';
	symlink $hoge, $cfile or warn "ソフトリンクファイル作成失敗($!)。";

	die "$cfileファイルに書き込み失敗($!)。" unless open my $file_fh, '>>', $cfile;
	say $file_fh "リンクファイルに書き込み。";
	close $file_fh;	# わざわざ閉じる必要がある。

	die "$hogeファイルに書き込み失敗($!)。" unless open my $file_fh, '>>', $hoge;
	say $file_fh "大本のファイルに書き込み。";
	close $file_fh;	# わざわざ閉じる必要がある。

	say "以下、$cfileファイル内容の出力。";
	die "$cfileファイルから読み込み失敗($!)。" unless open my $file_fh, '<', $cfile;
	while( <$file_fh> ) {
		chomp;
		say "\t$_";
	}
	say "以下、$hogeファイル内容の出力。";
	die "$hogeファイルから読み込み失敗($!)。" unless open my $file_fh, '<', $hoge;
	while( <$file_fh> ) {
		chomp;
		say "\t$_";
	}
	close $file_fh;

	# 削除する順番は順不同で構わないようだ。
	unlink $cfile or warn "$cfileファイル削除失敗($!)。";
	unlink $hoge or warn "$hogeファイル削除失敗($!)。";
}
&linkfunc(@ARGV);
```

以下、(ファイル削除処理はコメントアウト済みの)実行結果。
```terminal
$ ll
total 40
-rwxr-xr-x  1 asakunotomohiro  staff  1560  1 10 16:41 ソフトリンクファイル作成.pl*
$ perl ソフトリンクファイル作成.pl
ファイル(ソフトリンクファイル.txt)作成実施。
以下、シンボリックファイル.cファイル内容の出力。
	ソフトリンクファイル.txt
	リンクファイルに書き込み。
	大本のファイルに書き込み。
以下、ソフトリンクファイル.txtファイル内容の出力。
	ソフトリンクファイル.txt
	リンクファイルに書き込み。
	大本のファイルに書き込み。
$ ll
total 48
-rw-r--r--  1 asakunotomohiro  staff   115  1 10 16:41 ソフトリンクファイル.txt	←☆大本のファイル。
lrwxr-xr-x  1 asakunotomohiro  staff    34  1 10 16:41 シンボリックファイル.c@ -> ソフトリンクファイル.txt	←☆リンクファイルだとひと目で分かる。
-rwxr-xr-x  1 asakunotomohiro  staff  1560  1 10 16:41 ソフトリンクファイル作成.pl*
$ cat ソフトリンクファイル.txt
ソフトリンクファイル.txt
リンクファイルに書き込み。
大本のファイルに書き込み。
$ cat シンボリックファイル.c
ソフトリンクファイル.txt
リンクファイルに書き込み。
大本のファイルに書き込み。
$
```

<details><summary>元ファイルが存在しない場合のソフトリンクファイルの挙動確認作業</summary>

以下、リンクファイルの挙動確認作業。
```terminal
$ ll
total 48
-rw-r--r--  1 asakunotomohiro  staff   115  1 10 16:41 ソフトリンクファイル.txt
lrwxr-xr-x  1 asakunotomohiro  staff    34  1 10 16:41 シンボリックファイル.c@ -> ソフトリンクファイル.txt
-rwxr-xr-x  1 asakunotomohiro  staff  1560  1 10 16:41 ソフトリンクファイル作成.pl*
$ rm ソフトリンクファイル.txt	←☆大本のファイル削除。
$ ll
total 40
lrwxr-xr-x  1 asakunotomohiro  staff    34  1 10 16:41 シンボリックファイル.c@ -> ソフトリンクファイル.txt
-rwxr-xr-x  1 asakunotomohiro  staff  1560  1 10 16:41 ソフトリンクファイル作成.pl*
$ cat シンボリックファイル.c	←☆読み込めない。
cat: シンボリックファイル.c: No such file or directory
$
```
ハードリンクファイルとの違いが判明した。  

</details>


<a name="practicaluseFileoperationlinkandfilesymboliclinkfollow"></a>
#### ソフトリンクファイルから大本にたどる方法。
以下、リンクファイル判定プログラム。
```perl
use v5.24;

sub linkfunc() {
	my $hoge = "ファイル.txt";	# 大本のファイル名。
	die "書き込み失敗($!)。" unless open my $file_fh, '>>', $hoge;

	my $symfile = 'シンボリックファイル.c';
	symlink $hoge, $symfile or warn "ソフトリンクファイル作成失敗($!)。";

	my $linkfile = 'ハードリンクファイル.c';
	link $hoge, $linkfile or warn "ハードリンクファイル作成失敗($!)。";

	say "$hogeファイルの大本のファイルをたどる=>" . readlink $hoge;
	say "$symfileファイルの大本のファイルをたどる=>" . readlink $symfile;
	say "$linkfileファイルの大本のファイルをたどる=>" . readlink $linkfile;
}
&linkfunc(@ARGV);
```
以下、その結果。
```terminal
$ perl リンクファイル確認.pl
ファイル.txtファイルの大本のファイルをたどる=>
シンボリックファイル.cファイルの大本のファイルをたどる=>ファイル.txt
ハードリンクファイル.cファイルの大本のファイルをたどる=>
$ ll
total 48
lrwxr-xr-x  1 asakunotomohiro  staff    16  1 10 17:00 シンボリックファイル.c@ -> ファイル.txt	←☆ソフトリンクファイル。
-rw-r--r--  2 asakunotomohiro  staff     0  1 10 17:00 ファイル.txt	←☆大本ファイル。
-rw-r--r--  2 asakunotomohiro  staff     0  1 10 17:00 ハードリンクファイル.c	←☆ハードリンクファイル。
-rwxr-xr-x  1 asakunotomohiro  staff  1783  1 10 16:51 リンクファイル確認.pl*
$
```
シンボリックリンクでない場合の結果は、undefが返る。  
ハードリンクファイルの扱いはどうすれば良い？  


<a name="practicaluseFileoperationlinkandfilesymboliclinkmakeghost"></a>
#### 存在しないファイルからソフトリンクファイルの作成。
ファイルが存在しない場合、ハードリンクファイル作成はできない。  
しかし、ソフトリンクファイルの場合は、大本ファイルの存在有無にかかわらず、作成できる。  
以下、プログラム。
```perl
use v5.24;

sub linkfunc() {
	my $symfile = 'シンボリックファイル.c';
	symlink '存在しないファイル.txt', $symfile or warn "ソフトリンクファイル作成失敗($!)。";

	my $linkfile = 'ハードリンクファイル.c';
	link '存在しないファイル.txt', $linkfile or warn "ハードリンクファイル作成失敗($!)。";
}
&linkfunc(@ARGV);
```
以下、実行結果。
```terminal
$ ll
total 48
-rwxr-xr-x  1 asakunotomohiro  staff   379  1 10 17:13 リンクファイル作成.pl*
$ perl リンクファイル作成.pl
ハードリンクファイル作成失敗(No such file or directory)。 at リンクファイル作成.pl line 8.
$ ll
total 48
lrwxr-xr-x  1 asakunotomohiro  staff    31  1 10 17:13 シンボリックファイル.c@ -> 存在しないファイル.txt
-rwxr-xr-x  1 asakunotomohiro  staff   379  1 10 17:13 リンクファイル作成.pl*
$ cat シンボリックファイル.c	←☆存在しないファイルを開くことは出来ない。
cat: シンボリックファイル.c: No such file or directory
$
```
ハードリンクファイルは元ファイルと容量が同じだった。  
しかし、ソフトリンクファイルは、元ファイルと容量が異なることを考えれば、中身のないファイルだというのが分かる。  


<a name="practicaluseFileoperationSpecialvariables"></a>
### 特殊変数
一般的に変更不要だが、どうしても変更する場合は、処理終了後に戻すこと。  
また、通常は変更しないため、他のプログラムに影響しないように使うこと。  

* 種類。  
  * `$.`  
    読み取り時に、現在の行番号を保持する。  
  * `$/`  
    入力時の区切り文字を設定している。  
  * `$\`  
    出力時の区切り文字を設定している。  
  * `$,`  
    出力時の区切り文字を設定している。  
    上記`$\`とは当然違う箇所の区切り文字なので気をつけること。  
  * `$"`  
    リストの区切り文字(ダブルクォート文字列で囲まれたリスト表示に影響する)。  
  * `$0`  
    現在のプログラム名。  
  * `$^W`  
    警告スイッチ(`-w`)の現在の値。  
    設定により、オン／オフを切り替えられる。  
  * `$ARGV`  
    <ARGV>から読み込まれる現在のファイル。  
  * `@ARGV`  
    コマンドライン引数。  
  * `@F`  
    オートスプリット配列というものだが、それが何か分からない。  
  * `DATAファイルハンドル`  
    同じファイル内に記述した文字列を **\_\_END\_\_** になるまで読み込む。  


#### DATAファイルハンドル
一部のファイル読み取り処理の動作確認用に、同じファイル内にファイル内容を記載しておき、それを読み取るという仕組み。  

以下、プログラム例）
```perl
sub datafilehandle() {
	while( <DATA> ) {
		print;
	}
}
&datafilehandle(@ARGV);

__END__	←☆mainパッケージでない場合、エラーになるため、そのときは__DATA__を使う。
テスト用
	ファイルハンドル
読み取れているか？
```

以下、実行結果。
```terminal
$ perl special.pl
テスト用
	ファイルハンドル
読み取れているか？
$
```
この技法は今後活用していこうと思う。  

</details>


<a name="practicaluseDirectorymanipulation"></a>
<details><summary>応用知識-ディレクトリ操作(入出力・File-I/O)</summary>

<a name="practicaluseDirectorymanipulationDirectory"></a>
### [ディレクトリ](https://perldoc.jp/docs/perl/5.22.1/perlport.pod)
移植性のあるプログラムを作成するにあたり、ファイルとファイルシステムについて考えておく必要がある。  
その中のひとつに、ディレクトリ名・ディレクトリのPath・ディレクトリへの権限・ホームディレクトリなどを考慮しておく必要がある。  
今回は、そんな大それた話ではない。  
以下、普通にディレクトリに特化した話をしていく。  


<a name="practicaluseDirectorymanipulationDirectorycurrent"></a>
### カレントディレクトリ及びディレクトリまたぎ(カレントディレクトリ移動)
現在のディレクトリを取得する。  
そして、カレントディレクトリの場所を移動する("ディレクトリ移動"では、ディレクトリを別の場所に移すように感じる)。  

以下、プログラム。
```perl
use v5.24;
use Cwd;	# カレントディレクトリ呼び出しモジュール。
my $currentDir;

sub inputOutput() {
	$currentDir = getcwd();	# カレントディレクトリを保存。
	say $currentDir;	# /Users/asakunotomohiro/study勉強用Githubリポジトリ/Perl言語

	{
	say "以下、カレントディレクトリを移動後、カレントディレクトリを表示する。";
	chdir '../ひな形/基礎知識用の勉強' or die "ディレクトリ移動失敗($!)。";
										# ディレクトリ移動失敗(Permission denied)。 at ディレクトリハンドル.pl line 10.
	my $dirchenge = getcwd();
	say $dirchenge;
		# /Users/asakunotomohiro/study勉強用Githubリポジトリ/ひな形/基礎知識用の勉強
	}
}
&inputOutput();
say getcwd();	# /Users/asakunotomohiro/study勉強用Githubリポジトリ/ひな形/基礎知識用の勉強
				# ブロックを抜け出たため、カレントディレクトリが戻ると思ったが、戻らず。

chdir or die "ディレクトリ移動失敗($!)。";	# 引数なしの場合、ホームディレクトリに移動する。
say '$ENV{HOME}：' . "<$ENV{HOME}>および、" . '$ENV{LOGDIR}：' . "<$ENV{LOGDIR}>";
				# $ENV{HOME}：</Users/asakunotomohiro>および、$ENV{LOGDIR}：<>
say getcwd();	# /Users/asakunotomohiro

chdir $currentDir or die "ディレクトリ移動失敗($!)。";	# カレントディレクトリに戻る。
say getcwd();	# /Users/asakunotomohiro/study勉強用Githubリポジトリ/Perl言語
```
カレントディレクトリから移動した場合に関係なく、Perlプログラムを抜け出たときのカレントディレクトリは移動していない。  
そして、引数を渡さない場合、極力ホームディレクトリに移動する(Windowsの場合、失敗する)。  


<a name="practicaluseDirectorymanipulationDirectoryglob"></a>
### グロブ(globbing)
グロブとは、ファイル名パターンをマッチするファイル名に展開すること(正規表現ではない)。  

※[型グロブ](#practicaluseTypeglob)は別で説明している。  
※[正規表現](#practicaluseRegularexpression)は別で説明している(グロブでのマッチと正規表現でのマッチは意味が異なる)。  

以下、シェルのグロブ。
```terminal
$ ll
total 552
-rw-r--r--   1 asakunotomohiro  staff  261903  1  8 13:41 README.md
drwxr-xr-x  15 asakunotomohiro  staff     480  1  7 18:03 応用知識用の勉強/
-rw-r--r--   1 asakunotomohiro  staff   10153  1  7 17:54 環境構築(インストール).md
drwxr-xr-x   7 asakunotomohiro  staff     224  1  7 17:54 基礎知識用の勉強/
-rwxr-xr-x   1 asakunotomohiro  staff     132  1  7 17:54 version.pl*	←☆これを表示したい。
-rwxr-xr-x   1 asakunotomohiro  staff     160  1  7 17:54 helloWorld.pl*	←☆これを表示したい。
drwxr-xr-x   9 asakunotomohiro  staff     288  1  7 17:54 Pythonで学ぶアルゴリズムの教科書 一生モノの知識と技術を身につける/
$ ls *pl	←☆グロブを用いたファイル表示。
helloWorld.pl	version.pl
$
```

以下、Perl側でのグロブ利用プログラム。
```perl
use v5.24;

sub inputOutput() {
	my @plfiles = glob '*.pl';
	say "@plfiles";	# helloWorld.pl version.pl

	@plfiles = glob '*.pl *.md';	# 欲しいパターンが複数ある場合は、スペース区切りをする。
	foreach my $plfile ( @plfiles ) {
		say $plfile;
			# helloWorld.pl
			# version.pl
			# 環境構築(インストール).md
			# README.md
	}

	@plfiles = glob '*';	# ドットで始まるファイル以外を取り出す。
	foreach my $plfile ( @plfiles ) {
		say $plfile;
			# 基礎知識用の勉強
			# 応用知識用の勉強
			# 環境構築(インストール).md
			# helloWorld.pl
			# Pythonで学ぶアルゴリズムの教科書 一生モノの知識と技術を身につける
			# README.md
			# version.pl
	}

	@plfiles = glob '.*';	# ドットで始まるファイルを取り出す。
	foreach my $plfile ( @plfiles ) {
		say $plfile;
			# .
			# ..
			# .DS_Store
			# .README.md.swp
	}
}
&inputOutput();
```
シェルでグロブを利用した結果と同じになった。  
Perl5.6以前のバージョンは、`/bin/csh`を呼び出していたため、処理が遅くなっていたが、今は改善されている。  
cshを呼び出していないと言うこと？  
呼び出しているが、処理が早くなったと言うこと？  

以下、別のグロブの書き方プログラム。
```perl
use v5.24;
use Cwd;	# カレントディレクトリ呼び出しモジュール。

sub inputOutputGlob() {
	my @plfile = <*.pl>;
	say "@plfile";	# helloWorld.pl version.pl

	@plfile = glob <*.pl *.md>;	# この書き方は間違い。
	say "@plfile";	# helloWorld.pl

	@plfile = <*.pl *.md>;
	say "@plfile";	# helloWorld.pl version.pl 環境構築(インストール).md README.md

	@plfile = <*>;
	say "@plfile";	# 基礎知識用の勉強 応用知識用の勉強 環境構築(インストール).md helloWorld.pl Pythonで学ぶアルゴリズムの教科書 一生モノの知識と技術を身につける README.md version.pl

	my $period = './';
	@plfile = <$period>;	# この書き方は間違い(ファイルハンドル扱いになっている)。
	say "@plfile";	# . .. .DS_Store .README.md.swp

	my $period = '.';
	@plfile = <$period/.*>;
	say "@plfile";	# . .. .DS_Store .README.md.swp

	$currentDir = getcwd();
	@plfile = <$currentDir/.*>;
	#say "@plfile";	# フルPathで出力される。
	foreach my $file (@plfile) {
		say $file;
			# /Users/asakunotomohiro/study勉強用Githubリポジトリ/Perl言語/.
			# /Users/asakunotomohiro/study勉強用Githubリポジトリ/Perl言語/..
			# /Users/asakunotomohiro/study勉強用Githubリポジトリ/Perl言語/.DS_Store
			# /Users/asakunotomohiro/study勉強用Githubリポジトリ/Perl言語/.README.md.swp
	}
}
&inputOutputGlob();
```
今回は、glob演算子を使わず、レガシー(遺物)表記を用いた。  
そして、この表記のほうが一般的らしい。  
※レガシー表記は、[ファイルハンドル](#practicaluseFileoperationfilehandle)と勘違いされるため、気をつけて使うこと。  


<a name="practicaluseDirectorymanipulationDirectoryhandle"></a>
### ディレクトリハンドル
ファイルハンドルと同じように、ディレクトリハンドルが存在する。  
ファイルハンドルの場合はファイルの中身を取り出すが、ディレクトリハンドルはディレクトリの中身(ファイル名など)を取り出す。  

以下、裸のワード版プログラム。
```perl
use v5.24;
use Cwd;	# カレントディレクトリ呼び出しモジュール。

sub dirInputOutput() {
	my $currentDir = getcwd();
	opendir DIR, $currentDir or die "ディレクトリオープン失敗($!)。";
	say DIR;	# この行がなかったことになっている。
	foreach my $filename (readdir DIR) {
		say $filename;
	}

	closedir DIR;
}
&dirInputOutput(@ARGV);
```

以下、出力結果。
```terminal
.
..
基礎知識用の勉強
version.pl
.DS_Store
.README.md.swp
README.md
応用知識用の勉強
helloWorld.pl
環境構築(インストール).md
Pythonで学ぶアルゴリズムの教科書 一生モノの知識と技術を身につける
```
何も考えずに取得する。  

以下、スカラー変数版プログラム。
```perl
use v5.24;
use Cwd;	# カレントディレクトリ呼び出しモジュール。

sub dirInputOutput() {
	my $currentDir = getcwd();
	opendir my $dh, $currentDir or die "ディレクトリオープン失敗($!)。";
	say $dh;	# GLOB(0x7fd2578037a8)
	foreach my $filename (readdir $dh) {
		say $filename;
	}

	closedir $filename;
}
&dirInputOutput(@ARGV);
```
出力結果は、上記と同じ。  


#### ディレクトリハンドルの補填
ディレクトリハンドルを通常利用する場合、ファイル名(ディレクトリ名)のみが取り出され、フルPathでの取り出しが出来ない。  
そのため、フルPathにするには、自前で組み立てる必要がある。  
それ以外の欠点は、指定したディレクトリ配下を例外なく取り出すこと。  
上記のグロブで目的のファイルのみを取り出したようにできない。  
そのため、これも自前で取捨選択する必要がある。  
以下、そのプログラム例）
```perl
use v5.24;
use Cwd;	# カレントディレクトリ呼び出しモジュール。

sub inputOutput() {
	my $currentDir = getcwd();
	opendir my $dh, $currentDir or die "ディレクトリオープン失敗($!)。";
	foreach my $filename (readdir $dh) {
		next if $filename =~ /^[.]/;	# 先頭がピリオドで始まる場合、先頭処理に戻る。
		say $filename;
	}

	closedir $dh;
}
&inputOutput(@ARGV);
```
これは、カレントディレクトリ`.`や親ディレクトリ`..`、それ以外にも隠しファイル`.[ファイル名]`を除外するプログラムになっている。  

以下、出力結果。
```terminal
基礎知識用の勉強
version.pl
README.md
応用知識用の勉強
helloWorld.pl
環境構築(インストール).md
Pythonで学ぶアルゴリズムの教科書 一生モノの知識と技術を身につける
```

以下、指定したファイルのみを取り出すプログラム(拡張子で判断する)。
```perl
use v5.24;
use Cwd;	# カレントディレクトリ呼び出しモジュール。

sub inputOutput() {
	my $currentDir = getcwd();
	opendir my $dh, $currentDir or die "ディレクトリオープン失敗($!)。";
	while (my $filename = readdir $dh) {
		next unless $filename =~ /\.pl\z/;	# 拡張子がplでない場合、先頭処理に戻る。
		say $filename;
	}

	closedir $dh;
}
&inputOutput(@ARGV);
```
以下、出力結果。
```terminal
version.pl
helloWorld.pl
```
今回のファイル取り出し方法は、フルPathにならないため、何もPathを指定せずにファイルを操作する場合は、カレントディレクトリのファイルだという前提でファイル操作が行われるため、気をつけること。  


<a name="practicaluseDirectorymanipulationDirectoryMakeDel"></a>
### ディレクトリ作成及び削除
ディレクトリを作成するには、**mkdir関数**を使うことで、ディレクトリの作成が完了する。  
様式：
`mkdir ディレクトリ名, 権限;`  
※権限部分は数字を渡す必要がある。  
[8進数](#understandnAryNotationChapter2)になっていればいいため、渡す方法は10進数でも16進数でも問題ない。  
しかし、普通は、8進数で渡す方が良いだろう。  

ディレクトリを削除するには、**rmdir演算子**を使うことで、ディレクトリの削除が完了する。  
様式：
`rmdir ディレクトリ名;`  

以下、作成プログラム例）
```perl
use v5.24;

my $hogeDir = "本日は晴天なり。";

sub dirMake() {
	my $permissions = "0755";	# このまま使う場合、10進数と解釈される(0755=>01363)。
	unless( -d $hogeDir ) {
		say "'$hogeDir'ディレクトリがない。";
	}
	say "以下、ディレクトリ作成実施。";
	mkdir $hogeDir, oct($permissions) or warn "ディレクトリ作成失敗($!)。";
	if( -d $hogeDir ) {
		say "'$hogeDir'ディレクトリがある。";
	}
	say "以下、ディレクトリ削除実施。";
	rmdir $hogeDir or warn "ディレクトリ削除失敗($!)。";
	if( -d $hogeDir ) {
		say "'$hogeDir'ディレクトリがある。";
	}
	else {
		say "'$hogeDir'ディレクトリ削除済み。";
	}
}
&dirMake(@ARGV);
```

以下、実施メッセージ内容。
```text
'本日は晴天なり。'ディレクトリがない。
以下、ディレクトリ作成実施。
'本日は晴天なり。'ディレクトリがある。
以下、ディレクトリ削除実施。
'本日は晴天なり。'ディレクトリ削除済み。
```

以下、削除対象のディレクトリ配下にファイルなどがある場合削除できないプログラム例）
```perl
use v5.24;

my $hoge = "本日は晴天なり。";
my @hoge = qw( 本日は 晴天なり。 本日は晴天なり。 );

sub directory() {
	my $dirFilename = $hoge . '/' . $hoge . '.txt';

	say "以下、ディレクトリを削除する。";
	rmdir $hoge or warn "ディレクトリ削除失敗($!)。";
				# ディレクトリ削除失敗(Directory not empty)。 at ディレクトリ作成及び削除.pl line 10.
	if( -d $hoge ) {
		say "\tディレクトリ削除失敗により、'$hoge'ディレクトリがある。";
	}
	say "以下、配下のファイルを削除する(ディレクトリを消すために)。";
	unlink $dirFilename or warn "'$dirFilename'ファイル削除失敗($!)。";
	say "以下、再度ディレクトリを削除する。";
	rmdir $hoge or warn "ディレクトリ削除失敗($!)。";
	unless( -d $hoge ) {
		say "\t'$hoge'ディレクトリ削除済み。";
	}

	say "以上。"
}
&directory(@ARGV);
```

以下、実行結果。
```terminal
$ ll -R
total 16
-rwxr-xr-x  1 asakunotomohiro  staff  941  1 12 11:38 ディレクトリ作成及び削除.pl*
drwxr-xr-x  3 asakunotomohiro  staff   96  1 12 11:36 本日は晴天なり。/

./本日は晴天なり。:
total 8
-rw-r--r--  1 asakunotomohiro  staff  51  1 12 11:36 本日は晴天なり。.txt	←☆このファイルが邪魔になっている。
$ cat 本日は晴天なり。/本日は晴天なり。.txt
本日は
晴天なり。
本日は晴天なり。
$ perl ディレクトリ作成及び削除.pl	←☆削除実施。
以下、ディレクトリを削除する。
ディレクトリ削除失敗(Directory not empty)。 at ディレクトリ作成及び削除.pl line 10.
	ディレクトリ削除失敗により、'本日は晴天なり。'ディレクトリがある。
以下、配下のファイルを削除する(ディレクトリを消すために)。
以下、再度ディレクトリを削除する。
	'本日は晴天なり。'ディレクトリ削除済み。
以上。
$ ll -R	←☆ディレクトリが消えている。
total 16
-rwxr-xr-x  1 asakunotomohiro  staff  941  1 12 11:38 ディレクトリ作成及び削除.pl*
$
```
この例から分かるとおり、削除対象のディレクトリ配下に、ファイルだけでなく、ディレクトリがある場合、さらなるプログラム追加が必要になる。  
それができるのは、[File::Path](https://perldoc.jp/docs/modules/File-Temp-0.22/Temp.pod)の**rmtree()関数**はずなのだが、Perlに付属していないのか、Helpに載っていなかったぞ!?  
[MetaCPAN](https://metacpan.org)に[File::Path](https://metacpan.org/pod/File::Path)がある？  


</details>


<a name="practicalusePropertymanipulation"></a>
<details><summary>応用知識-プロパティ操作(ファイル・ディレクトリ)</summary>

<a name="practicalusePropertymanipulationpermissionchange"></a>
### 権限(パーミッション)変更
ディレクトリに関するのは権限だけのようだ。  
タイムスタンプの変更が出来ても良さそうなのにな。  

様式：
`chmod 権限, ディレクトリ名;`  
ディレクトリ作成同様、権限部分は8進数を指定する必要がある。  

※注意事項として、カレントディレクトリ配下直下ファイルの権限を変更したところで、カレントディレクトリに全ての権限が付与されているならば、そのファイルはすべての権限が付与されていることになる。  
ファイルの権限を変更する場合は、そのファイルが収まっているディレクトリ権限が基準になる。  


以下、ディレクトリ権限が無いため、配下のディレクトリを削除できず、エラーが吐き出される。
```perl
use v5.24;

my $dirmaster = "本日は晴天なり。";

sub dirPermissions() {
	my $permissions = "0755";
	my $dirsubdir = "$dirmaster/晴れ";

	unless( -d $dirmaster ) {
		say "'$dirmaster'ディレクトリがない。";
	}
	say "直下にディレクトリを作成する。";
	mkdir $dirmaster, oct($permissions) or warn "ディレクトリ作成失敗($!)。";
	if( -d $dirmaster ) {
		say "'$dirmaster'ディレクトリから権限剥奪。";
		mkdir $dirsubdir, oct($permissions) or warn "サブディレクトリ作成失敗($!)。";
		chmod 0000, $dirmaster or warn "'$dirmaster'ディレクトリの権限変更失敗($!)。";
	}
	rmdir $dirsubdir or warn "サブディレクトリ削除失敗($!)。";
						# サブディレクトリ削除失敗(Permission denied)。 at 権限変更.pl line 21.
	chmod oct($permissions), $dirmaster or warn "'$dirmaster'ディレクトリの権限変更失敗($!)。";
	say "サブディレクトリ削除実施。" and rmdir $dirsubdir or warn "サブディレクトリ削除失敗($!)。";
	say "ディレクトリ削除実施。" and rmdir $dirmaster or warn "ディレクトリ削除失敗($!)。";
}
&dirPermissions(@ARGV);
```
上記の注意事項同様、対象ディレクトリの権限を変更しただけでは効果が無く、親ディレクトリの権限を変える必要がある。  
そして、それは思惑通り、上記の権限を全て0に付与し直し、その直後の削除処理は失敗した。  

以下、ファイルの権限変更用プログラム。
```perl
use v5.24;

sub filePermissions() {
	my $permissions = "0755";
	my @hoge = qw( 本日は 晴天なり。 本日は晴天なり。 );
	my $dirunderFile = $hoge[0] . '/' . $hoge[1];

	if( -d $hoge[0] ) {
		warn "同名の$hoge[0]ディレクトリが存在する。";
	}
	mkdir $hoge[0], oct($permissions) or warn "ディレクトリ作成失敗($!)。";
	if( -d $hoge[0] ) {
		say "$hoge[0]ディレクトリに、$hoge[1]ファイルを作成する。";

		open my $file_fh, '>', $dirunderFile
			or die "$dirunderFileのファイルオープン失敗($!)";
		foreach( @hoge ) {
			say $file_fh $_;
		}
		close $file_fh;

		say "以下、直下ディレクトリの権限を書き換え不可に変更する。";
		chmod 0555, $hoge[0] or warn "$hoge[0]ディレクトリの権限変更失敗($!)。";
	}
	say "以下、作成ディレクトリ配下のファイルを削除。";
	unlink $dirunderFile or warn "ファイル削除失敗($!)。";
						# ファイル削除失敗(Permission denied)。 at 権限変更.pl line 26.
	if( -f $dirunderFile ) {
		say "$dirunderFileファイル削除失敗。";
	}
	say "以下、直下ディレクトリの権限に755を付与する。";
	chmod oct($permissions), $hoge[0] or warn "$hoge[0]ディレクトリの権限変更失敗($!)。";
	unlink $dirunderFile or warn "ファイル削除失敗($!)。";
	unless( -f $dirunderFile ) {
		say "$dirunderFileファイル削除済み。";
		rmdir $hoge[0] or warn "ディレクトリ削除失敗($!)。";
		unless( -d $hoge[0] ) {
			say "$hoge[0]ディレクトリ削除成功。";
		}
	}
}
&filePermissions(@ARGV);
```

以下、実行結果。
```terminal
ファイル削除失敗(Permission denied)。 at 権限変更.pl line 26.
本日はディレクトリに、晴天なり。ファイルを作成する。
以下、直下ディレクトリの権限を書き換え不可に変更する。
以下、作成ディレクトリ配下のファイルを削除。
本日は/晴天なり。ファイル削除失敗。
以下、直下ディレクトリの権限に755を付与する。
本日は/晴天なり。ファイル削除済み。
本日はディレクトリ削除成功。
```
結局は、対象ディレクトリの親ディレクトリ権限に引きずられるのであり、対象ディレクトリや対象ファイルの権限ではない。  
プログラムを渡したり触られたりすることが想定される分には、対象のディレクトリとファイルに直接権限を与えるのが一般的だろう。  


<a name="practicalusePropertymanipulationownerchange"></a>
### ファイルオーナー変更
[オーナ変更](https://perldoc.jp/func/chown)には、ユーザIDとグループIDを指定する必要がある。  

<details><summary>ターミナル作業</summary>

以下、ユーザ情報一覧。
```terminal
$ dscl . -list /Users | tail -6
_xserverdocs
asakunotomohiro
daemon
Guest
nobody
root
$
```
アンダーバーから始まるユーザは何？  
自動生成ユーザ？  

以下、グループ一覧とそのID。
```terminal
$ dscl . -list /Groups PrimaryGroupID | tail -10
nogroup                  -1
operator                 5
owner                    10
procmod                  9
procview                 8	←☆今回のプログラムで利用するグループ。
staff                    20	←☆ファイル作成後に自動付与されるグループ？
sys                      3
tty                      4
utmp                     45
wheel                    0
$
```

以下、ユーザ名とそのID・・・のはず。
```terminal
$ dscl . -list /Users UniqueID | tail -6
_xserverdocs             251
asakunotomohiro          501	←☆ファイル作成後に自動付与されるユーザ(このユーザで作成したのだから当たり前)。
daemon                   1
Guest                    201	←☆今回のプログラムで利用するユーザ。
nobody                   -2
root                     0
$
```
ユニークIDと言うのがユーザIDと思って良いよね。  

以下、ユーザ名とグループID・・・のはず。
```terminal
$ dscl . -list /Users PrimaryGroupID | tail -6
_xserverdocs             251
asakunotomohiro          20
daemon                   1
Guest                    201
nobody                   -2
root                     0
$
```
ユーザIDと同じように見えて、異なる。  
ユーザ自身が作成したユーザ情報は、ユーザIDとグループIDが異なるようだ。  

ユーザIDからユーザ名を取得するのは結構な労力が必要なようだ。  
困った。  
検証するのがめんどくさい・・・ゆえに、目視確認かな・・・。  

</details>

プログラム側で書き換えに失敗した。
```terminal
$ ll hoge
-rw-r--r--  1 asakunotomohiro  staff  0  1 15 12:36 hoge
$ chown Guest:staff hoge
chown: hoge: Operation not permitted
$ chown Guest:wheel hoge
chown: hoge: Operation not permitted
$ chown Guest:owner hoge
chown: hoge: Operation not permitted
$ chown Guest:operator hoge
chown: hoge: Operation not permitted
$ ll hoge
-rw-r--r--  1 asakunotomohiro  staff  0  1 15 12:36 hoge
$
```
スーパーユーザのみが変更できるようだ。  
また、Perl側では変更失敗を検知できないようだ。  

以下、変更プログラム。
```perl
defined(my $useid = getpwnam 'Guest') or die 'ユーザ名からID取得失敗。';
defined(my $groupid = getgrnam 'procview') or die 'ユーザグループ名からID取得失敗。';
chown $useid, $groupid, glob '/home/hoge/*.txt';
```
スーパーユーザから実行することで、変更されるのだろう。  


<a name="practicalusePropertymanipulation"></a>
### ファイルタイムスタンプ変更
**utime関数**を使うことで、ファイルのアクセス時刻と更新時刻の変更が可能になる。  
作成時刻は？  
64bitマシンでない場合に利用する制限には、1970年から2038年までの範囲に収める必要がある。  

様式：
`utime アクセス時刻, 修正時刻, ファイル名;`  
これも例外処理のような実行結果は返さないようだ。  

以下、プログラム。
```perl
use v5.24;

my @array = qw( 本日は 晴天なり。 本日は晴天なり。);
sub timestamp() {
	my ($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks);
		# ファイルのstat(プロパティ)情報。

	my $dirunderFile = 'タイムスタンプ.txt';
	open my $file_fh, '>', $dirunderFile
		or die "$dirunderFileのファイルオープン失敗($!)";
	foreach( @array ) {
		say $file_fh $_;
	}
	close $file_fh;

	say "以下、ファイルのタイムスタンプ取得。";
	($dev, $ino, $mode, $nlink, $uid, $gid, $rdev,
	$size, $atime, $mtime, $ctime, $blksize, $blocks)
		= stat($dirunderFile);	# ファイルのstat情報。
	say "\t最終アクセス時刻：" . &timeformatChange(localtime $atime);
	say "\t最終更新時刻：" . &timeformatChange(localtime $mtime);
	say "\t最後のinode変更時刻：" . &timeformatChange(localtime $ctime);

	say "ファイルの時刻を書き換える。";
	say "\t1年前の時刻を現在時刻にする。";
	say "\tまた、その前日を修正時刻にする。";
	my $now = time - 24 * 60 * 60 * 365;	# 今から1年前の時刻を現在時刻にする。
	my $ago = $now - 24 * 60 * 60;			# さらに1日前を修正時刻にする。
	utime $now, $ago, $dirunderFile;

	say "以下、ファイルのタイムスタンプ取得。";
	($dev, $ino, $mode, $nlink, $uid, $gid,
	$rdev, $size, $atime, $mtime, $ctime, $blksize, $blocks)
		= stat($dirunderFile);	# ファイルのstat情報。
	say "\t最終アクセス時刻：" . &timeformatChange(localtime $atime);
	say "\t最終更新時刻：" . &timeformatChange(localtime $mtime);
	say "\t最後のinode変更時刻：" . &timeformatChange(localtime $ctime);

	unlink $dirunderFile or warn "ファイル削除失敗($!)。";
	unless( -f $dirunderFile ) {
		say "$dirunderFileファイル削除済み。";
	}
}
&timestamp(@ARGV);

sub timeformatChange {
	my ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = @_;
	my %dayweek = (
				0=>'日',	# Sunday
				1=>'月',	# Monday
				2=>'火',	# Tuesday
				3=>'水',	# Wednesday
				4=>'木',	# Thursday
				5=>'金',	# Friday
				6=>'土',	# Saturday
				);

	$mon += 1;					# 月が0始まりになるため、1加算する。
	$year += 1900;				# 1900年を加算することで、西暦になる。
	$wday = $dayweek{$wday};	# 日曜日が0始まりになり、それを変換する。
	$yday += 1;					# 1月1日が0始まりのため、1加算する。

	return "$year年$mon月$yday日($wday) $hour時$min分$sec秒";
}
```

以下、出力結果。
```terminal
以下、ファイルのタイムスタンプ取得。
	最終アクセス時刻：2022年1月15日(土) 15時2分3秒
	最終更新時刻：2022年1月15日(土) 15時2分3秒
	最後のinode変更時刻：2022年1月15日(土) 15時2分3秒
ファイルの時刻を書き換える。
	1年前の時刻を現在時刻にする。
	また、その前日を修正時刻にする。
以下、ファイルのタイムスタンプ取得。
	最終アクセス時刻：2021年1月15日(金) 15時2分3秒
	最終更新時刻：2021年1月14日(木) 15時2分3秒
	最後のinode変更時刻：2022年1月15日(土) 15時2分3秒
タイムスタンプ.txtファイル削除済み。
```

</details>

<a name="practicaluseFiletest"></a>
<details><summary>応用知識-ファイルテスト</summary>

ファイルへの書き込み・読み込みのために、既に存在しているのか否か。  
ファイルの最終変更日時からの経過日数・ファイルの大きさ・読み書き実行権限状況・バイナリファイル・シンボリックリンクファイルなどの確認方法がファイルテストになる。  

* 目次  
  * [ファイルテスト演算子](#practicaluseFiletestoperator)  
    * [同ファイルに複数のファイルテスト演算子を用いる(第1弾)_記号](#practicaluseFiletestoperatorandoperator)  
    * [同ファイルに複数のファイルテスト演算子を用いる(第2弾)並列置き](#practicaluseFiletestoperatorstacking)  
  * [stat関数](#practicaluseFileteststatfunck)  
    * [stat関数-nlink](#practicaluseFileteststatfuncknlink)  
  * [lstat関数](#practicaluseFiletestlstatfunck)  
  * [エポック経過秒数をローカルタイム関数で変換](#practicaluseFiletestlocaltime)  
  * [ビット演算子](#practicaluseFiletestbitoperator)  

<details><summary>timeformatChange関数。</summary>

日付部分は、数字が羅列されているだけで、人間が見て判断できる形式ではない。  
そのため、書き換える必要がある。  
今回、それを関数にまとめたため、ここで定義する。  

```perl
sub timeformatChange {
	# この関数をどこからでも呼び出せるようにしたい。
	my ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = @_;
	my %dayweek = (
				0=>'日',	# Sunday
				1=>'月',	# Monday
				2=>'火',	# Tuesday
				3=>'水',	# Wednesday
				4=>'木',	# Thursday
				5=>'金',	# Friday
				6=>'土',	# Saturday
				);

	$mon += 1;					# 月が0始まりになるため、1加算する。
	$year += 1900;				# 1900年を加算することで、西暦になる。
	$wday = $dayweek{$wday};	# 日曜日が0始まりになり、それを変換する。
	$yday += 1;					# 1月1日が0始まりのため、1加算する。

	return "$year年$mon月$yday日($wday) $hour時$min分$sec秒";
}
```

個々のプログラムには付けない。  

</details>


<a name="practicaluseFiletestoperator"></a>
### ファイルテスト演算子
様式：
`-演算子 ファイルもしくはディレクトリなど`  
`-演算子`と言うのは、**演算子**部分が1文字のみになる(その後にファイルやディレクトリが続く)。  

以下、ファイル存在有無の例）
`say "'" . basename($0, '') . "'ファイル存在せり。" if -e $0;`  
出力結果：
'ファイルテスト演算子.pl'ファイル存在せり。  

上記は例であり、普通は、逆で使う。  
ファイルを作成する場合は、既に作られていたときに`die`でプログラムを終了するなど。  
今回のように、メッセージを出すために使うことはない。  
また、**die**を使う場合は、プログラマーが任意で強制終了させるだけなので、`$!`でのメッセージは存在しない。  

以下、ファイル未更新期間検知の例）
`warn "8日前のファイル" if -M 'hoge.txt' > 8;`  
出力結果：
8日前のファイル at ファイルテスト演算子.pl line xx.  
これは、[stat情報](#practicaluseFileteststatfunck)の**最終更新時刻(`$mtime`)** を見ている。  
※8日以上古いファイルであることが分かる。  

判定手段として、引数を省略した場合 **$_** が使われる。  
しかし、`my $testret = -s / 1024;`の場合、`-s $_ / 1024`とは解釈されない(この場合は正規表現としてのスラッシュ記号と判断される)。  
省略した場合に、意図した解釈をされる方法は`(-s) / 1024`とすること(これをすることで、`$_`が使われる故に、`(-s $_) / 1024`となる)。  
当然だが、`-s $hoge / 1024`のように、変数名を利用した方が良い。  

|[ファイルテスト](https://perldoc.jp/func/-X)|説明|
|:------------:|----|
|[`-r`](#practicaluseFiletestoperatorsmallr)|ファイルorディレクトリが実効**ユーザorグループ**で読み出し可。|
|[`-w`](#practicaluseFiletestoperatorsmallw)|ファイルorディレクトリが実効**ユーザorグループ**で書き込み可。|
|[`-x`](#practicaluseFiletestoperatorsmallx)|ファイルorディレクトリが実効**ユーザorグループ**で実行可。|
|[`-o`](#practicaluseFiletestoperatorsmallo)|ファイルorディレクトリが実効**ユーザ**の所有物。|
|||
|[`-R`](#practicaluseFiletestoperatorbigR)|ファイルorディレクトリが**実ユーザor実グループ**で読み出し可。|
|[`-W`](#practicaluseFiletestoperatorbigW)|ファイルorディレクトリが**実ユーザor実グループ**で書き込み可。|
|[`-X`](#practicaluseFiletestoperatorbigX)|ファイルorディレクトリが**実ユーザor実グループ**で実行可。|
|[`-O`](#practicaluseFiletestoperatorbigO)|ファイルorディレクトリが**実ユーザ**の所有物。|
|||
|[`-e`](#practicaluseFiletestoperatore)|ファイルorディレクトリが存在する。|
|[`-z`](#practicaluseFiletestoperatorz)|ファイルの大きさがゼロ(空)(ディレクトリの場合"**偽**")。|
|[`-s`](#practicaluseFiletestoperatorsamalls)|ファイルorディレクトリの大きさがゼロ以外(バイト単位での大きさを返す)。|
|||
|[`-f`](#practicaluseFiletestoperatorf)|エントリは通常ファイル。|
|[`-d`](#practicaluseFiletestoperatord)|エントリはディレクトリ。|
|[`-l`](#practicaluseFiletestoperatorl)|エントリはシンボリックリンク(ファイルシステムが非対応なら偽)。|
|[`-p`](#practicaluseFiletestoperatorp)|エントリは名前付きパイプ(FIFO)またはファイルハンドルはパイプ。|
|[`-S`](#practicaluseFiletestoperatorbigS)|エントリはソケット。|
|[`-b`](#practicaluseFiletestoperatorsmallb)|エントリはブロック特殊ファイル(例：マウント可能なディスク)。|
|[`-c`](#practicaluseFiletestoperatorsmallc)|エントリはキャラクタ特殊ファイル(例：I/Oデバイス)。|
|[`-t`](#practicaluseFiletestoperatorsmallt)|ファイルハンドルは**tty**にオープンされている(どういう意味？)。|
|||
|[`-u`](#practicaluseFiletestoperatoru)|ファイルorディレクトリの**setuid**ビットがセットされている。|
|[`-g`](#practicaluseFiletestoperatorg)|ファイルorディレクトリの**setgid**ビットがセットされている。|
|[`-k`](#practicaluseFiletestoperatork)|ファイルorディレクトリの**sticky**ビットがセットされている。|
|||
|[`-T`](#practicaluseFiletestoperatorbigT)|ファイルは**ASCII**または**UTF-8**テキストファイル(発見的に推測します)。|
|[`-B`](#practicaluseFiletestoperatorbigB)|ファイルは「**バイナリ**」ファイルっぽい(**-T**の反対)。|
|||
|[`-M`](#practicaluseFiletestoperatorM)|スクリプト実行開始時刻からファイル修正時刻を引いたもの(日単位)(stat関数の`$mtime`)。|
|[`-A`](#practicaluseFiletestoperatorA)|同様にアクセスがあってからの日数。|
|[`-C`](#practicaluseFiletestoperatorbigC)|同様に(Unixでは)**inode**が変更されてからの日数(それ以外のプラットフォームでは違うかもしれません)。|

不思議に思うのだが、**実効**って何？  
実行の間違い？  
しかし、[正誤表](https://www.oreilly.co.jp/books/9784873118246/)にないため、実効が正しいのか・・・。  


<a name="practicaluseFiletestoperatorandoperator"></a>
#### 同じファイルに、複数のファイルテスト演算子を用いる。
以降に、[重ね掛け](#practicaluseFiletestoperatorstacking)の説明をしているが、こちらのほうがいいだろう(同じif文内で使う場合に限る)。  
仮想ファイルハンドル`_`を使うことで、ファイルテスト演算子を重ね掛けできる。  
```perl
if( -r $filename and -w _ ) {
    ;
)
```
もし、この手法を使わずに、`if( -r $filename and -w $filename ) {`とした場合、左右に対してstat関数を呼び出すことになる。  
そのため、処理速度が大幅に低下する。  


また、以下のようにもできる。
```perl
if( -r $filename ) {
    ;
)
if( -w _ ) {
    ;
)
```
しかし、if文の途中で何かしらの処理をした場合、最初のファイルと異なるファイルを**-w**でファイルテストすることになる。  

<details><summary>プログラム例</summary>

以下、実際のプログラム。
```perl
use v5.24;
use Cwd;	# カレントディレクトリ呼び出しモジュール。

sub underscore() {
	my $currentDir = getcwd();	# カレントディレクトリ取得。

	my $filename = 'file.txt';	# ファイル名のみ作成。

	say "ファイルを作成する。";
	open my $file_fh, '>', $filename or die "$filenameのファイルオープン失敗($!)";
	say $file_fh '本日は晴天なり。';	# ファイルへの書き込み。
	close $file_fh;

	if( -s $filename and -f _ ) {
		say "ファイルに書き込みあり。";	# こっちが動く。
	}
	else{
		say "ファイルが空、もしくはファイルではない。";
	}

	if( -d $filename ) {
		say "ここはディレクトリである。";	# 出力なし。
	}
	elsif( -f _ ) {
		say "我はファイルである。";	# こっちが動く(想定通り)。
	}
	else{
		say "我は誰だ？";
	}

	if( -d $filename ) {
		say "ディレクトリだと認定する。";	# 出力なし。
	}
	opendir my $dir_fh, $currentDir or die "ディレクトリオープン失敗($!)。";
	stat $dir_fh;	←☆ここが原因で`_`の中身が書き換わった。
	if( -f _ ) {	←☆_は、ディレクトリ情報が格納されている。
		say "我はファイルである。";
	}
	else{
		say "ファイルではない判定が成された。";	# ディレクトリであるため、こっちが動く。
	}
	closedir $dir_fh;	# なくてもいい。

	say "ファイル削除。";
	unlink $filename or warn "ファイル削除失敗($!)。";
	unless( -f $filename ) {
		say "ファイル削除済み。";
	}
}
&underscore();
```
もし、`_`記号を用いる場合は、1つの**if**文に納めるべきであり、条件式を跨ぐ使い方は避けるべき。  

以下、出力結果。
```terminal
ファイルを作成する。
ファイルに書き込みあり。
我はファイルである。
ファイルではない判定が成された。
ファイル削除。
ファイル削除済み。
```

</details>


<a name="practicaluseFiletestoperatorstacking"></a>
#### ファイルテスト演算子の重ね掛けを押し縮める
上記の[同じファイルに複数のファイルテスト演算子を用いる]場合と同じになるのだが、今回はテスト方法を1つにまとめる。  
```perl
if( -w -r $filename ) {
    ;
)
```
単純な重ね掛けの場合は、`-r 〜 and -w _`だったことにより、[読み出し可能](#practicaluseFiletestoperatorsmallr)かをテスト後に、[書き込み可能](#practicaluseFiletestoperatorsmallw)かテストしている。  
今回の場合に限らないのだが、Perlはファイル名に最も近いファイルテストから実行する。  
そのため、同じ意味でテストする場合は、配置場所が逆になる。  
よほどのことが無ければ、逆になっても問題ないはず・・・きっと。。。  

<details><summary>重ね掛けのプログラム(-fと-sだけ)。</summary>

以下、プログラム追記。
```perl
use v5.24;

sub filetestStacking() {
	# ファイル名のみ作成。
	my $filename = 'filetest.txt';

	say "ファイルを作成する。";
	open my $file_fh, '>', $filename or die "$filenameのファイルオープン失敗($!)";
	say $file_fh '本日は晴天なり。';	# ファイルへの書き込み。
	close $file_fh;
	say ((-s $filename) . "バイト");

	if( -s -f $filename ) {
		say "ファイルに書き込みあり(-f⇒-sの順で判定)。";
	}

	if( -f -s $filename ) {
		say "ファイルに書き込みあり(-s⇒-fの順で判定)。";
	}

	if( -f $filename and -s _) {
		say "ファイルに書き込みあり(-f⇒-sの順で判定)。";
	}

	say "ファイル削除。";
	unlink $filename or warn "ファイル削除失敗($!)。";
	unless( -f $filename ) {
		say "ファイルが空ファイル(削除済み)。";
	}
}
&filetestStacking();
```

以下、出力結果。
```terminal
ファイルを作成する。
25バイト
ファイルに書き込みあり(-f⇒-sの順で判定)。
ファイルに書き込みあり(-s⇒-fの順で判定)。
ファイルに書き込みあり(-f⇒-sの順で判定)。
ファイル削除。
ファイルが空ファイル(削除済み)。
```
ファイルに対して、存在有無・容量有無の2種類のため、順不同で同じ結果になるのだろう。  

</details>

分野の異なるファイルテストをする場合は注意する必要がある。  
例えば、[ディレクトリ](#practicaluseFiletestoperatord)かどうかをテスト後に、[ファイルサイズ](#practicaluseFiletestoperatorsamalls)が512バイト未満であることをテストする場合、
以下の方法では意図しない結果になる。
```perl
if( -s -d $filename < 512 ) {
    ;
}
```
これを展開したのが以下のプログラムになる。
```perl
if( (-d $filename and -s _ ) < 512 ) {
    ;
}
```
ファイルの場合、偽になるのだが、その偽の値が512より小さいかを判定していることになる。  
当然、偽は0として扱われるため、512より小さいと判断され、結果は真として処理が進むことになる。  
そのため、このような場合は、以下のように判定を分ける必要が出てくる。
```perl
if( -d $filename and -s _ < 512 ) {
    ;
}
```
これで正しく意図した処理が行われる。  

<details><summary>重ね掛けのプログラム(-fと-sに容量比較あり)。</summary>

以下、プログラム追記。
```perl
use v5.24;

sub filetestStacking() {
	my $filename = 'filetest.txt';	# ファイル名のみ作成。

	say "ファイルを作成する。";
	open my $file_fh, '>', $filename or die "$filenameのファイルオープン失敗($!)";
	say $file_fh '本日は晴天なり。';	# ファイルへの書き込み。
	close $file_fh;
	say ((-s $filename) . "バイト");	# 2種類の括弧は必須。

	if( -s -d $filename < 128 ) {
		say "ファイルに書き込みあり(-d -s ファイル名 < 128)ディレクトリで判定。";
	}
	else{
		say "ファイルが空ファイル(書き込みなし)。";	# 本来ここに来る。
	}

	if( -d -s $filename < 128 ) {
		say "ファイルに書き込みあり(-d -s ファイル名 < 128)ディレクトリで判定。";
	}
	else{
		say "ファイルが空ファイル(書き込みなし)。";	# 本来ここに来る。
	}

	if( -d $filename and -s _ < 128 ) {
		say "ファイルに書き込みあり( -d ファイル名 and -s _ < 128 )ここに来てはいけない。";
	}
	else{
		say "ディレクトリ判定( -d ファイル名 and -s _ < 128 )。";
	}

	say "ファイル削除。";
	unlink $filename or warn "ファイル削除失敗($!)。";
	unless( -f $filename ) {
		say "ファイルが空ファイル(削除済み)。";
	}
}
&filetestStacking();
```

以下、出力結果。
```terminal
ファイルを作成する。
25バイト
ファイルに書き込みあり(-d -s ファイル名 < 128)ディレクトリで判定。
ファイルに書き込みあり(-d -s ファイル名 < 128)ディレクトリで判定。
ディレクトリ判定( -d ファイル名 and -s _ < 128 )。
ファイル削除。
ファイルが空ファイル(削除済み)。
```
これは、忘れそうな落とし穴に見える。  

</details>


<a name="practicaluseFiletestoperatorsmallr"></a>
#### ファイルテスト演算子(`-r`)
ファイルorディレクトリが実効ユーザもしくは、実効グループで読み出し可能。  

以下のroot権限付きのファイルに対してファイルテストを実行した場合、読み取れないと思っていた。
```terminal
$ sudo chown root ファイルテストr.txt
$ ll
total 16
-rwxr-xr-x  1 root             staff  2607  1 21 00:18 ファイルテストr.txt*	←☆rootユーザであり、プログラムの実行ユーザではない。
-rwxr-xr-x  1 asakunotomohiro  staff  2607  1 21 00:18 ファイルテスト演算子(オプションr).pl*	←☆動かすプログラム。
$
```
実際は、Perlプログラムから普通にファイルを削除できる。  
当然同じディレクトリにあるのではなく、別のディレクトリで実行しても同じように削除できた。  
もしかしたらディレクトリの権限を変える必要があったのかもしれない。  
しかし、それではファイルに対するファイルテストとは言えなくなってしまわないか？  
**unlink**演算子でrootユーザファイルを削除できたため、私の予想は合っているだろうが・・・。  

きっと他の演算子([w](#practicaluseFiletestoperatorsmallw)・[W](#practicaluseFiletestoperatorbigW)・[x](#practicaluseFiletestoperatorsmallx)・[X](#practicaluseFiletestoperatorbigX)・[o](#practicaluseFiletestoperatorsmallo)・[O](#practicaluseFiletestoperatorbigO))でも同じ事が言えるだろう。  


<a name="practicaluseFiletestoperatorsmallw"></a>
#### ファイルテスト演算子(`-w`)
ファイルorディレクトリが実効**ユーザorグループ**で書き込み可。  

使い方[不明](#practicaluseFiletestoperatorsmallr)。  
todo:
使い方を調べること。  


<a name="practicaluseFiletestoperatorsmallx"></a>
#### ファイルテスト演算子(`-x`)
ファイルorディレクトリが実効**ユーザorグループ**で実行可。  

使い方[不明](#practicaluseFiletestoperatorsmallr)。  
todo:
使い方を調べること。  


<a name="practicaluseFiletestoperatorsmallo"></a>
#### ファイルテスト演算子(`-o`)
ファイルorディレクトリが実効**ユーザ**の所有物。  

使い方[不明](#practicaluseFiletestoperatorsmallr)。  
todo:
使い方を調べること。  


<a name="practicaluseFiletestoperatorbigR"></a>
#### ファイルテスト演算子(`-R`)
ファイルorディレクトリが**実ユーザor実グループ**で読み出し可。  

使い方[不明](#practicaluseFiletestoperatorsmallr)。  
todo:
使い方を調べること。  


<a name="practicaluseFiletestoperatorbigW"></a>
#### ファイルテスト演算子(`-W`)
ファイルorディレクトリが**実ユーザor実グループ**で書き込み可。  

使い方[不明](#practicaluseFiletestoperatorsmallr)。  
todo:
使い方を調べること。  


<a name="practicaluseFiletestoperatorbigX"></a>
#### ファイルテスト演算子(`-X`)
ファイルorディレクトリが**実ユーザor実グループ**で実行可。  

使い方[不明](#practicaluseFiletestoperatorsmallr)。  
todo:
使い方を調べること。  


<a name="practicaluseFiletestoperatorbigO"></a>
#### ファイルテスト演算子(`-O`)
ファイルorディレクトリが**実ユーザ**の所有物。  

使い方[不明](#practicaluseFiletestoperatorsmallr)。  
todo:
使い方を調べること。  


<a name="practicaluseFiletestoperatore"></a>
#### ファイルテスト演算子(`-e`)
ファイルorディレクトリが存在する。  

<details><summary>ファイルに対するプログラム。</summary>

以下、ファイルが存在することの確認プログラム。
```perl
use v5.24;
use Cwd;	# カレントディレクトリ呼び出しモジュール。

sub filetestfunc() {
	my $currentDir = getcwd();	# カレントディレクトリ取得。

	my $filename = $currentDir . '/filetest.txt';
	unless( -e $filename ) {
		say "ファイルが存在しない。";
	}

	say "ファイルを作成する。";
	open my $file_fh, '>', $filename
		or die "$filenameのファイルオープン失敗($!)";
	close $file_fh;

	if( -e $filename ) {
		say "ファイルが存在する。";
	}

	say "ファイル削除。";
	unlink $filename or warn "ファイル削除失敗($!)。";
	unless( -e $filename ) {
		say "ファイルが存在しない。";
	}
}
&filetestfunc();
```

以下、出力結果。
```terminal
ファイルが存在しない。
ファイルを作成する。
ファイルが存在する。
ファイル削除。
ファイルが存在しない。
```

</details>

<details><summary>ディレクトリに対するプログラム。</summary>

以下、ディレクトリが存在することの確認プログラム。
```perl
use v5.24;

sub dirtestfunc() {
	my $permissions = "0755";	# このまま使う場合、10進数と解釈される(8進数に置き換える必要がある)。

	my $dirname = 'dirtest';
	unless( -e $dirname ) {
		say "ディレクトリが存在しない。";
	}

	say "ディレクトリを作成する。";
	mkdir $dirname, oct($permissions) or warn "ディレクトリ作成失敗($!)。";

	if( -e $dirname ) {
		say "ディレクトリが存在する。";
	}

	say "ディレクトリ削除。";
	rmdir $dirname or warn "ディレクトリ削除失敗($!)。";
	unless( -e $dirname ) {
		say "ディレクトリが存在しない。";
	}
}
&dirtestfunc();
```

以下、出力結果。
```terminal
ディレクトリが存在しない。
ディレクトリを作成する。
ディレクトリが存在する。
ディレクトリ削除。
ディレクトリが存在しない。
```

</details>

要は、ファイルかディレクトリの区別を付けずに存在有無確認ができるファイルテストと言うことになる(分かっていたことではあるが)。  
しかし、区別を付ける必要が無い理由が分からない。  


<a name="practicaluseFiletestoperatorz"></a>
#### ファイルテスト演算子(`-z`)
ファイルの大きさがゼロ(空)(ディレクトリの場合"**偽**")。  

<details><summary>ファイル容量なし向けのプログラム。</summary>

以下、ファイルサイズが0の場合のプログラム。
```perl
use v5.24;
use Cwd;	# カレントディレクトリ呼び出しモジュール。

sub filesizefunc() {
	my $currentDir = getcwd();	# カレントディレクトリ取得。

	my $filename = $currentDir . '/filesize.txt';	←☆この直後でのファイルテストzは、ファイルが存在してしまう(ファイルが無いため)。

	say "ファイルを作成する。";
	open my $file_fh, '>', $filename or die "$filenameのファイルオープン失敗($!)";
	close $file_fh;

	if( -z $filename ) {
		say "ファイルが空ファイル(書き込みなし)。";
	}

	say "以下、ファイル作成直後の情報。";
	my ($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = lstat($filename);	# ファイルのlstat(プロパティ)情報。
	say "\tファイルの容量をバイト単位で表す\t\t：$size";
	say "\tファイルシステムI/Oでのブロックサイズ\t：$blksize";
	say "\t割り当てられたブロック数\t\t\t\t：$blocks";

	if( -z $filename ) {
		say "ファイルが空ファイル(書き込みなし)。";
	}

	say "ファイル削除。";
	unlink $filename or warn "ファイル削除失敗($!)。";
	unless( -z $filename ) {
		say "ファイルに書き込みあり。";
	}
}
&filesizefunc();
```

以下、出力結果。
```terminal
ファイルを作成する。
ファイルが空ファイル(書き込みなし)。
以下、ファイル作成直後の情報。
	ファイルの容量をバイト単位で表す		：0	←☆容量がない。
	ファイルシステムI/Oでのブロックサイズ	：4096
	割り当てられたブロック数				：0
ファイルが空ファイル(書き込みなし)。
ファイル削除。
ファイルに書き込みあり。
```
ファイルが存在しない場合、書き込みありと認識されてしまう。  

</details>

<details><summary>ファイル容量あり用のプログラム。</summary>

以下、ファイルへの書き込みありプログラム。
```perl
use v5.24;

sub filesizefunc() {
	my $filename = 'filesize.txt';
	say "ファイルを作成する。";
	open my $file_fh, '>', $filename or die "$filenameのファイルオープン失敗($!)";
	if( -z $filename ) {
		say "ファイルが空ファイル(書き込みなし)。";
	}

	say "ファイル書き込み実施。";
	foreach( qw( 本日は 晴天なり。) ) {
		say $file_fh $_;	# ファイルへの書き込み。
	}

	close $file_fh;	# ファイルを閉じる。

	if( -z $filename ) {
		say "ファイルが空ファイル(書き込みなし)。";
	}
	else{
		say "ファイル書き込みあり(容量0超え)。";
	}

	say "以下、ファイル作成直後の情報。";
	my ($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = lstat($filename);	# ファイルのlstat(プロパティ)情報。
	say "\tファイルの容量をバイト単位で表す\t\t：$size";
	say "\tファイルシステムI/Oでのブロックサイズ\t：$blksize";
	say "\t割り当てられたブロック数\t\t\t\t：$blocks";

	say "ファイル削除。";
	unlink $filename or warn "ファイル削除失敗($!)。";
	unless( -z $filename ) {
		say "ファイルに書き込みあり(ファイル削除済み)。";
	}
}
&filesizefunc();
```

以下、出力結果。
```terminal
ファイルを作成する。
ファイルが空ファイル(書き込みなし)。
ファイル書き込み実施。
ファイル書き込みあり(容量0超え)。	←☆容量までは分からない。
以下、ファイル作成直後の情報。
	ファイルの容量をバイト単位で表す		：26
	ファイルシステムI/Oでのブロックサイズ	：4096
	割り当てられたブロック数				：8
ファイル削除。
ファイルに書き込みあり(ファイル削除済み)。
```
ファイル容量ありとディレクトリの両方が同じ結果になるのは困った問題だ。  
だからこそ、他のファイルテスト演算子と組み合わせる必要があるのだろう。  

</details>

<details><summary>ディレクトリに対するプログラム。</summary>

以下、ディレクトリに対する判断プログラム。
```perl
use v5.24;
use Cwd;	# カレントディレクトリ呼び出しモジュール。

sub filesizefunc() {
	my $currentDir = getcwd();	# カレントディレクトリ取得。
	my $permissions = "0755";	# このまま使う場合、10進数と解釈される(8進数に置き換える必要がある)。

	my $dirname = $currentDir . '/filesize.txt';
	say "ディレクトリを作成する。";
	mkdir $dirname, oct($permissions) or warn "ディレクトリ作成失敗($!)。";

	if( -z $dirname ) {
		say "ファイルが空ファイル(書き込みなし)。";
	}
	else{
		say "ファイルに書き込みあり(今回ディレクトリに対しての判断)。";
	}

	say "以下、ディレクトリ作成後の情報。";
	my ($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = lstat($dirname);	# ファイルのlstat(プロパティ)情報。
	say "\tディレクトリに対するハードリンクの個数\t：$nlink";
	say "\tファイルの容量をバイト単位で表す\t\t：$size";
	say "\tファイルシステムI/Oでのブロックサイズ\t：$blksize";
	say "\t割り当てられたブロック数\t\t\t\t：$blocks";

	say "ディレクトリ削除。";
	rmdir $dirname or warn "ディレクトリ削除失敗($!)。";
	if( -z $dirname ) {
		say "ファイルが空ファイル(書き込みなし)。";
	}
	else{
		say "ファイルに書き込みあり(今回ディレクトリに対しての判断)。";
	}
}
&filesizefunc();
```

以下、出力結果。
```text
ディレクトリを作成する。
ファイルに書き込みあり(今回ディレクトリに対しての判断)。
以下、ディレクトリ作成後の情報。
	ディレクトリに対するハードリンクの個数	：2
	ファイルの容量をバイト単位で表す		：64
	ファイルシステムI/Oでのブロックサイズ	：4096
	割り当てられたブロック数				：0
ディレクトリ削除。
ファイルに書き込みあり(今回ディレクトリに対しての判断)。
```
ディレクトリに対して使うものではない。  

</details>


<a name="practicaluseFiletestoperatorsamalls"></a>
#### ファイルテスト演算子(`-s`)
ファイルorディレクトリの大きさがゼロ以外(バイト単位での大きさを返す)。  

<details><summary>ファイル容量あり向けのプログラム。</summary>

以下、ファイル書き込みありプログラム。
```perl
use v5.24;

sub filesizefunc() {
	my $filename = 'filesize.txt';	# ファイル名定義。

	say "ファイルを作成する。";
	open my $file_fh, '>', $filename or die "$filenameのファイルオープン失敗($!)";
	if( -s $filename ) {
		say "ファイルに書き込みあり。";
	}
	else{
		say "ファイルが空ファイル(書き込みないのは作成直後のため)。";
	}

	say "ファイル書き込み実施。";
	say $file_fh 'ファイルへの書き込み内容。';
	close $file_fh;

	if( -s $filename ) {
		my $size = -s $filename;
		say "ファイルに書き込みあり($size)。";
	}

	say "以下、ファイル作成後の情報。";
	my ($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = lstat($filename);	# ファイルのlstat(プロパティ)情報。
	say "\tファイルの容量をバイト単位で表す\t\t：$size";
	say "\tファイルシステムI/Oでのブロックサイズ\t：$blksize";
	say "\t割り当てられたブロック数\t\t\t\t：$blocks";

	if( -s $filename ) {
		say "ファイルに書き込みあり。" . -s $filename;
	}

	say "ファイル削除。";
	unlink $filename or warn "ファイル削除失敗($!)。";
	unless( -s $filename ) {
		say "ファイルが空ファイル(書き込みなし)。" . -s $filename;
	}
}
&filesizefunc();
```

以下、出力結果。
```terminal
ファイルを作成する。
ファイルが空ファイル(書き込みないのは作成直後のため)。
ファイル書き込み実施。
ファイルに書き込みあり(40)。
以下、ファイル作成後の情報。
	ファイルの容量をバイト単位で表す		：40
	ファイルシステムI/Oでのブロックサイズ	：4096
	割り当てられたブロック数				：8
ファイルに書き込みあり。40
ファイル削除。
ファイルが空ファイル(書き込みなし)。
```

</details>

<details><summary>ディレクトリに対するプログラム。</summary>

以下、ディレクトリに対する判断プログラム。
```perl
use v5.24;

sub dirsizefunc() {
	my $permissions = "0755";	# このまま使う場合、10進数と解釈される(8進数に置き換える必要がある)。
	my $dirname = 'dirsize';	# ディレクトリ名定義。

	say "ディレクトリを作成する。";
	mkdir $dirname, oct($permissions) or warn "ディレクトリ作成失敗($!)。";

	if( -s $dirname ) {
		say "ファイルに書き込みあり(今回ディレクトリに対しての判断)。" . -s $dirname;
	}

	say "以下、ディレクトリ作成後の情報。";
	my ($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = lstat($dirname);	# ファイルのlstat(プロパティ)情報。
	say "\tディレクトリの容量をバイト単位で表す\t\t：$size";
	say "\tディレクトリシステムI/Oでのブロックサイズ\t：$blksize";
	say "\t割り当てられたブロック数\t\t\t\t\t：$blocks";

	if( -s $dirname ) {
		say "ディレクトリあり。" . -s $dirname;
	}

	say "ディレクトリ削除。";
	rmdir $dirname or warn "ディレクトリ削除失敗($!)。";
	unless( -s $dirname ) {
		say "ディレクトリが空(削除済み)。" . -s $dirname;
	}
}
&dirsizefunc();
```

以下、出力結果。
```terminal
ディレクトリを作成する。
ファイルに書き込みあり(今回ディレクトリに対しての判断)。64
以下、ディレクトリ作成後の情報。
	ディレクトリの容量をバイト単位で表す		：64
	ディレクトリシステムI/Oでのブロックサイズ	：4096
	割り当てられたブロック数					：0
ディレクトリあり。64
ディレクトリ削除。
ディレクトリが空(削除済み)。
```
ディレクトリ配下に何も無い状態だった場合も容量があると判断された。  
ディレクトリ配下を確認しているのではないと言うことなのだろう。  
ディレクトリの容量は、何を見ている？  
ディレクトリ情報？  

</details>


<a name="practicaluseFiletestoperatorf"></a>
#### ファイルテスト演算子(`-f`)
エントリは通常ファイル。  

<details><summary>ファイルに対するプログラム。</summary>

以下、プログラム(ファイルの場合"**真**"になる)。
```perl
use v5.24;

sub fileexistence() {
	# ファイル名のみ作成。
	my $filename = 'filesize.txt';	# ファイル名定義。

	unless( -f $filename ) {
		say "ファイル作成前。";
	}

	say "ファイルを作成する。";
	open my $file_fh, '>', $filename or die "$filenameのファイルオープン失敗($!)";
	close $file_fh;

	if( -f $filename ) {
		say "ファイルあり。";
	}

	say "以下、ファイル作成後の情報。";
	my ($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = lstat($filename);	# ファイルのlstat(プロパティ)情報。
	say "\tファイルに対するハードリンクの個数\t\t：$nlink";
	say "\tファイルの容量をバイト単位で表す\t\t：$size";
	say "\tファイルシステムI/Oでのブロックサイズ\t：$blksize";
	say "\t割り当てられたブロック数\t\t\t\t：$blocks";

	say "ファイル削除。";
	unlink $filename or warn "ファイル削除失敗($!)。";
	unless( -f $filename ) {
		say "ファイルなし。";
	}
}
&fileexistence();
```
上記オプション[`-e`](#practicaluseFiletestoperatore)と違い、ファイルの存在有無を確認するテストになるため、使うとすればこっち(`-f`)だろう。  

以下、出力結果。
```terminal
ファイル作成前。
ファイルを作成する。
ファイルあり。
以下、ファイル作成後の情報。
	ファイルに対するハードリンクの個数		：1
	ファイルの容量をバイト単位で表す		：0
	ファイルシステムI/Oでのブロックサイズ	：4096
	割り当てられたブロック数				：0
ファイル削除。
ファイルなし。
```

</details>

<details><summary>ディレクトリに対するプログラム。</summary>

以下、ディレクトリに対してファイルテスト演算子のファイル存在有無プログラムを実施した。
```terminal
use v5.24;
use Cwd;	# カレントディレクトリ呼び出しモジュール。

sub direxistence() {
	my $currentDir = getcwd();	# カレントディレクトリ取得。
	my $permissions = "0755";	# このまま使う場合、10進数と解釈される(8進数に置き換える必要がある)。

	# ディレクトリ名定義。
	my $dirname = $currentDir . '/dirsize';

	say "ディレクトリを作成する。";
	mkdir $dirname, oct($permissions) or warn "ディレクトリ作成失敗($!)。";

	unless( -f $dirname ) {
		say "ディレクトリなし。";
	}

	say "以下、ディレクトリ作成後の情報。";
	my ($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = lstat($dirname);	# ファイルのlstat(プロパティ)情報。
	say "\tファイルまたはディレクトリに対するハードリンクの個数：$nlink";
	say "\tディレクトリの容量をバイト単位で表す(ファイルテスト-sと同じ)：$size";
	say "\tディレクトリシステムI/Oでのブロックサイズ：$blksize";
	say "\t割り当てられたブロック数：$blocks";

	unless( -f $dirname ) {
		say "ディレクトリなし。";
	}

	say "ディレクトリ削除。";
	rmdir $dirname or warn "ディレクトリ削除失敗($!)。";
	unless( -f $dirname ) {
		say "ディレクトリなし(削除済みの判断でなしとしたわけではない)。";
	}
}
&direxistence();
```
ディレクトリに対しては"偽"になるのだろう。  

以下、出力結果。
```terminal
ディレクトリを作成する。
ディレクトリなし。
以下、ディレクトリ作成後の情報。
	ファイルまたはディレクトリに対するハードリンクの個数：2
	ディレクトリの容量をバイト単位で表す(ファイルテスト-sと同じ)：64
	ディレクトリシステムI/Oでのブロックサイズ：4096
	割り当てられたブロック数：0
ディレクトリなし。
ディレクトリ削除。
ディレクトリなし(削除済みの判断でなしとしたわけではない)。
```
ディレクトリに対しては関係なく動かず、ファイルに対してだけ使えるファイルテスト演算子だと言うことだろう。  

</details>


<a name="practicaluseFiletestoperatord"></a>
#### ファイルテスト演算子(`-d`)
エントリはディレクトリ。  

<details><summary>ディレクトリ向けのプログラム。</summary>

以下、ディレクトリ確認用プログラム。
```perl
use v5.24;
use Cwd;	# カレントディレクトリ呼び出しモジュール。

sub direxistence() {
	my $currentDir = getcwd();	# カレントディレクトリ取得。
	my $permissions = "0755";	# このまま使う場合、10進数と解釈される(8進数に置き換える必要がある)。

	# ディレクトリ名定義。
	my $dirname = $currentDir . '/dirtest';
	unless( -d $dirname ) {
		say "ディレクトリなし(ディレクトリ名を定義したため)。";
	}

	say "ディレクトリを作成する。";
	mkdir $dirname, oct($permissions) or warn "ディレクトリ作成失敗($!)。";

	if( -d $dirname ) {
		say "ディレクトリあり(ディレクトリ作成直後の確認)。";
	}

	say "以下、ディレクトリ作成後の情報。";
	my ($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = lstat($dirname);	# ファイルのlstat(プロパティ)情報。
	say "\tディレクトリに対するハードリンクの個数\t\t：$nlink";
	say "\tディレクトリの容量をバイト単位で表す\t\t：$size";
	say "\tディレクトリシステムI/Oでのブロックサイズ\t：$blksize";
	say "\t割り当てられたブロック数\t\t\t\t\t：$blocks";

	say "ディレクトリ削除。";
	rmdir $dirname or warn "ディレクトリ削除失敗($!)。";
	unless( -d $dirname ) {
		say "ディレクトリなし(削除済み)。";
	}
}
&direxistence();
```
上記オプション[`-e`](#practicaluseFiletestoperatore)と違い、ディレクトリの存在有無を確認するテストになるため、使うとすればこっち(`-d`)だろう。  

以下、出力結果。
```terminal
ディレクトリなし(ディレクトリ名を定義したため)。
ディレクトリを作成する。
ディレクトリあり(ディレクトリ作成直後の確認)。
以下、ディレクトリ作成後の情報。
	ディレクトリに対するハードリンクの個数		：2
	ディレクトリの容量をバイト単位で表す		：64
	ディレクトリシステムI/Oでのブロックサイズ	：4096
	割り当てられたブロック数					：0
ディレクトリ削除。
ディレクトリなし(削除済み)。
```

</details>

<details><summary>ファイルに対するプログラム。</summary>

以下、ファイルに対してディレクトリテスト演算子のファイル存在有無プログラムを実施した。
```perl
use v5.24;

sub fileexistence() {
	# ファイル名のみ作成。
	my $filename = 'filetest.txt';

	unless( -d $filename ) {
		say "ファイル作成前(ファイル名定義直後のため)。";
	}

	say "ファイルを作成する。";
	open my $file_fh, '>', $filename or die "$filenameのファイルオープン失敗($!)";
	close $file_fh;

	if( -d $filename ) {
		say "ファイルあり。";
	}
	else{
		say "ファイルなし(ディレクトリがあるという意味ではない)。";
	}

	say "以下、ファイル作成後の情報。";
	my ($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = lstat($filename);	# ファイルのlstat(プロパティ)情報。
	say "\tファイルに対するハードリンクの個数\t\t：$nlink";
	say "\tファイルの容量をバイト単位で表す\t\t：$size";
	say "\tファイルシステムI/Oでのブロックサイズ\t：$blksize";
	say "\t割り当てられたブロック数\t\t\t\t：$blocks";

	say "ファイル削除。";
	unlink $filename or warn "ファイル削除失敗($!)。";
	unless( -s $filename ) {
		say "ファイルなし(削除済み)。";
	}
}
&fileexistence();
```

以下、出力結果。
```terminal
ファイル作成前(ファイル名定義直後のため)。
ファイルを作成する。
ファイルなし(ディレクトリがあるという意味ではない)。
以下、ファイル作成後の情報。
	ファイルに対するハードリンクの個数		：1
	ファイルの容量をバイト単位で表す		：0
	ファイルシステムI/Oでのブロックサイズ	：4096
	割り当てられたブロック数				：0
ファイル削除。
ファイルなし(削除済み)。
```

</details>


<a name="practicaluseFiletestoperatorl"></a>
#### ファイルテスト演算子(`-l`)
エントリはシンボリックリンク(ファイルシステムが非対応なら偽)。  

<details><summary>シンボリックリンクファイルに対するプログラム。</summary>

以下、プログラム。
```perl
use v5.24;

sub filetestLink() {
	my $filename = 'filetest.txt';	# ファイル名のみ定義。

	unless( -l $filename ) {
		say "ファイル作成前(ファイルがないと言う意味ではない)。";
	}

	say "ファイルを作成する。";
	open my $file_fh, '>', $filename or die "$filenameのファイルオープン失敗($!)";
	say $file_fh '本日は晴天なり。';	# ファイルへの書き込み。
	close $file_fh;

	if( -l $filename ) {
		say "シンボリックリンクファイルあり。";
	}
	else{
		say "シンボリックリンクファイルなし。";
	}

	say "以下、ファイル作成後の情報。";
	my ($dev, $ino, $mode, $nlink, $uid, $gid, $rdev,
		$size, $atime, $mtime, $ctime, $blksize, $blocks)
		= lstat($filename);	# ファイルのlstat(プロパティ)情報。
	say "\tファイルに対するハードリンクの個数：\t$nlink";	# 今回、ハードではない。
	say "\tファイルの容量をバイト単位で表す：\t\t$size";
	say "\tファイルシステムI/Oでのブロックサイズ：\t$blksize";
	say "\t割り当てられたブロック数：\t\t\t\t$blocks";

	my $testfilename = 'シンボリックリンクファイル.test';
	symlink $filename, $testfilename or warn "ソフトリンクファイル作成失敗($!)。";
	say 'ファイルに対するソフトリンクあり($filename)' if readlink $filename;	←☆undefになるため、出力されない。
	say 'ファイルに対するソフトリンクあり($testfilename)' if readlink $testfilename;

	if( -l $filename ) {
		say "シンボリックリンクファイルあり(" . '$filename' . ")。";	←☆通常ファイルのため、出力されない。
	}
	elsif( -l $testfilename ) {
		say "シンボリックリンクファイルあり(" . '$testfilename' . ")。";	←☆こっちが出力される。
	}
	else{
		say "シンボリックリンクファイルなし。";
	}

	say "ファイル削除。";
	unlink $filename or warn "ファイル削除失敗($!)。";
	unlink $testfilename or warn "シンボリックリンクファイル削除失敗($!)。";
	if( -l $testfilename or -l $filename ) {
		say "シンボリックリンクファイルあり。";
	}
	else{
		say "シンボリックリンクファイルなし(削除済みの判断で'なし'としたわけではない)。";
	}
}
&filetestLink();
```

以下、実行結果。
```terminal
ファイル作成前(ファイルがないと言う意味ではない)。
ファイルを作成する。
シンボリックリンクファイルなし。
以下、ファイル作成後の情報。
	ファイルに対するハードリンクの個数：	1
	ファイルの容量をバイト単位で表す：		25
	ファイルシステムI/Oでのブロックサイズ：	4096
	割り当てられたブロック数：				8
ファイルに対するソフトリンクあり($testfilename)
シンボリックリンクファイルあり($testfilename)。
ファイル削除。
シンボリックリンクファイルなし(削除済みの判断で'なし'としたわけではない)。
```

</details>

<details><summary>シンボリックリンクディレクトリに対するプログラム。</summary>

以下、ディレクトリに対するプログラム。
```perl
use v5.24;
use Cwd;	# カレントディレクトリ呼び出しモジュール。

sub dirtestLink() {
	my $currentDir = getcwd();	# カレントディレクトリ取得。
	my $permissions = "0755";	# このまま使う場合、10進数と解釈される(8進数に置き換える必要がある)。

	# ディレクトリ名定義。
	my $dirname = $currentDir . '/testDir';

	say "ディレクトリを作成する。";
	mkdir $dirname, oct($permissions) or warn "ディレクトリ作成失敗($!)。";

	unless( -l $dirname ) {
		say "シンボリックリンクディレクトリではない。";
	}

	say "以下、ディレクトリ作成後の情報。";
	my ($dev, $ino, $mode, $nlink, $uid, $gid, $rdev,
		$size, $atime, $mtime, $ctime, $blksize, $blocks)
		= lstat($dirname);	# ファイルのlstat(プロパティ)情報。
	say "\tディレクトリに対するハードリンクの個数：\t$nlink";
	say "\tディレクトリの容量をバイト単位で表す：\t\t$size";
	say "\tディレクトリシステムI/Oでのブロックサイズ：\t$blksize";
	say "\t割り当てられたブロック数：\t\t\t\t\t$blocks";

	my $testdirname = 'シンボリックリンクディレクトリ';
	symlink $dirname, $testdirname or warn "ソフトリンクディレクトリ作成失敗($!)。";
	say 'ディレクトリに対するソフトリンクあり($dirname)' if readlink $dirname;	←☆実体ディレクトリのためメッセージ出力なし。
	say 'ディレクトリに対するソフトリンクあり($testdirname)' if readlink $testdirname;

	if( -l $dirname ) {
		say "シンボリックリンクディレクトリあり(" . '$dirname' . ")。";	←☆実体のためここには来ない。
	}
	elsif( -l $testdirname ) {
		say "シンボリックリンクディレクトリあり(" . '$testdirname' . ")。";	←☆これが出力される。
	}
	else{
		say "シンボリックリンクディレクトリなし。";
	}

	say "ディレクトリ削除。";
	unlink $testdirname or warn "シンボリックリンクディレクトリ削除失敗($!)。";
	rmdir $dirname or warn "ディレクトリ削除失敗($!)。";
	if( -l $testdirname or -l $dirname ) {
		say "ディレクトリ削除失敗。";
	}
	else{
		say "ディレクトリなし(削除済みの判断でなしとしたわけではない)。";
	}
}
&dirtestLink();
```

以下、実行結果。
```terminal
ディレクトリを作成する。
シンボリックリンクディレクトリではない。
以下、ディレクトリ作成後の情報。
	ディレクトリに対するハードリンクの個数：	2
	ディレクトリの容量をバイト単位で表す：		64
	ディレクトリシステムI/Oでのブロックサイズ：	4096
	割り当てられたブロック数：					0
ディレクトリに対するソフトリンクあり($testdirname)
シンボリックリンクディレクトリあり($testdirname)。
ディレクトリ削除。
ディレクトリなし(削除済みの判断でなしとしたわけではない)。
```
この判定を使う日は来るのだろうか。  

</details>


<a name="practicaluseFiletestoperatorp"></a>
#### ファイルテスト演算子(`-p`)
エントリは名前付きパイプ(FIFO)またはパイプのファイルハンドル。  

<details><summary>パイプに対するプログラム。</summary>

以下、プログラム。
```perl
use v5.24;
use Cwd;	# カレントディレクトリ呼び出しモジュール。

sub pipehandle() {
	my $currentDir = getcwd();	# カレントディレクトリ取得。

	# ファイル名定義。
	my $filename = $currentDir . '/filehandle.txt';

	unless( -p $filename ) {
		say "ファイル作成前。";
	}

	say "ファイルを作成する。";
	open my $file_fh, '>', $filename
		or die "$filenameのファイルオープン失敗($!)";
	close $file_fh;

	open my $file_fh, '-|', "cat $filename"
		or die "$filenameのファイルオープン失敗($!)";
		# このファイルハンドルは、子プロセスからの読み込みになる？

	if( -p $filename ) {
		say "ファイルハンドルあり($filename)。" . '< $filename';
	}
	elsif( -p $file_fh ) {
		say "ファイルハンドルあり($file_fh)。" . '< $file_fh';	←☆これが出力されている。
	}
	else{
		say "ファイルハンドルなし。";
	}
	close $file_fh;

	say "ファイルハンドル閉じ済み。";
	if( -p $filename ) {
		say "ファイルハンドルあり($filename)。" . '< $filename';
	}
	elsif( -p $file_fh ) {
		say "ファイルハンドルあり($file_fh)。" . '< $file_fh';
	}
	else{
		say "ファイルハンドルなし。";	←☆これが出力されている。
	}

	say "ファイル削除。";
	unlink $filename or warn "ファイル削除失敗($!)。";
	if( -p $filename ) {
		say "ファイルあり。";
	}
	elsif( -p $file_fh ) {
		say "ファイルハンドルあり。";
	}
	else{
		say "ファイルなし(削除済み)。";
	}
}
&pipehandle();
```
当然なのだろうが、ファイルハンドルは開いた状態で確認する必要がある。  

todo:
パイプというのを別途調べる必要がある。  

以下、出力結果。
```terminal
ファイル作成前。
ファイルを作成する。
ファイルハンドルあり(GLOB(0x7f8498878600))。< $file_fh
ファイルハンドル閉じ済み。
ファイルハンドルなし。
ファイル削除。
ファイルなし(削除済み)。
```
これらは、冒頭説明の後半部分に当たるはず。  
前半部分はどのようなプログラムにすれば良いのか分からない。  
逆か？  

</details>


<a name="practicaluseFiletestoperatorbigS"></a>
#### ファイルテスト演算子(`-S`)
エントリはソケット。  

[`-r`](#practicaluseFiletestoperatorsmallr)演算子とは違う理由だが、今の私には出来そうに無いため、先送りする。  
todo:
使い方を調べること。  
そもそも急いで気にする箇所では無いからな。  


<a name="practicaluseFiletestoperatorsmallb"></a>
#### ファイルテスト演算子(`-b`)
エントリはブロック特殊ファイル(例：マウント可能なディスク)。  

[`-r`](#practicaluseFiletestoperatorsmallr)演算子とは違う理由だが、今の私には出来そうに無いため、先送りする。  
todo:
使い方を調べること。  


<a name="practicaluseFiletestoperatorsmallc"></a>
#### ファイルテスト演算子(`-c`)
エントリはキャラクタ特殊ファイル(例：I/Oデバイス)。  

[`-r`](#practicaluseFiletestoperatorsmallr)演算子とは違う理由だが、今の私には出来そうに無いため、先送りする。  
todo:
使い方を調べること。  


<a name="practicaluseFiletestoperatorsmallt"></a>
#### ファイルテスト演算子(`-t`)
ファイルハンドルは**tty**にオープンされている(どういう意味？)。  
補足：(`-t STDIN`が真の場合)ユーザ入力待ちの状態とのこと(ファイルやパイプからの入力では無いと言うこと)。  

[`-r`](#practicaluseFiletestoperatorsmallr)演算子とは違う理由だが、今の私には出来そうに無いため、先送りする。  
todo:
使い方を調べること。  


<a name="practicaluseFiletestoperatoru"></a>
#### ファイルテスト演算子(`-u`)
ファイルorディレクトリの**setuid**ビットがセットされている。  

[`-r`](#practicaluseFiletestoperatorsmallr)演算子とは違う理由だが、今の私には出来そうに無いため、先送りする。  
todo:
使い方を調べること。  


<a name="practicaluseFiletestoperatorg"></a>
#### ファイルテスト演算子(`-g`)
ファイルorディレクトリの**setgid**ビットがセットされている。  

[`-r`](#practicaluseFiletestoperatorsmallr)演算子とは違う理由だが、今の私には出来そうに無いため、先送りする。  
todo:
使い方を調べること。  


<a name="practicaluseFiletestoperatork"></a>
#### ファイルテスト演算子(`-k`)
ファイルorディレクトリの**sticky**ビットがセットされている。  

[`-r`](#practicaluseFiletestoperatorsmallr)演算子とは違う理由だが、今の私には出来そうに無いため、先送りする。  
todo:
使い方を調べること。  


<a name="practicaluseFiletestoperatorbigT"></a>
#### ファイルテスト演算子(`-T`)
ファイルは**ASCII**または**UTF-8**テキストファイル(発見的に推測します)。  
補足：バイナリ判定ではない場合テキストファイルと判定する。  
補足：ファイルの存在がない場合、もしくは読めない場合、偽になる。  
補足：ファイルが空の場合、真になる。  

<details><summary>テキストファイルに対するプログラム。</summary>

以下、通常ファイルに対するプログラム。
```perl
use v5.24;
use Cwd;	# カレントディレクトリ呼び出しモジュール。

sub filetestT() {
	my $currentDir = getcwd();	# カレントディレクトリ取得。

	# ファイル名のみ作成。
	my $filename = $currentDir . '/filetestT.txt';

	unless( -T $filename ) {
		say "ファイル作成前。";
	}

	say "ファイルを作成する。";
	open my $file_fh, '>', $filename
		or die "$filenameのファイルオープン失敗($!)";

	if( -T $filename ) {
		say "ファイルへの書き込み前だが、存在はしている。";	←☆中身がない場合、真になる。
	}

	foreach( qw( 本日は 晴天なり。) ) {
		say $file_fh $_;	# ファイルへの書き込み。
	}
	close $file_fh;

	if( -T $filename ) {
		say "ファイルあり(書き込み済み)。";
	}

	say "ファイル削除。";
	unlink $filename or warn "ファイル削除失敗($!)。";
	unless( -s $filename ) {
		say "ファイルなし。";
	}
}
&filetestT();
```

以下、出力結果。
```terminal
ファイル作成前。
ファイルを作成する。
ファイルへの書き込み前だが、存在はしている。
ファイルあり(書き込み済み)。
ファイル削除。
ファイルなし。
```
予想通りの結果ではある。  

</details>

<details><summary>バイナリに対するプログラム。</summary>

以下、バイナリファイルに対するプログラム。
```perl
use v5.24;

sub bintest() {
	# 以下、通常の環境変数内のPathを加工したバイナリファイル指定になる。
	my $binname = $INC[0] =~ s:perl5.*:bin/instmodsh:r;
	if( -T $binname ) {
		say "テキストファイルあり。";
	}
	else{
		say "バイナリファイルあり。";
	}

	if( -B $binname ) {
		say 'バイナリファイルあり($binname)。';	←☆？
	}
}
&bintest();
```

以下、出力結果。
```terminal
バイナリファイルあり。
```
どういうこと？  

以下、バイナリファイルの確認。
```terminal
$ ll bin/instmodsh
-r-xr-xr-x  1 asakunotomohiro  staff  4194  5 23  2019 bin/instmodsh*
$
```
とにかく、ファイルでないのは分かった。  
難しい。  

</details>


<a name="practicaluseFiletestoperatorbigB"></a>
#### ファイルテスト演算子(`-B`)
ファイルは「**バイナリ**」ファイルっぽい(**-T**の反対)。  
補足：ファイル内容の先頭数千バイト分からNullバイト・珍しいコントロール文字・上位ビットの乱立などから判断する。  
補足：ファイルの存在がない場合、もしくは読めない場合、偽になる。  
補足：ファイルが空の場合、真になる。  

<details><summary>バイナリに対するプログラム。</summary>

以下、プログラム。
```perl
use v5.24;

sub filetestB() {
	# バイナリ名定義。
	my $binname = '/Applications/Safari.app/Contents/MacOS';
	if( -T $binname ) {
		say "テキストファイルあり。";
	}
	else{
		say "バイナリファイルあり。";
	}

	if( -B $binname ) {
		say 'バイナリファイルあり($binname)。';
	}
}
&filetestB();
```

以下、出力結果。
```terminal
バイナリファイルあり。
バイナリファイルあり($binname)。
```
なるほど。  
難しい。  

</details>

<details><summary>テキストファイルに対するプログラム。</summary>

以下、テキストファイルへの判定用プログラム。
```perl
use v5.24;

sub filetestB() {
	# ファイル名のみ作成。
	my $filename = 'Binfile.txt';

	unless( -B $filename ) {
		say "ファイル作成前。";
	}

	say "ファイルを作成する。";
	open my $file_fh, '>', $filename or die "$filenameのファイルオープン失敗($!)";
	if( -B $filename ) {
		say "テキストファイルへの書き込み前だが、存在はしている。";	←☆中身がない場合、真になる。
	}

	print $file_fh '本日は晴天なり。';	←☆ファイルにテキストを書き込む。
	close $file_fh;

	if( -B $filename ) {
		say "ファイルあり(書き込み済み)。";
	}
	else{
		say "ファイルなし(書き込み済み)。";	←☆テキストファイルなので、仕方ない。
	}

	say "ファイル削除。";
	unlink $filename or warn "ファイル削除失敗($!)。";
	if( -B $filename ) {
		say "ファイルあり。";
	}
	else{
		say "ファイルなし。";	←☆削除されていようがいまいが、バイナリファイルではないめ、こっちのメッセージを出力する。
	}
}
&filetestB();
```

以下、出力結果。
```terminal
ファイル作成前。
ファイルを作成する。
テキストファイルへの書き込み前だが、存在はしている。
ファイルなし(書き込み済み)。
ファイル削除。
ファイルなし。
```
~~これは使いどころが難しい~~。  
他のファイルテスト演算子と[組み合わせ](#practicaluseFiletestoperatorandoperator)が必要と言うことだろう。  

</details>


<a name="practicaluseFiletestoperatorM"></a>
#### ファイルテスト演算子(`-M`)
スクリプト実行開始時刻からファイル修正時刻を引いたもの(日単位)(stat関数の`$mtime`)。  
補足：ファイルが最後に変更されてからの日数(スクリプトの実行開始時刻が基準)。  
戻り値：浮動小数点数(2日と1秒は、**2.00001**値になる)。  
戻り値：プラスの場合は過去日だが、マイナスの場合は未来日になる。  


<details><summary>ファイルに対するプログラム。</summary>

以下、プログラム。
```perl
use v5.24;
use Cwd;	# カレントディレクトリ呼び出しモジュール。

sub testfileM() {
	my $currentDir = getcwd();	# カレントディレクトリ取得。
	my $permissions = "0755";	# このまま使う場合、10進数と解釈される(8進数に置き換える必要がある)。

	# ファイル名のみ作成。
	my $filename = $currentDir . '/testfile.txt';

	say "ファイルを作成する。";
	open my $file_fh, '>', $filename
		or die "$filenameのファイルオープン失敗($!)";
	sleep 1;
	print $file_fh "ファイルへの書き込み実施。";
	sleep 1;
	close $file_fh;

	say "以下、ファイル作成後の情報。";
	my ($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = lstat($filename);	# ファイルのlstat(プロパティ)情報。
	my $mfiletime = -M $filename;	←☆この値がそのまま相対日だった。
	say "\t最終更新時刻(これ)：\t" . &timeformatChange(localtime $mtime);
	say "\t-Mオプション取得：\t\t$mfiletime\t(マイナス表記は未来日)";
	say "\t\t\t" . "-" x 30;
	say "\t最終アクセス時刻：\t\t" . &timeformatChange(localtime $atime);
	say "\t最後のinode変更時刻：\t" . &timeformatChange(localtime $ctime);

	if( -M $filename ) {
		say "ファイルあり。";
		my $mfiletime = -M $filename;
		say "\t" . '$mfiletime：' . "\t$mfiletime";
		say "\t" . '$mtime：' . "\t\t$mtime";
	}

	say "ファイル削除。";
	unlink $filename or warn "ファイル削除失敗($!)。";
	unless( -M $filename ) {
		say "ファイルなし。";
	}
}
&testfileM();
```

以下、出力結果。
```terminal
ファイルを作成する。
以下、ファイル作成後の情報。
	最終更新時刻(これ)：	2022年1月24日(月) 23時50分45秒
	-Mオプション取得：		-2.31481481481481e-05
			------------------------------
	最終アクセス時刻：		2022年1月24日(月) 23時50分43秒
	最後のinode変更時刻：	2022年1月24日(月) 23時50分45秒
ファイルあり。
	$mfiletime：	-2.31481481481481e-05	←☆なぜに、2日と数時間後の未来に修正したことになっているのだろう。
	$mtime：		1643035845
ファイル削除。
ファイルなし。
```
if文での判定に使うものではないが、問題ないように見えてしまうと言うのは問題だな。  
`$mtime`が正常なのだろうが、**-M**が正常に動いていないように思うのは何故だろうか。  
これが使えない場合、**$mtime**もいずれ壊れることを考慮すべき事案になってしまうのだが、、、どうやって問題ないことを突き止めれば良いのだろうか。  
困った。  

</details>

<details><summary>ディレクトリに対するプログラム。</summary>

以下、ディレクトリに対する取得プログラム。
```perl
use v5.24;

sub testfileM() {
	my $permissions = "0755";	# このまま使う場合、10進数と解釈される(8進数に置き換える必要がある)。
	my $dirname = 'Mdirname'; # ディレクトリ名定義。

	say "ディレクトリを作成する。";
	sleep 1;
	mkdir $dirname, oct($permissions) or warn "ディレクトリ作成失敗($!)。";
	sleep 3;

	if( -M $dirname ) {
		say "ディレクトリあり。";
	}
	else{
		say "ディレクトリなし。";
	}

	say "以下、ディレクトリ作成後の情報。";
	my ($dev, $ino, $mode, $nlink, $uid, $gid,
		$rdev, $size, $atime, $mtime, $ctime,
		$blksize, $blocks) = lstat($dirname);	# ファイルのlstat(プロパティ)情報。
	my $mdirtime = -M $dirname;
	say "\t最終アクセス時刻：\t\t" . &timeformatChange(localtime $atime);
	say "\t最終更新時刻(これ)：\t" . &timeformatChange(localtime $mtime);
	say "\t-Mオプション取得：\t\t$mdirtime(マイナス表記は未来)";
	say "\t最後のinode変更時刻：\t" . &timeformatChange(localtime $ctime);

	if( -M $dirname ) {
		say "ディレクトリあり($mdirtime)。";
	}
	else{
		say "ディレクトリなし($mdirtime)。";
	}

	say "ディレクトリ削除。";
	rmdir $dirname or warn "ディレクトリ削除失敗($!)。";
	if( -M $dirname ) {
		say "ディレクトリあり。";
	}
	else{
		say "ディレクトリなし(削除済みの判断でなしとしたわけではない)。";
	}
}
&testfileM();
```

以下、出力結果。
```terminal
ディレクトリを作成する。
ディレクトリあり。
以下、ディレクトリ作成後の情報。
	最終アクセス時刻：		2022年1月25日(火) 0時21分31秒
	最終更新時刻(これ)：	2022年1月25日(火) 0時21分31秒
	-Mオプション取得：		-1.15740740740741e-05(マイナス表記は未来)
	最後のinode変更時刻：	2022年1月25日(火) 0時21分31秒
ディレクトリあり(-1.15740740740741e-05)。
ディレクトリ削除。
ディレクトリなし(削除済みの判断でなしとしたわけではない)。
```
今回、**sleep**で一呼吸置いてから動かすようにしたが、それがない場合は更新時刻が0で取得された。  
ディレクトリに対して使うのは止めた方が良いかもしれない。  
ファイルの時もそうだったが、なぜ未来日で取得されているのか全く分からない。  

</details>


<a name="practicaluseFiletestoperatorA"></a>
#### ファイルテスト演算子(`-A`)
最後にアクセスされてからの日数(スクリプトの実行開始時刻が基準)。  
戻り値：浮動小数点数(2日と1秒は、**2.00001**値になる)。  
戻り値：プラスの場合は過去日だが、マイナスの場合は未来日になる。  

<details><summary>ファイルに対するプログラム。</summary>

以下、ファイルに対する取得プログラム。
```perl
use v5.24;
use Cwd;	# カレントディレクトリ呼び出しモジュール。

sub filetestA() {
	my $filename = 'filetestA.txt'; # ファイル名のみ定義。

	say "ファイル作成。";
	open my $file_fh, '>', $filename or die "$filenameのファイルオープン失敗($!)";
	sleep 1;
	say $file_fh '本日は晴天なり。';	# ファイルへの書き込み。
	close $file_fh;

	say "ファイル読み込み(この処理がない場合、取得結果が0になる)。";
	sleep 1;
	open my $file_fh, '<', $filename or die "$filenameのファイルオープン失敗($!)";
	while( defined(my $line = <$file_fh>) ) {
		chomp $line;	# 改行削除。
		say "\t$.行目-内容：$line";
	}
	close $file_fh;

	my $afiletime = '';
	if( defined( -A $filename )) {
		$afiletime = -A $filename;
		say "ファイルあり($afiletime)。";
	}

	say "以下、ファイル作成後の情報。";
	my ($dev, $ino, $mode, $nlink, $uid, $gid, $rdev,
		$size, $atime, $mtime, $ctime, $blksize, $blocks)
		= lstat($filename);	# ファイルのlstat(プロパティ)情報。
	say "\t最終アクセス時刻(これ)：\t" . &timeformatChange(localtime $atime);
	say "\t-Aオプション取得：\t\t\t$afiletime(マイナス表記は未来)";
	say "\t最終更新時刻：\t\t\t\t" . &timeformatChange(localtime $mtime);
	say "\t最後のinode変更時刻：\t\t" . &timeformatChange(localtime $ctime);

	if( -A $filename ) {
		say "ファイルあり。";
		say "\t" . '$afiletime：' . "\t$afiletime";
		say "\t" . '$atime：' . "\t\t$atime";
	}

	say "ファイル削除。";
	unlink $filename or warn "ファイル削除失敗($!)。";
	unless( -A $filename ) {
		say "ディレクトリなし(削除済みの判断でなしとしたわけではない)。";
	}
}
&filetestA();
```

以下、プログラム実行。
```terminal
$ perl ファイルテスト演算子\(オプションA\).pl
ファイル作成。
ファイル読み込み(この処理がない場合、取得結果が0になる)。
	1行目-内容：本日は晴天なり。
ファイルあり(-2.31481481481481e-05)。
以下、ファイル作成後の情報。
	最終アクセス時刻(これ)：	2022年1月26日(水) 16時22分4秒	←☆これであっているよね。
	-Aオプション取得：			-2.31481481481481e-05(マイナス表記は未来)	←☆なぜマイナス？
	最終更新時刻：				2022年1月26日(水) 16時22分3秒
	最後のinode変更時刻：		2022年1月26日(水) 16時22分3秒
ファイルあり。
	$afiletime：	-2.31481481481481e-05
	$atime：		1643181724
ファイル削除。
ディレクトリなし(削除済みの判断でなしとしたわけではない)。
$
```

以下、読み込み処理部分をコメントアウトした結果の実行。
```terminal
$ perl ファイルテスト演算子\(オプションA\).pl
ファイル作成。
ファイルあり(0)。	←☆本来0は偽になる。
以下、ファイル作成後の情報。
	最終アクセス時刻(これ)：	2022年1月26日(水) 16時23分36秒
	-Aオプション取得：			0(マイナス表記は未来)	←☆プラスもマイナスもない。
	最終更新時刻：				2022年1月26日(水) 16時23分37秒
	最後のinode変更時刻：		2022年1月26日(水) 16時23分37秒
ファイル削除。
ディレクトリなし(削除済みの判断でなしとしたわけではない)。
$
```

</details>

<details><summary>ディレクトリに対するプログラム。</summary>

以下、ディレクトリに対する取得プログラム。
```perl
use v5.24;

sub dirtestA() {
	my $permissions = "0755";	# このまま使う場合、10進数と解釈される(8進数に置き換える必要がある)。
	my $dirname = 'dirfiletest';	# ディレクトリ名定義。

	say "ディレクトリ作成。";
	mkdir $dirname, oct($permissions) or warn "ディレクトリ作成失敗($!)。";
	sleep 1;

	say "以下、ディレクトリ内容読み込み(この処理がない場合、取得結果が0になる)。";
	opendir my $dh, $dirname or die "ディレクトリオープン失敗($!)。";
	foreach my $dirfile (readdir $dh) {
	#	say $dirfile;
	}
	sleep 1;

	my $adirtime = '';
	if( -A $dirname ) {
		$adirtime = -A $dirname;
		say "ディレクトリあり($adirtime)。";
	}

	say "以下、ディレクトリ作成後の情報。";
	my ($dev, $ino, $mode, $nlink, $uid, $gid,
		$rdev, $size, $atime, $mtime, $ctime,
		$blksize, $blocks) = lstat($dirname);	# ファイルのlstat(プロパティ)情報。
	say "\t最終アクセス時刻(これ)：\t" . &timeformatChange(localtime $atime);
	say "\t-Aオプション取得：\t\t\t$adirtime(マイナス表記は未来)";
	say "\t最終更新時刻：\t\t\t\t" . &timeformatChange(localtime $mtime);
	say "\t最後のinode変更時刻：\t\t" . &timeformatChange(localtime $ctime);

	if( -A $dirname ) {
		say "ディレクトリあり。";
	}

	say "ディレクトリ削除。";
	rmdir $dirname or warn "ディレクトリ削除失敗($!)。";
	unless( -A $dirname ) {
		say "ディレクトリなし(削除済みの判断でなしとしたわけではない)。";
	}
}
&dirtestA();
```

以下、実行結果。
```terminal
$ perl ファイルテスト演算子\(オプションA\).pl
ディレクトリ作成。
以下、ディレクトリ内容読み込み(この処理がない場合、取得結果が0になる)。
ディレクトリあり(-1.15740740740741e-05)。
以下、ディレクトリ作成後の情報。
	最終アクセス時刻(これ)：	2022年1月26日(水) 16時35分54秒
	-Aオプション取得：			-1.15740740740741e-05(マイナス表記は未来)
	最終更新時刻：				2022年1月26日(水) 16時35分53秒
	最後のinode変更時刻：		2022年1月26日(水) 16時35分53秒
ディレクトリあり。
ディレクトリ削除。
ディレクトリなし(削除済みの判断でなしとしたわけではない)。
$
```

以下、読み込み処理部分をコメントアウトした結果の実行。
```terminal
$ perl ファイルテスト演算子\(オプションA\).pl
ディレクトリ作成。	←☆ディレクトリ作成後のメッセージが出ていない。
以下、ディレクトリ作成後の情報。
	最終アクセス時刻(これ)：	2022年1月26日(水) 16時36分27秒
	-Aオプション取得：			(マイナス表記は未来)
	最終更新時刻：				2022年1月26日(水) 16時36分27秒
	最後のinode変更時刻：		2022年1月26日(水) 16時36分27秒
ディレクトリ削除。
ディレクトリなし(削除済みの判断でなしとしたわけではない)。
$
```
**defined**がない場合、変数に0が入っているときに、偽になる。  
そのため、今回ディレクトリが作成されているが、作成されていないことにされてしまっている。  

</details>


<a name="practicaluseFiletestoperatorbigC"></a>
#### ファイルテスト演算子(`-C`)
Unixでは**iノード**が変更されてからの日数(それ以外のOSでは違うかもしれない)。  
補足：iノードには、ファイル内容以外のファイルに関する全ての情報が格納されている(スクリプトの実行開始時刻が基準)。  
戻り値：浮動小数点数(2日と1秒は、**2.00001**値になる)。  
戻り値：プラスの場合は過去日だが、マイナスの場合は未来日になる。  

<details><summary>ファイルに対するプログラム。</summary>

以下、ファイルに対する取得プログラム。
```perl
use v5.24;
use Cwd;	# カレントディレクトリ呼び出しモジュール。

sub filetestC() {
	my $currentDir = getcwd();	# カレントディレクトリ取得。

	my $filename = $currentDir . '/filetestC.txt';	# ファイル名のみ作成。

	say "ファイルを作成する。";
	open my $file_fh, '>', $filename or die "$filenameのファイルオープン失敗($!)";
	sleep 1;	# この処理がない場合、取得結果が0になる。
	say $file_fh '本日は晴天なり。';
	close $file_fh;

	my $cfiletime = -C $filename;
	if( defined( $cfiletime )) {
		say "ファイルあり($cfiletime)。";
	}

	say "以下、ファイル作成後の情報。";
	my ($dev, $ino, $mode, $nlink, $uid, $gid,
		$rdev, $size, $atime, $mtime, $ctime,
		$blksize, $blocks) = lstat($filename);	# ファイルのlstat(プロパティ)情報。
	say "\t最終アクセス時刻：\t\t\t" . &timeformatChange(localtime $atime);
	say "\t最終更新時刻：\t\t\t\t" . &timeformatChange(localtime $mtime);
	say "\t最後のinode変更時刻(これ)：\t" . &timeformatChange(localtime $ctime);
	say "\t-Cオプション取得：\t\t\t$cfiletime(マイナス表記は未来)";
	my $mfiletime = -M $filename;
	say "\t-Mオプション取得：\t\t\t$mfiletime(マイナス表記は未来)";

	if( -C $filename ) {
		say "ファイルあり。";
		say "\t" . '$cfiletime：' . "\t$cfiletime";
		say "\t" . '$ctime：' . "\t\t$ctime";
	}

	say "ファイル削除。";
	unlink $filename or warn "ファイル削除失敗($!)。";
	unless( -C $filename ) {
		say "ファイルなし(削除済みの判断でなしとしたわけではない)。";
	}
}
&filetestC();
```

以下、プログラム実行。
```terminal
$ perl ファイルテスト演算子\(オプションC\).pl
ファイルを作成する。
ファイル読み込み(この処理がない場合、取得結果が0になる)。
ファイルあり(-1.15740740740741e-05)。
以下、ファイル作成後の情報。
	最終アクセス時刻：			2022年1月26日(水) 17時33分42秒
	最終更新時刻：				2022年1月26日(水) 17時33分43秒
	最後のinode変更時刻(これ)：	2022年1月26日(水) 17時33分43秒
	-Cオプション取得：			-1.15740740740741e-05(マイナス表記は未来)
	-Mオプション取得：			-1.15740740740741e-05(マイナス表記は未来)
ファイルあり。
	$cfiletime：	-1.15740740740741e-05
	$ctime：		1643186023
ファイル削除。
ファイルなし(削除済みの判断でなしとしたわけではない)。
$
```
**最終更新時刻**と**最後のinode変更時刻**が同じ結果になっているため、本当に検証が正しい方法で行われているのか判断できない。  
困った。  

以下、読み込み処理部分をコメントアウトした結果の実行。
```terminal
$ perl ファイルテスト演算子\(オプションC\).pl
ファイルを作成する。
ファイル読み込み(この処理がない場合、取得結果が0になる)。
ファイルあり(0)。
以下、ファイル作成後の情報。
	最終アクセス時刻：			2022年1月26日(水) 17時35分6秒
	最終更新時刻：				2022年1月26日(水) 17時35分6秒
	最後のinode変更時刻(これ)：	2022年1月26日(水) 17時35分6秒
	-Cオプション取得：			0(マイナス表記は未来)
	-Mオプション取得：			0(マイナス表記は未来)
ファイル削除。
ファイルなし(削除済みの判断でなしとしたわけではない)。
$
```

</details>

<details><summary>ディレクトリに対するプログラム。</summary>

以下、ディレクトリに対する取得プログラム。
```perl
use v5.24;

sub dirtestC() {
	my $permissions = "0755";	# このまま使う場合、10進数と解釈される(8進数に置き換える必要がある)。
	my $dirname = 'dirFiletestC';	# ディレクトリ名定義。

	say "ディレクトリを作成する。";
	sleep 1;	# これがない場合、取得結果が0になる。
	mkdir $dirname, oct($permissions) or warn "ディレクトリ作成失敗($!)。";

	my $cdirtime = -C $dirname;
	if( defined( $cdirtime )) {
		say "ディレクトリあり($cdirtime)。";
	}
	sleep 1;

	say "以下、ディレクトリ作成後の情報。";
	my ($dev, $ino, $mode, $nlink, $uid, $gid,
		$rdev, $size, $atime, $mtime, $ctime,
		$blksize, $blocks) = lstat($dirname);	# ファイルのlstat(プロパティ)情報。
	say "\t最終アクセス時刻：\t\t\t" . &timeformatChange(localtime $atime);
	say "\t最終更新時刻：\t\t\t\t" . &timeformatChange(localtime $mtime);
	say "\t最後のinode変更時刻(これ)：\t" . &timeformatChange(localtime $ctime);
	say "\t-Cオプション取得：\t\t\t$cdirtime(マイナス表記は未来)";
	my $mdirtime = -M $dirname;
	say "\t-Mオプション取得：\t\t\t$mdirtime(マイナス表記は未来)";
	my $adirtime = -A $dirname;
	say "\t-Aオプション取得：\t\t\t$adirtime(マイナス表記は未来)";

	if( -C $dirname ) {
		say "ディレクトリあり。";
	}

	say "ディレクトリ削除。";
	rmdir $dirname or warn "ディレクトリ削除失敗($!)。";
	unless( -C $dirname ) {
		say "ディレクトリなし(削除済みの判断でなしとしたわけではない)。";
	}
}
&dirtestC();
```

以下、プログラム実行。
```terminal
$ perl ファイルテスト演算子\(オプションC\).pl
ディレクトリを作成する。
ディレクトリあり(-1.15740740740741e-05)。
以下、ディレクトリ作成後の情報。
	最終アクセス時刻：			2022年1月26日(水) 17時51分9秒
	最終更新時刻：				2022年1月26日(水) 17時51分9秒
	最後のinode変更時刻(これ)：	2022年1月26日(水) 17時51分9秒
	-Cオプション取得：			-1.15740740740741e-05(マイナス表記は未来)
	-Mオプション取得：			-1.15740740740741e-05(マイナス表記は未来)
	-Aオプション取得：			-1.15740740740741e-05(マイナス表記は未来)
ディレクトリあり。
ディレクトリ削除。
ディレクトリなし(削除済みの判断でなしとしたわけではない)。
$
```

以下、読み込み処理部分をコメントアウトした結果の実行。
```terminal
$ perl ファイルテスト演算子\(オプションC\).pl
ディレクトリを作成する。
ディレクトリあり(0)。
以下、ディレクトリ作成後の情報。
	最終アクセス時刻：			2022年1月26日(水) 17時51分41秒
	最終更新時刻：				2022年1月26日(水) 17時51分41秒
	最後のinode変更時刻(これ)：	2022年1月26日(水) 17時51分41秒
	-Cオプション取得：			0(マイナス表記は未来)
	-Mオプション取得：			0(マイナス表記は未来)
	-Aオプション取得：			0(マイナス表記は未来)
ディレクトリ削除。
ディレクトリなし(削除済みの判断でなしとしたわけではない)。
$
```
困った(よく分からないままになっている)。  

</details>

todo:
再調査が必要。  


<a name="practicaluseFileteststatfunck"></a>
#### stat関数
上記[ファイルテスト演算子](#practicaluseFiletestoperator)では取得できない(テストで得られない)情報がある。  
そのテストで得られない情報を今回の[stat関数](https://perldoc.perl.org/functions/stat)で取得する。  
Perlの公式ページでは、[日本語版](https://perldoc.jp)がないようだ。  
[Linux-stat](https://linuxjm.osdn.jp/html/GNU_coreutils/man1/stat.1.html)・
[oracle-stat](https://docs.oracle.com/cd/E19109-01/tsolaris7/805-8078/6j7jiictj/index.html)・
[hitachi-stat](http://itdoc.hitachi.co.jp/manuals/3021/3021313330/JPAS0351.HTM)。  

<details><summary>展開：プログラム。</summary>

以下、プログラム。
```perl
use v5.24;

sub statfunc() {
	my ($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks)
		= stat($0);	# 自身のファイルのstat情報。;

	say "ファイルのデバイス番号：$dev";
	say "iノード番号：$ino";
	say "ファイルの権限ビットとそれ以外の数ビットを合わせたもの(ls -lで取得されるもの)：$mode";
	say "ファイルまたはディレクトリに対するハードリンクの個数：$nlink";
	say "ファイルの所有者を表すユーザID：$uid";
	say "ファイルの所有者を表すグループID：$gid";
	say "デバイス識別子(特殊ファイルのみ)：$rdev";
	say "ファイルの容量をバイト単位で表す(ファイルテスト-sと同じ)：$size";
	say "最終アクセス時刻：$atime";
	say "最終更新時刻：$mtime";
	say "最後のinode変更時刻：$ctime";
	say "ファイルシステムI/Oでのブロックサイズ：$blksize";
	say "割り当てられたブロック数：$blocks";

}
&statfunc();
```

以下、出力結果。
```terminal
ファイルのデバイス番号：16777220
iノード番号：67541375
ファイルの権限ビットとそれ以外の数ビットを合わせたもの(ls -lで取得されるもの)：33261
ファイルまたはディレクトリに対するハードリンクの個数：1
ファイルの所有者を表すユーザID：501
ファイルの所有者を表すグループID：20
デバイス識別子(特殊ファイルのみ)：0
ファイルの容量をバイト単位で表す(ファイルテスト-sと同じ)：914
最終アクセス時刻：1642473484
最終更新時刻：1642473483
最後のinode変更時刻：1642473483
ファイルシステムI/Oでのブロックサイズ：4096
割り当てられたブロック数：8
```

</details>


<a name="practicaluseFileteststatfuncknlink"></a>
##### stat関数-nlink
ここは、上記のstat関数で取得したなかのnlinkに特化する。  

<details><summary>展開：プログラム(ハードリンク個数確認用)。</summary>

以下、ファイルに対するハードリンクの個数を検知するプログラム。
```perl
use v5.24;
use Cwd;	# カレントディレクトリ呼び出しモジュール。

sub nlinkfunc() {
	my $currentDir = getcwd();	# カレントディレクトリ取得。
	my $entity = '実体ファイル.txt';
	my $virtual = '虚像.md';
	my $nlinkFile = $currentDir . '/' . $entity;
	open my $file_fh, '>', $nlinkFile
		or die "$nlinkFileのファイルオープン失敗($!)";
	my @write = qw( 本日は 晴天なり。 本日は晴天なり。 );
	foreach( @write ) {
		say $file_fh $_;
	}
	close $file_fh;

	my ($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = stat($nlinkFile);	# ファイルのstat情報。;

	say "以下、stat情報のnlinkについて。";
	say "\tファイルに対するハードリンクの個数(実体からの紐付け)：\t$nlink";	# 1

	say "以下、ハードリンクを作成。";
	link $nlinkFile, $virtual or warn "ハードリンクファイル作成失敗($!)。";
	($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = stat($nlinkFile);	# ファイルのstat情報。;
	say "\tファイルに対するハードリンクの個数(実体からの紐付け)：\t$nlink";	# 2
	($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = stat($virtual);	# ファイルのstat情報。;
	say "\tファイルに対するハードリンクの個数(ハードリンクファイルからの紐付け)：\t$nlink";	# 2

	say "大本のファイル削除。";
	unlink $nlinkFile or warn "$nlinkFileファイル削除失敗($!)。";
	($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = stat($virtual);	# ファイルのstat情報。;
	say "\tファイルに対するハードリンクの個数(ハードリンクファイルからの紐付け)：\t$nlink";	# 1	←☆ハードリンクが実体ファイルに変わると言うことなのだろう。

	say "ハードリンクファイル削除。";
	unlink $virtual or warn "$virtualファイル削除失敗($!)。";
}
&nlinkfunc();
```

以下、出力結果。
```terminal
以下、stat情報のnlinkについて。
	ファイルに対するハードリンクの個数(実体からの紐付け)：	1
以下、ハードリンクを作成。
	ファイルに対するハードリンクの個数(実体からの紐付け)：	2
	ファイルに対するハードリンクの個数(ハードリンクファイルからの紐付け)：	2
大本のファイル削除。
	ファイルに対するハードリンクの個数(ハードリンクファイルからの紐付け)：	1
ハードリンクファイル削除。
```

</details>

ディレクトリのハードリンクに対しての検出方法が分からない・・・。  
そもそもディレクトリのハードリンクを作成できない。  
**ハードリンクディレクトリ作成失敗(Operation not permitted)。 at xxxx.pl line xxxx.**  
と言うエラーになり、作成方法が分からない。  
何より、作成も何もディレクトリに対してハードリンクは[作れない](#practicaluseFileoperationlinkandfile)はずなのだが・・・。  

<details><summary>ハードリンクディレクトリ作成失敗プログラム</summary>

以下、一応のプログラム。
```perl
use v5.24;
use Cwd;	# カレントディレクトリ呼び出しモジュール。

my $dirLinkTest = 'testDir';
my @dirLinkTest = qw( 本日は 晴天なり。 本日は晴天なり。 );
sub nlinkfunc() {
	my $currentDir = getcwd();	# カレントディレクトリ取得。
	my $permissions = "0755";	# このまま使う場合、10進数と解釈される(8進数に置き換える必要がある)。
	mkdir $dirLinkTest, oct($permissions) or warn "ディレクトリ作成失敗($!)。";
	my $nlinkDir = $currentDir . '/' . $dirLinkTest;

	my ($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = stat($nlinkDir);	# ディレクトリのstat情報。;

	say "以下、stat情報のnlinkについて。";
	say "\tディレクトリに対するハードリンクの個数：\t$nlink";	# 2	←☆ディレクトリなので、リンクが無くても2になるのが正しい。

	say "以下、ハードリンクを作成。";
	my $hardLinkDir = $currentDir . '/別ディレクトリ/';
	link $nlinkDir, $hardLinkDir . 'test' or warn "ハードリンクディレクトリ作成失敗($!)。";
		# ハードリンクディレクトリ作成失敗(Operation not permitted)。 at stat関数-nlinkに特化.pl line 22.

	say "以下、ソフトリンクを作成(1個目)。";
	symlink $nlinkDir, $dirLinkTest[0] or warn "シンボリックリンクディレクトリ作成失敗($!)。";
	($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = stat($nlinkDir);	# ファイルのstat情報。;
	say "\tディレクトリに対するハードリンクの個数：\t$nlink";	# 2	←☆ディレクトリなので、リンクが無くても2になるのが正しい。

	say "以下、ソフトリンクを作成(2個目)。";
	symlink $nlinkDir, $dirLinkTest[1] or warn "シンボリックリンクディレクトリ作成失敗($!)。";
	($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = stat($nlinkDir);	# ファイルのstat情報。;
	say "\tディレクトリに対するハードリンクの個数：\t$nlink";	# 2	←☆ディレクトリなので、リンクが無くても2になるのが正しい。

	say "1個目のソフトリンクファイル削除。";
	unlink $dirLinkTest[0] or warn "$dirLinkTest[0]ディレクトリ削除失敗($!)。";
	($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = stat($nlinkDir);	# ファイルのstat情報。;
	say "\tディレクトリに対するハードリンクの個数：\t$nlink";	# 2	←☆ディレクトリなので、リンクが無くても2になるのが正しい。

	say "大本のファイル削除。";
	rmdir $nlinkDir or warn "$nlinkDirディレクトリ削除失敗($!)。";
	($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = stat($dirLinkTest[1]);	# ファイルのstat情報。;
	say "\tディレクトリに対するハードリンクの個数：\t$nlink";	# 空文字列(undef)

	say "2個目のハードリンクファイル削除。";
	unlink $dirLinkTest[1] or warn "$dirLinkTest[1]ディレクトリ削除失敗($!)。";
	($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = stat($dirLinkTest[1]);	# ファイルのstat情報。;
	say "\tディレクトリに対するハードリンクの個数：\t$nlink";	# 空文字列(undef)
}
&nlinkfunc();
```
※このプログラムにバグがある。  
　ディレクトリを作成した上で、そのディレクトリからリンクを張っているのだが、ディレクトリを作り損ねることがあるようで、その状態でリンクを張るため、ディレクトリではなくファイルっぽいリンクができあがってしまう。  

</details>

OSによっては、コマンドオプションとの併用で、ディレクトリに対するハードリンク作成が出来るようだ。  
Perlからハードリンクディレクトリ作成はできそうにない。  


<a name="practicaluseFiletestlstatfunck"></a>
#### lstat関数
シンボリックリンク(ソフトリンク)を[stat関数](#practicaluseFileteststatfunck)に渡した場合、実体ファイルの情報を取得する。  

<details><summary>シンボリックリンクファイルをstat関数で情報取得するプログラム。</summary>

以下、stat関数利用プログラム。
```perl
use v5.24;
use Cwd;	# カレントディレクトリ呼び出しモジュール。

sub statfunc() {
	my $currentDir = getcwd();	# カレントディレクトリ取得。
	my $entity = $currentDir . '/実体ファイル.txt';
	open my $file_fh, '>', $entity
		or die "$entityのファイルオープン失敗($!)";
	close $file_fh;
	my $virtual = '仮想.md';
	symlink $entity, $virtual or warn "シンボリックリンクファイル作成失敗($!)。";

	say "以下、stat情報を実体ファイルとシンボリックリンクファイルで比較した。";
	my @stat_entity = stat($entity);	# ファイルのstat情報。;
	my @stat_virtual = stat($virtual);	# ファイルのstat情報。;

	while( my($index, $value) = each @stat_entity ) {
		unless( $value eq $stat_virtual[$index] ){
			say "実体($value)!=リンクファイル($stat_virtual[$index])";
		}
	}

	unlink $virtual or warn "$virtualファイル削除失敗($!)。";
	unlink $entity or warn "$entityファイル削除失敗($!)。";

	say "以上。"
}
&statfunc();
```

以下、出力結果。
```terminal
以下、stat情報を実体ファイルとシンボリックリンクファイルで比較した。
以上。
```
何も出力されていないということは、実体ファイルの情報とシンボリックリンクファイルの情報が全て一致していたと言うこと。  
要は、シンボリックリンクファイルの情報ではなく、実体ファイルの情報だと言うこと。  

</details>

<details><summary>展開：プログラム。</summary>

以下、**lstat関数**を使い、シンボリックリンクファイルの情報を取得するプログラム。
```perl
use v5.24;
use Cwd;	# カレントディレクトリ呼び出しモジュール。

my $stat_memo = [
	["dev", "ファイルのデバイス番号", ],
	["ino", "ファイルのiノード番号", ],
	["mode", "ファイルの権限ビットとそれ以外の数ビットを合わせたもの", ],
	["nlink", "ファイルまたはディレクトリに対するハードリンクの個数", ],
	["uid", "ファイルの所有者を表すユーザID", ],
	["gid", "ファイルの所有者を表すグループID", ],
	["rdev", "デバイス識別子(特殊ファイルのみ)", ],
	["size", "ファイルの容量をバイト単位で表す", ],
	["atime", "最終アクセス時刻", ],
	["mtime", "最終更新時刻", ],
	["ctime", "最後のinode変更時刻", ],
	["blksize", "ファイルシステムI/Oでのブロックサイズ", ],
	["blocks", "割り当てられたブロック数", ],
];

sub lstatfunc() {
	my $currentDir = getcwd();	# カレントディレクトリ取得。
	my $entity = $currentDir . '/実体ファイル.txt';
	open my $file_fh, '>', $entity or die "$entityのファイルオープン失敗($!)";
	close $file_fh;
	my $virtual = '仮想.md';
	sleep 1;
	symlink $entity, $virtual or warn "シンボリックリンクファイル作成失敗($!)。";

	say "以下、lstat情報を実体ファイルとシンボリックリンクファイルで比較した。";
	my @stat_entity = lstat($entity);	# ファイルのlstat情報。;	←☆実体ファイルにもlstat関数を用いている。
	my @stat_virtual = lstat($virtual);	# ファイルのlstat情報。;

	foreach my $index ( 0..$#stat_entity ) {
		if( $stat_entity[$index] eq $stat_virtual[$index] ){
			say "　一致結果の$stat_memo->[$index][0]情報\t\t$stat_entity[$index]";
		}
		else{
			say "不一致結果の$stat_memo->[$index][0]情報\t$stat_entity[$index]=!$stat_virtual[$index]\t$stat_memo->[$index][1]";
		}
	}

	unlink $virtual or warn "$virtualファイル削除失敗($!)。";
	unlink $entity or warn "$entityファイル削除失敗($!)。";
}
&lstatfunc();
```

以下、出力結果。
```terminal
　一致結果のdev情報			16777220
不一致結果のino情報			67645192=!67645197		←☆ファイルのiノード番号
不一致結果のmode情報		33188=!41453			←☆ファイルの権限ビットとそれ以外の数ビットを合わせたもの
　一致結果のnlink情報		1
　一致結果のuid情報			501
　一致結果のgid情報			20
　一致結果のrdev情報		0
不一致結果のsize情報		0=!53					←☆ファイルの容量をバイト単位で表す
不一致結果のatime情報		1642645640=!1642645641	←☆最終アクセス時刻
不一致結果のmtime情報		1642645640=!1642645641	←☆最終更新時刻
不一致結果のctime情報		1642645640=!1642645641	←☆最後のinode変更時刻
　一致結果のblksize情報		4096
　一致結果のblocks情報		0
```
不一致箇所があるのが分かる(見やすいように加工済み)。  

</details>

上記、プログラム側での実体ファイル情報取得用にもlstat関数を用いている。  
これが可能なのは、シンボリックリンク以外を引数にした場合、**stat関数**と全く同じ結果を返すことができるからに他ならない。  


<a name="practicaluseFiletestlocaltime"></a>
#### エポック経過秒数をローカルタイム関数で変換
システム時間の起点となるエポック(epoch)からの経過秒数を人間が読みやすい形式に変換するには、**localtime関数**を用いる。  

* localtime関数利用制限(制約？)。  
  * 月は0始まりにより、1加算することで、1月から12月までを表せるようになる。  
  * 年は1900年を加算する必要がある。  
  * 曜日は、日曜日が0始まりになり、それ以降は月曜日が1、火曜日が2と加算されていく。  
  * 日付は、1月1日が0始まりになり、12月31日は364(閏年の場合は365)になるため、1加算する必要がある。  

<details><summary>展開：プログラム。</summary>

以下、プログラム。
```perl
use v5.24;
use File::Basename;	# ファイル名のみ取得(ディレクトリ部分除去)。

sub localtimestat() {
	my $myname = basename($0, '');	# 自身のファイル名取得。
	my %dayweek = (
				0=>'日曜日',	# Sunday
				1=>'月曜日',	# Monday
				2=>'火曜日',	# Tuesday
				3=>'水曜日',	# Wednesday
				4=>'木曜日',	# Thursday
				5=>'金曜日',	# Friday
				6=>'土曜日',	# Saturday
				);

	my ($dev, $ino, $mode, $nlink, $uid, $gid, $rdev,
	$size, $atime, $mtime, $ctime, $blksize, $blocks)
			= stat($0);	# 自身のファイルのstat(プロパティ)情報。
	say "以下、'$myname'ファイル情報。";
	say "\t最終アクセス時刻：$atime";

	say "上記はエポック経過秒数になるため、以下、年月日に変換する。";
	my ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime $atime;
	$mon += 1;	# 月は0始まりなので、1加算が必要。
	$year += 1900;	# 年は1900年を加算する必要がある。
	$wday = $dayweek{$wday};	# 日曜日から0始まりになる。
	$yday += 1;	# 1月1日が0始まりなので、1加算が必要。
	say "\tatime(最終アクセス時刻)：$year年$mon月$yday日($wday) $hour時$min分$sec秒";
}
&localtimestat(@ARGV);
```

以下、出力結果。
```terminal
以下、'localtime関数.pl'ファイル情報。
	最終アクセス時刻：1642224034
上記はエポック経過秒数になるため、以下、年月日に変換する。
	atime(最終アクセス時刻)：2022年1月15日(土曜日) 14時20分34秒
```

</details>


<a name="practicaluseFiletestbitoperator"></a>
#### ビット演算子
[論理演算子](#subConditional2)にまとめたかったひとつではある。  

| 式 | 意味 |
|----|------|
|`10 & 12`|[ビットAND演算子](https://perldoc.jp/docs/perl/5.24.1/perlop.pod#Bitwise32And)(両方のオペランドが1になっているビットを1にする（この例では8になる）)。|
|`10 | 12`|[ビットOR演算子](https://perldoc.jp/docs/perl/5.24.1/perlop.pod#Bitwise32Or32and32Exclusive32Or)(片方のオペランドが1になっているビットを1にする（この例では14になる）)。|
|`10 ^ 12`|[ビットXOR演算子](https://perldoc.jp/docs/perl/5.24.1/perlop.pod#Bitwise32Or32and32Exclusive32Or)(片方のオペランドだけが1になっているビットを1にする（この例では6になる）)。|
|`6 << 2`|[左シフト演算子](https://perldoc.jp/docs/perl/5.24.1/perlop.pod#Shift32Operators)(左オペランドを右オペランドで示されたビット数だけ左に移動する。右端には0が補われる。（この例では24になる）)
|`25 >> 2`|[右シフト演算子](https://perldoc.jp/docs/perl/5.24.1/perlop.pod#Shift32Operators)(左オペランドを右オペランドで示されたビット数だけ右に移動する。右端から押し出されたビットは捨てられる。（この例では6になる）)
|`~10`|[ビット否定演算子](https://perldoc.jp/docs/perl/5.24.1/perlop.pod#Symbolic32Unary32Operators)(全てのビットを反転した数を返す。（この例では0xFFFFFFF5になる）)。


<details><summary>展開：プログラム。</summary>

以下、プログラム。
```perl
use v5.24;

sub bitFiletest() {
	say 10 & 12;	# ビットAND演算子の出力結果：8
	say 10 | 12;	# ビットOR演算子の出力結果：14
	say 10 ^ 12;	# ビットOR演算子の出力結果：6
	say 6 << 2;	# 左シフト演算子の出力結果：24
	say 25 >> 2;	# 右シフト演算子の出力結果：6
	printf "%x\n", ~10;	# ビット否定演算子の出力結果：fffffffffffffff5
}
&bitFiletest();
```
ビット否定演算子は、別名、単項ビット反転演算子とも言うそうだ。  
単項演算子のひとつなのだろう。  

</details>

todo:
そもそも使うかどうかも分からないものに時間を使うのはどうかと思うため、ここで打ち切った。
機会があれば勉強を再開しようと思う。  
例えば、本格的にファイル権限などを操作する時に重要になることだろう。  
何より、ビット演算子の活用は、C言語以外でお目に掛ったことがない。  

</details>


<a name="practicalusePackages"></a>
<details><summary>応用知識-パッケージ</summary>

どちらかと言えば、基礎知識5種類の関数のうちスコープに当てはまりそうな気がする。  


<a name="practicalusePackagesmain"></a>
### パッケージ
パッケージはスコープ(範囲対象)のひとつと思えば良い。  

```perl
use v5.24;

sub sample() {
	say "mainパッケージ";	←☆パッケージの区切りをしていない場合、メインパッケージ扱いされる。
}

package Subboo;	←☆ここ以降がサブbooパッケージ。
sub sample(){
	say "Subbooパッケージ";
}
&sample("boo");	# Subbooパッケージ	←☆パッケージないのサンプル関数を呼び出す。

main::sample();	# mainパッケージ	←☆外部パッケージのサンプル関数を呼び出すため、それを明記している。

Subbar::sample();	# Subbarパッケージ	←☆外部パッケージのサンプル関数を呼び出すため、それを明記している。;

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
my $hoge = "本日は晴天なり。" . __PACKAGE__;

package Subboo::bar::hoge;
sub sample(){
	say "Subboo入れ子パッケージhoge";
}
&sample();	# Subパッケージhoge

package Subboo::bar::barboo;
my $hoge = "本日はお日柄も良く" . __PACKAGE__;
sub sample(){
	say "Subboo入れ子パッケージbarboo";
}
&sample();	# Subboo入れ子パッケージbarboo

package Subboo;
sub sample(){
	say "Subboo単体パッケージ";
}
say $hoge;	# 本日はお日柄も良くSubboo::bar::barboo

package Subboo::bar::hoge;
my $hoge = "はれときどきぶた" . __PACKAGE__;
sub sample(){	←☆同じパッケージ名の同じ関数名が上記にある。
	say "Subパッケージhoge";
}

say $hoge;	# はれときどきぶたSubboo::bar::hoge

package main;	←☆ここ以降メインパッケージだと思っているが、違うのか？
Subboo::bar::hoge::sample();	←☆同じパッケージ名の同じ関数名の1つを呼ぶ。
								# Subパッケージhoge	←☆後ろにある関数が呼ばれる。

Subboo::sample();	# Subboo単体パッケージ

Subboo::bar::hoge::sample();	# Subパッケージhoge

say $hoge;	# はれときどきぶたSubboo::bar::hoge	←☆メインパッケージの変数を利用したつもりだったが(myもourも駄目)？
say $main::hoge;	# 空文字列(undef)	←☆変数宣言がmyの場合空文字なのはなぜ？
say $main::hoge;	# 本日は晴天なり。main	←☆変数宣言をmyからourにした結果。

Subboo::bar::barboo::sample();	# Subboo入れ子パッケージbarboo

sample();	←☆先頭のメインパッケージにある関数を呼ぶ。
			#	出力結果：mainパッケージ
```
上記の後半にメインパッケージを宣言し、冒頭のメインパッケージで変数宣言したが、それが後半で利用できなくなっている。  
要は、レキシカル変数と言うのはパッケージに属していないという説明に合致する。  
なるほど・・・こういう意味だったのか・・・なかなか文字だけの説明では理解できない部分があり、やってみるだけの価値があると思わせる結果が出てきた。  

勝手に、パッケージの重ね掛けと命名したが、よくよく見れば入れ子かな・・・しかしな・・・。  
とりあえず、階層を深くし、途中のパッケージ名を変えることで、機能ごとに分ける価値が生まれる・・・と思う。  

外部パッケージ内の[レキシカル変数](#subVariable1)を利用できない説明をしている。  


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
	# 出力結果：Sub入れ子パッケージsample関数

	# 以下、キャッチオールサブルーチン未定義での呼び出し結果。
	#Sub::hoge::boo::testFunc();
	# 出力結果：Undefined subroutine &Sub::hoge::boo::testFunc called at 自動ロード(Autoload).pl line 7.

	# 以下、キャッチオールサブルーチン定義実施後の呼び出し結果。
Sub::hoge::boo::testFunc();
	# 出力結果：未定義関数(Sub::hoge::boo::testFunc)呼び出し。

	# 以下、キャッチオールサブルーチン定義実施後の呼び出し結果(v5.11以降)。
	#Sub::hoge::boo::testFunc();
	# 出力結果：Global symbol "$AUTOLOAD" requires explicit package name (did you forget to declare "my $AUTOLOAD"?) at 自動ロード(Autoload).pl line 28.

	# 以下、キャッチオールサブルーチン定義実施後の呼び出し結果(v5.11以降)。
	#		my $AUTOLOAD;
	#Sub::hoge::boo::testFunc();
	# 出力結果：未定義関数()呼び出し。

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
	# 出力結果：空文字列(undef)

&closure();
	# 出力結果：borhogebar

&closure("引数");
	# 出力結果：borhogebar	←☆上記1回目の呼び出しにて、変数が作られているため、今回の呼び出しでは、前回作成した変数を使い回している。
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
	# 出力結果：borhogebar

&closure("引数");
	# 出力結果：borhogebar引数

&closure("2回目の呼び出し");
	# 出力結果：borhogebar2回目の呼び出し
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
	# 出力結果：CODE(0x7fbc1a002ba0)

say &closure->();	# 20211212
	# 出力結果：20211211

say &closure->(0);	# 20211212+0
	# 出力結果：20211211

say &closure->(100);	# 20211212+100
	# 出力結果：20211311

say &closure->(1);	# 20211212+1
	# 出力結果：20211212

say "上記は、全て単発呼び出しになっている。以下は、変数を使い回している(変数への加算が行われている)。";

say $func->(111);	# 20211212+111
	# 出力結果：20211323

say $func->(5);	# 20211212+111+5
	# 出力結果：20211328
```

</details>

<a name="practicaluseTypeglob"></a>
<details><summary>応用知識-型グロブ</summary>

※通常の[グロブ](#practicaluseDirectorymanipulationDirectoryglob)は、ディレクトリ操作(#practicaluseDirectorymanipulationDirectorycurrent)で説明している。  


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

my $hoge = \*boo;	# 型グロブのリファレンス作成。

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


#### 型グロブ内のリファレンス利用
理解できないため、先送り。  


#### シンボルリファレンス
理解できないため、先送り。  
そもそも通常の環境ですら使われない技術とのこと。  
オブジェクト指向プログラミングでも疲れないが、今回は無理矢理使うため、勉強項目として設けられているようだ・・・何ともかんとも・・・。  

※バグの温床になる技術になるため、使わないようにすること。  

</details>

<a name="practicalusecpan"></a>
<details><summary>応用知識-CPAN</summary>

[CPAN](https://www.cpan.org)から欲しいモジュールを探す。  
[meta-CPAN](https://metacpan.org)というのもある。  
また、サンプルスクリプトなどもあるようだ。  


#### CPANからモジュールのインストール方法。
CPAN.pmモジュール利用が一般的らしい。  

<details><summary>起動方法と終了方法</summary>

以下、起動方法及び終了。
```terminal
$ perl -MCPAN -e shell	←☆起動方法。
Terminal does not support AddHistory.

To fix that, maybe try>  install Term::ReadLine::Perl


cpan shell -- CPAN exploration and modules installation (v2.28)
Enter 'h' for help.

cpan[1]> quit	←☆終了方法その1。
Terminal does not support GetHistory.
Lockfile removed.
$ perl -MCPAN -e shell
Terminal does not support AddHistory.

To fix that, maybe try>  install Term::ReadLine::Perl


cpan shell -- CPAN exploration and modules installation (v2.28)
Enter 'h' for help.

cpan[1]> exit	←☆終了方法その2。
Terminal does not support GetHistory.
Lockfile removed.
$ perl -MCPAN -e shell
Terminal does not support AddHistory.

To fix that, maybe try>  install Term::ReadLine::Perl


cpan shell -- CPAN exploration and modules installation (v2.28)
Enter 'h' for help.

cpan[1]> q	←☆終了方法その3。
Terminal does not support GetHistory.
Lockfile removed.
$
```
1文字でも終了できるのかと思い、`d`を入力したとき、何かをインストールしてしまった。  
そして、初起動時のメッセージが消えてしまったよ。  

</details>

以下、モジュールインストール。
```terminal
$ perl -MCPAN -e shell
Terminal does not support AddHistory.

To fix that, maybe try>  install Term::ReadLine::Perl


cpan shell -- CPAN exploration and modules installation (v2.28)
Enter 'h' for help.

cpan[1]> install Text::Balanced	←☆インストール実施。
Reading '/Users/asakunotomohiro/.cpan/Metadata'
  Database was generated on Mon, 13 Dec 2021 07:17:03 GMT
Text::Balanced is up to date (2.04).

cpan[2]> q
Terminal does not support GetHistory.
Lockfile removed.
$
```
~~簡単に終わったが、インストールしたことをどのように検証すればいいのだろう。~~  
インストール失敗。  
これを`use`する？  
手作業でのインストールは大変とのこと。  

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

非オブジェクト指向プログラムに比べて20〜50%の速度低下があるとは言え、20年以上前の出来事であるため、最近発売された[MacBook Pro-Apple M1 Maxチップ](https://www.apple.com/jp/mac/)を使いさえすれば、瞬く間にコンパイルが終わるだろう。  


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
  * [モジュール](#practicaluseFunctionLibuse)  
  * [自動ロード](#practicaluseAutoload)  
  * [クロージャ](#practicaluseClosure)  
  * [型グロブ](#practicaluseTypeglob)  

* [CPAN](#practicalusecpan)  
  * 利用方法  
  * CPAN内の検索方法  


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


<a name="practicaluseSmartmatch"></a>
<details><summary>応用知識-スマートマッチ演算子</summary>

この技術(`~~`)を使うことで、[given-when](#practicaluseGivenwhen)と組み合わせ、Switch構文を構築可能になる。  
今回参考にする書籍は、[初めてのPerl-第6版](https://www.oreilly.co.jp/books/9784873115672/)の**2012/07/24初版第1版発行**になる。  
ダムマッチの説明はしない。  


### 利用バージョンの歴史。
Perl5.10.0で今回のスマートマッチ演算子が導入された。  
そして、このときは問題点があり、Perl5.10.1で解消した。  
そのため、Perl5.10.0を使わず、Perl5.10.1以降を使うために、正確なバージョン指定が必要になる。  
記入例）
`use 5.010001;	# 最低5.10.1必須。`  

詳しくは、[Perlの文法(perlsyn)](https://perldoc.jp/docs/perl/5.8.8/perlsyn.pod)を参照すること。  


#### 初期v5.10.0
可変(commutative)扱いとのこと。  
オペランドの順序は関係ないということ。  
※今回、このバージョンの検証はしない。  


#### 初期v5.10.1
非可変になった。  
そのため、オペランドの順序が意味を持つようになった。  


<a name="practicaluseSmartmatchoperand"></a>
##### スマートマッチ演算子とオペランドの組み合わせ。
オペランドの順序が重要になる。  

以下、まとめた表。  
|プログラム例|正規表現型|
|------------|----------|
|`%bar ~~ %boo`|ハッシュのキーが全て等しい。|
|`%bar ~~ @bar`または`@boo ~~ %boo`|最低でもハッシュのキーの1つが配列に含まれている。|
|`%bar ~~ /$bar/`または`/$boo/ ~~ %boo`|最低でもキーの1つが正規表現に一致する。|
|`$bar ~~ %hoge`|`$hoge{$bar}`が存在する。|
|`@bar ~~ @boo`|配列の内容が等しい。|
|`@bar ~~ /$boo/`|最低でも@barの1つの要素が正規表現に一致する。|
|`$bar ~~ undef`|`$bar`が未定義である。|
|`$bar ~~ /$boo/`|正規表現。|
|`20211221 ~~ '2021.1221'`|**数値風文字列**に、数値として等しい。|
|`'bar' ~~ 'bar'`|文字列として等しい。|
|`20211221 ~~ 12212021`|数値として等しい。|

* 組み合わせ例  
  * [大まかなプログラム例](#practicaluseSmartmatchProgram)  
  * [変数の扱い。](#practicaluseSmartmatchVariable)  
  * [配列の扱い。](#practicaluseSmartmatchArray)  
  * [ハッシュの扱い。](#practicaluseSmartmatchHash)  
  * [無名関数リファレンス(無名サブルーチン)の扱い。](#practicaluseSmartmatchfunction)  


<a name="practicaluseSmartmatchProgram"></a>
### 実際のプログラム。
どのような挙動が正解か不明。  

以下、正しい解釈だと思う(コメント含め)。
```perl
use v5.10.1;
no warnings 'experimental::smartmatch';	# 警告抑止(スマートマッチ演算子~~のために必要)。

sub smartMatch {
	my $val = shift;
	my @array = ('本日は(晴天)なり。', 42, 'abc', );
	my %hash  = (20211220=>'本日は晴天なり。', hoge=>20211221, );

	# 以下、%hashに$valが含まれていれば発見したことになる(正規表現を使わなくて良いのか？)。
	if(     $val   ~~ %hash   ){ say "ハッシュキー発見($val)。" }
	# 以下、$valに'a'が含まれていれば発見したことになる。
	elsif ( 'a'    ~~ $val    ){ say "a発見($val)。" }
	# 以下、@arrayに$valが含まれていれば発見したことになる(正規表現を使わなくて良いのか？何より、順序はこれでいいのか？)。
	elsif ( $val   ~~ @array  ){ say "配列値発見($val)。" }
	# 以下、どれにも当てはまらなければその他のメッセージが出力される。
	else { say "previous case not true" }
}
&smartMatch(1);						# previous case not true
&smartMatch(20211220);				# ハッシュキー発見(20211220)。
&smartMatch('本日は(晴天)なり。');	# 配列値発見(本日は(晴天)なり。)。
&smartMatch('a');					# a発見(a)。
```

以下、スマートマッチ演算子を使わず、ハッシュのキーを完全一致で探す方法例）
```perl
use v5.10.1;
no warnings 'experimental::smartmatch';	# 警告抑止(スマートマッチ演算子~~のために必要)。

sub smartMatch {
	my $val = shift;
	my @array = ('本日は(晴天)なり。', 42, 'abc', );
	my %hash  = (20211220=>'本日は晴天なり。', hoge=>20211221, );

	# 以下、%hashに指定のキー($val)がある場合、メッセージを出す。
	if ( exists $hash{$val} ) {
		# キーの完全一致が大前提
		say $hash{$val} . "発見。";
	}
}
&smartMatch(1);						# 空文字列
&smartMatch(20211220);				# 本日は晴天なり。発見。
&smartMatch('本日は晴天なり。');	# 空文字列
&smartMatch('a');					# 空文字列
```

以下、スマートマッチ演算子を使わず、ハッシュのキーを正規表現で探す方法-例）
```perl
use v5.10.1;
no warnings 'experimental::smartmatch';	# 警告抑止(スマートマッチ演算子~~のために必要)。

sub smartMatch {
	my $val = shift;
	my @array = ('本日は(晴天)なり。', 42, 'abc', );
	my %hash  = (20211220=>'本日は晴天なり。', hoge=>20211221, );

	# 以下は、キーの一部でも一致していた場合、キーと同じと判断する(乱暴)。
	my $matched = 0;
	foreach my $key ( keys %hash ) {
		# key値が$valの正規表現パターンに一致する場合、マッチ変数にkey値を代入後、for文を抜ける。
		do { $matched = $key; last } if $key =~ /$val/;
	}
	if ( $matched ) {
		# 上記検索に掛かった場合、以下のメッセージを出力する。
		say "$valはハッシュのキーと一致した($hash{$matched})。";
	}
}
&smartMatch(1);	# 1はハッシュのキーと一致した(本日は晴天なり。)。	←☆引き数値が含まれているかどうかなのでこうなる(想定通り)。
&smartMatch(20211220);				# 20211220はハッシュのキーと一致した(本日は晴天なり。)。
&smartMatch('本日は晴天なり。');	# 空文字列
&smartMatch('a');					# 空文字列
&smartMatch('hoge');				# hogeはハッシュのキーと一致した(20211221)。
&smartMatch(20211221);				# 空文字列
```
この時点で混乱している。


<a name="practicaluseSmartmatchVariable"></a>
#### 変数の扱い。
変数へのスマートマッチ演算子の検証。  

* 検証内容。  
  * [スマートマッチ演算子のみ。](#practicaluseSmartmatchVariablesmart)  
  * [スマートマッチ演算子及び正規表現検索を組み合わせ。](#practicaluseSmartmatchVariablesmartregular)  
  * [正規表現検索のみ(スマートマッチ演算子なし)。](#practicaluseSmartmatchVariableregularexpression)  

<a name="practicaluseSmartmatchVariablesmart"></a>
以下、スマートマッチ演算子のみを用いた比較(比較という言葉が適切なのか？)。
```perl
use v5.10.1;
no warnings 'experimental::smartmatch';	# 警告抑止(スマートマッチ演算子~~のために必要)。

package mainSmartMatch::main;
sub smartmatch {
	my $val = shift;
	my $matchChar = "本日は晴天なり。";

	if( $matchChar ~~ $val ) {
		say "$matchCharに$valが含まれている。";
	}
}
say "以下、実行。";
&smartmatch(1);						# 出力なし。
&smartmatch('本');					# 出力なし。
&smartmatch('本日は晴天なり。');	# 本日は晴天なり。に本日は晴天なり。が含まれている。
&smartmatch('本日は 晴天なり。');	# 出力なし。
&smartmatch('なり');				# 出力なし。
```
完全一致するものだけが検索にかかった。  


<a name="practicaluseSmartmatchVariablesmartregular"></a>
以下、スマートマッチ演算子及び正規表現検索を組み合わせた比較。
```perl
package mainSmartMatch::regex;
sub smartmatch {
	my $val = shift;
	my $matchChar = "本日は晴天なり。";

	if( $matchChar ~~ /$val/ ) {
		say "$matchCharに$valが含まれている。";
	}
}
say "以下、実行。";
&smartmatch(1);						# 出力なし。
&smartmatch('本');					# 本日は晴天なり。に本が含まれている。
&smartmatch('本日は晴天なり。');	# 本日は晴天なり。に本日は晴天なり。が含まれている。
&smartmatch('本日は 晴天なり。');	# 出力なし。
&smartmatch('なり');				# 本日は晴天なり。になりが含まれている。
```
1文字でも含まれていることで、検索に掛かるようになった。  


<a name="practicaluseSmartmatchVariableregularexpression"></a>
以下、スマートマッチ演算子を使わず、正規表現検索のみで比較した。
```perl
package subPackage::Function;
sub smartmatch {
	my $val = shift;
	my $variable = "本日は晴天なり。";

	if( $variable =~ /$val/ ) {
		say "$variableに$valが含まれている。";
	}
}
say "以下、実行。";
&smartmatch(1);						# 出力なし。
&smartmatch('本');					# 本日は晴天なり。に本が含まれている。
&smartmatch('本日は晴天なり。');	# 本日は晴天なり。に本日は晴天なり。が含まれている。
&smartmatch('本日は 晴天なり。');	# 出力なし。
&smartmatch('なり。');				# 本日は晴天なり。になり。が含まれている。
```
スマートマッチ演算子との組み合わせ結果と同じになった。  
変数に対してはこんなものなのだろう。  
リファレンスを絡ませたらどうなるのだろう・・・。  


<a name="practicaluseSmartmatchArray"></a>
#### 配列の扱い。
配列へのスマートマッチ演算子の検証。  

* 検証内容。  
  * [スマートマッチ演算子のみ。](#practicaluseSmartmatchArraysmart)  
  * [正規表現検索のみ。](#practicaluseSmartmatchArrayregularexpression)  
  * [スマートマッチ演算子と正規表現検索の組み合わせ。](#practicaluseSmartmatchArraysmartregular)  
  * [比較演算子のみを用いている。](#practicaluseSmartmatchArraycomparisonoperator)  

<a name="practicaluseSmartmatchArraysmart"></a>
以下、スマートマッチ演算子のみのプログラム例）
```perl
use v5.10.1;
no warnings 'experimental::smartmatch';	# 警告抑止(スマートマッチ演算子~~のために必要)。

sub smartMatch {
	my $val = shift;
	my @matchChar = ("本日は晴天なり。", "就職活動", "収入欲す", "hoge", );

	# 左の値が右に含まれているかを調べる。
	if( $val ~~ @matchChar ) {
	#if( @matchChar ~~ $val ) {	←☆これは何も検索に掛からず。
		say "\"@matchChar\"に\"$val\"が含まれている。";
	}
}
&smartMatch(1);						# 出力なし。
&smartMatch('入');					# 出力なし。
&smartMatch('本日は晴天なり。');	# "本日は晴天なり。 就職活動 収入欲す hoge"に"本日は晴天なり。"が含まれている。
&smartMatch('就職活動 収入欲す');	# 出力なし。
```
柔軟性はないようにみえるが、配列から要素を取り出す必要が無いのは便利だと思う。  
※柔軟性ありの認識は、このプログラムに正規表現検索をあわせたものを指す。  

<a name="practicaluseSmartmatchArrayregularexpression"></a>
以下、正規表現検索のみのプログラム例）
```perl
sub smartMatch {
	my $val = shift;
	my @matchChar = ("本日は晴天なり。", "就職活動", "収入欲す", "hoge", );

	foreach my $hoge (@matchChar) {
		# 今回の場合は、右のパターンに一致するかどうかを見ている。
		if( $hoge =~ /$val/ ) {
			say "\"@matchChar\"に\"$val\"が含まれている。";
		}
	}
}
&smartMatch(1);						# 出力なし。
&smartMatch('入');					# "本日は晴天なり。 就職活動 収入欲す hoge"に"入"が含まれている。
&smartMatch('本日は晴天なり。');	# "本日は晴天なり。 就職活動 収入欲す hoge"に"本日は晴天なり。"が含まれている。
&smartMatch('就職活動 収入欲す');	# 出力なし。
```
当たり前だが、配列要素を検索するため、配列から1つづつ取り出す必要がある。  
その検索結果は、直後プログラムのスマートマッチ演算子と正規表現検索の組み合わせプログラム例と同等。  

<a name="practicaluseSmartmatchArraysmartregular"></a>
以下、スマートマッチ演算子と正規表現検索の組み合わせプログラム例）
```perl
sub smartMatch {
	my $val = shift;
	my @matchChar = ("本日は晴天なり。", "就職活動", "収入欲す", "hoge", );

	# 以下、どちらの処理でも同じ結果が得られる。
	#if( /$val/ ~~ @matchChar ) {
	if( @matchChar ~~ /$val/ ) {
		say "\"@matchChar\"に\"$val\"が含まれている。";
	}
}
&smartMatch(1);						# 出力なし。
&smartMatch('入');					# "本日は晴天なり。 就職活動 収入欲す hoge"に"入"が含まれている。
&smartMatch('本日は晴天なり。');	# "本日は晴天なり。 就職活動 収入欲す hoge"に"本日は晴天なり。"が含まれている。
&smartMatch('就職活動 収入欲す');	# 出力なし。
```
**入**の1文字だけでも一致したことで検索成功の判断をする。  
これこそがスマートマッチ演算子の最短プログラムの尤もたる例だろう。  


<a name="practicaluseSmartmatchArraycomparisonoperator"></a>
以下は、[比較演算子](#Conditional条件分岐)のみを用いているプログラム例）
```perl
sub smartMatch {
	my $val = shift;
	my @matchChar = ("本日は晴天なり。", "就職活動", "収入欲す", "hoge", );

	foreach my $hoge (@matchChar) {
		# 今回の場合は、右のパターンに一致するかどうかを見ている。
		if( "$hoge" eq "$val" ) {
			say "\"@matchChar\"に\"$val\"が含まれている。";
		}
	}
}
&smartMatch(1);						# 出力なし。
&smartMatch('入');					# 出力なし。
&smartMatch('本日は晴天なり。');	# "本日は晴天なり。 就職活動 収入欲す hoge"に"本日は晴天なり。"が含まれている。
&smartMatch('就職活動 収入欲す');	# 出力なし。
```
これはこれで実用性があるだろう・・・要は、スマートマッチ演算子のみのプログラムで十分だと言うこと。  


<a name="practicaluseSmartmatchHash"></a>
#### ハッシュの扱い。
ハッシュへのスマートマッチ演算子の検証。  

* 組み合わせ。  
  * [スマートマッチ演算子のみ。](#practicaluseSmartmatchHashsmart)  
  * [スマートマッチ演算子と正規表現検索の組み合わせ。](#practicaluseSmartmatchHashsmartregular)  
  * [正規表現検索のみ。](#practicaluseSmartmatchHashsmartregularexpression)  
  * [ハッシュのキーと完全一致のみ。](#practicaluseSmartmatchHashKeycomparisonoperator)  
  * [ハッシュの値と完全一致のみ(直接値を取り出して比較)(スマートマッチ演算子は使えない)。](#practicaluseSmartmatchHashvaluecomparisonoperator)  
  * [ハッシュの値と完全一致のみ(キー取り出し後に値と比較)(スマートマッチ演算子は使えない)。](#practicaluseSmartmatchHashkeyandvaluecomparison)  
  * [配列要素のひとつがハッシュのキーのひとつに一致する。](#practicaluseSmartmatchHasharraymatch)  

<a name="practicaluseSmartmatchHashsmart"></a>
以下、スマートマッチ演算子のみのプログラム例）
```perl
use v5.10.1;
no warnings 'experimental::smartmatch';	# 警告抑止(スマートマッチ演算子~~のために必要)。

my @arrayChar = ("本日は晴天なり。", "クリスマス", "ジングルベル", "シングルベル", );
my %matchChar = ("本日は晴天なり。"=>20211221, 4774135046=>"オブジェクト指向", singlebell=>"ジングルベル", );

package mainSmartMatch::main;
say "以下、" . __PACKAGE__;
sub smartMatch {
	my $val = shift;

	if( $val ~~ %matchChar ) {
		say "\"%matchChar\"に\"$val\"が含まれている。";
	}
}
say "以下、実行。";
&smartMatch(1);						# 出力なし。
&smartMatch('晴');					# 出力なし。
&smartMatch('本日は晴天なり。');	# "%matchChar"に"本日は晴天なり。"が含まれている。
&smartMatch('本日は 晴天なり。');	# 出力なし。
&smartMatch('ジングルベル');		# 出力なし。
&smartMatch(20211221);				# 出力なし。
```
普通の結果が出てきたように感じるが、ハッシュからキーを取り出す作業が発生しない分、使い勝手はよさげかな。  

<a name="practicaluseSmartmatchHashsmartregular"></a>
以下、スマートマッチ演算子と正規表現検索の組み合わせプログラム例）
```perl
package subPackage::regex;
say "以下、" . __PACKAGE__;
sub smartMatch {
	my $val = shift;

	if( %matchChar ~~ /$val/ ) {
		say "\"%matchChar\"に\"$val\"が含まれている。";
	}
}
say "以下、実行。";
&smartMatch(1);						# "%matchChar"に"1"が含まれている。
&smartMatch('晴');					# "%matchChar"に"晴"が含まれている。
&smartMatch('本日は晴天なり。');	# "%matchChar"に"本日は晴天なり。"が含まれている。
&smartMatch('本日は 晴天なり。');	# 出力なし。
&smartMatch('ジングルベル');		# 出力なし。
&smartMatch(20211221);				# 出力なし。
```
股が緩い感じ・・・信用できない結果が出てきたが、これも用途に応じて使い分ける必要があるのだろう。  

<a name="practicaluseSmartmatchHashsmartregularexpression"></a>
以下、正規表現検索のみのプログラム例）
```perl
package subPackage::Function::regex;
say "以下、" . __PACKAGE__;
sub smartMatch {
	my $val = shift;

	foreach my $singlebell (keys %matchChar) {
		# 今回の場合は、右のパターンに一致するかどうかを見ている(本来の挙動通り)。
		if( $singlebell =~ /$val/ ) {
			say "\"%matchChar($singlebell)\"に\"$val\"が含まれている。";
		}
	}
}
say "以下、実行。";
&smartMatch(1);						# "%matchChar(4774135046)"に"1"が含まれている。
&smartMatch('晴');					# "%matchChar(本日は晴天なり。)"に"晴"が含まれている。
&smartMatch('本日は晴天なり。');	# "%matchChar(本日は晴天なり。)"に"本日は晴天なり。"が含まれている。
&smartMatch('本日は 晴天なり。');	# 出力なし。
&smartMatch('ジングルベル');		# 出力なし。
&smartMatch(20211221);				# 出力なし。
```
スマートマッチ演算子と正規表現検索の組み合わせ結果と同じなんだが・・・どういうこと!?  

<a name="practicaluseSmartmatchHashKeycomparisonoperator"></a>
ハッシュのキーのみと完全一致するプログラム例）
```perl
package subPackage::Function::normal;
say "以下、" . __PACKAGE__;
sub smartMatch {
	my $val = shift;

	foreach my $singlebell ( keys %matchChar ) {
		# 今回の場合は、右のパターンに一致するかどうかを見ている(本来の挙動通り)。
		if( "$singlebell" eq "$val" ) {
			say "\"%matchChar($singlebell)\"に\"$val\"が含まれている。";
		}
	}
}
say "以下、実行。";
&smartMatch(1);						# 出力なし。
&smartMatch('晴');					# 出力なし。
&smartMatch('本日は晴天なり。');	# "%matchChar(本日は晴天なり。)"に"本日は晴天なり。"が含まれている。
&smartMatch('本日は 晴天なり。');	# 出力なし。
&smartMatch('ジングルベル');		# 出力なし。
&smartMatch(20211221);				# 出力なし。
```
スマートマッチ演算子のみのプログラムと全く同じ結果になっているように思うため、使う価値はあるかもね。  

<a name="practicaluseSmartmatchHashvaluecomparisonoperator"></a>
以下、ハッシュの値を取り出すのはスマートマッチ演算子ではできないようだ。
```perl
package subPackage::Function::values;
say "以下、" . __PACKAGE__;
sub smartMatch {
	my $val = shift;

	foreach my $singlebell ( values %matchChar ) {
		# 今回の場合は、右のパターンに一致するかどうかを見ている(本来の挙動通り)。
		if( "$singlebell" eq "$val" ) {
			say "\"%matchChar($singlebell)\"に\"$val\"が含まれている。";
		}
	}
}
say "以下、実行。";
&smartMatch(1);						# 出力なし。
&smartMatch('晴');					# 出力なし。
&smartMatch('本日は晴天なり。');	# 出力なし。
&smartMatch('本日は 晴天なり。');	# 出力なし。
&smartMatch('ジングルベル');		# "%matchChar(ジングルベル)"に"ジングルベル"が含まれている。
&smartMatch(20211221);				# "%matchChar(20211221)"に"20211221"が含まれている。
```
まぁ当然かな。  

<a name="practicaluseSmartmatchHashkeyandvaluecomparison"></a>
上記と同じ(キーを取り出し、そのキーを基準に値を取り出して比較している)。
```perl
package subPackage::Function::keys;
say "以下、" . __PACKAGE__;
sub smartMatch {
	my $val = shift;

	foreach my $singlebell ( keys %matchChar ) {
		# 今回の場合は、右のパターンに一致するかどうかを見ている(本来の挙動通り)。
		if( "$matchChar{$singlebell}" eq "$val" ) {
			say "\"%matchChar($singlebell->$matchChar{$singlebell})\"に\"$val\"が含まれている。";
		}
	}
}
say "以下、実行。";
&smartMatch(1);						# 出力なし。
&smartMatch('晴');					# 出力なし。
&smartMatch('本日は晴天なり。');	# 出力なし。
&smartMatch('本日は 晴天なり。');	# 出力なし。
&smartMatch('ジングルベル');		# "%matchChar(singlebell->ジングルベル)"に"ジングルベル"が含まれている。
&smartMatch(20211221);				# "%matchChar(本日は晴天なり。->20211221)"に"20211221"が含まれている。
```
回りくどいことをするだけ無駄なのだが、試しにやってみた。  

<a name="practicaluseSmartmatchHasharraymatch"></a>
以下、配列要素のひとつがハッシュのキーのひとつに一致することの比較プログラム例）
```perl
package subPackage::Function::array;
say "以下、" . __PACKAGE__;
sub smartMatch {
	my $val = shift;

	if(%matchChar ~~ @arrayChar) {
		say "マッチ。"
	}
}
say "以下、実行。";
&smartMatch();	# マッチ。
```
何に使うのか分からないが、とりあえず、このようなことができる。  


<a name="practicaluseSmartmatchfunction"></a>
#### 無名関数リファレンスの扱い。
比較プログラムは作ってみたが、挙動がいまいちつかめず、何のために比較するのか分からなかった。  

<a name="practicaluseSmartmatchfunctionsample"></a>
以下、例）
```perl
use v5.10.1;
no warnings 'experimental::smartmatch';	# 警告抑止(スマートマッチ演算子~~のために必要)。

sub smartMatch {
	my $val = shift;
	my $boo = sub {
			say "無名関数リファレンス";
			1;
		};
	my $bar = sub {
			say "無名関数リファレンス";
			0;
		};

	say "無名関数リファレンス呼び出し。";
	$boo->();	# 無名関数リファレンス

	if( $val ~~ $boo ) {
		say "無名関数リファレンスに引数($val)を渡せる。";
	}
}
&smartMatch("boo");	# 無名関数リファレンスに引数(boo)を渡せる。
```
よく分かっていないのだが、if文にスマートマッチ演算子と関数リファレンスを組み合わせた場合、関数呼び出しが発生する。  
そのため、何のために比較をしたのかよく分からない。  
呼び出さずに比較できないだろうか。  

<a name="practicaluseSmartmatchforeach"></a>
#### foreachとwhenの組み合わせ。
[switch-case(given-when)](#practicaluseGivenwhen)で説明すべきか迷うぐらい、扱いに困る組み合わせ。  
**when**部分のみと**foreach**の組み合わせでループ処理が成立する。  

以下、サンプル
```perl
use v5.24;
no warnings 'experimental::smartmatch';	# 警告抑止。

sub hoge {
	my $val = shift;
	my $countO = 0;	# oのみをカウントする変数。
	my $countZ = 0;	# o以外をカウントする変数。
	my @string = split //, $val;
	foreach (@string) {
		when (/[o]/)   { $countO++ }
		when (/[^o]/)  { $countZ++ }
		default        { say "その他の選択結果。" };
	};
	say '$countO：' . "$countO";
	say '$countZ：' . "$countZ";
}

&hoge("boo");
		# $countO：2
		# $countZ：1
```
引数として渡した文字列を1文字づつ数えるプログラム。  
配列の中に入っている文字列を**foreach**で取り出し、**when**で仕分ける。  

</details>


<a name="practicaluseGivenwhen"></a>
<details><summary>応用知識-switchステートメント(given-when)</summary>

基本的に、Perlは、C言語の構文を拝借している。  
そのため、goto文なども採用しているのがその理由だ。  
しかし、Switch文だけは採用を見送ったようだが、v5.10で取り込んだだけでなく、改良されたとのこと。  
その後、v5.18で採用が見送られそうな感じになったようだ(現在の最新はv5.24)。  


<a name="practicaluseGivenwhenswitch"></a>
### [switchステートメント](https://perldoc.jp/docs/modules/Switch-2.09/Switch.pod)
[初めてのPerl-第5版](https://www.oreilly.co.jp/books/9784873114279/)の付録Dにて、新機能として**switch**が紹介されているだけで、安定バージョンはない。  
何より、未だに実験扱い。  

以下、`use`で読み込むだけのプログラム。
```perl
use v5.24;
use Switch;

say "switchを使いたい。";
```

以下、出力結果。
```terminal
Can't locate Switch.pm in @INC (you may need to install the Switch module) (@INC contains: 〜 ) at switch.pl line 2.
BEGIN failed--compilation aborted at switch失敗.pl line 2.
```
要は、標準搭載していないってことだよね。  
何でやねん。  


<a name="practicaluseGivenwhensmartmatchandgivenwhen"></a>
### スマートマッチとギブンフェン
[初めてのPerl](https://www.oreilly.co.jp/books/)[第6版](https://www.oreilly.co.jp/books/9784873115672/)を見返すことで、15章にそれらしいことが書いてある。  

* 15章目次：スマートマッチとgiven-when  
  1. [スマートマッチ演算子](#practicaluseSmartmatch)  
  1. [スマートマッチの優先順位](#practicaluseSmartmatchoperand)  
  1. [given文](#practicaluseGivenwhen)  
     ※ここで説明している。  
  1. ダムマッチ  
  1. 多くの項目に対してwhenを使う  
  1. 練習問題  

これらは、[第7版](https://www.oreilly.co.jp/books/9784873118246/)に記載されていない。  
ぬぅ。  
※[foreachとwhenの組み合わせ](#practicaluseSmartmatch)は、別途説明あり。  

<details><summary>警告出力ありのスマートマッチ演算子利用例</summary>

警告が出て構わないのであれば、以下のプログラムでSwitch文が使える。
```perl
use v5.24;

sub hoge {
	my $val = shift;
	given ($val) {
		# given is experimental at givenWhen_v5.24失敗v2.pl line 5.
		when (1)    { say "number 1" }	# when is experimental at givenWhen_v5.24失敗v2.pl line 7.	←☆このメッセージ出力余分。
		when ("a")  { say "string a" }	# when is experimental at givenWhen_v5.24失敗v2.pl line 8.	←☆このメッセージ出力余分。
		default     { say "previous case not true" };
	};
}
&hoge(1);	# number 1
&hoge('a');	# string a
&hoge(20211220);	# previous case not true
```
[メッセージ診断](https://perldoc.jp/docs/perl/5.22.1/perldiag.pod)  

</details>

上記の余分なメッセージを抑止したのが、以下の警告抑止後のプログラム例になる。
```perl
use v5.24;
no warnings 'experimental::smartmatch';	# 警告抑止。

sub givenwhen {
	my $val = shift;
	given ($val) {
		when (1)    { say "number 1" }
		when ("a")  { say "string a" }
		default     { say "previous case not true" };
	};
}
&givenwhen(1);			# number 1
&givenwhen('a');		# string a
&givenwhen(20211220);	# previous case not true
```

<details><summary>if文とスマートマッチ演算子の併用(見にくい結果になった)</summary>

以下、if文を使う(しかし、スマートマッチ演算子の併用をした場合、上記の"Given-when"と変わらないどころか見にくくなる)。
```perl
use v5.24;
no warnings 'experimental::smartmatch';	←☆スマートマッチ演算子`~~`を使うため、警告表示の抑止処理が必要。

sub hoge {
	my $val = shift;
	my @array = ('hoge', 42, 20211220, );
	my %hash  = (20211220=>'hoge', boo=>20211221, );
	if(    $val ~~ 1          ){ say "number 1" }
	elsif( $val ~~ "a"        ){ say "string a" }
	elsif( $val ~~ [1..10,42] ){ say "number in list v1" }
	elsif( $val ~~ @array     ){ say "number in list v2" }
	elsif( $val ~~ /\w+/      ){ say "pattern v1" }
	elsif( $val ~~ qr/\w+/    ){ say "pattern v2" }
	elsif( $val ~~ %hash      ){ say "entry in hash v1" }
	elsif( $val ~~ \%hash     ){ say "entry in hash v2" }
	elsif( $val ~~ \&sub      ){ say "arg to subroutine" }
	else { say "previous case not true" }
}
&hoge(1);			# number 1
&hoge('a');			# string a
&hoge(42);			# number in list v1
&hoge(20211220);	# number in list v2
```
何の役にも立たない。  
スマートマッチ演算子をif文で使う場合、**given-when**を使えば良い。  

</details>

<details><summary>if文と正規表現検索の組み合わせ(望んでいない結果が出てくる)</summary>

以下、if文を使う(正規表現との組み合わせのため、望ましい結果は出てこない)。
```perl
use v5.24;
no warnings 'experimental::smartmatch';	# 警告抑止(スマートマッチ演算子~~のために必要)。

sub hoge {
	$_ = shift;
	my @array = ('hoge', 42, 20211220, );
	my %hash  = (20211220=>'hoge', boo=>20211221, );
	if(    /1/          ){ say "number 1" }
	elsif( /"a"/        ){ say "string a" }
	elsif( /[1..10,42]/ ){ say "number in list v1" }
	elsif( /@array/     ){ say "number in list v2" }
	elsif( /\w+/        ){ say "pattern v1" }
	elsif( qr/\w+/      ){ say "pattern v2" }
	elsif( /%hash/      ){ say "entry in hash v1" }
	elsif( /\%hash/     ){ say "entry in hash v2" }
	elsif( /\&sub/      ){ say "arg to subroutine" }
	else { say "previous case not true" }
}
&hoge(1);	# number 1	←☆本来の挙動とあっているだろう。
&hoge('a');	# pattern v1	←☆本来の挙動からズレている(思惑と違う)。
&hoge(42);	# number in list v1	←☆本来の挙動とあっているだろう。
&hoge(20211220);	# number 1	←☆本来の挙動からズレている(ハッシュの中身を正規表現で検索できるのか？)。
```
良い具合に動いてくれない。  

</details>

※when部分で比較方法を省略した場合スマートマッチ演算子`~~`が用いられる。  
例）`when('a')`の場合`when($_ ~~ 'a')`のこと。  
例）`when($_ eq 'a')`の場合、`when($_ eq 'a')`のこと。  


<a name="practicaluseGivenwhencontinue"></a>
#### コンティニュ文付きの処理。
以下、**continue**文付きのプログラム例）
```perl
use v5.24;
no warnings 'experimental::smartmatch';	# 警告抑止。

sub hoge {
	my $val = shift;
	given ($val) {
		say "$valをwhen句で比較する。";
		when (1)   { say "number 1" }
		say "以下、hと比較。";
		when ("h") { say "string h" }
		say "以下、1文字と比較。";
		when (/o/) { say "string o"; continue}
		when (/g/) { say "string g"; continue}
		when (/e/) { say "string e"; continue}
		default    { say "previous case not true" };
	};
}
&hoge(1);
		# 1をwhen句で比較する。
		# number 1

&hoge("h");
		# hをwhen句で比較する。
		# 以下、hと比較。
		# string h

&hoge("hoge");
		# hogeをwhen句で比較する。
		# 以下、hと比較。
		# 以下、1文字と比較。
		# string o
		# string g
		# string e
		# previous case not true

&hoge("hoge");
	# 以下、continue文がない場合の出力結果。
		# hogeをwhen句で比較する。
		# 以下、hと比較。
		# 以下、1文字と比較。
		# string o
```
continueがあることにより、文字列が尽きるまで**given**に戻り、比較処理が続く・・・ようだ。  

当たり前のことだが、**when**での比較文字列は、長いのを先に持ってこなければ処理が届かない場合がある。  
上記のプログラム例で言えば、**string h**を検知した時点で、(**continue**がない場合)処理が終了するため、短いのを前に持ってきた場合は意図していない結果が出てくると言うこと。  
※**注意**：検証した結果、長短関係なかった(最初に配置したのが優先されるだけでした)。  


気になるのは、**continue**文を置くことで、**default**が実行されると言うこと(困る)。回避方法はないものか。  
回避させるには最後の**when**の`/e/`から**continue**を取り除けば良いのだろうけど・・・。  

</details>


<a name="practicaluseRegularexpression"></a>
<details><summary>応用知識-正規表現(Regular expression)</summary>

### 正規表現
言わずもがな。  
Perlの正規表現は各界隈で有名になっているため、「Perl互換性正規表現(Perl-Compatible Regualr Expression・PCRE)」と呼ばれる技術でPerlの正規表現に近づけた正規表現を謳い文句にした検索能力を持つツールが多い。  

様式：
`m/検索文字列/`  
※どのような文字列式に対しても検索できる(例：`$value =~ /serch/`)。  

実際の細かい正規表現仕様は別途「[正規表現の勉強\_作業メモなど何でも詰め込む.md](../検索利用メモ/正規表現の勉強_作業メモなど何でも詰め込む.md)」ファイルに譲ることにする。  
同ディレクトリ配下に正規表現用の勉強資材が散在しているため、参考になれば幸い。  

今回[tr演算子](https://perldoc.jp/docs/perl/5.10.0/perlop.pod)は説明していない(そもそも正規表現ではなく、置換演算子)。  


<a name="practicaluseRegularexpressionMatchoperator"></a>
### マッチ演算子(match operator)
正規表現の利用方法例）
```perl
use v5.24;

sub regexSample {
	$_ = shift;
	if( /hoge/ ) {	←☆スラッシュに囲まれた文字を正規表現で検索する。
		say "hogeにマッチした。";
	}
	else{
		say "検索に掛からず($_)。";
	}
}
&regexSample("hoge");	# hogeにマッチした。
&regexSample("Hoge");	# 検索に掛からず(Hoge)。
```


<a name="practicaluseRegularexpressionPatternmatchoperator"></a>
### パターンマッチ演算子(pattern match operator)
上記のマッチ演算子は、スラッシュ記号で挟んであっただけだが、今回は正規表現検索を明記する。  
そのため、囲む記号は任意に変更できる。  

例えば、`m(パターン)`・`m[パターン]`など。  
そして、対にならない記号の場合は、同じ記号を用いることで囲みを表現できる。  
例えば、`m!パターン!`・`m^パターン^`など。  


<a name="practicaluseRegularexpressionMatchmodifier"></a>
### マッチ修飾子
[マッチ演算子](#practicaluseRegularexpressionMatchoperator)の閉じ括弧(デリミタ)の後ろに付けるフラグのこと。  
このフラグにより、大小文字区別有無`/i`・ドット記号の挙動変更`/s`・空白文字の認識変更`/x`などを制御する。  
また、文字の解釈も変更できる。  
例えば、ASCIIコード文字を扱う`/a`・Unicodeを扱う`/u`・ロケールに従う`/l`など。  


<a name="practicaluseRegularexpressionJoinoperator"></a>
### 結合演算子(binding operator)=~
右側にあるパターンを左側の文字にマッチさせる。  
※代入演算子ではないため、気をつけること。  

以下、例）
```perl
use v5.24;

sub regexSample {
	my $hoge = shift;
	# 以下のパターンを任意の変数で検索する。
	if( $hoge =~ /hoge/ ) {
		say "hogeにマッチした(大小文字区別あり)。";
	}
	elsif( $hoge =~ m!hoge!i ) {
		say "hogeにマッチした(大小文字区別なし)。";
	}
	else{
		say "検索に掛からず($hoge)。";
	}
}
&regexSample("hoge");	# hogeにマッチした(大小文字区別あり)。
&regexSample("Hoge");	# hogeにマッチした(大小文字区別なし)。
```


<a name="practicaluseRegularexpressionMatchvariable"></a>
### マッチ変数
キャプチャ機能を使うために、括弧`()`で囲む必要がある。  

以下、例）
```perl
use v5.24;

sub regexSample {
	my $hoge = shift;
	# 括弧で囲んだ文字列をキャプチャ機能で記録し、$[数字]で呼び出す。
	if( $hoge =~ /本日は晴天なり2021(年12月)20日/ ) {
		say "マッチした(大小文字区別あり)。$1";
	}
	elsif( $hoge =~ m,本日は晴天(なり2021)/12/20,i ) {
		say "マッチした(大小文字区別なし)。$1";
		say '$0：' . $0;
	}
	else{
		say "検索に掛からず($hoge)。";
	}
}
&regexSample("本日は晴天なり2021年12月20日");	# マッチした(大小文字区別あり)。年12月
&regexSample("本日は晴天なり2021/12/20");		# マッチした(大小文字区別なし)。なり2021
												# $0：マッチ変数.pl
```
上記2つ目の検索に[パターンマッチ演算子](#practicaluseRegularexpressionPatternmatchoperator)を使うことでスラッシュ記号へのエスケープシーケンスが不要になっている。  

</details>


<a name="practicaluseSubstitutedisplacement"></a>
<details><summary>応用知識-置換演算子(Substitution operator)</summary>

<a name="practicaluseSubstitutedisplacementmain"></a>
### 置換演算子
[正規表現(マッチ演算子)](#practicaluseRegularexpression)を用いた上で、文字列の置き換えをする演算子になる。  

様式：
`s/検索文字列/置き換え文字列/`  
※左辺値が必須になる(上記で言えば`$_`に対して置換する)(例：`$value =~ s#serch#replace#;`)。  
　この例での`=~`は、結合演算子のこと。  
※検索に失敗した場合、何もしない。  

以下、例）
```perl
use v5.24;

sub replaceSample {
	$_ = shift;
	say "置換前：$_";
	if( s/boo/bar/ ) {
		say "置換結果：$_";
	}
	else{
		say "検索に掛からず($_)。";
	}
}
&replaceSample("boo");	# 置換結果：bar
&replaceSample("Boo");	# 検索に掛からず(Boo)。
```


<a name="practicaluseSubstitutedisplacementdelimiter"></a>
### デリミタ(挟む記号)
正規表現の場合は、挟むのは2個だけだった(`m//`)。  
置換演算子の場合は、3個使う。  
そのため、対になる場合は、それぞれに使う必要が出てくる(`s{検索文字列}[置換文字列]`)。  
対にならない場合は、3個だけで囲む(`s#検索文字列#置換文字列#`)。
組み合わせる場合は、それぞれ囲む必要がある(`s{検索文字列}#置換文字列#`)。  

以下、囲み記号をデフォルトから変更。  
```perl
use v5.24;

sub delimiterSample {
	$_ = shift;
	say "置換前：$_";
	if( s{boo}<bar> ) {	←☆括弧で囲む。
		say "置換結果：$_";
	}
}
&delimiterSample("boo");
```
アンダーバーでの囲みはできないようだ。  
`s_boo_bar_;	# Bareword "s_boo_bar_" not allowed while "strict subs" in use at XXXX.pl line xxxx.`


<a name="practicaluseSubstitutedisplacementqualifier"></a>
### 置換修飾子
[正規表現](#practicaluseRegularexpression)の[マッチ修飾子](#practicaluseRegularexpressionMatchmodifier)が使える。  
他にもグローバル置換フラグ(`/g`)を使える。  

* 修飾子(フラグ)  
  * `/i`フラグ  
    大小文字区別なし。  
  * `/s`フラグ  
    `.`記号に改行文字を含めて検索する。  
  * `/x`フラグ  
    空白文字を検索から除外する(`#`記号でコメントを付けたり改行で見やすく段落を付けられる)。  
  * `/m`フラグ  
    行頭と行末のアンカーを指定する(改行ごとに`^`と`$`が機能する)。  
  * `/g`フラグ  
    1回の置換で終わらず、見つかる限り置換する。  


<a name="practicaluseSubstitutedisplacementJoinoperator"></a>
### 結合演算子=~
正規表現での使い方と同じ。  
`$value =~ s/検索文字列/置換文字列/`  


<a name="practicaluseSubstitutedisplacementNondestructive"></a>
### 非破壊置換/r
原本を保存する通常利用の置換作業は、`(my $boo = $bar) =~ s{bar}<boo>;`として、**$bar**に原本があり、**$boo**に置換後の結果が入る。  
今回の`/r`修飾子を付けることで、先に置換が行われる。  
その後、置換結果を新しい変数に代入する。  

以下、r修飾子を付けたプログラム。
```perl
use v5.24;

sub nondestructive {
	my $bar = shift;
	say "置換前：$bar";
	my $boo = $bar =~ s{bar}<boo>r;
	say "置換後：$boo";
}
&nondestructive("bar");
```

以下、出力結果。
```terminal
置換前：bar
置換後：boo
```


<a name="practicaluseSubstitutedisplacementHugecock"></a>
### 大文字への置換
現在の文字を大文字に変換する場合、`\U`エスケープを使い、この後ろに続く文字を大文字化する。  
`\E`により、大文字化を止める。  

以下、プログラム。
```perl
use v5.24;

sub bigGenitals{
	my $bar = shift;
	say "置換前：$bar";
	my $boo = $bar =~ s{(a)}<\U$1>r;	←☆barのaだけを大文字にする。
	say "置換後：$boo";
}
&bigGenitals("bar");
```

以下、出力結果。
```terminal
置換前：bar
置換後：bAr
```


<a name="practicaluseSubstitutedisplacementHugecock"></a>
### 小文字への置換
現在の文字を大文字に変換する場合、`\U`エスケープを使い、この後ろに続く文字を大文字化する。  
`\E`により、大文字化を止める。  

以下、プログラム。
```perl
use v5.24;

sub lowercase{
	my $boo = shift;
	say "置換前：$boo";
	my $bar = $boo =~ s{(O)}<\L$1>r;	←☆小文字化する処理。
	say "置換後：$bar";
}
&lowercase("BOO");
```

以下、出力結果。
```terminal
置換前：BOO
置換後：BoO	←☆1つ目のoだけが小文字化するのは、グローバル修飾子をつけていないため。
```


<a name="practicaluseSubstitutedisplacementLargesmallconversion"></a>
### 大小文字変換
上記の大文字化`\U`・小文字化`\L`は、後ろに続く文字全てが対象になる。  
そのため、それをせき止める場合は、`\E`を使うことで、変換が終わる。  
また、1文字の大文字化は`\u`を使い、1文字の小文字化は`\l`を使う。  
そして、`\u\L`とした場合、先頭を大文字にし、残りを小文字にする(順不同`\L\u`でも可)。  

以下、プログラム。
```perl
use v5.24;

sub luConversion{
	my $boo = shift;
	say "大文字変換前：$boo";	# hEllOwoRld
	say "大文字変換後：\U$boo";	# HELLOWORLD

	say "小文字変換前：$boo";	# hEllOwoRld
	say "小文字変換後：\L$boo";	# helloworld

	say "先頭大文字の残り小文字：\u\L$boo";	# Helloworld
	say "先頭大文字の残り小文字：\L\u$boo";	# Helloworld

	say "先頭大文字の残り小文字(指定方法間違い)：\U\l$boo";	# hELLOWORLD

	say "以下、関数利用。";
	say lc( $boo );			# helloworld	←☆全て小文字化。
	say uc( $boo );			# HELLOWORLD	←☆全て大文字化。
	say fc( $boo );			# helloworld	←☆Unicodeの大小文字の扱いに従う。
	say ucfirst( $boo );	# HEllOwoRld	←☆先頭大文字化。
}
&luConversion("hEllOwoRld");
```

* 関数用の参照先URL  
  * lc関数：<https://perldoc.jp/func/lc>  
  * uc関数：<https://perldoc.jp/func/uc>  
  * fc関数：<https://perldoc.jp/func/fc>  
  * ucfirst関数：<https://perldoc.jp/func/ucfirst>  


<a name="practicaluseSubstitutedisplacementMetaquote"></a>
### メタクォート
エスケープ文字を使わず、特殊記号をエスケーするには、メタクォート`\Q`を使う。  

以下、プログラム。
```perl
use v5.24;

sub metacoat{
	$_ = shift;
	say "置換前：$_";
	if( s/\Qtoday(Happy(\E(Neet)/本日は$1晴天なり。/ ) {
		say "置換後：$_";
	}
	else{
		say "検索に掛からず($_)。";
	}
}
&metacoat("today(Happy(Neet");
```
**today(Happy(Neet**を通常文字列として扱う場合、本来ならば、**(**をエスケープし、**\(**にしておく必要がある。  
しかし、`\Q`を使うことで、**\**記号を省略できる。  
また、大小文字変換`\U`・`\L`と同じように、`\E`を使うことで、エスケープを止める。  

以下、出力結果。
```terminal
置換前：today(Happy(Neet
置換後：本日はNeet晴天なり。
```

<details><summary>メタクォート用関数</summary>

```perl
use v5.24;

sub metacoat{
	$_ = shift;
	say "置換前：$_";
	my $string = quotemeta('today(Happy(Neet');	←☆この文字列の中に、\Eを含めたところで無駄になる。
	if( s/$string/本日は晴天なり。/ ) {
		say "置換後：$_";
	}
}
&metacoat("today(Happy(Neet");
```

以下、出力結果。
```terminal
置換前：today(Happy(Neet
置換後：本日は晴天なり。
```

</details>


<a name="practicaluseSubstitutedisplacementsplitoperator"></a>
### split演算子
カンマ区切り(CSVファイル)を除くが、正規表現を用いて文字列を分割する。  
様式：
`my @split = split /区切り文字/, 文字列`  

以下、プログラム。
```perl
use v5.24;

sub split {
	$_ = shift;
	say "分割前：$_";
	my @happy = split /。/, $_;
	foreach my $value ( @happy ) {
		say $value;
	}
}
&split( "本日は,晴天なり。本日は,面接なり。" );
```

以下、出力結果。
```terminal
分割前：本日は,晴天なり。本日は,面接なり。
本日は,晴天なり
本日は,面接なり
```

todo:
特別解釈のされ方があるため、それを調べる。  


<a name="practicaluseSubstitutedisplacementjoinfunc"></a>
### join関数
正規表現を使わない。  

様式：
`my $value = join 結合文字, 分割済みの文字列;`  

以下、プログラム。
```perl
use v5.24;

sub jonfunc {
	my @joinarray = qw( 本日は 晴天なり。 そろそろ 花粉症の 時期なり。);
	my $glue = '--->';
	my $value = join $glue, @joinarray;
	say "$value";
}
&jonfunc();
```

以下、出力結果。
```terminal
本日は--->晴天なり。--->そろそろ--->花粉症の--->時期なり。
```


<a name="practicaluseSubstitutedisplacementlistcontext"></a>
#### join関数の逆として、正規表現で必要部分を抜き出す。
[join関数](#practicaluseSubstitutedisplacementjoinfunc)の場合は、不要部分の指定により、結合が行われる。  
今回は、正規表現を使い、残したい部分を指定する。  

以下、プログラム。
```perl
use v5.24;

sub listcontext {
	$_ = shift;
	my @boo = /([a-z]+)/igs;
	say "@boo";	# boo bar
}
&listcontext("boo, bar 20220128, 本日は晴天なり。");
```

</details>

<a name="practicalusesqlDBI"></a>
<details><summary>応用知識-SQL/DBI</summary>

SQL(Structured Query Language：構造化問い合わせ言語)  

唐突に何の脈絡もなく、本当に突然データベース接続がしたくなったため、手に取った。  
SQL構文の勉強は別途行うことと、何より必要に迫られた勉強ではなく、本当に唐突に何の脈絡もなく始めただけなので、概略だけに留める。  

そして、調べて思ったことは、DBIと言うのはインタフェイスのことで有り、ODBCと同じような扱いなのだと言うこと。  
DBIとODBCを組み合わせるのかと思ったが、全く違った。  
そのため、インタフェイスと言うだけのことはあり、令和のこの時代にもデータベースと接続する方法として、未だにDBIを使っている。  
素晴らしい。  
ODBCは仕事で使ったことあるが、DBI(Database Interface)はない。  
これからが楽しみだ。  

* 目次  
  * [問い合わせ言語用語](#practicalusesqlDBIquerylanguageparlance)  
  * [データ型](#practicalusesqlDBIdatatype)  
  * 演算子  
    * [比較演算子](#practicalusesqlDBIcomparisonoperator)  
    * [論理演算子](#practicalusesqlDBIlogicaloperator)  
  * [DBIプログラミング](#practicalusesqlDBImaindbiprogramming)  
  * [データソース名](#practicalusesqlDBIdatasource)  
  * [接続と切断](#practicalusesqlDBIconnectanddisconnect)  


<a name="practicalusesqlDBIquerylanguageparlance"></a>
### 問い合わせ言語用語

* C.R.U.D.用語  
  * フェッチ(Fetching)・選択(selecting)  
    データベース内からデータを取り出す操作。  
    SQLのSELECTによって実現する。  
  * 格納(Storing)・挿入(inserting)  
    データベース内にデータを格納する操作。  
    SQLのINSERTによって実現する。  
  * 更新(Updating)  
    データベース内のデータを変更する操作。  
    SQLのUPDATEによって実現する。  
  * 削除(Deleting)  
    データベース内のデータを削除する操作。  
    SQLのDELETEによって実現する。  

* C.R.U.D.  
  下記の頭文字をとり、上記の操作を表す。  
  * **C**
    Create  
  * **R**
    Read  
  * **U**
    Update  
  * **D**
    Delete  


<a name="practicalusesqlDBIdatatype"></a>
### データ型
Perlのデータ型は寛容に出来ており、SQLは厳格に出来ている。  
その取り持ちが必要になる。  

* データ型の種類。  
  * 数値データ型  
  * 文字データ型  
  * 日付データ型  
  * バイナリオブジェクトデータ型  
  * Null値  


<a name="practicalusesqlDBIcomparisonoperator"></a>
### 比較演算子
Whereで使われる演算子。  

比較演算子
|比較内容|演算子|補足|
|--------|----------|------------|----|
|等号|`=`|正確(厳格)に比較する。|
|不等|`<>`・`!=`・`^=`・`~=`など|等しくないことを比較する。|
|より大きい|`>`||
|より小さい|`<`||
|以上(等しいもしくは大きい)|`>=`||
|以下(等しいもしくは小さい)|`<=`||
|含み比較|`IN`|`ID IN (1, 2, 3)`などの括弧内に含まれる値があるかどうかを比較する。|
|検索比較|`LIKE`|`name LIKE '%hoge%'`などの文字列をワイルドカード込みで検索比較する(記法が複数あるため例示できない)。|


<a name="practicalusesqlDBIlogicaloperator"></a>
### 論理演算子
Whereで使われる演算子。  

以下の演算子を用いる。
|演算子|意味|備考|
|------|----|----|
|`AND`|論理積||
|`OR`|論理和||
|`NOT`|否定||


<a name="practicalusesqlDBImaindbiprogramming"></a>
### DBIプログラミング
前提：`use DBI;`  

* DBIアーキテクチャ  
  * DBIそのもの。  
  * データベース用のドライバ(通称、DBD・(Database Driver)と呼ぶ)。  
    例）**Oracleドライバ**・**mySQLドライバ**・**PostgreSQLドライバ**など。  
    DBD表現例）**[DBD::Oracle](http://perldoc.jp/docs/modules/DBD-Oracle-1.14/Oracle.pod)**・**[DBD::mysql](https://perldoc.jp/docs/modules/DBD-mysql-2.1026/DBD/mysql.pod)**・**[DBD::Pg](https://perldoc.jp/docs/modules/DBD-Pg-1.22/Pg.pod)**など。  

* ハンドルの種類  
  * [ドライバハンドル](#practicalusesqlDBImaindbiprogrammingdriverhandle)  
  * [DBIハンドル(データベースハンドル)](#practicalusesqlDBImaindbiprogrammingdbihandle)  
  * [ステートメントハンドル](#practicalusesqlDBImaindbiprogrammingstatementhandle)  


<a name="practicalusesqlDBImaindbiprogrammingdriverhandle"></a>
#### ドライバハンドル
ロードされたハンドルのこと(現時点では、どこのデータベースとも関わりが無い)。  

* 利用可能メソッド  
  * data\_sources  
    接続の列挙用メソッド。  
  * connect  
    データベースへの接点を作るメソッド。  

また、通常は、意識しないハンドルになる(connectメソッド実行時にすでに動いているため)。  

※全体的に説明が理解できない。  


<a name="practicalusesqlDBImaindbiprogrammingdbihandle"></a>
#### DBIハンドル(データベースハンドル)
DBIからインスタンス生成したオブジェクトのこと。  
特定のデータベースへの接続方法を持ち、それがカプセル化されている。  
様式：
`my $dbh = DBI->connect( $data_source, ・・・ );`  
※ドライバハンドルの子に相当する。  

※これも具体的な想像が出来ず、理解できない部分がある。  
複数のデータベースに、1つのオブジェクトから同時接続できる？  


<a name="practicalusesqlDBImaindbiprogrammingstatementhandle"></a>
#### ステートメントハンドル
データベースへのSQL操作を行うハンドル。  
※データベースハンドルの子に相当する。  


<a name="practicalusesqlDBIdatasource"></a>
### データソース名
**dbi::ドライバ名**にて、データベースに接続する。  
以下、端末で利用できるドライバ名の一覧取得。  
`DBI->available_drivers();`  

以下、利用例）
```perl
use v5.24;
use DBI;	←☆必須。

sub main() {
	my @drivers = DBI->available_drivers();
	say "@drivers";	# DBM ExampleP File Gofer Mem Proxy Sponge	←☆この情報だけでは何も分からない。
}
main();
```
とりあえず実行できた。  

<details><summary>DBIモジュールのインストール。</summary>

※~~私の環境では、DBIがインストールされておらず、呼び出せなかった。~~  
ようやく長い格闘の末、インストールできた。  

CPANに繋がらない。
```terminal
$ perldoc DBI
No documentation found for "DBI".
$ perl -MCPAN -e shell

cpan shell -- CPAN exploration and modules installation (v2.29)
Enter 'h' for help.

cpan[1]> install DBI
Reading '.cpan/Metadata'
  Database was generated on Sat, 15 Jan 2022 03:55:46 GMT
Fetching with HTTP::Tiny:
https://cpan.org/authors/01mailrc.txt.gz
HTTP::Tiny failed with an internal error: IO::Socket::SSL 1.42 must be installed for https support
Net::SSLeay 1.49 must be installed for https support
　　　・
　　　・
　　　・
Giving up on '.cpan/sources/authors/id/T/TI/TIMB/DBI-1.643.tar.gz'
Note: Current database in memory was generated on Sat, 15 Jan 2022 03:55:46 GMT

cpan[2]> quit
Lockfile removed.
$
```

以下、SSL関連と思い、インストール。
```terminal
$ brew install ssl*
Warning: You are using macOS 10.14.
We (and Apple) do not provide support for this old version.
You will encounter build failures with some formulae.
Please create pull requests instead of asking for help on Homebrew's GitHub,
Twitter or any other official channels. You are responsible for resolving
any issues you experience while you are running this
old version.

==> Downloading https://www.openssl.org/source/openssl-1.1.1m.tar.gz
Already downloaded: Library/Caches/Homebrew/downloads/1fe651091c8b3c36a2f89a1bc970c0d3167db729f9ad9d8bde7b149d5f343c41--openssl-1.1.1m.tar.gz
　　　・
　　　・
　　　・
Error: An exception occurred within a child process:
  NoMethodError: super: no superclass method `on_linux' for #<Formulary::FormulaNamespacea75a85ca396df0bd5be983e48a50d88d::OpensslAT11:0x00007fb89c2633b8>
$ echo $?
1
$
```
そもそもがSSL導入に失敗するのだが？  
ゆえに、以下の再挑戦も失敗する。
```terminal
$ perl -MCPAN -e shell

cpan shell -- CPAN exploration and modules installation (v2.29)
Enter 'h' for help.

cpan[1]> install DBI
Reading '.cpan/Metadata'
  Database was generated on Sat, 15 Jan 2022 03:55:46 GMT
Running install for module 'DBI'
Fetching with HTTP::Tiny:
https://cpan.org/authors/id/T/TI/TIMB/DBI-1.643.tar.gz
HTTP::Tiny failed with an internal error: IO::Socket::SSL 1.42 must be installed for https support
Net::SSLeay 1.49 must be installed for https support

Giving up on '.cpan/sources/authors/id/T/TI/TIMB/DBI-1.643.tar.gz'
Note: Current database in memory was generated on Sat, 15 Jan 2022 03:55:46 GMT

cpan[2]> q
Lockfile removed.
$
```

以下、成功。
```terminal
$ brew install cpanm
Warning: You are using macOS 10.14.
We (and Apple) do not provide support for this old version.
You will encounter build failures with some formulae.
Please create pull requests instead of asking for help on Homebrew's GitHub,
Twitter or any other official channels. You are responsible for resolving
any issues you experience while you are running this
old version.

==> Downloading https://ghcr.io/v2/homebrew/core/cpanminus/manifests/1.9019
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/cpanminus/blobs/sha256:6a9b5bde63d8c5860788c67470c9dffcfe12036d38e331ad4c5028455ad
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:6a9b5bde63d8c5860788c67470c9dffcfe12036d38e331
######################################################################## 100.0%
==> Pouring cpanminus--1.9019.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/cpanminus/1.9019: 4 files, 561.0KB
==> `brew cleanup` has not been run in the last 30 days, running now...
Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
Removing: Library/Caches/Homebrew/automake--1.16.5... (970.6KB)
　　　・
　　　・
　　　・
Removing: Library/Logs/Homebrew/openssl@3... (7 files, 7.2MB)
$ cpanm DBI
--> Working on DBI
Fetching http://www.cpan.org/authors/id/T/TI/TIMB/DBI-1.643.tar.gz ... OK
Configuring DBI-1.643 ... OK
Building and testing DBI-1.643 ... OK
Successfully installed DBI-1.643
1 distribution installed
$
```
まさか・・・こんなこととは・・・。  
[Perl/Tk](#practicaluseGUIPerlTk)でも[インストール](#practicaluseTkinstall)ができなかった。  
それは、CPANを使っていたからなのだろう。  

</details>

データソースとドライバが紐付けられているプログラム。
```perl
use v5.24;
use DBI;

sub main() {
	my @drivers = DBI->available_drivers();

	foreach my $value ( @drivers ) {
		say "$value";
		my @datasources = DBI->data_sources( $value );
		foreach my $source ( @datasources ) {
			say "\tデータソース：$source";
		}
	}
}
main();
```

以下、実行結果。
```terminal
DBM ExampleP File Gofer Mem Proxy SQLite Sponge mysqlPP
DBM
	データソース：DBI:DBM:f_dir=.
	データソース：DBI:DBM:f_dir=基礎知識用の勉強
	データソース：DBI:DBM:f_dir=応用知識用の勉強
	データソース：DBI:DBM:f_dir=Pythonで学ぶアルゴリズムの教科書 一生モノの知識と技術を身につける
ExampleP
	データソース：dbi:ExampleP:dir=.
File
	データソース：DBI:File:f_dir=.
	データソース：DBI:File:f_dir=基礎知識用の勉強
	データソース：DBI:File:f_dir=応用知識用の勉強
	データソース：DBI:File:f_dir=Pythonで学ぶアルゴリズムの教科書 一生モノの知識と技術を身につける
Gofer
Mem
Proxy	←☆なぜ項目がない？
SQLite	←☆なぜ項目がない？
Sponge
mysqlPP
	データソース：dbi:mysqlPP:
```
**ADO**・**CSV**・**XBase**などないのだが、どうなっている？  
**ODBC**があってほしかった。  

ゆくゆくは、ここにmySQLやPostgreSQLなどが表示されるようになるわけね。  
どうやって？  
いまだによく分かっていない。  
ドライバを別途インストール必須なのは分かったが、ドライバが何なのかが分からない。  

<details><summary>Proxyモジュールのインストール。</summary>

以下、上記プログラム実行結果。
```terminal
install_driver(Proxy) failed: Can't locate RPC/PlClient.pm in @INC (you may need to install the RPC::PlClient module) (@INC 〜) at perl5/perlbrew/perls/perl-5.34.0/lib/site_perl/5.34.0/darwin-2level/DBD/Proxy.pm line 29.
BEGIN failed--compilation aborted at perl5/perlbrew/perls/perl-5.34.0/lib/site_perl/5.34.0/darwin-2level/DBD/Proxy.pm line 29.
Compilation failed in require at (eval 29) line 3.
Perhaps a module that DBD::Proxy requires hasn't been fully installed
 at データソース名.pl line 13.
```
なぜか実行失敗。  
またか・・・。  

以下、導入作業。
```terminal
$ cpanm RPC::PlClient
--> Working on RPC::PlClient
Fetching http://www.cpan.org/authors/id/M/MN/MNOONING/PlRPC/PlRPC-0.2020.tar.gz ... OK
Configuring PlRPC-0.2018 ... OK
==> Found dependencies: Net::Daemon
--> Working on Net::Daemon
Fetching http://www.cpan.org/authors/id/T/TO/TODDR/Net-Daemon-0.49.tar.gz ... OK
Configuring Net-Daemon-0.49 ... OK
Building and testing Net-Daemon-0.49 ... OK
Successfully installed Net-Daemon-0.49
Building and testing PlRPC-0.2020 ... OK
Successfully installed PlRPC-0.2020
2 distributions installed
$
```
実行時に警告が出てきた。  
Perl実行でネットワーク接続を許可するか、みたいな・・・許可したが、よかったか？  

</details>


<a name="practicalusesqlDBIconnectanddisconnect"></a>
### 接続と切断
接続様式：
`$dbh = DBI->connect( データソース名, ユーザ名, パスワード, オプション, );`  
具体例）
`$dbh = DBI->connect( $data_source, $username, $password, \%attr );`  

切断様式：
`$rc = $dbh->disconnect();`  


* データベース利用時の必要情報。  
  * データソース名  
  * ユーザ名  
  * パスワード

* オプション  
  * DBIで自動エラー処理の提供。  


<a name="practicalusesqlDBIconnectanddisconnectpostgres"></a>
#### 利用するデータベースの構築。
[仮想環境](../仮想環境/README.md)の[Docker](../仮想環境/docker_作業メモなど何でも詰め込む.md)を利用する。  

<details><summary>DockerでのPostgreSQLサーバ起動作業。</summary>

以下、作業手順。
```terminal
$ docker ps --all
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
$ docker run -dit --name postgres20220225 -p 8080:80 -e POSTGRES_PASSWORD=1234 -v "$HOME/docker作成データ/":/var/lib/postgresql/data postgres	←☆ドッカーでのデータベース作成。
b3cf3c81b383bceeee7ff8a50469b07bd00fcd75f5c467a2d5c467ded6b90337
$ docker ps	←☆起動成功。
CONTAINER ID   IMAGE      COMMAND                  CREATED         STATUS         PORTS                            NAMES
b3cf3c81b383   postgres   "docker-entrypoint.s…"   9 seconds ago   Up 8 seconds   5432/tcp, 0.0.0.0:8080->80/tcp   postgres20220225
$
```
※パスワード設定は必須。  

以下、PostgreSQLの起動確認。
```terminal
$ docker exec -it postgres20220225 psql -U postgres
psql (14.0 (Debian 14.0-1.pgdg110+1))
Type "help" for help.

postgres=# \l	←☆バックスラッシュに小文字のL字。
                                 List of databases	←☆既存のデータベースが確認できる。
   Name    |  Owner   | Encoding |  Collate   |   Ctype    |   Access privileges
-----------+----------+----------+------------+------------+-----------------------
 postgres  | postgres | UTF8     | en_US.utf8 | en_US.utf8 | 
 template0 | postgres | UTF8     | en_US.utf8 | en_US.utf8 | =c/postgres          +
           |          |          |            |            | postgres=CTc/postgres
 template1 | postgres | UTF8     | en_US.utf8 | en_US.utf8 | =c/postgres          +
           |          |          |            |            | postgres=CTc/postgres
(3 rows)

postgres=#	←☆Ctrl+dで抜け出る。
\q
$
```
DBIドライバを確認するが、Perlからは認識できていなかった。  
データベースは手動で作成する？  
しかし、DBIドライバとは関係ないよね。  

</details>

<details><summary>DockerでのMySQLサーバ起動作業。</summary>

以下、作業手順。
```terminal
$ docker ps	←☆起動していない。
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
$ docker run --name mysql20220226 -p 8080:80 -e MYSQL_ROOT_PASSWORD=1234 -v "$HOME/docker作成データ/":/var/lib/postgresql/data -d mysql	←☆ドッカーでのデータベース作成。
508bf183b95781009985c522f26cd0243cb804e4e0a1bb1fe3af3750e06a207f
$ docker ps	←☆起動確認。
CONTAINER ID   IMAGE     COMMAND                  CREATED         STATUS         PORTS                                       NAMES
508bf183b957   mysql     "docker-entrypoint.s…"   7 seconds ago   Up 6 seconds   3306/tcp, 33060/tcp, 0.0.0.0:8080->80/tcp   mysql20220226
$
```

以下、MySQLの起動確認。
```terminal
$ docker exec -it mysql20220226 bash -p
root@d128841fe79c:/# mysql -u root -p -h 127.0.0.1	←☆このIPアドレスは何？
Enter password:	←☆1234
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 15
Server version: 8.0.26 MySQL Community Server - GPL

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> ^DBye	 ←☆ctrl+d
root@d128841fe79c:/# exit
$
```

以下、外部向けのIPアドレスが設定されていない。
```terminal
$ docker container inspect --format="{{.NetworkSettings.IPAddress}}" mysql20220226

$
```
なぜに何も出てこない？  

</details>


<a name="practicalusesqlDBIconnectanddisconnectsqliteconnect"></a>
#### SQLite接続テスト。
PerlからMySQLに接続する方法は2種類あるようだ。  

* DBIモジュールのためのデータベースドライバ
  * [PostgreSQL-Perlだけで構築されたDBIドライバ](https://perldoc.jp/docs/modules/DBD-PgPP-0.05/PgPP.pod)  
    **DBD::PgPP**
  * [PostgreSQL](https://perldoc.jp/docs/modules/DBD-Pg-1.22/Pg.pod)  
    **DBD::Pg**  
  * [SQLite-DBIドライバでの自己完結型(Self Contained)RDBMS](https://perldoc.jp/docs/modules/DBD-SQLite-0.19/SQLite.pod)  
    **DBD::SQLite**
  * [MySQL-Perlだけで構築されたDBIドライバ](https://perldoc.jp/docs/modules/DBD-mysqlPP-0.03/mysqlPP.pod)  
    **DBD::mysqlPP**
  * [MySQL](https://perldoc.jp/docs/modules/DBD-mysql-2.1026/DBD/mysql.pod)  
    **DBD::mysql**  
  * [Oracle](http://perldoc.jp/docs/modules/DBD-Oracle-1.14/Oracle.pod)  
    **DBD::Oracle**  
  * [DB2](https://perldoc.jp/docs/modules/DBD-DB2-0.76/DB2.pod)  
    **DBD::DB2**

DBIデータベースドライバ作成として、[DBI::DBD](https://perldoc.jp/docs/modules/DBI-1.612/DBI/DBD.pod)を使ったガイドも付いている。  
DBIのためのODBCドライバ用の[DBD::ODBC](https://perldoc.jp/docs/modules/DBD-ODBC-1.05/ODBC.pod)がある。  
これらは、何の話？  

<a name="practicalusesqlDBIconnectanddisconnectpostgresqlconnect"></a>
<details><summary>PostgreSQL導入失敗。</summary>

ここの項目ボツ。  

#### PostgreSQL接続テスト。
**DBI->connect**を使った接続が古く、将来は使えなくなるそうだ・・・どういうこと？  
現在は、非推奨の接続方法のようだ。  

PostgreSQL用のDBIドライバをどのように導入すればいい？
```terminal
$ cpanm DBD::Pg	←☆なぜ失敗する？
--> Working on DBD::Pg
Fetching http://www.cpan.org/authors/id/T/TU/TURNSTEP/DBD-Pg-3.15.1.tar.gz ... OK
Configuring DBD-Pg-3.15.1 ... N/A
! No MYMETA file is found after configure. Your toolchain is too old?
! Configure failed for DBD-Pg-3.15.1. See .cpanm/work/1645789457.89632/build.log for details.
$
$ cat .cpanm/work/1645789457.89632/build.log
cpanm (App::cpanminus) 1.9018 on perl 5.034000 built for darwin-2level
Work directory is .cpanm/work/1645789457.89632
You have make /usr/bin/make
You have /usr/bin/curl: curl 7.54.0 (x86_64-apple-darwin18.0) libcurl/7.54.0 LibreSSL/2.6.5 zlib/1.2.11 nghttp2/1.24.1
You have /usr/bin/tar: bsdtar 2.8.3 - libarchive 2.8.3
You have /usr/bin/unzip
Searching DBD::Pg () on cpanmetadb ...
--> Working on DBD::Pg
Fetching http://www.cpan.org/authors/id/T/TU/TURNSTEP/DBD-Pg-3.15.1.tar.gz
-> OK
Unpacking DBD-Pg-3.15.1.tar.gz
Entering DBD-Pg-3.15.1
Checking configure dependencies from META.yml
Checking if you have version 0 ... Yes (0.9928)
Checking if you have DBI 1.614 ... Yes (1.643)
Configuring DBD-Pg-3.15.1
Running Makefile.PL
Path to pg_config?
No POSTGRES_HOME defined, cannot find automatically
Configuring DBD::Pg 3.15.1
-> N/A
-> FAIL No MYMETA file is found after configure. Your toolchain is too old?	←☆古い？どうやって新しくする？
-> FAIL Configure failed for DBD-Pg-3.15.1. See .cpanm/work/1645789457.89632/build.log for details.
$
$ cpanm IO::Socket
--> Working on IO::Socket
Fetching http://www.cpan.org/authors/id/T/TO/TODDR/IO-1.48.tar.gz ... OK
Configuring IO-1.48 ... OK
Building and testing IO-1.48 ... OK
Successfully installed IO-1.48 (upgraded from 1.46)
1 distribution installed
$ perl -MDBI -e’print $DBI::VERSION’ ; echo
Unrecognized character \xE2; marked by <-- HERE after <-- HERE near column 1 at -e line 1.

$ perl -MDBD::Pg -e’print $DBD::Pg::VERSION’ ; echo
Can't locate DBD/Pg.pm in @INC (you may need to install the DBD::Pg module) (@INC contains: 〜).
BEGIN failed--compilation aborted.

$
```
解決方法が全く分からない。  

何をやっている？
```terminal
$ cpanm DBD::SQLite
--> Working on DBD::SQLite
Fetching http://www.cpan.org/authors/id/I/IS/ISHIGAKI/DBD-SQLite-1.70.tar.gz ... OK
Configuring DBD-SQLite-1.70 ... OK
Building and testing DBD-SQLite-1.70 ... OK
Successfully installed DBD-SQLite-1.70
1 distribution installed
$
```
欲しくないドライバがインストールできたぞ。  

解決法方法が全く分からない。  
しかたないため、Makefileからインストールをしようとしたが、ここでもこける。  
```terminal
$ perl Makefile.PL
Configuring DBD::Pg 3.15.1
Path to pg_config?
No POSTGRES_HOME defined, cannot find automatically
$ export POSTGRES_HOME=/usr/local/pgsql
$ export POSTGRES_DATA='$HOME/docker作成データ/'
$ export POSTGRES_INCLUDE=/usr/local/pgsql/include
$ export POSTGRES_LIB=/usr/local/pgsql/lib
$ perl Makefile.PL
Configuring DBD::Pg 3.15.1
Path to pg_config?
PostgreSQL version: 0 (default port: 0)
POSTGRES_HOME: /usr/local/pgsql
POSTGRES_INCLUDE: /usr/local/pgsql/include
POSTGRES_LIB: /usr/local/pgsql/lib
OS: darwin
Could not determine the PostgreSQL library version.
Please ensure that a valid path is given to the 'pg_config' command,
either manually or by setting the environment variables
POSTGRES_DATA, POSTGRES_INCLUDE, and POSTGRES_LIB
$ brew install pg_config
Running `brew update --preinstall`...
==> Auto-updated Homebrew!
Updated 1 tap (homebrew/core).
==> Updated Formulae
Updated 1 formula.

Warning: No available formula with the name "pg_config". Did you mean pkg-config?
==> Searching for similarly named formulae...
This similarly named formula was found:
pkg-config ✔
To install it, run:
  brew install pkg-config ✔
==> Searching for a previously deleted formula (in the last month)...
Error: No previously deleted formula found.
==> Searching taps on GitHub...
Error: No formulae found in taps.
$
```
前回と同じになった。  

ゆえに、本物をインストールした。
```terminal
$ brew install postgresql
Warning: You are using macOS 10.14.
We (and Apple) do not provide support for this old version.
You will encounter build failures with some formulae.
　　　・
　　　・
　　　・
To restart postgresql after an upgrade:
  brew services restart postgresql
Or, if you don't want/need a background service you can just run:
  /usr/local/opt/postgresql/bin/postgres -D /usr/local/var/postgres
$
```
あぁこれをしてしまっては、私の完全なる敗北だ。  

さらに敗北感を味わうのは、何の意味も成さなかったこと。
```terminal
$ cpanm DBD::Pg
--> Working on DBD::Pg
Fetching http://www.cpan.org/authors/id/T/TU/TURNSTEP/DBD-Pg-3.15.1.tar.gz ... OK
Configuring DBD-Pg-3.15.1 ... OK
Building and testing DBD-Pg-3.15.1 ... FAIL
! Installing DBD::Pg failed. See .cpanm/work/1645798310.2394/build.log for details. Retry with --force to force install it.
$ cat .cpanm/work/1645798310.2394/build.log
cpanm (App::cpanminus) 1.9018 on perl 5.034000 built for darwin-2level
Work directory is .cpanm/work/1645798310.2394
You have make /usr/bin/make
You have /usr/bin/curl: curl 7.54.0 (x86_64-apple-darwin18.0) libcurl/7.54.0 LibreSSL/2.6.5 zlib/1.2.11 nghttp2/1.24.1
You have /usr/bin/tar: bsdtar 2.8.3 - libarchive 2.8.3
You have /usr/bin/unzip
Searching DBD::Pg () on cpanmetadb ...
--> Working on DBD::Pg
Fetching http://www.cpan.org/authors/id/T/TU/TURNSTEP/DBD-Pg-3.15.1.tar.gz
-> OK
Unpacking DBD-Pg-3.15.1.tar.gz
　　　・
　　　・
　　　・
Writing Makefile for DBD::Pg
Writing MYMETA.yml and MYMETA.json
-> OK
Checking dependencies from MYMETA.json ...
Checking if you have DBI 1.614 ... Yes (1.643)
Checking if you have version 0 ... Yes (0.9928)
　　　・
　　　・
　　　・
t/00basic.t ............ ok
Please wait, creating new database (version 14.2) for testing
pg_ctl: could not start server
Examine the log output.
# 
# DBI                         Version 1.643
# DBD::Pg                     Version 3.15.1
# Perl                        Version 5.34.0
# OS                          darwin
# PostgreSQL (compiled)       ?
# PostgreSQL (target)         ?
# PostgreSQL (reported)       ?
# Default port                ?
# DBI_DSN                     ?
# DBI_USER                    <not set>
# Test schema                 dbd_pg_testschema
# LANG                        C
# Adjusted:                   initdb
# Error was: Unix-domain socket path ".cpanm/work/1645798310.2394/DBD-Pg-3.15.1/dbdpg_test_database/data/socket/.s.PGSQL.5440" is too long (maximum 103 bytes) at t/dbdpg_test_setup.pl line 608.
Bailout called.  Further testing stopped:  Cannot continue: connection failed
FAILED--Further testing stopped: Cannot continue: connection failed
make: *** [test_dynamic] Error 255
-> FAIL Installing DBD::Pg failed. See .cpanm/work/1645798310.2394/build.log for details. Retry with --force to force install it.
$
```
まだやることあるのか・・・辛い。  

</details>

<a name="practicalusesqlDBIconnectanddisconnectmysqlconnect"></a>
<details><summary>MySQL導入失敗。</summary>

ここの項目ボツ。  

#### MySQL接続テスト。
MySQL用のDBDをインストールしていない場合、接続に失敗する(当たり前)。  
そのため、以下、導入。
```terminal
$ cpanm DBD::mysql
--> Working on DBD::mysql
Fetching http://www.cpan.org/authors/id/D/DV/DVEEDEN/DBD-mysql-4.050.tar.gz ... OK
==> Found dependencies: Devel::CheckLib
--> Working on Devel::CheckLib
Fetching http://www.cpan.org/authors/id/M/MA/MATTN/Devel-CheckLib-1.14.tar.gz ... OK
Configuring Devel-CheckLib-1.14 ... OK
==> Found dependencies: Mock::Config, Capture::Tiny
--> Working on Mock::Config
Fetching http://www.cpan.org/authors/id/R/RU/RURBAN/Mock-Config-0.03.tar.gz ... OK
Configuring Mock-Config-0.03 ... OK
Building and testing Mock-Config-0.03 ... OK
Successfully installed Mock-Config-0.03
--> Working on Capture::Tiny
Fetching http://www.cpan.org/authors/id/D/DA/DAGOLDEN/Capture-Tiny-0.48.tar.gz ... OK
Configuring Capture-Tiny-0.48 ... OK
Building and testing Capture-Tiny-0.48 ... OK
Successfully installed Capture-Tiny-0.48
Building and testing Devel-CheckLib-1.14 ... OK
Successfully installed Devel-CheckLib-1.14
Configuring DBD-mysql-4.050 ... N/A
! Configure failed for DBD-mysql-4.050. See /Users/asakunotomohiro/.cpanm/work/1645802437.3658/build.log for details.
3 distributions installed
$
```
こちらは[PostgreSQL](#practicalusesqlDBIconnectanddisconnectpostgresqlconnect)と比べてすんなり完了および成功した。  
よかった。  
しかし、接続できない状況は変わらず・・・困った。  
通常であれば、**@INC**に入っているはずなのだが、インストール成功しているのに入っていないと言うこと？  
Path通しが出来ていない？  

よく分からず、Perlのみで構成されたドライバをインストールした。
```terminal
$ cpanm DBD::mysqlPP
--> Working on DBD::mysqlPP
Fetching http://www.cpan.org/authors/id/T/TS/TSUCCHI/DBD-mysqlPP-0.07.tar.gz ... OK
Configuring DBD-mysqlPP-0.07 ... OK
==> Found dependencies: Net::MySQL
--> Working on Net::MySQL
Fetching http://www.cpan.org/authors/id/T/TS/TSUCCHI/Net-MySQL-0.11.tar.gz ... OK
Configuring Net-MySQL-0.11 ... OK
==> Found dependencies: Digest::SHA1
--> Working on Digest::SHA1
Fetching http://www.cpan.org/authors/id/G/GA/GAAS/Digest-SHA1-2.13.tar.gz ... OK
Configuring Digest-SHA1-2.13 ... OK
Building and testing Digest-SHA1-2.13 ... OK
Successfully installed Digest-SHA1-2.13
Building and testing Net-MySQL-0.11 ... OK
Successfully installed Net-MySQL-0.11
Building and testing DBD-mysqlPP-0.07 ... OK
Successfully installed DBD-mysqlPP-0.07
3 distributions installed
$
```
これを導入後、`DBI->data_sources("mysqlPP");`を実行してもエラーが発生しなかった。  
導入前に試していないのでなんとも言えないが、**mysql**ではだめだった。  
PostgreSQL用の**Pg**・**PgPP**も駄目だった(ドライバインストールが出来ないのだから当たり前だが)。  

以下、プログラム実行例。
```perl
use v5.24;
use DBI;

sub main() {
	my @databases = DBI->data_sources("mysqlPP");
	foreach my $source ( @databases ) {
		say "$source";	# dbi:mysqlPP:
	}
}
main();
```
これは、上記の[データソース名](#practicalusesqlDBIdatasource)での実行を個別指定したプログラムになる。  
</details>

**DBD::SQLite**は全てのものをディストリビューションに含んでいると言うことは、これ以外で用意するものがないと言うことか。  
素晴らしいな。  

以下、データベースと言う名のファイルへの接続。
```perl
use v5.24;
use DBI;

sub main() {
	my $databasefilename = '../../Perl-sqlDBI作成データ/sqlite.db';
	my $dbh = DBI->connect(
			"dbi:SQLite:database=$databasefilename",
			"",	# ユーザ名。
			"",	# パスワード。
			{'RaiseError' => 1},
		) or die "接続失敗。";
}
main();
```
これだけで、指定場所に**sqlite.db**ファイルが作られた。  
で、ユーザ名やパスワード欄が空なまま作られたのだが、これでいいのか？  

以下、上記で接続したデータベースを切断する。
```perl
my $rc = $dbh->disconnect() or warn "$dbhからの切断失敗\n";
```
SQLiteなので、本当に切断できるのか不安だ。  
しかし、本来プログラムが終了する直前まで接続するのがCPUを無駄遣いしなくて済むらしいから気にする必要は無いのかもね。

</details>

<a name="practicaluseGUIPerlTk"></a>
<details><summary>応用知識-Perl/Tk(GUI)</summary>

唐突に何の脈略もなく、本当に突然GUI開発がしたくなったため、手に取った。  
CPANでの[Perl/Qt](https://metacpan.org/release/AWIN/PerlQt-1.05)と言うのも存在する(Tkより新しい)。  

当たり前だが、GUI開発はちょっとした衝動に駆られただけなので、上っ面のみ調べる。  
深掘りすることはない。  

* 目次  
  * [Perl/Tkの概要](#practicaluseTksummary)  
  * [HelloWorld](#practicaluseTkHelloWorld)  
  * [ジオメトリ管理](#practicaluseTkgeometrymanagement)  
    かなり重要な存在。  
    現在packのみ調べた。  
    ゆくゆくは、gridとplaceも調べる。  
  * 基本的なボタン  
  * チェックボタン  
  * ラジオボタン  
  * ラベル  
  * エントリ  
  * スクロールバー  
  * リストボックスウィジェット  
  * テキストウィジェット  
  * キャンバスウィジェット  
  * スケールウィジェット  
  * メニュー  
  * フレームウィジェット  
    目に見えないが、多数のウィジェットを区切るために用いる(配置に使う)。  
  * 特別なウィジェット  
    以下2種類は、他のウィジェットを内包する。  
    * メインウィンドウウィジェット  
      他のどのウィジェットよりも先に作られる。  
    * トップレベルウィジェット  
  * イベントのバインディング  
  * 複合ウィジェット  
  * 全てのウィジェットに共通するメソッド  


<a name="practicalTkuseprestageinstall"></a>
### Perl/TkによるGUI開発するための前段階。
Perlを用いたTk開発のために、Tkをインストールするのは当然だが、それ以前にXサーバとやらを導入済みであることが大前提になる。  
もし、Xサーバを起動せずにTkプログラムを動かす場合、失敗する。  
以下、エラーメッセージ。
```terminal
couldn't connect to display ":0" at MainWindow.pm line 53.
MainWindow->new() at xxxx.pl line 12.
```
そのため、まず初めに、Xサーバの準備をする。  

一昔前は、[Macにも導入済み](https://support.apple.com/ja-jp/HT201341)だったようだが、今は個別に入れる必要がある。  
そのため、MacのXサーバ(X11？)である[XQuartz](https://www.xquartz.org)を入手し、インストールする。  
また、インストール後は、端末のログアウトが必要になるため、事前にありとあらゆるソフトウェアでの編集作業を保存しておいた方が良い。  
現時点のバージョンは**2.8.1**のリリース日**2021-04-25**になっている。  


<a name="practicaluseTkinstall"></a>
### Perl/TkによるGUI開発。
当たり前だが、Perlには、GUI開発するための道具がない。  
そのため、外部から入手する必要がある。  
そして、[Tcl/Tk](https://www.tcl.tk)から派生した[Perl/Tk](https://metacpan.org/dist/Tk/view/Tk.pod)を使うことにする。  
※Tkのリンク先が合っているのか不明(数が多いが、とりあえず1つ選んだ)。  

以下、Tkモジュール導入済みか確認する。
```terminal
$ perl -e 'use Tk'
Can't locate Tk.pm in @INC (you may need to install the Tk module) (@INC contains: darwin-2level 5.34.0 ) at -e line 1.
BEGIN failed--compilation aborted at -e line 1.
$
```
エラーが発生したため、インストールされていないと言うこと・・・。  
数年前に、試しに入れたはずなのだが・・・他の端末だったかもな。  
インストールされていない状況が記録に残せるので由としよう。  

<details><summary>CPAN経由のインストール。</summary>

せっかくcpanに入れるのに、なぜかインストールが行われない。  

インストール方法はいくつかあるようだが、せっかくなので[CPAN](#practicalusecpan)を利用したい。  
以下、簡易[インストール記録](./環境構築(インストール).md)。
```terminal
$ sudo perl -MCPAN -e shell	←☆sudo権限が必要なのか不明。
cpan[1]> install Tk
Appending installation info to darwin-2level/perllocal.pod
  SREZIC/Tk-804.036.tar.gz
  /usr/bin/make install  -- OK
cpan[2]> q
$
```
指定した**Tk**は間違えた？  
大量にインストールされてしまった。  
関係ないのまで入ってしまったのだろうか？  

以下、別のインストール方法。
```terminal
$ cpan	←☆このログイン方法が異なるだけで、あとは同じ。
Loading internal logger. Log::Log4perl recommended for better logging
Terminal does not support AddHistory.

To fix that, maybe try>  install Term::ReadLine::Perl


cpan shell -- CPAN exploration and modules installation (v2.28)
Enter 'h' for help.

cpan[1]> install Tk	←☆Tkのインストール。
Reading '/Users/asakunotomohiro/.cpan/Metadata'
  Database was generated on Sat, 15 Jan 2022 03:55:46 GMT
Tk is up to date (804.036).

cpan[2]> q
Terminal does not support GetHistory.
Lockfile removed.
$
```

</details>

<details><summary>手動のインストール。</summary>

以下、手動インストール。
```terminal
$ perl Makefile.PL	←☆Makefileの作成。
perlbrew/perls/perl-5.34.0/bin/perl is installed in perlbrew/perls/perl-5.34.0/lib/5.34.0/darwin-2level okay
PPM for perl5.034000
Test Compiling config/perlrx.c
　　　・
　　　・
　　　・
$ make	←☆コンパイル。
cp Tk/Bitmap.pm blib/lib/Tk/Bitmap.pm
cp Tk/MakeDepend.pm blib/lib/Tk/MakeDepend.pm
cp Tk/Panedwindow.pm blib/lib/Tk/Panedwindow.pm
cp Tk/ColorEditor.pm blib/lib/Tk/ColorEditor.pm
cp Tk/ColorDialog.pm blib/lib/Tk/ColorDialog.pm
cp ppport.h blib/arch/Tk/ppport.h
　　　・
　　　・
　　　・
$ make test	←☆テスト実行。
"perlbrew/perls/perl-5.34.0/bin/perl" -MExtUtils::Command::MM -e 'cp_nonempty' -- Tk.bs blib/arch/auto/Tk/Tk.bs 644
cd pTk && make DEFINE="" LIBPERL_A="libperl.a" LINKTYPE="dynamic" OPTIMIZE="-O3" PREFIX="perlbrew/perls/perl-5.34.0" PASTHRU_DEFINE=' ' PASTHRU_INC='-I/usr/X11R6/include -I/usr/local/include/freetype2 '
Manifying 103 pod documents
Manifying 1 pod document
　　　・
　　　・
　　　・
$ make install	←☆インストール実施。
cd pTk && make DEFINE="" LIBPERL_A="libperl.a" LINKTYPE="dynamic" OPTIMIZE="-O3" PREFIX="perlbrew/perls/perl-5.34.0" PASTHRU_DEFINE=' ' PASTHRU_INC='-I/usr/X11R6/include -I/usr/local/include/freetype2 '
Manifying 103 pod documents
Manifying 1 pod document
Manifying 2 pod documents
"perlbrew/perls/perl-5.34.0/bin/perl" -MExtUtils::Command::MM -e 'cp_nonempty' -- X.bs ../../blib/arch/auto/Tk/X/X.bs 644
　　　・
　　　・
　　　・
$
```

</details>

以下、Tkモジュール導入済みか確認する。
```terminal
$ perl -e 'use Tk'
$ echo $?
0
$
```
エラーは発生せず(インストールされており、Pathも通っていると言うことだろう)。  


<a name="practicaluseTksummary"></a>
### Perl/Tkの概要

<a name="practicaluseTksummaryWidgetgeneration"></a>
* ウィジェット生成  
  親子関係として、1つの親に複数の子ウィジェットが付く。  
  しかし、複数の親に1つの子ウィジェットは付かない。  
  * オプション  
    オプションはハイフン記号から始まり、その次から文字列が続く。  
    文字列はただの文字列であり、特別な意味は持たない。  
    そして、オプション文字列であることが判明しているため、ダブルクォーテーションで括る必要も無い(例外あり)。  
    `$mw->Button( -text => "Done", -command => sub { exit })->pack;`  
    **-** がオプション開始の合図であり、その次の**text**がオプションそのものになる。  

<a name="practicaluseTksummaryWidgetdisplay"></a>
* ウィジェット表示  
  2つの手順が必要。  
  1. ウィジェット生成。  
     例）`my $button = $mw->Button();`  
  1. ウィジェット表示。  
     例）`$button->pack;`  
     ※**pack**は、ジオメトリマネージャのひとつであり、他にもある。  

  上記をひとつにまとめるのが一般的。  
  例）`$mw->Button()->pack;`  

<a name="practicaluseTksummaryInfiniteeventexecution"></a>
* イベントループ`MainLoop;`  
  キーボードだけでなく、マウス操作も検知する。  
  そのため、ユーザがウィンドウを終了させない限り、起動していることになる。  
  また、この記述以前の処理は、ユーザインタフェイス(UI)の初期化処理である。  
  そして、この記述以降の処理は、[`$mw->destroy`](#practicaluseTksummaryWidgetexitdestroy)により、GUIが閉じられた後に実行される。  
  当然、この**MainLoop**を付け忘れた場合は、GUI画面が表示されずにプログラムが終了する(素通りする)。  

<a name="practicaluseTksummaryWidgetexit"></a>
* ウィジェット終了。  
  2種類の終了方法がある。  
  <a name="practicaluseTksummaryWidgetexitexit"></a>
  * `sub { exit }`  
    Tk終了に必要な処理が走り、終了する。  
    ユーザ(開発者)はどうすることも出来ない。  
    ※`use Tk;`宣言が必須。  
  <a name="practicaluseTksummaryWidgetexitdestroy"></a>
  * `$mw->destroy`  
    上記**MainLoop**以降の終了説明通り、GUI終了後の処理をユーザが定義する。  
    ユーザ側で制御可能ということ。  

<a name="practicaluseTksummaryNamingconvention"></a>
* 命名規則  
  各個人が事前に決めること(プログラム開発前に)。  
  そして、一度決めた場合、覆さない方が良い。  
  例）`my $mw = MainWindow->new;`  
  のように、**$mw**は、メインウィンドウを表す。  
  違うプログラムを作るにしても、開発者側で一貫した方が良い。  
  検索のしやすさなどを考えれば分かることだろう。  

<a name="practicaluseTksummary"></a>
* デバッグ  
  GUIによる実行時に**print**などによる出力をする場合、ターミナル側に出力される。  
  しかし、改行を含めない場合の出力は、GUI画面を終了するまでバッファにためられる。  
  そのため、実行都度出したい場合は、`\n`を**print**末尾に付けておくこと。  
  ※個人的に、どこの話をしているのか分からないが・・・。  


<a name="practicaluseTkgeometrymanagement"></a>
### ジオメトリ管理
画面にウィジェットを表示する場合、そのウィジェットをジオメトリマネージャに渡す必要がある。  
そのジオメトリマネージャがウィンドウ上でのウィジェットの位置・大きさ・を制御する。  

* ジオメトリマネージャ  
  * [`Tk::pack`](#practicaluseTkgeometrymanagementpack)  
    一般用途に使うのに向いている。  
  * [`Tk::grid`](#practicaluseTkgeometrymanagementgrid)  
    表形式の配置が必要な場合に向いている。  
  * [`Tk::place`](#practicaluseTkgeometrymanagementplace)  
    親ウィジェットから相対位置及び大きさを決める場合に向いている。  
  * `Tk::Adjuster`  
  * `Tk::form`  
  * `Tk::Table`  
  * `Tk::Tiler`  
  * `Tk::Wm`  

先頭3種類は、ウィジェットに対するメソッドとして呼び出される(他のジオメトリマネージャは全く分からない)。  
そして、1ウィンドウに1ジオメトリマネージャとしてウィンドウを構築するのが望ましい。  
しかし、入れ子にすることは問題ないようだ。  
例えば、packで構築したウィジェットにフレームを配置し、そのフレーム内にplaceを使うなど。  

ジオメトリマネージャのオプション名とウィジェットのオプション名が同じ場合がある。  
機能も似ているのだが、全く同じではなく、微妙に違う部分があるため、気をつけること。  


<a name="practicaluseTkgeometrymanagementpack"></a>
#### ジオメトリ管理-pack
ジグソーパズルのように、決められた枠に決められた構成部品を当てはめていく。  
このように、きれいに納める必要があるのがpackジオメトリマネージャである。  

* [packオプション](#practicaluseTkgeometrymanagementpackoption)  
  * [ウィジェットの位置決め。](#practicaluseTkgeometrymanagementpackoptionside)  
    ウィンドウまたはフレーム枠からの相対指定が可能になる。  
  * [ウィジェットの大きさ決め。](#practicaluseTkgeometrymanagementpackoptionfill)  
    他ウィジェットとの相対指定や絶対指定が可能になる。  
  * [ウィジェット間の余白決め。](#practicaluseTkgeometrymanagementpackoptionexpand)  
  * ウィンドウまたはフレームの持つウィジェットリストにおける位置決め。  

* 注意事項  
  * ウィジェットの重ね置きはできない。  
  * ウィジェットのパック順は意味がある。  
    フレームウィジェットやトップレベルウィジェットは、各々のウィジェット一覧を保持しており、優先順位を付けている(それがパック順である)。  
    配置を気にしない場合は、引数なしの`pack()`を使う。  
    配置を変更する場合は、オプションを用いて任意の場所に配置すること。  

以下、サンプルプログラム。
```perl
use v5.24;
use Tk;

sub gui() {
	my $mw = MainWindow->new;
	$mw->title("pack Geometry Manager");

	$mw->Label(
				-text => "Label",
			)->pack;	←☆ラベル。
	$mw->Checkbutton(
				-text => "check1",
			)->pack;	←☆チェックボタン1つ目。
	$mw->Checkbutton(
				-text => "check2",
			)->pack;	←☆チェックボタン2つ目。
	$mw->Button(
				-text => "exit",
				-command => sub { exit },
			)->pack;	←☆ボタン。
	MainLoop;
}
&gui();
```
表示結果はGUIなので、貼り付けることが出来ない。  

そのため、以下、目視した姿を書き写す。
```text
Label	←☆ラベル。
check1	←☆チェックボタン1つ目。
check2	←☆チェックボタン2つ目。
exit	←☆ボタン。
```
packの引数に何も指定せずに動かした結果。  

以下、packの引数に配置場所を指定したプログラム。
```perl
use v5.24;
use Tk;

sub guipack() {
	my $mw = MainWindow->new;
	$mw->title("pack Geometry Manager");

	# 以下、ウィジェット生成。
	$mw->Label(
				-text => "Label"
			)->pack(
					-side => 'bottom',
					-expand => 1,
					-fill => 'x'
				);		# ラベル。
	$mw->Checkbutton(
				-text => "check 1",
			)->pack(
					-side => 'left',
					-expand => 1,
				);		# チェックボタン1つ目。
	$mw->Checkbutton(
				-text => "check 2",
			)->pack(
					-side => 'left',
					-expand => 1,
				);		# チェックボタン2つ目。
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack(
					-side => 'top',
					-expand => 1,
					-fill => 'x'
				);
	MainLoop;
}
&guipack();
```

以下、その表示姿
```text
check1 check2 exit
     Label
```
意図していない結果になった。  
exitボタンが一番上に来ると思ったのに・・・そもそも引数への値の意味を理解していないのが原因だが・・・。  


<a name="practicaluseTkgeometrymanagementpackoption"></a>
##### ジオメトリマネージャPackのオプション

* オプションの種類。  
  * [`-side`](#practicaluseTkgeometrymanagementpackoptionside)  
    ウィジェットの位置決め。  
  * [`-fill`](#practicaluseTkgeometrymanagementpackoptionfill)  
    指定方向にウィジェットを広げる。  
  * [`-expand`](#practicaluseTkgeometrymanagementpackoptionexpand)  
    ウィンドウ内の余白を埋める(ウィジェットを広げる)。  
  * [`-anchor`](#practicaluseTkgeometrymanagementpackoptionanchor)  
    ウィジェットのアンカー位置決め。  
  * [`-after`](#practicaluseTkgeometrymanagementpackoptionafter)  
    ウィジェット生成時の順序に割り込む(指定ウィジェットの後ろに配置)。  
  * [`-before`](#practicaluseTkgeometrymanagementpackoptionbefore)  
    ウィジェット生成時の順序に割り込む(指定ウィジェットの前に配置)。  
  * [`-ipadx`・`-ipady`](#practicaluseTkgeometrymanagementpackoptionin)  
    ウィジェットの大きさを変更する(ウィジェット自体)。  
  * [`-padx`・`-pady`](#practicaluseTkgeometrymanagementpackoptionin)  
    ウィジェットの大きさを変更する(ウィジェットの周り)。  
  * [`-in`](#practicaluseTkgeometrymanagementpackprint)  
    指定ウィジェットに乗せることができる。  
  * [packジオメトリマネージャのメソッド](#practicaluseTkgeometrymanagementpackmethod)  
    ウィンドウからウィジェットを非表示にする。  


<a name="practicaluseTkgeometrymanagementpackoptionside"></a>
###### Packオプション-ウィジェットの位置決め。
ウィンドウまたはフレーム指定した辺に向かってウィジェットを配置する。  
```perl
-side =>
        'left'|
        'right'|
        'top'|	←☆デフォルト値。
        'bottom'
```
各ウィンドウには、上下左右の4つの辺があり、この辺に対してウィジェットが配置される。  
指定しない場合は、デフォルト値に従い、上辺に向かって突き上げていく。  

以下、'top'を指定したプログラム。
```perl
use v5.24;
use Tk;

sub guipackSide() {
	my $mw = MainWindow->new;
	$mw->title("pack Geometry Manager");

	# 以下、ウィジェット生成。
	$mw->Label(
				-text => "Label"
			)->pack(
					-side => 'top',
					-expand => 1,
					-fill => 'x'
				);		# ラベル。
	$mw->Checkbutton(
				-text => "check1",
			)->pack(
					-side => 'top',
					-expand => 1,
				);		# チェックボタン1つ目。
	$mw->Checkbutton(
				-text => "check2",
			)->pack(
					-side => 'top',
					-expand => 1,
				);		# チェックボタン2つ目。
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack(
					-side => 'top',
					-expand => 1,
					-fill => 'x'
				);
	MainLoop;
}
&guipackSide();
```

以下、その表示姿。
```text
Label
check1
check2
exit
```
パック順に、上に突き上げていく。  
風船を順番に飛ばしていく姿を想像して欲しい(最初の風船が天井に当たり、2番目がその下につき、3番目が2番目の下につき・・・)。  

今後、プログラムを省略するが、'left'を指定する。  
以下、その表示姿。
```text
Label check1 check2 exit
```

以下、sideオプションに'right'を指定した表示姿。
```text
exit check2 check z Label
```

以下、sideオプションに'bottom'を指定した表示姿。
```text
exit
check2
check1
Label
```

以下、sideオプションを指定しない(デフォルト値)表示姿。
```text
Label
check1
check2
exit
```


<a name="practicaluseTkgeometrymanagementpackoptionfill"></a>
###### Packオプション-ウィジェットの大きさ決め。
割り当て領域内の指定した方向に向かってウィジェットを広げる(大きさを決める)。  
```perl
-fill =>
        'none'|	←☆デフォルト値。
        'x'|	←☆x方向に広げる。
        'y'|	←☆y方向に広げる。
        'both'	←☆x方向とy方向に広げる。
```
通常のウィジェットは、デフォルトの大きさが割り当てられる。  
また、デフォルトの大きさは、割り当て領域よりも小さいことが多い。  
今回のオプション利用により、辺に沿わせることができる(要は、広げること)。  
※実際に画面見栄を確認しなければ、どのような状態か判断できないだろう。  
また、ちょっとした小さいプログラムでの確認でも判断できないと思う。  

以下、fillオプションを指定したプログラム。
```perl
use v5.24;
use Tk;

sub guipackFillnone() {
	my $mw = MainWindow->new;
	$mw->title("pack Geometry Manager");

	# 以下、ウィジェット生成。
	$mw->Button(
				-text => "first",
			)->pack(
					-side => 'bottom',
					-fill => 'none',
				);		# ラベル。
	$mw->Button(
				-text => "second",
			)->pack(
					-side => 'left',
					-fill => 'none',
				);		# チェックボタン1つ目。
	$mw->Button(
				-text => "third",
			)->pack(
					-side => 'top',
					-fill => 'none',
				);		# チェックボタン2つ目。
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack(
					-side => 'right',
					-fill => 'none',
				);
	MainLoop;
}
&guipackFillnone();
```
基本的に、これらの実行結果は、実際に目で見た方が良い。  
テキストで表現できない。  

以下、その表示姿。
```text
        third
second   exit
     first
```

以下、fillオプションに'x'を指定した表示姿。
```text
        third
second   exit
     first
```
none値と変わらないように見える。  

以下、fillオプションに'y'を指定した表示姿。
```text
        third
second   exit
     first
```
xと異なる表示になる。  
実際に確かめた方が良い。  

以下、fillオプションに'both'を指定した表示姿。
```text
        third
second   exit
     first
```
xと異なる表示になる。  
実際に確かめた方が良い。  
しかし、y値と変わりないように思う。  

基本的に、fillオプションを用いる場所は、スクロールバーを付けるときに用いるようだ。  


<a name="practicaluseTkgeometrymanagementpackoptionexpand"></a>
###### Packオプション-ウィジェット間の余白決め。
ウィンドウまたはフレームの空き領域に対して割り当て領域を広げる(要は、余白埋め作業)。  
```perl
-expand =>
        1|	←☆ウィジェット広げる。
        0	←☆デフォルト値(広げない)。
```
左右のどちらかに押しつける指示([`fill-x`](#practicaluseTkgeometrymanagementpackoptionfill)？)がある場合、水平方向に広がる(余白が許す限り)。  
上下のどちらかに押しつける指示([`fill-y`](#practicaluseTkgeometrymanagementpackoptionfill)？)がある場合、垂直方向に広がる(余白が許す限り)。  

<details><summary>指定無意味</summary>

以下、0指定は、最小の大きさのウィジェットが配置されるだけ。
```perl
use v5.24;
use Tk;

sub expandzero() {
	my $mw = MainWindow->new;

	# 以下、ウィジェット生成。
	$mw->Button(
				-text => "none",
				-command => sub { exit }
			)->pack(
					-fill => 'none',
					-expand => 0,	←☆0指定あり。
				);
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack(
					-fill => 'y',
					-expand => 0,	←☆0指定あり。
				);
	MainLoop;
}
&expandzero();
```
恩恵が全くない。  

以下、expandオプションに'0'を指定した表示姿(fillオプションも併用)。
```text
none
exit
```


以下、オプション値に1を指定したプログラム。
```perl
use v5.24;
use Tk;

sub expandone() {
	my $mw = MainWindow->new;

	# 以下、ウィジェット生成。
	$mw->Button(
				-text => "none",
				-command => sub { exit }
			)->pack(
					-fill => 'none',
					-expand => 1,	←☆1指定あり。
				);
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack(
					-fill => 'y',
					-expand => 1,	←☆1指定あり。
				);
	MainLoop;
}
&expandone();
```
0との違いは、ウィジェットの配置場所が変わったぐらいしか違いが分からない。  
ウィジェットが広がっているから中心に来るのだろうが、ウィジェットそのものの広がりはない。  

以下、expandオプションに'1'を指定した表示姿(fillオプションも併用)。
```text
none
exit	←☆0と比べれば上下に広がった。
```
noneの場合は、何も変化がない(1を指定しているのに、、、)。  

</details>

以下、オプション値に1を指定したプログラム(かつ、fillに**both**を指定)。
```perl
use v5.24;
use Tk;

sub expandone() {
	my $mw = MainWindow->new;

	# 以下、ウィジェット生成。
	$mw->Button(
				-text => "none",
				-command => sub { exit }
			)->pack(
					-fill => 'none',	←☆none指定あり。
					-expand => 1,	←☆1指定あり。
				);
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack(
					-fill => 'both',	←☆both指定あり。
					-expand => 1,	←☆1指定あり(広がる条件が揃った)。
				);
	MainLoop;
}
&expandone();
```

以下、expandオプションに'1'を指定した表示姿(fillオプション**both**)。
```text
none
exit	←☆上下左右に広がった。
```
この変化は目で見た方が良い。  
むしろ、見なくても想像できるほどギチギチに広がる。  
ただし、noneボタンは、一切変化がない(上部の中央に位置する)。  

なぜ、**1**指定するだけで、ウィジェットが中央に来るのか。  
その答えは、他のオプションに[**anchor**](#practicaluseTkgeometrymanagementpackoptionanchor)と言うのがあり、そのデフォルト値が中央配置になっているためである。  

[sideオプション](#practicaluseTkgeometrymanagementpackoptionside)は、指定に関係なく、ウィジェットの変化なし。  

結局のところ、求めるUIを先に考え、資料作成後、その資料を見ながらプログラミングをしなければ、想像力が追いつかずに挫折することだろう。  


<a name="practicaluseTkgeometrymanagementpackoptionanchor"></a>
###### Packオプション-ウィンドウまたはフレームの持つウィジェットリストにおける位置決め。
割り当て領域内でのウィジェットのアンカー位置を決める。  
要は、碇(or錨)をどの辺に降ろすかを決める作業。  
```perl
-anchor =>
        'n'|
        's'|
        'w'|
        'e'|
        'center'|	←☆デフォルト値。
        'nw'|
        'ne'|
        'sw'|
        'se'|
```

以下、辺の大まかな位置。
```text
nw      n       ne

w     center    e

sw      s       se
```
※錨を下ろすだけでは不十分ではある(このオプションだけでは意味が無い)。  

<details><summary>最小限オプション設定の動作確認。</summary>

以下、他オプションをデフォルトで動かす。
```perl
use v5.24;
use Tk;

sub guipackAnchor() {
	my $mw = MainWindow->new;
	$mw->title("pack Geometry Manager");

	# 以下、ウィジェット生成。
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack(
					-anchor => 'e',
				);
	MainLoop;
}
&guipackAnchor();
```

本来**e**を指定しているため、右真ん中に位置するはずだが、実際は**ne**に固定されて表示された。
```text
--    --    ne	←☆ここに表示される。

--    --    e	←☆ここを指定。

--    --    --
```
ウィンドウを広げた場合も関係なく、**ne**に固定されてしまう。  
Tkが流行らないのはこういうところでは？  

上記のオプションを全て削除した場合は、以下の結果になる。
```text
--    n     --	←☆ここに表示される。

--    --    --

--    --    --
```

</details>

<details><summary>意図していない結果が出てくるプログラム。</summary>

以下、[**side**](#practicaluseTkgeometrymanagementpackoptionside)オプション付きのプログラム。
```perl
use v5.24;
use Tk;

sub guipackAnchor() {
	my $mw = MainWindow->new;
	$mw->title("pack Geometry Manager");

	# 以下、ウィジェット生成。
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack(
					-side => 'bottom',
					-anchor => 'e',
				);
	MainLoop;
}
&guipackAnchor();
```

以下、その表示場所。
```text
--    --    --

--    --    --

--    --    se	←☆e指定だが、ここに表示される。
```
アンカー指定が無駄になる結果が出てきた。  

</details>

基本的に、anchorは、複数のウィジェットを1列に並べる場合に用いられる。  
```perl
use v5.24;
use Tk;

sub guipackAnchorTop() {
	my $mw = MainWindow->new;
	$mw->title("pack Geometry Manager");

	# 以下、ウィジェット生成。
	$mw->Button(
				-text => "top",
				-command => sub { exit }
			)->pack(
					-side => 'top',
					-anchor => 'se',
				);
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack(
					-side => 'top',
					-anchor => 'se',
				);
	MainLoop;
}
&guipackAnchorTop();
```

以下、表示場所。
```text
--    --    Top	←☆右上にへばりついている。
            exit	←☆よく分かっていないが、Topボタンの真下にひっついている感じだった。

--    --    --

--    --    --	←☆右下に配置される指定をした。
```
張り付き方が可笑しい。  
**se**は、右下なのに、右上に張り付いてしまう。  
FPSゲーム内には、ユーザから見えない壁があるのと同じで、見えない領域があるようだ。  


<a name="practicaluseTkgeometrymanagementpackoptionafter"></a>
###### Packオプション-パック順序を後に配置。
パック順序における`$widget`の位置を`$otherwidget`の後ろにする。  
```perl
-after =>
        ウィジェット名
```

以下、具体例
```perl
$widget->pack(
            -after =>
                    $otherwidget,
            );
```

以下、表示例。
```text
$otherwidget	←☆既存ウィジェット(この前に追加指定)。
$widget	←☆今回の追加ウィジェット。
```

<details><summary>オプション設定なし用GUIプログラム</summary>

以下、何もオプションを付けない場合、普通の順番で表示される。
```perl
use v5.24;
use Tk;

sub guiPure() {
	my $mw = MainWindow->new;
	$mw->title("pack Geometry Manager");

	# 以下、ウィジェット生成。
	$mw->Button(
				-text => "top",
				-command => sub { exit }
			)->pack();
	$mw->Button(
				-text => "none",
				-command => sub { exit }
			)->pack();
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack();
	MainLoop;
}
&guiPure();
```

以下、表示姿。
```text
top
none
exit
```
埋め込んだ順に詰め込まれる。  

</details>

以下、最初に詰め込んだウィジェット直後に配置するプログラム。
```perl
use v5.24;
use Tk;

sub guiAfter() {
	my $mw = MainWindow->new;
	$mw->title("pack Geometry Manager");

	# 以下、ウィジェット生成。
	my $top = $mw->Button(
				-text => "top",
				-command => sub { exit }
			)->pack(
				);
	$mw->Button(
				-text => "none",
				-command => sub { exit }
			)->pack(
				);
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack(
					-after => $top,
				);
	MainLoop;
}
&guiAfter();
```
最後に追加した**exit**ボタンを**top**ボタン直後に配置している。  

以下、表示姿。
```text
top
exit
none
```
見事順番を変えることが出来た。  


<a name="practicaluseTkgeometrymanagementpackoptionbefore"></a>
###### Packオプション-パック順序を前に配置。
パック順序における`$widget`の位置を`$otherwidget`の前にする。  
```perl
-before =>
        ウィジェット名
```

以下、具体例
```perl
$widget->pack(
            -before =>
                    $otherwidget
            );
```

以下、表示例。
```text
$widget	←☆今回の追加ウィジェット。
$otherwidget	←☆既存ウィジェット(この前に追加指定)。
```

<details><summary>オプション設定なし用GUIプログラム</summary>

以下、何もオプションを付けない場合、普通の順番で表示される。
```perl
use v5.24;
use Tk;

sub guiPure() {
	my $mw = MainWindow->new;
	$mw->title("pack Geometry Manager");

	# 以下、ウィジェット生成。
	$mw->Button(
				-text => "top",
				-command => sub { exit }
			)->pack();
	$mw->Button(
				-text => "none",
				-command => sub { exit }
			)->pack();
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack();
	MainLoop;
}
&guiPure();
```

以下、表示姿。
```text
top
none
exit
```
埋め込んだ順に詰め込まれる。  

</details>

以下、最初に詰め込んだウィジェット直前に配置するプログラム。
```perl
use v5.24;
use Tk;

sub guiBefore() {
	my $mw = MainWindow->new;
	$mw->title("pack Geometry Manager");

	# 以下、ウィジェット生成。
	my $top = $mw->Button(	←☆これの前に追加予定。
				-text => "top",
				-command => sub { exit }
			)->pack();
	$mw->Button(
				-text => "none",
				-command => sub { exit }
			)->pack();
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack(
					-before => $top,	←☆先頭に追加予定。
				);
	MainLoop;
}
&guiBefore();
```
最後に追加した**exit**ボタンを**top**ボタン直前に配置している。  

以下、表示姿。
```text
exit
top
none
```
見事順番を変えることが出来た。  


<a name="practicaluseTkgeometrymanagementpackoptionin"></a>
###### Packオプション-ウィジェットの大きさを変更する。
ウィジェット自体の大きさを変えることができる。  
x方向・y方向に対して指定できる。  

* 方向指定  
  **i**付きが、ウィジェットそのもの(内部(**i**nside)にあるPadだからという意味)。  
  付いていないのが、ウィジェットの周りに枠を付ける。  
  * x方向  
    [`-ipadx => 大きさ指定値`](#practicaluseTkgeometrymanagementpackoptionipadx)  
    [`-padx  => 大きさ指定値`](#practicaluseTkgeometrymanagementpackoptionpadx)  
  * y方向  
    [`-ipady => 大きさ指定値`](#practicaluseTkgeometrymanagementpackoptionipady)  
    [`-pady  => 大きさ指定値`](#practicaluseTkgeometrymanagementpackoptionpady)  

※基本は、`$widget`を`$otherwindow`の中にパックする。  
そして、通常では、`$widget`の親ウィンドウの中にパックする。  

* 単位指定  
  画面上の距離(スクリーンユニット)用の値は、指定することができる。  
  ※指定が無い場合、ピクセルを単位として計算される。  
  例）`$button->pack(-ipadx => '1m'); # 1ミリ`  
  * 無指定  
    ピクセル(デフォルト)  
    例）`20・30・"20"・"30"`  
    基本は、ピクセルを使うのが望ましい(他のでは、ディスプレイによって見た目の大きさが変わる)。  
  * `c`  
    センチ  
    例）`'3c'`・`'4c'`・`"3c"`  
  * `i`  
    インチ  
    例）`'2i'`・`"3i"`  
  * `m`  
    ミリ  
    例）`'4m'`・`"4m"`  
  * `p`  
    プリンタポイント(72分の1インチ)  
    例）`'40p'`・`"72p"`  
    ※pを付けた場合、ピクセルにならないため、気をつけること(説明通り)。  


<a name="practicaluseTkgeometrymanagementpackoptionipadx"></a>
* Packオプション-ウィジェットの幅を増やす。
  ウィジェットの幅を指定分2倍にする(左右同時に増えるため、指定の2倍になる)。  
  様式：`-ipadx => 指定値`  

<details><summary>ipadx用x方向プログラム</summary>

以下、x方向に対するプログラム。
```perl
use v5.24;
use Tk;

sub guiipadx() {
	my $mw = MainWindow->new;
	$mw->title("pack Geometry Manager");

	# 以下、ウィジェット生成。
	$mw->Button(
				-text => "top",
				-command => sub { exit }
			)->pack();
	$mw->Button(
				-text => "sec",
				-command => sub { exit }
			)->pack();
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack(
					-ipadx => 6,	←☆これ。
				);
	MainLoop;
}
&guiipadx();
```
大きさの変化に気づきにくい。  
6から10にした場合は、それなりに変化はあるが、4から6にした場合の変化はほぼ分からない。  

</details>


<a name="practicaluseTkgeometrymanagementpackoptionipady"></a>
* Packオプション-ウィジェットの高さを増やす。
  ウィジェットの高さを指定分2倍にする(上下同時に増えるため、指定の2倍になる)。  
  様式：`-ipady => 指定値`  

<details><summary>ipady用y方向プログラム</summary>

以下、y方向に対するプログラム。
```perl
use v5.24;
use Tk;

sub guiipady() {
	my $mw = MainWindow->new;
	$mw->title("pack Geometry Manager");

	# 以下、ウィジェット生成。
	$mw->Button(
				-text => "top",
				-command => sub { exit }
			)->pack();
	$mw->Button(
				-text => "sec",
				-command => sub { exit }
			)->pack();
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack(
					-ipady => 6,	←☆これ。
				);
	MainLoop;
}
&guiipady();
```
大きさの変化に気づきにくいため、値は大きめに取った方が良い？  

</details>


<a name="practicaluseTkgeometrymanagementpackoptionpadx"></a>
* Packオプション-ウィジェットの左右に余白を設ける。
  ウィジェットの大きさを変えず、左右にパッド(枠・余白)を作り、その枠の大きさを変えることもできる。  
  様式：`-padx => 指定値`  

<details><summary>padx用x方向プログラム</summary>

以下、x方向に対するプログラム。
```perl
use v5.24;
use Tk;

sub guiipadx() {
	my $mw = MainWindow->new;
	$mw->title("pack Geometry Manager");

	# 以下、ウィジェット生成。
	$mw->Button(
				-text => "top",
				-command => sub { exit }
			)->pack(
					-side => 'left',
				);
	$mw->Button(
				-text => "sec",
				-command => sub { exit }
			)->pack(
					-side => 'left',
					-padx => 10,	←☆見えない枠が作られるのが確認できる。
				);
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack(
					-side => 'left',
				);
	$mw->Button(
				-text => "end",
				-command => sub { exit }
			)->pack(
					-side => 'left',
				);
	MainLoop;
}
&guiipadx();
```
水平方向の並びにした場合、変化に気づく。  

</details>


<a name="practicaluseTkgeometrymanagementpackoptionpady"></a>
* Packオプション-ウィジェットの上下に余白を設ける。
  ウィジェットの大きさを変えず、上下にパッド(枠・余白)を作り、その枠の大きさを変えることもできる。  
  様式：`-pady => 指定値`  

<details><summary>pady用y方向プログラム</summary>

以下、y方向に対するプログラム。
```perl
use v5.24;
use Tk;

sub guiipady() {
	my $mw = MainWindow->new;
	$mw->title("pack Geometry Manager");

	# 以下、ウィジェット生成。
	$mw->Button(
				-text => "top",
				-command => sub { exit }
			)->pack(
				);
	$mw->Button(
				-text => "sec",
				-command => sub { exit }
			)->pack(
					-pady => 6,	←☆見えない枠が作られるのが確認できる。
				);
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack(
				);
	$mw->Button(
				-text => "end",
				-command => sub { exit }
			)->pack(
				);
	MainLoop;
}
&guiipady();
```
垂直方向への配置で変化に気づく。  

</details>


<a name="practicaluseTkgeometrymanagementpackprint"></a>
###### Packオプション-ウィジェットを指定ウィンドウに表示。
親以外のウィジェット上への表示をするには、`-in`オプションを用いる。  
※通常は、ウィジェットをパックした場合、そのウィジェットを生成した領域内に配置される。  
決して、親ウィンドウ以外に表示するのでは無いため、気をつけること。  
```perl
-in =>
        ウィジェット名
```

以下、具体例
```perl
$widget->pack(
            -in =>
                    $otherwidget,
            );
```

<details><summary>オプション設定なし用GUIプログラム</summary>

以下、何もオプションを付けない場合、デフォルト表示になる。
```perl
use v5.24;
use Tk;

sub guiPure() {
	my $mw = MainWindow->new;
	$mw->title("pack Geometry Manager");

	# 以下、ウィジェット生成。
	$mw->Button(
				-text => "top",
				-command => sub { exit }
			)->pack();
	$mw->Button(
				-text => "none",
				-command => sub { exit }
			)->pack();
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack();
	MainLoop;
}
&guiPure();
```

以下、表示姿。
```text
top
none
exit
```
何も手を加えていない表示。  

</details>

以下、プログラム。
```perl
use v5.24;
use Tk;

sub guiInwidget() {
	my $mainwin = MainWindow->new;	←☆このウィンドウに"bottom"ボタンが付くと思っていた。
	$mainwin->title("mainウィンドウ");	←☆このウィンドウ単体で表示される。

	my $mw = MainWindow->new;
	$mw->title("pack Geometry Manager");	←☆このウィンドウに、以下で生成されるウィジェットが付く。

	# 以下、ウィジェット生成。
	my $top = $mw->Button(
				-text => "top",
				-command => sub { exit }
			)->pack();
	my $none = $mw->Button(
				-text => "none",
				-command => sub { exit }
			)->pack();
	my $exit = $mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack();
	my $bottom = $mw->Button(
				-text => "bottom",
				-command => sub { exit }
			)->pack(
					-in =>
						#$mainwin,	←☆変化なし(このウィンドウに表示すると思っていた)。
						$top,
				);
	MainLoop;
}
&guiInwidget();
```

以下、表示姿。
```text
bottom	←☆この下にTopボタンがある(カーソルを合わせた場合、表示しようと頑張る)。
none
exit
```
違うウィンドウに表示すると思っていたが、違うウィジェットに乗るだけだった。  
それが大事なのだろうが・・・。  


<a name="practicaluseTkgeometrymanagementpackmethod"></a>
###### Packオプション-packジオメトリマネージャのメソッド
ウィジェットに関する情報が取得・変更できる。  

* 目次  
  * [ウィジェットの非表示](#practicaluseTkgeometrymanagementpackmethodhide)  
  * [ウィジェットの情報取得](#practicaluseTkgeometrymanagementpackmethodintelligence)  
  * [ウィジェットの自動リサイズ停止設定](#practicaluseTkgeometrymanagementpackmethodresize)  
  * [ウィジェットの一覧取得](#practicaluseTkgeometrymanagementpackmethodcatalog)  


<a name="practicaluseTkgeometrymanagementpackmethodhide"></a>
ウィジェットのアンパックというのが正式らしいが、要は非表示にするメソッド。  
様式：
`$widget->packForget();`  

<details><summary>展開：プログラム構築例。</summary>

以下プログラム。
```perl
use v5.24;
use Tk;

sub method() {
	my $mw = MainWindow->new;
	$mw->title("pack Geometry Manager");

	# 以下、ウィジェット生成。
	my $top = $mw->Button(
				-text => "top",
				-command => sub { exit }
			)->pack();
	my $none = $mw->Button(
				-text => "none",
				-command => sub { exit }
			)->pack();	# このボタンが非表示になる。
	my $exit = $mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack();
	my $bottom = $mw->Button(
				-text => "bottom",
				-command => sub { exit }
			)->pack();

	$none->packForget();	# アンパック(非表示)メソッド。
	MainLoop;
}
&method();
```

以下、表示姿。
```text
top
exit	←☆topボタンの下かつexitボタンの上にnoneボタンがあった。
bottom
```

</details>

今回非表示にしたことで、次回表示させた場合、後ろに追加されることになる。  
要は、bottomボタンの下にnoneボタンがくる。  

<a name="practicaluseTkgeometrymanagementpackmethodintelligence"></a>
ウィジェットに関する設定情報リストを取得するメソッド。  
様式：
`$widget->packInfo();`  

<details><summary>展開：プログラム構築例。</summary>

以下プログラム。
```perl
use v5.24;
use Tk;

sub method() {
	my $mw = MainWindow->new;
	$mw->title("pack Geometry Manager");

	# 以下、ウィジェット生成。
	my $top = $mw->Button(
				-text => "top",
				-command => \&buttoninfo,
			)->pack();
	my $exit = $mw->Button(
				-text => "exit",
				-command => sub { $mw->destroy; &buttoninfo; },	←☆この関数の中に外で宣言した変数を持ち込めないようだ。
			)->pack();
	my %topButtonList = $top->packInfo();		# Topボタンに関する情報を取得する。
	my $buttoninfo = 'null';
	my $text = $mw->Label(
				-textvariable => \$buttoninfo,
			)->pack();

	sub buttoninfo() {
		$buttoninfo = "Top Button Info\n" . "-" x 30 . "\n";
		for my $key (keys(%topButtonList)) {
			my $value = $topButtonList{$key};
			$buttoninfo .= "$key -> $value\n";
		}
		$buttoninfo .= "-" x 30;
		say $buttoninfo;	←☆ターミナル上に出力する用。
	}

	MainLoop;
}
&method();
```

以下、出力結果。
```text
Top Button Info
------------------------------
-fill -> none
-expand -> 0
-anchor -> center
-ipady -> 0
-side -> top
-pady -> 0
-in -> MainWindow=HASH(0x7f873804ff98)
-padx -> 0
-ipadx -> 0
------------------------------
```

</details>

今回取得した情報をどこかに保持しておき、それを使い回すというのは、別途考える必要がある。  
今までのような(いわゆる)構造化プログラミングでは対応できないだろう。  


<a name="practicaluseTkgeometrymanagementpackmethodresize"></a>
ウィジェットの大きさを自動調整停止する設定メソッド。  
様式：
`$widget->packPropagate(0);`  
or  
`$widget->packPropagate('off');`  
これを使わない場合、自動リサイズが有効になっているとのこと。  
※デフォルト有効。  

<details><summary>展開：プログラム構築例。</summary>

以下プログラム。
```perl
use v5.24;
use Tk;

sub method() {
	my $mw = MainWindow->new;
	$mw->title("pack Geometry Manager");

	# 以下、ウィジェット生成。
	my $top = $mw->Button(
				-text => "top",
				-command => sub { exit },
			)->pack();
	my $none = $mw->Button(
				-text => "none",
				-command => sub { exit },
			)->pack();
	my $exit = $mw->Button(
				-text => "exit",
				-command => sub { $mw->destroy },
			)->pack(
					-ipadx => 60,
					-ipady => 60,
				);
	#$exit->packPropagate(0);	# ウィンドウの自動リサイズ停止できず。	←☆こっちでできると思うのだが・・・。
	$mw->packPropagate(0);		# ウィンドウの自動リサイズ停止。
	my $bottom = $mw->Button(
				-text => "bottom",
				-command => sub { exit }
			)->pack();
	MainLoop;
}
&method();
```

</details>

想像していた止め方と異なるため、私の検証方法がズレている可能性がある。  


<a name="practicaluseTkgeometrymanagementpackmethodcatalog"></a>
ウィジェットの一覧を取得するメソッド。  
様式：
`$widget->packSlaves();`  
※ウィジェットがない場合、空文字列が返る。  

<details><summary>展開：プログラム構築例。</summary>

以下プログラム。
```perl
use v5.24;
use Tk;

sub method() {
	my $mw = MainWindow->new;
	$mw->title("pack Geometry Manager");

	# 以下、ウィジェット生成。
	my $exit = $mw->Button(
				-text => "exit",
				-command => sub { $mw->destroy }
			)->pack(
					-ipadx => 60,
					-ipady => 60,
				);
	my $bottom = $mw->Button(
				-text => "bottom",
				-command => \&widgetinfo,
			)->pack();
	#my @slaveList = $bottom->packSlaves();	←☆これは取得できない(このウィジェットに属したウィジェットがないのだから当たり前)。
	my @slaveList = $mw->packSlaves();
	my $buttoninfo = 'null';
	my $text = $mw->Label(
				-textvariable => \$buttoninfo,
			)->pack();

	sub widgetinfo() {
		$buttoninfo = "Buttonボタン情報\n" . "-" x 30 . "\n";
		foreach my $value ( @slaveList ) {
			$buttoninfo .= "$value\n";
		}
		$buttoninfo .= "-" x 30;
		say "$buttoninfo";
	}
	MainLoop;
}
&method();
```

以下、表示結果。
```text
Tk::Button=HASH(0x7fd223268f18)
Tk::Button=HASH(0x7fd2232693f8)
Tk::Button=HASH(0x7fd2232696c8)
```

</details>

これもいまいちな取得情報になってしまった。  
これを極める場合、このハッシュ情報を紐解き、ここから各ウィジェットの設定を変更できる。  

todo:
各ウィジェットの設定を変更できるようにすること。  

<a name="practicaluseTkgeometrymanagementgrid"></a>
#### ジオメトリ管理-grid
左上の角を **(0, 0)** とする列と行で構成されるグリッドにウィンドウを分割する。  

以下、表示姿。
```text
0列,0行 | 1列,0行 | 2列,0行 |
0列,1行 | 1列,1行 | 2列,1行 |
0列,2行 | 1列,2行 | 2列,2行 |
0列,3行 | 1列,3行 | 2列,3行 |
```
ウィジェットは、**grid()** のオプション指定により、グリッドのセルに割り当てる。  
**grid()** メソッドは、ウィジェットのリストを引数として受け取り、1度の実行でまとめて表示する。  

* 目次。  
  * [gridオプション](#practicaluseTkgeometrymanagementgridoption)  
    * 特殊文字  
    * オプション  
  * [行と列の連結](#practicaluseTkgeometrymanagementgridprocession)  
  * [行と列の数](#practicaluseTkgeometrymanagementgridcountrocession)  
  * [ウィジェットのフィル](#practicaluseTkgeometrymanagementgridWidgetfill)  
  * [ウィジェットのパッド](#practicaluseTkgeometrymanagementgridWidgetpad)  
  * [ウィジェットの親変更](#practicaluseTkgeometrymanagementgridWidgetin)  
  * [ウィジェットの非表示](#practicaluseTkgeometrymanagementgridWidgetdel)  
  * [ウィジェットの位置](#practicaluseTkgeometrymanagementgridWidgetposition)  
  * [ウィジェットの伝播](#practicaluseTkgeometrymanagementgridMasterspread)  
  * [スレーブ](#practicaluseTkgeometrymanagementgridservant)  


<details><summary>プログラム例。</summary>

以下、表示姿。
```text
Button1 | Button1-Button1 | Button1-Button2 |
Button2 |                 | Button2-Button2 |	←☆空きがある。
Button3 | Button3-Button1 | Button3-Button2 |
                   exit                     |	←☆端から端までexitボタンが締めている。
```
gridは、packよりも奥が深く、プログラミング前の設計に頭を使う必要がある。  


以下、プログラム例。
```perl
use v5.24;
use Tk;

sub guiGrid() {
	my $mw = MainWindow->new;
	$mw->title("Grid Geometry Manager");

	# 以下、ウィジェット生成。
	$mw->Button(
				-text => "Button1",
				-command => sub { exit },
			)->grid(
				$mw->Button(
					-text => "Button1-Button1",
					-command => sub { exit },
				),
				$mw->Button(
					-text => "Button1-Button2",
					-command => sub { exit },
				),
			);
	$mw->Button(
				-text => "Button2",
				-command => sub { exit },
			)->grid(
				"x",	# グリッドのセルを空ける。
				$mw->Button(
					-text => "Button2-Button2",
					-command => sub { exit },
				),
			);
	$mw->Button(
				-text => "Button3",
				-command => sub { exit },
			)->grid(
				$mw->Button(
					-text => "Button3-Button1",
					-command => sub { exit },
				),
				$mw->Button(
					-text => "Button3-Button2",
					-command => sub { exit },
				),
			);
	$mw->Button(
				-text => "exit",
				-command => sub { exit },
			)->grid(
				"-",
				"-",
				-sticky => "nsew",	# 余白をボタンで埋める。
			);
	MainLoop;
}
&guiGrid();
```
まだ、全く分かっていない状態。  

</details>


<a name="practicaluseTkgeometrymanagementgridoption"></a>
##### ジオメトリマネージャGridのオプション


<a name="practicaluseTkgeometrymanagementgridoption"></a>
###### Gridオプション-特殊文字


<a name="practicaluseTkgeometrymanagementgridoption"></a>
###### Gridオプション-オプション


<a name="practicaluseTkgeometrymanagementgridprocession"></a>
##### Gridの行と列の連結。


<a name="practicaluseTkgeometrymanagementgridWidgetfill"></a>
##### Gridのウィジェットのフィル
セルにおけるウィジェットのフィルについて。  


<a name="practicaluseTkgeometrymanagementgridWidgetpad"></a>
##### Gridのウィジェットのパッド


<a name="practicaluseTkgeometrymanagementgridWidgetin"></a>
##### Gridの異なる親ウィジェット指定


<a name="practicaluseTkgeometrymanagementgridWidgetdel"></a>
##### Gridのウィジェット非表示


<a name="practicaluseTkgeometrymanagementgridWidgetposition"></a>
##### Gridのウィジェットの位置


<a name="practicaluseTkgeometrymanagementgridMasterspread"></a>
##### Gridの伝播


<a name="practicaluseTkgeometrymanagementgridcountrocession"></a>
##### Gridの行と列の数。


<a name="practicaluseTkgeometrymanagementgridservant"></a>
##### Gridのスレーブ


<a name="practicaluseTkgeometrymanagementplace"></a>
#### ジオメトリ管理-place
今回のジオメトリマネージャは、相対的なx座標及びy座標を用いてウィジェットの位置を指定する。  
その座標指定により配置するため、ウィジェットを重ねることができる(PackとGridには不可能)。  

<details><summary>プログラム例。</summary>

以下、プログラム。
```perl
use v5.24;
use Tk;

sub guiPlace() {
	my $mw = MainWindow->new;
	$mw->title("Place Geometry Manager");

	# 以下、ウィジェット生成。
	$mw->Label(
				-text => "Label",
			)->place(
				-x => 25,
				-y => 30,
			);	# ラベル。
	$mw->Checkbutton(
				-text => "check1",
			)->place(
				-x => 45,
				-y => 45,
				-height => 30,
				-width => 30,
			);		# チェックボタン1つ目。
	$mw->Checkbutton(
				-text => "check2",
			)->place(
				-x => 65,
				-y => 60,
				-height => 30,
				-width => 30,
			);		# チェックボタン2つ目。
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->place(
				-x => 85,
				-y => 75,
			);		# 終了ボタン。
	MainLoop;
}
&guiPlace();
```
これは扱いづらい。  
重ねる必要があるときに使うのだろうが、どんな場面でそんな状況が発生するのだろうか。  

</details>

* 目次。  
  * [placeオプション](#practicaluseTkgeometrymanagementplaceoption)  
    以下のオプションは、Packのオプションとちょっとズレた意味合いがあるはず。  
    * [アンカー](#practicaluseTkgeometrymanagementplaceoptionanchor)  
    * [幅と高さ](#practicaluseTkgeometrymanagementplaceoptionpadxy)  
    * [枠](#practicaluseTkgeometrymanagementplaceoptionipadxy)  
  * [place絶対座標](#practicaluseTkgeometrymanagementplaceabsolutecoordinates)  
  * [place相対座標](#practicaluseTkgeometrymanagementplacerelativecoordinates)  
  * [placeメソッド](#practicaluseTkgeometrymanagementplacemethod)  


<a name="practicaluseTkgeometrymanagementplaceoption"></a>
##### ジオメトリマネージャPlaceのオプション


<a name="practicaluseTkgeometrymanagementplaceoptionanchor"></a>
###### Placeオプション-アンカー


<a name="practicaluseTkgeometrymanagementplaceoptionpadxy"></a>
###### Placeオプション-幅と高さ


<a name="practicaluseTkgeometrymanagementplaceoptionipadxy"></a>
###### Placeオプション-枠


<a name="practicaluseTkgeometrymanagementplaceabsolutecoordinates"></a>
##### ジオメトリマネージャPlaceの絶対座標


<a name="practicaluseTkgeometrymanagementplaceabsolutecoordinates"></a>
##### ジオメトリマネージャPlaceの絶対座標


<a name="practicaluseTkgeometrymanagementplacerelativecoordinates"></a>
##### ジオメトリマネージャPlaceの相対座標


<a name="practicaluseTkgeometrymanagementplacemethod"></a>
##### ジオメトリマネージャPlaceのメソッド


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
