# Rust言語
ここは、プログラミング言語のRust言語を勉強するブランチになる。  


<a name="algorithmHowToUseTheBranch"></a>
## ブランチの利用方法
「[Pythonで学ぶアルゴリズムの教科書](https://book.impress.co.jp/books/1120101024)」を勉強する。  
その次の応用として、アルゴリズムの部分をRust言語に当てはめながらRustならではのアルゴリズムを身につけていく・・・つもり。  
そのため、Rust言語への反映はPython言語用アルゴリズムの勉強より遅れる(当たり前か・・・重複表現？)。  


<a name="algorithmHowToStudy"></a>
## 勉強方法
以下の書籍を元にして勉強を進めていく。  
[プログラミング言語Rust入門](https://project.nikkeibp.co.jp/bnt/atcl/20/P96850/)  

* 参考サイト  
  * [Rust ツアー](https://tourofrust.com/00_ja.html)  
    公式(?)チュートリアル。  
  * [docs.microsoft.com](https://docs.microsoft.com/ja-JP/learn/paths/rust-first-steps/)  
  * [The Rust Programming Language 日本語版](https://doc.rust-jp.rs/book-ja/index.html)  
  * 上記書籍で、この電子本を紹介しており、最初に読む本として最適とのこと。  
  * [Rust言語のサンプル集](https://doc.rust-jp.rs/rust-by-example-ja/index.html)  


<a name="algorithmDevelopmentEnvironment"></a>
## 開発環境
できる限り`MacVim`を使うつもりだが、環境構築から始める言語環境のため、`Visual Studio Code(VSCode)`に逃げるかもしれない。  
プロジェクトを作ることが義務づけられているようで、結構辛いぞ。  

vimが原因か分からないが、デフォルト(?)の状態で、インデントが半角スペースになっている。  
そんな制約あるのか!?  

<a name="algorithmCheckTheStatusOfTheActualWorkingEnvironment"></a>
<details><summary>実際に作業する環境の状況確認</summary>

* 勉強環境。  
  * 勉強環境のコンパイルバージョン：`cargo 1.56.0`  
    今回のチャプター2で利用バージョンを上げている。  
```terminal
$ source $HOME/.cargo/env	←☆Path通し。
$ rustc -V	←☆コンパイラコマンド。
rustc 1.56.0 (09c42c458 2021-10-18)
$ cargo -V	←☆ビルドシステム(普段はこちらを使うようだ)。
cargo 1.56.0 (4ed5d137b 2021-10-04)
$
```

  * プログラムファイルの拡張子：`*.rs`  
  * 実行方式：コンパイラ方式  
  * 標準の文字コード(プログラムファイル)：UTF-8  
    内部のコードにUTF-8を使っているため、ファイルもUTF-8でいいだろう。  
    文字列の扱いは、Unicodeを使っている。  
  * 文字コードの扱い：
　　例）UTF-8・Unicode  
  * 文字区切り(行末記号)：セミコロン`;`  
　　※セミコロンを付けない場合、`return`用として認識される。  
  * インデント：フリーフォーマット  
  * 標準の出力関数：`print!`・`println!`・`println(この形式は他に作業が必要？)`  
  * 標準エラー出力関数：`eprintln!`・`eprint!`  
  * 標準の[フォーマット関数](https://doc.rust-jp.rs/rust-by-example-ja/hello/print.html)：`format!`(文字列(String)型に書き込む)  
　　※必須記入項目ではなく、勉強途中での記載でも可とする。  
  * 単数[コメント](https://doc.rust-jp.rs/rust-by-example-ja/hello/comment.html)方法：`//`  
  * 複数行コメント方法：`/*〜*/`  
  * 文書変換用コメント方法：`///`・`//!`  
  * デバッガ機能(デバッグ技法)：  
　　例）`gdb`・`perldebug`・`pdb`など。  

</details>


<a name="algorithmHelloWorld"></a>
<details><summary>ハローワールドプログラム</summary>

<details><summary>ワーニングありハローワールド</summary>

以下、プログラム。
```Rust:main.rs
fn main() {
    println!("Hello, world!");
}
```

</details>


<a name="algorithmHelloWorldCreateProject"></a>
#### プロジェクト作成
様式：
`cargo new [プロジェクト名]`  
コマンド例）
`cargo new hello_world`  

※制約として、日本語名や単語続きなどがあるため、作成時に出力されるワーニングをよく確認すること。  
基礎知識5種類の勉強では、そのワーニングを無視していたが、今後もプロジェクト名はわかりやすい名前を優先して付けるだろう。  

以下、プロジェクト作成の実行。
```terminal
$ cargo new hello_world	←☆プロジェクト作成実施。
     Created binary (application) `hello_world` package
$ ll	←☆実行ディレクトリに指定したプロジェクト名のディレクトリが生成される。
total 160
drwxr-xr-x   5 asakunotomohiro  staff    160 10 24 17:43 hello_world/	←☆コレ。
-rw-r--r--   1 asakunotomohiro  staff  67300 10 24 17:41 README.md
drwxr-xr-x   7 asakunotomohiro  staff    224 10 24 16:54 基礎知識用の勉強/
-rw-r--r--   1 asakunotomohiro  staff   8297 10 24 16:54 インストールメモ.md
$ ll hello_world/	←☆中身。
total 8
drwxr-xr-x  3 asakunotomohiro  staff   96 10 24 17:43 src/
-rw-r--r--  1 asakunotomohiro  staff  180 10 24 17:42 Cargo.toml	←☆パッケージのバージョンや読み込むライブラリ設定のファイル。
$ ll hello_world/src/
total 8
-rw-r--r--@ 1 asakunotomohiro  staff  162 10 24 17:43 main.rs	←☆これがソースファイルらしい。
$
```
※書籍通りに行けば、ソースファイル名は、**main.fs**になるはずだが、私の環境では**main.rs**になっている。  
違いは分からない。  
そんなことより、プロジェクト作成名は、命名規則があるようで、単語ごとに`_`で区切る必要があるようだ。
そして、大文字を付けることもだめらしい。  

以下、プロジェクト内容としての**Cargo.toml**ファイルの内容。
```terminal
$ cat hello_world/Cargo.toml
[package]
name = "hello_world"
version = "0.1.0"
edition = "2021"

# See more keys and their definitions at https://doc.rust-lang.org/cargo/reference/manifest.html

[dependencies]
$
```

以下、プロジェクト内容としての**main.rs**ファイルの内容。
```terminal
$ cat hello_world/src/main.rs
fn main() {
    println!("Hello, world!");
	// 出力結果：
//				Hello, world!
}

/*	vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=rust noexpandtab: */
$
```
`println`はマクロだとさ。  
※ファイル内容は書き換え済み。  

以下、ビルド実施。
```terminal
$ cd hello_world/	←☆プロジェクトに移動。
$ ll	←☆ビルド前状況。
total 8
drwxr-xr-x  3 asakunotomohiro  staff   96 10 24 17:43 src/
-rw-r--r--  1 asakunotomohiro  staff  180 10 24 17:42 Cargo.toml
$ cargo build	←☆ビルド実施(2種類のワーニングは何？)。
   Compiling hello_world v0.1.0 (/Users/asakunotomohiro/study勉強用Githubリポジトリ/Rust言語/hello_world)
    Finished dev [unoptimized + debuginfo] target(s) in 2.24s
$ ll	←☆ビルド後状況。
total 16
drwxr-xr-x@ 5 asakunotomohiro  staff  160 10 24 17:49 target/
-rw-r--r--  1 asakunotomohiro  staff  155 10 24 17:49 Cargo.lock
drwxr-xr-x  3 asakunotomohiro  staff   96 10 24 17:43 src/
-rw-r--r--  1 asakunotomohiro  staff  180 10 24 17:42 Cargo.toml
$ ll src/	←☆ソースファイルディレクトリ状況(変化なし)。
total 8
-rw-r--r--@ 1 asakunotomohiro  staff  162 10 24 17:43 main.rs
$ ll target/	←☆ターゲットディレクトリ状況。
total 8
drwxr-xr-x  10 asakunotomohiro  staff  320 10 24 17:49 debug/
-rw-r--r--   1 asakunotomohiro  staff  177 10 24 17:49 CACHEDIR.TAG
$ ll target/debug/	←☆デバッグディレクトリ状況(実行ファイルが作られている)。
total 864
-rw-r--r--   1 asakunotomohiro  staff     358 10 24 17:49 hello_world.d
drwxr-xr-x  14 asakunotomohiro  staff     448 10 24 17:49 deps/
-rwxr-xr-x   2 asakunotomohiro  staff  436124 10 24 17:49 hello_world*
drwxr-xr-x   3 asakunotomohiro  staff      96 10 24 17:49 incremental/
drwxr-xr-x   2 asakunotomohiro  staff      64 10 24 17:49 build/
drwxr-xr-x   2 asakunotomohiro  staff      64 10 24 17:49 examples/
$
```

以下、コンパイル済み実行ファイルの実行。
```terminal
$ pwd
/Users/asakunotomohiro/study勉強用Githubリポジトリ/Rust言語/hello_world
$ cargo run	←☆動かす(2種類のワーニングは何？)。
    Finished dev [unoptimized + debuginfo] target(s) in 0.01s
     Running `target/debug/hello_world`
Hello, world!	←☆実行結果後の出力内容。
$ echo $?
0
$
```

もしくは、以下、実行ファイルを直接叩く。
```terminal
$ pwd
/Users/asakunotomohiro/study勉強用Githubリポジトリ/Rust言語/hello_world
$ ll target/debug/
total 864
-rw-r--r--   1 asakunotomohiro  staff     358 10 24 17:49 hello_world.d
drwxr-xr-x  14 asakunotomohiro  staff     448 10 24 17:49 deps/
-rwxr-xr-x   2 asakunotomohiro  staff  436124 10 24 17:49 hello_world*	←☆これ。
drwxr-xr-x   3 asakunotomohiro  staff      96 10 24 17:49 incremental/
drwxr-xr-x   2 asakunotomohiro  staff      64 10 24 17:49 build/
drwxr-xr-x   2 asakunotomohiro  staff      64 10 24 17:49 examples/
$ ./target/debug/hello_world	←☆直接実行。
Hello, world!
$ echo $?
0
$
```

<a name="algorithmHelloWorldrsCompile"></a>
#### cargoではなく、個別にコンパイル実施。
1ファイルのみをコンパイルする。  

以下、実施。
```terminal
$ pwd
/Users/asakunotomohiro/study勉強用Githubリポジトリ/Rust言語/hello_world
$ ll
total 16
drwxr-xr-x@ 5 asakunotomohiro  staff  160 10 24 17:49 target/
-rw-r--r--  1 asakunotomohiro  staff  155 10 24 17:49 Cargo.lock
drwxr-xr-x  3 asakunotomohiro  staff   96 10 24 17:43 src/	←☆ここに移動。
-rw-r--r--  1 asakunotomohiro  staff  180 10 24 17:42 Cargo.toml
$ cd src/
$ ll
total 8
-rw-r--r--@ 1 asakunotomohiro  staff  162 10 24 17:43 main.rs
$ rust
rust-gdb   rust-lldb  rustc      rustdoc    rustfmt    rustup
$ rustc main.rs	←☆コンパイル実施。
$ ll
total 848
-rwxr-xr-x  1 asakunotomohiro  staff  429972 10 24 17:57 main*	←☆実行ファイル生成。
-rw-r--r--@ 1 asakunotomohiro  staff     162 10 24 17:43 main.rs
$ ./main	←☆実行ファイル実行。
Hello, world!
$
```

<a name="algorithmHelloWorldDeleteProject"></a>
#### 実行ファイル削除
生成した実行ファイルを消す。  

以下、実施。
```terminal
$ pwd
/Users/asakunotomohiro/study勉強用Githubリポジトリ/Rust言語/hello_world
$ ll
total 16
drwxr-xr-x  4 asakunotomohiro  staff  128 10 24 17:57 src/
drwxr-xr-x@ 5 asakunotomohiro  staff  160 10 24 17:49 target/	←☆クリーンコマンドで、これが消える。
-rw-r--r--  1 asakunotomohiro  staff  155 10 24 17:49 Cargo.lock
-rw-r--r--  1 asakunotomohiro  staff  180 10 24 17:42 Cargo.toml
$ cargo clean	←☆削除実施。
$ ll	←☆消えているのが確認できる。
total 16
drwxr-xr-x  4 asakunotomohiro  staff  128 10 24 17:57 src/
-rw-r--r--  1 asakunotomohiro  staff  155 10 24 17:49 Cargo.lock	←☆そもそもこれも無かったはずなのに、これは消えない(消したいが、どうやって消す？)。
-rw-r--r--  1 asakunotomohiro  staff  180 10 24 17:42 Cargo.toml
$ ll src/
total 848
-rwxr-xr-x  1 asakunotomohiro  staff  429972 10 24 17:57 main*	←☆これも一緒に消えて欲しかった。
-rw-r--r--@ 1 asakunotomohiro  staff     162 10 24 17:43 main.rs
$
```


<a name="algorithmHelloWorldlockfile"></a>
#### lockファイルの意味
これ何？  
プロジェクト生成で作成されないのに、残ったままになるため、Gitで登録ファイルとして認識されるのだが、必要なのか？  
絶対にいらないファイルだよね。  


```terminal
$ git status
On branch rustLang
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

    modified:   基礎知識用の勉強/README.md

Untracked files:
  (use "git add <file>..." to include in what will be committed)

    HelloWorld実行方法までの流れ.md
    helloWorld/Cargo.lock
    helloWorld/Cargo.toml
    helloWorld/src/main.rs

no changes added to commit (use "git add" and/or "git commit -a")
$
```


<a name="algorithmHelloWorldProjectWarning"></a>
#### 過去にワーニング出現
過去に作成したカーゴプロジェクトでワーニングが出た。  
そのワーニングは、プロジェクト名に大文字及び単語区切りとして`_`を使っていなかったのが原因だった。  
今回作り直したことで、解消した。  

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
  * [ ] 所有権  
    Rust言語特有の機能になるため、別で調べた方が良いだろう。  

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
何はともあれ、まずは、["Hello World"](#algorithmHelloWorld)を表示するプログラムを作る。  
その後で、基礎中の基礎となる制御構造(構造化プログラミング)を簡略化しながら勉強する。  
そのため、以下の手順で勉強を進めることにする。  

* 以下、手順。  
  * [x] 手順1. 勉強用のブランチに移動する。  
  * [x] 手順2. ルートディレクトリのひな形ディレクトリをコピーしてくる。  
    ※ディレクトリ名をプログラミング言語に変更する。  
    ※配下の**Pythonで学ぶアルゴリズムの教科書 一生モノの知識と技術を身につける**ディレクトリは削除。  
  * [x] 手順2-1. 当ファイル(`README.md`)の書き換えを行う。  
        ※ **上位ディレクトリにある"README.md"** は触らない(新しいプログラミング言語の場合は、追記が必要)。  
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
  * [x] 手順3. 当ファイル(`README.md`)の書き換えを行う。  
    [x] アルゴリズムの勉強用に変更する。  
    [x] アルゴリズムの勉強用項目を出すが、基礎知識5種類の勉強項目は隠す(`details`・`summary`)。  
  * [x] 編集後、コミットする。  
  * [x] 手順4. 各ディレクトリで、チャプタごとに勉強を進める。  
    ※そのとき、(できる限り)プログラムファイルに[モードライン](https://vim-jp.org/vim-users-jp/2009/06/02/Hack-20.html)を記載する。  
    `/* vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=rust noexpandtab: */`  
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


<a name="algorithmOverview"></a>
#### 概要。
基礎知識として5種類を勉強するが、その目的はアルゴリズムの勉強用であって、5種類を本格的に極めるためではない。  
そのため、1つ1つを最小限に絞り込み、1つを10分前後の勉強時間に収まるように気をつけること。  
※現時点で守れていないため、何とかして短い時間に抑え、アルゴリズムの勉強を本格的に勉強できるように考慮すること。  

<a name="variable変数"></a>
<details><summary>実際の変数の勉強</summary>

### 変数
値の格納方法について。  
※複雑な説明はしない。  

* 絶対的に勉強する一覧  
  * [変数の宣言方法](#subVariable1)  
  * [変数への代入方法及び変数の利用](#subVariable2)  
    * [x] 代入演算子(`=`)  
      Rustでは、代入のことを"束縛(binding)"と呼ぶ。  
  * [変数値の出力方法](#subVariable3)  
  * [データ型](#subVariable4)  
    * [x] 整数(`int`)  
      32ビットや64ビット版がそう？  
    * 浮動小数点型(`float`)  
    * [x] 文字型  
      `&str`  
      `char`  
      `String`  
    * [x] 真偽型(`bool`)  
      trueやfalseが使える。  
  * [変数値を使った計算方法](#subVariable5)  
    * [x] 算術演算子  
      * [x] 足し算(`+`)  
      * [x] 引き算(`-`)  
      * [x] 掛け算(`*`)  
      * [x] 割り算(`/`)  
      * 累乗(`**`)  
        ない？  
      * 割り算の商(`//`)  
        ない？  
      * [x] 割り算の余り(`%`)  
  * [型変換(キャスト)方法](#subVariable6)  
    * [x] 明示変換  
      `変更前変数名 as [変換したい型]`  


<a name="subVariable1"></a>
#### 変数
型の宣言が必須。  
しかし、型推論させるのが一般的。  
様式：
`let 変数名;`


<a name="subVariable2"></a>
#### 変数への代入方法及び変数の利用
※Rustでは、代入のことを"束縛(binding)"と呼ぶ。  
以下の`mut`を付けた場合に変数の書き換えが可能になる。  
しかし、通常のRust言語でプログラム作成をする場合は、変数書き換え不要(`mut`なし変数)なプログラムを組むように心がけるべきである。  

様式：
`let mut 変数名 = 数値;`  
`let mut 変数名 = "文字列";`  
数値例）
`let mut days = 20210912;`  
文字列例）
`let mut strings = "Hello World.";`  

型を付けた宣言：
変数後に`:`を付け、さらにその後ろに型を付ける。  
`let mut 変数名 : 型 = 数値;`
`let mut 変数名 : 型 = "文字列";`
数値例）
`let mut days : i32 = 20210912;`  
`let mut days : i64 = 20210912;`  
`i32`は整数の32ビット版。`i64`は整数の64ビット版。  
文字列例）
`let mut strings : &str = "Hello World.";`  

* 変数宣言  
  * `let`により、変数宣言が可能になる。  
    この後ろに付く文字列が変数名になる。  
    また、これだけでは[定数](#subVariable2const)扱いになる。  
  * `let`の後ろに、`mut`を付けてから変数名を付けた場合、書き換え可能な変数宣言になる。  
    **mutable** (可変)の頭文字3文字。  

```Rust
fn main() {
//  let const_hoge = 20210912;	// warning: variable `const_hoge` is assigned to, but never used
//  const_hoge = 20210913;		// warning: value assigned to `const_hoge` is never read
			// letを使った変数宣言の場合、書き換えることが出来ない。

	let mut hoge = 20210912;	// warning: value assigned to `hoge` is never read
			// 一度も使わずに値を書き換えたため、警告が出た。
			// println!("出力：{}", hoge);
			//	これで変数を利用することにより、警告が出なくなる。
	hoge = 20210913;

	println!("出力：{}", hoge);
}
```

* 文字  
  * 1文字の代入方法は、シングルクォーテーション(`''`)で囲む。  


<a name="subVariable2const"></a>
##### 定数(Rust固有の"束縛(bind)")
以下の宣言した変数に、後から値を書き換えた場合、エラーになる。  

変数を使い回す場合、考慮範囲が広がるため、初期設定で書き換え不可能(束縛)な状態にしてある。  
逆に言えば、不意な書き換えに気づきやすくなっている。  
そのため、通常は、書き換え不可なまま使うべきである。  
それには、`let`により、同じ変数名を使い回すことができる(`let`を付けることで同名ではあるが、別物として扱われる：**シャドーイング**と言う。)。  
シャドーイングをする場合、代入する型を変えても問題ない(別物なので)。  

様式：
`let 変数名 = 数値;`  
`let 変数名 = "文字列";`  
数値例）
`let days = 20210912;`  
文字列例）
`let strings = "Hello World.";`  

型を付けた宣言：
変数後に`:`を付け、さらにその後ろに型を付ける。  
`let 変数名 : 型 = 数値;`
`let 変数名 : 型 = "文字列";`
数値例）
`let days : i32 = 20210912;`  
`let days : i64 = 20210912;`  
`i32`は整数の32ビット版。`i64`は整数の64ビット版。  
文字列例）
`let strings : &str = "Hello World.";`  
文字列の場合は、`&str`が文字列の型になる。  
付けるのが煩わしいため、普通は省略する。  
もっと言えば、型推論させる。  
しかし、[関数](#function関数)の引数には型付けが必須になる。  

変数名の規則もあるようだ。  
変数に大文字を使ってはならない？  


<a name="subVariable3"></a>
#### 変数値の出力方法
変数値の書き換え後の出力
```rust
fn main() {
//  let const_hoge = 20210912;	// warning: variable `const_hoge` is assigned to, but never used
//  const_hoge = 20210913;		// warning: value assigned to `const_hoge` is never read
			// letを使った変数宣言の場合、書き換えることが出来ない。

	let mut hoge = 20210912;	// warning: value assigned to `hoge` is never read
	hoge = 20210913;

	println!("出力：{}", hoge);
}
```

1文字出力
```rust
let a = 'a';
let cat = '😻';
// let dog = 'dog';	// error: character literal may only contain one codepoint	1文字ではないのが原因だろう。
println!("a  ：{}", a);		// a  ：a
println!("cat：{}", cat);	// cat：😻
```

文字列出力
```rust
let hogestr = "hoge string.";
let boostr = "boo string.";
println!("文字列  ：{}", hogestr);	// 文字列  ：hoge string.
println!("文字列  ：{}", boostr);	// 文字列  ：boo string.
// let a_t_str = hogestr + " " + boostr;	// error[E0369]: cannot add `&str` to `&str`
let a_t_str = format!("{}と{}を連結", hogestr, boostr);	// 
println!("a_t_str ：{}", a_t_str);	// a_t_str ：hoge string.とboo string.を連結
```

文字列の抜き出し。
```rust
fn main() {
	let hoge = "本日は晴天なり。本日は晴天なり。";

//  let boo = &hoge[2..5];
//  println!("エラー？：{}", boo);
	// thread 'main' panicked at 'byte index 2 is not a char boundary; it is inside '本' (bytes 0..3) of `本日は晴天なり。本日は晴天なり。`', main.rs:73:21

	let mut vhogev : Vec<char> = Vec::new();	//	←☆この変数にUTF-8文字列から切り出してchar型に変換した文字を追加していく。
	for c in hoge.chars() {
		vhogev.push( c );
	}
	let vhogev = &vhogev[2..5];	//	←☆このままで扱いづらい。
	// 再び&Stringに戻す。
	let mut hoge = String::new();
	for c in vhogev {
		hoge.push( *c );
	}
	println!("抜き出し結果：{}", hoge);	// 抜き出し結果：は晴天
}
```


<a name="subVariable4"></a>
#### データ型

|データ型|サイズ|備考|
|--------|------|----|
|int|||
|float|||
|string|||
|bool|||

整数型
|ビット長|整数|符号なし整数|備考|
|--------|----|------------|----|
|8ビット|i8|u8|
|16ビット|i16|u16|
|32ビット|i32|u32|
|64ビット|i64|u64|現在主流のパソコンで使われている。|
|処理系依存|isize|usize|効率の良いビット数が使われる。|

* 浮動小数点数  
  * 固定小数点数  
    実数の整数部と少数以下を別々に扱う。  
    例）`100.234`の場合、整数`100`と小数点以下`234`を別々に扱う。  
  * 浮動小数点数  
    数値部分と指数部分を別々に扱う。  
    例）`100.234`の場合、数値部分`1.00234`と指数部分`10の2乗`を別々に扱う。  
    数値部分が固定のため、有効桁数を保って計算できるのが利点になる。  

浮動小数点型
|ビット長|小数精度|符号なし小数|備考|
|--------|----|------------|----|
|単精度浮動小数点数|f32||
|倍精度浮動小数点数|f64||

* Bool型(論理値型)  
  * `true`  
    真  
  * `false`  
    偽  

* 文字型
  ユニコードもしくはUTF-8エンコードを使う。  
  そのため、文字列操作は、UTF-8と配列が複雑な絡み方をしているため、気をつける必要がある。  
  * 文字  
    1文字(`char`型)。  
    1文字32ビット(4バイト)。  
    そのため、漢字・平仮名・片仮名・絵文字などが1文字として扱える。  
    ※シングルクォーテーションで囲む。  
  * 文字列  
    char型の連なりではない。  
    ※**所有権(ownership)**・**借用(borrow)** の問題がある。  
    ※ダブルクォーテーションで囲む。  
    * 複数文字(`&str`型)。  
      `let hoge = "hoge";`の場合`&str`型になるようだ。  
      `format!`関数だけの利用で文字列の連結が出来るように見せかけられる。  
      ※基本的には固定文字列と思うべし。  
    * 複数文字(`String`型)。  
      `let hoge = "Hello World.".to_string();`のように宣言する。  
      `let hoge = String::from("Hello World.");`のように宣言する。  
      `&str`が達と違い、`+`による文字の連結が可能(当然`format!`関数での連結可能)。  
      ※基本的には可変文字列として扱う。  
    * 文字列から適当な文字を抜き出す場合、クレート(他のプログラミング言語で言うライブラリのことのようだ)もしくは、char型配列に置き換えてから抜き出す。  
      本来であれば、UTF-8の文字列を適切に扱うには、[Rust Package Registry](https://crates.io)から適切なライブラリを使う必要がある。  

特殊文字
|文字|文字リテラル|備考|
|----|------------|----|
|`'`|`\'`|シングルクォート表示方法|
|`\`|`\\`|バックスラッシュ表示方法|
|改行記号|`\n`|
|復帰記号|`\r`|キャリッジリターン|
|タブ記号|`\t`|
|16進数でASCII文字|`\xHH`|`HH`数字|
|Unicode|`\u{HHHHHH}`|`HHHHHH`|

* 複雑な変数宣言時の利用種類  
  * 型(クラス)  
  * トレイト  

* 複合型  
  * タプル型  
    構造体より簡単に扱える(使い方は構造体のような感じ)。  
  * 構造体  
  * [配列型](#arrangement配列sub)  
    宣言時から幅を変更できず、中身(要素値)も変更できない。  
  * ベクター型  
    要素の追加・削除・変更が可能。  

* 参照と借用  
  所有権(ownership)・移動(move)・借用(borrow)を使いこなすことで、安全にプログラミングができる。  
  * 参照  
  * 借用  
    文字列を代入している変数を他の変数に代入した場合、移動することになり、元の変数を他の処理で使うときに借用が出来なくなる。  

* 書籍の誤字
  * 所有権  
    10章の10.1の1段落目「略）〜表だっては見えないけれども協力かつ重要な機能を〜（略」ここでの"協力"は、**強力**のはず。  

```Rust
fn main() {
	let strx = String::from("hoge");
	let stry;
	println!("strx：{}", strx);	// strx：hoge
	stry = strx;	// 変数値を移動した(コピーではない)。
	println!("stry：{}", stry);	// stry：hoge
	println!("strx：{}", strx);	// エラーになる。
			// error[E0382]: borrow of moved value: `strx`
}
```


<a name="subVariable5"></a>
#### 変数値を使った計算方法

|演算子|意味|備考|
|------|----|----|
|`+`|加算||
|`-`|減算||
|`*`|乗算|参照外しの意味も含まれるため、気をつけること。|
|`/`|除算|コメント記号に使われるため、気をつけること。|
|`**`|累乗||
|`//`|除算の商||
|`%`|剰余演算||

```rust
fn main() {
	let cal = 20 + 10;
	println!("20 + 10 = {}", cal);	// 20 + 10 = 30
	let cal = 20 - 10;
	println!("20 - 10 = {}", cal);	// 20 - 10 = 10
	let cal = 20 * 10;
	println!("20 * 10 = {}", cal);	// 20 * 10 = 200
	let cal = 20 / 6;
	println!("20 /  6 = {}", cal);	// 20 /  6 = 3
	let cal = 20.0 / 6.0;	// 両方を浮動小数点数にする必要があるようだ。
	println!("20.0/6.0= {}", cal);	// 20.0/6.0= 3.3333333333333335
	let cal = 20 % 6;
	println!("20 %  6 = {}", cal);	// 20 %  6 = 2
}
```

この他に、`a += 20;`など(`-=`・`*=`・`/=`)もできる(代入演算子)。  


<a name="subVariable6"></a>
#### 型変換(キャスト)方法
暗黙変換はない。  

様式：
`as [変換したい型]`  

```rust
let decimal = 65.4321_f32;
let integer = decimal as u8;
let character = integer as char;
```


<a name="subVariable6u8cast"></a>
##### u8型変換(キャスト)方法
1文字用のキャストコマンド：  
u8型に変換：`as u8`  
char型に変換：`as char`  

u8型に変換例）
`変数名 as u8;`  
```rust
let ch = 'A';
let u = ch as u8;	// u8型に変換。
```

char型に変換様式：
`変数名 as char;`  
char型に変換例）
```rust
// 上記のu変数を使う。
let ch = u as char;	// char型に変換。
```

この変換方法は、char型のみに有効。  
その理由は、Rust言語は1文字4バイトだが、C言語やC++言語は1文字1バイトになっており、それらのライブラリと連携することができるため、このような相互変換がスムースにいくような設計になった。  


<a name="subVariable6arraycast"></a>
#### 配列の型変換(キャスト)方法
配列からキャストする場合は、`std::mem::transmute`関数を使う。  
また、強制キャストをする場合は、`unsafe`ブロックで囲み、コンパイルエラーを抑止する必要がある。  

以下、8ビット数値から64ビット数値に強制変換する。
```rust
// 方法不明。
```


<a name="subVariable999"></a>
#### 変数での説明しない項目。

<details><summary>今回は勉強を見送る一覧</summary>

* [x] 定数  
  `let`だけの変数宣言とは違う？  
* [ ] データ型  
  * [ ] 整数(`long`など)  
  * [ ] 浮動小数点型(`double`など)  
  * [x] 型推論  
  * [ ] 複素数型  
* [ ] リテラル  
  * [x] 整数リテラル  
  * [ ] 浮動小数点リテラル  
  * [ ] 文字リテラル  
  * [ ] 文字列リテラル  

数値リテラル
|数値リテラル|例|
|------------|--|
|10進数|12\_345|
|16進数|0xff|
|8進数|0o77|
|2進数|0b1111\_0000|
|1バイト|b'A'|

* [ ] キャスト  
  * 暗黙変換  
    存在しない。  
* [ ] 演算子  
  * [ ] ビット演算子  
  * [ ] シフト演算子  
  * [ ] 単項演算子  
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
        0から数える。  
  * [x] [配列への追加方法](#subArrangement2)  
    `mut`を付けることで書き換え可能になる。  
  * [x] [二次元配列の宣言方法](#subArrangement3)  
    `let mut 配列名 = [[1, 2, ], [3, 4, ], ];`  


<a name="subArrangement1"></a>
#### [配列](https://doc.rust-jp.rs/rust-by-example-ja/primitives/array.html)
コレクションのひとつ。  
しかし、配列の場合は、ベクター型と違い、要素数を変えることが出来ない(配列の長さが固定になる)。  
配列では、要素内容も変更できない。  

様式：
`let 配列名 = [値1, 値2, ・・・];`  

* 配列定義(色々省略形)  
  * 要素数はコンパイル時に決まるため、省略可能。  
  * 代入値の型も推論されるため、省略可能。  

例）
`let array = [1, 2, 3];`  
※`mut`がないため、値の変更不可。  

* 配列定義(型明記)  
  * 型指定する場合、要素数の明記も必須(省略不可)。  

[配列のキャスト方法](#subVariable6array)残念ながら不明。  


<a name="subArrangement2"></a>
#### 配列への追加方法
[変数への書き換えと同じ](#subVariable2)で、`mut`を付ける必要がある。  
様式：
`let mut 配列名: [型; 要素数] = [値1, 値2, ・・・ ];`  


以下、プログラム例）
```rust
fn main() {
	let hoge = ["本日は", "晴天なり"];
	let num = 1;

	println!("[0]：{}", hoge[0]);				// [0]：本日は
	println!("[1]：{}", hoge[num]);				// [1]：晴天なり
	println!("hoge配列の長さ：{}", hoge.len());	// hoge配列の長さ：2
	println!("-----------------------------------------");

	// 以下、型指定の配列
	let boo: [i32; 2] = [20211003, 20211004];
	println!("[0]：{}", boo[0]);				// [0]：20211003
	println!("[1]：{}", boo[1]);				// [1]：20211004
	println!("boo配列の長さ：{}", boo.len());	// boo配列の長さ：2

	println!("-----------------------------------------");
	let array: [i64; 0] = [];	// 空配列宣言成功(型指定必須)
	println!("array配列の長さ：{}", array.len());	// array配列の長さ：0

	println!("-----------------------------------------");
	// 以下、　1回の代入で全ての要素を同じ値に設定する(後から変更可能にもしておく)。
	let mut bar: [i32; 5] = [20211003; 5];
	println!("[0]：{}", bar[0]);				// [0]：20211003
	println!("[4]：{}", bar[4]);				// [4]：20211003
	println!("bar配列の長さ：{}", bar.len());	// bar配列の長さ：5
	bar[0] = 20211004;
	bar[4] = 12345678;
	println!("[0]：{}", bar[0]);	// [0]：20211004
	println!("[3]：{}", bar[3]);	// [3]：20211003
	println!("[4]：{}", bar[4]);	// [4]：12345678
}
```


<a name="subArrangement3"></a>
#### 二次元配列の宣言方法
様式：
`let mut 配列名 = [[1次元配列目の値1, 1次元配列目の値2, ], [2次元配列目の値1, 2次元配列目の値2, ], ];`  

```rust
fn main() {
	let hoge = [
			[20211003, 20211004, ],
			[20211005, 20211006, ],
		];
	println!("2次元配列の1次元目[0]：{}", hoge[0][0]);	// 2次元配列の1次元目[0]：20211003
	println!("2次元配列の1次元目[1]：{}", hoge[0][1]);	// 2次元配列の1次元目[1]：20211004
	println!("2次元配列の2次元目[0]：{}", hoge[1][0]);	// 2次元配列の2次元目[0]：20211005
	println!("2次元配列の2次元目[1]：{}", hoge[1][1]);	// 2次元配列の2次元目[1]：20211006
}
```


<a name="subArrangement999"></a>
#### 配列での説明しない項目。

<details><summary>今回は勉強を見送る一覧</summary>

* [ ] キャスト方法  
  断念したため、もう一度調べる。  
  ※アルゴリズムの勉強で使うと思うので、、、きっと・・・。  

* 配列の応用  
  * [ ] 3次元配列以上の宣言方法。  
  * [ ] 配列を複製する方法。  
  * [ ] 配列からスライスを作成する方法。  

* 構造体  
  3.5.3の"構造体単位"のnew関数内のxと言う名前の型を調べる(他のプログラミング言語でもあるが、同じ意味か？)。  
  * [ ] トレイト  
  * [ ] スコープ  
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
`if 条件式 { 処理; }`  
条件式を丸括弧`()`で囲んだ場合、エラーになる。  

複数条件式
```rust
if 条件式1 {
    処理A;
} else if 条件式2 {
    処理B;
} else {
    処理C;
}
```

以下、実際の条件分岐処理。
```rust
fn main() {
	let mut a = 10;
	let mut b = 10;
	if a != b {
		println!("a!=b");
		// 出力結果：a!=b
	}

	a = 22;
	b = 33;

	if comparison( a, b) {
		println!("関数の戻り値(bool)を条件式とした。");
		// 出力結果：関数の戻り値(bool)を条件式とした。
	}

	if a == 22 && b == 33 {
		println!("a==22&&b==33");
		// 出力結果：a==22&&b==33
	}

	// 以下、三項演算子。
	let ret = if a < b {1} else {0};
	println!("a<bの比較結果：{}", ret);
		// 出力結果：a<bの比較結果：1
}

fn comparison( x: i32, y: i32 ) -> bool {
	x < y
}
```


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

<details><summary>今回は勉強を見送る一覧</summary>

* 多岐分岐-条件にて複数から選ぶ。  
  基本構造例：switch  

* 関係演算子  
  * [x] 三項演算子(`?:`)  
    Rustでは書き方が異なる。  
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
    [基本構造例：for( 条件式 )](#subRepetition2)  
    残念ながらwhileのみだと思う。  
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
`for 変数名 in 0..10 { 処理; }`  
for文の条件文には配列やベクタ型などの要素を取り出すときに使うのであって、他のプログラミング言語のように個別の値を指定して繰り返すことは出来ない。 　
個別の値を使う場合は、while文を使うことになる。  


<a name="subRepetition2"></a>
##### 指定回数条件での繰り返し：for( 条件式 )
様式：
ない。  

これをやるには[while](#subRepetition6)を使う必要がある。  

```rust
fn main() {
	for ii in 0..10 {
		println!("ii：{}", ii);
//					ii：0
//					ii：1
//					ii：2
//					ii：3
//					ii：4
//					ii：5
//					ii：6
//					ii：7
//					ii：8
//					ii：9
	}
}
```


<a name="subRepetition3"></a>
##### 指定回数条件での繰り返し：拡張for命令
様式：
`for 変数名 in 配列名 { 処理; }`  

以下、繰り返しの拡張for文例）
```rust
fn main() {
	let array = [20211023, 20211024, 20211025, 20211026, ];

	for value in array {
		println!("array配列{}", value);
//						array配列20211023
//						array配列20211024
//						array配列20211025
//						array配列20211026
	}

}
```

以下、配列ではなく、ベクター型のイテレータを使い、添え字も一緒に取得する方法。
```rust
fn main() {
	let vec = vec![20211023, 20211024, 20211025, 20211026, ];

	for (ii, value) in vec.iter().enumerate() {
		println!("vecイテレータ{}番目：{}", ii, value);
//					vecイテレータ0番目：20211023
//					vecイテレータ1番目：20211024
//					vecイテレータ2番目：20211025
//					vecイテレータ3番目：20211026
	}
}
```


<a name="subRepetition4"></a>
#### `for`の入れ子。
他のプログラミング言語のように、繰り返し処理を入れ子にできる。  

```rust
fn main() {
	for ii in 0..4 {
		for jj in 0..4 {
			println!("1つ目のfor:{}からの2つ目のfor:{}", ii, jj);
		}
	}
	// 出力結果：
//				1つ目のfor:0からの2つ目のfor:0
//				1つ目のfor:0からの2つ目のfor:1
//				1つ目のfor:0からの2つ目のfor:2
//				1つ目のfor:0からの2つ目のfor:3
//				1つ目のfor:1からの2つ目のfor:0
//				1つ目のfor:1からの2つ目のfor:1
//				1つ目のfor:1からの2つ目のfor:2
//				1つ目のfor:1からの2つ目のfor:3
//				1つ目のfor:2からの2つ目のfor:0
//				1つ目のfor:2からの2つ目のfor:1
//				1つ目のfor:2からの2つ目のfor:2
//				1つ目のfor:2からの2つ目のfor:3
//				1つ目のfor:3からの2つ目のfor:0
//				1つ目のfor:3からの2つ目のfor:1
//				1つ目のfor:3からの2つ目のfor:2
//				1つ目のfor:3からの2つ目のfor:3
}
```


<a name="subRepetition5"></a>
#### ジャンプ処理

* ジャンプ  
  * [break](#subRepetition5break)  
  * [continue](#subRepetition5continue)  

<a name="subRepetition5break"></a>
以下、ブレーク文
```rust
fn main() {
	for ii in 0..10 {
		if ii == 3 {
			// iiの値が3回目になった時にfor文を抜け出る。
			break;
		}
		println!("{}回目", ii);
//					0回目
//					1回目
//					2回目
	}
}
```

<a name="subRepetition5continue"></a>
以下、コンティニュ文
```rust
fn main() {
	for ii in 0..10 {
		if ii % 2 == 0 {
			// 偶数の時にfor文の先頭に戻る。
			continue;
		}
		println!("{}回目", ii);
//					1回目
//					3回目
//					5回目
//					7回目
//					9回目
	}
}
```


<a name="subRepetition6"></a>
#### 真偽条件での繰り返し：while( 条件式 )
様式：
`for 条件式 { 処理; }`  

以下、for文使用例）
```rust
fn main() {
	let mut ii = 0;
	while ii < 10 {
		println!("{}回目の実行", ii + 1);
		ii += 1;
//					1回目の実行
//					2回目の実行
//					3回目の実行
//					4回目の実行
//					5回目の実行
//					6回目の実行
//					7回目の実行
//					8回目の実行
//					9回目の実行
//					10回目の実行
	}
}
```


<a name="subRepetition7"></a>
#### 無限ループ
様式：
`loop { 処理; }`  

```rust
fn main() {
	let mut ii = 0;

	loop {
		println!("loop文による無限ループ：{}", ii);
		if ii == 10 {
			// 無限ループを抜け出すための処理。
			break;
		}
		ii += 1;
//					loop文による無限ループ：0
//					loop文による無限ループ：1
//					loop文による無限ループ：2
//					loop文による無限ループ：3
//					loop文による無限ループ：4
//					loop文による無限ループ：5
//					loop文による無限ループ：6
//					loop文による無限ループ：7
//					loop文による無限ループ：8
//					loop文による無限ループ：9
//					loop文による無限ループ：10
	}
}
```


<a name="subRepetition999"></a>
#### 繰り返しでの説明しない項目。

<details><summary>今回は勉強を見送る一覧</summary>

* 真偽条件での繰り返し  
  基本構造例：do〜while( 条件式 )  
  これはない？  
* [ ] イテレータ  
  少しだけ説明した。  

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
基本的に、何かしらの演算子を使った場合、「式」になる。  
そして、式は必ず値を返す。  
戻り値を返さない関数は、戻り値を返さない代わりに、「`()`」という特別な値を返す。  
そのため、どのような関数だろうが、必ず値は返すことを前提にすること。  
ちなみに、メソッドも式扱いになる。  

そして、引数を指定する場合、型名の指定は必須となる。  

他のプログラミング言語にない特徴として、文末にセミコロンを付けなければ、関数の戻り値となる。  

以下、引数無し-戻り値無し。
```rust
fn main() {
	// 引数無し-戻り値無し
	nofuncno();
	//	出力結果：
	//			引数無し-戻り値無し
}

fn nofuncno() {
	println!("引数無し-戻り値無し");
}
```

以下、引数あり-戻り値無し。
```rust
fn main() {
	// 引数あり-戻り値無し
	//		引数1つ。
	nofunc_one(20211023);
	//	出力結果：
	//			引数1つあり(20211023)-戻り値無し

	// 引数あり-戻り値無し
	//		引数2つ。
	nofunc_two("本日は晴天なり", 20211023 );
	//	出力結果：
	//			引数2つあり(本日は晴天なり, 20211023)-戻り値無し
}

fn nofunc_one( hoge: i32 ) {
	println!("引数1つあり({})-戻り値無し", hoge);
}

fn nofunc_two( hoge: &str, boo: i32) {
	// 第1引数に使っている&記号は、str型の参照を表す。
	// また、この形式で受け取った場合の変数は書き換えできない(変更しない借用(borrow))。
	println!("引数2つあり({}, {})-戻り値無し", hoge, boo);
}
```

以下、引数無し-戻り値あり。
```rust
fn main() {
	// 引数無し-戻り値あり
	let hoge = i32funcno();
	println!("{}", hoge);
	//	出力結果：
	//			20211023
}

fn i32funcno() -> i32 {
	println!("引数無し-戻り値あり");

	return 20211023;
}
```

以下、引数あり-戻り値あり。
```rust
fn main() {
	// 引数あり-戻り値あり
	let boo = stringfunc_two("晴天なり", "本日は");
	println!("{}", boo);
	//	出力結果：
	//			本日は晴天なり
}

fn stringfunc_two( hoge: &str, boo: &str) -> String {
	// 引数に使っている&記号は、str型の参照を表す。
	// また、この形式で受け取った場合の変数は書き換えできない(変更しない借用(borrow))。
	println!("引数2つあり({}, {})-戻り値あり", hoge, boo);

	format!("{}{}", boo, hoge)
}
```


<a name="subFunction2"></a>
#### スコープ
基本的にはブロック`{}`単位内で有効。  

```rust
fn main() {
	let hoge = 20211024;
	println!("ブロック外：{}", hoge);
		// 出力結果：
//					ブロック外：20211024
	{
		// これができるのは、シャドーイングのおかげ。
		let hoge = "本日は晴天なり。";
		println!("ブロック内：{}", hoge);
		// 出力結果：
//					ブロック内：本日は晴天なり。
	}
	println!("ブロック外：{}", hoge);
		// 出力結果：
//					ブロック外：20211024

	let ret = retiffunc(1);
	println!("関数の戻り値：{}", ret);
		// 出力結果：
//					関数の戻り値：20211024
}

fn retiffunc( hoge: i32 ) -> i32 {
	let ret = if hoge > 0 {
		20211024
	} else {
		// このif文の書き方の場合、else文がなければエラーになる。
		0
	};

	ret
}
```


<a name="subFunction999"></a>
#### 関数での説明しない項目。

<details><summary>今回は勉強を見送る一覧</summary>

* マクロ  
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
* スコープ  
  * [ ] 構造体  
  * [ ] クロージャ  
  * [ ] 関数内の関数(コード3-42の中で参照できないと言うぐらいなのだからエラー内容を記載して欲しいよな)  

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
  [x] [1からnまで足し合わせる。](#addFrom1tonChapter2)2022/02/10  
  [x] [九九の式を出力する。](#outputTheMultiplicationTableChapter2)2022/02/25  
  [x] [素数を求める。](#findAPrimeNumberChapter2)2022/03/21  
  [x] [nの階乗を求める。](#findTheFactorialOfNChapter2)2022/04/30  
  [x] [エラトステネスの篩](#eratosthenesSieveChapter2)2022/05/28  
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
  ※チェックリストは上記。  
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
それをRust用に移植する。  

* ルール。  
  * 点数を配列で定義する。  
    `let score = [ 70, 98, 92, 88, 64, ];`  
    Python用配列：`score = [70, 98, 92, 88, 64]`  
    Perl用配列：`my @score = (70, 98, 92, 88, 64);`  
    vimScript9用配列：`var score = [70, 98, 92, 88, 64]`  
    C言語用配列：`int score[] = {70, 98, 92, 88, 64};`  
    Go言語用配列：`var score = [...]int {70, 98, 92, 88, 64};`  
    Java言語用配列：`int[] score = { 70, 98, 92, 88, 64, };`  
    C#言語用配列：`var score = new int[]{ 70, 98, 92, 88, 64, };`  
  * `for`を用いる。  

以下、プログラム。
```rust
fn main() {
	let score = [ 70, 98, 92, 88, 64, ];	// 書き換えない配列を用意する。
	let mut total = 0;	// 書き換える変数。
	for value in score {
		// 配列から1つづつ取り出し、合算。
		total += value;
	}
	let average = total as f32 / score.len() as f32;	// 両方を型変換し、計算する。
	println!("合計点 {0}", total);		// 合計点 412
	println!("平均点 {0}", average);	// 平均点 82.4
}
```
コンパイル完了まで長い時間かかる。  


<a name="addFrom1tonChapter2"></a>
#### 1からnまで足し合わせる。
勉強内容はPythonと基本は同じ。  
それをRust用に移植するだけのこと。  

* ルール1もPythonと同じ。  
  * `for`を用いる。  
  * 関数は定義しない。  
    私のルールは、必ず関数定義をすることに決めているため、ここだけ無視する。  

以下、ルール1のプログラム。
```rust
fn main() {
	let mut count = 0;
	for ii in 1..11 {
		count += ii;
	}
	println!("合計点 {0}", count);	// 合計点 55
}
```

* ルール2もPythonと同じ。  
  * nまでの値を関数の引数で受け取る。  
  * 関数内で合算した結果をreturnで返す。  

以下、ルール2のプログラム。
```rust
fn add2( total: i32 ) -> i32 {
	let mut count = 0;
	let max = total + 1;
	for ii in 1..max {
		count += ii;
	}
	count
}

fn main() {
	let total = add2(10);
	println!("合計点 {0} << add2関数", total);	// 合計点 55 << add2関数
}
```

* ルール3もPythonと同じ。  
  * 工夫して計算する。  
  * (初めの数+終わりの数)*(足し合わせる個数/2)  

以下、ルール3のプログラム。
```rust
fn add3( total: i32 ) -> i32 {
	let sumtotal = (1+total) * total / 2;

	return sumtotal;
}

fn main() {
	let total = add3(10);
	println!("合計点 {0} << add3関数", total);	// 合計点 55 << add3関数
}
```


<a name="outputTheMultiplicationTableChapter2"></a>
#### 九九の式を出力する。
Pythonでやったように、九九の式を出すのではなく、九九表を出すことにする。  
ルールはPythonと同じ。  

* 作業ルール。  
  * 二重ループを使う。  

<details><summary>2重ループのサンプルプログラム(for編)。</summary>

以下、プログラム。
```rust
fn main() {
	for ii in 1..3 {
		for jj in 1..3 {
			println!("ii[{0:>2}], jj[{1:<2}]", ii, jj);
		}
	}
}
```

以下、出力結果。
```terminal
ii[ 1], jj[1 ]
ii[ 1], jj[2 ]
ii[ 2], jj[1 ]
ii[ 2], jj[2 ]
```
右寄せ・左寄せで出力してみた。  

</details>

<details><summary>2重ループのサンプルプログラム(while編)。</summary>

以下、プログラム。
```rust
fn main() {
	let mut ii = 1;
	while ii < 3 {
		let mut jj = 1;
		while jj < 3 {
			println!("ii[{0:>02}], jj[{1:^3}]", ii, jj);
			jj += 1;
		}
		ii += 1;
	}
}
```


以下、出力結果。
```terminal
ii[01], jj[ 1 ]
ii[01], jj[ 2 ]
ii[02], jj[ 1 ]
ii[02], jj[ 2 ]
```
0埋め・中央配置で出力してみた。  

</details>

以下、縦に並ぶプログラム。。
```rust
fn main() {
	for ii in 1..10 {
		for jj in 1..10 {
			println!("{0}x{1}={2:>2}", ii, jj, ii*jj);
		}
	}
}
```

<details><summary>縦に並ぶ出力結果</summary>

以下、出力結果。
```terminal
1x1= 1
1x2= 2
1x3= 3
1x4= 4
1x5= 5
1x6= 6
1x7= 7
1x8= 8
1x9= 9
2x1= 2
2x2= 4
2x3= 6
2x4= 8
2x5=10
2x6=12
2x7=14
2x8=16
2x9=18
3x1= 3
3x2= 6
3x3= 9
3x4=12
3x5=15
3x6=18
3x7=21
3x8=24
3x9=27
4x1= 4
4x2= 8
4x3=12
4x4=16
4x5=20
4x6=24
4x7=28
4x8=32
4x9=36
5x1= 5
5x2=10
5x3=15
5x4=20
5x5=25
5x6=30
5x7=35
5x8=40
5x9=45
6x1= 6
6x2=12
6x3=18
6x4=24
6x5=30
6x6=36
6x7=42
6x8=48
6x9=54
7x1= 7
7x2=14
7x3=21
7x4=28
7x5=35
7x6=42
7x7=49
7x8=56
7x9=63
8x1= 8
8x2=16
8x3=24
8x4=32
8x5=40
8x6=48
8x7=56
8x8=64
8x9=72
9x1= 9
9x2=18
9x3=27
9x4=36
9x5=45
9x6=54
9x7=63
9x8=72
9x9=81
```

</details>

以下、表示形式を長方形に整えたプログラム。
```rust
fn main() {
	for ii in 1..10 {
		for jj in 1..10 {
			print!("{0:>2}x{1}={2:>2}", jj, ii, ii*jj);
		}
		println!("");
	}
}
```

<details><summary>適度に折り返された表示形式。</summary>

以下、出力結果。
```terminal
 1x1= 1 2x1= 2 3x1= 3 4x1= 4 5x1= 5 6x1= 6 7x1= 7 8x1= 8 9x1= 9
 1x2= 2 2x2= 4 3x2= 6 4x2= 8 5x2=10 6x2=12 7x2=14 8x2=16 9x2=18
 1x3= 3 2x3= 6 3x3= 9 4x3=12 5x3=15 6x3=18 7x3=21 8x3=24 9x3=27
 1x4= 4 2x4= 8 3x4=12 4x4=16 5x4=20 6x4=24 7x4=28 8x4=32 9x4=36
 1x5= 5 2x5=10 3x5=15 4x5=20 5x5=25 6x5=30 7x5=35 8x5=40 9x5=45
 1x6= 6 2x6=12 3x6=18 4x6=24 5x6=30 6x6=36 7x6=42 8x6=48 9x6=54
 1x7= 7 2x7=14 3x7=21 4x7=28 5x7=35 6x7=42 7x7=49 8x7=56 9x7=63
 1x8= 8 2x8=16 3x8=24 4x8=32 5x8=40 6x8=48 7x8=56 8x8=64 9x8=72
 1x9= 9 2x9=18 3x9=27 4x9=36 5x9=45 6x9=54 7x9=63 8x9=72 9x9=81
```

</details>

以下、我々学生時代から親しんできた九九表プログラム。
```rust
fn main() {
	for ii in 1..10 {
		for jj in 1..10 {
			print!("{0:>3}", ii*jj);
		}
		println!("");
	}
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

以下、プログラム。
```rust
fn main() {
	for ii in 2..101 {
		let half = ii / 2;	// 商を求める(halfは、書き換えない変数)。
		let mut flag = true;
		let mut jj = 2;
		while jj < half+1 {
			if (ii % jj) == 0 {
				flag = false;
				break;
			}
			jj += 1;
		}
		if flag == true {
			print!("{0},", ii );
		}
	}
}
```

以下、出力結果。
```terminal
2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,
```

<details><summary>プロジェクト作成</summary>

作り方を毎回忘れてしまう。  

以下、作業。
```terminal
$ cargo new prime
     Created binary (application) `prime` package
$ git status
On branch rustLang
Your branch is ahead of 'origin/rustLang' by 17 commits.
  (use "git push" to publish your local commits)

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
	modified:   ../../../README.md

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	prime/Cargo.toml
	prime/src/main.rs

no changes added to commit (use "git add" and/or "git commit -a")
$
```

</details>


<a name="findTheFactorialOfNChapter2"></a>
#### nの階乗を求める。
**階乗とは**
1からnまでの全ての整数の積をnの階乗という。  

* ルール1  
  再帰関数を使わない。  
  * 関数定義は行わない(私のプログラムでは行う)。  
  * `for`を使う。  

以下、ルール1のプログラム。
```rust
fn factorial1( num: i32 ) {
	let mut total = num;
	for ii in 1..10 {
		total *= ii;
	}

	println!("10! = {0}", total);	// 3628800
}

fn main() {
	factorial1(10);
}
```

* ルール2  
  再帰関数を使う。  
  * 再帰関数の定義ルール  
    * `n = 0`
      **n! = 1**  
    * `n > 0`
      **n! = n * (n-1) * (n-2) * ・・・ * 2 * 1**
      nから1引いた数を掛け、さらに1づつ引き続けながらnが1にまるまで続ける。  

**再帰関数とは**
関数内から自身の関数を呼び出すことを再帰処理という。
また、その呼び出す仕組みの関数を再帰関数という。  

以下、再帰関数プログラム例）
```rust
fn factorial2( num: i32 ) -> i32 {
	let mut _total = 0;
	if num == 0 {
		_total = 1;
	}
	else{
		_total = num * factorial2(num - 1);
	}

	return _total;
}

fn main() {
	let ret = factorial2(10);
	println!("10! = {0}", ret);	// 3628800
}
```

<details><summary>プロジェクト作成</summary>

以下、作業。
```terminal
$ cargo new factorial
     Created binary (application) `factorial` package
$
```

</details>


<a name="eratosthenesSieveChapter2"></a>
#### エラトステネスの篩
効率よく[素数](#findAPrimeNumberChapter2)を求めることができるアルゴリズムのこと。  

<details><summary>最初の見た目。</summary>

以下、篩いにかける表プログラム。
```rust
fn main() {
	let mut count = 10;
	for ii in 0..100 {
		print!("{0:>3}", ii);
		count -= 1;
		if count == 0 {
			println!("");
			count = 10;
		}
	}
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

</details>

以下、プログラム。
```rust
fn prime_out_eratosthenes( table: &mut [i32]) {
	// 表の表示。
	let max_len = table.len();
	let mut count = 10;
	for ii in 0..max_len {
		if table[ii] == 999 {
			print!("  /");
		}
		else{
			print!("{0:>3}", table[ii]);
		}
		count -= 1;
		if count == 0 {
			println!("");
			count = 10;
		}
	}
}

fn tablecreate( table: &mut [i32]) {
	// 篩いテーブル作成。
	for ii in 0..table.len() {
		table[ii] = ii as i32;
	}
	table[0] = 999;	// falseのつもり。
	table[1] = 999;	// falseのつもり。
}

fn eratosthenes_sieve_process( table: &mut [i32], start: i32) {
	// エラトステネスの篩を処理する関数
	let max_len = table.len();
	println!("{0}の倍数をふるい落とす。", start);
	let mut ii:i32 = start + start;
	while max_len > ii as usize {
		table[ii as usize] = 999;
		ii += start;
	}
}

fn main() {
	let mut table: [i32; 10*10] = [0; 10*10];
	tablecreate(&mut table);	// テーブル作成。
	prime_out_eratosthenes(&mut table);	// テーブル表示。
	//for ii in 2..=11 {	// イコール記号を付けることで、右辺値も含む。
	for ii in 2..11 {	// イコール記号を付けることで、右辺値も含む。
		if table[ii as usize] == 999 {
			continue;
		}
		println!("------------------------------");
		eratosthenes_sieve_process(&mut table, ii);	// ふるいに落とす。
		prime_out_eratosthenes(&mut table);	// テーブル表示。
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
------------------------------
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
------------------------------
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
------------------------------
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
------------------------------
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

<details><summary>プロジェクト作成</summary>

以下、作業。
```terminal
$ cargo new prime_eratosthenes
     Created binary (application) `prime_eratosthenes` package
$
```

</details>


<a name="understandnAryNotationChapter2"></a>
#### n進法を理解する。
アルゴリズムとして勉強することではない。  
普通の一般説明。  
[ビット演算(`&`・`|`・`^`・`~`)](#learnBitwiseOperationsChapter4)は、別の機会。  

以下、プログラム。
```rust
fn main() {
	let bin = 0b11111111;	// 2進数。
	let oct = 0o377;	// 8進数。
	let hex = 0xff;	// 16進数。

	println!("10進数 {},{},{}", bin, oct, hex);	// 255,255,255
	println!("16進数 {:x},{:x},{:x}", bin, oct, hex);	// ff,ff,ff
	println!("8進数 {:o},{:o},{:o}", bin, oct, hex);	// 377,377,377
	println!("2進数 {:b},{:b},{:b}", bin, oct, hex);	// 11111111,11111111,11111111
}
```


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
## 応用知識
基礎知識5種類だけでは不足する知識を補う。  

* 応用部分  
  * 何を勉強したか記載する。  


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
