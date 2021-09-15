# Python言語
ここは、プログラミング言語のPython言語を勉強するブランチになる。  

## ブランチの利用方法
ここのブランチは、書籍のアルゴリズムを勉強するのに使う。  
また、具体的なアルゴリズムの種類は、下記書籍の目次チャプターに限定する。  
※チャプターごとにブランチを分けていく。  
下記の目次を使う場合、そのチャプター部分をチェックリストに変更する。  

## [Pythonで学ぶアルゴリズムの教科書](https://book.impress.co.jp/books/1120101024)
本の概要。  
> エンジニアの基礎体力を身につける  
> 
> Pythonを用い、ITエンジニアが身につけたい王道アルゴリズムを手を動かしながら学べる入門書です。  
> スタック、キュー、リスト、木、グラフなどのデータ構造から、サーチ、ソート、ハッシュといった王道アルゴリズムを厳選しつつ、ユークリッドの互除法、最短経路問題、フラクタル図形の描画などワンランク上の知識・技術まで網羅。  
> サンプルは手入力しやすい短めのプログラムを108個用意しています。  
> 資格＆就職試験に挑む方、大学や専門学校で情報処理を学ぶ方など、プログラミングの力を伸ばしたいすべての方におすすめです。  

* [目次](#algorithmTextbookLearnedinPython)  
  * Chapter 1 プログラミングの基礎知識  
    現時点で完了している。  
  * [Chapter 2 プログラミングの力を養う](#algorithmTextbookLearnedinPython)  
    * [x] 平均値を求める。2021/08/30  
    * [x] 1からnまで足し合わせる。2021/09/02  
    * [x] 九九の式を出力する。2021/09/11  
    * [x] 素数を求める。2021/09/14  
    * [ ] nの階乗(n!)を求める。  
    * [ ] エラトステネスの篩(フルイ)  
    * [ ] n進法を理解する。  
  * [Chapter 3 データ構造を学ぶ](#algorithmTextbookLearnedinPython)  
    * スタック  
    * キュー  
    * リスト  
    * 木  
    * グラフ  
    * データを保存する(Pythonのファイル処理)  
  * [Chapter 4 サーチ](#algorithmTextbookLearnedinPython)  
    * 線形探索  
    * 二分探索  
    * 木探索  
    * 計算量について知る  
    * ランダウの記号  
    * 数当てゲーム  
    * ビット演算を学ぶ  
  * [Chapter 5 ソート](#algorithmTextbookLearnedinPython)  
    * 選択ソート  
    * バブルソート  
    * 挿入ソート  
    * クイックソート  
    * マージソート  
    * ヒープソート  
    * クイックソートの再起の過程を出力する。  
    * 再帰関数を用いたマージソート。  
    * Pythonのソート命令とheapqモジュールの使い方。  
    * ソートの計算量と計算時間。  
  * [Chapter 6 ハッシュ](#algorithmTextbookLearnedinPython)  
    * ハッシュとは。  
    * ハッシュ関数  
    * ハッシュテーブル  
    * 衝突を回避する。  
    * 暗号学的ハッシュ関数  
  * [Chapter 7 さまざまなアルゴリズムを学ぶ](#algorithmTextbookLearnedinPython)  
    * ユークリッドの互除法  
    * 文字列探索  
    * アルゴリズムを理解するヒント(処理の過程の出力)。  
  * [Chapter 8 アルゴリズムを見える化する](#algorithmTextbookLearnedinPython)  
    * n次関数の曲線を描く。  
    * フラクタル図形を描く。  
    * 迷路を解く過程を描く。  
    * アルゴリズムを使い分ける。  
    * マンデルブロー集合を描こう。  
  * Appendix 1 Pythonのインストール方法  
  * Appendix 2 テキストエディタと統合開発環境  
  * Appendix 3 Pythonの記述ルール  

## 具体的なアルゴリズム問題解決前手順
基礎知識5種類を勉強するのと同じように、アルゴリズムの勉強にも以下の手順で進める。  

* 以下、手順。  
  * [x] 手順1. 勉強用のブランチに移動する(上記目次の1チャプター分専用ブランチとする)。  
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



### ※注意事項
アルゴリズムを勉強することが目的であるため、理解すること。  
しかし、やる気を維持するためにも1冊分を読了させることも目的として、深掘りせずに進めることも考慮すること。  
要は、深く踏み込むか、流し読み程度に抑えるかどうかはそのときに決める。  

何より、書籍記載のアルゴリズムは、サンプルとして公式ページからダウンロードできる。  
そのため、書籍通りに進めるわけには行かず、自分なりに理解できるやり方で勉強した場合、当然ながら時間が掛かり、踏み込む必要が発生するだろう。  
それでも読了も達成したいため、なかなか両立は、難しい・・・と思い込んでいるが、実際は流し読み程度に抑え、サクサク勧めていこうと思う。

#### 以下、概要。
<a name="algorithmTextbookLearnedinPython"></a>
* [Chapter2 プログラミングの力を養う](#developProgrammingSkillsOverviewChapter2)  
  基礎的なプログラミングの力を養っていく。  
  例えば、配列利用の関数定義・繰り返し・再帰関数・条件分岐など。  
* [Chapter3 データ構造を学ぶ](#learnDataStructuresOverviewChapter3)  
  今までに勉強した配列(リスト)を用いた発展を遂げる。  
  ※今回利用するリストはアルゴリズム(概念)用語であり、Pythonで用いているリスト(配列)という用語とは別物。  
  ※例外処理(`try〜except〜finally`)をの説明をしている(いずれ基礎知識として勉強に組み込む必要がある？)。  
* [Chapter4 サーチ](#searchOverviewChapter4)  
  複数データから目的地を探し出すこと。  
  ※有名な探索アルゴリズムのみに限定している。  
* [Chapter5 ソート](#sortOverviewChapter5)  
  一定の規則に従い並び替えること。  
  ※有名な並べ替えアルゴリズムのみに限定している。  
* [Chapter6 ハッシュ](#hashOverviewChapter6)  
  ハッシュとは、データから算出した小さな値のこと。  
  今回は、そのハッシュとしての値を算出する方法を勉強する。  
* [Chapter7 さまざまなアルゴリズムを学ぶ](#learnVariousAlgorithmsOverviewChapter7)  
  アルゴリズムを勉強する上で必ず関わるアルゴリズムになる。  
  むしろ、ここまで勉強できてアルゴリズムを勉強したと言えるのではないだろうか。  
* [Chapter8 アルゴリズムを見える化する](#visualizeTheAlgorithmOverviewChapter8)  
  今回のアルゴリズムを勉強することで、アルゴリズム(もしくはデータ)を可視化する方法を勉強できる。  

<a name="developProgrammingSkillsOverviewChapter2"></a>
### プログラミングの力を養う
基礎的なプログラミングの力を養っていく。  

* 各項目。  
  [平均値を求める。](#findTheAverageValueChapter2)  
  [1からnまで足し合わせる。](#addFrom1tonChapter2)  
  [九九の式を出力する。](#outputTheMultiplicationTableChapter2)  
  [素数を求める。](#findAPrimeNumberChapter2)  
  [nの階乗を求める。](#findTheFactorialOfNChapter2)  
  [エラトステネスの篩](#eratosthenesSieveChapter2)  
  [n進法を理解する。](#understandnAryNotationChapter2)  

<a name="findTheAverageValueChapter2"></a>
#### 平均値を求める。
今回は、以下のルールがある。  
要は、平均値を求める方法は他にもあると言うことなのだろう。  

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

<a name="addFrom1tonChapter2"></a>
#### 1からnまで足し合わせる。
今回は、以下のルールがある。  

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


<a name="outputTheMultiplicationTableChapter2"></a>
#### 九九の式を出力する。
小学生時代に習う九九の式を今頃復習する？  

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


<a name="findAPrimeNumberChapter2"></a>
#### 素数を求める。
素数とは、1とその数以外に約数を持たない2以上の自然数のこと。  
例えば、**2**・**3**・**5**・**7**・**11**・**13**・**17**・・・など・・・。  

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
これは改変しようが無いと思っているのだが、当然のように[他の方法](#eratosthenesSieveChapter2)でも素数を求めることはできる。  
[`√`](#findAPrimeNumberChapter2root)を使うことでも解決できるような話があったぐらいだから当然ではあるのだが・・・。  


※余談：
`if ff == True:`の部分で、**E712 comparison to True should be 'if cond is True:' or 'if cond:'** と言うエラーが発生した。  
この`==`の部分を`is`に変更し、`if ff is True:`にしたらエラーが解消された。  

※シンタックスエラー：
`print(ii, end=",")`の **=** がシンタックスエラーになる。  
何故なのか全く分からない。  
Python 2.7.16で実行することになっている。  
困った。  

<a name="findTheFactorialOfNChapter2"></a>
#### nの階乗を求める。

<a name="eratosthenesSieveChapter2"></a>
#### エラトステネスの篩(フルイ)

<a name="understandnAryNotationChapter2"></a>
#### n進法を理解する。

<a name="learnDataStructuresOverviewChapter3"></a>
### データ構造を学ぶ

* 各項目。  
  [スタック](#stackChapter3)  
  [キュー](#queueChapter3)  
  [リスト](#listChapter3)  
  [木](#woodChapter3)  
  [グラフ](#graphChapter3)  
  [データを保存する。](#saveTheDataChapter3)  

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
  [線形探索](#linearSearchChapter4)  
  [二分探索](#binarySearchChapter4)  
  [木探索](#treeExplorationChapter4)  
  [計算量について知る](#knowAboutComputationalComplexityChapter4)  
  [ランダウの記号](#landauSignChapter4)  
  [数当てゲーム](#numberGuessingGameChapter4)  
  [ビット演算を学ぶ](#learnBitwiseOperationsChapter4)  

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
  [ハッシュとは。](#whatIsAHashChapter6)  
  [ハッシュ関数](#hashFunctionChapter6)  
  [ハッシュテーブル](#hashTableChapter6)  
  [衝突を回避する。](#avoidCollisionsChapter6)  
  [暗号学的ハッシュ関数](#cryptographicHashFunctionChapter6)  

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
  [ユークリッドの互除法](#euclideanAlgorithmChapter7)  
  [文字列探索](#stringSearchChapter7)  
  [アルゴリズムを理解するヒント(処理の過程の出力)。](#tipsForUnderstandingTheAlgorithmChapter7)  

<a name="euclideanAlgorithmChapter7"></a>
#### ユークリッドの互除法

<a name="stringSearchChapter7"></a>
#### 文字列探索

<a name="tipsForUnderstandingTheAlgorithmChapter7"></a>
#### アルゴリズムを理解するヒント(処理の過程の出力)。

<a name="visualizeTheAlgorithmOverviewChapter8"></a>
### アルゴリズムを見える化する

* 各項目。  
  [n次関数の曲線を描く。](#drawACurveOfTheNthOrderFunctionChapter8)  
  [フラクタル図形を描く。](#drawAFractalFigureChapter8)  
  [迷路を解く過程を描く。](#drawTheProcessOfSolvingTheMazeChapter8)  
  [アルゴリズムを使い分ける。](#useDifferentAlgorithmsChapter8)  
  [マンデルブロー集合を描こう。](#letsDrawTheMandelbrotSetChapter8)  

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

## Gitのマージルール
個々の言語ごとにブランチをそれぞれ作成する。  
そのブランチで作業する。  
以下、流れとして、、、

* ブランチ作成などの初期作業。  
  1. [x] 対象言語のブランチ作成  
  1. [x] そのブランチで勉強する。  
  1. [x] 切りの良い場所でコミット実施。  

  * 上記作業再開。  
    1. [ ] 前回の勉強を再開する。  
    1. [ ] 1章分の勉強終了後、"study2programming"にマージする。  
    1. [ ] 誤字脱字程度のコミットはスカッシュしたい。  
    1. [ ] "study2programming"をPushする。  
       ※masterにマージすることはない。  
    1. [ ] 章ごとにタグ付けをする(Push実施)。  

study2programmingに取り込むときのマージは、3方向マージ(`--no-ff`)を使う。  
例外作業として、masterに取り込む場合はチェリーピッキングでピンポイントに必要最小限のコミットのみを取り込む(しつこいが、masterに取り込むことはしたくない)。  


以上。
<!-- vim: set ts=4 sts=4 sw=4 tw=0 expandtab: -->
