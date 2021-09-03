# C言語
ここは、プログラミング言語のC言語を勉強するブランチになる。  

私の持っている書籍が古く、
[「標準」C言語重要用語解説 :ANSI C/ISO C99対応](https://rnavi.ndl.go.jp/mokuji_html/023271861.html)
のC99とそれより古い規格が混在して勉強している可能性が高い。  
一応C99で策定された情報を確認しようと思うが、めんどくさいな・・・とは言え、C99に即した本を買い増すのもな・・・。  
[付録 D C99 でサポートされている機能](https://docs.oracle.com/cd/E19205-01/820-1209/bjayy/index.html)  
持っている本を見返したら[Cデスクトップリファレンス](https://www.oreilly.co.jp/books/4873111153/)こそ、C99に則している本だった。  


## ブランチの利用方法
現在のブランチは、基礎知識5種類を勉強するためにある。  


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
  [アスキー](https://ascii.jp)の"エキスパートCプログラミング 知られざるCの深層"  

* 利用を控えた書籍  
  [O'Reilly](https://www.oreilly.co.jp/books/)の[Head First C ―頭とからだで覚えるCの基本](https://www.oreilly.co.jp/books/9784873116099/)  


### 開発環境
できる限り`MacVim`を使うつもり。  
開発規模が大きくなった場合、`Visual Studio Code(VSCode)`に逃げるかもしれない。  
さらに手に負えないほどの規模にまで膨れ上がれば、`Visual Studio 2019 for Mac`などを使う・・・かもね。  


## 「[Pythonで学ぶアルゴリズムの教科書](https://book.impress.co.jp/books/1120101024)」
本の概要。  
> エンジニアの基礎体力を身につける  
> 
> Pythonを用い、ITエンジニアが身につけたい王道アルゴリズムを手を動かしながら学べる入門書です。  
> スタック、キュー、リスト、木、グラフなどのデータ構造から、サーチ、ソート、ハッシュといった王道アルゴリズムを厳選しつつ、ユークリッドの互除法、最短経路問題、フラクタル図形の描画などワンランク上の知識・技術まで網羅。  
> サンプルは手入力しやすい短めのプログラムを108個用意しています。  
> 資格＆就職試験に挑む方、大学や専門学校で情報処理を学ぶ方など、プログラミングの力を伸ばしたいすべての方におすすめです。  

<details><summary>基礎知識5種類の項目</summary>

基礎知識5種類の勉強が終わり次第、下記のチェックリストをここに移動する。  

</details>

※プログラミングに使う基礎知識を統一する(簡単に済ませられる量に絞り込む)。  
* 基礎知識5種類  
  * [x] [変数](#variable変数)2021/08/30  
  * [ ] [配列](#arrangement配列)  
  * [ ] [条件分岐](#Conditional条件分岐)  
  * [ ] [繰り返し](#repetition繰り返し)  
  * [ ] [関数](#function関数)  

<details><summary>アルゴリズムの勉強</summary>

そもそも基礎知識5種類の勉強が終わっていないため、着手できない。  

* [アルゴリズム勉強目次](#algorithmTextbookLearnedinPython)  
  * [ ] Chapter 1 プログラミングの基礎知識  
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

</details>

<details><summary>基礎知識5種類の作業手順</summary>

## 具体的な基礎知識
何はともあれ、まずは、"Hello World"を表示するプログラムを作る。  
その後で、基礎中の基礎となる制御構造(構造化プログラミング)を簡略化しながら勉強する。  
そのため、以下の手順で勉強を進めることにする。  

* 以下、手順。  
  * [x] 手順1. 勉強用のブランチに移動する。  
  * [x] 手順2. ルートディレクトリのひな形ディレクトリをコピーしてくる。  
  * [x] 手順3. コピーしてきたディレクトリ名を"基礎知識用の勉強"に変更する。  
  * [x] 手順3-0. ここまでは、上位ディレクトリにある"README.md"で作業を終えているはず。  
  * [x] 手順3-1. 当ファイル(`README.md`)の書き換えを行う。  
        ※ **上位ディレクトリにある"README.md"** は触らない。  
        ※勉強項目は転記するが、実際の具体的な勉強項目は記載しないことにする(見にくくて仕方ない)。  
  * [x] 手順3-2. `helloWorld.[言語用の拡張子]`のファイルを作り、おなじみ"Hello World."プログラムを作る。  
  * [x] 手順3-3. main関数不要であれば、"**実行済み**"ディレクトリを削除すること。  
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

</details>

<details><summary>アルゴリズム問題解決の作業手順</summary>

## 具体的なアルゴリズム問題解決前手順
基礎知識5種類を勉強するのと同じように、アルゴリズムの勉強にも以下の手順で進める。  

* 以下、手順。  
  * [x] 手順1. 勉強用のブランチに移動する(上記目次の1チャプター分専用ブランチとする)。  
  * [ ] 手順2. ルートディレクトリのひな形ディレクトリ配下の必要なディレクトリをコピーする。  
    **Pythonで学ぶアルゴリズムの教科書 一生モノの知識と技術を身につける** ディレクトリ配下の必要なチャプター用ディレクトリ。  
  * [ ] 手順3. 当ファイル(`README.md`)の書き換えを行う。  
  * [ ] 手順3-1. 勉強対象のチャプター子部分にチェックリストを付ける。  
        ※ **上位ディレクトリにある"README.md"** は触らない。  
  * [ ] 手順3-2. 目次部分を修正する。  
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

## 実際に作業する環境の状況確認

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
標準の文字コード(プログラムファイル)：UTF-8(?)  
文字区切り(行末記号)：セミコロン`;`  
インデント：フリーフォーマット  
標準の出力関数：`printf`  
コメント方法：  

### Hello World.
`main`文言の先頭に`int`を付けることでワーニングが解消できた。  

```c:helloWorld.c
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
```

しかし、この`int`は、戻り値になるはず。  
それなのに、`return`がなくても問題にならないのは矛盾しているよね。  
そして、引数も空のままって・・・。  

<details><summary>K&Rの"Hello World."</summary>

#### K&Rの"Hello World."
**K&R**の **Hello World.** 出力は難易度が高かった
(参考にする書籍のP8)。  

```c:warningありのhelloWorld.c
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
```

一応コンパイルが通り、実行できるのだが、ワーニングが出るのはちょっとな・・・。  
お守り変わりにして使わない発言した直後に使うのもどうかと思ったが、普通のプログラムの掲載がK&R本だけだったよ。  

#### おまけ。
以下の戻り値無し版もだめだった。
```c:sample.c
#include <stdio.h>

void main()
{
	printf("hello, world\n");
}
```

何が悪いの？  
よく考えたらコンパイルのバージョンによるのか・・・。  

```terminal
$ gcc --version
Configured with: --prefix=/Applications/Xcode.app/Contents/Developer/usr --with-gxx-include-dir=/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/4.2.1
Apple clang version 11.0.0 (clang-1100.0.33.16)
Target: x86_64-apple-darwin18.7.0
Thread model: posix
InstalledDir: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin
$ g++ --version
Configured with: --prefix=/Applications/Xcode.app/Contents/Developer/usr --with-gxx-include-dir=/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/4.2.1
Apple clang version 11.0.0 (clang-1100.0.33.16)
Target: x86_64-apple-darwin18.7.0
Thread model: posix
InstalledDir: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin
$ cc --version
Apple clang version 11.0.0 (clang-1100.0.33.16)
Target: x86_64-apple-darwin18.7.0
Thread model: posix
InstalledDir: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin
$
```

全部`clang`の`version11.0.0`か・・・。  

</details>

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
辞典からの引用。  
> 値を記憶する入れ物．C言語では非constオブジェクト(記憶対象)をいう．(略)．変数の概念があるかないかは，アセンブリ言語と高水準言語の1つの分かれ目でもある．（以降略

グローバル変数について説明する・・・？  
とりあえず、プログラムは作った。  

* 絶対的に勉強する一覧  
  * [変数の宣言方法](#subVariable1)  
  * 変数への代入方法及び変数の利用  
    * [x] 代入演算子(`=`)  
  * 変数値の出力方法  
  * [データ型](#subVariable4)  
    * [x] 整数(`int`)  
    * [x] 浮動小数点型(`float`)  
    * [x] 文字型(`string`)  
    * [x] 真偽型(`bool`)  
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
#include <stdio.h>

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

<a name="subVariable4"></a>
#### データ型
今回アルゴリズムで使うデータ型は、以下の中でも4種類のみ。  
`int`・`float`・`string`・`bool`  
C言語の場合、string型がないため、char型で代用する。  
また、bool型もC99規格として使う。  

基本的には4種類ある。  
**整数型**：`short`・`int`・`long`の3種類を使い分ける。  
**実数型**：`float`・`double`の2種類を使い分ける。  
**文字型**：`char`を使う。  
**真偽型**：**C++** のみに定義されているとのことだが？  

* 実数型  
`float型`：10進数での有効桁が7桁程度の場合に使う。  

* 文字型  
`char型`：基本的には、`unsigned char型`の配列を多バイト文字列に使う。  

* 真偽型  
`true`：`1`  
`false`：`0`  

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


<a name="subVariable5"></a>
#### 変数値を使った計算方法
* 算術演算子  
算術演算をする演算子とのこと(まんまだな)。  

* 演算子  

|演算子の種類|演算子|名前|説明|
|------------|------|----|----|
|算術演算子|`+`|加算|足し算|
|算術演算子|`-`|減算|引き算|
|算術演算子|`*`|乗算|掛け算|
|算術演算子|`/`|除算|割り算|
|算術演算子|`%`|余り|割り算の余りを求める。|
|算術演算子|`**`|累乗|C言語にはないようだ。<br>`cpow()`関数により実現可能。|
|算術演算子|`//`|除算の商|C言語にはないようだ。|

<a name="subVariable999"></a>
#### 変数での説明しない項目。

何を調子に乗ったのか、全く関係の無い範囲にまで手を出した部分が多い。  
<details><summary>今回は勉強を見送る一覧</summary>

* [x] 定数  
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
#include <stdio.h>

int main(void)
{
	const int hoge = 20210808;	// err：note: variable 'hoge' declared const here
	hoge = 20210809;	// err：cannot assign to variable 'hoge' with const-qualified type 'const int'

	printf("hoge = %d\n", hoge);
}
```

以下、定数が存在しないプログラム。
```c
#include <stdio.h>

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
#include <stdio.h>

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

* 演算子  

以下、ちょっと先走った内容。
|演算子の種類|演算子|名前|説明|
|------------|------|----|----|
|比較演算子|`>`|大なり|
|比較演算子|`>=`|大なりイコール|
|比較演算子|`<`|小なり|
|比較演算子|`<=`|小なりイコール|
|比較演算子|`==`|イコール|
|比較演算子|`!=`|ノットイコール|
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
様式：

<a name="subArrangement3"></a>
#### 二次元配列の宣言方法
様式：

<a name="subArrangement999"></a>
#### 配列での説明しない項目。

[以下、今回の言語に関係の無い項目を削除すること(対象言語に存在するが、見送るもののみ、以下残す)。]  
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

#### ☆アルゴリズムの勉強チャプタ概要☆
<a name="algorithmTextbookLearnedinPython"></a>
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



### Gitのマージルール
当ブランチでC言語の勉強をする。  
以下、流れとして、、、

* 当ブランチ）  
  1. 当ブランチで勉強する。  
  1. 切りの良い場所でコミット実施(1日1回は最低でもコミットしたい)。  

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
