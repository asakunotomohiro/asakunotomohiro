# C言語
ここは、プログラミング言語のC言語を勉強するブランチになる。  

私の持っている書籍が古く、
[「標準」C言語重要用語解説 :ANSI C/ISO C99対応](https://rnavi.ndl.go.jp/mokuji_html/023271861.html)
のC99とそれより古い規格が混在して勉強している可能性が高い。  
一応C99で策定された情報を確認しようと思うが、めんどくさいな・・・とは言え、C99に即した本を買い増すのもな・・・。  
[付録 D C99 でサポートされている機能](https://docs.oracle.com/cd/E19205-01/820-1209/bjayy/index.html)  
持っている本を見返したら[Cデスクトップリファレンス](https://www.oreilly.co.jp/books/4873111153/)こそ、C99に則している本だった。  


<a name="algorithmHowToUseTheBranch"></a>
## ブランチの利用方法
ここのブランチは、Python書籍からのアルゴリズム問題をC言語に置き換えて勉強するのに使う。  
また、具体的なアルゴリズムの種類は、下記書籍の目次チャプターに限定する。  
書籍名：Pythonで学ぶアルゴリズムの教科書  
※チャプターごとにブランチを分けていく。  


<a name="algorithmHowToStudy"></a>
### 勉強方法
本来の大本の勉強は、「Pythonで学ぶアルゴリズムの教科書」を元にアルゴリズムの勉強をする。  

それを前提に、C言語の勉強は、以下となる。  
本格的に勉強するプログラミング言語の一つとしている。  
学生時代から勉強している言語のため、とりあえず、家にある本を引っ張り出してきて勉強するつもりだ。  
[C言語リファレンス](https://ja.cppreference.com/w/c)  

* 書籍  
  [プログラミング言語C―ANSI規格準拠― 第2版](https://www.kyoritsu-pub.co.jp/bookdetail/9784320026926)
  ※実際には使わない。お守り代わり。  
  [技術評論社](https://gihyo.jp/book)の[新ANSI C言語辞典](https://gihyo.jp/book/1997/4-7741-0432-9)
  ※辞典とは言え、これも出番はないかな。  
  ※説明が技術的で、全く説明が頭に入ってこない・・・増版しないわ。  
  [秀和システム](https://www.shuwasystem.co.jp)の[現場ですぐに使える！ C/C++逆引き大全 560の極意](https://www.shuwasystem.co.jp/book/9784798054278.html)
  ※と言いつつ、この辞典(?)も使う。  


<a name="algorithmDevelopmentEnvironment"></a>
## 開発環境
できる限り`MacVim`を使うつもり。  
開発規模が大きくなった場合、`Visual Studio Code(VSCode)`に逃げるかもしれない。  
さらに手に負えないほどの規模にまで膨れ上がれば、`Visual Studio 2019 for Mac`などを使う・・・かもね。  


<a name="algorithmCheckTheStatusOfTheActualWorkingEnvironment"></a>
<details><summary>実際に作業する環境の状況確認</summary>

勉強環境のコンパイルバージョン：clang version 11.0.0
```terminal:version
$ gcc --version
Configured with: --prefix=/Applications/Xcode.app/Contents/Developer/usr --with-gxx-include-dir=/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/4.2.1
Apple clang version 11.0.0 (clang-1100.0.33.16)
Target: x86_64-apple-darwin18.7.0
Thread model: posix
InstalledDir: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin
$
```

プログラムファイルの拡張子：`*.c`  
ヘッダファイルの拡張子：`*.h`  
標準の文字コード(プログラムファイル)：UTF-8(?)  
文字区切り(行末記号)：セミコロン`;`  
インデント：フリーフォーマット  
標準の出力関数：`printf`  
単数行コメント方法：`//`  
複数行コメント方法：`/* 〜 */`  


<a name="algorithmHelloWorld"></a>
### ハローワールドプログラム
`main`文言の先頭に`int`を付けることでワーニングが解消できた。  

    $ cat helloWorld.c
    #include <stdio.h>
    
    int main()
    {
    	printf("hello, world\n");
    }
    $ gcc helloWorld.c
    $ ./a.out
    hello, world
    $

しかし、この`int`は、戻り値になるはず。  
それなのに、`return`がなくても問題にならないのは矛盾しているよね。  
そして、引数も空のままって・・・。  

<a name="algorithmkandrHelloWorld"></a>
<details><summary>K&Rの"Hello World."</summary>

**K&R**の **Hello World.** 出力は難易度が高かった
(参考にする書籍のP8)。  

    $ cat helloWorld.c
    #include <stdio.h>
    
    main()
    {
    	printf("hello, world\n");
    }
    $ gcc helloWorld.c
    helloWorld.c:3:1: warning: type specifier missing, defaults to 'int' [-Wimplicit-int]
    main()
    ^
    1 warning generated.
    $ ./a.out
    hello, world
    $

一応コンパイルが通り、実行できるのだが、ワーニングが出るのはちょっとな・・・。  
お守り変わりにして使わない発言した直後に使うのもどうかと思ったが、普通のプログラムの掲載がK&R本だけだったよ。  

<a name="algorithmbonusHelloWorld"></a>
#### おまけ。
以下の戻り値無し版もだめだった。

    #include <stdio.h>
    
    void main()
    {
    	printf("hello, world\n");
    }

原因は分からないが、コンパイラのせいだろう。  

</details>

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

<a name="algorithmSpecificBasicKnowledge"></a>
## 具体的な基礎知識
何はともあれ、まずは、"Hello World"を表示するプログラムを作る。  
その後で、基礎中の基礎となる制御構造(構造化プログラミング)を簡略化しながら勉強する。  
そのため、以下の手順で勉強を進めることにする。  

* 以下、手順。  
  * [x] 手順1. 勉強用のブランチに移動する。  
  * [x] 手順2. ルートディレクトリのひな形ディレクトリをコピーしてくる。  
  * [x] 手順2-0. ここまでは、上位ディレクトリにある"README.md"で作業を終えているはず。  
  * [x] 手順2-1. 当ファイル(`README.md`)の書き換えを行う。  
        ※ **上位ディレクトリにある"README.md"** は触らない。  
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

<a name="algorithmSpecificAlgorithmPreSolvingProcedure"></a>
## 具体的なアルゴリズム問題解決前手順
基礎知識5種類を勉強するのと同じように、アルゴリズムの勉強にも以下の手順で進める。  

* 以下、手順。  
  * [x] 手順1. 勉強用のブランチに移動する(上記[目次](#algorithmTextbookLearnedinPythonContents)の1チャプター分専用ブランチとする)。  
  * [x] 手順2. 当ファイル(`README.md`)の書き換えを行う。  
    [x] アルゴリズムの勉強用に変更する。  
    [x] アルゴリズムの勉強用項目を出すが、基礎知識5種類の勉強項目は隠す(`details`・`summary`)。  
  * [ ] 編集後、コミットする。  
  * [ ] 手順3. 各ディレクトリで、チャプタごとに勉強を進める。  
    ※そのとき、(できる限り)プログラムファイルに[モードライン](https://vim-jp.org/vim-users-jp/2009/06/02/Hack-20.html)を記載する。  
    `/* vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=c noexpandtab: */`  
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

※基本的に、インクルード処理は、省略する(マークダウン記法の先頭にはシャープ記号を配置したくないため)。  
特別な断りが無ければ、**stdio.h**をインクルードしていることとする。  


<a name="variable変数sub"></a>
<details><summary>実際の変数の勉強</summary>

### 変数
辞典からの引用。  
> 値を記憶する入れ物．C言語では非constオブジェクト(記憶対象)をいう．(略)．変数の概念があるかないかは，アセンブリ言語と高水準言語の1つの分かれ目でもある．（以降略


* 絶対的に勉強する一覧  
  * [変数の宣言方法](#subVariable1)  
  * [変数への代入方法及び変数の利用](#subVariable2)  
    * [x] 代入演算子(`=`)  
  * [変数値の出力方法](#subVariable3)  
  * [データ型](#subVariable4)  
    * [x] 整数(`int`)  
    * [x] 浮動小数点型(`float`)  
    * [x] 文字型(`string`)  
    * 真偽型(`bool`)  
      C言語には存在しない(C99にはある)。  
  * [変数値を使った計算方法](#subVariable5)  
    * [x] 算術演算子  
      * [x] 足し算(`+`)  
      * [x] 引き算(`-`)  
      * [x] 掛け算(`*`)  
      * [x] 割り算(`/`)  
      * 累乗(`**`)  
        C言語にはない。  
      * 割り算の商(`//`)  
        C言語にはない。  
      * [x] 割り算の余り(`%`)  
  * [型変換(キャスト)方法](#subVariable6)  
    * [x] 明示変換  

<a name="subVariable1"></a>
#### 変数
様式：
`データ型 変数名;`  

以下、普通に変数を使ってみる。
```c:変数.c
int main(void)
{
	int ho = 20210808;
	char *hoge = "hhooggee";
	float boo = 35.693999;
	double bar = 139.689502;

	printf("ho = %d\n", ho);	// ho = 20210808
	printf("hoge = %s\n", hoge);	// hoge = hhooggee
	printf("boo = %f\n", boo);	// boo = 35.694000
	printf("bar = %f\n", bar);	// bar = 139.689502
}
```
※float型の変数値を正確に出力しきれていない。  

正確な変数宣言：
`記憶クラス 型修飾 符号修飾 サイズ修飾 型名 識別子`  
となる。  
そして、前半4つは任意だ。  

<a name="subVariable2"></a>
#### 変数への代入方法及び変数の利用
様式：
`データ型 変数名 = 値;`  


<a name="subVariable3"></a>
#### 変数値の出力方法
`printf`関数を利用することで変数値を出力できる。  

```c
int main(void)
{
	int bar = 20210808;
	char *hoge = "hoge";
	float boo = 35.693999;
	double egoh = 139.689502;

	printf("bar  = %d\n", bar);		// bar  = 20210808
	printf("hoge = %s\n", hoge);	// hoge = hoge
	printf("boo  = %f\n", boo);		// boo  = 35.694000
	printf("egoh = %f\n", egoh);	// egoh = 139.689502
}
```

<a name="subVariable4"></a>
#### データ型
今回アルゴリズムで使うデータ型は、以下の中でも4種類のみ。  
`int`・`float`・`string`・`bool`  
C言語の場合、string型がないため、char型で代用する。  
また、bool型もC99規格として使う。  

|データ型|サイズ|備考|
|--------|------|----|
|int|||
|float|||
|string||`char`型のみある。|
|bool||**C99**規格以降で使える。|

<details><summary>表だった情報は無い</summary>

基本的には4種類ある。  
**整数型**：`short`・`int`・`long`の3種類を使い分ける。  
**実数型**：`float`・`double`の2種類を使い分ける。  
**文字型**：`char`を使う。  
**真偽型**：**C++** のみに定義されているとのことだが？  

* 実数型  
`float型`：10進数での有効桁が7桁程度の場合に使う。  

* 文字型  
`char型`：基本的には、`unsigned char型`の配列を多バイト文字列に使う。  

</details>

* 真偽型  
`true`：`1`  
`false`：`0`  

<a name="subVariable5"></a>
#### 変数値を使った計算方法
* 算術演算子  
算術演算をする演算子とのこと(まんまだな)。  

|演算子の種類|演算子|名前|説明|
|------------|------|----|----|
|算術演算子|`+`|加算|足し算|
|算術演算子|`-`|減算|引き算|
|算術演算子|`*`|乗算|掛け算|
|算術演算子|`/`|除算|割り算|
|算術演算子|`**`|累乗|C言語にはないようだ。<br>`cpow()`関数により実現可能。|
|算術演算子|`//`|除算の商|C言語にはないようだ。|
|算術演算子|`%`|余り|割り算の余りを求める。|


<a name="subVariable6"></a>
#### 型変換(キャスト)方法
様式：
`異なる型の変数 = (左辺の型に合わせた型)既存の変数;`  

```C
int int_hoge = 20210830;
float float_hoge = 2021.0830;

float_hoge = int_hoge;	// エラーなくキャストが出来た(int ⇒ float)。
printf("float：%f\n", float_hoge);	// float：20210830.000000

int_hoge = float_hoge;	// エラーなくキャストが出来た(float ⇒ int)。
printf("int：%d\n", int_hoge);	// int：2021

int_hoge = (int)float_hoge;	// エラーなくキャストが出来た(float ⇒ int)。
printf("int：%d\n", int_hoge);	// int：2021
```

<a name="subVariable999"></a>
#### 変数での説明しない項目。

何を調子に乗ったのか、全く関係の無い範囲にまで手を出した部分が多い。  
<details><summary>今回は勉強を見送る一覧</summary>

* [ ] 定数  
* [ ] データ型  
  * [x] 整数(`long`など)  
  * [x] 浮動小数点型(`double`など)  
  * [ ] 型推論  
    C言語には存在しない。  
  * [ ] 複素数型  
    C99から導入された規格(`_Complex`)。  
* [ ] リテラル  
  * [ ] 整数リテラル  
  * [ ] 浮動小数点リテラル  
  * [x] 文字リテラル  
  * [ ] 文字列リテラル  
* [ ] キャスト  
  * [x] 暗黙変換  
* [ ] 演算子  
  * [x] 優先順位  

* ちょっと高度な話題  
  * [ ] ポインタ  

* 関数を変数に代入  
* 関数を引数に使う  

##### 定数
ない。  
しかし、 **ない** と断言するのは、C言語を使い続けた人間としては不服のため、あると言い直すことにしよう。  
要は、ある。  

constが有効活用されており、完全に **定数** として機能しているのがわかる。
```c
int main(void)
{
	const int hoge = 20210808;	// err：note: variable 'hoge' declared const here
	hoge = 20210809;	// err：cannot assign to variable 'hoge' with const-qualified type 'const int'

	printf("hoge = %d\n", hoge);
}
```

以下、定数が存在しないプログラム。
```c
int main(void)
{
	int hoge = 20210808;
	int const *phoge = &hoge;
	printf("phoge = %d\n", *phoge);	// phoge = 20210808

	hoge = 20210809;
	printf("phoge = %d\n", *phoge);	// phoge = 20210809

	phoge = 4649;	// err：incompatible integer to pointer conversion assigning to 'const int *' from 'int' [-Wint-conversion]
}
```
1つ目と2つ目の出力結果が異なっているのは、書き換え不可の変数ではない変数を書き換えているから。  
そのため、`const`を使う場合は正しく使いこなさなければ、全く意味の無い宣言になる。  
最後の書き換えが失敗しているのは、普通に`const`している変数を書き換えているから(これが普通に求める結果かと・・・)。  

以下、上記の書き換え対策。
```c
int main(void)
{
	int hoge = 20210808;
	const int* const phoge = &hoge;	// note: variable 'phoge' declared const here
	printf("phoge = %d\n", *phoge);
	phoge = 20210809;	// cannot assign to variable 'phoge' with const-qualified type 'const int *const'
	printf("phoge = %d\n", *phoge);
}
```
実際に書き換えるプログラムを作ってしまうため、かなり気をつける必要がある。  
ポインタ型の変数は、普通main関数ではない呼び出し先の関数の引数などで宣言していることが多い。
実際、実体が必要ない使い方をする場合は、わざわざ実体を渡してメモリを圧迫させたくない場合にポインタ(参照)渡しをするため、定数のできそこない宣言をすることは往々にしてあるだろう。  

##### データ型
* 整数型  
`int型`：CPUに依存する。  
`short型`・`long型`：CPU依存したくない場合に使う。  

* 実数型  
`double型`：10進数での有効桁が16桁程度の場合に使う。  

* 整数型の種類  

| 型 |サイズ|
|----|------|
|short|符号付き2バイト|
|unsigned short|符号なし2バイト|
|int|符号付き整数|
|unsigned int|符号なし整数|
|long|符号付き4バイト|
|unsigned long|符号なし4バイト|
|int16\_t|符号付き2バイト|
|int32\_t|符号付き4バイト|
|int64\_t|符号付き8バイト|

* 拡張整数型の種類  
※コンパイラによっては存在しない。  

| 型 |サイズ|
|----|------|
|long int|`int`じゃだめなの？|
|unsigned long int|`unsigned int`じゃだめなの？|
|long long int|
|unsigned long long int|
|long long|8バイト|
※`long long`というのは、`long long int`の省略形？  
※[ウィキペディア](https://ja.wikibooks.org/wiki/C言語/データ型と変数の高度な話題)  

* 実数型の種類  

| 型 |サイズ|
|----|------|
|float|単精度の実数|
|double|倍精度の実数|

* 拡張実数型の種類  

| 型 |サイズ|
|----|------|
|long double|16バイト？|

* 文字型の種類  

| 型 |サイズ|
|----|------|
|char|1バイトの文字|
|unsigned char|1バイトの文字(符号なし)|
|wchar\_t|ワイド文字|
|char16\_t|UTF-16の文字|
|char32\_t|UTF-32の文字|

* 真偽型の種類  
`C++言語`のみに存在する論理型。  

| 型 |サイズ|
|----|------|
|bool|真(true)・偽(false)|

C99に限り、\<stdbool.h\>にて、bool型を使えるようだ。  

##### リテラル
C言語にはリテラルという言葉はないようだな。  
実体はあるようだが・・・。  
そう思ったが、K&Rには、"文字のリテラル"で、索引があった。  
なぜにリテラルでまとめないよ・・・探しにくくて仕方ない。  

そこで説明しているのは、
> 文字列定数すなわち、文字列リテラルは、  
> "I am a string"  
> あるいは  
> "" /* 空の文字列 */  

とのことだった。  
文字列のことは分かったが、整数リテラルや浮動小数点リテラルはどうなった？  

拡張文字セットのことも説明しているのだが、よく理解できない。  
> L"..."のようにその前にLを付けて書く。
幅広文字列リテラルは"wchar\_tの配列"という型を持つ。  

とのこと。  
どういう意味？  
拡張文字セットや幅広文字列が何か分からない。  

C言語では、[文字列リテラル](https://docs.oracle.com/cd/E19957-01/805-7888/z4000220f2c4c/index.html)の変更はできると言うことかな。  

c++を含んだC言語での[整数リテラル](https://www.ibm.com/docs/ja/xl-c-and-cpp-aix/11.1.0?topic=SSGH3R_11.1.0/com.ibm.xlcpp111.aix.doc/language_ref/lit_integer.html)  
c++を含んだC言語での[浮動小数点リテラル](https://www.ibm.com/docs/ja/xl-c-and-cpp-aix/11.1.0?topic=SSGH3R_11.1.0/com.ibm.xlcpp111.aix.doc/language_ref/lit_fltpt.html)  

###### IBMによる「[リテラル](https://www.ibm.com/docs/ja/xl-c-and-cpp-aix/11.1.0?topic=SSGH3R_11.1.0/com.ibm.xlcpp111.aix.doc/language_ref/lit.html)」の定義
> リテラル とは、プログラム内で使われる、変更できない値のことです。  

##### 演算子
* 算術演算子  
  * 演算子の種類  
    * 符号演算子  
    * 補数演算子  
    * 否定演算子  
    * 単項算術演算子  
上記の演算子を包括した言い方？  

単項算術演算子のなかに、算術演算子が含まれているようで、
`関数呼び出し`
`配列添え字`
`メモリ`
`記憶量`
`キャスト`
`条件`
`代入`
`順次演算子`
と相反する演算子を指しているとのこと。  
そのため、四則演算子が世間で言う算術演算子のことだろうとしている。  

  * 単項演算子  
    * メモリ演算子  
      単項`&`：アドレス演算子  
      単項`*`：間接参照演算子  
    * 符号演算子  
      単項`+`：正符号演算子  
      単項`-`：負符号演算子  
    * 補数演算子  
      `~`：ビット補数演算子  
    * 否定演算子  
      `!`  
    * 増減演算子  
      `後置++`  
      `後置--`  
      `前置++`  
      `後置--`  
    * 記憶量演算子  
      `sizeof`  

* 雑多な演算子  

|演算子の種類|演算子|名前|説明|
|------------|------|----|----|
|代入演算子|`=`||代入|
|代入演算子|`+=`||加算して代入|
|代入演算子|`-=`||減算して代入|
|代入演算子|`*=`||乗算して代入|
|代入演算子|`/=`||除算して代入|
|代入演算子|`%=`||剰余して代入|
|インクリメント演算子|`++`|1増加|
|デクリメント演算子|`--`|1減少|
|論理演算子|`|`|ビット論理和|ORを返す。|
|論理演算子|`&`|ビット論理積|ANDを返す。|
|論理演算子|`^`|ビット排他的論理和|XORを返す。|
|短絡演算子|`!`|否定|真のとき偽・偽のとき真|
|短絡演算子|`||`|論理和|どちらかの条件が成立すれば真|
|短絡演算子|`&&`|論理積|どちらの条件も成立すれば真|
|シフト演算子|`<<`|シフト演算で右にずらす。|
|シフト演算子|`>>`|シフト演算で左にずらす。|


* 優先順位  

|演算子|結合規則|
|------|--------|
|`()` `[]` `->` `.`|→(左から右)|
|`!` `.` `++` `--` `+` `-` `*(ポインタ)` `&(キャスト)` `sizeof`|←(右から左)|
|`*` `/` `%`|→(左から右)|
|`+` `-`|→(左から右)|
|`<<` `>>`|→(左から右)|
|`<` `<=` `>` `>=`|→(左から右)|
|`==` `!=`|→(左から右)|
|`&`|→(左から右)|
|`^`|→(左から右)|
|`|`|→(左から右)|
|`&&`|→(左から右)|
|`||`|→(左から右)|
|`?:`|→(左から右)|
|`=` `+=` `-=` `*=` `/=` `%=` `&=` `^=` `|=` `&=` `<<=` `>>=`|←(右から左)|
|`.`|→(左から右)|

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
        [x] 添え字とは。  
  * [x] [配列への追加方法](#subArrangement2)  
  * [x] [二次元配列の宣言方法](#subArrangement3)  


<a name="subArrangement1"></a>
#### 配列
様式：
`データ型 配列名[配列要素数];`  

<a name="subArrangement2"></a>
#### 配列への追加方法
様式：
`データ型 配列名[配列要素数] = {値1, 値2, ・・・ };`  
※配列要素数に代入する値が足りない場合、0で埋められる。  

以下、例）
```c
int main(void)
{
	int hoge[5] = {0};	// 5つ全てが0クリアされる。

	hoge[0] = 20210903;
	hoge[1] = hoge[0] + 1;
	hoge[2] = hoge[0] + 2;
	hoge[3] = hoge[0] + 3;
	hoge[4] = hoge[0] + 4;

	printf("hoge = %d\n", hoge[0]);		// hoge = 20210903
	printf("hoge = %d\n", hoge[1]);		// hoge = 20210904
	printf("hoge = %d\n", hoge[2]);		// hoge = 20210905
	printf("hoge = %d\n", hoge[3]);		// hoge = 20210906
	printf("hoge = %d\n", *(hoge+4) );	// hoge = 20210907

	// 以下、1次元配列の場合。
	printf("hoge配列サイズ%ld\n", sizeof(hoge)/sizeof(hoge[0]));	// hoge配列サイズ5
}
```

#### 配列への文字列追加方法
様式：
```c
char 配列名[配列要素数];
strcpy(配列名, "代入したい文字列");
```
※"代入したい文字列"は、配列要素数より1つ小さくしなければならない(`null`のため)。  

以下、2次元配列の文字列代入方法。
```c
char 配列名[配列要素数][配列要素数];
strcpy(配列名[0], "代入したい文字列");
strcpy(配列名[1], "代入したい文字列");
```

<a name="subArrangement3"></a>
#### 二次元配列の宣言方法
様式：
`データ型 配列名[配列要素数][配列要素数];`  

```c
int main(void)
{
	int hoge[5][3] = {0};

	char *phoge[3] = {"hoge", "bar", "boo"};
	char hogeArray[][16] = {
		"hoge",
		"bar",
		"boo",
	};

	for ( int ii = 0; ii < 5; ii++ ) {
		for ( int jj = 0; jj < 3; jj++ ) {
			printf("hoge = %d\n", hoge[ii][jj]);	// 全て0で初期化されている。
		}
	}

	// 以下、ポインタ配列。
	printf("phoge = %s\n", phoge[0]);	// phoge = hoge
	printf("phoge = %s\n", phoge[1]);	// phoge = bar
	printf("phoge = %s\n", phoge[2]);	// phoge = boo

	printf("hogeArray = %s\n", hogeArray[0]);	// hogeArray = hoge
}
```

<a name="subArrangement999"></a>
#### 配列での説明しない項目。

<details><summary>今回は勉強を見送る一覧</summary>

* 配列の応用  
  * [ ] 3次元配列以上の宣言方法。  
  * [ ] 配列を複製する方法。  
    ちょこっと触ってみた。  
  * [ ] 配列からスライスを作成する方法。  
    C言語にはない。  

* 構造体  
  * [ ] 構造体の複製  
  * [ ] 構造体からのスライス作成  
  * [ ] 共用体  
  * [ ] 列挙体  

* コレクション  
  C言語にはない。  
  * [ ] List?  
  * [ ] Set  
  * [ ] Map  
  * [ ] Queue  

</details>

</details>

<a name="Conditional条件分岐sub"></a>
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
`if ( 条件式 ) 処理;`  

通常は、以下のように括弧`{}`でブロックを作る(バグを生ませないために)。
```clang
if ( 条件式A ) {
	処理1;
}
else if ( 条件式B ) {
	処理2;
}
else {
	処理3:
}
```

<a name="subConditional2"></a>
#### 論理演算子(ド・モルガンの法則)

|演算子|意味|備考|
|------|----|----|
|`&&`|論理積|例）`if ( a==b && b==c )`|
|`||`|論理和|例）`if ( a==b || b==c )`|

他のプログラミング言語と同じように左から右に評価する。  
そのため、`&&`の場合であれば、左辺が偽であれば右辺は評価しない。
そして、`||`の場合は、左辺が真であれば右辺は評価しない。  

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
  * [x] [指定回数条件での繰り返し](#subRepetition1)  
    [x] [基本構造例：for( 条件式 )](#subRepetition2)  
    [基本構造例：拡張for命令(`in`)](#subRepetition3)  
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
`for ( 初期化; 条件式; 増減分; ) 処理;`  
C99規格以降であれば、初期化部分で変数の宣言が行える(例：`for( int ii=0; 〜)`)。  

様式：
`while ( 式 ) 処理;`  

<a name="subRepetition2"></a>
##### 指定回数条件での繰り返し：for( 条件式 )
様式：

これは頻繁に使う処理だと思う。
```c
int main(void)
{
	int hoge = 0;

	for ( int ii = 0; ii < 5; ii++ ) {
		printf("hoge：%d\t%d回目\n", hoge, ii);
	}
}
```
※インクルードファイルに、**ctype.h**を読み込む。  

以下、出力結果。
```c
hoge：0	0回目
hoge：0	1回目
hoge：0	2回目
hoge：0	3回目
hoge：0	4回目
```

<a name="subRepetition3"></a>
##### 指定回数条件での繰り返し：拡張for命令
様式：
C言語では出来ない。  


<a name="subRepetition4"></a>
#### `for`の入れ子。
```c
for ( 初期化; 条件式1; 増減分; ) {
	処理1;
	for ( 初期化; 条件式2; 増減分; ) {
		処理2;
	}
}
```


<a name="subRepetition5"></a>
#### ジャンプ処理
普通に`continue`・`break`が使える。  

以下、`continue`処理。
```c
for ( int ii = 0; ii < 5; ii++ ) {
	if ( ii == 2 ) {
		continue;
	}
	printf("hoge：%d\t%d回目\n", hoge, ii);
}
```

以下、出力結果。
```text
hoge：0	0回目
hoge：0	1回目
hoge：0	3回目
hoge：0	4回目
```
2回目が飛ばされている。  

以下、`break`処理。
```c
	for ( int ii = 0; ii < 5; ii++ ) {
		if ( ii == 2 ) {
			break;
		}
		printf("hoge：%d\t%d回目\n", hoge, ii);
	}
```

以下、出力結果。
```terminal
hoge：0	0回目
hoge：0	1回目
```
2回目以降が実行されていない。


<a name="subRepetition6"></a>
#### 真偽条件での繰り返し：while( 条件式 )
様式：
```clang
int hoge = 0;

while ( hoge < 5 ) {
	hoge++;
	printf("%d回目\n", hoge);
}
```

以下、出力結果。
```text
1回目
2回目
3回目
4回目
5回目
```


<a name="subRepetition7"></a>
#### 無限ループ
様式：
以下、`for`様式。
```c
for (;;) {
	処理;
}
```

以下、`while`の様式。
```c
while (1) {
	処理;
}
```
条件式の部分は真以外であれば問題ない(`0`以外を使う)。  
また、どこかで抜ける処理を付ける必要がある。  

以下、例）
```c
while (1) {
	if ( 条件 ) break;
}
```


<a name="subRepetition999"></a>
#### 繰り返しでの説明しない項目。

<details><summary>今回は勉強を見送る一覧</summary>

* [ ] 真偽条件での繰り返し  
  基本構造例：do〜while( 条件式 )  
  アルゴリズムの勉強でも使いそうに思うのだがな・・・。  

</details>

</details>

<a name="function関数sub"></a>
<details><summary>実際の関数の勉強</summary>

### 関数

* 絶対的に勉強する一覧  
  * [x] 使い回せるようにまとめること。  
    * [x] [引数と戻り値の組み合わせ。](#subFunction1)  
      [x] 引数無し-戻り値無し  
      [x] 引数あり-戻り値無し  
      [x] 引数無し-戻り値あり  
      [x] 引数あり-戻り値あり  
    * [配列の受け渡し。](#subFunction2)  
      [x] C言語特有のポインタ渡しになるため必須の確認作業。  
    * [スコープ](#subFunction3)  
      [x] グローバルスコープ変数  
      [x] ローカルスコープ変数  


<a name="subFunction1"></a>
#### 関数
様式：
```c
戻り値のデータ型 関数名( データ型 引数名1, データ型 引数名2, ・・・ )
{
	処理;
	return 戻り値;
}
```
※プロトタイプ宣言が必要。  

別の書き方。
```c
戻り値のデータ型 関数名( データ型 引数名1, データ型 引数名2, ・・・ )
データ型 引数名1, 引数名2, ・・・;
{
	処理;
	return 戻り値;
}
```
この書き方はわかりにくいため、上記の方が良い。  
なぜこの書き方が出来るのか分からない。  
K&R推奨かと思ったが、全く話題に触れられていなかった。  

引数部分に`void`を記載した場合、引数なしの関数になる。  
戻り値部分に`void`を記載した場合、戻り値なしの関数になる。  

以下、引数無し-戻り値無し
```c
void nohogeno(void) {
	printf("引数無し-戻り値無し\n");
}
```

以下、引数あり-戻り値無し
```c
void nohogeint(int hoge) {
	printf("引数あり(%d)-戻り値無し\n", hoge);
}
```

以下、引数無し-戻り値あり
```c
int inthogeno(void) {
	printf("引数無し-戻り値あり\n");

	return 20210914;
}
```

以下、引数あり-戻り値あり
```c
int inthogeint(int hoge) {
	printf("引数あり(%d)-戻り値あり\n", hoge);

	return 20210914 + hoge;
}
```

以下、例外というか、使っている姿を見たことのない説明。  
場所の確保(関数を予約する)用に、関数名のみ記述することができる。
様式：
`関数名() {}`  
`hoge() {}`  
処理が全くなく、何も処理として戻さない。  


##### プロトタイプ宣言
関数を作る場合、その関数のプロトタイプを事前に作っておく必要がある。  
C言語では必須で無いような説明もあったが、作らなければエラーになったため、必要だと思う。  
むしろ、C言語の時代から合ったと思うのだがな・・・。  
様式：
`戻り値のデータ型 関数名( 1つ目のデータ型, 2つ目のデータ型, ・・・ )`
上記の説明2つ目がまさにこれ。  

```c
int hogefunc(int);

int main(void)
{
	hogefunc(20210914);
}

int hogefunc(int arg) {
	print("%d\n", arg);
    return 0;
}
```


<a name="subFunction2"></a>
#### 配列の受け渡し。
配列宣言：
`int hoge[10] = 0;`  

様式：

```c
// 以下、プロトタイプ宣言。
int hogefunc(int [], int);

int main(void)
{
printf("----------------------------------------\n");
	int hoge[5] = {100, 200, 300, 400, 500};
	int size = sizeof(hoge)/sizeof(hoge[0]);	// 配列の大きさ。
	int ret;

	printf("intの大きさ：%ld\n", sizeof(int));
				// intの大きさ：4
	printf("配列の大きさ：%ld\n", sizeof(hoge));
				// 配列の大きさ：20
	printf("配列の要素数：%ld\n", sizeof(hoge)/sizeof(int));
				// 配列の要素数：5	←☆この求め方は非推奨。
	printf("配列の要素数：%ld\n", sizeof(hoge)/sizeof(hoge[0]));
				// 配列の要素数：5	←☆このやり方で配列の大きさを調べること。

	ret = hogefunc(hoge, size);

}

int hogefunc(int hoge[], int size) {
	printf("hogefunc関数内\n");

	printf("配列の大きさ(関数内)：%ld\n", sizeof(*hoge));
				// 配列の大きさ(関数内)：4	←☆データ型の大きさを表しているsizeof(int)。
	printf("配列の要素数(関数内)：%ld\n", sizeof(*hoge)/sizeof(hoge[0]));
				// 配列の要素数(関数内)：1
		// 5つの要素を持っている配列が1つの要素しか無いことにされている。

	for ( int ii=0; ii < size; ii++) {
		printf("関数内で配列を表示->要素[%d]の値[%d]\n", ii, hoge[ii]);
	}

	return 20210914 + hoge[0];
}
```
※インクルードファイルに、**ctype.h**を読み込む。  

以下、関数内での出力結果。
```terminal
関数内で配列を表示->要素[0]の値[100]
関数内で配列を表示->要素[1]の値[200]
関数内で配列を表示->要素[2]の値[300]
関数内で配列を表示->要素[3]の値[400]
関数内で配列を表示->要素[4]の値[500]
```

ポインタ配列`int *hoge[20210915];`などあるが、そのとき調べることにする。  
多次元配列などは関数に渡さないよね・・・きっと。  


<a name="subFunction3"></a>
#### スコープ
グローバル変数：
異なるファイルの変数を使う場合の宣言`extern`を付ける。  
ファイル先頭(関数外)で宣言する。  

スコープ変数：
狭義域はブロック内で宣言する。  


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
  少しだけ取り組む。  
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
それをPerl用に移植する。  

* ルールもPythonと同じ。  
  * 点数を配列で定義する。  
    `my @score = (70, 98, 92, 88, 64);`  
  * `for`を用いる。  

<details><summary>展開。</summary>

以下、プログラム。
```c
int main(void)
{
	// 以下の配列に入っている数字を使い、合計点及び平均点を求める。
	int score[] = {70, 98, 92, 88, 64};
	int scorecount = 0;	// 配列の大きさを格納する。
	int total = 0;		// 合計値用変数。
	int average = 0;	// 平均値用変数。
	float faverage = 0;	// 平均値用変数。

	scorecount = sizeof(score)/sizeof(score[0]);
	for( int ii = 0; scorecount > ii; ii++ ) {
		// 以下、合算。
		total += score[ii];
	}
	average = total / scorecount;	// 平均値を求める。
	faverage = (float)total / scorecount;	// 平均値を求める。

	printf("合計点     ：%d\n", total);		// 合計点     ：412
	printf("平均点int  ：%d\n", average);	// 平均点int  ：82
	printf("平均点float：%f\n", faverage);	// 平均点float：82.400002
}
```

</details>

[メニューに戻る](#algorithmTextbookLearnedinPythonChapter2)  


<a name="addFrom1tonChapter2"></a>
#### 1からnまで足し合わせる。
勉強内容はPythonと基本は同じ。  
それをC用に移植するだけのこと。  

* ルール1もPythonと同じ。  
  * `for`を用いる。  
  * 関数は定義しない。  
    私のルールは、必ず関数定義をすると言うことなので、ここだけ無視する。  

<details><summary>展開。</summary>

以下、ルール1のプログラム。
```c
int addup1()
{
	int total = 0;
	for( int ii = 1; ii <= 10; ii++ ) {
		total += ii;
	}

	return total;
}

int main(void)
{
	int ret = addup1();
	printf("1から10までの加算結果：%d\n", ret);
		// 1から10までの加算結果：55

	return 0;
}
```

</details>

* ルール2もPythonと同じ。  
  * nまでの値を関数の引数で受け取る。  
  * 関数内で合算した結果をreturnで返す。  
    あぁルール1でやったことだよ・・・。  

<details><summary>展開。</summary>

以下、ルール2のプログラム。
```c
int addup2(int num)
{
	int total = 0;
	for( int ii = 1; ii <= num; ii++ ) {
		total += ii;
	}

	return total;
}

int main(void)
{
	int ret = addup2(10);
	printf("1からnまでの加算結果：%d\n", ret);
		// 1からnまでの加算結果：55

	return 0;
}
```
何のひねりもないプログラムになった。  

</details>

* ルール3もPythonと同じ。  
  * 工夫して計算する。  
  * (初めの数+終わりの数)*(足し合わせる個数/2)  

<details><summary>展開。</summary>

以下、ルール3のプログラム。
```c
int addup3(int num)
{
	int total = (1 + num) * num / 2;

	return total;
}

int main(void)
{
	int ret = addup3(10);
	printf("工夫した加算結果：%d\n", ret);
		// 工夫した加算結果：55

	return 0;
}
```

</details>

[メニューに戻る](#algorithmTextbookLearnedinPythonChapter2)  


<a name="outputTheMultiplicationTableChapter2"></a>
#### 九九の式を出力する。
Pythonでやったように、九九の式を出すのではなく、九九表を出すことにする。  
ルールはPythonと同じ。  
※[二重ループ(forの入れ子)](#subRepetition4)を使う。  

* 作業ルール。  
  * 二重ループを使う。  

<details><summary>縦に並ぶ出力結果</summary>

以下、プログラム。
```c
int kuku()
{
	int total = 0;
	for( int ii = 1; ii < 10; ii++ ) {
		for( int jj = 1; jj < 10; jj++ ) {
			printf("%2d x %2d = %2d", ii, jj, ii*jj);
			printf("\n");
		}
		printf("\n");
	}

	return total;
}

int main(void)
{
	kuku();

	return 0;
}
```

以下、出力結果。
```terminal
 1 x  1 =  1
 1 x  2 =  2
 1 x  3 =  3
 1 x  4 =  4
 1 x  5 =  5
 1 x  6 =  6
 1 x  7 =  7
 1 x  8 =  8
 1 x  9 =  9

 2 x  1 =  2
 2 x  2 =  4
 2 x  3 =  6
 2 x  4 =  8
 2 x  5 = 10
 2 x  6 = 12
 2 x  7 = 14
 2 x  8 = 16
 2 x  9 = 18

 3 x  1 =  3
 3 x  2 =  6
 3 x  3 =  9
 3 x  4 = 12
 3 x  5 = 15
 3 x  6 = 18
 3 x  7 = 21
 3 x  8 = 24
 3 x  9 = 27

 4 x  1 =  4
 4 x  2 =  8
 4 x  3 = 12
 4 x  4 = 16
 4 x  5 = 20
 4 x  6 = 24
 4 x  7 = 28
 4 x  8 = 32
 4 x  9 = 36

 5 x  1 =  5
 5 x  2 = 10
 5 x  3 = 15
 5 x  4 = 20
 5 x  5 = 25
 5 x  6 = 30
 5 x  7 = 35
 5 x  8 = 40
 5 x  9 = 45

 6 x  1 =  6
 6 x  2 = 12
 6 x  3 = 18
 6 x  4 = 24
 6 x  5 = 30
 6 x  6 = 36
 6 x  7 = 42
 6 x  8 = 48
 6 x  9 = 54

 7 x  1 =  7
 7 x  2 = 14
 7 x  3 = 21
 7 x  4 = 28
 7 x  5 = 35
 7 x  6 = 42
 7 x  7 = 49
 7 x  8 = 56
 7 x  9 = 63

 8 x  1 =  8
 8 x  2 = 16
 8 x  3 = 24
 8 x  4 = 32
 8 x  5 = 40
 8 x  6 = 48
 8 x  7 = 56
 8 x  8 = 64
 8 x  9 = 72

 9 x  1 =  9
 9 x  2 = 18
 9 x  3 = 27
 9 x  4 = 36
 9 x  5 = 45
 9 x  6 = 54
 9 x  7 = 63
 9 x  8 = 72
 9 x  9 = 81
```

</details>

<details><summary>適度に折り返された表示形式。</summary>

以下、四角形っぽい表示に置き換えたプログラム。
```c
int kuku()
{
	for( int ii = 1; ii < 10; ii++ ) {
		for( int jj = 1; jj < 10; jj++ ) {
			printf("%2dx%d=%2d", ii, jj, ii*jj);	←☆ここの処理で改行部分を調整した。
		}
		printf("\n");
	}

	return 0;
}

int main(void)
{
	kuku();

	return 0;
}
```

以下、出力結果。
```c
 1x1= 1 1x2= 2 1x3= 3 1x4= 4 1x5= 5 1x6= 6 1x7= 7 1x8= 8 1x9= 9
 2x1= 2 2x2= 4 2x3= 6 2x4= 8 2x5=10 2x6=12 2x7=14 2x8=16 2x9=18
 3x1= 3 3x2= 6 3x3= 9 3x4=12 3x5=15 3x6=18 3x7=21 3x8=24 3x9=27
 4x1= 4 4x2= 8 4x3=12 4x4=16 4x5=20 4x6=24 4x7=28 4x8=32 4x9=36
 5x1= 5 5x2=10 5x3=15 5x4=20 5x5=25 5x6=30 5x7=35 5x8=40 5x9=45
 6x1= 6 6x2=12 6x3=18 6x4=24 6x5=30 6x6=36 6x7=42 6x8=48 6x9=54
 7x1= 7 7x2=14 7x3=21 7x4=28 7x5=35 7x6=42 7x7=49 7x8=56 7x9=63
 8x1= 8 8x2=16 8x3=24 8x4=32 8x5=40 8x6=48 8x7=56 8x8=64 8x9=72
 9x1= 9 9x2=18 9x3=27 9x4=36 9x5=45 9x6=54 9x7=63 9x8=72 9x9=81
```

</details>

<details><summary>展開。</summary>

以下、我々学生時代から親しんできた九九表プログラム。
```c
int kuku()
{
	for( int ii = 1; ii < 10; ii++ ) {
		for( int jj = 1; jj < 10; jj++ ) {
			printf("%3d", ii*jj);
		}
		printf("\n");
	}

	return 0;
}

int main(void)
{
	kuku();

	return 0;
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

Pythonに倣い、試す数は**2〜2分のn**までの数で割ることを調べる方法をとる。  
例えば、10を調べる場合、その半分より大きい数(**6**・**7**・**8**・**9**)では、10を割ることが出来ない。  
そのことを利用した方法で素数を求める。  
後日、[エラトステネスの篩](#eratosthenesSieveChapter2)を使った効率のいいアルゴリズムを勉強する。  

* 素数を求めるルール  
  * 二重ループを使う。  
  * 2から2分のnまでの数で割る。  
    ※それらの数で割り切れなければ素数。  

<details><summary>展開。</summary>

以下、プログラム。
```c
int prime()
{
	// 2から100までの素数を出力する関数。
	for( int ii = 2; ii < 101; ii++ ) {
		int half = ii / 2;	// 商を求める。
		bool flag = true;
		for( int jj = 2; jj < half+1; jj++ ) {
			if( (ii % jj) == 0 ) {
				// 剰余算にて、割り切れるならば、
				flag = false;	// falseを代入する(要は、出力対象外)。
				break;
			}
		}
		if( flag == true ) {
			printf("%d,", ii );
		}
	}

	return 0;
}

int main(void)
{
	prime();

	return 0;
}
```
※インクルードファイルに、**stdbool.h**を読み込む。  
bool型を使うために必要。  

以下、実行結果。
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
<details><summary>階乗プログラム例。</summary>

以下、サンプルプログラム。
```c
int main(void)
{
	// 10の階乗を求める。
	int total = 10;
	for( int ii = 9; 0 < ii; ii-- ) {	←☆9から0になるまでデクリメントを行う。
		total *= ii;
	}
	printf("10!：%d", total );
	// 出力結果：10!：3628800	←☆10の階乗になっている。

	return 0;
}
```

</details>

**再帰関数とは**
関数内から自身の関数を呼び出すことを再帰処理という。
また、その呼び出す仕組みの関数を再帰関数という。  

<a name="findTheFactorialOfNChapter2factorialsample"></a>
<details><summary>再帰用プログラム例。</summary>

以下、再帰関数プログラム例）
```c
int recursion_sample(int count)
{
	if ( count > 0 ) {
		printf("再帰関数%d回目の実行\n", count );	←☆記述場所を変えることで、1から開始できる。
		recursion_sample( count - 1 );
	}

	return 0;
}

int main(void)
{
	recursion_sample(10);	// 再帰関数呼び出し。

	return 0;
}
```

以下、実行結果。
```terminal
再帰関数10回目の実行
再帰関数9回目の実行
再帰関数8回目の実行
再帰関数7回目の実行
再帰関数6回目の実行
再帰関数5回目の実行
再帰関数4回目の実行
再帰関数3回目の実行
再帰関数2回目の実行
再帰関数1回目の実行
```

</details>

* ルール1  
  再帰関数を使わない。  
  * 関数定義は行わない(私のプログラムでは行う)。  
  * `for`を使う。  

<details><summary>展開。</summary>

以下、ルール1のプログラム。
```c
int factorial1(const int MAX)
{
	// 階乗を求める関数。
	//	この関数は、サンプル関数に引数を受け取る形にしただけのもの。
	int count = 1;
	for( int ii = MAX; ii > 0; ii-- ) {
		count *= ii;
	}

	return count;
}

int main(void)
{
	int factorial = factorial1(10);		// ルール1に従った階乗を求める関数呼び出し。
	printf("10!：%d\n", factorial );	// 10!：3628800

	return 0;
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

<details><summary>展開。</summary>

以下、ルール2のプログラム。
```c
int factorial2(int count)
{
	// 階乗を求める関数。
	int total = 0;
	if( count == 0 ) {
		total = 1;
	}
	else{
		total = count * factorial2(count - 1);
	}

	return total;
}

int main(void)
{
	int factorial = factorial2(10);
	printf("10!：%d", factorial );

	return 0;
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
```c
int main(void)
{
	for( int ii = 0, count = 10; 100 > ii; ii++ ) {
		printf("%3d", ii );
		count--;
		if( count == 0 ) {
			printf("\n");
			count = 10;
		}
	}

	return 0;
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
これを表示するだけなのに、数十分かかってしまった。  

</details>

<details><summary>展開。</summary>

以下、プログラム。
```c
int tablecreate(int *table)
{
	// 篩いテーブル作成。
	for( int ii = 0; 100 > ii; ii++ ) {
		table[ii] = ii;
	}
	table[0] = 999;	// falseのつもり。
	table[1] = 999;	// falseのつもり。
	// 篩いテーブル内容表示。
	for( int ii=0, jj=0; 100 > ii; ii++, jj++ ) {
		if( jj == 10 ) {
			printf("\n");
			jj=0;
		}
		if( table[ii] == 999 ) {
			printf("  /");
		}
		else{
			printf("%3d", table[ii]);
		}
	}

	return 0;
}

int eratosthenesSieveProcess(int *table, int start)
{
	// エラトステネスの篩を処理する関数
	printf("%dの倍数をふるい落とす。\n", start);
	for( int ii = start + start; 100 > ii; ii += start ) {
		table[ii] = 999;
	}

	return 0;
}

int eratosthenesSieve(int *table)
{
	// エラトステネスの篩を表示する関数。
	for( int ii=0, jj=0; 100 > ii; ii++, jj++ ) {
		if( jj == 10 ) {
			printf("\n");
			jj=0;
		}
		if( table[ii] == 999 ) {
			printf("  /");
		}
		else{
			printf("%3d", table[ii]);
		}
	}

	return 0;
}

int main(void)
{
	int table[10*10];	// 10x10のテーブル作成(1次元配列)。
	tablecreate(table);	// テーブル作成後に表示する。
	for( int ii = 2; 10 > ii; ii++ ) {
		if( table[ii] == 999 ) {
			continue;
		}
		printf("\n-------\n");
		eratosthenesSieveProcess(table, ii);
		eratosthenesSieve(table);
	}

}
```

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
あっているように思えないのだが、本当に、このやり方で良いのか？  
結果だけを見れば(たまたま)あっているだけに思えてならない。  

</details>

[メニューに戻る](#algorithmTextbookLearnedinPythonChapter2)  


<a name="understandnAryNotationChapter2"></a>
#### n進法を理解する。
アルゴリズムとして勉強することではない。  
普通の一般説明。  
[ビット演算(`&`・`|`・`^`・`~`)](#learnBitwiseOperationsChapter4)は、別の機会。  

<details><summary>展開。</summary>

以下、プログラム。
```c
int main(void)
{
	printf("%d\n", 255);		// 255
	printf("%d\n", 0b11111111);	// 255	←☆2進数。
	printf("%d\n", 0377);		// 255	←☆8進数。
	printf("%d\n", 0xff);		// 255	←☆16進数。

	return 0;
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
ビット演算(`&`・`|`・`^`・`~`)  

|演算子|意味|例|説明|
|:----:|----|--|----|
|`&`|論理積(AND)|`a=b & 0x7FFF;`|両方のビットが1のとき、結果が1になる。|
|`|`|論理和(OR)|`a=b | 0x8000;`|片方のビットが1のとき、結果が1になる。|
|`^`|排他的論理和(XOR)|`a=b ^ 0x000F;`|両方のビットが異なるとき、結果が1になる。|
|`~`|補数(Not)|`a = ~a;`|ビットを反転する。|
|||||
|`<<`|左シフト|`a=a << 2;`||
|`>>`|右シフト|`a=a >> 2;`||

以下、簡易なプログラム。
```c
int main(void)
{
	// 以下、ビット単位演算子。
	int bit, original=0x55555555;
	printf("%#x\n", original);		// 0x55555555
	bit = original & 0x0000FFFF;	// 論理積
	printf("%#x\n", bit);	// 0x5555
	bit = original | 0x0000FFFF;	// 論理和
	printf("%#x\n", bit);	// 0x5555ffff
	bit = original ^ 0x0000FFFF;	// 排他的論理和
	printf("%#x\n", bit);	// 0x5555aaaa
	bit = ~original;				// 補数(not処理)
	printf("%#x\n", bit);	// 0xaaaaaaaa

	return 0;
}
```

[メニューに戻る](#algorithmTextbookLearnedinPythonChapter4)  


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

* [ ] "study2programming"にマージする時のルール。  
  * [ ] 誤字脱字程度のコミットはスカッシュしたい。  
  * [ ] マージ後"study2programming"をPushする。  
    ※masterにマージすることはない。  
  * [ ] マージごとにタグ付けをする(そしてPush実施)。  

* 例外としてmasterに取り込む場合は、チェリーピッキングでピンポイントに必要最小限のコミットのみを取り込む(しつこいが、masterに取り込むことはしたくない)。  
  言いたいことは、履歴を複数にしたくないと言うこと。  


以上。
<!-- vim: set ts=4 sts=4 sw=4 tw=0 expandtab: -->
