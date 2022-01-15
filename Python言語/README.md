# Python言語
ここは、プログラミング言語のPython言語を勉強するブランチになる。  


<a name="algorithmHowToUseTheBranch"></a>
## ブランチの利用方法
ここのブランチは、書籍のアルゴリズムを勉強するのに使う。  
また、具体的なアルゴリズムの種類は、下記書籍の目次チャプターに限定する。  
※チャプターごとにブランチを分けていく。  


<a name="algorithmHowToStudy"></a>
## 勉強方法
勉強するプログラミング言語の一つとしている。  
当然本を使うのだが、公式ページを避ける理由がないため、必要に応じて各サイトも利用する。  
[プログラミング言語 Python情報サイト](https://www.python.jp)  
[ゼロからのPython入門講座](https://www.python.jp/train/index.html)  
[Python チュートリアル](https://docs.python.org/ja/3/tutorial/)  
[Python Documentation contents](https://docs.python.org/ja/3/contents.html)  


<a name="algorithmDevelopmentEnvironment"></a>
## 開発環境
開発には、`MacVim`を使う。  
開発規模が大きくなった場合、`Visual Studio Code(VSCode)`に逃げるかもしれない。  
さらに手に負えないほどの規模にまで膨れ上がれば、`Visual Studio 2019 for Mac`などを使う・・・かもね。  

現時点でMacVimを使っているが、なぜかPython2系で認識されており、Python3系の記述をしている部分にエラーが発生し、その都度ターミナルから実行するという不便を強いられている。  
そのため、やり方を変える可能性がある。  


<a name="algorithmTextbookLearnedinPythonBook"></a>
## 「[Pythonで学ぶアルゴリズムの教科書](https://book.impress.co.jp/books/1120101024)」
本の概要。  
> エンジニアの基礎体力を身につける  
> 
> Pythonを用い、ITエンジニアが身につけたい王道アルゴリズムを手を動かしながら学べる入門書です。  
> スタック、キュー、リスト、木、グラフなどのデータ構造から、サーチ、ソート、ハッシュといった王道アルゴリズムを厳選しつつ、ユークリッドの互除法、最短経路問題、フラクタル図形の描画などワンランク上の知識・技術まで網羅。  
> サンプルは手入力しやすい短めのプログラムを108個用意しています。  
> 資格＆就職試験に挑む方、大学や専門学校で情報処理を学ぶ方など、プログラミングの力を伸ばしたいすべての方におすすめです。  

<details><summary>基礎知識5種類の項目</summary>

※プログラミングに使う基礎知識を統一する(簡単に済ませられる量に絞り込む)。  
* 基礎知識5種類  
  * [x] [変数](#variable変数)  
  * [x] [配列](#arrangement配列)  
        Pythoでは、`リスト(list)`という。  
  * [x] [条件分岐](#Conditional条件分岐)  
  * [x] [繰り返し](#repetition繰り返し)  
  * [x] [関数](#function関数)  

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


<a name="algorithmSpecificBasicKnowledge"></a>
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


<a name="algorithmSpecificAlgorithmPreSolvingProcedure"></a>
<details><summary>アルゴリズム問題解決の作業手順</summary>

## 具体的なアルゴリズム問題解決前手順
基礎知識5種類を勉強するのと同じように、アルゴリズムの勉強にも以下の手順で進める。  

* 以下、手順。  
  * [x] 手順1. 勉強用のブランチに移動する(上記[目次](#algorithmTextbookLearnedinPythonContents)の1チャプター分専用ブランチとする)。  
  * [x] 手順2. 当ファイル(`README.md`)の書き換えを行う。  
    [x] アルゴリズムの勉強用に変更する。  
    [x] アルゴリズムの勉強用項目を出すが、基礎知識5種類の勉強項目は隠す(`details`・`summary`)。  
  * [x] 編集後、コミットする。  
  * [x] 手順3. 各ディレクトリで、チャプタごとに勉強を進める。  
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


<a name="algorithmCheckTheStatusOfTheActualWorkingEnvironment"></a>
<details><summary>現在の作業環境</summary>

## 実際に作業する環境の状況確認

* 勉強環境。  
  * 勉強環境のコンパイルバージョン：3.9.7  
```terminal
$ python3 --version
Python 3.9.7
$
```


  * プログラムファイルの拡張子：`*.py`  
  * 実行方式：`インタプリタ方式`  
  * 標準の文字コード(プログラムファイル)：UTF-8  
プログラムファイルの文字コードを変更する場合、基本は1行目にその旨を追記する。  
　　例1）`# coding=cp932`・`# coding=UTF-7`  
　　例2）`# coding:cp932`・`# coding:CESU-8`  
　　※シェバングを1行目に記述する場合は、2行目に追記しておく。  


  * 文字コードの扱い：  
　　例）UTF-8・Unicode  
  * 文字区切り(行末記号)：改行  
以下、単語事の区切りであれば改行が許される。
```python
print(
	hoge
)
print \
	(boo)
```

以下、複数行を1行にまとめることも許される。
```python
hoge = 'Pythonの勉強'; print(hoge)
```

  * インデント：半角スペース4個が基本。Tabでも構わないが、半角スペースと混在しないこと(半角スペースの利用を推奨)。  
基本的に、インデントが重要なプログラミング言語。  
他プログラムで言うブロックの役割を果たすため、見栄えのために変更した場合、プログラムの挙動が変わる。  
空行も意味があり、プログラムやコメント行の前後に空行2行がなければシンタックスエラーになる(実行はできるが困る)。
以下は、不可。
```python
hoge = 'Pythonの勉強'
    print(hoge)
```

以下は、許される。
```python
print('Hello',
      'World.')
```


  * 標準の出力関数：`print`  
  * 標準のフォーマット関数：  
　　例）`printf`など。
　　※必須記入項目ではなく、勉強途中での記載でも可とする。  
  * 単数行コメント方法：`#`  
  * 複数行コメント方法：`'''〜'''`・`"""〜"""`  
　　※シングルクォートもしくはダブルクォートをそれぞれ3個ずつで囲むことにより、擬似的な複数行コメントが実現できる。  
```python:sample.py
'''
1行目のコメント
コメント2行目。
'''
```

  * デバッガ：VSCodeには標準でついているようだ。
    ならば、Vimエディタには？  


以下、pyenvの利用中止("nの階乗(n!)を求める"以降は、pyenvを使わず、homebrewを使ったPythonを使う)。  
<details><summary>pyenvからのPythonインストール禁止</summary>

~~既に3.8.6をインストール済みだが、新たに新しいバージョンを追加インストールした~~。  

pyenvそのものもよく分かっていないが、とりあえず使っている。
```terminal
$ pyenv install 3.9.7
python-build: use openssl@1.1 from homebrew
python-build: use readline from homebrew
Downloading Python-3.9.7.tar.xz...
-> https://www.python.org/ftp/python/3.9.7/Python-3.9.7.tar.xz
Installing Python-3.9.7...
python-build: use readline from homebrew
python-build: use zlib from xcode sdk
Installed Python-3.9.7 to /Users/asakunotomohiro/.pyenv/versions/3.9.7

$ pyenv version
3.8.6 (set by /Users/asakunotomohiro/.python-version)
$ pyenv global 1.1.1
pyenv: version `1.1.1' not installed
$ pyenv global 3.9.7
$ pyenv version
3.8.6 (set by /Users/asakunotomohiro/.python-version)
$ python --version
Python 3.8.6
$ pyenv local 3.9.7	←☆何でだよ。
$ python --version
Python 3.9.7
$ pyenv version
3.9.7 (set by /Users/asakunotomohiro/.python-version)
$
```
本来やりたかったことは、VimエディタでPython3開発をすることだった。  
しかし、Python2で動いてしまうため、どうしてもシンタックスエラーになる。  
それを解消できず、Pythonの勉強が進まずに数時間経過した。  

</details>

ゆえに、pip3も使わない。  
<details><summary>pip3のアップデート</summary>

結局これが何をするものなのか分かっていない。  

pip3などの確認。
```terminal
$ which pip3
/usr/local/bin/pip3
$ pip3 --version
pip 20.2.4 from /Users/asakunotomohiro/Library/Python/3.9/lib/python/site-packages/pip (python 3.9)
$ pip3 list
Package    Version
---------- -------
pip        20.2.4
setuptools 57.4.0
wheel      0.37.0
WARNING: You are using pip version 20.2.4; however, version 21.2.4 is available.
You should consider upgrading via the '/usr/local/opt/python@3.9/bin/python3.9 -m pip install --upgrade pip' command.
$ /usr/local/opt/python@3.9/bin/python3.9 -m pip install --upgrade pip
Looking in indexes: https://pypi.python.org/simple/
Collecting pip
  Downloading pip-21.2.4-py3-none-any.whl (1.6 MB)
     |████████████████████████████████| 1.6 MB 3.9 MB/s 
Installing collected packages: pip
  Attempting uninstall: pip
    Found existing installation: pip 20.2.4
    Uninstalling pip-20.2.4:
      Successfully uninstalled pip-20.2.4
Successfully installed pip-21.2.4
$ pip3 --version
pip 21.2.4 from /usr/local/lib/python3.9/site-packages/pip (python 3.9)
$
```
pyenvとpip3は別物？  

</details>

</details>


<a name="algorithmHelloWorld"></a>
### ハローワールドプログラム
ワンライナー。
```python
print("Hello, World!")
```


<a name="algorithmNotes"></a>
### ※注意事項
「アルゴリズムを勉強することが目的」であるということを理解すること。  
しかし、やる気を維持するためにも1冊分を読了させることも目的としており、深掘りせずに進めることも考慮すること。  
要は、深く踏み込むか、流し読み程度に抑えるかどうかはそのときに決める。  

何より、書籍記載のアルゴリズムは、サンプルとして公式ページからダウンロードできる。  
そのため、書籍通りに進めるわけには行かず、自分なりに理解できるやり方で勉強した場合、当然ながら時間が掛かり、必要以上に時間をかけてしまうだろう。  
それでも読了達成も遂げたいため、なかなか両立は難しい・・・と思い込んでいるが、実際は流し読み程度に抑え、サクサク勧めていこうと思う。


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
      `str`型だが、意識せずに使える。  
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
    * [x] 明示変換  

<a name="subVariable1"></a>
#### 変数


* 複数のルールがある。  
  * Unicode文字を利用できる。  
    ※アンダースコア以外の記号・句読点・絵文字などは不可。  
  * 1文字目は数字以外であること。  
    ※先頭のアンダースコアに意味を含んだ識別子があるため気をつけること。  
  * アルファベットの大小文字は区別される。  
  * 予約語でないこと。  
  * 文字数の制限はない。  

予約語：
`and`
`as`
`assert`
`async`
`await`
`break`
`class`
`continue`
`def`
`del`
`elif`
`else`
`except`
`False`
`finally`
`for`
`from`
`global`
`if`
`import`
`in`
`is`
`lambda`
`None`
`nonlocal`
`not`
`or`
`pass`
`raise`
`return`
`True`
`try`
`while`
`with`
`yield`

先頭のアンダースコア付きの予約識別子：
|識別子|意味|
|------|----|
|`__name__`|現在のモジュール名|
|`__doc__`|ドキュメンテーション文字列|
|`__file__`|実行ファイルのPath|
|`__builtins`|組み込み型／関数|
※そもそも先頭をアンダースコア付きにしないほうがいい。  


<a name="subVariable2"></a>
#### 変数への代入方法及び変数の利用
様式：
`変数名 = '文字列'`  

<a name="subVariable3"></a>
#### 変数値の出力方法

```python
name1 = 'hoge'

print("hogeの文字数：", len(name1))   # hogeの文字数： 4

# raw文字列
print(r'C:\"Windows"\hoge\boo')    # 出力結果：C:\"Windows"\hoge\boo

# フォーマット文字列
print(f'Hello {name1} yeaaaaa')    # 出力結果：Hello hoge yeaaaaa

# raw文字列及びフォーマット文字列
print(fr'Hello \{name1}\ "yeaaaaa"')    # 出力結果：Hello \hoge\ "yeaaaaa"
```

<a name="subVariable4"></a>
#### データ型
JavaやC#などの静的型付けではなく、動的型付け言語のため、データ型はほぼ意識することはない。  

|データ型|サイズ|備考|
|--------|------|----|
|int||整数型。|
|float||浮動小数点型|
|string||データを扱う文字列型(Pythonでは`str`)|
|bool||論理型(True・False)|

<details><summary>データ型の細かい話</summary>

##### データ型ー浮動小数点型
小数点数だけでなく、指数表現が可能。  


##### データ型ー文字型
シングルクォートもしくはダブルクォートで文字列を括る。  

エスケープシーケンス
```python:Sample.py
print(```hoge
boo```)
```
複数行コメントの要領で使える(本来は逆で、エスケープシーケンスの効果で複数行コメントとして扱っているだけ)。  

|エスケープシーケンス|概要|
|--------------------|----|
|`\\`|バックスラッシュ|
|`\'`|シングルクォート|
|`\"`|ダブルクォート|
|`\b`|バックスペース|
|`\f`|フォームフィード(改ページ)|
|`\n`|改行(ラインフィード)|
|`\r`|復帰(キャリッジリターン)|
|`\[Enter]`|バックスラッシュと改行文字を無視(どういう意味？)|
|`\t`|水平タブ|
|`\v`|垂直タブ|
|`\oXX`|8進数の文字XX|
|`\xXX`|16進数の文字XX|
|`\uXXXX`|16bit(4桁)の16進数の文字XXXX|
|`\UXXXXXXXX`|32bit(8桁)の16進数の文字XXXXXXXX|


##### データ型ー真偽型

* 強制的にFalse  
  * 空値  
  * 数値のゼロ  
  * 空文字列・空リストなど  


##### 変数の破棄
他のプログラミング言語では存在しない概念のひとつかな。  

```python:Sample.py
# 変数の破棄
name1 = 'hoge'
print(name1)    # 出力結果：hoge
del name1
print(name1)    # NameError: name 'name1' is not defined
```

</details>


<a name="subVariable5"></a>
#### 変数値を使った計算方法

|演算子|意味|備考|
|------|----|----|
|`+`|加算||
|`-`|減算||
|`*`|乗算||
|`/`|除算||
|`**`|累乗||
|`//`|除算の商||
|`%`|剰余演算||

<a name="subVariable6"></a>
#### 型変換(キャスト)方法
様式(文字列⇒数字)：
`[変数名] = (int)[文字列]`  

様式(数字⇒文字列)：
`[変数名] = (str)[数字]`  

```Python
# キャスト(文字列⇒数字)
hoge = "20210826"
boo = int(hoge)
print(boo + boo)  # 出力結果：40421652

# キャスト(数字⇒文字列)
boo = 20210826
hoge = str(boo)
print(hoge + hoge)  # 出力結果：2021082620210826
```


<a name="subVariable999"></a>
#### 変数での説明しない項目。

<details><summary>今回は勉強を見送る一覧</summary>

* [x] 定数  
  存在しない。  
  暗黙の了解により、変数を全て大文字で宣言している場合、それを定数と仮定する。  
```python:Sample.py
TAX = 1.1
print(100 * TAX)    # 出力結果：110.00000000000001
TAX = 10
print(100 + TAX)    # 出力結果：110
```

* [ ] データ型  
  * [ ] 整数(`long`など)  
  * [ ] 浮動小数点型(`double`など)  
  * [ ] 型推論  
  * [ ] 複素数型  
  * [ ] その他  
    * 別名  
      * 変更可能：ミュータブル(mutable)  
      * 変更不可：イミュータブル(immutable)  
      * 反復可能：イテラブル(iterable)  
      * 順序を持つ(インデックスでのアクセスが可)：シーケンス(sequence)  
      * 配下に複数の値を格納可能：コンテナ(container)  

|分類| 型 |概要|
|----|----|----|
|数値|complex|複素数型|
|データ|bytes|バイナリデータ|
|コンテナ|list|順序を持つリスト(配列)|
|コンテナ|tuple|順序を持つリスト(変更不可)|
|コンテナ|dict|キー／値の辞書|
|コンテナ|set|順序を持たない値の集合|
|その他|NoneType|値がない|

* [ ] リテラル  
  [少し勉強あり。](#understandnAryNotationChapter2)  
  * [ ] 整数リテラル  
    数値リテラルでは、桁区切り`_`を使うことができる。  
    例）
    `value = 1_234_567`  
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
        [x] 添え字とは。  
  * [x] [配列への追加方法](#subArrangement2)  
  * [x] [二次元配列の宣言方法](#subArrangement3)  


<a name="subArrangement1"></a>
#### 配列
様式：
`配列名 = [データ0, データ1, データ2, ・・・]`  

※今回のアルゴリズムの勉強(書籍)では、後から追加しないやり方をとるため、事前に確保してから勉強が始まる。  

以下、配列の生成
```python:配列(list).py
hoge = list('boo')
print(hoge)	# ['b', 'o', 'o']
```

以下、ジャグ配列(2次元配列)
```python:配列(list).py
hoge = [
    ['b', 'a', 'r'],
    ['h', 'o'],
]
print(hoge)	# [['b', 'a', 'r'], ['h', 'o']]
print(hoge[1][1])	# o
```

```python:配列(list)多次元配列.py
hoge = [
    ['b', 'a', 'r',
        ['b', 'o', ]
     ]
]
print(hoge)	# [['b', 'a', 'r', ['b', 'o']]]
print(hoge[0][1])	# a
print(hoge[0][3][1])	# o
```

要素数の数え方。
```Python
hoge = "barhoge"
print(len(hoge))	# 7
```

配列から各要素を取り出す。
```python:配列(list)for.py
hoge = list('hoge')

for boo in hoge:
    print(boo)
# 出力結果：h
#           o
#           g
#           e
```

<details><summary>そこまで重要ではないはずなので、隠す</summary>

以下、配列の要素へ追加・要素から削除
```python:配列(list)追加・削除.py
# 基本的なリスト
hoge = ['hoge', ]
print(hoge)	# ['hoge']

# 以下、末尾に追加。
hoge.append('bar')
print(hoge)	# ['hoge', 'bar']

# 以下、途中に追加。
hoge.insert(1, '-')
print(hoge)	# ['hoge', '-', 'bar']

# 以下、削除。
hoge.pop(1)
print(hoge)	# ['hoge', 'bar']

# 以下、削除。
hoge.pop()
print(hoge)	# ['hoge']
```

以下、配列の要素へ追加。
```python:配列(list)複数要素追加・置換・削除.py
# 要素の挿入
hoge = list('Pythonest')  # 「T」がない。PythonTest(Pythonテスト)にしたい
hoge[6:6] = ['T']
print(hoge)	# ['P', 'y', 't', 'h', 'o', 'n', 'T', 'e', 's', 't']
```

以下、要素内指定で削除。
```python:配列(list)要素削除.py
hoge = ['hoge', 'bar', ]
print(hoge)	# ['hoge', 'bar']

# 以下、要素を削除。
hoge.remove('hoge')
print(hoge)	# ['bar']
```

以下、要素内指定で削除。
```python:配列(list)複数要素追加・置換・削除.py
# 要素の削除
hoge = list('hogebarboo')
hoge[2:9] = []
print(hoge)	# ['h', 'o', 'o']

# 要素の削除
hoge = list('hogebar')
hoge[2:3] = list('hoge')
del hoge[2:9]
print(hoge)	# ['h', 'o', 'r']
```

以下、要素を全て削除。
```python:配列(list)要素削除.py
hoge = list('hoge')
print(hoge)	# ['h', 'o', 'g', 'e']

hoge.clear()
print(hoge)	# []
```

以下、配列内から1文字を検索。
```python:配列(list)検索.py
hoge = list('hogehoge')

# 6文字目(index_5)以降で「e」の検索
print(hoge.index('e', 5))	# 7
```

以下、配列内にある文字を数える。
```python:配列(list)重複確認.py
hoge = list('hogehoge')

# 「h」の出現回数
print(hoge.count('h'))	# 2
```

以下、配列内にあるかどうかを確認する。
```python:配列(list)存在確認.py
hoge = list('hogehoge')

# 「a」の検索
print('a' in hoge)	# False
```

以下、浅いコピーを行う(コピー先を変更した場合、コピー元にも影響する)。
```python:配列(list)複製.py
hoge = list('hoge')

# 上記配列を複製する(シャローコピー)。
boo = hoge.copy()
print(boo)	# ['h', 'o', 'g', 'e']
```
深いコピー(ディープコピー)をする場合は、`import copy`でモジュールを使い、`deepcopy`メソッドでコピーをする。  

以下、配列の連結及び、指定回数連結。
```python:配列(list)連結.py
hoge = list('hoge')
boo = list('bar')

hogeboo = hoge + boo
print(hogeboo)	# ['h', 'o', 'g', 'e', 'b', 'a', 'r']

hogeboo = boo * 3
print(hogeboo)	# ['b', 'a', 'r', 'b', 'a', 'r', 'b', 'a', 'r']
```
これは、配列を新しく作り直すことに注意すること。

以下、配列内を並び替え。
```python:配列(list)並び替え.py
hoge = list('hoge')

# 逆順に並べ替える。
hoge.reverse()
print(hoge)	# ['e', 'g', 'o', 'h']

# 逆順に並べ替える？
hoge = list('hoge')
hoge.sort(reverse=True)
print(hoge)	# ['o', 'h', 'g', 'e']

# ソート
hoge = list('hoge')
hoge.sort()
print(hoge)	# ['e', 'g', 'h', 'o']
```

以下、forループにて、配列の要素を番号付きで取り出す。
```python:配列(list)要素を番号付きで取り出す.py
hoge = list('hoge')

for boo, hogeboo in enumerate(hoge):
    print(boo, '：', hogeboo)
# 出力結果：0 ： h
#           1 ： o
#           2 ： g
#           3 ： e
```

```python:配列(list)要素のbool値判断.py
# 以下、リスト内の全ての要素がTrueであるか。
print(all([True, True, False]))	# False

hoge = list('hoge')
print(all(hoge))	# True
#	何の役にも立たない判定方法。
```

以下、rangeによる配列作成。
```python:配列(list)range.py
hoge = list(range(0, 7, 2))
print(hoge)	# [0, 2, 4, 6]
```
かなりの非効率なため、やらない方が良い。  

</details>

<a name="subArrangement2"></a>
#### 配列への追加方法
様式：
`配列名 = ['値1', '値2', ・・・ ]`  
`配列名 = list('文字列')`  



<a name="subArrangement3"></a>
#### 二次元配列の宣言方法
様式：
```python
配列名 = [
    ['1-値1', '1-値2', ・・・ ],
    ['2-値1', '2-値2', ・・・ ],
]
```
配列の個数を変えた場合ジャグ配列となる。  

以下、例）
```python
hoge = [
    ["hoge1", "bar1", "boo1", ],
    ["hoge2", "bar2", "boo2", ],
]

print(hoge)     # [['hoge1', 'bar1', 'boo1'], ['hoge2', 'bar2', 'boo2']]
print(hoge[0])  # ['hoge1', 'bar1', 'boo1']
print(hoge[1])  # ['hoge2', 'bar2', 'boo2']
```

<a name="subArrangement999"></a>
#### 配列での説明しない項目。

<details><summary>今回は勉強を見送る一覧</summary>

* 配列の応用  
  * [ ] 3次元配列以上の宣言方法。  
  * [ ] 配列を複製する方法。  
  * [ ] 配列からスライスを作成する方法。  

* 構造体  
  そもそもないようだ。  
  * [ ] 構造体の複製  
  * [ ] 構造体からのスライス作成  
  * [ ] 共用体  
  * [ ] 列挙体  

* コレクション  
  * [x] List  
  * [ ] Set  
  * [ ] Map  
  * [ ] Queue(ない？)  

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
```python
if [条件式]:
	何らかの処理A
elif [条件式]:
	何らかの処理B
else:
	何らかの処理C
次の処理(if文とは全く無関係)。
```
※`条件式`が **True** の場合、何らかの処理Aが行われる。
**False** の場合、次の条件式が動き、Trueの場合、何らかの処理Bを行う。
2つ目の条件式でも **False** の場合、何らかの処理Cを行う。
そして、次の処理に移行する。  

```python
hoge = -1
if hoge == 0:
    print("0 ==", hoge)
elif hoge > 0:
    print(hoge, "> 0")
else:
    print(hoge, "!= 0")

# 出力結果：-1 != 0
```

* 複数の条件式を1つにまとめる。
様式：
```python
if [条件式]:
	何らかの処理
```
条件式が1つの場合、`hoge == 0`で終わるが、複数の条件を合わせる場合、`hoge == 0 and boo == 0`のように1つにまとめることができる。  
`and`：どちらの条件もTrueの場合にif文の処理が走る。  
`or`：どちらの条件がTrueの場合にif文の処理が走る。  
これを **[ド・モルガンの法則](https://ja.wikipedia.org/wiki/ド・モルガンの法則)** として、使うべし。  

<a name="subConditional2"></a>
#### 論理演算子(ド・モルガンの法則)

|演算子|意味|備考|
|------|----|----|
|`&&`・`AND`|論理積|左右の式がTrueの場合に、Trueになり、それ以外はFalse。|
|`||`・`OR`|論理和|左右のどちらかの式がTrueの場合に、Trueになり、Trueがない場合False。|

<a name="subConditional3"></a>
#### 比較演算子

|演算子|意味|備考|
|------|----|----|
|`==`|等号|aとbの値が等しいか比較する。|
|`!=`|不等|aとbの値が等しくないかを比較する。|
|`>`|より大きい|aはbより大きいかを比較する。|
|`<`|より小さい|aはbより小さいかを比較する。|
|`>=`|以上|aはb以上かを比較する。|
|`<=`|以下|aはb以下かを比較する。|

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
  * [ ] goto文(ない？)  

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
    * [x] continue  
  * [x] [真偽条件での繰り返し](#subRepetition6)  
    [x] [基本構造例：while( 条件式 )](#subRepetition6)  
    [x] [無限ループ](#subRepetition7)  


<a name="subRepetition1"></a>
#### 繰り返し
様式：
`for [繰り返し用変数] in range([変数の範囲])`  

* range  
  * range(繰り返す回数)  
    変数値は0から始まり、指定回数分繰り返す。  
  * range(初期値, 終値)  
    変数値は初期値から始まり、1づつ増えながら終値まで繰り返す。  
  * range(初期値, 終値, 増減分)  
    初期値から終わり値までを指定の増減分変化させながら繰り返す。  
  * 注意  
    例）`range(1, 5)`の場合、`1, 2, 3, 4`の並なり、`5`は含まれない。  


<a name="subRepetition2"></a>
##### 指定回数条件での繰り返し：for( 条件式 )
様式：
for [繰り返し用変数] in range(繰り返す回数)  

```Python
for ii in range(10):
    print(ii)

# 出力結果。
#       0
#       1
#       2
#       3
#       4
#       5
#       6
#       7
#       8
#       9
```


<a name="subRepetition3"></a>
##### 指定回数条件での繰り返し：拡張for命令
2種類。  

様式：
for [繰り返し用変数] in range(初期値, 終値)  
```Python
for ii in range(1, 5):
    print(ii)
# 出力結果。
#       1
#       2
#       3
#       4
```

様式：
for [繰り返し用変数] in range(初期値, 終値, 増減分)  
```Python
for ii in range(20, 10, -1):
    print(ii)
# 出力結果。
#       20
#       19
#       18
#       17
#       16
#       15
#       14
#       13
#       12
#       11
```


<a name="subRepetition4"></a>
#### `for`の入れ子。

```Python
for ii in range(4):
    print("1つ目のfor", ii, "回目の実行")
    for jj in range(4):
        print("　　2つ目のfor", jj, "回目の実行")
```


<a name="subRepetition5"></a>
#### ジャンプ処理
以下、2種類ある。  
* [break](#subRepetition5break)  
* [continue](#subRepetition5continue)  

<a name="subRepetition5break"></a>
`break`にて、それ以降の処理を行わず、for文を抜け出る。
```Python
for ii in range(4):
    print("1つ目のfor", ii, "回目の実行")
    if ii == 3:
        break
    for jj in range(4):
        print("　　2つ目のfor", jj, "回目の実行")
```
`ii`が`3`の場合、`for`を抜け出る。  

<a name="subRepetition5continue"></a>
`continue`にて、for文に戻る。
```Python
for ii in range(4):
    print("1つ目のfor", ii, "回目の実行")
    if ii == 2:
        continue
    for jj in range(4):
        print("　　2つ目のfor", jj, "回目の実行")
```
`ii`が`2`の場合、次の処理を行わず、`for`に戻る。  

<a name="subRepetition6"></a>
#### 真偽条件での繰り返し：while( 条件式 )
様式：
`while [条件式]`  

```Python
ii = 1
while ii <= 10:
    print(ii)
    ii += 1
```


<a name="subRepetition7"></a>
#### 無限ループ
様式：
`while True:`  

以下、無限ループ。
```Python
while True:
    ss = input("文字列入力：")
    print(ss)
    if ss == "":
        break
```


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
様式：
```Python
def 関数名(引数1, 引数2, ・・・):
    関数内の処理。
    return 戻り値
```
**関数とは**、引数でデータを与え、そのデータを関数内で加工し、戻り値として呼び出し元に返す。  


様式(引数無し-戻り値無し)：
```Python
def Hello():	←☆関数定義
    print("Hello World.")	←☆関数内の処理。

Hello()	←☆上記関数の呼び出し。
```

以下、出力結果。
```terminal
Hello World.
```

様式(引数あり-戻り値無し)：
```Python
def Hello(hello):	←☆関数定義(引数あり)
    print(hello)	←☆関数内の処理。

Hello("Hello World.")	←☆上記関数の呼び出し。
```

以下、出力結果。
```terminal
Hello World(引数あり).
```

様式(引数無し-戻り値あり)：
```Python
def Hello():
    return "Hello World."

word = Hello()	←☆上記関数の呼び出し。
print(word)
```

以下、出力結果。
```terminal
Hello World(引数あり).
```

様式(引数あり-戻り値あり)：
```Python
def Hello(word):
    word = word + " World."
    return word

word = Hello("Hello")	←☆上記関数の呼び出し。
print(word)
```

以下、出力結果。
```terminal
Hello World(引数あり-戻り値あり).
```

ちなみに、呼び出し側の関数の引数は、実引数という。
実際の関数で定義している引数のことを仮引数という。  

<a name="subFunction2"></a>
#### スコープ
* グローバル変数  
  関数の外側で宣言した変数。  
* ローカル変数  
  関数内部で宣言した変数。  
  そして、グローバル変数を関数内部で利用する場合、`global`宣言を付けた変数宣言が必須になる(関数内で)。  

<a name="subFunction999"></a>
#### 関数での説明しない項目。

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
  [x] [スタック](#stackChapter3)2021/10/02  
  [x] [キュー](#queueChapter3)2021/11/07  
  [x] [リスト](#listChapter3)2021/12/04  
  [x] [木](#woodChapter3)2021/12/29  
  [x] [グラフ](#graphChapter3)2022/01/02  
  [x] [スタックとキューを扱う。](#stacksAndQueuesChapter3)2022/01/07  
  [x] [データを保存する。](#saveTheDataChapter3)2022/01/15  
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
今回は、以下のルールがある。  
要は、平均値を求める方法は他にもあると言うことなのだろう。  

<details><summary>展開</summary>

* ルール。  
  * 点数を配列で定義する。  
    `score = [70, 98, 92, 88, 64]`
  * `for`を用いる。  


```Python
# 数字を配列で用意する。
hoge = [70, 98, 92, 88, 64]
# 合計値用の変数。
egoh = 0

# 配列格納の数字を1つづつ取り出すのにforを用いている。
for boo in hoge:
    egoh = egoh + boo

# 合計値を配列数で割る。
bar = egoh / len(hoge)
print("合計値：", egoh)	# 合計値： 412
print("平均値：", bar)	# 平均値： 82.4
```

</details>


<a name="addFrom1tonChapter2"></a>
#### 1からnまで足し合わせる。
今回は、以下のルールがある。  

<details><summary>展開</summary>

* 作業ルール。  
  * 「カール・フリードリヒ・ガウス」に[倣え](https://ja.wikipedia.org/wiki/カール・フリードリヒ・ガウス)。  
    > ガウスが7歳の時、算数の授業で教師が「1から100までの数字すべてを足せ」という問題を出し、生徒たちが問題を解くには相当な時間がかかるだろうと考えていたが、ガウスはわずか数秒で「5050」という解答を出し、教師を驚かせた。  
    要は、等差級数の和の公式を使えば良いようだ(で、それは何？)。  
  * 開始の数字 ＜ 終了の数字。  
    要は、nからmまで足し合わせる。  
    * 開始の数字を任意にする。  
    * 終了の数字を任意にする。  

```Python
def gauss_start_end(start, end):
    if start < end:
        addsum = (start+end)*(end-start+1)/2
    else:
        addsum = 0
    return int(addsum)

print(gauss_start_end(1, 10))   # 55
print(gauss_start_end(5, 10))   # 45
print(gauss_start_end(10, 1))   # 0
print(gauss_start_end(10, 10))   # 0
print(gauss_start_end(100, 5050))   # 12748825　あっているか不明。
```

</details>


<a name="outputTheMultiplicationTableChapter2"></a>
#### 九九の式を出力する。
書籍とは違い、九九表を出力する。  

<details><summary>展開</summary>

* 作業ルール。  
  * 二重ループを使う。  

九九を出すと言えば、九九の式をまんま出すのではなく、九九表を出すと思うよね。
```Python
def kuku():
    for ii in range(1, 10):
        kk = ""
        for jj in range(1, 10):
            kk = kk + "{:3d}".format(ii*jj)
        print(kk[2:])
    return 0


kuku()
```

以下、出力結果。
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
これだよね。  
式を出すより、表を出した方がなじみ深いと思うのだが・・・。  

</details>


<a name="findAPrimeNumberChapter2"></a>
#### 素数を求める。
素数とは、1とその数以外に約数を持たない2以上の自然数のこと。  
例えば、**2**・**3**・**5**・**7**・**11**・**13**・**17**・・・など・・・。  

<details><summary>展開</summary>

素数の求めかた。  
例えば、n値を調べる場合、**2**・**3**・・・**n-2**・**n-1**と言う数で割る。  
それらの数で割りきれなければnは素数と言える。  
例）
7を調べる。  
**2**・**3**・**4**・**5**・**6**で割るが、割り切れないため、素数であることが分かる。  
例）9を調べる。  
**2**・**3**・**4**・**5**・**6**・**7**・**8**で割るなかから**3**なら割り切れるため、素数では無いことが分かる。  
※もう少し日本語表現の勉強をする必要があるよな・・・。  

1つづつ確認せずに済む方法。  
10を調べる場合、その半分より大きい数(**6**・**7**・**8**・**9**)では、10を割ることが出来ないのは分かっている。  
そのため、試す数は**2〜2分のn**までの数で割ることを調べるだけで素数か判明する。  

<a name="findAPrimeNumberChapter2root"></a>
さらに他の方法。  
ルートnまでの素数で割って判断すれば良いとのこと。  
求めたい数の手前の数を既に素数かどうかを調べておく必要があるってこと!?  

今回は、2〜2分のnで割る方法を試す。  

改めて、以下ルール。

* 素数を求めるルール  
  * 二重ループを使う。  
  * 2から2分のnまでの数で割る。  
    ※それらの数で割り切れなければ素数。  

```python
# 2から100までの素数を出力する。
def prime1(word):
    for ii in range(2, 101):
        hh = ii//2
        ff = True
        for jj in range(2, hh+1):
            if ii % jj == 0:
                ff = False
                break
        if ff is True:
            print(ii, end=",")
    return 0


prime1("素数を求める関数1呼び出し")
```

以下、出力結果
```terminal
2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,
```

※余談：
`if ff == True:`の部分で、**E712 comparison to True should be 'if cond is True:' or 'if cond:'** と言うエラーが発生した。  
この`==`の部分を`is`に変更し、`if ff is True:`にしたらエラーが解消された。  
※今後のプログラム全てに当てはまる。  

</details>


<a name="findTheFactorialOfNChapter2"></a>
#### nの階乗を求める。
**階乗とは**
1からnまでの全ての整数の積をnの階乗という。  
数学では`n!`と表記する。  
例）
**5!** は、**5x4x3x2x1**を計算し、**120**の答えが出てくる。  
また、**1!** は、**1**になり、**0!**は**1**になる決まりがある。  

**再帰関数**
上記の階乗では掛け算処理部分は使い回せるため、掛け算関数を1度定義してしまえば、それを再度読み込むことで似た関数を作る必要なく、手軽に階乗を作り出すことができる。  
しかし、そもそも再帰関数を使いこなすのは難しい。  

<details><summary>展開</summary>


* ルール  
  再帰関数を使う。  
  * 再帰関数の定義ルール  
    * `n = 0`
      **n! = 1**  
    * `n > 0`
      **n! = n * (n-1) * (n-2) * ・・・ * 2 * 1**
      nから1引いた数を掛け、さらに1づつ引き続けながらnが1にまるまで続ける。  

以下、20の階乗の結果のみを求めている。
```python
def factorial(num):
    if num == 0:
        ret = 1
    else:
        ret = num*factorial(num-1)
    return ret


fac = factorial(20)
print("20の階乗：", fac)
```
0の階乗から20の階乗までを求める場合は、`for`文かなにかで繰り返しをさせる必要がある。  

以下、20の階乗の結果
```terminal
20の階乗： 2432902008176640000
```

</details>


<a name="eratosthenesSieveChapter2"></a>
#### エラトステネスの篩
効率よく素数を求めることができるアルゴリズムのこと。  
素数とは、1と自身の数以外に約数を持たない2以上の自然数のこと。  
例えば、**2**・**3**・**5**・**7**・**11**・**13**・**17**・・・など・・・。  

<details><summary>Pythonプログラム</summary>

* アルゴリズムの概要。  
  1. 0から99の整数を並べる。  
  1. 0と1は素数で無いため、ふるい落とす。  
  1. 2を含まない2の倍数は素数で無いためふるい落とす。  
  1. 3を含まない3の倍数は素数で無いためふるい落とす。  
  1. 4は、2の倍数の時にふるい落とされている。  
  1. 5を含まない5の倍数は素数で無いためふるい落とす。  
  1. 6は、2の倍数の時にふるい落とされている。  
  1. 7を含まない7の倍数は素数で無いためふるい落とす。  
  1. 8・9・10は、すでに振り分けられている。  
  1. 11以降は、今回の0〜99の範囲外になるため、ここで終了。  

注意：本の説明が間違っている。  
3・5・7は素数なのでふるい落とし、その倍数もふるい落とすとある・・・何でだよ(図への説明)。  

```python
def main():
    eratosthenes = [True] * 100
    eratosthenes[0] = False
    eratosthenes[1] = False
    notprime = 2
    hyou(eratosthenes)
    while notprime < 10:    # ルート99まで行う。
        eratosthenes, notprime = furui(eratosthenes, notprime)


def hyou(eratosthenes):
    output = ""
    for ii in range(100):
        if eratosthenes[ii] is True:
            output += "{:2d}, ".format(ii)
        else:
            output += " /, "
        if ii % 10 == 9:
            output = output[:len(output)-1]
            output += "\n"
    print(output)
    return eratosthenes


def furui(eratosthenes, notprime):
    for ii in range(notprime+notprime, 100, notprime):
        eratosthenes[ii] = False
    print(notprime, "の倍数をふるい落とした。")
    hyou(eratosthenes)
    while notprime < 100:    # 次にふるい落とす数。
        notprime = notprime + 1
        if eratosthenes[notprime] is True:
            break
    return eratosthenes, notprime


main()
```

</details>

<details><summary>Pythonプログラムの出力結果</summary>

以下、出力結果。
```terminal
エラトステネスのふるい
 /,  /,  2,  3,  4,  5,  6,  7,  8,  9,
10, 11, 12, 13, 14, 15, 16, 17, 18, 19,
20, 21, 22, 23, 24, 25, 26, 27, 28, 29,
30, 31, 32, 33, 34, 35, 36, 37, 38, 39,
40, 41, 42, 43, 44, 45, 46, 47, 48, 49,
50, 51, 52, 53, 54, 55, 56, 57, 58, 59,
60, 61, 62, 63, 64, 65, 66, 67, 68, 69,
70, 71, 72, 73, 74, 75, 76, 77, 78, 79,
80, 81, 82, 83, 84, 85, 86, 87, 88, 89,
90, 91, 92, 93, 94, 95, 96, 97, 98, 99,

2 の倍数をふるい落とした。
 /,  /,  2,  3,  /,  5,  /,  7,  /,  9,
 /, 11,  /, 13,  /, 15,  /, 17,  /, 19,
 /, 21,  /, 23,  /, 25,  /, 27,  /, 29,
 /, 31,  /, 33,  /, 35,  /, 37,  /, 39,
 /, 41,  /, 43,  /, 45,  /, 47,  /, 49,
 /, 51,  /, 53,  /, 55,  /, 57,  /, 59,
 /, 61,  /, 63,  /, 65,  /, 67,  /, 69,
 /, 71,  /, 73,  /, 75,  /, 77,  /, 79,
 /, 81,  /, 83,  /, 85,  /, 87,  /, 89,
 /, 91,  /, 93,  /, 95,  /, 97,  /, 99,

3 の倍数をふるい落とした。
 /,  /,  2,  3,  /,  5,  /,  7,  /,  /,
 /, 11,  /, 13,  /,  /,  /, 17,  /, 19,
 /,  /,  /, 23,  /, 25,  /,  /,  /, 29,
 /, 31,  /,  /,  /, 35,  /, 37,  /,  /,
 /, 41,  /, 43,  /,  /,  /, 47,  /, 49,
 /,  /,  /, 53,  /, 55,  /,  /,  /, 59,
 /, 61,  /,  /,  /, 65,  /, 67,  /,  /,
 /, 71,  /, 73,  /,  /,  /, 77,  /, 79,
 /,  /,  /, 83,  /, 85,  /,  /,  /, 89,
 /, 91,  /,  /,  /, 95,  /, 97,  /,  /,

5 の倍数をふるい落とした。
 /,  /,  2,  3,  /,  5,  /,  7,  /,  /,
 /, 11,  /, 13,  /,  /,  /, 17,  /, 19,
 /,  /,  /, 23,  /,  /,  /,  /,  /, 29,
 /, 31,  /,  /,  /,  /,  /, 37,  /,  /,
 /, 41,  /, 43,  /,  /,  /, 47,  /, 49,
 /,  /,  /, 53,  /,  /,  /,  /,  /, 59,
 /, 61,  /,  /,  /,  /,  /, 67,  /,  /,
 /, 71,  /, 73,  /,  /,  /, 77,  /, 79,
 /,  /,  /, 83,  /,  /,  /,  /,  /, 89,
 /, 91,  /,  /,  /,  /,  /, 97,  /,  /,

7 の倍数をふるい落とした。
 /,  /,  2,  3,  /,  5,  /,  7,  /,  /,
 /, 11,  /, 13,  /,  /,  /, 17,  /, 19,
 /,  /,  /, 23,  /,  /,  /,  /,  /, 29,
 /, 31,  /,  /,  /,  /,  /, 37,  /,  /,
 /, 41,  /, 43,  /,  /,  /, 47,  /,  /,
 /,  /,  /, 53,  /,  /,  /,  /,  /, 59,
 /, 61,  /,  /,  /,  /,  /, 67,  /,  /,
 /, 71,  /, 73,  /,  /,  /,  /,  /, 79,
 /,  /,  /, 83,  /,  /,  /,  /,  /, 89,
 /,  /,  /,  /,  /,  /,  /, 97,  /,  /,
```

</details>

[ウィキペディア](https://ja.wikipedia.org/wiki/エラトステネスの篩)でシグマ記号を用いた解説をしている。  
そんなに複雑なのか・・・(今回に関係ないからどうでも良いけど)。  

他には、アトキンの篩と言うのもあるそうだ。  


<a name="understandnAryNotationChapter2"></a>
#### n進法を理解する。
n進法とは？
> n進法の基本的な考え方は、n種類の記号を使って数を表し、値がn、n*n、n*n*n・・・に達するごとに繰り上がる  

<details><summary>展開</summary>

2進法
**2\*2**・**2\*2\*2**・**2\*2\*2\*2**・・・・  
|2進法|10進法|
|-----|------|
|0|0|
|1|1|
|10|2|
|11|3|
|100|4|
|101|5|
|110|6|
|111|7|
|1000|8|
|1001|9|
|1010|10|

16進法
**16\*16**・**16\*16\*16**・**16\*16\*16\*16**・・・・  
|16進法|10進法|
|-----|------|
|0|0|
|1|1|
|2|2|
|3|3|
|4|4|
|5|5|
|6|6|
|7|7|
|8|8|
|9|9|
|A|10|
|B|11|
|C|12|
|D|13|
|E|14|
|F|15|

    print("2進数リテラル")
    print(0b11111111, 0b0, 0b10101010, -0b1, 0b1, 0b1001101000110010011101110, )
    # 出力結果：(255, 0, 170, -1, 1, 20210926)
    
    print("8進数リテラル")
    print(0o377, 0o0, 0o252, -0o1, 0o1, 0o115062356, )
    # 出力結果：(255, 0, 170, -1, 1, 20210926)
    
    print("10進数リテラル")
    print(255, 0, 170, -1, 1, 20210926, )
    # 出力結果：(255, 0, 170, -1, 1, 20210926)
    
    print("16進数リテラル")
    print(0xff, 0x00, 0xAA, -0x1, 0x1, 0x13464EE, )
    # 出力結果：(255, 0, 170, -1, 1, 20210926)

</details>


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
要は、後入れ先出しのこと。  
入れることを"Push"と言い、取り出すことを"Pop"と言う。  
入れていくことを積み上げていくことになぞらえ、スタックと名付けられたそうだ。  

取り出すことで、積み上げた状態からなくなる。  
そして、積み上げた状態を維持したまま値を読み取る技法もあるが、それはスタックとは別の技術になる。  
積み上げる状態のため、その間を取り出すことも出来ず、書き換えることも出来ないのだが、指定箇所の値を書き換える技法もスタックとは別の技術になる。  
通常は、最初に入れた値を取り出すのは、他に入れた値を全て取り出した状態に限り可能になる。  


```python
MAX = 5 # 積み上げる最大数を5つに制限している。


def push(stack, sp, data):
    if sp < MAX:
        stack[sp] = data
        sp += 1
        print("データ", data, "を追加しました。")
    else:
        print("これ以上データを入れられません。")
    return sp


def pop(stack, sp):
    if sp > 0:
        sp -= 1
        return stack[sp], sp
    else:
        print("取り出すデータが存在しません。")
        return None, None


def main():
    stack = [0] * MAX
    sp = 0  # スタックポインタ(出し入れ位置管理変数)
    for ii in range(6):
        sp = push(stack, sp, ii)
    for ii in range(6):
        data, sp = pop(stack, sp)
        print("取り出したデータ：", data)


main()
```

以下、出力結果。
```terminal
データ 0 を追加しました。
データ 1 を追加しました。
データ 2 を追加しました。
データ 3 を追加しました。
データ 4 を追加しました。
これ以上データを入れられません。
取り出したデータ： 4
取り出したデータ： 3
取り出したデータ： 2
取り出したデータ： 1
取り出したデータ： 0
取り出すデータが存在しません。
取り出したデータ： None
```

PerlがそうだったのだからPythonもアルゴリズムに関係なく、リストでプッシュとポップを実現できる。  
しかし、それができるからと言う理由でアルゴリズムの勉強を放棄するのは無粋というものだろう。  


<a name="queueChapter3"></a>
#### キュー
**キュー**とは、最初に入れたデータを最初に取り出すこと。  
それを先入れ先出し(First In First Out)と言い、**FIFO**と略す。  

キューにデータを入れることをエンキュー(enqueue)といい、取り出すことをデキュー(dequeue)と言う。  

* キュー用語  
  * エンキュー位置  
    **tail**  
    要は、先頭。  
  * デキュー位置  
    **head**  
    要は、後尾。  
  * リングバッファ  
    記憶領域を円形にする。  


以下、キュープログラム。
```python
# 積み上げる最大数を5つに制限している(キューへの積み上げ最大数+1)。
MAX = 6


def enqueue(data, que, head, tail):
    nt = (tail+1) % MAX

    if nt == head:
        print("これ以上、データ積み上げ不可。")
    else:
        que[tail] = data
        tail = nt
        print("データ", data, "を追加しました")

    return (que, tail)


def dequeue(que, head, tail):
    if head == tail:
        print("取り出しデータなし。")
        return (que, None, head)
    else:
        data = que[head]
        head = (head+1) % MAX
        return (que, data, head)


def main():
    que = [0] * MAX
    head = 0
    tail = 0

    for ii in range(6):
        (que, tail) = enqueue(ii, que, head, tail)

    for ii in range(6):
        (que, data, head) = dequeue(que, head, tail)
        print("取り出しデータ：", data)


main()
# 出力結果：
#           データ 0 を追加しました
#           データ 1 を追加しました
#           データ 2 を追加しました
#           データ 3 を追加しました
#           データ 4 を追加しました
#           これ以上、データ積み上げ不可。
#           取り出しデータ： 0
#           取り出しデータ： 1
#           取り出しデータ： 2
#           取り出しデータ： 3
#           取り出しデータ： 4
#           取り出しデータなし。
#           取り出しデータ： None
```


書籍では、**queue.py**という名前を付けた場合、既存の名前と同じになり、そちらが動くことになるため、名前を変える必要があるという説明をしていた。
しかし、私の環境では普通に動いたぞ!?
```terminal
$ python queue.py
データ 0 を追加しました
データ 1 を追加しました
データ 2 を追加しました
データ 3 を追加しました
データ 4 を追加しました
これ以上、データ積み上げ不可。
取り出しデータ： 0
取り出しデータ： 1
取り出しデータ： 2
取り出しデータ： 3
取り出しデータ： 4
取り出しデータなし。
取り出しデータ： None
$
```
当初の名前を**myQueue.py**にしていたが、変更した。  

<details><summary>コレクションデキュークラスの利用</summary>

書籍の説明では、(プログラムを見れば分かるだろうが)リングバッファを簡単に実現するための仕組みとして、追加できる容量は、配列の要素数よりも1つ少ない。  
それを無視して実用化された仕組みが[collections.deque](https://docs.python.org/ja/3/library/collections.html)クラスとして用意されている。  
※リングバッファは、[循環リスト](#listChapter3)ではない。  


```python
import collections


def enqueue(data, que):
    print("データ", data, "を追加しました")
    que.append(data)
    return que	←☆`return que.append(data)`には出来なかった。


def dequeue(que):
    data = que.pop()
    return (que, data)


def main():
    que = collections.deque()

    for ii in range(6):
        que = enqueue(ii, que)

    for ii in range(6):
        (que, data) = dequeue(que)
        print("取り出しデータ：", data)
    # 出力結果：


main()
```

以下、出力結果。
```terminal
$ python queue_class.py
データ 0 を追加しました
データ 1 を追加しました
データ 2 を追加しました
データ 3 を追加しました
データ 4 を追加しました
データ 5 を追加しました
取り出しデータ： 5
取り出しデータ： 4
取り出しデータ： 3
取り出しデータ： 2
取り出しデータ： 1
取り出しデータ： 0
以上。
$
```


ちなみに、キューへの先頭や末尾への追加・削除は最速だが、要素位置が中央にある場合、最遅になる。  

* 使い分け方法。  
  * 先端・尾端への利用頻度が高い場合、**deque**を使う。  
  * 要素位置の中央への書き込み・削除の頻度が高い場合、**list**を使う。  

</details>

todo: プログラムを理解すること。  
当初の目的通り、読破することも目的の一つにしているため、進めていることに問題は無いが、それではアルゴリズムの勉強をするのが無駄になる。  


<a name="listChapter3"></a>
#### リスト
リストの中でも線形リストに特化する。  
※Pythonに組み込まれたリストとは別物(今回のリストはアルゴリズムの話)。  

* 線形リストの種類  
  * 片方向リスト  
    次のノードを指し示すだけの情報だけ持つ。  
    今回利用するリストになる。  
  * 双方向リスト  
    次のノードを指し示し、前のノードも指し示す。  
  * 循環リスト  
    次のノードを指し示すが、最後のノードは先頭ノードを指し示す。  
  * 応用  
    * 双方向の循環リスト  
      双方向リストと循環リストを組み合わせたもの。  
      前後のノードに移動でき、先頭は末尾に、末尾は先頭に移動できる。  
  * 別名  
    * 片方向リスト  
      別名：単方向リスト  
    * 線形リスト  
      2つの組み合わせ(片方向リスト・双方向リスト)で呼ぶ。  
    * 循環リスト  
      2つの組み合わせ(双方向リスト・循環リスト)で呼ぶ。  
    * 連結リスト  
      3つの組み合わせ(片方向リスト・双方向リスト・循環リスト)で呼ぶ。  

切り離されている変数同士を繋ぐような想像をすれば良いのだろうか。  
繋ぎ方は、繋ぐための変数とデータが入っている変数を一緒にして、それを1つのノードとして扱い、繋ぐ変数にはポインタを入れる。  
要は、ノードは構造体で作る必要があると？  
そして、構造体に納める繋ぐ変数用ポインタの種類により、片方向リスト・双方向リスト・循環リストを使い分けることになると・・・。  
繋ぐ先を変更すればデータの削除・追加が可能になると・・・(先頭ノードの削除は気をつける必要がある)。  
それをC言語で実現したときは辛かった(ポインタを勉強した直後だったからな・・・学生時代が懐かしい)。  

今回のプログラムは、片方向リストのみに限定する。  
そして、構造体ではなく、配列という概念を用いてPythonプログラムを構築する。  

* Python特有のリストアルゴリズムの注意点  
  * **head**を管理者(?)として先頭ノードを管理する。  
  * 末尾ノードは、繋ぐ先に**None**を格納する。  
    ※NoneがPython特有。  
  * 扱えるデータ数を5個に制限する。  
    ※個数制限が本書特有。  

以下、プログラム。
```python
# 紐付き数を5つに制限。
MAX = 5


def add_list(datalist, pointer, data):
    n = -1
    for ii in range(MAX):
        if datalist[ii] is None:
            n = ii
            break

    if n == -1:
        print("データ領域に空きがありません")
        return False, datalist, pointer

    for ii in range(MAX):
        if datalist[ii] is not None and pointer[ii] is None:
            pointer[ii] = n
            break

    datalist[n] = data
    pointer[n] = None
    print("データ", data, "追加。")
    return True, datalist, pointer


def del_list(datalist, pointer, head, data):
    n = -1
    for ii in range(MAX):
        if datalist[ii] == data:
            n = ii
            break
    if n == -1:
        print("データなし。")
        return False, datalist, pointer, head

    if n != head:
        for ii in range(MAX):
            if pointer[ii] == n:
                pointer[ii] = pointer[n]
    else:
        head = pointer[n]
        if head is None:
            head = 0

    datalist[n] = None
    pointer[n] = None
    print("データ", data, "削除。")
    return True, datalist, pointer, head


def put_list(datalist, pointer, head):
    pp = head
    while True:
        print(datalist[pp], end="--->")	←☆イコール記号の部分で"invalid syntax"が発生する。
        if pointer[pp] is None:
            print("EOF")
            break
        pp = pointer[pp]


def main():
    datalist = [None]*MAX
    pointer = [None]*MAX
    head = 0

    for ii in range(10, 70, 10):
        ret, datalist, pointer = add_list(datalist, pointer, ii)

    ret, datalist, pointer, head = del_list(datalist, pointer, head, 10)
    put_list(datalist, pointer, head)


main()
# 出力結果：
#       データ 10 追加。
#       データ 20 追加。
#       データ 30 追加。
#       データ 40 追加。
#       データ 50 追加。
#       データ領域に空きがありません
#       データ 10 削除。
#       20--->30--->40--->50--->EOF
```
未だにPythonプログラム作成に慣れない。  
ブロック単位の決め方がインデントって・・・見にくいし、わかりにくし、判別しにくいし、区別付けにくいし、、、困る。  


<a name="woodChapter3"></a>
#### 木
[リスト](#listChapter3)のように連なっており、接点とそれを繋ぐ方法を有している必要がある。  
頂点(出発点)を根(親)と呼び、それぞれの接点を葉(子)と呼び、それらを繋ぐ方法を枝(辺とも)呼ぶ。  
根・枝・葉を漏れなく表した全体を木構造と言い、一部の表す場合は部分木と呼ぶ。  
根と葉の2種類をノードと言う。  
このノードは、既出のリストのように、データ部分・繋ぐ枝情報が含まれる。  
また、リストとの違いは、葉が二股に分かれることに違いがあり、今回の場合は、次に繋がる葉情報用の枝部分を2種類有していること。  
※要は、リストの場合は、数珠つなぎになっているため、枝分かれしない。そこに違いがある。  

以下、二分木例）
```text
         根
    |-----|-----|
    |           |
   葉          葉
|---|---|   |---|---|
|       |   |       |
葉     葉   葉     葉
        |           |
    |---|---|   |---|
    |       |   |
   葉      葉  葉
```

今回のプログラム例も他と同じように、本来のやり方を採用せず、未来のない作り方をする。  
要は、構造体などでノードを作らず、配列でノードを構築する。  
正確に言えば、2次元配列から **[左の葉・右の葉・データ]** を作成する。  
以下、その例）
```python
node = [
    [1, 2, 10],
    [3, 4, 20],
    [5, None, 30],
]
```

<details><summary>例外対応なしのプログラム。</summary>

以下、プログラム。
```python
LEFT = 0    # 左ノード番号用定数
RIGHT = 1   # 右ノード番号用定数
DATA = 2    # データ値用定数


def tree(node):
    MAX = len(node)

    print("指定番号のノード調査。")
    print("入力なしのEnterにて終了。")

    while True:
        inString = input("number：")
        if inString == "":
            break
        number = int(inString)
        if 0 <= number and number < MAX:
            print("node{}の値は{}".format(number, node[number][DATA]))
            leftNumber = node[number][LEFT]
            if leftNumber is not None:
                print("左の葉は" + str(node[leftNumber][DATA]))
            else:
                print("左の葉は存在しない。")
            rightNumber = node[number][RIGHT]
            if rightNumber is not None:
                print("右の葉は" + str(node[rightNumber][DATA]))
            else:
                print("右の葉は存在しない。")
        else:
            print("0から" + str(MAX-1) + "の範囲必須。")


def main():
    node = [
        [1,    2,    10],
        [3,    4,    20],
        [5,    None, 30],
        [None, None, 40],
        [6,    7,    50],
        [None, None, 60],
        [None, None, 70],
        [None, None, 80],
    ]
    tree(node)


main()
```

以下、数字以外の入力結果。
```terminal
$ python tree.py
指定番号のノード調査。
入力なしのEnterにて終了。
number：a
Traceback (most recent call last):
  File "/Users/asakunotomohiro/study勉強用Githubリポジトリ/Python言語/Pythonで学ぶアルゴリズムの教科書 一生モノの知識と技術を身につける/chapter3_データ構造を学ぶ/4.木/tree.py", line 57, in <module>
    main()
  File "/Users/asakunotomohiro/study勉強用Githubリポジトリ/Python言語/Pythonで学ぶアルゴリズムの教科書 一生モノの知識と技術を身につける/chapter3_データ構造を学ぶ/4.木/tree.py", line 54, in main
    tree(node)
  File "/Users/asakunotomohiro/study勉強用Githubリポジトリ/Python言語/Pythonで学ぶアルゴリズムの教科書 一生モノの知識と技術を身につける/chapter3_データ構造を学ぶ/4.木/tree.py", line 25, in tree
    number = int(inString)
ValueError: invalid literal for int() with base 10: 'a'
$
```
例外が発生するため、数字以外の入力にも対応できるように変更する。  

以下、例外のひな形(?)
```text
try:
    例外が発生する可能性のある処理。
except:
    例外が発生したときに行う処理。
finally:
    例外が発生してもしなくても必ず行う処理。
```

</details>

以下、例外対応を含むプログラム。
```perl
LEFT = 0    # 左ノード番号用定数
RIGHT = 1   # 右ノード番号用定数
DATA = 2    # データ値用定数


def tree(node):
    MAX = len(node)

    print("指定番号のノード調査。")
    print("入力なしのEnterにて終了。")

    while True:
        inString = input("number：")
        if inString == "":
            break
        # 以下、例外対応。
        try:
            number = int(inString)
        except:	←☆"E722: do not use bare 'except'"が発生している(これは何？)。
            print("数値入力に限る。")
            continue
        if 0 <= number and number < MAX:
            print("node{}の値は{}".format(number, node[number][DATA]))
            leftNumber = node[number][LEFT]
            if leftNumber is not None:
                print("左の葉は" + str(node[leftNumber][DATA]))
            else:
                print("左の葉は存在しない。")
            rightNumber = node[number][RIGHT]
            if rightNumber is not None:
                print("右の葉は" + str(node[rightNumber][DATA]))
            else:
                print("右の葉は存在しない。")
        else:
            print("0から" + str(MAX-1) + "の範囲必須。")


def main():
    node = [
        [1,    2,    10],
        [3,    4,    20],
        [5,    None, 30],
        [None, None, 40],
        [6,    7,    50],
        [None, None, 60],
        [None, None, 70],
        [None, None, 80],
    ]
    tree(node)


main()
```

以下、実行結果。
```terminal
指定番号のノード調査。
入力なしのEnterにて終了。
number：a	←☆数字以外の入力のため、はじかれた。
数値入力に限る。
number：0
node0の値は10
左の葉は20
右の葉は30
number：1
node1の値は20
左の葉は40
右の葉は50
number：2
node2の値は30
左の葉は60
右の葉は存在しない。
number：3
node3の値は40
左の葉は存在しない。
右の葉は存在しない。
number：4
node4の値は50
左の葉は70
右の葉は80
number：5
node5の値は60
左の葉は存在しない。
右の葉は存在しない。
number：6
node6の値は70
左の葉は存在しない。
右の葉は存在しない。
number：7
node7の値は80
左の葉は存在しない。
右の葉は存在しない。
number：8
0から7の範囲必須。
number： 	←☆半角スペースを入力したため、はじかれた。
数値入力に限る。
number：
```


* 語弊を生む表現。  
  P108の「木とリストの違い」の後半説明に、
  > 閉路とは図3-4-1で、例えば⑤と⑦がつながるようなノードが枝によって閉じられた構造を意味します。  
  
  とある。  
  どう考えても5と7は繋がらない。  


<a name="graphChapter3"></a>
#### グラフ
図のことではあるが、点とそれらを結ぶ線から成る図形の構造のことであり、データ構造と言う。  
この、線で結ぶための基点になるのがノードであり、このノードが今まで出てきたノードのこと・・・かな。  

* グラフの種類  
  * [無向グラフ](#graphChapter3Undirectedgraph)  
    双方向に繋がっているグラフのこと。  
  * [有向グラフ](#graphChapter3Directedgraph)  
    一方通行に繋がっているグラフのこと。  


<a name="graphChapter3Undirectedgraph"></a>
以下、無向グラフ例(2次元配列)）
```python
[
    [0, 1, 1, 0, 0],
    [1, 0, 1, 1, 0],
    [1, 1, 0, 0, 1],
    [0, 1, 0, 0, 1],
    [0, 0, 1, 1, 0],
]
```
   0  1  2  3  4  
0 [0, 1, 1, 0, 0]  
1 [1, 0, 1, 1, 0]  
2 [1, 1, 0, 0, 1]  
3 [0, 1, 0, 0, 1]  
4 [0, 0, 1, 1, 0]  

* 上記解説  
  無向グラフのため、双方向に繋がっている。  
  横軸と縦軸で数字が1のものが繋がっている。  
  * 0と1が繋がっている。  
  * 0と2が繋がっている。  
  * 1と0が繋がっている。  
  * 1と2が繋がっている。  
  * 1と3が繋がっている。  
  * 2と0が繋がっている。  
  * 2と1が繋がっている。  
  * 2と4が繋がっている。  
  * 3と1が繋がっている。  
  * 3と4が繋がっている。  
  * 4と2が繋がっている。  
  * 4と3が繋がっている。  

<a name="graphChapter3Directedgraph"></a>
以下、有向グラフ例(2次元配列)）
```python
[
    [0, 1, 1, 0, 0],
    [0, 0, 1, 1, 0],
    [0, 0, 0, 0, 0],
    [0, 0, 0, 0, 1],
    [0, 0, 1, 1, 0],
]
```
   0  1  2  3  4  
0 [0, 1, 1, 0, 0]  
1 [0, 0, 1, 1, 0]  
2 [0, 0, 0, 0, 0]  
3 [0, 0, 0, 0, 1]  
4 [0, 0, 1, 1, 0]  

* 上記解説  
  有向グラフのため、一方通行の繋がり。  
  横軸と縦軸で数字が1のものが繋がっている。  
  * 0から1に繋がっている。  
  * 0から2に繋がっている。  
  * 1から2に繋がっている。  
  * 1から3に繋がっている。  
  * 2から繋がっているノードはない。  
  * 3から4に繋がっている。  
  * 4から2に繋がっている。  
  * 4から3に繋がっている。  

これらのグラフの行列を隣接行列と言うそうだ。  
そもそも行列が何か分からないが、知ってて損はないようだ。  
[@mattn_jp曰く"行列やってて良かったなって思いましたね"とのこと。](https://twitter.com/mattn_jp/status/1475680814180761601)  

以下、二分木例）
```text
         根0
    |-----|-----|
    |           |
   葉1         葉2
|---|---|
|       |
葉3    葉4
```
これを以下隣接行列で表現する。  
   0  1  2  3  4  
0 [0, 1, 1, 0, 0]  
1 [1, 0, 0, 1, 1]  
2 [1, 0, 0, 0, 0]  
3 [0, 1, 0, 0, 0]  
4 [0, 1, 0, 0, 0]  

以下、無向グラフプログラム例）
```python
def graph(data, node):
    for yy in range(5):
        for xx in range(yy, 5):
            if data[yy][xx] == 1 and data[xx][yy] == 1:
                print(node[yy]+"<--->" + node[xx])


def main():
    data = [    # グラフの定義。
            [0, 1, 1, 0, 0, ],
            [1, 0, 1, 1, 0, ],
            [1, 1, 0, 0, 1, ],
            [0, 1, 0, 0, 1, ],
            [0, 0, 1, 1, 0, ],
        ]
    node = [
            "(0)", "(1)", "(2)", "(3)", "(4)",
        ]
    graph(data, node)


main()
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

以下、有向グラフプログラム例）
```python
def graph(data, node, arrow):
    for yy in range(5):
        for xx in range(yy, 5):
            e1 = data[yy][xx]
            e2 = data[xx][yy]
            aa = e1 + e2*2
            if aa > 0:
                print(node[yy] + arrow[aa] + node[xx])


def main():
    data = [    # グラフの定義。
            [0, 1, 1, 0, 0, ],
            [0, 0, 1, 1, 0, ],
            [0, 0, 0, 0, 0, ],
            [0, 0, 0, 0, 1, ],
            [0, 0, 1, 1, 0, ],
        ]
    node = [
            "(0)", "(1)", "(2)", "(3)", "(4)",
        ]
    arrow = ["", "-->", "<--", "<->", ]
    graph(data, node, arrow)


main()
```
以下、出力結果。
```terminal
(0)-->(1)
(0)-->(2)
(1)-->(2)
(1)-->(3)
(2)<--(4)
(3)<->(4)
```


<a name="stacksAndQueuesChapter3"></a>
#### スタックとキューを扱う(Pythonモジュール)。
Pythonに最初から備わっているモジュールに、[**queuemモジュール**](https://docs.python.org/ja/3/library/queue.html)がある。  

以下、プログラム。
```python
import queue


# 以下、キュー用関数
def que():
    print("キュー開始")
    que = queue.Queue()
    for ii in range(MAX):
        que.put(ii)
    for ii in range(MAX):
        print(que.get(), end="⇒")
    print("\n")


# 以下、スタック用関数
def sta():
    print("スタック開始")
    sta = queue.LifoQueue()
    for ii in range(MAX):
        sta.put(ii)
    for ii in range(MAX):
        print(sta.get(), end="⇒")
    print("\n")


# 以下、プログラム
def main():
    print("以下、キュー用関数呼び出し。")
    que()
    print("以下、スタック用関数呼び出し。")
    sta()


main()
```

以下、出力結果。
```terminal
以下、キュー用関数呼び出し。
キュー開始
0⇒1⇒2⇒3⇒4⇒5⇒6⇒7⇒8⇒9⇒

以下、スタック用関数呼び出し。
スタック開始
9⇒8⇒7⇒6⇒5⇒4⇒3⇒2⇒1⇒0⇒
```
ちょっとだけ矢印が見にくいな。  


<a name="saveTheDataChapter3"></a>
#### データを保存する。
プログラム実行時だけでなく、実行後にプログラムは終了するが、処理したデータは残したい。  
その場合は、プログラムとは別に保存場所を用意する必要がある。  
今回は、ファイルを用いる。  

以下、ファイル書き込みプログラム。
```python
def main():
    f = open("algorithm.txt", 'w', encoding="utf-8")
    for ii in range( 1, 11 ):
        data = str( 2**ii )
        f.write(data + ",")
    f.close()


main()
```

以下、実行。
```terminal
$ ll
total 8
-rw-r--r--  1 asakunotomohiro  staff  220  1 15 22:10 write.py
$ python write.py
total 16
-rw-r--r--  1 asakunotomohiro  staff   32  1 15 22:10 algorithm.txt
-rw-r--r--  1 asakunotomohiro  staff  220  1 15 22:10 write.py
$ cat algorithm.txt
2,4,8,16,32,64,128,256,512,1024,$
$
```

以下、ファイル読み込みプログラム。
```python
def main():
    f = open("algorithm.txt", 'r', encoding="utf-8")
    rr = f.read()
    f.close()
    ss = rr.split(",")
    nn = len(ss)
    data = [0] * nn
    for ii in range(nn):
        if ss[ii] != "":
            data[ii] = str(ss[ii])	←☆strをintにした場合、エラーになる(改行が読み込めないため)。
    print(data)


main()
```

以下、実行。
```terminal
$ ll
total 24
-rw-r--r--  1 asakunotomohiro  staff   33  1 15 22:29 algorithm.txt
-rw-r--r--  1 asakunotomohiro  staff  267  1 15 22:26 read.py
$ cat algorithm.txt
1024,512,256,128,64,32,16,8,4,2,
$ python read.py
['1024', '512', '256', '128', '64', '32', '16', '8', '4', '2', '\n']
$
```
最後の改行があるのは可笑しい。  
テキストファイルには含めていないのだが？  
手作業で作ったファイルだから紛れ込んだ？  
何度書き換えても駄目だった。  


以下、上記の書き込みプログラムでの出力ファイルを読み込むならば`\n`は紛れ込まなかった。  
```terminal
$ cat algorithm.txt
2,4,8,16,32,64,128,256,512,1024,$	←☆上記でcatした場合、改行されているのが原因だろう。
$ python read.py
[2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 0]
$
```
原因は何？  
ファイルを手作業で作った場合、どうしても紛れ込んでしまう。  
困った。

書き込みプログラム生成ファイルならば、以下のプログラムで動く。
```python
def main():
    f = open("algorithm.txt", 'r', encoding="utf-8")
    rr = f.read()
    f.close()
    ss = rr.split(",")
    nn = len(ss)
    data = [0] * nn
    for ii in range(nn):
        if ss[ii] != "":
            data[ii] = int(ss[ii])	←☆ここのintだけが変わっている(他は変化なし)。
    print(data)


main()
```


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

* [ ] "study2programming"にマージする時のルール。  
  * [ ] 誤字脱字程度のコミットはスカッシュしたい。  
  * [ ] マージ後"study2programming"をPushする。  
    ※masterにマージすることはない。  
  * [ ] マージごとにタグ付けをする(そしてPush実施)。  

* 例外としてmasterに取り込む場合は、チェリーピッキングでピンポイントに必要最小限のコミットのみを取り込む(しつこいが、masterに取り込むことはしたくない)。  
  言いたいことは、履歴を複数にしたくないと言うこと。  


以上。
<!-- vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=markdown expandtab: -->
