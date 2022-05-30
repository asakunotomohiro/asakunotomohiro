# Java言語
ここは、プログラミング言語のJava言語を勉強するブランチになる。  


<a name="algorithmHowToUseTheBranch"></a>
## ブランチの利用方法
アルゴリズムの勉強用プログラミング言語の一つ。  
ここのブランチは、書籍のアルゴリズムを勉強するのに使う。  
また、具体的なアルゴリズムの種類は、下記書籍の[目次チャプター](#algorithmTextbookLearnedinPythonContents)に限定する。  
※そして、チャプターごとにブランチを分けていく。  


<a name="algorithmHowToStudy"></a>
## 勉強方法
オラクルの[Javaサイト](https://education.oracle.com/ja/java/java/pFamily_48)では勉強しづらい。  

以下のサイトを参考にする。  
* [Javaチュートリアル](https://docs.oracle.com/cd/E26537_01/tutorial/)  

全体的に、Pythonのアルゴリズムの勉強を今回のJavaに流用するため、ネットを駆使するしか無いように思う。  
Java難しい(他のもだけど)。  


<a name="algorithmDevelopmentEnvironment"></a>
## 開発環境
本当に基本的な部分のみ`MacVim`を使うことになるだろう(自動補完がうまく働かなければ普通にIDEを使う)。  
ある程度規模が大きくなった時に、`Visual Studio Code(VSCode)`に移行する。  
それとも`Eclipse`を使う？  
できる限り`MacVim`を使うつもりだが。  


<a name="algorithmCheckTheStatusOfTheActualWorkingEnvironment"></a>
<details><summary>実際に作業する環境の状況確認</summary>

* 勉強環境。  
  * 勉強環境のコンパイルバージョン：javac 17  
```terminal
$ javac --version
javac 17
$ java --version
java 17 2021-09-14 LTS
Java(TM) SE Runtime Environment (build 17+35-LTS-2724)
Java HotSpot(TM) 64-Bit Server VM (build 17+35-LTS-2724, mixed mode, sharing)
$
```
今回のアルゴリズムの勉強以降このバージョンを使う。  
※それまでは、openjdk16とOracleVer13を使っていた。  
Javaを16にしてから補完が効かなくなったように思う。  
そもそも公式の17を避ける理由もないしな・・・個人勉強範囲内だし・・・。  

  * プログラムファイルの拡張子：`*.java`  
  * 実行方式：コンパイラ方式  
  * 標準の文字コード(プログラムファイル)：UTF-8(BOMなし)  
    文字コード指定のコンパイル方法：`javac -encoding UTF-8 [ソースファイル名]`  
    文字コード指定のコンパイル方法：`javac -sjis UTF-8 [ソースファイル名]`  
  * 文字コードの扱い：
　　例）UTF-8・Unicode  
  * 文字区切り(行末記号)：セミコロン`;`  
  * インデント：フリーフォーマット  
  * 標準の出力関数：`System.out.println`・`System.out.print`  
  * 標準のフォーマット関数：`System.out.printf`  
　　※必須記入項目ではなく、勉強途中での記載でも可とする。  
  * 単数行コメント方法：`//`  
  * 複数行コメント方法：`/* ～ */`  
  * javadocと言われるドキュメント自動生成のコメント方法：`/** ～ */`  


<a name="algorithmHelloWorld"></a>
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
  1. ソースファイル名：[クラス名].java  
  1. コンパイル実施：javac [ソースファイル名]  
  1. 生成されるクラス名：[クラス名].class  
  1. 実行方法：java [クラス名]  

* 文字コード指定のコンパイル方法  
  様式：`javac -encoding [文字コード] [ソースファイル名]`  
  例）`javac -encoding UTF-8 hoge.java`  

</details>


<a name="algorithmTextbookLearnedinPythonBook"></a>
## 「[Pythonで学ぶアルゴリズムの教科書](https://book.impress.co.jp/books/1120101024)」
本の概要。  
> エンジニアの基礎体力を身につける  

<details><summary>基礎知識5種類の項目</summary>

※プログラミングに使う基礎知識を統一する(簡単に済ませられる量に絞り込む)。  
* 基礎知識5種類  
  * [x] [変数](#variable変数sub)  
  * [x] [配列](#arrangement配列sub)  
  * [x] [条件分岐](#Conditional条件分岐sub)  
  * [x] [繰り返し](#repetition繰り返しsub)  
  * [x] [関数](#function関数sub)  
    今回メソッドを関数と呼ぶ。  

</details>

<a name="algorithmTextbookLearnedinPythonContents"></a>
* [アルゴリズム勉強目次](#algorithmTextbookLearnedinPython)  
  * [x] Chapter 1 プログラミングの基礎知識  
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
  * [x] 手順2-3. main関数不要であれば、"**実行済み**"ディレクトリを削除すること。  
  * [x] 手順2-4. コミットする。  
  * [x] 手順3. 各ディレクトリで、5種類の"絶対的に勉強する一覧"を箇条書きごとに勉強する。  
    * 以下、5種類の内訳。  
      ※そのとき、(できる限り)プログラムファイルにモードラインを記載する。  
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

<details><summary>アルゴリズム問題解決の作業手順</summary>

## 具体的なアルゴリズム問題解決前手順
基礎知識5種類を勉強するのと同じように、アルゴリズムの勉強にも以下の手順で進める。  

* 以下、手順。  
  * [x] 手順1. 勉強用のブランチに移動する(上記[目次](#algorithmTextbookLearnedinPythonContents)の1チャプター分専用ブランチとする)。  
  * [x] 手順2. 当ファイル(`README.md`)の書き換えを行う。  
    [x] アルゴリズムの勉強用に変更する。  
    [x] アルゴリズムの勉強用項目を出すが、基礎知識5種類の勉強項目は隠す(`details`・`summary`)。  
  * [x] 編集後、コミットする。  
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


<a name="algorithmNotes"></a>
### ※注意事項
「アルゴリズムを勉強することが目的」であるということを理解すること。  
しかし、やる気を維持するためにも1冊分を読了させることも目的としており、深掘りせずに進めることも考慮すること。  
要は、深く踏み込むか、流し読み程度に抑えるかどうかはそのときに決める。  


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
      * 累乗(`**`)  
        `Math.pow`を使う。  
      * 割り算の商(`//`)  
        Javaにはない？  
      * [x] 割り算の余り(`%`)  
  * [型変換(キャスト)方法](#subVariable6)  
    * [x] 明示変換  


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
  * [配列への追加方法](#subArrangement2)  
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
  * [x] [単純分岐-"もし"1つ。](#subConditional1)  
    基本構造例：if  
  * [x] [多岐分岐-"もし"2つ以上。](#subConditional1)  
    基本構造例：if～else if～  
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
様式：
```java
if ( 条件式 ) {
	処理;
}
```

多岐分岐：
```java
if ( 条件式1 ) {
	処理A;
}
else if ( 条件式2 ) {
	処理B;
}
else {
	処理C;
}
```

以下、例）
```java
class 条件分岐 {
	public static void main(String[] args){
		int boo = 19;
		int bar = 20;

		if ( boo+1 == bar ) {
			System.out.print( "20 == 20：" );
			System.out.println( boo+1 == bar );	// 20 == 20：true
		}

		if ( boo == bar ) {
			System.out.print( "19 == 20：" );
			System.out.println( boo == bar );
		}
		else {
			System.out.print( "19 != 20：" );
			System.out.println( boo != bar );	// 19 != 20：true
		}

		if ( boo == bar ) {
			System.out.print( "19 == 20：" );
			System.out.println( boo == bar );
		}
		else if ( boo+1 != bar ) {
			System.out.print( "20 != 20：" );
			System.out.println( boo+1 != bar );
		}
		else {
			System.out.print( "19 < 20：" );
			System.out.println( boo < bar );	// 19 < 20：true
		}

	}
}
```


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

<details><summary>今回は勉強を見送る一覧</summary>

* 多岐分岐-条件にて複数から選ぶ。  
  基本構造例：switch  
  ※Java12で導入されたswitch式も説明する。  
  また、**break**を使い、抜け出す方法を説明する。  

* 関係演算子  
  * [ ] 三項演算子  
    `?:`  
  * [ ] 論理演算子  
    * [ ] 排他的論理和(`XOR`・`NOT OR`・`^`)  
    * [ ] 否定(`NOT`・`!`・`~`)  
    * [ ] ビット演算子(`&`・`|`)  

* 演算子の優先順位  

* 他の話題例  
  * [ ] 変数の比較  
  * [ ] 配列の比較  
    ちょっとやってみた。  

* ジャンプ  
  * [ ] goto文  

</details>

</details>

<a name="repetition繰り返しsub"></a>
<details><summary>実際の繰り返しの勉強</summary>

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
```java
for ( 初期化式; 継続条件式; 増減式 ) {
	処理;
}
```


<a name="subRepetition2"></a>
##### 指定回数条件での繰り返し：for( 条件式 )
様式：

以下、例）
```java
class 繰り返しfor {
	public static void main(String[] args){
		for ( int i = 0; 3 > i; i++ ) {
			System.out.println( i );
		}
		// 出力結果：
//					0
//					1
//					2
	}
}
```


<a name="subRepetition3"></a>
##### 指定回数条件での繰り返し：拡張for命令
様式：
```java
for ( データ型 仮変数:配列 ) {
	仮変数を使った処理;
}
```

以下、例）
```java
class 拡張for文 {
	public static void main(String[] args){
		String[] stringArray = new String[]{"hoge", "bar", "boo", };

		// 以下、拡張for文
		for ( String ii:stringArray ) {
			System.out.println( ii );
		}
		// 出力結果：
//					hoge
//					bar
//					boo
	}
}
```


<a name="subRepetition4"></a>
#### `for`の入れ子。

以下、例）
```java
class forの入れ子 {
	public static void main(String[] args){
		for ( int i = 0; 3 > i; i++ ) {
			for ( int j = 0; 3 > j; j++ ) {
				System.out.println( "i == " + i + ", j == " + j );
			}
		}
		// 出力結果：
//					i == 0, j == 0
//					i == 0, j == 1
//					i == 0, j == 2
//					i == 1, j == 0
//					i == 1, j == 1
//					i == 1, j == 2
//					i == 2, j == 0
//					i == 2, j == 1
//					i == 2, j == 2
	}
}
```


<a name="subRepetition5"></a>
#### ジャンプ処理
[break](#subRepetition5break)：直近のループを抜け出る。  
[continue](#subRepetition5continue)：ループの先頭にジャンプしてループを継続する。  

<a name="subRepetition5break"></a>
`break`例）
```java
class forからのbrak {
	public static void main(String[] args){
		String[] eachfor = new String[]{"hoge", "boo", "bar", };

		int kk = 0;
		for ( String ii:eachfor ) {
			for ( String jj:eachfor ) {
					System.out.println( kk + ": ii==" + ii + ": jj==" + jj );
					kk++;
			}
			kk = 0;
			if ( ii.equals("boo") ) {
				break;
			}
		}
		// 出力結果：
//					0: ii==hoge: jj==hoge
//					1: ii==hoge: jj==boo
//					2: ii==hoge: jj==bar
//					0: ii==boo: jj==hoge
//					1: ii==boo: jj==boo
//					2: ii==boo: jj==bar
	}
}
```
1つ目のループに**break**があり、**bar**を出力前に抜け出た。  
※2つ目のループは最後まで処理をしている。  

<a name="subRepetition5continue"></a>
`continue`例）
```terminal
class forからのcontinue {
	public static void main(String[] args){
		String[] eachcontinue = new String[]{"hoge", "bar", "boo", "Array", };

		for ( String ii:eachcontinue ) {
			if ( ii.equals("bar") ) {
				continue;
			}
			System.out.println( "ii==" + ii );
		}
		// 出力結果：
//					ii==hoge
//					ii==boo
//					ii==Array
	}
}
```
**bar**を出力する手前でループの先頭に戻っている。  
その後、処理を再開しているため、**bar**が出力されていない。  


<a name="subRepetition6"></a>
#### 真偽条件での繰り返し：while( 条件式 )
様式：
```java
while ( 条件式 ) {
	処理;
	抜け出す処理(条件式);
}
```


<a name="subRepetition7"></a>
#### 無限ループ
for様式：
`for (;;) {}`  

while様式：
`while ( 真になる条件 ) {}`  


<a name="subRepetition999"></a>
#### 繰り返しでの説明しない項目。

<details><summary>今回は勉強を見送る一覧</summary>

* [ ] 真偽条件での繰り返し  
  基本構造例：do～while( 条件式 )  
* **break**のラベル付きで抜け出る方法。  
* **continue**のラベル付きで抜け出る方法。  

</details>

</details>

<a name="function関数sub"></a>
<details><summary>実際の関数の勉強</summary>

### 関数
今回のJavaでは、メソッドを関数とする。  

* 絶対的に勉強する一覧  
  * [x] 使い回せるようにまとめること。  
    * [x] [引数と戻り値の組み合わせ。](#subFunction1)  
      [x] 引数無し-戻り値無し  
      [x] 引数あり-戻り値無し  
      [x] 引数無し-戻り値あり  
      [x] 引数あり-戻り値あり  
    * [スコープ](#subFunction2)  
      [x] グローバルスコープ変数  
      [x] ローカルスコープ変数  


<a name="subFunction1"></a>
#### 関数
様式：
```java
修飾子 戻り値のデータ型 メソッド名 ( 引数のデータ型1, 引数のデータ型2, ・・・ ) 例外処理 {
	処理;

	return 戻り値用変数など;
}
```
※クラス定義ではなく、メソッド定義を説明したい。このメソッドを関数とする。  

以下、引数無し-戻り値無し。
```java
class メソッド {
	public static void nofuncno() {
		// static を付けなければ、staticを付けた関数から呼べない。
		System.out.print("引数無し-戻り値無し\n");
	}

	public static void main(String[] args){
		// 以下、引数無しの戻り値なしの関数を呼び出す。
		nofuncno();	// 引数無し-戻り値無し

	}
}
```

以下、引数あり-戻り値無し。
```java
class メソッド {
	public static void nofuncint( int hoge ) {
		// static を付けなければ、staticを付けた関数から呼べない。
		System.out.printf("引数あり(%d)-戻り値無し\n", hoge);
	}

	public static void main(String[] args){
		// 以下、引数ありの戻り値なしの関数を呼び出す。
		nofuncint( 20210920 );	// 引数あり(20210920)-戻り値無し

	}
}
```

以下、引数無し-戻り値あり。
```java
class メソッド {
	public static int intfuncno() {
		// static を付けなければ、staticを付けた関数から呼べない。
		System.out.print("引数なし-戻り値あり\n");
		return 1234;
	}

	public static void main(String[] args){
		// 以下、引数無しの戻り値ありの関数を呼び出す。
		int retfunc = intfuncno();	// 引数なし-戻り値あり
		System.out.printf("引数無しの戻り値あり(%d)\n", retfunc);	// 引数あり(20210921)-戻り値あり

	}
}
```

以下、引数あり-戻り値あり。
```java
class メソッド {
	public static int intfuncint( int hoge ) {
		// static を付けなければ、staticを付けた関数から呼べない。
		System.out.printf("引数あり(%d)-戻り値あり\n", hoge);
		return 5678;
	}

	public static void main(String[] args){
		// 以下、引数ありの戻り値ありの関数を呼び出す。
		retfunc = intfuncint( 20210921 );	// 引数あり(20210921)-戻り値あり
		System.out.printf("引数ありの戻り値あり(%d)\n", retfunc);	// 引数ありの戻り値あり(5678)

	}
}
```

Javaの関数は使いにくい。  
と言うか、メソッドを関数と呼んで良いのか？  
しかし、クラスを関数と呼ぶには仰々しいよな。  

<a name="subFunction1class"></a>
<details><summary>今回はメソッドを関数と呼ぶため、クラスのことは封印する。</summary>

クラスの定義：
```java
修飾子 class クラス名 {
	フィールド定義(広域変数宣言);
	メソッド定義;
}
```

|修飾子|概要|
|------|----|
|`public`|全てのクラスから利用可能|
|`final`|継承を許可しない。|
|`abstract`|抽象クラス|
|`strictfp`|浮動小数点を環境に依存しない方法で演算する。|

</details>


<a name="subFunction2"></a>
#### スコープ
3種類あるが、そのうちフィールドスコープは[対象外](#subFunction1class)とする。  
* スコープ  
  * ローカル変数用スコープ  
    関数(メソッド)内で宣言された変数のこと。  
  * ブロックスコープ  
    括弧`{}`内で宣言された変数のこと(括弧から出たときに消滅)。  

```java
class スコープ {
	public static void bar() {
		int bar = 0;
		System.out.printf("引数無し-戻り値無し関数内の変数：%d\n", bar);
	}

	public static void main(String[] args){
		// 以下、関数呼び出し。
		bar();	// 引数無し-戻り値無し関数内の変数：0

		{
			int boo = 20210920;
			System.out.printf("ブロック内の変数：%d\n", boo);	// ブロック内の変数：20210920
		}
	}
}
```


<a name="subFunction999"></a>
#### 関数での説明しない項目。

<details><summary>今回は勉強を見送る一覧</summary>

* 標準的な関数  
  * [ ] 可変長引数  
  * [ ] 再帰関数  
  * [ ] 高階関数  
    変数の応用部分で説明する？  
* オブジェクト指向  
  * [ ] クラスの定義  
  * [ ] フィールド  
  * [x] メソッド  
    今回これを関数とした。  
  * [ ] コンストラクタ  
  * [ ] オーバーロード  
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
  ※例外処理(`try～except～finally`)をの説明をしている(いずれ基礎知識として勉強に組み込む必要がある？)。  
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

[メニューに戻る](#algorithmTextbookLearnedinPythonChapter2)  


<a name="findTheAverageValueChapter2"></a>
#### 平均値を求める。
勉強内容はPythonと基本同じ。  
それをJava用に移植する。  

* ルール。  
  * 点数を配列で定義する。  
    `int[] score = { 70, 98, 92, 88, 64, };`  
    Python用配列：`score = [70, 98, 92, 88, 64]`  
    Perl用配列：`my @score = (70, 98, 92, 88, 64);`  
    vimScript9用配列：`var score = [70, 98, 92, 88, 64]`  
    C言語用配列：`int score[] = {70, 98, 92, 88, 64};`  
    Go言語用配列：`var score = [...]int {70, 98, 92, 88, 64};`  
  * `for`を用いる。  

<details><summary>展開。</summary>

以下、プログラム。
```java
class average {
	public static void main(String[] args){
		int[] score = { 70, 98, 92, 88, 64, };
		var total = 0;
		// for( int ii = 0; score.length > ii; ii++ ) {	←☆下記の方法でも問題ない(こちらのほうが古典かな)。
		// 	total += score[ii];
		// }
		for( int value:score ) {
			total += value;
		}
		//var average = total / (float)score.length;	←☆片方だけの型変換のみで問題ない。
		var average = (float)total / score.length;
		System.out.printf("合計点 %d\n", total);	// 合計点 412
		System.out.printf("平均点 %f\n", average);	// 平均点 82.400002	←☆余計な小数点部分を切り捨てるべきか？
	}
}
```

</details>

[メニューに戻る](#algorithmTextbookLearnedinPythonChapter2)  


<a name="addFrom1tonChapter2"></a>
#### 1からnまで足し合わせる。
勉強内容はPythonと基本は同じ。  
それをJava用に移植するだけのこと。  

* ルール1もPythonと同じ。  
  * `for`を用いる。  
  * 関数は定義しない。  
    私のルールは、必ず関数定義をすることに決めているため、ここだけ無視する。  

<details><summary>展開(ルール1)。</summary>

以下、プログラム。
```java
class addup1 {
	static void addup1(){
		var total = 0;
		for( int ii = 0; 10 >= ii; ii++ ) {
			total += ii;
		}
		System.out.printf("合計点 %d\n", total);	// 合計点 55
	}
	public static void main(String[] args){
		addup1();
	}
}
```

</details>

* ルール2もPythonと同じ。  
  * nまでの値を関数の引数で受け取る。  
  * 関数内で合算した結果をreturnで返す。  

<details><summary>展開(ルール2)。</summary>

以下、ルール2のプログラム。
```java
class addup2 {
	static void addup2(int number){
		var total = 0;
		for( int ii = 0; number >= ii; ii++ ) {
			total += ii;
		}
		System.out.printf("合計点 %d\n", total);	// 合計点 55
	}
	public static void main(String[] args){
		addup2(10);
	}
}
```
ルール1ができれば、ルール2も簡単にこなせる・・・よね。  
数字以外が来た場合どうするかとか、何も引数に渡さない場合どうするかとか、引数が記号の場合どうするかとか・・・。  
後半はそもそもできない(考慮不要)か。  
しかし、とんでもない天文学的数字の場合どうするかとか・・・。  

</details>

* ルール3もPythonと同じ。  
  * 工夫して計算する。  
  * (初めの数+終わりの数)*(足し合わせる個数/2)  

<details><summary>展開(ルール3)。</summary>

以下、ルール3のプログラム。
```java
class addup3 {
	static int addup3(int number){
		var total = (1 + number) * number / 2;

		return total;
	}
	public static void main(String[] args){
		var total = addup3(10);
		System.out.printf("合計点 %d\n", total);	// 合計点 55
	}
}
```

</details>

[メニューに戻る](#algorithmTextbookLearnedinPythonChapter2)  

<a name="outputTheMultiplicationTableChapter2"></a>
#### 九九の式を出力する。
Pythonでやったように、九九の式を出すのではなく、九九表を出すことにする。  
ルールはPythonと同じ。  
※二重[ループ](#repetition繰り返し)[(forの入れ子)](#subRepetition4)を使う。  

* 作業ルール。  
  * 二重ループを使う。  

<details><summary>2重ループのサンプルプログラム(for編)。</summary>

```java
class loop {
	public static void main(String[] args){
		for( int ii = 0; 3 > ii; ii++ ) {
			for( int jj = 0; 3 > jj; jj++ ) {
				System.out.printf("ii[%d], jj[%d]\n", ii, jj);
			}
		}
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

</details>

<details><summary>縦に並ぶ出力プログラム。</summary>

以下、縦に並ぶ出力プログラム。
```java
class kuku1 {
	static void kuku(){
		for( int ii = 1; 10 > ii; ii++ ) {
			for( int jj = 1; 10 > jj; jj++ ) {
				System.out.printf("%2d x%2d=%2d\n", ii, jj, ii*jj);
			}
		}
	}

	public static void main(String[] args){
		kuku();
	}
}
```

以下、出力結果。
```terminal
 1 x 1= 1
 1 x 2= 2
 1 x 3= 3
 1 x 4= 4
 1 x 5= 5
 1 x 6= 6
 1 x 7= 7
 1 x 8= 8
 1 x 9= 9
 2 x 1= 2
 2 x 2= 4
 2 x 3= 6
 2 x 4= 8
 2 x 5=10
 2 x 6=12
 2 x 7=14
 2 x 8=16
 2 x 9=18
 3 x 1= 3
 3 x 2= 6
 3 x 3= 9
 3 x 4=12
 3 x 5=15
 3 x 6=18
 3 x 7=21
 3 x 8=24
 3 x 9=27
 4 x 1= 4
 4 x 2= 8
 4 x 3=12
 4 x 4=16
 4 x 5=20
 4 x 6=24
 4 x 7=28
 4 x 8=32
 4 x 9=36
 5 x 1= 5
 5 x 2=10
 5 x 3=15
 5 x 4=20
 5 x 5=25
 5 x 6=30
 5 x 7=35
 5 x 8=40
 5 x 9=45
 6 x 1= 6
 6 x 2=12
 6 x 3=18
 6 x 4=24
 6 x 5=30
 6 x 6=36
 6 x 7=42
 6 x 8=48
 6 x 9=54
 7 x 1= 7
 7 x 2=14
 7 x 3=21
 7 x 4=28
 7 x 5=35
 7 x 6=42
 7 x 7=49
 7 x 8=56
 7 x 9=63
 8 x 1= 8
 8 x 2=16
 8 x 3=24
 8 x 4=32
 8 x 5=40
 8 x 6=48
 8 x 7=56
 8 x 8=64
 8 x 9=72
 9 x 1= 9
 9 x 2=18
 9 x 3=27
 9 x 4=36
 9 x 5=45
 9 x 6=54
 9 x 7=63
 9 x 8=72
 9 x 9=81
```

</details>

<details><summary>適度に折り返された表示形式。</summary>

以下、四角形っぽい表示に置き換えたプログラム。
```java
class kuku2 {
	static void kuku(){
		for( int ii = 1; 10 > ii; ii++ ) {
			for( int jj = 1; 10 > jj; jj++ ) {
				System.out.printf(" %dx%d=%2d", jj, ii, ii*jj);
			}
			System.out.println("");	// 改行出力
		}
	}

	public static void main(String[] args){
		kuku();
	}
}
```
まま見やすくなった。  

以下、出力結果。
```terminal
 1x1= 1 2x1= 2 3x1= 3 4x1= 4 5x1= 5 6x1= 6 7x1= 7 8x1= 8 9x1= 9
 1x2= 2 2x2= 4 3x2= 6 4x2= 8 5x2=10 6x2=12 7x2=14 8x2=16 9x2=18
 1x3= 3 2x3= 6 3x3= 9 4x3=12 5x3=15 6x3=18 7x3=21 8x3=24 9x3=27
 1x4= 4 2x4= 8 3x4=12 4x4=16 5x4=20 6x4=24 7x4=28 8x4=32 9x4=36
 1x5= 5 2x5=10 3x5=15 4x5=20 5x5=25 6x5=30 7x5=35 8x5=40 9x5=45
 1x6= 6 2x6=12 3x6=18 4x6=24 5x6=30 6x6=36 7x6=42 8x6=48 9x6=54
 1x7= 7 2x7=14 3x7=21 4x7=28 5x7=35 6x7=42 7x7=49 8x7=56 9x7=63
 1x8= 8 2x8=16 3x8=24 4x8=32 5x8=40 6x8=48 7x8=56 8x8=64 9x8=72
 1x9= 9 2x9=18 3x9=27 4x9=36 5x9=45 6x9=54 7x9=63 8x9=72 9x9=81
```

</details>

以下、学生時代から親しんできた九九表プログラム。

<details><summary>展開。</summary>

```java
class kuku {
	static void kuku(){
		for( int ii = 1; 10 > ii; ii++ ) {
			for( int jj = 1; 10 > jj; jj++ ) {
				System.out.printf("%3d", ii*jj);
			}
			System.out.println("");
		}
	}

	public static void main(String[] args){
		kuku();
	}
}
```

以下、出力結果。
```terminal
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
これぞ九九表だろう。  

</details>

[メニューに戻る](#algorithmTextbookLearnedinPythonChapter2)  


<a name="findAPrimeNumberChapter2"></a>
#### 素数を求める。
素数とは、1とその数以外に約数を持たない2以上の自然数のこと。  

Pythonに倣い、試す数は**2～2分のn**までの数で割ることを調べる方法をとる。  
例えば、10を調べる場合、その半分より大きい数(**6**・**7**・**8**・**9**)では、10を割ることが出来ない。  
そのことを利用した方法で素数を求める。  
後日、[エラトステネスの篩](#eratosthenesSieveChapter2)を使った効率のいいアルゴリズムを勉強する。  

* 素数を求めるルール  
  * 二重ループを使う。  
  * 2から2分のnまでの数で割る。  
    ※それらの数で割り切れなければ素数。  

<details><summary>展開。</summary>

以下、プログラム。
```java
class prime {
	public static void main(String[] args){
		for( int ii = 2; 101 > ii; ii++ ){
			int half = ii / 2;	// 商を求める。
			boolean flag = true;
			for( int jj = 2; half >= jj; jj++ ){
				if(( ii % jj ) == 0 ){
					// 剰余算にて、割り切れるならば、出力対象外にする。
					flag = false;
					break;
				}
			}
			if( flag == true ) {
				System.out.printf("%d,", ii);
			}
		}
	}
}
```

以下、出力結果。
```terminal
2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,
```

</details>

[メニューに戻る](#algorithmTextbookLearnedinPythonChapter2)  


<a name="findTheFactorialOfNChapter2"></a>
#### nの階乗を求める。
**階乗とは**
1からnまでの全ての整数の積をnの階乗という。  

<a name="findTheFactorialOfNChapter2recursionsample"></a>
<details><summary>再帰用プログラム例。</summary>

以下、サンプルプログラム。
```java
class factorial {
	public static void main(String[] args){
		// 10の階乗を求める。
		int total = 10;
		for( int ii = 9; 0 < ii; ii-- ) {	←☆9から0になるまでデクリメントを行う。
			total *= ii;
		}
		System.out.printf("10!：%d\n", total);
		// 10!：3628800	←☆10の階乗になっている。
	}
}
```

</details>

**再帰関数とは**
関数内から自身の関数を呼び出すことを再帰処理という。
また、その呼び出す仕組みの関数を再帰関数という。  

<a name="findTheFactorialOfNChapter2factorialsample"></a>
<details><summary>再帰用プログラム例。</summary>

以下、再帰関数例）
```java
class factorial {
	static int factorialsample(int count){
		if( count > 0 ) {
			System.out.printf("再帰関数%2d回目の実行\n", count);
			factorialsample( count - 1 );
		}

		return count;
	}

	public static void main(String[] args){
		factorialsample(10);	// 再帰
	}
}
```

以下、実行結果。
```terminal
再帰関数10回目の実行
再帰関数 9回目の実行
再帰関数 8回目の実行
再帰関数 7回目の実行
再帰関数 6回目の実行
再帰関数 5回目の実行
再帰関数 4回目の実行
再帰関数 3回目の実行
再帰関数 2回目の実行
再帰関数 1回目の実行
```

</details>

* ルール1  
  再帰関数を使わない。  
  * 関数定義は行わない(私のプログラムでは行う)。  
  * `for`を使う。  

<details><summary>展開(ルール1)。</summary>

以下、ルール1のプログラム。
```java
class factorial {
	static int factorial1(final int MAX){
		// 階乗を求める関数。
		//	この関数は、サンプル関数に引数を受け取る形にしただけのもの。
		int count = 1;
		for( int ii = MAX; 0 < ii; ii-- ) {
			count *= ii;
		}

		return count;
	}

	public static void main(String[] args){
		int factorial = factorial1(10);
		System.out.printf("10!：%d\n", factorial);
	}
}
```

以下、実行結果。
```terminal
10!：3628800
```

</details>

* ルール2  
  再帰関数を使う。  
  * 再帰関数の定義ルール  
    * `n = 0`
      **n! = 1**  
    * `n > 0`
      **n! = n * (n-1) * (n-2) * ・・・ * 2 * 1**
      nから1引いた数を掛け、さらに1づつ引き続けながらnが1にまるまで続ける。  

<details><summary>展開(ルール2)。</summary>

以下、ルール2のプログラム。
```java
class factorial {
	static int factorial2(int count){
		// 階乗を求める関数。
		int total = 0;
		if( count == 0 ) {
			total = 1;
		}
		else {
			total = count * factorial2(count - 1);
		}

		return total;
	}

	public static void main(String[] args){
		int factorial2 = factorial2(10);
		System.out.printf("10!：%d\n", factorial2);
	}
}
```

以下、実行結果。
```terminal
10!：3628800
```

</details>

[メニューに戻る](#algorithmTextbookLearnedinPythonChapter2)  


<a name="eratosthenesSieveChapter2"></a>
#### エラトステネスの篩
効率よく[素数](#findAPrimeNumberChapter2)を求めることができるアルゴリズムのこと。  

<details><summary>最初の見た目。</summary>

以下、篩いにかける表プログラム。
```java
class prime_eratosthenes {
	public static void main(String[] args){
		// 表の表示。
		for( int ii = 0, count = 10; 100 > ii; ii++ ) {
			System.out.printf("%3d", ii);
			count--;
			if( count == 0 ) {
				System.out.printf("\n");
				count = 10;
			}
		}
	}
}
```
0から99までの整数から素数を識別するため、まずは、その整数を並べた。  

以下、出力結果。
```terminal
  0  1  2  3  4  5  6  7  8  9
 10 11 12 13 14 15 16 17 18 19
 20 21 22 23 24 25 26 27 28 29
 30 31 32 33 34 35 36 37 38 39
 40 41 42 43 44 45 46 47 48 49
 50 51 52 53 54 55 56 57 58 59
 60 61 62 63 64 65 66 67 68 69
 70 71 72 73 74 75 76 77 78 79
 80 81 82 83 84 85 86 87 88 89
 90 91 92 93 94 95 96 97 98 99
```

</details>

<details><summary>プログラム展開。</summary>

以下、プログラム。
```java
class prime_eratosthenes {
	static int tablecreate(int[] table) {
		// 篩いテーブル作成。
		for( int ii = 0; 100 > ii; ii++ ) {
			//table[ii] = true;
			table[ii] = ii;
		}
		table[0] = 999;	// falseのつもり。
		table[1] = 999;	// falseのつもり。
		// 篩いテーブル内容表示。
		for( int ii=0, jj=0; 100 > ii; ii++, jj++ ) {
			if( jj == 10 ) {
				System.out.printf("\n");
				jj=0;
			}
			if( table[ii] == 999 ) {
				System.out.printf("  /");
			}
			else{
				System.out.printf("%3d", table[ii]);
			}
		}

		return 0;
	}

	static int eratosthenesSieveProcess(int[] table, int start) {
		// エラトステネスの篩を処理する関数
		System.out.printf("%dの倍数をふるい落とす。\n", start);
		for( int ii = start + start; 100 > ii; ii += start ) {
			table[ii] = 999;
		}

		return 0;
	}

	static int eratosthenesSieve(int[] table) {
		// エラトステネスの篩を表示する関数。
		for( int ii=0, jj=0; 100 > ii; ii++, jj++ ) {
			if( jj == 10 ) {
				System.out.printf("\n");
				jj=0;
			}
			if( table[ii] == 999 ) {
				System.out.printf("  /");
			}
			else{
				System.out.printf("%3d", table[ii]);
			}
		}

		return 0;
	}

	public static void main(String[] args){
		int[] table = new int[10*10];	// 10x10のテーブル作成(1次元配列)。
		tablecreate(table);	// テーブル作成後に表示する。
		for( int ii = 2; 10 > ii; ii++ ) {
			if( table[ii] == 999 ) {
				continue;
			}
			System.out.printf("\n-------\n");
			eratosthenesSieveProcess(table, ii);
			eratosthenesSieve(table);
		}
	}

}
```

</details>

<details><summary>出力結果展開。</summary>

以下、出力結果。
```terminal
  /  /  2  3  4  5  6  7  8  9
 10 11 12 13 14 15 16 17 18 19
 20 21 22 23 24 25 26 27 28 29
 30 31 32 33 34 35 36 37 38 39
 40 41 42 43 44 45 46 47 48 49
 50 51 52 53 54 55 56 57 58 59
 60 61 62 63 64 65 66 67 68 69
 70 71 72 73 74 75 76 77 78 79
 80 81 82 83 84 85 86 87 88 89
 90 91 92 93 94 95 96 97 98 99
-------
2の倍数をふるい落とす。
  /  /  2  3  /  5  /  7  /  9
  / 11  / 13  / 15  / 17  / 19
  / 21  / 23  / 25  / 27  / 29
  / 31  / 33  / 35  / 37  / 39
  / 41  / 43  / 45  / 47  / 49
  / 51  / 53  / 55  / 57  / 59
  / 61  / 63  / 65  / 67  / 69
  / 71  / 73  / 75  / 77  / 79
  / 81  / 83  / 85  / 87  / 89
  / 91  / 93  / 95  / 97  / 99
-------
3の倍数をふるい落とす。
  /  /  2  3  /  5  /  7  /  /
  / 11  / 13  /  /  / 17  / 19
  /  /  / 23  / 25  /  /  / 29
  / 31  /  /  / 35  / 37  /  /
  / 41  / 43  /  /  / 47  / 49
  /  /  / 53  / 55  /  /  / 59
  / 61  /  /  / 65  / 67  /  /
  / 71  / 73  /  /  / 77  / 79
  /  /  / 83  / 85  /  /  / 89
  / 91  /  /  / 95  / 97  /  /
-------
5の倍数をふるい落とす。
  /  /  2  3  /  5  /  7  /  /
  / 11  / 13  /  /  / 17  / 19
  /  /  / 23  /  /  /  /  / 29
  / 31  /  /  /  /  / 37  /  /
  / 41  / 43  /  /  / 47  / 49
  /  /  / 53  /  /  /  /  / 59
  / 61  /  /  /  /  / 67  /  /
  / 71  / 73  /  /  / 77  / 79
  /  /  / 83  /  /  /  /  / 89
  / 91  /  /  /  /  / 97  /  /
-------
7の倍数をふるい落とす。
  /  /  2  3  /  5  /  7  /  /
  / 11  / 13  /  /  / 17  / 19
  /  /  / 23  /  /  /  /  / 29
  / 31  /  /  /  /  / 37  /  /
  / 41  / 43  /  /  / 47  /  /
  /  /  / 53  /  /  /  /  / 59
  / 61  /  /  /  /  / 67  /  /
  / 71  / 73  /  /  /  /  / 79
  /  /  / 83  /  /  /  /  / 89
  /  /  /  /  /  /  / 97  /  /
```

</details>

[メニューに戻る](#algorithmTextbookLearnedinPythonChapter2)  


<a name="understandnAryNotationChapter2"></a>
#### n進法を理解する。
**x進数**は、一般用語。  
[ビット演算(`&`・`|`・`^`・`~`)](#learnBitwiseOperationsChapter4)は、別の機会。  

<details><summary>展開。</summary>

以下、プログラム。
```java
class basenumber {
	public static void main(String[] args){
		System.out.printf("%d\n", 255);	// 255	←☆10進数。
		System.out.printf("%d\n", 0b11111111);	// 255	←☆2進数。
		System.out.printf("%d\n", 0377);	// 255	←☆8進数。
		System.out.printf("%d\n", 0xff);	// 255	←☆16進数。
	}
}
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


## ※Gitのマージルール
study2programmingに取り込むときのマージは、3方向マージ(`--no-ff`)を使う。  

* [x] "study2programming"にマージする時のルール。  
  * [x] 誤字脱字程度のコミットはスカッシュしたい。  
  * [ ] マージ後"study2programming"をPushする。  
    ※masterにマージすることはない。  
  * [ ] マージごとにタグ付けをする(そしてPush実施)。  

* 例外としてmasterに取り込む場合は、チェリーピッキングでピンポイントに必要最小限のコミットのみを取り込む(しつこいが、masterに取り込むことはしたくない)。  
  言いたいことは、履歴を複数にしたくないと言うこと。  


以上。
<!-- vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=markdown expandtab: -->
