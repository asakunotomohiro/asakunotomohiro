# JavaScript言語
ここは、プログラミング言語のJavaScript言語を勉強するブランチになる。  
本来の名前：[LiveScript言語](https://w.atwiki.jp/sevenlives/pages/1827.html)  
現在、その名前は、[乗っ取られている](http://livescript.net)[CoffeeScript言語](https://coffeescript.org)からの派生だそうだ。  

**ECMA International**により規格が統一された。  
ここで標準化されたJavaScriptを[ECMAScript](https://www.ecma-international.org)と呼ぶ。  
今回、2015年6月にECMAで公開されたECMAScript(ES2015・ES6)を基準に勉強を進める・・・ようだ(違う場合どうやって見極めれば良い？)。  


<a name="algorithmHowToUseTheBranch"></a>
## ブランチの利用方法
アルゴリズムの勉強用に、まずは、構造化プログラミングの勉強を行う。


<a name="algorithmHowToStudy"></a>
## 勉強方法
嫌々勉強するプログラミング言語のひとつ。  

以下のサイトを参考にする。  
* [Microsoft-JScript](https://docs.microsoft.com/ja-jp/previous-versions/windows/scripting/cc427807(v=msdn.10))  
  最終更新日が2009年？  
  参考にしてはならないな(そもそも本来のJavaScriptと挙動が違うそうだ)。  
* [Mozilla-JavaScript](https://developer.mozilla.org/ja/docs/Web/JavaScript)  
* [リズムファクトリー社-JavaScript講座](https://rfs.jp/sb/javascript)  
  有名なのか？  
  [はじめてのプログラミング](https://rfs.jp/sb/javascript/01js/01-11.html)の最終更新日は2009年か・・・基礎部分は、書籍に頼れば済むことだろう。  

以下の書籍を購入済み。  
* [これから学ぶJavaScript](https://book.impress.co.jp/books/1117101136)  

<details><summary>正誤表</summary>

Kindle本で購入したのに、訂正されていない。  
何のための電子化しているのか。  

* 150ページ 図5-4とその下の本文1行目  
  [誤]
  1～100の乱数  
  [正]
  0～100の乱数  
* 161ページ リスト5-12：fiveSeasons.js 1行目  
  [誤]
  let month = Math.round(Math.random() * 12);  
  [正]
  let month = Math.round(Math.random() * 11) + 1;  
* 162ページ カコミ下の本文1行目  
  [誤]
  これまでの乱数は0～100や0～5など0始まりですが、ここでは1始まりにしなければなりません。そのために少し工夫しています。  
  まず、Math.round(Math.random() * 11) で0～11の乱数となります。これに「+1」することで、1～12の乱数になります。  
  （解説を追加）  
  [正]
* 171ページ 図6-2  
  [誤]
  1～10の乱数randを用意  
  [正]
  0～10の乱数randを用意  
* 196ページ リスト6-8：rectangleLoop.js 1、2行目  
  [誤]
  let width = Math.round(Math.random() * 10);  
  let height = Math.round(Math.random() * 10);  
  [正]
  let width = Math.round(Math.random() * 9 ) + 1;  
  let height = Math.round(Math.random() * 9 ) + 1;  
* 222ページ ワトソン先生の発言中  
  [誤]
  1～100の乱数  
  [正]
  0～100の乱数  
* 227ページ カコミ下の本文2行目  
  [誤]
  1～10の乱数  
  [正]
  0～10の乱数  
* 229ページ 7-4-3項 本文2行目  
  [誤]
  1～10の乱数  
  [正]
  0～10の乱数  
* 246ページ リスト8-4：calcSumAndAveArrays.js 最終行  
  [誤]
  console.log("list3の合計: " + sum3 + ";平均: " + ave2);  
  [正]
  console.log("list3の合計: " + sum3 + ";平均: " + ave3);  
* 246ページ リスト8-4の実行結果 最終行  
  [誤]
  list3の合計: 58;平均: 17.6  
  [正]
  list3の合計: 58;平均: 8.2857142857143  
* 296ページ リスト9-6 コメント2か所（1行目と6行目）  
  [誤]
  TestScoreAdv  
  [正]
  TestScore  
* 300ページ リスト9-8 コメント（1行目）  
  [誤]
  TestScoreAdv  
  [正]
  TestScore  
* 337ページ 本文1行目  
  [誤]
  1～100までの乱数  
  [正]
  0～100までの乱数  
* 430ページ COLUMN下の本文上から2行目  
  [誤]
  表 1 2- 4  
  [正]
  表 1 2- 1  
* 430ページ COLUMN下の本文上から4行目  
  [誤]
  loadプロパティ  
  [正]
  onloadプロパティ  
* 430ページ COLUMN下の本文上から6行目、脚注（2か所）  
  [誤]
  window.load  
  [正]
  window.onload  
* 431ページ 2つ目の会話文の中  
  [誤]
  window.load =  
  [正]
  window.onload =  

</details>

<a name="algorithmDevelopmentEnvironment"></a>
## 開発環境
できる限り`MacVim`を使うつもり。  
しかし、ブラウザ上で開発する？  
そんなわけないよね。  


<a name="algorithmTextbookLearnedinPythonBook"></a>
## 「[Pythonで学ぶアルゴリズムの教科書](https://book.impress.co.jp/books/1120101024)」
本の概要。  
> エンジニアの基礎体力を身につける  

<a name="basicKnowledgeFiveTypesOfStudyRange"></a>
※プログラミングに使う基礎知識を統一する(簡単に済ませられる量に絞り込む)。  
* 基礎知識5種類  
  * [ ] [変数](#variable変数)  
  * [ ] [配列](#arrangement配列)  
  * [ ] [条件分岐](#Conditional条件分岐)  
  * [ ] [繰り返し](#repetition繰り返し)  
  * [ ] [関数](#function関数)  

<details><summary>アルゴリズムの勉強項目</summary>

<a name="algorithmTextbookLearnedinPythonContents"></a>
* [アルゴリズム勉強目次](#algorithmTextbookLearnedinPython)  
  * [ ] [Chapter 1 プログラミングの基礎知識](#basicKnowledgeFiveTypesOfStudyRange)  
    現時点で完了している(上記の基礎知識5種類として)。  
  * [ ] [Chapter 2 プログラミングの力を養う](#algorithmTextbookLearnedinPythonChapter2)  
  * [ ] [Chapter 3 データ構造を学ぶ](#algorithmTextbookLearnedinPythonChapter3)  
  * [ ] [Chapter 4 サーチ](#algorithmTextbookLearnedinPythonChapter4)  
  * [ ] [Chapter 5 ソート](#algorithmTextbookLearnedinPythonChapter5)  
  * [ ] [Chapter 6 ハッシュ](#algorithmTextbookLearnedinPythonChapter6)  
  * [ ] [Chapter 7 さまざまなアルゴリズムを学ぶ](#algorithmTextbookLearnedinPythonChapter7)  
  * [ ] [Chapter 8 アルゴリズムを見える化する](#algorithmTextbookLearnedinPythonChapter8)  
  * Appendix 1 Pythonのインストール方法
  * Appendix 2 テキストエディタと統合開発環境
  * Appendix 3 Pythonの記述ルール

</details>


<a name="breakingAwayFromBasicKnowledge"></a>
<details><summary>応用知識の項目</summary>

<a name="expandTheScopeOfBasicKnowledge"></a>
### 基礎知識5種類の勉強範囲を広げる
基礎知識5種類の勉強は、アルゴリズムの勉強用に特化していたが、この部分は、通常開発ができる範囲に手を広げる。  

* 基礎知識5種類の範囲を広げる  
  * [ ] [変数](#practicaluseVariable変数)  
  * [ ] [配列](#practicaluseArrangement配列)  
  * [ ] [条件分岐](#practicaluseConditional条件分岐)  
  * [ ] [繰り返し](#practicaluseRepetition繰り返し)  
  * [ ] [関数](#practicaluseFunction関数)  


<a name="rangeOtherThanBasicKnowledge"></a>
### 基礎知識5種類の勉強以外の項目
基礎知識5種類に納められない範囲の勉強に手を広げる。  

* [応用知識](#appliedknowledge)  
  * [ ] [ポインタ・リファレンス](#practicalusePointer)  
  * [ ] [NULL・nil](#practicaluseNull)  
  * [ ] [ハッシュ(連想配列)](#practicaluseHash)  
  * [ ] [ファイル操作](#practicaluseFileoperation)  
  * [ ] [ディレクトリ操作](#practicaluseDirectorymanipulation)  
  * [ ] [オブジェクト指向](#practicaluseObjectorientation)  
  * [ ] [テスト方法](#practicaluseTester)  
  * [ ] [標準関数(モジュール)](#practicaluseModule)  
  * [ ] [プロセス管理](#practicaluseSystemfunc)  

</details>


<a name="algorithmSpecificBasicKnowledge"></a>
<details><summary>基礎知識5種類の作業手順</summary>

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
        ※ アルゴリズムの勉強用項目は隠しておく(`details`・`summary`)代わりに、基礎知識5種類の勉強用の項目は出しておく。  
  * [x] 手順2-2. 開発環境を記録する。  
  * [x] 手順2-3. `helloWorld.[言語用の拡張子]`のファイルを作り、おなじみ"Hello World."プログラムを作る。  
  * [x] 手順2-4. main関数不要であれば、"**実行済み**"ディレクトリを削除すること。  
  * [x] 手順2-5. コミットする。  
  * [x] 手順3. 各ディレクトリで、5種類の"絶対的に勉強する一覧"を箇条書きごとに勉強する。  
    * 以下、5種類の内訳。  
      ※そのとき、(できる限り)プログラムファイルに[モードライン](../エディタ活用メモ/Vimエディタ_作業メモなど何でも詰め込む.md)を記載する。  
        `<!-- vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=html noexpandtab: -->`  
      ※チェックリストは上記にある。  
      変数  
      配列  
      条件分岐  
      繰り返し  
      関数  
  * [x] 手順3-1. 箇条書きごとにコミット実施する。  
  * [ ] 手順4. 1つのプログラミング言語で、手順3の勉強1種類を終えた時に、次のプログラミング言語に移る。  
         (細かく分けることでやる気が維持される・・・はず)  
  * [ ] 手順4-1. 今回のプログラミング言語に戻ってきたことにより、次の箇条書きに移り、勉強を継続(再開)する。  
  * [ ] 手順5. 上記、5種類の基礎知識を終わるまで繰り返す。  
  * [ ] 手順6. 5種類の基礎知識終了にて、"study2programming"ブランチにマージする。  

</details>


<a name="algorithmSpecificAlgorithmPreSolvingProcedure"></a>
<details><summary>アルゴリズム問題解決の作業手順</summary>

## 具体的なアルゴリズム問題解決前手順
アルゴリズムの勉強に、以下の手順を行う。  

* 以下、手順。  
  * [x] 手順1. 勉強用のブランチに移動する(上記[目次](#algorithmTextbookLearnedinPythonContents)の1チャプター分専用ブランチとする)。  
  * [ ] 手順2. ルートディレクトリのひな形ディレクトリ配下の必要なディレクトリをコピーする。  
    **Pythonで学ぶアルゴリズムの教科書 一生モノの知識と技術を身につける** ディレクトリ配下の必要なチャプター用ディレクトリ。  
  * [ ] 手順3. 当ファイル(`README.md`)の書き換えを行う。  
    [ ] アルゴリズムの勉強用に変更する。  
    [ ] アルゴリズムの勉強用項目を出すが、基礎知識5種類の勉強項目は隠す(`details`・`summary`)。  
  * [ ] 編集後、コミットする。  
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


<a name="algorithmCheckTheStatusOfTheActualWorkingEnvironment"></a>
## 実際に作業する環境の状況確認
ブラウザは、HTMLのみ解析するようだ。  
そのため、HTMLファイルにJavaScriptを記述する必要がある。  

* 勉強環境。  
  * ~~勉強環境のコンパイルバージョン：~~  
  * 勉強環境の実行バージョン  
    * Firefox  
      **Firefox Version93.0(October 5, 2021)** 以上。  
    * Safari  
      **バージョン14.1.2 (14611.3.10.1.7)** 以上。  
    * Google Chrome(以降Chrome)  
      **バージョン: 96.0.4664.55（Official Build） （x86_64）** 以上。  
  * HTMLプログラムファイルの拡張子：`*.html`  
  * JavaScriptプログラムファイルの拡張子：`*.js`  
  * 実行方式：インタプリタ方式  
    他のスクリプト言語(Perl・PHP・Ruby)はサーバ側で動くようだが、今回の言語はクライアント側で動く。  
  * 標準の文字コード(プログラムファイル)：UTF-8  
  * 文字コードの扱い：  
　　例）UTF-8・Unicode  
  * 文字区切り(行末記号)：セミコロン`;`  
    改行は`LF`・`\n`を使うのが一般らしい。  
    ちなみに、`CR`は、`\r`になる(2つ繋げた場合`CRLF`の組み合わせになる)。  
  * インデント：フリーフォーマット  
    ※半角スペースと制御文字は無視される。  
  * 標準の出力関数：**\<body\>** と **\</body\>** に挟まれた文字列がブラウザに表示される。  
  * 標準のフォーマット関数：  
　　例）`printf`など。
  * 単数行コメント方法：`//`  
  * 複数行コメント方法：`/*〜*/`  
  * HTML用コメント方法：`<!-- HTML用コメント -->`  
    HTML2.0・HTML4.0・HTML5.*などにより、細かいルールが異なる。  
  * デバッガ機能(デバッグ技法)：ブラウザ付属のデベロッパツールを使う。  
    それを使う必要に迫られるようなプログラムは組みそうもないよな・・・(その説明を読み飛ばす)。  
    読み飛ばしては駄目だった(コンソールパネル上に出力するプログラムを組むことで話が進んでいった)。  
    SafariやFirefoxでは表示させることが出来ず、Chromeに逃げてしまった。  
    **表示** -> **開発/管理** -> **JavaScriptコンソール**  


<a name="algorithmHelloWorld"></a>
### ハローワールドプログラム
普通にHTMLファイルを作成し、そこにHTMLを記述する。  
そのHTMLのあいだに、JavaScriptを埋め込んでいく。  

以下、プログラム。
```html
<!DOCTYPE html>
<html lang="ja">
<head>	←☆この中でJavaScriptを記述する。
    <meta charset="utf-8">
    <title>Hello World!</title>
</head>
<body>
    <script type="text/javascript">
        window.alert("Hello World!");
    </script>
    <noscript>JavaScriptが利用できないブラウザです。</noscript>
</body>	←☆ここの直前にJavaScriptを記述する(通常)。
</html>
```
インデントの付け方に悩むよね。  

上記は、HTMLファイルにJavaScriptを埋め込んでいる。  
それでは使い回しが悪いため、以下分ける。  

以下、HTMLファイル(これをブラウザで表示させ、JavaScriptを別途読み込む形にする)。
```html
<!DOCTYPE html>
<html lang="ja">
<head>
	<meta charset="utf-8">
	<title>Hello World!</title>
</head>
<body>
	<script type="text/javascript" src="helloWorld_JavaScript.js">	←☆ここの"src"でJavaScriptファイルを指定している。
		// JavaScriptファイル読み込み。
	</script>
		<!-- 以下は、スクリプトが動かない場合に実行される。 -->
	<noscript>JavaScriptが利用できないブラウザです。</noscript>
</body>
</html>
```

以下、JavaScriptファイル。
```javascript
// ダイアログ出力。
window.alert("Hello World!");
```
これがJavaScriptとして実行される。  


<a name="algorithmNotes"></a>
### ※注意事項
「アルゴリズムを勉強することが目的」であるということを理解すること。  
しかし、やる気を維持するためにも1冊分を読了させることも目的としており、深掘りせずに進めることも考慮すること。  
要は、深く踏み込むか、流し読み程度に抑えるかどうかはそのときに決める。  

何より、書籍記載のアルゴリズムは、サンプルとして公式ページからダウンロードできる。  
そのため、書籍通りに進める必要が無く、まずは読了を目指す。  


<a name="algorithmOverview"></a>
#### 概要。
基礎知識として5種類を勉強するが、その目的はアルゴリズムの勉強用であって、5種類を本格的に極めるためではない。  
そのため、1つ1つを最小限に絞り込み、1つを10分前後の勉強時間に収まるように気をつけること。  
※現時点で守れていないため、何とかして短い時間に抑え、アルゴリズムの勉強を本格的に勉強できるように考慮すること。  

<a name="variable変数"></a>
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

<a name="arrangement配列"></a>
* [配列(リスト)](#arrangement配列sub)  
  * 宣言方法  
    要素  
    要素数  
    添え字(インデックス)  
  * 要素追加方法  
  * 2次元配列  
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
### 変数
値の格納方法について。  
※複雑な説明はしない。  

* 絶対的に勉強する一覧  
  * [変数の宣言方法](#subVariable1)  
  * [変数への代入方法及び変数の利用](#subVariable2)  
    * [x] 代入演算子(`=`)  
  * [変数値の出力方法](#subVariable3)  
  * [データ型](#subVariable4)  
    基本的にはない。  
    * [x] 整数(`int`)  
    * [x] 浮動小数点型(`float`)  
    * [x] 文字型(`string`)  
    * [x] 真偽型(`bool`)  
  * [変数値を使った計算方法](#subVariable5)  
    * [x] 算術演算子  
      * [x] 足し算(`+`)  
      * [x] 引き算(`-`)  
      * [x] 掛け算(`*`)  
      * [x] 割り算(`/`)  
      * [x] 累乗(`**`)  
      * [x] 割り算の商(`//`)  
      * [x] 割り算の余り(`%`)  
  * [型変換(キャスト)方法](#subVariable6)  
    * [ ] 明示変換  
      ない。  


<a name="subVariable1"></a>
#### 変数
様式：
`let 変数名;`  
※宣言だけでは、未定義(undefined)になる。  
`let`や`var`など付けずにいきなり変数を使うことはできるが、バグの基になるため、`"use strict";`を1行目に付けておくのが吉。  

* 変数  
  * 変数宣言`let`  
    無くても問題ないが、付ける癖を付けること。  
    旧式は、`var`だったが、古いため、使わないこと。  
  * 命名規則：キャメル記法  
    * 大小文字の区別あり。
    * 先頭に数字を使わない。  
    * 利用可能文字、**アルファベット**・**数字**・**アンダースコア`_`**・**ドル記号`$`** のみ。  
    * キャメル記法とは、  
      * 複数単語を繋げるが、そのときの単語の先頭は大文字を使う。  
        * 2つ目の単語の先頭を大文字にする記法。  
          **ローワーキャメル記法(LCC)** と言う。  
          キャメル記法と言えば、LCCを指す。  
        * 1文字目も大文字にする記法。  
          **アッパーキャメル記法(UCC)** と言う。  
          別名、パスカル記法とも言う。  
      * 他に、  
        * スネーク記法というのがある(単語の区切りをアンダースコア`_`を用いる)。  
          定数の場合、この記法を用いる。  
        * チェイン記法というのがある(単語の区切りをハイフン`-`を用いる)。  
  * 値の代入で初期化必須。  
  * イコール記号は代入を表す。  
  * const付与時は定数になる。  
  * データ型が存在する(意識不要で使える)。  

* 定数  
  様式：
  `const 定数名 = 値;`  


<a name="subVariable2"></a>
#### 変数への代入方法及び変数の利用
様式：
`変数名 = 値;`  


<a name="subVariable3"></a>
#### 変数値の出力方法
ブラウザのデバッグ方法での出力とする。  

以下、JavaScriptプログラム。
```javascript
// 以下、テンプレート文字列。
let now = "本日は晴天なり。";
let str  = `昨日は、
${now}
雨だった。`;
console.log(str);
```

以下、出力結果。
```terminal
昨日は、
本日は晴天なり。
雨だった。
```


<a name="subVariable4"></a>
#### データ型
特に気にしなくていい。  
※一応内部的にはデータ型を意識して処理しているようだ。  

|データ型|サイズ|備考|
|--------|------|----|
|int||整数型|
|float||小数型|
|string||文字列型|
|bool||ある|


* boolean型  
  bool-->true	←☆1  
  bool-->false	←☆0  


<a name="subVariable5"></a>
#### 変数値を使った計算方法

|演算子|意味|備考|
|------|----|----|
|`+`|加算|文字列結合にも使う|
|`-`|減算||
|`*`|乗算||
|`/`|除算||
|`**`|累乗||
|`//`|除算の商||
|`%`|剰余演算||


<details><summary>実際のプログラム例</summary>

算術演算。
```javascript
// 足し算
let sum1 = 20211128 + 1;
let sum2 = 20211129 + 2;
console.log(sum1);	// 20211129
console.log(sum2);	// 20211131
sum1 = 6;
sum2 = 5;
let add = sum1 + sum2;
console.log(add);	// 11
// 引き算
let sub = sum1 - sum2;
console.log(sub);	// 1
// 掛け算
let mul = sum1 * sum2;
console.log(mul);	// 30
// 引き算
let div = sum1 / sum2;
console.log(div);	// 1.2
// 余り
sum1 = 111;
sum2 = 10;
let par = sum1 % sum2;
console.log(par);	// 1
// 累乗
sum1 = 2;
sum2 = 3;
let rui = sum1 ** sum2;
console.log(rui);	// 8
rui = sum2 ** sum1;
console.log(rui);	// 9
```

</details>

* 複合代入演算子  
  * `+=`  
  * `-=`  
  * `*=`  
  * `/=`  
  * `%=`  
  * `**=`  
  * インクリメント  
    * `変数名++;`  
    * `++変数名;`  
  * デクリメント  
    * `変数名--;`  
    * `--変数名;`  


<a name="subVariable6"></a>
#### 型変換(キャスト)方法
データ型を意識せずに使えるため、型変換はない・・・ようだ。  
※文字列を含む数列の結合は、意識しておく必要がある。  

<details><summary>文字列結合例</summary>

```javascript
let str1 = "本日は";
let str2 = "晴天なり。";
str = str1 + str2;
console.log(str);	// 本日は晴天なり。
str1 = "1";
str2 = 2;
str = str1 + str2;
console.log(str);	// 12	←☆文字列のため、3ではなく、1と2が結合される(算術ではない)。
str1 = "1";
str2 = 2;
let sum = 3;
str = str1 + str2 + sum;
console.log(str);	// 123	←☆文字列のため、3ではなく、1と2が結合される(算術ではない)。
str = str1 + (str2 + sum);
console.log(str);	// 15	←☆括弧を付けて優先順位を変えたことで、算術が行われた後に結合された。
```

</details>


<a name="subVariable999"></a>
#### 変数での説明しない項目。

<details><summary>今回は勉強を見送る一覧</summary>

* [x] 定数  
* [ ] データ型  
  ない。  
  * [ ] 整数(`long`など)  
  * [ ] 浮動小数点型(`double`など)  
  * [ ] 型推論  
  * [ ] 複素数型  
* [x] リテラル  
  * [x] 整数リテラル  
  * [ ] 浮動小数点リテラル  
    ない？  
  * [ ] 文字リテラル  
    ない？  
  * [x] 文字列リテラル  
* [x] キャスト  
  * [x] 暗黙変換  
    これだけがあると思ってよい？  
* [ ] 演算子  
  * [ ] 優先順位  

* ちょっと高度な話題  
  * [ ] ポインタ  

* 関数を変数に代入  
* 関数を引数に使う  

</details>

<a name="arrangement配列sub"></a>
### 配列
変数を連ならせる格納方法。  
今回のPythonではリストを配列と呼ぶ。  
※配列とリストを分けている場合はリストの勉強を後回しにし、配列がない状態でリストがある場合はリストを勉強する。  

* 絶対的に勉強する一覧  
  * [x] [配列の宣言方法](#subArrangement1)  
        [x] 要素とは。  
        配列内のデータのことを指す。  
        [x] 要素数とは。  
        [x] 添え字とは。  
        0から始まる。  
  * [x] [配列への追加方法](#subArrangement2)  
  * [x] [二次元配列の宣言方法](#subArrangement3)  


<a name="subArrangement1"></a>
#### 配列
様式：
`let 配列名 = [0, 1, 2, 3, ・・・値が続く, ];`  

以下、プログラム。
```javascript
let hoge = [20220129, ];
console.log("配列要素1番目：" + hoge[0]);
console.log("配列要素2番目：" + hoge[1]);
```

以下、出力結果。
```console
配列要素1番目：20220129
配列要素2番目：undefined
```

空配列の場合は、`let boo = [];`と宣言する。  


<a name="subArrangement2"></a>
#### 配列への追加方法
様式：
`配列名[要素番号] = 代入値;`  

以下、プログラム。
```javascript
let hoge = [20220129, ];
console.log("配列要素1番目：" + hoge[0]);	←☆書き換え前。
hoge[0] = "本日は晴天なり。";
hoge[1] = "happy";	←☆存在しない要素数に追加。
console.log("配列要素変更1番目：" + hoge[0]);	←☆書き換え後。
console.log("配列要素追加2番目：" + hoge[1]);	←☆新規追加されている。
```

以下、出力結果。
```console
配列要素1番目：20220129
配列要素変更1番目：本日は晴天なり。
配列要素追加7番目：happy
```


<a name="subArrangement3"></a>
#### 二次元配列の宣言方法
様式：
`let 2次元配列名 = [ [ 値11, 値12, ], [値21, 値22], ];`  


以下、プログラム。
```javascript
let hoge = [
			['today', "happy", ],
			[4401, 616432, 7, ],
			["本日は", "晴天なり。", ],
		];
console.log("2次元配列[0][0]：" + hoge[0][0]);
console.log("2次元配列[1][2]：" + hoge[1][2]);
console.log("2次元配列[2][1]：" + hoge[2][1]);
```

以下、出力結果。
```console
2次元配列[0][0]：today
2次元配列[1][2]：7
2次元配列[2][1]：晴天なり。
```


<a name="subArrangement999"></a>
#### 配列での説明しない項目。

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
  * [x] [単純分岐-"もし"1つ。](#subConditional1)  
    基本構造例：if  
  * [x] [多岐分岐-"もし"2つ以上。](#subConditional1)  
    基本構造例：if〜else if〜  
  * [x] [論理演算子(ド・モルガンの法則)](#subConditional2)  
    * [x] 論理積(`AND`・`&&`)  
    * [x] 論理和(`OR`・`||`)  
  * [x] [比較演算子](#subConditional3)  
    * [x] 等しい(`==`)  
    * [x] 厳密な等しい(`===`)  
    * [x] 等しくない(`!=`)  
    * [x] 厳密な等しくない(`!==`)  
    * [x] より大きい(`>`)  
    * [x] より小さい(`<`)  
    * [x] 以上(`>=`)  
    * [x] 以下(`<=`)  

<a name="subConditional1"></a>
#### 条件分岐
様式：
```javascript
if( 条件式1 ) {
    処理A;
}
else if( 条件式2 ) {
    処理B;
}
else {
    処理C;
}
```

<a name="subConditional2"></a>
#### 論理演算子(ド・モルガンの法則)

|演算子|意味|備考|
|------|----|----|
|`&&`|論理積|別表記なし|
|`||`|論理和|別表記なし|

<a name="subConditional3"></a>
#### 比較演算子

|演算子|意味|備考|
|------|----|----|
|`==`|等号||
|`!=`|不等号||
|`===`|厳密等号||
|`!==`|厳密不等号||
|`>`|より大きい||
|`<`|より小さい||
|`>=`|以上||
|`<=`|以下||

* ==  
  型の違いを無視して比較する。  
  そのため、`48 == "48"`の比較は一致する。  

* ===  
  型の違いまで考慮して比較する。  
  そのため、`48 == "48"`の比較は不一致。  
  そして、当然ながら厳密に比較したほうがバグを極力排除できる。  


<a name="subConditional999"></a>
#### 条件分岐での説明しない項目。

[以下、今回の言語に関係の無い項目を削除すること(対象言語に存在するが、見送るもののみ、以下残す)。]  
<details><summary>今回は勉強を見送る一覧</summary>

* 多岐分岐-条件にて複数から選ぶ。  
  基本構造例：switch  
  * switch  
    case  
    default  
    break  

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
  * [x] [指定回数条件での繰り返し](#subRepetition1)  
    [x] [基本構造例：for( 条件式 )](#subRepetition2)  
    [x] [基本構造例：拡張for命令(`in`)](#subRepetition3)  
    [x] [`for`の入れ子。](#subRepetition4)  
  * [ジャンプ処理](#subRepetition5)  
    * [x] break  
    * [x] continue  
  * [x] [真偽条件での繰り返し](#subRepetition6)  
    [x] [基本構造例：while( 条件式 )](#subRepetition6)  
    [x] [無限ループ](#subRepetition7)  


<a name="subRepetition1"></a>
#### 繰り返し
様式：
[`for ( 初期化; 条件式; 増減分; ) { 処理; }`](#subRepetition2)  

様式：
[`while ( 条件式 ) { 処理; }`](#subRepetition6)  


<a name="subRepetition2"></a>
##### 指定回数条件での繰り返し：for( 条件式 )

以下プログラム例）
```javascript
for( let ii = 0; 3 > ii; ii++ ) {
	console.log("for繰り返し" + ii);
}
```

以下、出力結果。
```terminal
for繰り返し0
for繰り返し1
for繰り返し2
```


<a name="subRepetition3"></a>
##### 指定回数条件での繰り返し：拡張for命令
ない？  


<a name="subRepetition4"></a>
#### `for`の入れ子。

以下プログラム例）
```javascript
for( let ii = 0; asakuno.length > ii; ii++ ) {
	for( let jj = 0; asakuno.length > jj; jj++ ) {
		console.log("ii[" + ii + "], jj[" + jj + "]" );
	}
}
```

以下、出力結果。
```terminal
ii[0], jj[0]
ii[0], jj[1]
ii[0], jj[2]
ii[1], jj[0]
ii[1], jj[1]
ii[1], jj[2]
ii[2], jj[0]
ii[2], jj[1]
ii[2], jj[2]
```


<a name="subRepetition5"></a>
#### ジャンプ処理
普通に使える(存在する)。  

* 種類。  
  * [`break`](#subRepetition5break)  
  * [`continue`](#subRepetition5continue)  


<a name="subRepetition5break"></a>
以下、`break`処理。
```javascript
for( let ii = 0; asakuno.length > ii; ii++ ) {
	if( ii === 2 ) {
		break;
	}
	console.log("ii[" + ii + "]" );
}
```

以下、出力結果。
```terminal
ii[0]
ii[1]
```
2回目以降が出力されない。  

<a name="subRepetition5continue"></a>
以下、`continue`処理。
```javascript
for( let ii = 0; asakuno.length > ii; ii++ ) {
	if( ii === 1 ) {
		continue;
	}
	console.log("ii[" + ii + "]" );
}
```

以下、出力結果。
```text
ii[0]
ii[2]
```
2回目(要素数1)が飛ばされている。  


<a name="subRepetition6"></a>
#### 真偽条件での繰り返し：while( 条件式 )

以下、`continue`処理。
```javascript
let num = 0;
while( num < 3 ) {
	console.log("while繰り返し[" + num + "]" );
	num++;
}
```

以下、出力結果。
```text
while繰り返し[0]
while繰り返し[1]
while繰り返し[2]
```


<a name="subRepetition7"></a>
#### 無限ループ

* 2種類。  
  * [for文版](#subRepetition7for)  
  * [while文版](#subRepetition7while)  

<a name="subRepetition7for"></a>
```javascript
for( let ii = 0;; ii++ ) {
	console.log("for繰り返し[" + ii + "]" );
}
```
これで無限ループになっているはず。  
ブラウザが固まり、何も表示されなくなる。  

<a name="subRepetition7while"></a>
```javascript
while( true ) {
	console.log("while繰り返し[" + count + "]" );
	count++;
}
```
これも無限ループになっているはず。  
ブラウザが固まり、何も表示されなくなる。  


<a name="subRepetition999"></a>
#### 繰り返しでの説明しない項目。

<details><summary>今回は勉強を見送る一覧</summary>

* [ ] 真偽条件での繰り返し  
  基本構造例：do〜while( 条件式 )  

</details>


<a name="function関数sub"></a>
### 関数

* 絶対的に勉強する一覧  
  * [ ] 使い回せるようにまとめること。  
    * [ ] [引数と戻り値の組み合わせ。](#subFunction1)  
      [x] 引数無し-戻り値無し2022/02/24  
      [x] 引数あり-戻り値無し2022/02/24  
      [x] 引数無し-戻り値あり2022/02/24  
      [x] 引数あり-戻り値あり2022/02/24  
    * [スコープ](#subFunction2)  
      [ ] グローバルスコープ変数  
      [ ] ローカルスコープ変数  


<a name="subFunction1"></a>
#### 関数
様式：
```javascript
function 関数名(仮引数1, 仮引数2, ・・・) {
	処理;
}
```

呼び出し方：
`関数名(実引数1, 実引数2, ・・・);`  

引数を受け取らない場合も受け取れるのがJavaScriptの特徴のようだ。  
```javascript
function argtest(arg) {
	let func = 20220224;
	console.log("受け取った引き数値：" + arguments[0]);			// 本日は
	console.log("受け取っていない引き数値：" + arguments[1]);	// 晴天なり。
	console.log("存在しない引き数値：" + arguments[2]);			// undefined

	return func;
}
argtest('本日は', '晴天なり。');
```

引数のデフォルト値を設定可能なようだが、ブラウザでは処理できないようだ。  
様式：
```javascript
function 関数名(仮引数1 = 値A, 仮引数2 = 値B, ・・・) {
	処理;
}
```


<a name="subFunction1noargnoreturn"></a>
##### 関数(引数無し-戻り値無し)
何のひねりもない関数呼び出し。  

以下、プログラム。
```javascript
function func() {
	console.log("引数無しの戻り値なし関数。");	←☆これがそのまま出力される。
}
func();	// 関数呼び出し。
```


<a name="subFunction1doargnoreturn"></a>
##### 関数(引数あり-戻り値無し)
題名のまんま。  

以下、プログラム。
```javascript
function insay(arg) {
	// 引数あり-戻り値無し。
	console.log("関数内から出力(" + arg + ")。");
}
insay('引数');	←☆文字列を囲む必要がある。
```

以下、出力結果。
```terminal
関数内から出力(引数)。
```


<a name="subFunction1noargdoreturn"></a>
##### 関数(引数無し-戻り値あり)
ちょっとだけプログラムが複雑になる？  

以下、プログラム。
```javascript
function sayret() {
	// 引数なし-戻り値あり。
	let func = 20220224;
	console.log("関数内から出力。");

	return func;
}
let ret = sayret();
console.log("戻り値出力(" + ret + ")。");
```

以下、出力結果。
```terminal
関数内から出力。
戻り値出力(20220224)。
```


<a name="subFunction1doargdoreturn"></a>
##### 関数(引数あり-戻り値あり)
今後活用するであろう使い方。  

以下、プログラム。
```javascript
function insayret(arg) {
	// 引数あり-戻り値あり。
	let func = 20220224;
	console.log("関数内から出力(引数：" + arg + ", 戻り値：" + func + ")。");

	return func;
}
let ret = insayret('hoge');
console.log("戻り値出力(" + ret + ")。");
```

以下、出力結果。
```terminal
関数内から出力(引数：hoge, 戻り値：20220224)。
戻り値出力(20220224)。
```


<a name="subFunction2"></a>
#### スコープ


<a name="subFunction999"></a>
#### 関数での説明しない項目。

[以下、今回の言語に関係の無い項目を削除すること(対象言語に存在するが、見送るもののみ、以下残す)。]  
<details><summary>今回は勉強を見送る一覧</summary>

そもそもPythonは、普通に必要？  
しかし、アルゴリズムの勉強には不要なのだろう。  

* 標準的な関数  
  * [ ] 可変長引数(引数を任意に追加できる)  
  * [ ] 再帰関数(自分自身を呼び出す)  
  * [ ] 高階関数(関数を変数に代入・関数を戻り値とする)  
    別名：無名関数・ラムダ式・(匿名関数は誤訳)  
* オブジェクト指向  
  * [ ] クラス  
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

</details>

<a name="algorithmTextbookLearnedinPython"></a>
<details><summary>アルゴリズムの勉強内容</summary>

#### ☆アルゴリズムの勉強チャプタ概要☆
<a name="algorithmTextbookLearnedinPythonChapter2"></a>
* [Chapter2 プログラミングの力を養う](#developProgrammingSkillsOverviewChapter2)  
  基礎的なプログラミングの力を養っていく。  
  例えば、配列利用の関数定義・繰り返し・再帰関数・条件分岐など。  
  以下、各項目(目次)。  
  [ ] [平均値を求める。](#findTheAverageValueChapter2)  
  [ ] [1からnまで足し合わせる。](#addFrom1tonChapter2)  
  [ ] [九九の式を出力する。](#outputTheMultiplicationTableChapter2)  
  [ ] [素数を求める。](#findAPrimeNumberChapter2)  
  [ ] [nの階乗を求める。](#findTheFactorialOfNChapter2)  
  [ ] [エラトステネスの篩](#eratosthenesSieveChapter2)  
  [ ] [n進法を理解する。](#understandnAryNotationChapter2)  
<a name="algorithmTextbookLearnedinPythonChapter3"></a>
* [Chapter3 データ構造を学ぶ](#learnDataStructuresOverviewChapter3)  
  今までに勉強した配列(リスト)を用いた発展を遂げる。  
  ※今回利用するリストはアルゴリズム(概念)用語であり、Pythonで用いているリスト(配列)という用語とは別物。  
  ※例外処理(`try〜except〜finally`)の説明をしている(いずれ基礎知識として勉強に組み込む必要がある？)。  
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

<a name="addFrom1tonChapter2"></a>
#### 1からnまで足し合わせる。

<a name="outputTheMultiplicationTableChapter2"></a>
#### 九九の式を出力する。

<a name="findAPrimeNumberChapter2"></a>
#### 素数を求める。

<a name="findTheFactorialOfNChapter2"></a>
#### nの階乗を求める。

<a name="eratosthenesSieveChapter2"></a>
#### エラトステネスの篩

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

</details>

<details><summary>応用知識</summary>

<a name="appliedknowledge"></a>
## 応用知識
基礎知識5種類だけでは不足する知識を補う。  

* 応用部分  
  * 何を勉強したか記載する。  

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
