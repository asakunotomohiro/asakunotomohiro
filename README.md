# 朝来野智博
俺が俺にオンデマンド

## ブランチの利用方法
個人的に勉強したものは、そのままmasterブランチ以外に放り出して終えるつもり。  
もし、masterブランチに取り込む場合、結論だけをチェリーピッキングしてマージしようと思う。  

### "study2programming"ブランチ
このブランチは、基本的にプログラミングの勉強用に使うブランチとする。  
そのため、プログラミングに関した勉強全般に使う。  
それを前提に進めるならば、以下の書籍を使う勉強は別途ブランチを分けておくのが良かった(まぁ今更か)。  

現在想定している勉強方法は、書籍「[Pythonで学ぶアルゴリズムの教科書 一生モノの知識と技術を身につける](https://book.impress.co.jp/books/1120101024)」にて、Python言語を用いてアルゴリズムの勉強を考えている。
しかし、それだけでは面白くないため、そのアルゴリズムを他の言語にも流用するつもりで、他の言語も並行して勉強していくことを考えている。  
それが仇になり、一向にアルゴリズムの勉強に手を出せないでいる。  

<details><summary>アルゴリズムの勉強に使うプログラミング言語一覧</summary>

今回勉強するプログラミング言語が以下になる。  
正確に言うならば、勉強した項目を以下に挙げているだけで、以下のプログラミング言語でアルゴリズムの勉強をするかどうかは別問題。  

* 基礎知識5種類を勉強するプログラミング言語。  
  * [Python](https://www.python.jp)  
    * [x] 変数2021/08/06  
    * [x] 配列2021/08/11  
    * [x] 条件分岐2021/08/12  
    * [x] 繰り返し2021/08/22  
    * [x] 関数2021/08/23  
  * [Go](https://golang.org)  
    * [x] 変数2021/08/07  
    * [ ] 配列  
    * [ ] 条件分岐  
    * [ ] 繰り返し  
    * [ ] 関数  
  * [C](https://clang.llvm.org)  
    * [x] 変数2021/08/11  
    * [x] 配列2021/09/04  
    * [ ] 条件分岐  
    * [ ] 繰り返し  
    * [ ] 関数  
  * [C++](https://cpprefjp.github.io)  
    * [x] 変数2021/08/18  
    * [ ] 配列  
    * [ ] 条件分岐  
    * [ ] 繰り返し  
    * [ ] 関数  
  * [C#](https://docs.microsoft.com/ja-jp/dotnet/csharp/)  
    * [x] 変数2021/08/20  
      コミット失敗？  
      **\*.csproj.user**がコミット対象外になっていた(いいのか？)。  
    * [ ] 配列  
    * [ ] 条件分岐  
    * [ ] 繰り返し  
    * [ ] 関数  
  * [Perl](https://www.perl.org)  
    * [x] 変数2021/08/29  
    * [x] 配列2021/08/31  
    * [x] 条件分岐2021/09/02  
    * [x] 繰り返し2021/09/02  
    * [x] 関数2021/09/02  
  * [Java](https://docs.oracle.com/en/java/)  
    * [x] 変数2021/08/21  
    * [ ] 配列  
    * [ ] 条件分岐  
    * [ ] 繰り返し  
    * [ ] 関数  
  * [vim script](https://vim-jp.org/vimdoc-ja/usr_41.html)  
    * [x] 変数2021/08/14  
    * [x] 配列2021/08/14  
    * [x] 条件分岐2021/08/15  
    * [x] 繰り返し2021/08/15  
    * [x] 関数2021/08/15  

さわり程度の勉強になるため、今後はここから発展させていく。  
要は、今回たまたまアルゴリズムの勉強として上記の項目になっているだけであって、深掘りしていく場合は、この一覧を元につぎはぎしていくということ。  

</details>

<details><summary>気が向き次第勉強に取り組む言語達</summary>

* Godot script  
* VBA  
* PowerShell  
* Kotlin  
* Rust  
* JavaScript  
* V  
* Ruby  
* Elm  
* Erlang  
* Haskell  
* OCaml  

</details>

<details><summary>今のところ勉強予定無し</summary>

* AutoHotKey  
* COBOL  
* D  
* HTML  
* Lisp  
* Lua  
* PHP  
* Pascal  
* Prolog
* React  
* Swift  
* TypeScript  

</details>


ついでに、Gitの勉強にも成れば良いと思っている。  
さらについてに、Markdownの勉強のためにも本ファイルを活用するつもり・・・きっと・・・。  

### 「Pythonで学ぶアルゴリズムの教科書」
簡単なプログラミングに使う基礎知識を統一するところから始める。  

<details><summary>基礎知識5種類一覧</summary>

* 変数  
* 配列  
  ここでのPythoでは、`リスト(list)`を配列と呼んでいる。  
* 条件分岐  
* 繰り返し  
* 関数  

</details>

<details><summary>今回は勉強を見送る一覧</summary>

今回勉強するアルゴリズムに全く無関係なのが理由なので、他で必要になり次第、勉強していく。  

* 基礎知識からの広がり。  
  * [ ] 構造体  
  * [ ] タプル  
  * [ ] null  
  * [ ] さらに範囲を広げる。  
        [ ] コレクション  
        [ ] ジェネリクス  
        [ ] ラムダ式  
            Pythonの配列(リスト)で必要になる。  
        [ ] 並列処理  
        [ ] 並行処理  

* オブジェクト指向を深めるならば、以下の範囲にも手を出す。  
  * [ ] 継承  
  * [ ] カプセル化  
  * [ ] パーシャルクラス  
    これは何？  
  * [ ] ポリモーフィズム  
  * [ ] インタフェイス  
  * [ ] 型スイッチ  

* 例外処理  
  オブジェクト指向言語であれば使える？  
  * [ ] try〜catch  
  * [ ] 例外クラス  
  * [ ] throw文  

* 正規表現  

</details>

以下、具体的なアルゴリズム勉強一覧  
* Chapter 1 プログラミングの基礎知識  
  現時点で完了している(上記の基礎知識5種類として)。  
* [Chapter 2 プログラミングの力を養う](#developProgrammingSkillsOverviewChapter2tablecontents)  
* [Chapter 3 データ構造を学ぶ](#learnDataStructuresOverviewChapter3tablecontents)  
* [Chapter 4 サーチ](#searchOverviewChapter4tablecontents)  
* [Chapter 5 ソート](#sortOverviewChapter5tablecontents)  
* [Chapter 6 ハッシュ](#hashOverviewChapter6tablecontents)  
* [Chapter 7 さまざまなアルゴリズムを学ぶ](#learnVariousAlgorithmsOverviewChapter7tablecontents)  
* [Chapter 8 アルゴリズムを見える化する](#visualizeTheAlgorithmOverviewChapter8tablecontents)  
* Appendix 1 Pythonのインストール方法  
* Appendix 2 テキストエディタと統合開発環境  
* Appendix 3 Pythonの記述ルール  

<a name="developProgrammingSkillsOverviewChapter2tablecontents"></a>
<details><summary>「プログラミングの力を養う(Chapter2)」勉強状況</summary>

* アルゴリズムの勉強に使うプログラミング言語  
  * [ ] [Python](https://www.python.jp)  
    * 平均値を求める。  
    * 1からnまで足し合わせる。  
    * 九九の式を出力する。  
    * 素数を求める。  
    * nの階乗(n!)を求める。  
    * エラトステネスの篩(フルイ)  
    * n進法を理解する。  
  * [ ] [Go](https://golang.org)  
    * 平均値を求める。  
    * 1からnまで足し合わせる。  
    * 九九の式を出力する。  
    * 素数を求める。  
    * nの階乗(n!)を求める。  
    * エラトステネスの篩(フルイ)  
    * n進法を理解する。  
  * [ ] [C](https://clang.llvm.org)  
    * 平均値を求める。  
    * 1からnまで足し合わせる。  
    * 九九の式を出力する。  
    * 素数を求める。  
    * nの階乗(n!)を求める。  
    * エラトステネスの篩(フルイ)  
    * n進法を理解する。  
  * [ ] [C++](https://cpprefjp.github.io)  
    * 平均値を求める。  
    * 1からnまで足し合わせる。  
    * 九九の式を出力する。  
    * 素数を求める。  
    * nの階乗(n!)を求める。  
    * エラトステネスの篩(フルイ)  
    * n進法を理解する。  
  * [ ] [C#](https://docs.microsoft.com/ja-jp/dotnet/csharp/)  
    * 平均値を求める。  
    * 1からnまで足し合わせる。  
    * 九九の式を出力する。  
    * 素数を求める。  
    * nの階乗(n!)を求める。  
    * エラトステネスの篩(フルイ)  
    * n進法を理解する。  
  * [ ] [Perl](https://www.perl.org)  
    * 平均値を求める。  
    * 1からnまで足し合わせる。  
    * 九九の式を出力する。  
    * 素数を求める。  
    * nの階乗(n!)を求める。  
    * エラトステネスの篩(フルイ)  
    * n進法を理解する。  
  * [ ] [Java](https://docs.oracle.com/en/java/)  
    * 平均値を求める。  
    * 1からnまで足し合わせる。  
    * 九九の式を出力する。  
    * 素数を求める。  
    * nの階乗(n!)を求める。  
    * エラトステネスの篩(フルイ)  
    * n進法を理解する。  

</details>

<a name="learnDataStructuresOverviewChapter3tablecontents"></a>
<details><summary>「データ構造を学ぶ(Chapter3)」勉強状況</summary>

* アルゴリズムの勉強に使うプログラミング言語  
  * [ ] [Python](https://www.python.jp)  
    * スタック  
    * キュー  
    * リスト  
    * 木  
    * グラフ  
    * データを保存する(Pythonのファイル処理)  
  * [ ] [Go](https://golang.org)  
    * スタック  
    * キュー  
    * リスト  
    * 木  
    * グラフ  
    * データを保存する(Pythonのファイル処理をGoに置き換える)  
  * [ ] [C](https://clang.llvm.org)  
    * スタック  
    * キュー  
    * リスト  
    * 木  
    * グラフ  
    * データを保存する(Pythonのファイル処理をCに置き換える)  
  * [ ] [C++](https://cpprefjp.github.io)  
    * スタック  
    * キュー  
    * リスト  
    * 木  
    * グラフ  
    * データを保存する(Pythonのファイル処理をC++に置き換える)  
  * [ ] [C#](https://docs.microsoft.com/ja-jp/dotnet/csharp/)  
    * スタック  
    * キュー  
    * リスト  
    * 木  
    * グラフ  
    * データを保存する(Pythonのファイル処理をC#に置き換える)  
  * [ ] [Perl](https://www.perl.org)  
    * スタック  
    * キュー  
    * リスト  
    * 木  
    * グラフ  
    * データを保存する(Pythonのファイル処理をPerlに置き換える)  
  * [ ] [Java](https://docs.oracle.com/en/java/)  
    * スタック  
    * キュー  
    * リスト  
    * 木  
    * グラフ  
    * データを保存する(Pythonのファイル処理をJavaに置き換える)  

</details>

<a name="searchOverviewChapter4tablecontents"></a>
<details><summary>「サーチ(Chapter4)」勉強状況</summary>

* アルゴリズムの勉強に使うプログラミング言語  
  * [ ] [Python](https://www.python.jp)  
    * 線形探索  
    * 二分探索  
    * 木探索  
    * 計算量について知る  
    * ランダウの記号  
    * 数当てゲーム  
    * ビット演算を学ぶ  
  * [ ] [Go](https://golang.org)  
    * 線形探索  
    * 二分探索  
    * 木探索  
    * 計算量について知る  
    * ランダウの記号  
    * 数当てゲーム  
    * ビット演算を学ぶ  
  * [ ] [C](https://clang.llvm.org)  
    * 線形探索  
    * 二分探索  
    * 木探索  
    * 計算量について知る  
    * ランダウの記号  
    * 数当てゲーム  
    * ビット演算を学ぶ  
  * [ ] [C++](https://cpprefjp.github.io)  
    * 線形探索  
    * 二分探索  
    * 木探索  
    * 計算量について知る  
    * ランダウの記号  
    * 数当てゲーム  
    * ビット演算を学ぶ  
  * [ ] [C#](https://docs.microsoft.com/ja-jp/dotnet/csharp/)  
    * 線形探索  
    * 二分探索  
    * 木探索  
    * 計算量について知る  
    * ランダウの記号  
    * 数当てゲーム  
    * ビット演算を学ぶ  
  * [ ] [Perl](https://www.perl.org)  
    * 線形探索  
    * 二分探索  
    * 木探索  
    * 計算量について知る  
    * ランダウの記号  
    * 数当てゲーム  
    * ビット演算を学ぶ  
  * [ ] [Java](https://docs.oracle.com/en/java/)  
    * 線形探索  
    * 二分探索  
    * 木探索  
    * 計算量について知る  
    * ランダウの記号  
    * 数当てゲーム  
    * ビット演算を学ぶ  

</details>

<a name="sortOverviewChapter5tablecontents"></a>
<details><summary>「ソート(Chapter5)」勉強状況</summary>

* アルゴリズムの勉強に使うプログラミング言語  
  * [ ] [Python](https://www.python.jp)  
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
  * [ ] [Go](https://golang.org)  
    * 選択ソート  
    * バブルソート  
    * 挿入ソート  
    * クイックソート  
    * マージソート  
    * ヒープソート  
    * クイックソートの再起の過程を出力する。  
    * 再帰関数を用いたマージソート。  
    * Pythonのソート命令とheapqモジュールの使い方。  
      Go言語に置き換え可能か調べるとこからが作業開始になる。  
    * ソートの計算量と計算時間。  
  * [ ] [C](https://clang.llvm.org)  
    * 選択ソート  
    * バブルソート  
    * 挿入ソート  
    * クイックソート  
    * マージソート  
    * ヒープソート  
    * クイックソートの再起の過程を出力する。  
    * 再帰関数を用いたマージソート。  
    * Pythonのソート命令とheapqモジュールの使い方。  
      C言語に置き換え可能か調べるとこからが作業開始になる。  
    * ソートの計算量と計算時間。  
  * [ ] [C++](https://cpprefjp.github.io)  
    * 選択ソート  
    * バブルソート  
    * 挿入ソート  
    * クイックソート  
    * マージソート  
    * ヒープソート  
    * クイックソートの再起の過程を出力する。  
    * 再帰関数を用いたマージソート。  
    * Pythonのソート命令とheapqモジュールの使い方。  
      C++言語に置き換え可能か調べるとこからが作業開始になる。  
    * ソートの計算量と計算時間。  
  * [ ] [C#](https://docs.microsoft.com/ja-jp/dotnet/csharp/)  
    * 選択ソート  
    * バブルソート  
    * 挿入ソート  
    * クイックソート  
    * マージソート  
    * ヒープソート  
    * クイックソートの再起の過程を出力する。  
    * 再帰関数を用いたマージソート。  
    * Pythonのソート命令とheapqモジュールの使い方。  
      C#言語に置き換え可能か調べるとこからが作業開始になる。  
    * ソートの計算量と計算時間。  
  * [ ] [Perl](https://www.perl.org)  
    * 選択ソート  
    * バブルソート  
    * 挿入ソート  
    * クイックソート  
    * マージソート  
    * ヒープソート  
    * クイックソートの再起の過程を出力する。  
    * 再帰関数を用いたマージソート。  
    * Pythonのソート命令とheapqモジュールの使い方。  
      Perl言語に置き換え可能か調べるとこからが作業開始になる。  
    * ソートの計算量と計算時間。  
  * [ ] [Java](https://docs.oracle.com/en/java/)  
    * 選択ソート  
    * バブルソート  
    * 挿入ソート  
    * クイックソート  
    * マージソート  
    * ヒープソート  
    * クイックソートの再起の過程を出力する。  
    * 再帰関数を用いたマージソート。  
    * Pythonのソート命令とheapqモジュールの使い方。  
      Java言語に置き換え可能か調べるとこからが作業開始になる。  
    * ソートの計算量と計算時間。  

</details>

<a name="hashOverviewChapter6tablecontents"></a>
<details><summary>「ハッシュ(Chapter6)」勉強状況</summary>

* アルゴリズムの勉強に使うプログラミング言語  
  * [ ] [Python](https://www.python.jp)  
    * ハッシュとは。  
    * ハッシュ関数  
    * ハッシュテーブル  
    * 衝突を回避する。  
    * 暗号学的ハッシュ関数  
  * [ ] [Go](https://golang.org)  
    * ハッシュとは。  
    * ハッシュ関数  
    * ハッシュテーブル  
    * 衝突を回避する。  
    * 暗号学的ハッシュ関数  
  * [ ] [C](https://clang.llvm.org)  
    * ハッシュとは。  
    * ハッシュ関数  
    * ハッシュテーブル  
    * 衝突を回避する。  
    * 暗号学的ハッシュ関数  
  * [ ] [C++](https://cpprefjp.github.io)  
    * ハッシュとは。  
    * ハッシュ関数  
    * ハッシュテーブル  
    * 衝突を回避する。  
    * 暗号学的ハッシュ関数  
  * [ ] [C#](https://docs.microsoft.com/ja-jp/dotnet/csharp/)  
    * ハッシュとは。  
    * ハッシュ関数  
    * ハッシュテーブル  
    * 衝突を回避する。  
    * 暗号学的ハッシュ関数  
  * [ ] [Perl](https://www.perl.org)  
    * ハッシュとは。  
    * ハッシュ関数  
    * ハッシュテーブル  
    * 衝突を回避する。  
    * 暗号学的ハッシュ関数  
  * [ ] [Java](https://docs.oracle.com/en/java/)  
    * ハッシュとは。  
    * ハッシュ関数  
    * ハッシュテーブル  
    * 衝突を回避する。  
    * 暗号学的ハッシュ関数  

</details>

<a name="learnVariousAlgorithmsOverviewChapter7tablecontents"></a>
<details><summary>「さまざまなアルゴリズムを学ぶ(Chapter7)」勉強状況</summary>

* アルゴリズムの勉強に使うプログラミング言語  
  * [ ] [Python](https://www.python.jp)  
    * ユークリッドの互除法  
    * 文字列探索  
    * アルゴリズムを理解するヒント(処理の過程の出力)。  
  * [ ] [Go](https://golang.org)  
    * ユークリッドの互除法  
    * 文字列探索  
    * アルゴリズムを理解するヒント(処理の過程の出力)。  
  * [ ] [C](https://clang.llvm.org)  
    * ユークリッドの互除法  
    * 文字列探索  
    * アルゴリズムを理解するヒント(処理の過程の出力)。  
  * [ ] [C++](https://cpprefjp.github.io)  
    * ユークリッドの互除法  
    * 文字列探索  
    * アルゴリズムを理解するヒント(処理の過程の出力)。  
  * [ ] [C#](https://docs.microsoft.com/ja-jp/dotnet/csharp/)  
    * ユークリッドの互除法  
    * 文字列探索  
    * アルゴリズムを理解するヒント(処理の過程の出力)。  
  * [ ] [Perl](https://www.perl.org)  
    * ユークリッドの互除法  
    * 文字列探索  
    * アルゴリズムを理解するヒント(処理の過程の出力)。  
  * [ ] [Java](https://docs.oracle.com/en/java/)  
    * ユークリッドの互除法  
    * 文字列探索  
    * アルゴリズムを理解するヒント(処理の過程の出力)。  

</details>

<a name="visualizeTheAlgorithmOverviewChapter8tablecontents"></a>
<details><summary>「アルゴリズムを見える化する(Chapter8)」勉強状況</summary>

* アルゴリズムの勉強に使うプログラミング言語  
  * [ ] [Python](https://www.python.jp)  
    * n次関数の曲線を描く。  
    * フラクタル図形を描く。  
    * 迷路を解く過程を描く。  
    * アルゴリズムを使い分ける。  
    * マンデルブロー集合を描こう。  
  * [ ] [Go](https://golang.org)  
    * n次関数の曲線を描く。  
    * フラクタル図形を描く。  
    * 迷路を解く過程を描く。  
    * アルゴリズムを使い分ける。  
    * マンデルブロー集合を描こう。  
  * [ ] [C](https://clang.llvm.org)  
    * n次関数の曲線を描く。  
    * フラクタル図形を描く。  
    * 迷路を解く過程を描く。  
    * アルゴリズムを使い分ける。  
    * マンデルブロー集合を描こう。  
  * [ ] [C++](https://cpprefjp.github.io)  
    * n次関数の曲線を描く。  
    * フラクタル図形を描く。  
    * 迷路を解く過程を描く。  
    * アルゴリズムを使い分ける。  
    * マンデルブロー集合を描こう。  
  * [ ] [C#](https://docs.microsoft.com/ja-jp/dotnet/csharp/)  
    * n次関数の曲線を描く。  
    * フラクタル図形を描く。  
    * 迷路を解く過程を描く。  
    * アルゴリズムを使い分ける。  
    * マンデルブロー集合を描こう。  
  * [ ] [Perl](https://www.perl.org)  
    * n次関数の曲線を描く。  
    * フラクタル図形を描く。  
    * 迷路を解く過程を描く。  
    * アルゴリズムを使い分ける。  
    * マンデルブロー集合を描こう。  
  * [ ] [Java](https://docs.oracle.com/en/java/)  
    * n次関数の曲線を描く。  
    * フラクタル図形を描く。  
    * 迷路を解く過程を描く。  
    * アルゴリズムを使い分ける。  
    * マンデルブロー集合を描こう。  

</details>

<details><summary>具体的な基礎知識を勉強する準備</summary>

#### 具体的な基礎知識5種類の手順

[ ] 手順1. 勉強用のブランチに移動する。  
[ ] 手順2. ルートディレクトリのひな形ディレクトリをコピーしてくる。  
[ ] 手順3. コピーしてきたディレクトリ名を"基礎知識用の勉強"に変更する。  
[ ] 手順4. その(ディレクトリ配下にある)"ひな形/README.md"を参考に作業を進める。  
[x] 手順4-1. これ以降は、そのファイルを元に作業を進める。
[ ] 手順5. 手順4での「5種類の基礎知識」が終わり次第、このディレクトリにある当ファイルの作業を再開する。  
[ ] 手順6. 5種類の基礎知識終了にて、"study2programming"ブランチにマージする。  

以下、ひな形ディレクトリのリードミーファイルでの記載内容と同じ。  
勉強環境のコンパイルバージョン：  
プログラムファイルの拡張子：  
実行方式：  
標準の文字コード(プログラムファイル)：  
文字区切り(行末記号)：  
インデント：  
標準の出力関数：  
コメント方法：  

</details>

#### 開発環境
できる限り`MacVim`を使うつもりだが、基本は`Visual Studio Code(VSCode)`だろう。  
理由は、vim環境で **C#** をコンパイルできなかった(Macだからという理由ではないはず)。  
そのため、`Visual Studio 2019 for Mac`([VS2019](https://visualstudio.microsoft.com/ja/downloads/))を使う。  
今回の勉強では、[VSCode](https://code.visualstudio.com)を使いたかったが、環境構築できず、VS2019を使う羽目になった。  


#### Gitのマージルール
個々の言語ごとにブランチをそれぞれ作成する。  
そのブランチで作業する。  
そのブランチ用にGit操作のメモを作成するため、そちらを参照すること。  

※study2programmingに取り込むときのマージは、3方向マージ(`--no-ff`)を使う。  
例外作業として、masterに取り込む場合はチェリーピッキングでピンポイントに必要最小限のコミットのみを取り込む(しつこいが、masterに取り込むことはしたくない)。  

以上。
