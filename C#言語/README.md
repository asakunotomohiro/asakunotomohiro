# C#言語
ここは、プログラミング言語のC#言語を勉強するブランチになる。  

## ブランチの利用方法
まずは、アルゴリズムの勉強。  

### Pythonで学ぶアルゴリズムの教科書
簡単なプログラミングに使う基礎知識を統一する。  

* 基礎知識5種類  
  * [ ] [変数](#variable変数)  
  * [ ] [配列](#arrangement配列)  
  * [ ] [条件分岐](#Conditional条件分岐)  
  * [ ] [繰り返し](#repetition繰り返し)  
  * [ ] [関数](#function関数)  

## 勉強方法
勉強するプログラミング言語の一つとしている。  
当然本を使うのだが、公式ページを避ける理由がなく、必要に応じて各サイトも利用する。  

* 活用書籍  
  * [プログラミングC# 第8版](https://www.oreilly.co.jp/books/9784873119366/)  
  残念ながら本はこれだけしか持っていないという・・・([Unity](https://unity.com/ja)でゲームを作りたいのにこれだけって・・・どんな意気込みだよ)。  
  本は8版として最新版だが、そもそものコンパイル環境は[C# 9.0](https://docs.microsoft.com/ja-jp/dotnet/csharp/whats-new/csharp-9)があるよね。  

* 活用サイト  
  * [C# 関連のドキュメント](https://docs.microsoft.com/ja-jp/dotnet/csharp/)  
  * [とほほのC#入門](https://www.tohoho-web.com/ex/c-sharp.html)  

### 具体的な基礎知識
何はともあれ、まずは、"Hello World"を表示するプログラムを作る。  
そのため、以下の手順で勉強を進めることにする。  

* 以下、手順。  
  * [x] 手順1. 勉強用のブランチに移動する。  
  * [x] 手順2. ルートディレクトリのひな形ディレクトリをコピーしてくる。  
  * [x] 手順3. コピーしてきたディレクトリ名を"基礎知識用の勉強"に変更する。  
  * [x] 手順3-1. 当ファイル(`README.md`)の書き換えを行う。  
        完全にこのファイルのことを忘れていた。  
  * [x] 手順3-2. `helloWorld.[言語用の拡張子]`のファイルを作り、おなじみ"Hello World."プログラムを作る。  
  * [ ] 手順3-3. main関数不要であれば、"**実行済み**"ディレクトリを削除すること。  
  * [ ] 手順3-4. コミットする。  
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

勉強[環境](https://docs.microsoft.com/ja-jp/dotnet/csharp/language-reference/language-specification/introduction)のコンパイルバージョン：version 6.12.0.0  
```terminal
$ csc -version
3.9.0-6.21124.20 (db94f4cc)
$
```

```terminal
$ mcs --version	←☆コンパイルバージョン。
Mono C# compiler version 6.12.0.0
$ mono --version	←☆実行バージョン。
Mono JIT compiler version 6.12.0.140 (2020-02/51d876a041e Thu Apr 29 10:44:55 EDT 2021)
Copyright (C) 2002-2014 Novell, Inc, Xamarin Inc and Contributors. www.mono-project.com
    TLS:
    SIGSEGV:       altstack
    Notification:  kqueue
    Architecture:  amd64
    Disabled:      none
    Misc:          softdebug 
    Interpreter:   yes
    LLVM:          yes(610)
    Suspend:       hybrid
    GC:            sgen (concurrent by default)
$
```
プログラムファイルの[拡張子](https://docs.microsoft.com/ja-jp/dotnet/csharp/language-reference/language-specification/introduction)：`*.cs`  
標準の文字コード(プログラムファイル)：  
　　例）UTF-8(今時はこれに統一されている？)。  
文字区切り(行末記号)：セミコロン`;`  
[インデント](https://docs.microsoft.com/ja-jp/dotnet/csharp/fundamentals/coding-style/coding-conventions)：フリーフォーマット  
標準の出力関数：`System.Console.WriteLine`  
コメント方法：`//`・`/*〜*/`・`///`  

以下、ハローワールドのコンパイル。
```cs:helloWorld.cs
$ mcs ./helloWorld.cs	←☆コンパイル。
$ ll
total 48
-rwxr-xr-x  1 asakunotomohiro  staff   3072  8 20 15:43 helloWorld.exe*	←☆コンパイル結果ファイル。
-rw-r--r--  1 asakunotomohiro  staff     91  8 20 15:42 helloWorld.cs	←☆コンパイル対象ファイル。
drwxr-xr-x  9 asakunotomohiro  staff    288  8 20 15:40 基礎知識用の勉強/
-rw-r--r--@ 1 asakunotomohiro  staff  13053  8 20 15:19 README.md
$ ./helloWorld.exe	←☆コンパイル結果ファイル単体での実行は不可。
-bash: ./helloWorld.exe: cannot execute binary file
$ mono ./helloWorld.exe 	←☆"mono"プログラムによる実行にて、成功する。
Hello World.
$
$ csc ./helloWorld.cs 	←☆上記とは異なる方法のコンパイル。
Microsoft (R) Visual C# Compiler version 3.9.0-6.21124.20 (db94f4cc)
Copyright (C) Microsoft Corporation. All rights reserved.

$ ./helloWorld.exe 	←☆当たり前だが、単体実行失敗。
-bash: ./helloWorld.exe: cannot execute binary file
$ ll
total 48
-rwxr-xr-x  1 asakunotomohiro  staff   3584  8 20 15:44 helloWorld.exe*	←☆コンパイル結果ファイル。
-rw-r--r--  1 asakunotomohiro  staff     91  8 20 15:42 helloWorld.cs	←☆コンパイル対象ファイル。
drwxr-xr-x  9 asakunotomohiro  staff    288  8 20 15:40 基礎知識用の勉強/
-rw-r--r--@ 1 asakunotomohiro  staff  13053  8 20 15:19 README.md
$ mono ./helloWorld.exe 	←☆"mono"プログラムによる実行にて、成功する。
Hello World.
$
```
相変わらずvimではコンパイルが出来ない(Pathが長いんだと)。  

#### ※注意事項  
基礎知識として、5種類を勉強するが、その目的はアルゴリズムの勉強用であって、5種類を本格的に極めるためではない。  
そのため、1つ1つを最小限に絞り込み、1つを10分前後の勉強時間に収まるように気をつけること。  

<a name="variable変数sub"></a>
<a name="arrangement配列sub"></a>
<a name="Conditional条件分岐sub"></a>
<a name="repetition繰り返しsub"></a>
<a name="function関数sub"></a>
<details><summary>基礎知識5種類に対する注意事項</summary>

* 変数  
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

* 配列
  * 宣言方法  
    要素  
    要素数  
    添え字(インデックス)  
  * 要素追加方法  
  * 2次元配列  
  * ※取り出しは"for"で説明する。  

* 条件分岐  
  * if文  
    条件式  
    * if文からの派生  
      if〜elif〜else  
    * 演算子  
      論理演算子  
      比較演算子  

* 繰り返し  
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

* 関数  
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

## 開発環境
基本は、`Visual Studio Code(VSCode)`を用いて勉強をしていくことになるだろう。  
また、`Visual Studio 2019 for Mac`を使うほど大規模になることはないだろう(他の言語も大規模にはなるまい)。  

### 具体的な基礎知識

<a name="variable変数"></a>
#### [変数](#variable変数sub)
値の格納方法について。  
※複雑な説明はしない。  

* 絶対的に勉強する一覧  
  * [変数の宣言方法](#subVariable1)  
  * [変数への代入方法](#subVariable1)  
    * [ ] 代入演算子(`=`)  
  * [変数値の出力方法](#subVariable2)  
  * [代入した変数の利用方法](#subVariable3)  
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
##### 変数  
様式：

<a name="subVariable2"></a>
##### 変数値の出力方法

<a name="subVariable3"></a>
##### 代入した変数の利用方法

<a name="subVariable4"></a>
##### データ型

<a name="subVariable5"></a>
##### 変数値を使った計算方法

<a name="subVariable6"></a>
##### 型変換(キャスト)方法


##### 変数での説明しない項目。

<a name="arrangement配列"></a>
#### [配列(リスト)](#arrangement配列sub)
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
##### 配列  
様式：

<a name="subArrangement2"></a>
##### 配列への追加方法

<a name="subArrangement3"></a>
##### 二次元配列の宣言方法


##### 配列での説明しない項目。

<a name="Conditional条件分岐"></a>
#### [条件分岐](#Conditional条件分岐sub)

* 絶対的に勉強する一覧  
  * [ ] [単純分岐-"もし"1つ。](#subConditional1)  
    基本構造例：if  
  * [ ] [多岐分岐-"もし"2つ以上。](#subConditional2)  
    基本構造例：if〜else if〜  
  * [ ] [論理演算子(ド・モルガンの法則)](#subConditional3)  
    * [ ] 論理積(`AND`・`&&`)  
    * [ ] 論理和(`OR`・`||`)  
  * [ ] [比較演算子](#subConditional4)  
    * [ ] 等しい(`==`)  
    * [ ] 等しくない(`!=`)  
    * [ ] より大きい(`>`)  
    * [ ] より小さい(`<`)  
    * [ ] 以上(`>=`)  
    * [ ] 以下(`<=`)  

<a name="subConditional1"></a>
##### 単純分岐-"if"1つ。  
様式：

<a name="subConditional2"></a>
##### 多岐分岐-"ifelse"。
様式：

<a name="subConditional3"></a>
##### 論理演算子(ド・モルガンの法則)

<a name="subConditional4"></a>
##### 比較演算子


##### 条件分岐での説明しない項目。

<a name="repetition繰り返し"></a>
#### [繰り返し](#repetition繰り返しsub)

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
##### 繰り返し`for`  
様式：

<a name="subRepetition2"></a>
##### 指定回数条件での繰り返し：for( 条件式 )

<a name="subRepetition3"></a>
##### 指定回数条件での繰り返し：拡張for命令
様式：


<a name="subRepetition4"></a>
#### `for`の入れ子。

<a name="subRepetition5"></a>
#### ジャンプ処理

<a name="subRepetition6"></a>
#### 真偽条件での繰り返し：while( 条件式 )

<a name="subRepetition7"></a>
#### 無限ループ


###### 繰り返しでの説明しない項目。

<a name="function関数"></a>
#### [関数](#function関数sub)

* 絶対的に勉強する一覧  
  * [ ] [使い回せるようにまとめること。](#subFunction1)  
    * [ ] 引数と戻り値の組み合わせ。  
      [ ] 引数無し-戻り値無し  
      [ ] 引数あり-戻り値無し  
      [ ] 引数無し-戻り値あり  
      [ ] 引数あり-戻り値あり  
    * [スコープ](#subFunction2)  
      [ ] グローバルスコープ変数  
      [ ] ローカルスコープ変数  

<a name="subFunction1"></a>
##### 関数  
様式：

<a name="subFunction2"></a>
##### スコープ

##### 関数での説明しない項目。


## Gitのマージルール
当ブランチでC#言語の勉強をする。  
以下、流れとして、、、

* 当ブランチ）  
  1. 当ブランチで勉強する。  
  1. 切りの良い場所でコミット実施。  

  * 上記作業再開。  
    1. 前回の勉強を再開する。  
    1. 1章分の勉強終了後、"study2programming"にマージする。  
    1. 誤字脱字程度のコミットはスカッシュしたい。  
    1. "study2programming"をPushする。  
    ※masterにマージすることはない。  
    1. 章ごとにタグ付けをする(Push実施)。  

study2programmingに取り込むときのマージは、3方向マージ(`--no-ff`)を使う。  
例外作業として、masterに取り込む場合はチェリーピッキングでピンポイントに必要最小限のコミットのみを取り込む(しつこいが、masterに取り込むことはしたくない)。  

以上。
