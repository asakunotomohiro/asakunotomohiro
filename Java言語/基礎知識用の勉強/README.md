# Java言語
ここは、プログラミング言語のJava言語の基礎知識を勉強するブランチになる。  

## ブランチの利用方法

## 勉強方法
オラクルの[Java](https://education.oracle.com/ja/java/java/pFamily_48)で勉強しづらく、[Let'sプログラミング-Java入門](https://www.javadrive.jp/start/)を利用するのは負けた気がする。  

と言うことで、購入書籍を使い、Javaの勉強を進める。  
とは言え、無茶苦茶古いため、意固地になって使う必要があるのかどうかも疑問だが・・・。  
[楽しく学ぶJava入門](https://www.impressrd.jp/news/detail/451)の合本(7日分を1冊にまとめてある)を利用する。  
[1日目](https://nextpublishing.jp/book/6437.html)の出版は2015年のようだ。  
だからなのか、**System.in.read**などは現在で非推奨関数になっており、コンパイルエラーが発生する。  
そのぐらいの古い出版物にまで成り下がっている。  
しかし、アルゴリズムの勉強用に買い増すというのは贅沢というか、もったいない。  
そこまで踏み込むことをしないため、問題ないだろうと判断する。  
それにしてもひどい。
1日目の3時間目までの説明はほぼ無駄なぐらい今回に関係の無い説明だった(4時間目以降は、プログラミング未経験者は満足する内容だと思う)。  


## 開発環境
できる限り`MacVim`を使うつもりだが、自動補完がうまく働かなければ普通にIDEを使うと思う。  
大丈夫だろうけどね。  


## Pythonで学ぶアルゴリズムの教科書
簡単なプログラミングに使う基礎知識を統一する。  

* 基礎知識5種類  
  * [ ] [変数](#variable変数)  
  * [ ] [配列](#arrangement配列)  
  * [ ] [条件分岐](#Conditional条件分岐)  
  * [ ] [繰り返し](#repetition繰り返し)  
  * [ ] [関数](#function関数)  

## 具体的な基礎知識
何はともあれ、まずは、"Hello World"を表示するプログラムを作る。  
そのため、以下の手順で勉強を進めることにする。  

* 以下、手順。  
  * [x] 手順1. 勉強用のブランチに移動する。  
  * [x] 手順2. ルートディレクトリのひな形ディレクトリをコピーしてくる。  
  * [x] 手順3. コピーしてきたディレクトリ名を"基礎知識用の勉強"に変更する。  
  * [x] 手順3-0. ここまでは、上位ディレクトリにある"README.md"で作業を終えているはず。  
  * [x] 手順3-1. 当ファイル(`README.md`)の書き換えを行う。  
        ※ **上位ディレクトリにある"README.md"** は触らない。  
        ※勉強項目は記載するが、実際の勉強は記載しないことにする(見にくくて仕方ない)。  
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

* 以下、勉強環境。  
  * 勉強環境のコンパイルバージョン：javac 13  
```terminal
$ javac -version
javac 13
$ java -version
java version "13" 2019-09-17
Java(TM) SE Runtime Environment (build 13+33)
Java HotSpot(TM) 64-Bit Server VM (build 13+33, mixed mode, sharing)
$
```

  * プログラムファイルの拡張子：`*.java`  
  * 実行方式：コンパイラ方式  
  * 標準の文字コード(プログラムファイル)：UTF-8(BOMなし)  
    文字コード指定のコンパイル方法：`javac -encoding UTF-8 [ソースファイル名]`  
    文字コード指定のコンパイル方法：`javac -sjis UTF-8 [ソースファイル名]`  
  * 文字区切り(行末記号)：セミコロン`;`  
  * インデント：フリーフォーマット  
  * 標準の出力関数：`System.out.println`・`System.out.print`  
  * コメント方法：`//`・`/*〜*/`・`/** 〜*/`  
    三つ目のコメント方法は、javadocと言われるドキュメント自動生成の方法。  

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
-rw-r--r--   1 asakunotomohiro  staff   426  8 21 16:16 helloWorld.class	←☆コンパイルでの生成ファイル。
drwxr-xr-x  10 asakunotomohiro  staff   320  8 21 16:13 基礎知識用の勉強/
-rw-r--r--   1 asakunotomohiro  staff   103  8 21 16:11 helloWorld.java
-rw-r--r--   1 asakunotomohiro  staff  3221  8 21 16:11 README.md
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
drwxr-xr-x  10 asakunotomohiro  staff   320  8 21 16:18 基礎知識用の勉強/
-rw-r--r--@  1 asakunotomohiro  staff   103  8 21 16:11 helloWorld.java
-rw-r--r--   1 asakunotomohiro  staff  3221  8 21 16:11 README.md
$ java helloWorld.java	←☆プログラムファイルそのものを実行する。
hello World.
$ ll	←☆クラスファイルなどの余分なものは生成されていない。
total 16
drwxr-xr-x  10 asakunotomohiro  staff   320  8 21 16:18 基礎知識用の勉強/
-rw-r--r--@  1 asakunotomohiro  staff   103  8 21 16:11 helloWorld.java
-rw-r--r--   1 asakunotomohiro  staff  3221  8 21 16:11 README.md
$
```

### 一連のコンパイルから実行までの流れ
実行の流れを示すよりは、命名規則もどきの説明。  

* 以下、手順  
  1. ソースファイル名：\<クラス名\>.java  
  1. コンパイル実施：javac \<ソースファイル名\>  
  1. 生成されるクラス名：\<クラス名\>.class  
  1. 実行方法：java \<クラス名\>  

### ※注意事項
基礎知識として、5種類を勉強するが、その目的はアルゴリズムの勉強用であって、5種類を本格的に極めるためではない。  
そのため、1つ1つを最小限に絞り込み、1つを10分前後の勉強時間に収まるように気をつけること。  

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
  * [変数への代入方法](#subVariable2)  
    * [x] 代入演算子(`=`)  
  * [変数値の出力方法](#subVariable3)  
  * [代入した変数の利用方法](#subVariable4)  
  * [データ型](#subVariable5)  
    * [x] 整数(`int`)  
    * [x] 浮動小数点型(`float`)  
    * [x] 文字型(`string`)  
      Javaでは`String`クラスになる。  
      また、`char`を扱わないことにする。  
    * [x] 真偽型(`bool`)  
      Javaでは`boolean`になる。  
  * [変数値を使った計算方法](#subVariable6)  
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
  * [型変換(キャスト)方法](#subVariable7)  
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
#### 変数への代入方法
様式：
`変数名 = 値;`  
例）
`hoge = 20210821`  
複数同時代入：
`hoge = boo = 8484117924879`  
※この場合、全ての変数値は、全て同じになる(当たり前だが)。  

<a name="subVariable3"></a>
<a name="subVariable4"></a>
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

<a name="subVariable5"></a>
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


<a name="subVariable6"></a>
#### 変数値を使った計算方法
※クラス名を使わない普通のデータ型で利用可能。  

|演算子|意味|備考|
|------|----|----|
|`+`|加算||
|`-`|減算||
|`*`|乗算||
|`/`|除算||
|`%`|剰余演算||

※もし、クラス名のデータ型で生成した値を計算する場合などは、いったん普通のデータ型の変数に代入してからになる。  
例）
```java
Integer hoge = new Integer( 20210821 )
int boo = hoge.intValue();
boo = 1 + boo;
```

<a name="subVariable7"></a>
#### 型変換(キャスト)方法
様式：
`変数 = (データ型)変数名もしくは値;`  

計算結果をキャストする場合、
`int hoge = (int)(20.21/8.21);`
とするほうがいいだろう。  
※この場合の計算結果は、小数点部分が切り捨てられる。  


<a name="subVariable999"></a>
#### 変数での説明しない項目。

<a name="arrangement配列sub"></a>
### 配列
変数を連ならせる格納方法。  
今回のPythonではリストを配列と呼ぶ。  
※配列とリストを分けている場合はリストの勉強を後回しにし、配列がない状態でリストがある場合はリストを勉強する。  

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

<a name="subArrangement3"></a>
#### 二次元配列の宣言方法

<a name="subArrangement999"></a>
#### 配列での説明しない項目。

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

<a name="subConditional3"></a>
#### 比較演算子

<a name="subConditional999"></a>
#### 条件分岐での説明しない項目。

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

<a name="subRepetition3"></a>
##### 指定回数条件での繰り返し：拡張for命令

<a name="subRepetition4"></a>
#### `for`の入れ子。

<a name="subRepetition5"></a>
#### ジャンプ処理

<a name="subRepetition6"></a>
#### 真偽条件での繰り返し：while( 条件式 )

<a name="subRepetition7"></a>
#### 無限ループ

<a name="subRepetition999"></a>
#### 繰り返しでの説明しない項目。

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
基本：
```java
class [クラス名] {
	public static void main(String[] args) {
		何かしらの処理。
	}
}
```


<a name="subFunction2"></a>
#### スコープ

<a name="subFunction999"></a>
#### 関数での説明しない項目。



## Gitのマージルール
個々の言語ごとにブランチをそれぞれ作成する。  
そのブランチで作業する。  
以下、流れとして、、、

* ブランチ作成などの初期作業。  
  1. [ ] 対象言語のブランチ作成  
  1. [ ] そのブランチで勉強する。  
  1. [ ] 切りの良い場所でコミット実施(1日1回は最低でもコミットしたい)。  

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
