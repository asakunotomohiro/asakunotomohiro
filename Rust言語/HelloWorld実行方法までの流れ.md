# Rust言語用の"Hello World."表示までのメモ
プログラミングRust言語を勉強するため、プロジェクト作成を行う。  

## プロジェクト作成
様式：
`cargo new [プロジェクト名]`  
コマンド：
`cargo new helloWorld`  

### プロジェクト作成実施。

以下、プロジェクト作成の実行。
```terminal
$ cargo new helloWorld	←☆プロジェクト作成実施。
     Created binary (application) `helloWorld` package
$ ll	←☆実行ディレクトリに指定したプロジェクト名のディレクトリが生成される。
total 24
drwxr-xr-x  4 asakunotomohiro  staff   128  8 22 15:00 helloWorld/	←☆コレ。
drwxr-xr-x  9 asakunotomohiro  staff   288  8 22 14:57 基礎知識用の勉強/
-rw-r--r--  1 asakunotomohiro  staff  6189  8 22 01:13 インストールメモ.md
-rw-r--r--  1 asakunotomohiro  staff  3762  8 22 00:35 README.md
$ ll helloWorld/	←☆中身。
total 8
drwxr-xr-x  3 asakunotomohiro  staff   96  8 22 15:00 src/
-rw-r--r--  1 asakunotomohiro  staff  179  8 22 15:00 Cargo.toml	←☆パッケージのバージョンや読み込むライブラリ設定のファイル。
$ ll helloWorld/src/
total 8
-rw-r--r--  1 asakunotomohiro  staff  45  8 22 15:00 main.rs	←☆これがソースファイルらしい。
$
```
※書籍通りに行けば、ソースファイル名は、**main.fs**になるはずだが、私の環境では**main.rs**になっている。  
違いは分からない。  

### **Cargo.toml**ファイル内容。

以下、**Cargo.toml**ファイルの内容。
```terminal
$ cat helloWorld/Cargo.toml
[package]
name = "helloWorld"
version = "0.1.0"
edition = "2018"

# See more keys and their definitions at https://doc.rust-lang.org/cargo/reference/manifest.html

[dependencies]
$
```

### **main.rs**ファイル内容。
プロジェクト生成時に、求めている内容が記述されているという・・・どういうこと!?  

以下、**main.rs**ファイルの内容。
```terminal
$ cat helloWorld/src/main.rs
fn main() {
    println!("Hello, world!");
}
$
```
`println`はマクロだとさ。

## ビルド実行
コンパイル及び実行のこと。  

以下、実施。
```terminal
$ ll	←☆ビルド前状況。
total 8
drwxr-xr-x  3 asakunotomohiro  staff   96  8 22 15:13 src/
-rw-r--r--  1 asakunotomohiro  staff  179  8 22 15:13 Cargo.toml
$ cargo build	←☆ビルド実施(2種類のワーニングは何？)。
   Compiling helloWorld v0.1.0 (/Users/asakunotomohiro/study勉強用Githubリポジトリ/Rust言語/helloWorld)
warning: crate `helloWorld` should have a snake case name	←☆気になるが、書籍では何も説明していない。
  |
  = note: `#[warn(non_snake_case)]` on by default
  = help: convert the identifier to snake case: `hello_world`

warning: 1 warning emitted	←☆気になるが、書籍では何も説明していない。

    Finished dev [unoptimized + debuginfo] target(s) in 0.97s
$ ll	←☆ビルド後状況。
total 16
drwxr-xr-x@ 5 asakunotomohiro  staff  160  8 22 15:13 target/
-rw-r--r--  1 asakunotomohiro  staff  154  8 22 15:13 Cargo.lock
drwxr-xr-x  3 asakunotomohiro  staff   96  8 22 15:13 src/
-rw-r--r--  1 asakunotomohiro  staff  179  8 22 15:13 Cargo.toml
$ ll src/	←☆ソースファイルディレクトリ状況(変化なし)。
total 8
-rw-r--r--  1 asakunotomohiro  staff  45  8 22 15:13 main.rs
$ ll target/	←☆ターゲットディレクトリ状況。
total 8
drwxr-xr-x  10 asakunotomohiro  staff  320  8 22 15:13 debug/
-rw-r--r--   1 asakunotomohiro  staff  177  8 22 15:13 CACHEDIR.TAG
$ ll target/debug/	←☆デバッグディレクトリ状況(実行ファイルが作られている)。
total 800
-rw-r--r--   1 asakunotomohiro  staff     355  8 22 15:13 helloWorld.d
drwxr-xr-x  12 asakunotomohiro  staff     384  8 22 15:13 deps/
-rwxr-xr-x   2 asakunotomohiro  staff  402340  8 22 15:13 helloWorld*
drwxr-xr-x   3 asakunotomohiro  staff      96  8 22 15:13 incremental/
drwxr-xr-x   2 asakunotomohiro  staff      64  8 22 15:13 build/
drwxr-xr-x   2 asakunotomohiro  staff      64  8 22 15:13 examples/
$
```


## 実行ファイル実行
実行ファイルを動かす。  

以下、実施。
```terminal
$ cargo run	←☆動かす(2種類のワーニングは何？)。
warning: crate `helloWorld` should have a snake case name
  |
  = note: `#[warn(non_snake_case)]` on by default
  = help: convert the identifier to snake case: `hello_world`

warning: 1 warning emitted

    Finished dev [unoptimized + debuginfo] target(s) in 0.00s
     Running `target/debug/helloWorld`
Hello, world!	←☆実行結果後の出力内容。
$
$ echo $?
0
$
```

もしくは、実行ファイルを直接叩く。
```terminal
$ ll target/debug/
total 800
-rw-r--r--   1 asakunotomohiro  staff     355  8 22 15:13 helloWorld.d
drwxr-xr-x  12 asakunotomohiro  staff     384  8 22 15:13 deps/
-rwxr-xr-x   2 asakunotomohiro  staff  402340  8 22 15:13 helloWorld*
drwxr-xr-x   3 asakunotomohiro  staff      96  8 22 15:13 incremental/
drwxr-xr-x   2 asakunotomohiro  staff      64  8 22 15:13 build/
drwxr-xr-x   2 asakunotomohiro  staff      64  8 22 15:13 examples/
$ ./target/debug/helloWorld	←☆直接実行。
Hello, world!
$
```

## 実行ファイル削除
生成した実行ファイルを消す。  

以下、実施。
```terminal
$ ll
total 16
drwxr-xr-x@ 5 asakunotomohiro  staff  160  8 22 15:13 target/	←☆クリーンコマンドで、これが消える。
-rw-r--r--  1 asakunotomohiro  staff  154  8 22 15:13 Cargo.lock
drwxr-xr-x  3 asakunotomohiro  staff   96  8 22 15:13 src/
-rw-r--r--  1 asakunotomohiro  staff  179  8 22 15:13 Cargo.toml
$ cargo clean	←☆削除実施。
$ ll	←☆消えているのが確認できる。
total 16
-rw-r--r--  1 asakunotomohiro  staff  154  8 22 15:13 Cargo.lock	←☆そもそもこれも無かったはずなのに、これは消えない。
drwxr-xr-x  3 asakunotomohiro  staff   96  8 22 15:13 src/
-rw-r--r--  1 asakunotomohiro  staff  179  8 22 15:13 Cargo.toml
$
```

## cargoではなく、個別にコンパイル実施。
1ファイルのみをコンパイルする。  

以下、実施。
```terminal
$ ll
total 8
-rw-r--r--  1 asakunotomohiro  staff  45  8 22 15:13 main.rs
$ rustc main.rs	←☆コンパイル実施。
$ ll
total 792
-rwxr-xr-x  1 asakunotomohiro  staff  397372  8 22 15:43 main*	←☆実行ファイル生成。
-rw-r--r--  1 asakunotomohiro  staff      45  8 22 15:13 main.rs
$ ./main	←☆実行ファイル実行。
Hello, world!
$
```

### 実行ファイル削除(`rustc`)

この個別コンパイル方法では、`clean`で消せない。
```terminal
$ ll src/
total 792
-rwxr-xr-x  1 asakunotomohiro  staff  397372  8 22 15:43 main*	←☆これを消したい。
-rw-r--r--  1 asakunotomohiro  staff      45  8 22 15:13 main.rs
$ cargo clean	←☆削除実施。
$ ll src/
total 792
-rwxr-xr-x  1 asakunotomohiro  staff  397372  8 22 15:43 main*	←☆消えない。
-rw-r--r--  1 asakunotomohiro  staff      45  8 22 15:13 main.rs
$
```

## lockファイルの意味
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

## ワーニング
上記で出力されたワーニングが何か分からないままになっている。  

以上。
