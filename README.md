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

* アルゴリズムの勉強に使うプログラミング言語  
  * [Python](https://www.python.jp)  
    * [x] 変数2021/08/06  
    * [ ] 配列  
    * [ ] 条件分岐  
    * [ ] 繰り返し  
    * [ ] 関数  
  * [Go](https://golang.org)  
    * [ ] 変数  
    * [ ] 配列  
    * [ ] 条件分岐  
    * [ ] 繰り返し  
    * [ ] 関数  
  * [C](https://clang.llvm.org)  
    * [ ] 変数  
    * [ ] 配列  
    * [ ] 条件分岐  
    * [ ] 繰り返し  
    * [ ] 関数  
  * [C++](https://cpprefjp.github.io)  
    * [ ] 変数  
    * [ ] 配列  
    * [ ] 条件分岐  
    * [ ] 繰り返し  
    * [ ] 関数  
  * [C#](https://docs.microsoft.com/ja-jp/dotnet/csharp/)  
    * [ ] 変数  
    * [ ] 配列  
    * [ ] 条件分岐  
    * [ ] 繰り返し  
    * [ ] 関数  
  * [Perl](https://www.perl.org)  
    * [ ] 変数  
    * [ ] 配列  
    * [ ] 条件分岐  
    * [ ] 繰り返し  
    * [ ] 関数  
  * [Java](https://docs.oracle.com/en/java/)  
    * [ ] 変数  
    * [ ] 配列  
    * [ ] 条件分岐  
    * [ ] 繰り返し  
    * [ ] 関数  

<details><summary>気が向き次第勉強に取り組む言語達</summary>

* Godot  
* vim script  
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
* Swift  
* TypeScript  

</details>


ついでに、Gitの勉強にも成れば良いと思っている。  
さらについてに、Markdownの勉強のためにも本ファイルを活用するつもり・・・きっと・・・。  

#### Pythonで学ぶアルゴリズムの教科書
簡単なプログラミングに使う基礎知識を統一する。  

* 基礎知識5種類  
  * [ ] 変数  
  * [ ] 配列  
        Pythoでは、`リスト(list)`という。  
  * [ ] 条件分岐  
  * [ ] 繰り返し  
  * [ ] 関数  

<details><summary>機会があれば勉強したい</summary>

* 基礎知識からの広がり。  
  * [ ] 構造体  
  * [ ] タプル  
  * [ ] null  
  * [ ] さらに範囲を広げる。  
    * [ ] コレクション  
    * [ ] ジェネリクス  
    * [ ] ラムダ式  
    * [ ] 並列処理  
    * [ ] 並行処理  

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

勉強後、言葉の意味を理解することができたならば、上記を添削していく。  

##### 具体的な基礎知識
何はともあれ、まずは、"Hello World"を表示するプログラムを作る。  
そのため、以下の手順で勉強を進めることにする。  

[ ] 手順1. 勉強用のブランチに移動する。  
[ ] 手順2. ルートディレクトリのひな形ディレクトリをコピーしてくる。  
[ ] 手順3. コピーしてきたディレクトリ名を"基礎知識用の勉強"に変更する。  
[ ] 手順3-1. `helloWorld.[言語用の拡張子]`のファイルを作り、おなじみ"Hello World."プログラムを作る。  
[ ] 手順3-2. main関数不要であれば、"**実行済み**"ディレクトリ不要になるはず、削除すること。  
[ ] 手順3-3. コミットする。  
[ ] 手順4. 各ディレクトリで、5種類(変数・配列・条件分岐・繰り返し・関数)の"絶対的に勉強する一覧"を勉強する。  
[ ] 手順4-1. 箇条書きごとに勉強を進める。  
[ ] 手順4-2. 箇条書きごとに勉強を終えることで、コミット実施する。  
[ ] 手順4-3. 次の箇条書きに移り、勉強を継続(再開)する。  
[x] 手順4-X. 変数などの勉強で箇条書きごとにコミットは辛いよね。  
[ ] 手順5. 1つのプログラミング言語で、手順4の勉強1種類を終えた時に、次のプログラミング言語に移る。  
           (細かく分けることでやる気が維持される・・・はず)  
[ ] 手順6. 上記、5種類の基礎知識を終わるまで繰り返す。  
[ ] 手順7. 5種類の基礎知識終了にて、"study2programming"ブランチにマージする。  

勉強環境のコンパイルバージョン：  
プログラムファイルの拡張子：  
　　※Windowsに併せるならば拡張子は必須かな。  
標準の文字コード(プログラムファイル)：  
　　例）UTF-8(今時はこれに統一されている？)。  
文字区切り(行末記号)：  
　　例）セミコロン(基本はこれ)・Pythonは改行  
インデント：  
　　例）フリーフォーマット(基本はこれ？C言語など)・Pythonは絶対的に半角スペース4つなのかな。Go言語も重要。  
標準の出力関数：  
　　例）`print`・`printf`・`say`・`Console.WriteLine`など。  


###### 変数  
値の格納方法と言える。  
複雑な説明はしない。  
そのため、簡単に話を終えるつもりだが、それ故に、他の話題を取り込むことにして、話題を広げる。  

* 絶対的に勉強する一覧  
  * [ ] 1種類の入れ物  


思ったより、他の話題に話を広げるのは辛い。  
* 他の話題例  
  * [ ] 定数  
  * [ ] データ型  
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

<details><summary>何かあれば追加で勉強する一覧</summary>

* データ型  
  * [ ] 複素数型  

* 演算子(条件式の説明にまとめる？)  
   * [ ] 代入演算子  
   * [ ] 比較演算子  
   * [ ] 論理演算子  
   * [ ] ビット演算子  

* ちょっと高度な話題  
  * [ ] ポインタ  

* 関数を変数に代入  
* 関数を引数に使う  

</details>

###### 配列  
変数を連ならせる格納方法。  

* 絶対的に勉強する一覧  
  * [ ] 一次元配列  
  * [ ] 多次元配列  
     * [ ] 二次元配列  
     * [ ] 三次元配列  
     * ※複雑さに応じて対応する。  

<details><summary>何かあれば追加で勉強する一覧</summary>

* 配列の応用  
  * [ ] 配列の複製  
  * [ ] 配列からスライス作成  

* 構造体  
  * [ ] 構造体の複製  
  * [ ] 構造体からのスライス作成  
  * [ ] 共用体  
  * [ ] 列挙体  

* コレクション  
   * [ ] List  
         Pythonでは配列扱いだからな・・・(驚いたよ)。  
   * [ ] Set  
   * [ ] Map  
   * [ ] Queue  

</details>

###### 条件分岐  

* 絶対的に勉強する一覧  
  * [ ] 単純分岐-"もし"1つ。  
    基本構造例：if  
  * [ ] 多岐分岐-"もし"2つ以上。  
    基本構造例：if〜else if  
  * [ ] 多岐分岐-条件にて複数から選ぶ。  
    基本構造例：switch  

<details><summary>余裕があれば勉強する</summary>

* 関係演算子  
  * [ ] 等しい  
  * [ ] 等しくない  
  * [ ] より大きい  
  * [ ] より小さい  
  * [ ] 以上  
  * [ ] 以下  
  * [ ] 三項演算子  

* 論理演算子(ドモルガンの法則)  
  * [ ] 論理積  
  * [ ] 論理和  
  * [ ] 排他的論理和  
  * [ ] 否定  

* 演算子の優先順位  

* 他の話題例  
  * [ ] 変数の比較  
  * [ ] 配列の比較  

</details>

<details><summary>何かあれば追加で勉強する一覧</summary>

* ジャンプ  
  * [ ] goto文  

</details>


###### 繰り返し  

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

<details><summary>何かあれば追加で勉強する一覧</summary>
</details>


###### 関数  

* 絶対的に勉強する一覧  
  * [ ] 使い回せるようにまとめること。  
    * [ ] 引数  
    * [ ] 戻り値  

<details><summary>何かあれば追加で勉強する一覧</summary>

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

#### 開発環境
できる限り`MacVim`を使うつもりだが、基本は`Visual Studio Code(VSCode)`だろう。  
理由は、vim環境で **C#** をコンパイルできなかった(Macだからという理由ではないはず)。  
そのため、[VSCode](https://code.visualstudio.com)を使うだろう。  
規模が大きくなれば`Visual Studio 2019 for Mac`([VS2019](https://visualstudio.microsoft.com/ja/downloads/))などを使う？  

#### Gitのマージルール
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
