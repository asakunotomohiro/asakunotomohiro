# C#言語
ここは、プログラミング言語のC#言語を勉強するブランチになる。  


<a name="algorithmHowToUseTheBranch"></a>
## ブランチの利用方法
ここのブランチは、Python書籍からのアルゴリズム問題をC#言語に置き換えて勉強するのに使う。  
また、具体的なアルゴリズムの種類は、下記書籍の目次チャプターに限定する。  
書籍名：[Pythonで学ぶアルゴリズムの教科書](#algorithmTextbookLearnedinPythonBook)  
※チャプターごとにブランチを分けていく。  


<a name="algorithmHowToStudy"></a>
## 勉強方法
勉強するプログラミング言語の一つとしている。  
当然本を使う。
そして、公式ページだけでなく、必要に応じて各サイトも利用する。  

* 活用書籍  
  * [プログラミングC# 第8版](https://www.oreilly.co.jp/books/9784873119366/)  

* 活用サイト  
  * [C# 関連のドキュメント](https://docs.microsoft.com/ja-jp/dotnet/csharp/)  


<a name="algorithmDevelopmentEnvironment"></a>
## 開発環境
今回は、`Visual Studio 2019 for Mac(VS2019)`を使う。  
最初は`Visual Studio Code(VSCode)`を使うはずだったが、動かない。  
デバッグ環境まで用意する必要があるようなのだが、やり方が分からないため、VS2019を使うことにした。  
開発環境を用意するのに時間を使いたくないからな。  

<a name="algorithmCheckTheStatusOfTheActualWorkingEnvironment"></a>
<details><summary>実際に作業する環境の状況確認</summary>

* 勉強環境。  
  * 勉強[環境](https://docs.microsoft.com/ja-jp/dotnet/csharp/language-reference/language-specification/introduction)のコンパイルバージョン：version 6.12.0.0  
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

  * プログラムファイルの[拡張子](https://docs.microsoft.com/ja-jp/dotnet/csharp/language-reference/language-specification/introduction)：`*.cs`  
  * 実行方式：コンパイラ方式  
  * 標準の文字コード(プログラムファイル)：UTF-8？  
  * 文字コードの扱い：
　　例）UTF-8・Unicode  
  * 文字区切り(行末記号)：セミコロン`;`  
  * [インデント](https://docs.microsoft.com/ja-jp/dotnet/csharp/fundamentals/coding-style/coding-conventions)：フリーフォーマット  
  * 標準の出力関数：`System.Console.WriteLine`  
  * 標準のフォーマット関数：  
　　例）`printf`など。
　　※必須記入項目ではなく、勉強途中での記載でも可とする。  
  * 単数行コメント方法：`//`  
  * XML行コメント方法：`///`  
    今回のアルゴリズムの勉強では使わない。  
  * 複数行コメント方法：`/*〜*/`  
    別解：`#if`ディレクティブ(プリプロセッサ)  
    別解は、今回のアルゴリズムの勉強では使わない。  
  * デバッガ機能(デバッグ技法)：  
　　例）`gdb`・`perldebug`・`pdb`など。  


<a name="algorithmHelloWorld"></a>
### ハローワールドプログラム
相変わらずvimではコンパイルが出来ない(Pathが長いそうだ)。  

以下、ハローワールドのコンパイル。
```csharp
$ mcs ./helloWorld.cs	←☆コンパイル。
$ ll
total 48
-rwxr-xr-x  1 hoge本日は  staff   3072  8 20 15:43 helloWorld.exe*	←☆コンパイル結果ファイル。
-rw-r--r--  1 hoge本日は  staff     91  8 20 15:42 helloWorld.cs	←☆コンパイル対象ファイル。
drwxr-xr-x  9 hoge本日は  staff    288  8 20 15:40 基礎知識用の勉強/
-rw-r--r--@ 1 hoge本日は  staff  13053  8 20 15:19 README.md
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
-rwxr-xr-x  1 hoge本日は  staff   3584  8 20 15:44 helloWorld.exe*	←☆コンパイル結果ファイル。
-rw-r--r--  1 hoge本日は  staff     91  8 20 15:42 helloWorld.cs	←☆コンパイル対象ファイル。
drwxr-xr-x  9 hoge本日は  staff    288  8 20 15:40 基礎知識用の勉強/
-rw-r--r--@ 1 hoge本日は  staff  13053  8 20 15:19 README.md
$ mono ./helloWorld.exe 	←☆"mono"プログラムによる実行にて、成功する。
Hello World.
$
```

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
  * [x] [条件分岐](#Conditional条件分岐)  
  * [x] [繰り返し](#repetition繰り返し)  
  * [x] [関数](#function関数)  

</details>

<a name="algorithmTextbookLearnedinPythonContents"></a>
* [アルゴリズム勉強目次](#algorithmTextbookLearnedinPython)  
  * [x] [Chapter 1 プログラミングの基礎知識](#basicKnowledgeFiveTypesOfStudyRange)  
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
        ※ 開発環境を記録する。  
        ※ アルゴリズムの勉強用項目は隠しておく(`details`・`summary`)代わりに、基礎知識5種類の勉強用の項目は出しておく。  
  * [x] 手順2-2. `helloWorld.[言語用の拡張子]`のファイルを作り、おなじみ"Hello World."プログラムを作る。  
  * [x] 手順2-3. main関数不要であれば、"**実行済み**"ディレクトリを削除すること。  
  * [x] 手順2-4. コミットする。  
  * [x] 手順3. 各ディレクトリで、5種類の"絶対的に勉強する一覧"を箇条書きごとに勉強する。  
    * 以下、5種類の内訳。  
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


<a name="algorithmNotes"></a>
### ※注意事項
「アルゴリズムを勉強することが目的」であるということを理解すること。  
しかし、やる気を維持するためにも1冊分を読了させることも目的としており、深掘りせずに進めることも考慮すること。  
要は、深く踏み込むか、流し読み程度に抑えるかどうかはそのときに決める。  


<a name="variable変数"></a>
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
    * [x] 真偽型(`bool`)  
  * [変数値を使った計算方法](#subVariable5)  
    * [x] 算術演算子  
      * [x] 足し算(`+`)  
      * [x] 引き算(`-`)  
      * [x] 掛け算(`*`)  
      * [x] 割り算(`/`)  
      * 累乗(`**`)  
        C#にはないようだ。  
      * 割り算の商(`//`)  
        C#にはないようだ。  
      * [x] 割り算の余り(`%`)  
  * [型変換(キャスト)方法](#subVariable6)  
    * [x] 明示変換  
      `代入先変数名 = (データ型)変数名`  


<a name="subVariable1"></a>
#### 変数
様式：
`データ型 変数名;`  
例）
`int hoge;`  


<a name="subVariable2"></a>
#### 変数への代入方法及び変数の利用
様式：
初期化(変数宣言と同時に値を代入する)様式：
`データ型 変数名 = 初期値`  
その値のことを"初期値"と呼ぶ。  


```csharp
int hoge = 1234;
float boo = 12.34F;
bool egoh = true;
string bar = "本日は晴天なり本日は晴天なり。";
Console.WriteLine(hoge);  // 1234
Console.WriteLine(boo);   // 12.34
Console.WriteLine(egoh);  // True
Console.WriteLine(bar);   // 本日は晴天なり本日は晴天なり。

Console.WriteLine("------------------");
// 以下、計算など。
egoh = (hoge == boo);
Console.WriteLine(hoge + boo);  // 1246.34
Console.WriteLine(hoge - boo);  // 1221.66
Console.WriteLine(hoge * boo);  // 15227.56
Console.WriteLine(hoge / boo);  // 100
Console.WriteLine(hoge % boo);  // 12.33998
Console.WriteLine(egoh);        // False
egoh = (100 == 100);
Console.WriteLine(egoh);        // True
```


<a name="subVariable3"></a>
#### 変数値の出力方法
`Console.WriteLine`を使う。  

```csharp
public static void Main(string[] args)
{
	Console.WriteLine("Hello World!");

	string hoge = "Hello World";
	string boo;

	// 複数同時宣言
	int hoo = 0, bar = 1, har = 2, bee = 3;

	// 出力
	boo = @"{Hello
　|
World.}";
	Console.WriteLine(hoge, boo, hoo, bar, har, bee);    // この書き方では出力されない(先頭の変数のみ出力された)。
	Console.WriteLine(boo);
	Console.WriteLine(hoo);    // 0
	Console.WriteLine(bar);    // 1
	Console.WriteLine(har);    // 2
	Console.WriteLine(bee);    // 3

}
```
`Console.WriteLine(hoge + boo + hoo + bar + har + bee);`


<a name="subVariable4"></a>
#### データ型
以下の表に限らず、腐るほどある。  

|C#型|CLR名|符号|ビットサイズ|範囲|接尾辞|一言|
|----|-----|----|------------|----|------|----|
|int|System.Int32|付き|32|-2147483648〜2147483647|||
|float|System.Single|32|32ビット(〜7桁)||F|極力使わない。|
|string|System.String||||||
|bool|System.Boolean|||||true:0・false:1|


<a name="subVariable5"></a>
#### 変数値を使った計算方法

|演算子|意味|備考|
|------|----|----|
|`+`|加算|※二項演算子に限る|
|`-`|減算|※二項演算子に限る|
|`*`|乗算||
|`/`|除算|整数型の場合、余り切り捨て。|
|`**`|累乗|C#にはない。|
|`//`|除算の商|C#にはない。|
|`%`|剰余演算|除算の余り|
|`++`|インクリメント|オペランドに1加算|
|`--`|デクリメント|オペランドに1減算|


<a name="subVariable6"></a>
#### 型変換(キャスト)方法
様式：
`(データ型)変数名`  

以下、キャスト。
```csharp
byte over = (byte)255;
Console.WriteLine(over);
```

以下、桁あふれするような代入は、エラーになる。
```csharp
// Error CS0221: Constant value '256' cannot be converted to a 'byte' (use 'unchecked' syntax to override) (CS0221) (データ型)
byte over = (byte)256;
Console.WriteLine(over);
```


<a name="subVariable999"></a>
#### 変数での説明しない項目。

<details><summary>今回は勉強を見送る一覧</summary>

* [ ] 定数  
* [ ] データ型  
  * [ ] 文字  
    char  
  * [ ] 整数(`long`など)  
    sbyte  
    byte(メモリやバイナリファイル用)  
    short  
    ushort  
    uint  
    long(要素数100万以上)  
    ulong  
    decimal(金額用？)  
  * [ ] 浮動小数点型(`double`など)  
  * [ ] 型推論  
    ある(`var型`)。  
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


<a name="arrangement配列"></a>
<details><summary>実際の配列の勉強</summary>

### 配列
変数を連ならせる格納方法。  
今回のPythonではリストを配列と呼ぶ。  
※配列とリストを分けている場合はリストの勉強を後回しにし、配列がない状態でリストがある場合はリストを勉強する。  

* 絶対的に勉強する一覧  
  * [x] [配列の宣言方法](#subArrangement1)  
        [x] 要素とは。  
        [x] 要素数とは。  
        [x] 添え字とは(0始まり)。  
  * [x] [配列への追加方法](#subArrangement2)  
  * [x] [二次元配列の宣言方法](#subArrangement3)  


<a name="subArrangement1"></a>
#### 配列
コレクションのひとつ(CLRの型システムのひとつ)。  

様式：
`データ型[] 配列名 = new データ型[要素数]`  
`var 配列名 = new データ型[要素数]`  
例）
```csharp
int[] numbers = new int[10];
string[] strings = new string[numbers.Length];
```
※要素数は、32ビット環境では21億個までが上限として指定できる。  


<a name="subArrangement2"></a>
#### 配列への追加方法
配列の拡張を意味するのではない。  


```csharp
using System;

namespace 配列
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			int[] hoge = new int[10];
			string[] strings = new string[hoge.Length];
			Console.WriteLine("hoge：" + hoge[0]);	// hoge：0
			Console.WriteLine("hoge：" + hoge[hoge.Length - 1]);	// hoge：0

			var weekday = new string[5];
			weekday[0] = "Monday";
			weekday[4] = "Friday";
			Console.WriteLine("weekday：" + weekday[4]);	// weekday：Friday

			var weekdaykai = new string[] { "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", };
			Console.WriteLine("weekdaykai：" + weekdaykai[4]);	// weekdaykai：Friday

			// 以下、さらなる改良。
			string[] weekdaykaikai = { "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", };

			// 以下、さらなる改良。	←☆この書き方になれるのがナウいそうだ。
			var weekdaykaikaikai = new[] { "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", };
		}
	}
}
```


<a name="subArrangement3"></a>
#### 二次元配列の宣言方法
今後は、矩形配列を使う。  
むしろ、矩形配列だけがある？  
※他のプログラミング言語のような多次元配列宣言はできない？(ジャグ配列であればできそうだ)  

様式：
`データ型[,] 配列名 = new データ型[1次元目の要素数, 2次元目の要素数]`  
例）
`int[,] array = new int[5, 10];`  

要素への取得など）  
代入：`array[2, 9] = 20210919;`  
取得：`array[0, 0]`  
※代入していない要素場所はゼロで初期化される？  

```csharp
using System;

namespace 二次元配列
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			int[,] array = new int[5, 10];
			var twoarray = new int[,]
			{
				{ 20210919, 20210920, 20210921, },
				{ 20210918, 20210917, 20210916, },
			};

			Console.WriteLine("2次元配列：" + twoarray[1, 2]);   // 2次元配列：20210916

			array[2, 9] = 20210919;
			Console.WriteLine("2次元配列array[0, 0]：" + array[0, 0]);   // 2次元配列array[0, 0]：0
			Console.WriteLine("2次元配列array[2, 9]：" + array[2, 9]);   // 2次元配列array[2, 9]：20210919

			// Console.WriteLine("2次元配列array[5, 9]：" + array[5, 9]);   // System.IndexOutOfRangeException
			// Console.WriteLine("2次元配列array[4, 10]：" + array[4, 10]);   // System.IndexOutOfRangeException

			Console.WriteLine("2次元配列arrayの大きさ：" + array.Length);    // 2次元配列arrayの大きさ：50
			Console.WriteLine("2次元配列arrayの大きさ：" + array.GetLength(0));    // 2次元配列arrayの大きさ：5
			Console.WriteLine("2次元配列arrayの大きさ：" + array.GetLength(1));    // 2次元配列arrayの大きさ：10

			// Console.WriteLine("2次元配列arrayの大きさ：" + array.GetLength(2));    // System.IndexOutOfRangeException

		}
	}
}
```


<a name="subArrangement999"></a>
#### 配列での説明しない項目。

<details><summary>今回は勉強を見送る一覧</summary>

* 配列の応用  
  * [ ] 配列の拡張。  
    `Array.Resize()`  
  * [ ] ジャグ配列。  
  * [ ] 読み取り専用配列の宣言ができないことの説明。  
  * [ ] 3次元配列以上の宣言方法。  
    3次元配列`int[,,] hoge = 〜`  
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
様式：
```csharp
if ( 条件式1 )
{
    処理A;
}
else if ( 条件式2 )
{
    処理B;
}
else
{
    処理C;
}
```

以下、プログラム例）
```csharp
using System;

namespace 条件分岐
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			string hoge = "本日は晴天なり";
			if (hoge == "hoge")
			{
				Console.WriteLine("hoge==" + hoge);
			}
			else if (hoge == "本日は晴天なり")
			{
				// 文字列の比較もイコール記号で可能。
				Console.WriteLine("本日は晴天なり==" + hoge);
				// 出力結果：本日は晴天なり==本日は晴天なり
			}
			else
			{
				Console.WriteLine("else：" + hoge);
			}
		}
	}
}
```


<a name="subConditional2"></a>
#### 論理演算子(ド・モルガンの法則)

|演算子|意味|備考|
|------|----|----|
|`&&`|論理積||
|`||`|論理和||


<a name="subConditional3"></a>
#### 比較演算子

|演算子|意味|備考|
|------|----|----|
|`==`|等号|`string x == "xyz;"`<br>`bool tf = x == "xxx;"`(tf変数値はfalse)|
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

* 関係演算子  
  * [ ] 複合代入演算子(`+=`・`%=`など)  
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


<a name="repetition繰り返し"></a>
<details><summary>実際の繰り返しの勉強</summary>

### 繰り返し

* 絶対的に勉強する一覧  
  * [x] [指定回数条件での繰り返し](#subRepetition1)  
    [x] [基本構造例：for( 条件式 )](#subRepetition2)  
    [x] [基本構造例：拡張for命令(`in`)](#subRepetition3)  
    `foreach( データ型 変数名 in コレクション ){〜}`  
    [x] [`for`の入れ子。](#subRepetition4)  
  * [ジャンプ処理](#subRepetition5)  
    * [x] [break](#subRepetition5break)  
    * [x] [continue](#subRepetition5continue)  
  * [x] [真偽条件での繰り返し](#subRepetition6)  
    [x] [基本構造例：while( 条件式 )](#subRepetition6)  
    `while ( 条件式) { 処理; }`  
    [x] [無限ループ](#subRepetition7)  


<a name="subRepetition1"></a>
#### 繰り返し


<a name="subRepetition2"></a>
##### 指定回数条件での繰り返し：for( 条件式 )
様式：
```csharp
for ( 初期化式; 継続条件式; 増減式 )
{
    処理;
}
```

以下、実際のプログラム。
```csharp
using System;

namespace 指定回数条件での繰り返しfor
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			for (int ii = 0; ii < 5; ii++)
			{
				Console.WriteLine(ii + "回目の実行");
			}
			// 実行結果：
//						0回目の実行
//						1回目の実行
//						2回目の実行
//						3回目の実行
//						4回目の実行
		}
	}
}
```


<a name="subRepetition3"></a>
##### 指定回数条件での繰り返し：拡張for命令
様式：
```csharp
foreach ( データ型 変数名 in コレクション )
{
    処理;
}
```

以下、実際のプログラム例）
```csharp
using System;

namespace 拡張for命令での繰り返し処理
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			var hoge = new[] { "hoge", "boo", "bar", "本日は", };
			int ii = 0;

			foreach (var value in hoge)
			{
				Console.WriteLine("hoge[{0}]の値：{1}", ii, value);
				ii++;
			}
			// 出力結果：
//						hoge[0]の値：hoge
//						hoge[1]の値：boo
//						hoge[2]の値：bar
//						hoge[3]の値：本日は
		}
	}
}
```


<a name="subRepetition4"></a>
#### `for`の入れ子。

```csharp
using System;

namespace forの入れ子
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			var array1 = new[] { "本日は", "晴天なり", };
			var array2 = new[] { "hoge", "bar", };
			foreach (var ii in array1)
			{
				foreach (var jj in array2)
				{
					Console.WriteLine("1つ目のfor文の値：{0}\n　　2つ目のfor文の値：{1}", ii, jj);
				}

			}
			// 出力結果：
//						1つ目のfor文の値：本日は
//						　　2つ目のfor文の値：hoge
//						1つ目のfor文の値：本日は
//						　　2つ目のfor文の値：bar
//						1つ目のfor文の値：晴天なり
//						　　2つ目のfor文の値：hoge
//						1つ目のfor文の値：晴天なり
//						　　2つ目のfor文の値：bar
		}
	}
}
```

<a name="subRepetition5"></a>
#### ジャンプ処理

* 種類。  
  * [break](#subRepetition5break)  
  * [continue](#subRepetition5continue)  


<a name="subRepetition5break"></a>
以下、break文用のプログラム例）
```csharp
using System;

namespace ジャンプ処理break
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			for (int ii = 0; 10 > ii; ii++)
			{
				if (ii == 3)
				{
					break;
				}
				Console.WriteLine("{0}回目の実行", ii + 1);
			}
			// 実行結果：
//						1回目の実行
//						2回目の実行
//						3回目の実行
		}
	}
}
```
3回目になった場合、break文が走る処理を入れているため、繰り返し処理を抜け出ている。  

<a name="subRepetition5continue"></a>
以下、continue文用のプログラム例）
```csharp
using System;

namespace ジャンプ処理continue
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			for (int ii = 0; 5 > ii; ii++)
			{
				if (ii == 2)
				{
					continue;
				}
				Console.WriteLine("{0}回目の実行。", ii + 1);
			}
			// 実行結果：
//						1回目の実行。
//						2回目の実行。
//						4回目の実行。
//						5回目の実行。
		}
	}
}
```
3回目の実行時に処理を抜け、繰り返しの先頭に戻る。  
そのため、3回目の出力結果が成されていない。  


<a name="subRepetition6"></a>
#### 真偽条件での繰り返し：while( 条件式 )
様式：
```csharp
while ( 条件式)
{
    処理;
}
```


以下、プログラム例）
```csharp
using System;

namespace 真偽条件での繰り返しwhile
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			int ii = 0;
			while (3 > ii)
			{
				Console.WriteLine("{0}回目の実行。", ii + 1);
				ii++;
			}
			// 実行結果：
//						1回目の実行。
//						2回目の実行。
//						3回目の実行。
		}
	}
}
```


<a name="subRepetition7"></a>
#### 無限ループ
様式：
`for(;;){〜;}`  

以下、for文での無限ループ例）
```csharp
using System;

namespace 無限ループfor
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			int ii = 0;
			for (; ; )
			{
				Console.WriteLine("無限ループ{0}回目", ii + 1);
				ii++;
			}
		}
	}
}
```

while文でもできるはず。  
`while(){〜;}`  


<a name="subRepetition999"></a>
#### 繰り返しでの説明しない項目。

<details><summary>今回は勉強を見送る一覧</summary>

* [ ] 真偽条件での繰り返し  
  基本構造例：do〜while( 条件式 )  

</details>

</details>


<a name="function関数"></a>
<details><summary>実際の関数の勉強</summary>

### 関数

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
今回は、メソッドを関数として扱う(当然クラスもゆくゆくは勉強していく)。  
逆に、メソッドを勉強しているかと言われてもそんなことないのだが・・・(アルゴリズム用の勉強範囲はどこまでにすべきだ？)。  

クラス作成様式：
```csharp
属性 修飾子 class クラス名 引数 : 継承元1, 継承元2, ・・・ 引数制約指定節
{
    処理;
}
```

メソッド作成様式：
```csharp
属性 修飾子 戻り値の型 メソッド名 引数 (引数一覧) 引数型制約指定節
{
    処理;
}
```

以下、「引数無し-戻り値無し」の関数呼び出し。
```csharp
using System;

namespace 関数
{
	class func
	{
		public void nofuncno()
		{
			Console.WriteLine("引数なし-戻り値なし");
		}
	}

	class MainClass
	{
		public static void Main(string[] args)
		{
			func hoge = new func();
			hoge.nofuncno();
			// 引数なし-戻り値なし
		}
	}
}
```

以下、「引数あり-戻り値無し」の関数呼び出し。
```csharp
using System;

namespace 関数
{
	class func
	{
		public void nofunc(string args)
		{
			Console.WriteLine("引数{0}-戻り値なし", args);
		}
	}

	class MainClass
	{
		public static void Main(string[] args)
		{
			func hoge = new func();
			hoge.nofunc("bar");
			// 引数bar-戻り値なし
		}
	}
}
```

以下、「引数無し-戻り値あり」の関数呼び出し。
```csharp
using System;

namespace 関数
{
	class func
	{
		public string funcno()
		{
			Console.WriteLine("関数内出力");
			return "引数なし-戻り値あり";
		}
	}

	class MainClass
	{
		public static void Main(string[] args)
		{
			func hoge = new func();
			string ret = hoge.funcno();
			Console.WriteLine("　　" + ret);
			// 関数内出力
			// 　　引数なし-戻り値あり
		}
	}
}
```

以下、「引数あり-戻り値あり」の関数呼び出し。
```csharp
using System;

namespace 関数
{
	class func
	{
		public string function(int args)
		{
			Console.WriteLine("引数{0}-戻り値あり", args);
			return "本日は晴天なり。";
		}
	}

	class MainClass
	{
		public static void Main(string[] args)
		{
			func hoge = new func();
			ret = hoge.function(20211001);
			Console.WriteLine("　　" + ret);
			// 引数20211001-戻り値あり
			// 　　本日は晴天なり。
		}
	}
}
```


<a name="subFunction2"></a>
#### スコープ
ブロックで囲まれた範囲がスコープとして有効範囲になっている。  


<a name="subFunction999"></a>
#### 関数での説明しない項目。

<details><summary>今回は勉強を見送る一覧</summary>

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

</details>


<a name="algorithmTextbookLearnedinPython"></a>
#### ☆アルゴリズムの勉強チャプタ概要☆
<a name="algorithmTextbookLearnedinPythonChapter2"></a>
* [Chapter2 プログラミングの力を養う](#developProgrammingSkillsOverviewChapter2)  
  基礎的なプログラミングの力を養っていく。  
  例えば、配列利用の関数定義・繰り返し・再帰関数・条件分岐など。  
  以下、各項目(目次)。  
  [x] [平均値を求める。](#findTheAverageValueChapter2)2022/01/11  
  [x] [1からnまで足し合わせる。](#addFrom1tonChapter2)2022/01/31  
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
  [スタック](#stackChapter3)  
  [キュー](#queueChapter3)  
  [リスト](#listChapter3)  
  [木](#woodChapter3)  
  [グラフ](#graphChapter3)  
  [データを保存する。](#saveTheDataChapter3)  
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
  一定の規則に従い並び替えること。  
  ※有名な並べ替えアルゴリズムのみに限定している。  
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
勉強内容はPythonと基本同じ。  
それをC#用に移植する。  

* ルール。  
  * 点数を配列で定義する。  
    `var score = new int[]{ 70, 98, 92, 88, 64, };`  
    Python用配列：`score = [70, 98, 92, 88, 64]`  
    Perl用配列：`my @score = (70, 98, 92, 88, 64);`  
    vimScript9用配列：`var score = [70, 98, 92, 88, 64]`  
    C言語用配列：`int score[] = {70, 98, 92, 88, 64};`  
    Go言語用配列：`var score = [...]int {70, 98, 92, 88, 64};`  
    Java言語用配列：`int[] score = { 70, 98, 92, 88, 64, };`  
  * `for`を用いる。  

以下、プログラム。
```csharp
using System;

namespace average
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			var score = new int[]{ 70, 98, 92, 88, 64, };
			var total = 0;
			foreach (int value in score)
			{
				total += value;
			}
			var average = (float)total / score.Length;
            // 以下、出力フォーマットを2種類使った(1つ目も文字列に変換させるべきなのか？)。
			Console.WriteLine("合計点 {0}", total);             // 合計点 412
			Console.WriteLine($"平均点 {average.ToString()}");  // 平均点 82.4
		}
	}
}
```
プロジェクトディレクトリ移動時に、以下のエラーが発生した(ディレクトリから移動しただけで発生した)。  
**average.csproj(1,1): Error: Unknown MSBuild failure. Please try building the project again (average)**  
何より、C#用に統合開発環境を用意する羽目になっており、エディタで完結しないのは辛い。  


<a name="addFrom1tonChapter2"></a>
#### 1からnまで足し合わせる。
勉強内容はPythonと基本は同じ。  
それをC#用に移植するだけのこと。  

* ルール1もPythonと同じ。  
  * `for`を用いる。  
  * 関数は定義しない。  
    私のルールは、必ず関数定義をすることに決めているため、ここだけ無視する。  

以下、プログラム。
```csharp
using System;

namespace addup
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			var total = 0;
			for (int ii = 0; 10 >= ii; ii++)
			{
				total += ii;
			}
			Console.WriteLine($"合計点 {total.ToString()}");   // 合計点 55
		}
	}
}
```

* ルール2もPythonと同じ。  
  * nまでの値を関数の引数で受け取る。  
  * 関数内で合算した結果をreturnで返す。  

以下、ルール2のプログラム。
```csharp
using System;

namespace addup
{
	class MainClass
	{
		public static void add2(int count)
		{
			var total = 0;
			for (int ii = 0; count >= ii; ii++)
			{
				total += ii;
			}
			Console.WriteLine($"合計点 {total.ToString()}");   // 合計点 55
		}
		public static void Main(string[] args)
		{
			add2(10);
		}
	}
}
```

* ルール3もPythonと同じ。  
  * 工夫して計算する。  
  * (初めの数+終わりの数)*(足し合わせる個数/2)  

以下、ルール3のプログラム。
```csharp
using System;

namespace addup
{
	class MainClass
	{
		public static void add3(int number)
		{
			var total = (1 + number) * number / 2;

			Console.WriteLine($"合計点 {total.ToString()}");   // 合計点 55
		}
		public static void Main(string[] args)
		{
			add3(10);
		}
	}
}
```


<a name="outputTheMultiplicationTableChapter2"></a>
#### 九九の式を出力する。
Pythonでやったように、九九の式を出すのではなく、九九表を出すことにする。  
ルールはPythonと同じ。  

* 作業ルール。  
  * 二重ループを使う。  

<details><summary>2重ループのサンプルプログラム(foreach編)。</summary>

```csharp
using System;

namespace sample
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			var total = 0;
			var array = new int[] { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, };
			foreach (var ii in array)
			{
				total += ii;
			}
			Console.WriteLine("合計：{0}", total); // 合計：55
		}
	}
}
```
これは面倒くさい。  
連番を生み出すのはPerl最強だよな。  

</details>


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


<a name="appliedknowledge"></a>
<details><summary>構造化プログラミングの勉強範囲外(応用知識)</summary>

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
