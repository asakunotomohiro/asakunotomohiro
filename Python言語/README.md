# Python言語
ここは、プログラミング言語のPython言語を勉強するブランチになる。  

## ブランチの利用方法

## 勉強方法
勉強するプログラミング言語の一つとしている。  
当然本を使うのだが、公式ページを避ける理由がないため、必要に応じて各サイトも利用する。  
[プログラミング言語 Python情報サイト](https://www.python.jp)  
[ゼロからのPython入門講座](https://www.python.jp/train/index.html)  
[Python チュートリアル](https://docs.python.org/ja/3/tutorial/)  
[Python Documentation contents](https://docs.python.org/ja/3/contents.html)  

* 書籍  
  [Pythonチュートリアル 第2版](https://www.oreilly.co.jp/books/9784873114422/)  
  チュートリアル本を持っているが、[第4版](https://www.oreilly.co.jp/books/9784873119359/)が出ていることを考えれば、古い内容なのだろう。  
  使うことはないだろう。  

## 開発環境
開発には、`MacVim`を使う。  
開発規模が大きくなった場合、`Visual Studio Code(VSCode)`に逃げるかもしれない。  
さらに手に負えないほどの規模にまで膨れ上がれば、`Visual Studio 2019 for Mac`などを使う・・・かもね。  

## Pythonで学ぶアルゴリズムの教科書
簡単なプログラミングに使う基礎知識を統一する。  

* 基礎知識5種類  
  * [x] [変数](#variable変数)  
  * [x] [配列](#arrangement配列)  
        Pythoでは、`リスト(list)`という。  
  * [x] [条件分岐](#Conditional条件分岐)  
  * [x] [繰り返し](#repetition繰り返し)  
  * [x] [関数](#function関数)  

### 具体的な基礎知識
何はともあれ、まずは、"Hello World"を表示するプログラムを作る。  
そのため、以下の手順で勉強を進めることにする。  

[x] 手順1. Python勉強用ブランチにいる。  
[x] 手順2. ルートディレクトリのひな形ディレクトリをコピーしてくる。  
[x] 手順3. コピーしてきたディレクトリ名を"基礎知識用の勉強"に変更する。  
[x] 手順3-1. "Hello World"プログラムを作る。  
[x] 手順3-2. コミット。  
[x] 手順4. 各ディレクトリで、変数・配列・条件分岐・繰り返し・関数の"絶対的に勉強する一覧"を勉強する。  
[x] 手順4-1. 箇条書きごとに勉強を進める。  
[x] 手順4-2. 箇条書きごとに勉強を終えることで、コミット実施する。  
[x] 手順4-3. 次の箇条書きに移り、勉強を継続(再開)する。  
[x] 手順5. 1つのプログラミング言語で、手順4の勉強1種類を終えた時に、次のプログラミング言語に移る。  
  (細かく分けることでやる気を継続する・・・はず)  
[x] 手順6. 上記、5種類の基礎知識を終わるまで繰り返す。  
[ ] 手順7. 5種類の基礎知識終了にて、"study2programming"ブランチにマージする。  

勉強環境のコンパイルバージョン：3.8.6  
```terminal
$ python --version
Python 3.8.6
$
```

プログラムファイルの拡張子：`*.py`  
標準の文字コード(プログラムファイル)：UTF-8  
以下、別の文字コード指定(ファイルの先頭に記述する)。
```python:Sample.py
# coding=UTF-7
```

さらに別の記述方法。
```python:Sample.py
# coding:CESU-8
```

文字区切り(行末記号)：改行  
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

インデント：半角スペース4個が基本。Tabでも構わないが、半角スペースと混在しないこと(半角スペースの利用を推奨)。  
基本的に、インデントに意味がある。  
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

標準の出力関数：`print`  

```terminal:version
$ python --version
Python 3.8.6
$
```

プログラムの拡張子：`.py`  
標準の文字コード：`UTF-8`  
プログラムファイルの文字コードを変更する場合、基本は1行目にその旨を追記する。  
　　例1）`# coding=cp932`  
　　例2）`# coding:cp932`  
　　※シェバングを1行目に記述する場合は、2行目に追記しておく。  
文字区切り：`改行`  
　　※単語ごとに改行することも可能。  
```python:Sample.py
print(
    name
)

print \
(name)

print(
    '朝来野'
    '智博'
)

name = '朝来野'; print(name)
```
インデント：他プログラムで言うブロックの役割を果たすため、見栄えのために変更した場合、プログラムの挙動が変わる。  
1行コメント記号：`#`  
複数行コメント：`'''〜'''`・`"""〜"""`  
　　※シングルクォートもしくはダブルクォートをそれぞれ3個ずつで囲むことにより、擬似的な複数行コメントが実現できる。  
```python:sample.py
'''
1行目のコメント
コメント2行目。
'''
```

デバッガ：VSCodeには標準でついているようだ。
ならば、Vimエディタには？  


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
#### 変数
複数のルールがある。  

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

* 他の話題例  
  * [x] 定数  
  * [x] データ型  
     * [ ] 整数  
     * [ ] 浮動小数点型  
     * [ ] 文字型  
     * [ ] 真偽型  
     * [ ] 型推論  
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


##### 定数
存在しない。  
暗黙の了解により、変数を全て大文字で宣言している場合、それを定数と仮定する。  

```python:Sample.py
TAX = 1.1
print(100 * TAX)    # 出力結果：110.00000000000001
TAX = 10
print(100 + TAX)    # 出力結果：110
```


##### データ型
JavaやC#などの静的型付けではなく、動的型付け言語のため、データ型はほぼ意識することはない。  

|分類| 型 |概要|
|----|----|----|
|数値|int|整数型|
|数値|float|浮動小数点型|
|数値|complex|複素数型|
|データ|str|文字列型|
|データ|bytes|バイナリデータ|
|コンテナ|list|順序を持つリスト|
|コンテナ|tuple|順序を持つリスト(変更不可)|
|コンテナ|dict|キー／値の辞書|
|コンテナ|set|順序を持たない値の集合|
|その他|bool|論理型(True・False)|
|その他|NoneType|値がない|

* 別名  
  * 変更可能：ミュータブル(mutable)  
  * 変更不可：イミュータブル(immutable)  
  * 反復可能：イテラブル(iterable)  
  * 順序を持つ(インデックスでのアクセスが可)：シーケンス(sequence)  
  * 配下に複数の値を格納可能：コンテナ(container)  

* 数値リテラル  
数値リテラルでは、桁区切り`_`を使うことができる。  
例）
`value = 1_234_567`  


##### データ型ー整数


##### データ型ー浮動小数点型
小数点数だけでなく、指数表現が可能。  


##### データ型ー文字型
シングルクォートもしくはダブルクォートで文字列を括る。  

エスケープシーケンス
```python:Sample.py
print(```朝来野
智博```)
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
|`\
`|バックスラッシュと改行文字を無視|※改行記号を表せないため、実際に改行した。
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

##### データ型ー型推論

##### 変数の破棄
他のプログラミング言語では存在しない概念のひとつかな。  

```python:Sample.py
# 変数の破棄
name1 = '朝来野'
print(name1)    # 出力結果：朝来野
del name1
print(name1)    # NameError: name 'name1' is not defined
```


<a name="arrangement配列sub"></a>
#### 配列
他のプログラミング言語では、配列という。  
しかし、Pythonでは、リスト(list)と呼ぶ(混乱するので止めて欲しい)。  

* 絶対的に勉強する一覧  
  * [x] 1次元配列  
  * [x] 多次元配列  
     * [x] 2次元配列  
     * [x] 3次元配列  
     * ※複雑さに応じて対応する。  

* 配列  
様式：
`配列名 = [データ0, データ1, データ2, ・・・]`  

今回のアルゴリズムの勉強(書籍)では、後から追加しないやり方として、事前に配列数を確保しておくとのこと。  
そんなこと知らんわ。  

以下、配列の生成
```python:配列(list).py
asakuno = list('朝来野智博')
print(asakuno)	# ['朝', '来', '野', '智', '博']
```

以下、ジャグ配列(2次元配列)
```python:配列(list).py
asakuno = [
    ['朝', '来', '野'],
    ['智', '博'],
]
print(asakuno)	# [['朝', '来', '野'], ['智', '博']]

print(asakuno[1][0])	# 智
```

```python:配列(list)多次元配列.py
asakuno = [
    ['朝', '来', '野',
        ['智', '博', ]
     ]
]
print(asakuno)	# [['朝', '来', '野', ['智', '博']]]
print(asakuno[0][1])	# 来
print(asakuno[0][3][1])	# 博
```

以下、配列の要素へ追加・要素から削除
```python:配列(list)追加・削除.py
# 基本的なリスト
asakuno = ['朝来野', ]
print(asakuno)	# ['朝来野']

# 以下、末尾に追加。
asakuno.append('智博')
print(asakuno)	# ['朝来野', '智博']

# 以下、途中に追加。
asakuno.insert(1, '-')	# 1番目の直前に挿入。
print(asakuno)	# ['朝来野', '-', '智博']

# 以下、削除。
asakuno.pop(1)	# 1番目を削除(取り出し)
print(asakuno)	# ['朝来野', '智博']

# 以下、削除。
asakuno.pop()	# 末尾を削除。
print(asakuno)	# ['朝来野']
```

以下、配列の要素へ追加・要素から削除
```python:配列(list)複数要素追加・置換・削除.py
# 要素の挿入
asakuno = list('朝来智博')  # 「野」がない。
asakuno[2:2] = ['野']
print(asakuno)	# ['朝', '来', '野', '智', '博']
```

以下、要素内指定で削除。
```python:配列(list)要素削除.py
asakuno = ['朝来野', '智博', ]
print(asakuno)	# ['朝来野', '智博']

# 以下、要素を削除。
asakuno.remove('朝来野')
print(asakuno)	# ['智博']
```

以下、要素内指定で削除。
```python:配列(list)複数要素追加・置換・削除.py
# 要素の削除
asakuno[2:9] = []
print(asakuno)	# ['朝', '来', '智', '博']

# 要素の削除
asakuno = list('朝来野智博')
asakuno[2:3] = list('asakuno')  # 上記と同じ結果に揃えた。
del asakuno[2:9]
print(asakuno)	# ['朝', '来', '智', '博']
```

以下、要素を全て削除。
```python:配列(list)要素削除.py
asakuno = list('朝来野智博')
print(asakuno)	# ['朝', '来', '野', '智', '博']

asakuno.clear()
print(asakuno)	# []
```

以下、配列内から1文字を検索。
```python:配列(list)検索.py
asakuno = list('朝来野智博朝来野智博')

# 6文字目(index_5)以降で「朝」の検索
print(asakuno.index('朝', 5))	# 5
```

以下、配列内にある文字を数える。
```python:配列(list)重複確認.py
asakuno = list('朝来野智博朝来野智博')

# 「朝」の出現回数
print(asakuno.count('朝'))	# 2
```

以下、配列内にあるかどうかを確認する。
```python:配列(list)存在確認.py
asakuno = list('朝来野智博朝来野智博')

# 「a」の検索
print('a' in asakuno)	# False
```

以下、浅いコピーを行う(コピー先を変更した場合、コピー元にも影響する)。
```python:配列(list)複製.py
asakuno = list('朝来野智博')

# 上記配列を複製する(シャローコピー)。
tomohiro = asakuno.copy()
print(tomohiro)	# ['朝', '来', '野', '智', '博']
```
深いコピー(ディープコピー)をする場合は、`import copy`でモジュールを使い、`deepcopy`メソッドでコピーをする。  

以下、配列の連結及び、指定回数連結。
```python:配列(list)連結.py
asakuno = list('朝来野')
tomohiro = list('智博')

asakunotomohiro = asakuno + tomohiro
print(asakunotomohiro)	# ['朝', '来', '野', '智', '博']

asakunotomohiro = tomohiro * 3
print(asakunotomohiro)	# ['智', '博', '智', '博', '智', '博']
```
これは、配列を新しく作り直すことに注意すること。

以下、配列内を並び替え。
```python:配列(list)並び替え.py
asakuno = list('朝来野智博')

# 逆順に並べ替える。
asakuno.reverse()
print(asakuno)	# ['博', '智', '野', '来', '朝']

# 逆順に並べ替える？
asakuno = list('朝来野智博')
asakuno.sort(reverse=True)
print(asakuno)	# ['野', '来', '朝', '智', '博']

# ソート
asakuno = list('asakuno')
asakuno.sort()
print(asakuno)	# ['a', 'a', 'k', 'n', 'o', 's', 'u']
```

以下、forループにて、配列の要素を番号付きで取り出す。
```python:配列(list)要素を番号付きで取り出す.py
asakuno = list('朝来野智博')

for tomohiro, asakunotomohiro in enumerate(asakuno):
    print(tomohiro, '：', asakunotomohiro)
# 出力結果：0 ： 朝
#           1 ： 来
#           2 ： 野
#           3 ： 智
#           4 ： 博
```

```python:配列(list)要素のbool値判断.py
# 以下、リスト内の全ての要素がTrueであるか。
print(all([True, True, False]))	# False

asakuno = list('朝来野智博')
print(all(asakuno))	# True
#	何の役にも立たない判定方法だな。
```

配列から各要素を取り出す。
```python:配列(list)for.py
asakuno = list('朝来野智博')

for tomohiro in asakuno:
    print(tomohiro)
# 出力結果：朝
#           来
#           野
#           智
#           博
```

以下、rangeによる配列作成。
```python:配列(list)range.py
asakuno = list(range(0, 7, 2))
print(asakuno)	# [0, 2, 4, 6]
```
かなりの非効率なため、やらない方が良い。  

<a name="Conditional条件分岐sub"></a>
#### 条件分岐
条件分岐とは、何らかの条件が成り立ったときに分岐させる仕組み。  

* 絶対的に勉強する一覧  
  * [x] 単純分岐-"もし"1つ。  
    基本構造例：if  
  * [x] 多岐分岐-"もし"2つ以上。  
    基本構造例：if〜else if  
  * [ ] 多岐分岐-条件にて複数から選ぶ。  
    基本構造例：switch  

* 条件式  

|条件式|比較内容|
|------|--------|
| a == b |aとbの値が等しいか比較する。|
| a != b |aとbの値が等しくないかを比較する。|
| a > b |aはbより大きいかを比較する。|
| a < b |aはbより小さいかを比較する。|
| a >= b |aはb以上かを比較する。|
| a <= b |aはb以下かを比較する。|

* if文(単純分岐)  
様式：
```python:Sample.py
if [条件式]:
	何らかの処理
次の処理(if文とは全く無関係)。
```
※`条件式`が **True** の場合、何らかの処理が行われる。
**False** の場合、何らかの処理を行わず、次の処理に移行する。  

* if文(多岐分岐)  
様式1：
```python:Sample.py
if [条件式]:
	何らかの処理A
else:
	何らかの処理B
次の処理(if文とは全く無関係)。
```
※`条件式`が **True** の場合、何らかの処理Aが行われる。
**False** の場合、何らかの処理Bを行う。
そして、次の処理に移行する。  

様式2：
```python:Sample.py
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

様式3：
```python:Sample.py
if [条件式]:
	何らかの処理A
elif [条件式]:
	何らかの処理B
次の処理(if文とは全く無関係)。
```
※`条件式`が **True** の場合、何らかの処理Aが行われる。
**False** の場合、次の条件式が動き、Trueの場合、何らかの処理Bを行う。
2つ目の条件式でも **False** の場合、if文とは無関係に、次の処理に移行する。  

* 複数の条件式を1つにまとめる。
様式：
```python:Sample.py
if [条件式]:
	何らかの処理
```
条件式が1つの場合、`hoge == 0`で終わるが、複数の条件を合わせる場合、`hoge == 0 and boo == 0`のように1つにまとめることができる。  
`and`：どちらの条件もTrueの場合にif文の処理が走る。  
`or`：どちらの条件がTrueの場合にif文の処理が走る。  
これを **[ド・モルガンの法則](https://ja.wikipedia.org/wiki/ド・モルガンの法則)** として、使うべし。  

<a name="repetition繰り返しsub"></a>
#### 繰り返し

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
##### 繰り返し
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
###### 指定回数条件での繰り返し：for( 条件式 )
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
###### 指定回数条件での繰り返し：拡張for命令
2種類。  

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
##### `for`の入れ子。

```Python
for ii in range(4):
    print("1つ目のfor", ii, "回目の実行")
    for jj in range(4):
        print("　　2つ目のfor", jj, "回目の実行")
```

<a name="subRepetition5"></a>
##### ジャンプ処理
以下、2種類ある。  
* break  
* continue  

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
##### 真偽条件での繰り返し：while( 条件式 )
様式：
`while [条件式]`  

```Python
ii = 1
while ii <= 10:
    print(ii)
    ii += 1
```

<a name="subRepetition7"></a>
##### 無限ループ
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
##### 繰り返しでの説明しない項目。


<a name="function関数sub"></a>
#### 関数

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
##### 関数
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
```

上記呼び出し方法
```Python
Hello()	←☆上記関数の呼び出し。
```
※`E901 IndentationError: unindent does not match any outer indentation level`が出る。  
実行に支障は無いが気になる(他のも同じメッセージが出る)。  

様式(引数あり-戻り値無し)：
```Python
def Hello(hello):	←☆関数定義(引数あり)
    print(hello)	←☆関数内の処理。
```

上記呼び出し方法(引数あり)
```Python
Hello("Hello World.")	←☆上記関数の呼び出し。
```

様式(引数無し-戻り値あり)：
```Python
def Hello():
    return "Hello World."
```

上記呼び出し方法(引数あり)
```Python
word = Hello()	←☆上記関数の呼び出し。
print(word)
```

様式(引数あり-戻り値あり)：
```Python
def Hello(word):
    word = word + " World."
    return word
```

上記呼び出し方法
```Python
word = Hello("Hello")	←☆上記関数の呼び出し。
print(word)
```

ちなみに、呼び出し側の関数の引数は、実引数という。
実際の関数で定義している引数のことを仮引数という。  

<a name="subFunction2"></a>
##### スコープ
* グローバル変数  
  関数の外側で宣言した変数。  
* ローカル変数  
  関数内部で宣言した変数。  
  そして、グローバル変数を関数内部で利用する場合、`global`宣言を付けた変数宣言が必須になる(関数内で)。  

<a name="subFunction999"></a>
##### 関数での説明しない項目。

### Gitのマージルール
当ブランチでPython言語の勉強をする。  
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
