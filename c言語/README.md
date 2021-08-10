# C言語
ここは、プログラミング言語のC言語を勉強するブランチになる。  
名前が`C`の1文字だけというのは座りがよろしくない感じがするため、"言語"という文言を追加した。  

## ブランチの利用方法

### 勉強方法
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


### 基礎知識5種類

* [ ] [変数](#変数)  
* [ ] [配列](#配列)  
* [ ] [条件分岐](#条件分岐)  
* [ ] [繰り返し](#繰り返し)  
* [ ] [関数](#関数)  

#### 具体的な基礎知識
何はともあれ、まずは、"Hello World"を表示するプログラムを作る。  
そのため、以下の手順で勉強を進めることにする。  

[x] 手順1. 勉強用のブランチに移動する。  
[x] 手順2. ルートディレクトリのひな形ディレクトリをコピーしてくる。  
[x] 手順3. コピーしてきたディレクトリ名を"基礎知識用の勉強"に変更する。  
[x] 手順3-1. `helloWorld.[言語用の拡張子]`のファイルを作り、おなじみ"Hello World."プログラムを作る。  
[x] 手順3-2. main関数不要であれば、"**実行済み**"ディレクトリ不要になるはず、削除すること。  
[x] 手順3-3. コミットする。  
[ ] 手順4. 各ディレクトリで、5種類(変数・配列・条件分岐・繰り返し・関数)の"絶対的に勉強する一覧"を勉強する。  
[ ] 手順4-1. 箇条書きごとに勉強を進める。  
[ ] 手順4-2. 箇条書きごとに勉強を終えることで、コミット実施する。  
[ ] 手順4-3. 次の箇条書きに移り、勉強を継続(再開)する。  
[x] 手順4-X. 変数などの勉強で箇条書きごとにコミットは辛いよね。  
[ ] 手順5. 1つのプログラミング言語で、手順4の勉強1種類を終えた時に、次のプログラミング言語に移る。  
           (細かく分けることでやる気が維持される・・・はず)  
[ ] 手順6. 上記、5種類の基礎知識を終わるまで繰り返す。  
[ ] 手順7. 5種類の基礎知識終了にて、"study2programming"ブランチにマージする。  

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

#### Hello World.
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

##### やり直し(正式版？)。
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

##### おまけ。
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

#### <a name="変数"></a>[変数](#変数1)
辞典からの引用。  
> 値を記憶する入れ物．C言語では非constオブジェクト(記憶対象)をいう．(略)．変数の概念があるかないかは，アセンブリ言語と高水準言語の1つの分かれ目でもある．（以降略

グローバル変数について説明する・・・？  
とりあえず、プログラムは作った。  

* 他の話題例  
  * [x] 定数  
  * [ ] データ型  
     * [ ] 整数  
     * [ ] 浮動小数点型  
     * [ ] 文字型  
     * [x] 真偽型  
           C言語には存在しない。  
     * [x] 型推論  
           C言語には存在しない。  
  * [ ] リテラル  
     * [ ] 整数リテラル  
     * [ ] 浮動小数点リテラル  
     * [ ] 文字リテラル  
     * [ ] 文字列リテラル  
  * [ ] キャスト  
     * [ ] 暗黙返還  
     * [ ] 明示変換  
  * [ ] 演算子  
     * [ ] 算術演算子  
     * [ ] 優先順位  

##### <a name="変数1"></a>変数
変数の名前が識別とする。  
**逆引き大全** では、変数の項目がない。  
そして、 **スコープ** という項目で変数の説明をしている(一応 **内部変数** という項目もある)。  
何でだよ。  

どうでもいいことだが、プログラムファイルの名前は、多バイトでも問題ないんだな。  
小さい簡易なプログラムだから許されるとか？  
今の時代に、英数字のみをファイル名に限定するのはおかしなことか。  

以下、普通に変数を使ってみる。
```c:変数.c
#include <stdio.h>

int main(void)
{
	int asa = 20210808;
	char *asakuno = "朝来野智博";
	float tomo = 35.693999;
	double hiro = 139.689502;

	printf("asa = %d\n", asa);	// asa = 20210808
	printf("asakuno = %s\n", asakuno);	// asakuno = 朝来野智博
	printf("tomo = %f\n", tomo);	// tomo = 35.694000
	printf("hiro = %f\n", hiro);	// hiro = 139.689502
}
```
※float型の変数値を正確に出力しきれていない。  

##### 定数
ない。  
しかし、 **ない** と断言するのは、C言語を使い続けた人間としては不服のため、あると言い直すことにしよう。  

constが有効活用されており、完全に **定数** として機能しているのがわかる。
```c
#include <stdio.h>

int main(void)
{
	const int asakuno = 20210808;	// err：note: variable 'asakuno' declared const here
	asakuno = 20210809;	// err：cannot assign to variable 'asakuno' with const-qualified type 'const int'

	printf("asakuno = %d\n", asakuno);
}
```

以下、定数が存在しないプログラム。
```c
#include <stdio.h>

int main(void)
{
	int asakuno = 20210808;
	int const *pasakuno = &asakuno;
	printf("pasakuno = %d\n", *pasakuno);	// pasakuno = 20210808

	asakuno = 20210809;
	printf("pasakuno = %d\n", *pasakuno);	// pasakuno = 20210809

	pasakuno = 4649;	// err：incompatible integer to pointer conversion assigning to 'const int *' from 'int' [-Wint-conversion]
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
	int asakuno = 20210808;
	const int* const pasakuno = &asakuno;	// note: variable 'pasakuno' declared const here
	printf("pasakuno = %d\n", *pasakuno);
	pasakuno = 20210809;	// cannot assign to variable 'pasakuno' with const-qualified type 'const int *const'
	printf("pasakuno = %d\n", *pasakuno);
}
```
一見、こんなアホなことある分けないと思いつつ、実際は書き換えるプログラムを作ってしまうため、かなり気をつける必要がある。  
今回は同じ関数内で完結しているからアホだと思うだけで、ポインタ型の変数は、普通main関数ではない呼び出し先の関数の引数などで宣言していることが多い。
実際、実体が必要ない使い方をする場合は、わざわざ実体を渡してメモリを圧迫させたくない場合にポインタ(参照)渡しをするため、定数のできそこない宣言をすることは往々にしてあるだろう。  



##### データ型
基本的には4種類ある。  
**整数型**：`short`・`int`・`long`の3種類を使い分ける。  
**実数型**：`float`・`double`の2種類を使い分ける。  
**文字型**：`char`を使う。  
**真偽型**：**C++** のみに定義されているとのことだが？  

* 整数型  
`int型`：CPUに依存する。  
`short型`・`long型`：CPU依存したくない場合に使う。  

* 実数型  
`float型`：10進数での有効桁が7桁程度の場合に使う。  
`double型`：10進数での有効桁が16桁程度の場合に使う。  

* 文字型  
`char型`：基本的には、`unsigned char型`の配列を多バイト文字列に使う。  

* 真偽型  
`true`：`1`  
`false`：`0`  

* 整数型の種類  

| 型 |サイズ|
|----|------|
|short|符号付き2バイト|
|unsigned short|符号なし2バイト|
|int|符号付き整数|
|unsigned int|符号なし整数|
|long|符号付き4バイト|
|unsigned long|符号なし4バイト|
|int16_t|符号付き2バイト|
|int32_t|符号付き4バイト|
|int64_t|符号付き8バイト|

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
|wchar_t|ワイド文字|
|char16_t|UTF-16の文字|
|char32_t|UTF-32の文字|

* 真偽型の種類  
`C++言語`のみに存在する論理型。  

| 型 |サイズ|
|----|------|
|bool|真(true)・偽(false)|




##### リテラル



##### キャスト



##### 演算子


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

#### 配列

* 絶対的に勉強する一覧  
  * [ ] 一次元配列  
  * [ ] 多次元配列  
     * [ ] 二次元配列  
     * [ ] 三次元配列  
     * ※複雑さに応じて対応する。  


#### 条件分岐

* 絶対的に勉強する一覧  
  * [ ] 単純分岐-"もし"1つ。  
    基本構造例：if  
  * [ ] 多岐分岐-"もし"2つ以上。  
    基本構造例：if〜else if  
  * [ ] 多岐分岐-条件にて複数から選ぶ。  
    基本構造例：switch  


#### 繰り返し

* 絶対的に勉強する一覧  
  * [ ] 真偽条件での繰り返し  
    基本構造例：while( 条件式 )  
    基本構造例：do〜while( 条件式 )  
  * [ ] 指定回数条件での繰り返し  
    基本構造例：for( 条件式 )  
    基本構造例：拡張for命令  
  * [ ] ジャンプ処理  
    * [ ] break  
    * [ ] continue  


#### 関数

* 絶対的に勉強する一覧  
  * [ ] 使い回せるようにまとめること。  
    * [ ] 引数  
    * [ ] 戻り値  



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
