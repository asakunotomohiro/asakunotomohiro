# Java言語
ここは、プログラミング言語のJava言語を勉強するブランチになる。  


## ブランチの利用方法
アルゴリズムの勉強用プログラミング言語の一つとしている。  
まずは、基礎知識5種類の勉強を始める。  


## 勉強方法
オラクルの[Java](https://education.oracle.com/ja/java/java/pFamily_48)で勉強しづらい。  
と言うことで、以下2冊をもとに勉強を進める。  


以下の書籍を購入済み。  
* [楽しく学ぶJava入門](https://www.impressrd.jp/news/detail/451)の合本(7日分を1冊にまとめてある)  
  [1日目](https://nextpublishing.jp/book/6437.html)の出版は2015年のようだ。  
  だからなのか、**System.in.read**などは現在で非推奨関数になっており、コンパイルエラーが発生する。  
* [ゼロからわかる Java超入門 [改訂3版]](https://gihyo.jp/book/2020/978-4-297-11484-8)  

以下のサイトを参考にする。  
* [Javaチュートリアル](https://docs.oracle.com/cd/E26537_01/tutorial/)  


## 開発環境
本当に基本的な部分のみ`MacVim`を使うことになるだろう(自動補完がうまく働かなければ普通にIDEを使う)。  
ある程度規模が大きくなった時に、`Visual Studio Code(VSCode)`に移行する。  
それとも`Eclipse`を使う？  
できる限り`MacVim`を使うつもりだが。  


## 「[Pythonで学ぶアルゴリズムの教科書](https://book.impress.co.jp/books/1120101024)」
本の概要。  
> エンジニアの基礎体力を身につける  

<details><summary>基礎知識5種類の項目</summary>

基礎知識5種類の勉強終了後、ここに移動する。  

</details>

※プログラミングに使う基礎知識を統一する(簡単に済ませられる量に絞り込む)。  
* 基礎知識5種類  
  * [x] [変数](#variable変数)2021/08/21  
  * [x] [配列](#arrangement配列)2021/09/18  
  * [ ] [条件分岐](#Conditional条件分岐)  
  * [ ] [繰り返し](#repetition繰り返し)  
  * [ ] [関数](#function関数)  

<details><summary>アルゴリズムの勉強項目詳細</summary>

基礎知識5種類の勉強終了後、ここを解放する。  

</details>

<a name="algorithmTextbookLearnedinPythonContents"></a>
* [アルゴリズム勉強目次](#algorithmTextbookLearnedinPython)  
  * [ ] Chapter 1 プログラミングの基礎知識  
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

<details><summary>基礎知識5種類の作業手順</summary>

## 具体的な基礎知識
何はともあれ、まずは、"Hello World"を表示するプログラムを作る。  
その後で、基礎中の基礎となる制御構造(構造化プログラミング)を簡略化しながら勉強する。  
そのため、以下の手順で勉強を進めることにする。  

* 以下、手順。  
  * [x] 手順1. 勉強用のブランチに移動する。  
  * [x] 手順2. ルートディレクトリのひな形ディレクトリをコピーしてくる。  
  * [x] 手順2-0. ここまでは、上位ディレクトリにある"README.md"で作業を終えているはず。  
  * [x] 手順2-1. 当ファイル(`README.md`)の書き換えを行う。  
        ※ 開発環境を記録する。  
        ※ アルゴリズムの勉強用項目は隠しておく(`details`・`summary`)代わりに、基礎知識5種類の勉強用の項目は出しておく。  
  * [x] 手順2-2. `helloWorld.[言語用の拡張子]`のファイルを作り、おなじみ"Hello World."プログラムを作る。  
  * [ ] 手順2-3. main関数不要であれば、"**実行済み**"ディレクトリを削除すること。  
  * [ ] 手順2-4. コミットする。  
  * [ ] 手順3. 各ディレクトリで、5種類の"絶対的に勉強する一覧"を箇条書きごとに勉強する。  
    * 以下、5種類の内訳。  
      ※そのとき、(できる限り)プログラムファイルにモードラインを記載する。  
      ※チェックリストは上記にある。  
      変数  
      配列  
      条件分岐  
      繰り返し  
      関数  
  * [ ] 手順3-1. 箇条書きごとにコミット実施する。  
  * [ ] 手順4. 1つのプログラミング言語で、手順3の勉強1種類を終えた時に、次のプログラミング言語に移る。  
         (細かく分けることでやる気が維持される・・・はず)  
  * [ ] 手順4-1. 今回のプログラミング言語に戻ってきたことにより、次の箇条書きに移り、勉強を継続(再開)する。  
  * [ ] 手順5. 上記、5種類の基礎知識を終わるまで繰り返す。  
  * [ ] 手順6. 5種類の基礎知識終了にて、"study2programming"ブランチにマージする。  

</details>

<details><summary>アルゴリズム問題解決の作業手順</summary>


## 具体的なアルゴリズム問題解決前手順
基礎知識5種類を勉強するのと同じように、アルゴリズムの勉強にも以下の手順で進める。  

* 以下、手順。  
  * [x] 手順1. 勉強用のブランチに移動する(上記[目次](#algorithmTextbookLearnedinPythonContents)の1チャプター分専用ブランチとする)。  
  * [ ] 手順2. 当ファイル(`README.md`)の書き換えを行う。  
    [ ] アルゴリズムの勉強用に変更する。  
    [ ] アルゴリズムの勉強用項目を出すが、基礎知識5種類の勉強項目は隠す(`details`・`summary`)。  
  * [ ] 編集後、コミットする。  
  * [ ] 手順3. 各ディレクトリで、チャプタごとに勉強を進める。  
    ※そのとき、(できる限り)プログラムファイルに[モードライン](https://vim-jp.org/vim-users-jp/2009/06/02/Hack-20.html)を記載する。  
    ※チェックリストは上記にある。  
    Chapter 2 プログラミングの力を養う  
    Chapter 3 データ構造を学ぶ  
    Chapter 4 サーチ  
    Chapter 5 ソート  
    Chapter 6 ハッシュ  
    Chapter 7 さまざまなアルゴリズムを学ぶ  
    Chapter 8 アルゴリズムを見える化する  
  * [ ] 手順4. 1つのプログラミング言語で、手順3の勉強1種類(要は、1チャプタ分の子部分)を終えた時に、次のプログラミング言語に移る。  
  * [ ] 手順5. 1チャプタ分終了にて、"study2programming"ブランチにマージする。  

</details>


## 実際に作業する環境の状況確認

* 勉強環境。  
  * 勉強環境のコンパイルバージョン：javac 16  
```terminal
$ javac --version
javac 16.0.2
$ java --version
openjdk 16.0.2 2021-07-20
OpenJDK Runtime Environment Homebrew (build 16.0.2+0)
OpenJDK 64-Bit Server VM Homebrew (build 16.0.2+0, mixed mode, sharing)
$
```
["条件分岐"](#Conditional条件分岐sub)以降このバージョンを使う。  
※それまでは、Oracleバージョン13を使っていた。  

  * プログラムファイルの拡張子：`*.java`  
　　※Windowsに併せるならば拡張子は必須かな。  
  * 実行方式：コンパイラ方式  
  * 標準の文字コード(プログラムファイル)：UTF-8(BOMなし)  
    文字コード指定のコンパイル方法：`javac -encoding UTF-8 [ソースファイル名]`  
    文字コード指定のコンパイル方法：`javac -sjis UTF-8 [ソースファイル名]`  
  * 文字コードの扱い：
　　例）UTF-8・Unicode  
  * 文字区切り(行末記号)：セミコロン`;`  
  * インデント：フリーフォーマット  
  * 標準の出力関数：`System.out.println`・`System.out.print`  
  * 標準のフォーマット関数：  
　　例）`printf`など。
　　※必須記入項目ではなく、勉強途中での記載でも可とする。  
  * 1行コメント方法：`//`  
  * 複数行コメント方法：`/* 〜 */`  
  * javadocと言われるドキュメント自動生成のコメント方法：`/** 〜*/`  


### ハローワールドプログラム
以下、ハローワールドプログラム。
```java
class helloWorld {
	public static void main(String[] args){
		System.out.println("hello World.");
	}
}
```
インポート文がなくても色々使えるんだな。  

以下、コンパイル方法(及び実行)。
```terminal
$ javac helloWorld.java	←☆コンパイル実施。
$ ll
total 24
-rw-r--r--   1 hogebar  staff   426  8 21 16:16 helloWorld.class	←☆コンパイルでの生成ファイル。
drwxr-xr-x  10 hogebar  staff   320  8 21 16:13 基礎知識用の勉強/
-rw-r--r--   1 hogebar  staff   103  8 21 16:11 helloWorld.java
-rw-r--r--   1 hogebar  staff  3221  8 21 16:11 README.md
$ chmod 744 ./helloWorld.class	←☆実行権限を付与する。
$ java helloWorld	←☆コンパイル結果の実行ファイルを実行する。
hello World.
$
```
※クラス名とファイル名は同じ必要がある。  

以下、コンパイルせずに実行(他ファイル参照ない場合に有効)。
```terminal
$ ll
total 16
drwxr-xr-x  10 hogebar  staff   320  8 21 16:18 基礎知識用の勉強/
-rw-r--r--@  1 hogebar  staff   103  8 21 16:11 helloWorld.java
-rw-r--r--   1 hogebar  staff  3221  8 21 16:11 README.md
$ java helloWorld.java	←☆プログラムファイルそのものを実行する。
hello World.
$ ll	←☆クラスファイルなどの余分なものは生成されていない。
total 16
drwxr-xr-x  10 hogebar  staff   320  8 21 16:18 基礎知識用の勉強/
-rw-r--r--@  1 hogebar  staff   103  8 21 16:11 helloWorld.java
-rw-r--r--   1 hogebar  staff  3221  8 21 16:11 README.md
$
```

#### 一連のコンパイルから実行までの流れ
実行の流れを示すよりは、命名規則もどきの説明。  

* 以下、手順  
  1. ソースファイル名：\<クラス名\>.java  
  1. コンパイル実施：javac \<ソースファイル名\>  
  1. 生成されるクラス名：\<クラス名\>.class  
  1. 実行方法：java \<クラス名\>  

* 文字コード指定のコンパイル方法  
  様式：`javac -encoding [文字コード] [ソースファイル名]`  
  例）`javac -encoding UTF-8 hoge.java`  

### ※注意事項
「アルゴリズムを勉強することが目的」であるということを理解すること。  
しかし、やる気を維持するためにも1冊分を読了させることも目的としており、深掘りせずに進めることも考慮すること。  
要は、深く踏み込むか、流し読み程度に抑えるかどうかはそのときに決める。  

<a name="variable変数"></a>
<a name="arrangement配列"></a>
<a name="Conditional条件分岐"></a>
<a name="repetition繰り返し"></a>
<a name="function関数"></a>
<details><summary>基礎知識5種類の各項目</summary>

~~※ここの項目不要かな・・・。~~

基礎知識として5種類を勉強するが、その目的はアルゴリズムの勉強用であって、5種類を本格的に極めるためではない。  
そのため、1つ1つを最小限に絞り込み、1つを10分前後の勉強時間に収まるように気をつけること。  
※現時点で守れていないため、何とかして短い時間に抑え、アルゴリズムの勉強を本格的に勉強できるように考慮すること。  


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
<details><summary>実際の変数の勉強</summary>

### 変数
値の格納方法について。  
※複雑な説明はしない。  

* 絶対的に勉強する一覧  
  * [変数の宣言方法](#subVariable1)  
  * [変数への代入方法及び変数の利用](#subVariable2)  
    * [x] 代入演算子(`=`)  
  * [変数値の出力方法](#subVariable3)  
  * [データ型](#subVariable4)  
    * [x] 整数(`int`)  
    * [x] 浮動小数点型(`float`)  
    * [x] 文字型(`string`)  
      Javaでは`String`クラスになる。  
      また、`char`を扱わないことにする。  
    * [x] 真偽型(`bool`)  
      Javaでは`boolean`になる。  
  * [変数値を使った計算方法](#subVariable5)  
    * [x] 算術演算子  
      * [x] 足し算(`+`)  
      * [x] 引き算(`-`)  
      * [x] 掛け算(`*`)  
      * [x] 割り算(`/`)  
      * [ ] 累乗(`**`)  
        `Math.pow`を使う。  
      * [ ] 割り算の商(`//`)  
        Javaにはない？  
      * [x] 割り算の余り(`%`)  
  * [型変換(キャスト)方法](#subVariable6)  
    * [ ] 明示変換  

<a name="subVariable1"></a>
#### 変数
※使う前に宣言済みであること。  
様式：
`データ型 変数名;`  
例）
`int hoge;`  
複数同時宣言：
`int hoge, boo;`  

初期化様式：
`データ型 変数名 = 値;`  


**クラスを使ったデータ型の変数利用**  
様式：
`クラス名のデータ型 変数名`  
例）
`Integer hoge;`  
さらに値を代入するには、  
様式：`変数名 = new コンストラクタ( 引数1, 引数2, ・・・ );`  
例）
`hoge = new Integer( 20210821 );`  
※基本的に、コンストラクタは、クラス名のデータ型と同じ。  

1行にまとめる方法：
`Integer hoge = new Integer( 20210821 )`  
この生成方法では、下記で説明する演算子を使うことが出来ない。  


<a name="subVariable2"></a>
#### 変数への代入方法及び変数の利用
様式：
`変数名 = 値;`  
例）
`hoge = 20210821`  
複数同時代入：
`hoge = boo = 8484117924879`  
※この場合、全ての変数値は、全て同じになる(当たり前だが)。  

<a name="subVariable3"></a>
#### 変数値の出力方法
特に特殊な方法せずに、普通に引数に変数を渡せば出力してくれる。  

```java
class /* クラス名が日本語 */ 変数 {
	public static void main(String[] args){
		System.out.print("hello World.\n");
//		int hoge;	// error| エラー: 変数hogeは初期化されていない可能性があります
		int hoge = 1234;
		int boo = 20210821;

		System.out.println(hoge + boo );	// 20212055

	}
}
```
出力関数の引数ではあるが、変数同士を足している。  

<a name="subVariable4"></a>
#### データ型
通常のデータ型。  
|データ型|サイズ|範囲|備考|
|--------|------|----|----|
|int|4バイト|||
|char|2バイト|||
|float|4バイト|||
|string||||
|bool|1バイト||trueまたはfalse|
※`string`ではなく、`char`を使う？  
char型で文字列を扱えないのは不満なのだが、私の技術力不足ってコトだよね？  

クラスを使ったデータ型(上記のデータ型をクラスで再定義している)。  
|データ型|クラスでのデータ型|備考|
|--------|------------------|----|
|int|Integer|
|float|Float|
|char|Character|
|bool|Boolean|


<a name="subVariable5"></a>
#### 変数値を使った計算方法
※クラス名を使わない普通のデータ型で利用可能。  

|演算子|意味|備考|
|------|----|----|
|`+`|加算||
|`-`|減算||
|`*`|乗算||
|`/`|除算||
|`**`|累乗|`Math.pow`を使う。|
|`//`|除算の商|Javaにはない？|
|`%`|剰余演算||

※もし、クラス名のデータ型で生成した値を計算する場合などは、いったん普通のデータ型の変数に代入してからになる。  
例）
```java
Integer hoge = new Integer( 20210821 )
int boo = hoge.intValue();
boo = 1 + boo;
```

<a name="subVariable6"></a>
#### 型変換(キャスト)方法
様式：
`変数 = (データ型)変数名もしくは値;`  

計算結果をキャストする場合、
`int hoge = (int)(20.21/8.21);`
とするほうがいいだろう。  
※この場合の計算結果は、小数点部分が切り捨てられる。  


<a name="subVariable999"></a>
#### 変数での説明しない項目。

<details><summary>今回は勉強を見送る一覧</summary>

* [ ] 定数  
* [ ] データ型  
  * [ ] 整数(`long`など)  
  * [ ] 浮動小数点型(`double`など)  
  * [ ] 型推論  
    `var`
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

</details>

<a name="arrangement配列sub"></a>
<details><summary>実際の配列の勉強</summary>

### 配列
変数を連ならせる格納方法。  
今回のPythonではリストを配列と呼ぶ。  
※配列とリストを分けている場合はリストの勉強を後回しにし、配列がない状態でリストがある場合はリストを勉強する。  

* 絶対的に勉強する一覧  
  * [x] [配列の宣言方法](#subArrangement1)  
        [x] 要素とは。  
        [x] 要素数とは。  
        0から始まり、後から拡張は不可。  
        [x] 添え字とは。  
  * [ ] [配列への追加方法](#subArrangement2)  
    コレクションを使わない場合の配列への追加は不可。  
    ※追加の意味は何だった？(配列拡張？配列代入のこと？)  
  * [x] [二次元配列の宣言方法](#subArrangement3)  

ゼロから分かるJavaの勉強とは言え、配列の説明をしないのは可笑しいだろう。  

<a name="subArrangement1"></a>
#### 配列
添え字は0から始まる。  
様式：
`データ型[] 配列名 = new データ型[要素数]`  
例）
`int[] hoge = new int[10];`  

※毎度のことで当たり前だが、これは配列要素数だけの宣言に留まる。  

```java
class 配列 {
	public static void main(String[] args){

		// 以下2種類の配列宣言。
		int[] bar = {
					20210918,
					20210919,
					20210920,
					};	// int型宣言
		var hoge = new int[] {
					54755032,
					64546030,
					24330271,
					bar[1]
					};	// 型推論宣言

		System.out.println( bar[0] );	// 20210918
		System.out.println( hoge[1] );	// 64546030
		System.out.println( hoge.length );	// 4
	}
}
```

<a name="subArrangement2"></a>
#### 配列への追加方法
初期化宣言のみ(配列の拡張は不可)。  
様式：
`データ型[] 配列名 = { 要素1, 要素2, ・・・ };`  
例）
`int[] hoge = { 1, 2, 3, 4, };`  

<a name="subArrangement3"></a>
#### 二次元配列の宣言方法
様式：
`データ型[][] 2次元配列名 = new データ型[1次元目の配列要素数][2次元目の配列要素数];`  
例）

```java
class 二次元配列 {
	public static void main(String[] args){

		// 以下、2次元配列宣言のみ。
		int[][] hoge = new int[2][3];

		// 以下、2次元配列の初期化。
		int[][] bar = {
			{
				20210918,
				20210919,
			},
			{
				20210920,
				20210921,
			}
			};
		System.out.print(hoge[0][1]+ "\n");	// 0
		System.out.print(bar[0][0] + "\n");	// 20210918
		System.out.print(bar[1][0] + "\n");	// 20210920
	}
}
```

<a name="subArrangement999"></a>
#### 配列での説明しない項目。

<details><summary>今回は勉強を見送る一覧</summary>

* 配列の応用  
  * [ ] 3次元配列以上の宣言方法。  
    ジャグ配列宣言方法も。  
  * [ ] 配列を複製する方法。  
  * [ ] 配列からスライスを作成する方法。  

* 構造体  
  * [ ] 構造体の複製  
  * [ ] 構造体からのスライス作成  
  * [ ] 共用体  
  * [ ] 列挙体  

* コレクション(Collection)  
  * [ ] List  
    [ ] ArrayList  
    [ ] LinkedList  
    * 順序を持つ。  
    * 要素の重複可能。  
  * [ ] Set  
    [ ] HashSet  
    [ ] LinkedHashSet  
    [ ] TreeSet  
    * 要素の重複不可。  
  * [ ] Map  
    [ ] HashMap  
    [ ] TreeMap  
    * キーと値の組み合わせで管理する。  
    * キーの重複不可。  
  * [ ] Queue  
    [ ] ArrayDeque  
    [ ] LinkedList  
    * 先頭・末尾への要素に追加・削除あり  
    * 待ち行列・スタック用途  

* 旧式のコレクション  
  * Vector  
    ArrayList  
  * Stack  
    ArrayDeque  
  * Dictionary  
    HashMap  
  * Hashtable  
    HashMap  

</details>

</details>

<a name="Conditional条件分岐sub"></a>
<details><summary>実際の条件分岐の勉強</summary>

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

</details>

<a name="repetition繰り返しsub"></a>
<details><summary>実際の繰り返しの勉強</summary>

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

</details>

<a name="function関数sub"></a>
<details><summary>実際の関数の勉強</summary>

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

</details>

<details><summary>アルゴリズムの勉強項目詳細</summary>

基礎知識5種類の勉強終了後、ここを解放する。  

<a name="algorithmTextbookLearnedinPython"></a>
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

</details>

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
