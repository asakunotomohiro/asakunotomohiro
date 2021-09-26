# vimScript言語
ここは、プログラミング言語のvimScript言語を勉強するブランチになる。  
※Vimの操作は[別](../エディタ活用メモ/Vimエディタ_作業メモなど何でも詰め込む.md)とする。  


<a name="algorithmHowToUseTheBranch"></a>
## ブランチの利用方法
ここのブランチは、書籍のアルゴリズムを勉強するのに使う。  
また、具体的なアルゴリズムの種類は、下記書籍の目次チャプターに限定する。  
※チャプターごとにブランチを分けていく。  


<a name="algorithmHowToStudy"></a>
## 勉強方法
本格的な勉強ではないが、[公式ページ](https://vim-jp.org)だけを使うのではない。  
購入した書籍のおまけとしてスクリプトの記述があったため、一応参考にする。  
そして、[Vim日本語ドキュメント](https://vim-jp.org/vimdoc-ja/)の[Vim9 script](https://vim-jp.org/vimdoc-ja/vim9.html)は必ず見る(script8では古いからな)。  
vim script 8以前の[Vim script 書法](https://vim-jp.org/vimdoc-ja/usr_41.html)と最新版では書き方が異なる。  
困る。  

> Vim9 script の主な目的は劇的な性能の向上です。これは、コマンドをより効率よく実行できる命令にコンパイルすることで実現しています。  
> これにより、10倍から100倍の実行速度の向上が期待できます。  
>
> 第2の目的は、Vim script 特有の文法を回避し、より一般的に使われる JavaScript や TypeScript、Java のようなプログラミング言語に近づけることです。  

以下の書籍を購入済み。  
[マスタリングVim](https://gihyo.jp/book/2020/978-4-297-11169-4)  
この**第8章**を今回の勉強に役立たせる。
※当書籍はVer8だが、世の中に出回っている最新版は9だ。  
※[ViIMproved](https://gihyo.jp/book/2004/4-7741-2018-9)の **27章 式と関数** に、スクリプトが掲載されていた(どちらにしても最新版には未対応)。  


<a name="algorithmDevelopmentEnvironment"></a>
## 開発環境
当たり前のように、`MacVim`を使う。  
vimScriptなのに、他のIDEを使う人はいるのだろうか!?  

<a name="algorithmCheckTheStatusOfTheActualWorkingEnvironment"></a>
<details><summary>実際に作業する環境の状況確認</summary>

* 勉強環境。  
  * 勉強環境のコンパイルバージョン：Ver8.0(ターミナルとMacvim違うようだ)  
以下のバージョンは使わない。
```terminal
$ vim --version
VIM - Vi IMproved 8.2 (2019 Dec 12, compiled Sep 12 2021 19:00:14)
macOS 版 - x86_64
適用済パッチ: 1-3434
Compiled by Homebrew
Huge 版 without GUI.  機能の一覧 有効(+)/無効(-)
+acl               +file_in_path      +mouse_urxvt       -tag_any_white
+arabic            +find_in_path      +mouse_xterm       -tcl
+autocmd           +float             +multi_byte        +termguicolors
+autochdir         +folding           +multi_lang        +terminal
-autoservername    -footer            -mzscheme          +terminfo
-balloon_eval      +fork()            +netbeans_intg     +termresponse
+balloon_eval_term +gettext           +num64             +textobjects
-browse            -hangul_input      +packages          +textprop
++builtin_terms    +iconv             +path_extra        +timers
+byte_offset       +insert_expand     +perl              +title
+channel           +ipv6              +persistent_undo   -toolbar
+cindent           +job               +popupwin          +user_commands
-clientserver      +jumplist          +postscript        +vartabs
+clipboard         +keymap            +printer           +vertsplit
+cmdline_compl     +lambda            +profile           +virtualedit
+cmdline_hist      +langmap           -python            +visual
+cmdline_info      +libcall           +python3           +visualextra
+comments          +linebreak         +quickfix          +viminfo
+conceal           +lispindent        +reltime           +vreplace
+cryptv            +listcmds          +rightleft         +wildignore
+cscope            +localmap          +ruby              +wildmenu
+cursorbind        +lua               +scrollbind        +windows
+cursorshape       +menu              +signs             +writebackup
+dialog_con        +mksession         +smartindent       -X11
+diff              +modify_fname      -sodium            -xfontset
+digraphs          +mouse             -sound             -xim
-dnd               -mouseshape        +spell             -xpm
-ebcdic            +mouse_dec         +startuptime       -xsmp
+emacs_tags        -mouse_gpm         +statusline        -xterm_clipboard
+eval              -mouse_jsbterm     -sun_workshop      -xterm_save
+ex_extra          +mouse_netterm     +syntax
+extra_search      +mouse_sgr         +tag_binary
-farsi             -mouse_sysmouse    -tag_old_static
      システム vimrc: "$VIM/vimrc"
      ユーザー vimrc: "$HOME/.vimrc"
   第2ユーザー vimrc: "~/.vim/vimrc"
       ユーザー exrc: "$HOME/.exrc"
  デフォルトファイル: "$VIMRUNTIME/defaults.vim"
       省略時の $VIM: "/usr/local/share/vim"
コンパイル: clang -c -I. -Iproto -DHAVE_CONFIG_H -DMACOS_X -DMACOS_X_DARWIN -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1
リンク: clang -L. -fstack-protector-strong -L/usr/local/lib -L/usr/local/opt/libyaml/lib -L/usr/local/opt/openssl@1.1/lib -L/usr/local/opt/readline/lib -L/usr/local/lib -o vim -lncurses -liconv -lintl -framework AppKit -L/usr/local/opt/lua/lib -llua5.4 -mmacosx-version-min=10.14 -fstack-protector-strong -L/usr/local/lib -L/usr/local/Cellar/perl/5.34.0/lib/perl5/5.34.0/darwin-thread-multi-2level/CORE -lperl -lm -lutil -lc -L/usr/local/opt/python@3.9/Frameworks/Python.framework/Versions/3.9/lib/python3.9/config-3.9-darwin -lpython3.9 -framework CoreFoundation -lruby.3.0 -L/usr/local/Cellar/ruby/3.0.2/lib
$
```
コンソール上とGUIではバージョンが合わない。  
MacVimバージョン：8.2.2164  

  * プログラムファイルの拡張子：`*.vim`  
  * 実行方式：インタプリタ方式？  
    実行方法：(vimエディタを起動した状態で)`:source ファイル名`  
  * 標準の文字コード(プログラムファイル)：UTF-8？  
  * 文字コードの扱い：
　　例）UTF-8・Unicode  
  * 文字区切り(行末記号)：改行  
  * インデント：フリーフォーマット  
  * 標準の出力関数：`echo`・`echon`・`echom`  
  * 標準のフォーマット関数：  
　　例）`printf`など。
　　※必須記入項目ではなく、勉強途中での記載でも可とする。  
  * 単数行コメント方法：`"`(script8版)  
　　※プログラムの仕様上プログラム処理より右側にコメントを付けられない場合がある。  
  * 単数行コメント方法：`#`(script9版)  
　　※逆に、`"`は使えない。  
  * 複数行コメント方法：ない？  
　　例）`/*〜*/`・`''' 〜 '''`など。  
  * デバッガ機能(デバッグ技法)：  
　　例）`gdb`・`perldebug`・`pdb`など。  


<a name="algorithmHelloWorld"></a>
### ハローワールドプログラム

以下、vim9scriptのプログラム。
```vim
def! HelloWorld(): string
	return 'hello world(By.vim script 9).'
enddef

echo HelloWorld()
```
出力結果：`hello world(By.vim script 9).`  

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

</details>

<a name="algorithmTextbookLearnedinPythonContents"></a>
* [アルゴリズム勉強目次](#algorithmTextbookLearnedinPython)  
  * [x] [Chapter 1 プログラミングの基礎知識](#basicKnowledgeFiveTypesOfStudyRange)  
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
何はともあれ、まずは、"Hello World"を表示するプログラムを作る。  
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
      ※そのとき、(できる限り)プログラムファイルに[モードライン](../エディタ活用メモ/Vimエディタ_作業メモなど何でも詰め込む.md)を記載する。  
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
アルゴリズムの勉強に、以下の手順を行う。  

* 以下、手順。  
  * [x] 手順1. 勉強用のブランチに移動する(上記[目次](#algorithmTextbookLearnedinPythonContents)の1チャプター分専用ブランチとする)。  
  * [x] 手順2. ルートディレクトリのひな形ディレクトリ配下の必要なディレクトリをコピーする。  
    **Pythonで学ぶアルゴリズムの教科書 一生モノの知識と技術を身につける** ディレクトリ配下の必要なチャプター用ディレクトリ。  
  * [x] 手順3. 当ファイル(`README.md`)の書き換えを行う。  
    [x] アルゴリズムの勉強用に変更する。  
    [x] アルゴリズムの勉強用項目を出すが、基礎知識5種類の勉強項目は隠す(`details`・`summary`)。  
  * [x] 編集後、コミットする。  
  * [ ] 手順4. 各ディレクトリで、チャプタごとに勉強を進める。  
    ※そのとき、(できる限り)プログラムファイルに[モードライン](https://vim-jp.org/vim-users-jp/2009/06/02/Hack-20.html)を記載する。  
    ※チェックリストは[上記](#algorithmTextbookLearnedinPythonContents)にある。  
    Chapter 2 [プログラミングの力を養う](#algorithmTextbookLearnedinPythonChapter2)  
    Chapter 3 [データ構造を学ぶ](#algorithmTextbookLearnedinPythonChapter3)  
    Chapter 4 [サーチ](#algorithmTextbookLearnedinPythonChapter4)  
    Chapter 5 [ソート](#algorithmTextbookLearnedinPythonChapter5)  
    Chapter 6 [ハッシュ](#algorithmTextbookLearnedinPythonChapter6)  
    Chapter 7 [さまざまなアルゴリズムを学ぶ](#algorithmTextbookLearnedinPythonChapter7)  
    Chapter 8 [アルゴリズムを見える化する](#algorithmTextbookLearnedinPythonChapter8)  
  * [ ] 手順5. 1つのプログラミング言語で、手順4の勉強1種類(要は、1チャプタ分の子部分)を終えた時に、次のプログラミング言語に移る。  
  * [ ] 手順6. 1チャプタ分終了にて、"study2programming"ブランチにマージする。  

</details>


<a name="algorithmNotes"></a>
### ※注意事項
「アルゴリズムを勉強することが目的」であるということを理解すること。  
しかし、やる気を維持するためにも1冊分を読了させることも目的としており、深掘りせずに進めることも考慮すること。  
要は、深く踏み込むか、流し読み程度に抑えるかどうかはそのときに決める。  


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
      `number`型って何？  
    * [x] 浮動小数点型(`float`)  
    * [x] 文字型(`string`)  
    * [x] 真偽型(`bool`)  
  * [変数値を使った計算方法](#subVariable5)  
    * [x] 算術演算子  
      * [x] 足し算(`+`)  
      * [x] 引き算(`-`)  
      * [x] 掛け算(`*`)  
      * [x] 割り算(`/`)  
        整数になる。  
      * 累乗(`**`)  
        ない？(`pow()`を使う？)  
      * 割り算の商(`//`)  
        ない？(`/`で十分？)  
      * [x] 割り算の余り(`%`)  
  * [型変換(キャスト)方法](#subVariable6)  
    * 明示変換  
      ない？  

<a name="subVariable1"></a>
#### 変数
[Vim script 言語 の変数41.2](https://vim-jp.org/vimdoc-ja/usr_41.html#41.2)  
> 変数名にはアルファベット、数字、アンダースコアが使えます。変数名を数字で開始することはできません。

様式：
`var [変数名]`  

変数名
|名前|意味|
|----|----|
|全て大文字・数字・アンダースコア|**viminfo**オプションに!フラグが含まれる場合に、viminfoファイルへ格納できる変数|
|1文字目が大文字もしくは、どこかに小文字を含む|makeセッション(`:mksession`)コマンドで保存される変数|
|`let Save_this_option = 1`|セッションで保存されるオプション|
|`let forget_this = yes`|セッション間で破棄される|
|全て小文字・数字・アンダースコア|保存ファイルに格納されない変数|


特殊変数
|名前|意味|
|----|----|
|`$環境変数名`|環境変数|
|`@レジスタ名`|テキストレジスタ|
|`&オプション名`|オプション名|

<details><summary>細かい話</summary>

以下、script8形式  
`let [変数名]`  


#### 変数の一覧
宣言した変数を一覧化する方法があるにはある・・・。  
コマンド：
`:let`  

これを使う場合、作成しているスクリプトファイル内だけでなく、Vimエディタが動かしている変数を全て網羅させて表示させるようで、本当に自分が宣言した変数だけの確認は出来ない。  
どうすれば絞り込み表示が出来るのか分からない。  


#### 変数の宣言確認
スクリプトファイル内で宣言した変数を個別に確認することはできる。  
様式：
`if exists("[接頭辞][変数名]")`  

変数が宣言されていた場合、if文が実行される。  


#### 変数の破棄
変数を宣言した場合、メモリを消費する(スクリプト実行後も変数は状態を維持する)。  
そのため、使い終わった変数は自前で破棄した方が良いようだ。  
様式：
`unlet! [変数名]`  
`unlet! [接頭辞][変数名]`  


以下、感嘆符を付けずに破棄もできるが、存在しない状態で破棄した場合エラーになるため、おすすめしない。
```vim
unlet [変数名]
unlet [接頭辞][変数名]
```


#### レジスタ変更
script8では以下の通りだが、vim9scriptではどのように定義すれば良いのか分からない。  

```vim
let @a = "ahogeの文字列をレジスタaに代入"
"	確認方法：'@a'キータイプにより、文字列がVimエディタ上に展開される。
```


#### Setオプション変更
`set`で変更するVimオプションの場合は、変数名の前に`&`記号を付ける。  

例）
`let &ignorecase = 0`  


</details>


<a name="subVariable2"></a>
#### 変数への代入方法及び変数の利用
様式：
`var [変数名] = [値]`  
script8と異なり、イコール記号の前後に半角スペースが必要。  

他のプログラミング言語のように、型が決められているのではない。  
代入時に変化する。  
しかし、それは、文字列型と数値型の話であり、他のデータ型はエラーになるようだ。  
そして、関数の戻り値を設定する場合は、型付けを厳格に決める必要がある。  


<a name="subVariable3"></a>
#### 変数値の出力方法

```vim
let hello8 = 'Hello world script8'
def! Hello(): string
	var hello9 = 'Hello world script9'
		# 出力結果：Hello world script9
	echom hello9

	return 'vim9script関数内'
enddef
echom Hello()
echom hello8
	" 出力結果：Hello world script8
```


<a name="subVariable4"></a>
#### データ型
基本的に意識しない。  

|データ型|サイズ|備考|
|--------|------|----|
|int|||
|float|||
|string|||
|bool|||

以下、10種類ある。  
今回は、そのうちの数種類のみ使う。  

* データ型  
  * 数値  
    `var number = 20210909`  
    数値型から文字型へは自動キャストが行われる。  
  * 文字列  
    `var string = "hoge"`  
    文字型から数値型へは自動キャストが行われない(vim9script)。  
  * 関数リファレンス  
    説明対象外。  
  * [リスト](#arrangement配列sub)  
    `var hogeList = ['hoge1', 'hoge2', 'hoge3', ・・・]`  
  * 辞書  
    `var hogeDictionary = {'hoge': 20210909, 'boo': 20110311}`  
    説明対象外。  
  * 浮動小数点数  
    `var floatNumber = 2021.0909`  
  * 特殊値  
    説明対象外。  
    ただ、Bool型には触れる。  
  * ジョブ  
    説明対象外。  
  * チャネル  
    説明対象外。  
  * Blob  
    説明対象外。  

<a name="subVariable4doublequote"></a>
* ダブルクォーテーション  
  [文字列定数(ダブルクォーテーションで括る)](https://vim-jp.org/vimdoc-ja/eval.html#expr-quote)  
  リテラルではない文字列を表す。  
  例）`"hoge\tboo"`⇒"hoge	boo"  
<a name="subVariable4singlequote"></a>
* シングルクォーテーション  
  リテラル文字列を表す(同記号は重ね掛け必須)。  
  例）`'hoge's`エラー。  
  例）`'hoge''s`⇒"hoge's"  

* 文字の結合(vim9script)  
`'abc' .. 123`  
`'def' .. v:true`  


* [Boolean型](https://vim-jp.org/vimdoc-ja/eval.html#Boolean)  
  真偽型ができるまで[歴史](https://github.com/vim-jp/issues/issues/38)があるようだ。  
  * 真  
    `0`以外  
    v:true  
    vim9script：true  
  * 偽  
    `0`  
    v:false  
    vim9script：false  


* [float型](https://vim-jp.org/vimdoc-ja/eval.html#Float)  
  `+float`機能つきでコンパイルされたときのみ有効。  
  ※vimエディタ上のexコマンドにて`:ve`実行時に有効有無を確認できる。  
  * `let pi = 3.14159265359`  
    出力結果：`3.141593`  


* 定数  
  * [数定数](https://vim-jp.org/vimdoc-ja/eval.html#expr-number)  
    `number`型？  
  * [文字列型の文字列定数](https://vim-jp.org/vimdoc-ja/eval.html#expr-quote)  
    `string`型？  
    [ダブルクォーテーション](#subVariable4doublequote)で囲む必要がある。  
  * [リテラル文字列](https://vim-jp.org/vimdoc-ja/eval.html#literal-string)  
    `string`型？  
    [シングルクォーテーション](#subVariable4singlequote)で囲む必要がある。  


以下、結局分からずじまい。  

|データ型|Vimの定義済変数|
|--------|---------------|
|bool|v:t\_bool|
|number|v:t\_number|
|float|v:t\_float|
|string|v:t\_string|
|blob|v:t\_blob|
|list|v:t\_list|
|dictionary|v:t\_dict|
|func|v:t\_func|
|special|
|job|v:t\_job|
|channel|v:t\_channel|
|class|
|object|
||v:t\_none|
結局、どうやって使い分ければ良いの？  

比較演算子として扱うってこと？  
しかし、`v:`になっている以上、どうしようもないような・・・。  


#### 整数リテラル

整数値
|  例  |種類|
|------|----|
|123|10進数|
|0123|8進数|
|0xAC|16進数|


#### 文字リテラル
2種類ある？  

* string  
単純文字列(simple string)  
* 'string'  
リテラル文字列(literal string)  

以下、ダブルクォーテーションで囲む場合に有効。  
|エスケープシーケンス|意味|
|--------------------|----|
|`\t`|\<Tab\>|
|`\n`|\<NL\>・改行|
|`\r`|\<CR\>・\<Enter\>|
|`\e`|\<Esc\>|
|`\b`|\<BS\>・バックスペース|
|`\"`|"|
|`\\`|\\・バックスラッシュ|
|`\<Esc>`|\<Esc\>|
|`\<C-W>`|CTRL-W|
※最後の2つは、一例にすぎない。  
`\<name>`形式で"**name**"いう特殊キーを使える。  


<a name="subVariable5"></a>
#### 変数値を使った計算方法

|演算子|意味|備考|
|------|----|----|
|`+`|加算||
|`-`|減算||
|`*`|乗算||
|`/`|整数除算(端数切り捨て)||
|`**`|累乗|ない|
|`//`|除算の商|ない|
|`%`|剰余演算||
|`-[int値]`|否定演算子|
四則演算の優先順位は、一般的な数学の優先順位と同じ。  
また、括弧`()`で囲むことにより、演算を優先させることもできる。  

`:echo 10 + 5 * 2`は、`20`  
`:echo (10 + 5) * 2`は、`30`  

文字列は ".." で連結する。  
`:echo "foo" .. "bar"`の出力結果：`foobar`  


<a name="subVariable6"></a>
#### 型変換(キャスト)方法
様式：
ない？  


<a name="subVariable999"></a>
#### 変数での説明しない項目。

<details><summary>今回は勉強を見送る一覧</summary>

* [x] const定数  
変数宣言の`var`の代わりに`const`を付けることで、定数になる(vim9script)。  
※script8は未対応のようだ。  
様式：
`const [変数名] = [何かしらの値]`  
定数に、スコープ(接頭辞のこと)を指定するのは不可能？  

`v:`の内部変数
|変数|意味|
|----|----|
|`v:count`|最後にノーマルモードコマンドで指定された数|
|`v:count1`|`v:count`とは似て非なるもの。数を指定しない場合はデフォルトの1が入る。|
|`v:errmsg`|最後のエラーメッセージ|
|`v:warningmsg`|最後の警告メッセージ|
|`v:statusmsg`|最後のステータスメッセージ|
|`v:shell_error`|最後のシェルコマンド。0の場合はコマンドの実行が成功した。0以外は失敗したことを示す。|
|`v:this_session`|最後にロードまたは保存したセッションファイルの完全なファイル名|
|`v:version`|Vimのバージョン(小数点はそれを除いた状態で表示：`8.2.2164`→`822164`ってこと？)。|
最後のバージョンは、違うような気がするな・・・。  

* [x] final定数  
代入した値そのものは変えられない(変数の変更不可だ)が、中の値だけならば変更できる(vim9script)。
```vim9
final hogeList = [1, 2]
# hogeList = [3, 4]	# E1018: Cannot assign to a constant: hogeList
hogeList[0] = 99
```

上記の変更後の出力結果：
`[99, 2]`  
2行目でエラーになっているのは、変数の変更を試みたため。  

* [ ] データ型  
  * [ ] 整数(`long`など)  
    これも[歴史](https://github.com/vim-jp/issues/issues/161)がある。  
  * [ ] 浮動小数点型(`double`など)  
    [float](https://vim-jp.org/vimdoc-ja/eval.html#variables)のみある。  
  * [ ] 型推論  
  * [ ] 複素数型  
    ないようだな。  
* [ ] リテラル  
  * [ ] 整数リテラル  
  * [ ] 浮動小数点リテラル  
  * [ ] 文字リテラル  
    文字列リテラルと同じ扱い？  
  * [x] [文字列リテラル](#subVariable4singlequote)  
* [ ] キャスト  
  * [ ] 暗黙変換  
    数値から文字はできるが、逆はできない。  
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

* 絶対的に勉強する一覧  
  * [x] [配列の宣言方法](#subArrangement1)  
        [x] 要素とは。  
        [x] 要素数とは。  
        [x] 添え字とは。  
  * [x] [配列への追加方法](#subArrangement2)  
  * [x] [二次元配列の宣言方法](#subArrangement3)  


**注意事項1**
配列要素は、先頭を0番目として数えていく。  
末尾の要素を取得する場合は、-1を指定することで取得できる。  

**注意事項2**
vim9scriptでの要素の指定は、配列内の要素が多バイト文字に限らず、文字単位で指定できる。  
そのため、今後は、vim9scriptを使っていくべきだと思う。  

**注意事項3**
配列ではなく、正確にはリストのため、スライス取得が可能になっている。  

**注意事項4**
コマンド呼び出しなどは、`call`を添えずに呼び出せる。  
これは、vim9scriptでの使い方であり、script8では`call`を使って呼び出さなければならない。  
しかし、`index`関数などの戻り値を指定する場合は、この限りではない(`let hoge = index(hogeList)`)。  
※vim9scriptを使おうよ。  

ViIMproved本は、配列の説明がなかった。  
やはり、Python2を無視して、Python3を勉強するのが有益なように、vim9scriptを優先した方が良いようだな。  


<a name="subArrangement1"></a>
#### 配列
様式：
`var hogeList = ['hogeList1', 'hogeList2', ]`  
変数と同じく、イコール記号の前後に半角スペースが必要。  
script8でスライスをする場合は、`hogeList[0:1]`のように、コロン`:`の前後を詰めることができる。  
しかし、9になった場合、スペースが必要になる(`[0 : 1]`・`[0 :]`・`[: 1]`・`[:]`)。



以下、script8形式。  
`let [配列名] = ['要素1', '要素2', '要素3']`  
具体例）
`let hogeList = ['boo1', 'bar2', 'Array3']`  
`let ListHoge = []`  

また、script8とは異なり、9の場合に指定する添え字は、文字単位での指定になる(注意事項2)。  
要は、見た目通りに指定できる(script8はバイト単位のため、多バイトを相手する場合意図しない結果が出てくる)。  


<a name="subArrangement2"></a>
#### 配列への追加方法
様式：
`add`
`insert`
`+`
`extend`

* `add`  
既存の配列の末尾に、追加する。  
例）`add(hogeList, 'addListAdd')`  
* `insert`  
既存の配列の先頭に、追加する。  
例）`insert(hogeList, 'insertListInsert')`  
※第3引数への挿入箇所指定追加にて、先頭以外にも追加可能。  
* `+`  
配列同士の結合に使う。  
例）`var newList = hogeList + ListHoge`  
* `extend`  
配列同士の結合に使う。  
例）`extend(hogeList, ListHoge)`  


<details><summary>邪魔なので非表示</summary>

#### 一次元配列からの削除。
コマンド：
`unlet [配列名][要素数]`  
`remove (配列名, 要素数)`  

範囲指定での削除コマンド：
`unlet [配列名][スライス指定]`  
`remove (配列名, 要素数開始, 要素数終了)`  


以下、削除(指定する番号は、先頭を0番目から数えてになる)
```vim
var hogeList = ['hoge1', 'bar1', 'boo1', ]

# 以下のリスト先頭から3番目[配列要素2番目]を削除する('boo1')。
unlet hogeList[2]

# 以下、範囲削除。
unlet hogeList[1:]
```

以下、削除(`remove`を使う場合、削除要素が戻り値になる)。
```vim
var hogeList = ['hoge1', 'bar1', 'boo1', ]

# 以下のリスト先頭から3番目[配列要素2番目]を削除する('boo1')。
var hoge1Ret = remove(hogeList, 0)

# 以下、範囲削除
remove(hogeList, 0, 1)
```


#### 一次元配列での並び替え。
コマンド：
`sort([配列名])`  

```vim
#	並び替え前：['b', 'a', 'd', 'c']
sort(hogeList)
#	並び替え後：['a', 'b', 'c', 'd']
```

#### 一次元配列の空(empty)確認。
コマンド：
`empty([配列名])`  

例）
`if empty(hogeList)`  
`hogeList`が空の場合、if文はtrueになり、if文に入る。  


#### 一次元配列要素の要素番目(index)取得
コマンド：
`index([配列名], [要素])`  

例）
`var hogeIndex = index(hogeList, 'hoge1')`  
`hogeIndex`に、index関数の戻り値として、`hoge1`の要素番号が格納される。  


#### 一次元配列要素の要素数(Length)取得。
コマンド：
`var retLen = len([配列名])`  

例）
`var hogeLen = len(hogeList)`  
`hogeLen`に、hogeListの要素数が格納される。  

</details>


<a name="subArrangement3"></a>
#### 二次元配列の宣言方法
見にくく扱いにくいので使わないかな(理由、以下)。  
配列の中に配列を入れることを言うならば、多次元配列と言えるだろう。  

例）
```vim
var booList = ['hoge1', 'hoge2', ['boo1', 'boo2', ], ['bar1', 'bar2', ], ]
echom booList[3][0]
```
出力結果：`bar1`



以下、script8の例）
```vim
let hogeList = ['boo1', 'bar2', 'Array3', ]
let barList  = ['hoge1', 'boo2', ]

call add(hogeList, barList)
```
出力結果：`['boo1', 'bar2', 'Array3', ['hoge1', 'boo2']]`


<a name="subArrangement999"></a>
#### 配列での説明しない項目。

<details><summary>今回は勉強を見送る一覧</summary>

* 配列の応用  
  * [ ] 3次元配列以上の宣言方法。  
  * [ ] 配列を複製する方法。  
  * [ ] 配列からスライスを作成する方法。  

* 構造体  
  ない？  
  * [ ] 構造体の複製  
  * [ ] 構造体からのスライス作成  
  * [ ] 共用体  
  * [ ] 列挙体  

* コレクション  
  * [x] List  
    配列。  
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
`if`文の条件式は、条件が0でない場合に実行される。  

様式：
```vim
if [条件式]
	処理A。
elseif [条件式]
	処理B。
else
	処理C。
endif
```

以下、条件分岐例）
```vim
def! Function(): string
	if 10 == 0
		echom '10と0は等しい。'
	elseif 10 != 0
		# こっちが実行される。
		echom '10と0は等しくない。'
	else
		echom 'その他'
	endif
	# 実行結果：10と0は等しくない。

	#
	# 以下、文字列比較演算子。
	#
	if 'hoge' ==? 'hOgE'
		echom 'hogeは、hOgEに等しい(==?)。'
	endif
	# 実行結果：hogeは、hOgEに等しい(==?)。

	return 'vim9script関数内の条件分岐'
enddef
echom Function()
"	出力結果：vim9script関数内の条件分岐
```

<a name="subConditional2"></a>
#### 論理演算子(ド・モルガンの法則)

|演算子|意味|備考|
|------|----|----|
|`&&`|論理積||
|`||`|論理和||

<a name="subConditional3"></a>
#### 比較演算子

論理演算子(両方値である必要がある)
|演算子|意味|備考|
|------|----|----|
|`==`|等号||
|`!=`|不等||
|`>`|より大きい||
|`<`|より小さい||
|`>=`|以上||
|`<=`|以下||
※普段は文字列扱いだが、この演算子を用いた場合、文字列が整数に自動変換される。  


文字列比較演算子(両方が文字列である必要がある)
|演算子|意味|
|------|----|
|`==?`|文字列として等しい(大小文字区別なし)|
|`==#`|文字列として等しい(大小文字区別あり)|
|`!=?`|文字列として等しくない(大小文字区別なし)|
|`!=#`|文字列として等しくない(大小文字区別あり)|
|`<?`|文字列として小さい(大小文字区別なし)|
|`<#`|文字列として小さい(大小文字区別あり)|
|`<=?`|文字列として小さいかまたは等しい(大小文字区別なし)|
|`<=#`|文字列として小さいかまたは等しい(大小文字区別あり)|
|`>?`|文字列として大きい(大小文字区別なし)|
|`>#`|文字列として大きい(大小文字区別あり)|
|`>=?`|文字列として大きいかまたは等しい(大小文字区別なし)|
|`>=#`|文字列として大きいかまたは等しい(大小文字区別あり)|
※基本的に変数内の値は文字列として処理される。  


<a name="subConditional3reg"></a>
比較演算子(正規表現：比較？検索？)
|演算子|意味|
|------|----|
|`文字列==文字列`|文字列比較|
|`文字列=~正規表現`|正規表現が一致する|
|`文字列!~正規表現`|正規表現が一致しない|
例）
`"word" =~ "\w*"`  
※これら3種類は、大小文字区別は設定次第となっており、`ignorecase`に依存する。  
ただし、これはscript8に限ることであり、vim9scriptでは設定の影響を受けない。  


<a name="subConditional999"></a>
#### 条件分岐での説明しない項目。

<details><summary>今回は勉強を見送る一覧</summary>

* 多岐分岐-条件にて複数から選ぶ。  
  基本構造例：switch  
  **vim script**にはないようだ。  
  ないが、無理矢理使うのであれば、`if〜elseif`での代用になる。 

* 関係演算子  
  * [x] 三項演算子(`?:`)  
    `a ? b : c`  
    `a`が真ならば`b`を使い、
    そうでなければ`c`を使う。  
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
    基本構造例：for( 条件式 )  
    できない(`in`を付ける必要があるため、通常の条件式は付けられない)。  
    [x] [基本構造例：拡張for命令(`in`)](#subRepetition3)  
    [x] [`for`の入れ子。](#subRepetition4)  
  * [ジャンプ処理](#subRepetition5)  
    * [x] break  
    * [x] continue  
  * [x] [真偽条件での繰り返し](#subRepetition6)  
    [x] [基本構造例：while( 条件式 )](#subRepetition6)  
    [x] [無限ループ](#subRepetition7)  


<a name="subRepetition1"></a>
#### ~~繰り返し~~ 指定回数条件での繰り返し
様式：指定回数繰り返す。
```vim
for [変数名] in range([指定回数])
	処理
endfor
```
`while`より、よほど便利に使える。  

vim9scriptでのforを使った配列要素を削除する場合、script8との結果が異なる。  
注意する必要はあるが、そもそもforで削除しなければ良いだけ。  
そのため、サンプルコードも用意しない。  

ファイルから指定行を取り出しての処理もお手の物。  

以下、実行例）
```vim
def! Bar(): string
	for ii in range(3)
		echom ii .. '回目の実行'
	endfor
#		出力結果：
#				0回目の実行
#				1回目の実行
#				2回目の実行

	return 'vim9script用繰り返し処理'
enddef
echom Bar()


" 以下、ステップ実行の逆方向
def! BarReverseRange(): string
	for ii in range(10, 3, -3)
		echom ii .. '回目の実行'
	endfor
#		出力結果：
#			10回目の実行
#			7回目の実行
#			4回目の実行

	return '負のステップ実行'
enddef
echom BarReverseRange()
```

<a name="subRepetition2"></a>
##### 指定回数条件での繰り返し：for( 条件式 )
条件式での繰り返しはできないようだ。  


<a name="subRepetition3"></a>
##### 指定回数条件での繰り返し：拡張for命令
[様式](https://vim-jp.org/vimdoc-ja/eval.html#:for)：
```vim
for [変数名] in [配列名]
	処理
endfor
```

ViIMproved本は、`for`の説明がなかった。  

別様式：多次元配列の取扱い。
```vim
多次元配列名 = [[1, 2], [3, 4], [5, 6], ]
for [変数名1, 変数名2] in [多次元配列名]
	処理
endfor
```
例）
`for [hoge, boo] in [['hoge1', 'boo1'], ['hoge2', 'boo2'], ['hoge3', 'boo3']`  
1回目の処理では、`hoge`変数`hoge1`が代入されており、`boo`変数に`boo1`が代入されている。  
2回目以降でも同様に次々1つづつ値が代入されて処理されていく。  

以下、実行例）
```vim
def! Bar(): string
	var hogeList = ['hoge', 'bar', 'b o o']
	for bar in hogeList
		echom bar
	endfor
#		出力結果：
#				hoge
#				bar
#				b o o

	return 'vim9script用繰り返し処理'
enddef
echom Bar()
```


<a name="subRepetition4"></a>
#### `for`の入れ子。
扱いが難しい。  

```vim
let g:hogeList=['hoge', 'boo', 'bar']

def! Hoge(): bool
	for b:value in g:hogeList
		for ii in range(3)
			echom ii .. ":" .. b:value
		endfor
	endfor

	return v:true
enddef
echom Hoge()
```


<a name="subRepetition5"></a>
#### ジャンプ処理
[break](#break文使用例)：`endwhile` までジャンプしてループを脱ける。  
[continue](#continue文使用例)：ループの先頭にジャンプしてループを継続する。  

<a name="break文使用例"></a>
例）[break文使用](https://vim-jp.org/vimdoc-ja/eval.html#:break)
```vim
while ii < 5
	echom ii .. '回目の実行'
	if ii == 3
		break
	endif
	ii += 1
endwhile
```

以下、実行結果
```text
1回目の実行
2回目の実行
```

<a name="continue文使用例"></a>
例）[continue文使用](https://vim-jp.org/vimdoc-ja/eval.html#:continue)
```vim
var ii = 1
var jj = 0
while ii < 5
	echom ii .. '回目の実行(jj値：' .. jj .. ')'
	if jj > 10
		" この処理がなければ無限ループになる。
		break
	endif
	jj += 1
	if ii == 2
		continue
	endif
	ii += 1
endwhile
```

以下、実行結果
```text
1回目の実行(jj値：0)
2回目の実行(jj値：1)
2回目の実行(jj値：2)
2回目の実行(jj値：3)
2回目の実行(jj値：4)
2回目の実行(jj値：5)
2回目の実行(jj値：6)
2回目の実行(jj値：7)
2回目の実行(jj値：8)
2回目の実行(jj値：9)
2回目の実行(jj値：10)
2回目の実行(jj値：11)
```


<a name="subRepetition6"></a>
#### 真偽条件での繰り返し：while( 条件式 )
[様式](https://vim-jp.org/vimdoc-ja/eval.html#:while)：
```vim
while [条件式]
	処理。
endwhile
```
条件式が真である間、処理が実行される。  

例）
```vim
var ii = 1
while ii < 5
	echom ii .. '回目の実行'
	ii += 1
endwhile
```

以下、実行結果
```text
1回目の実行
2回目の実行
3回目の実行
4回目の実行
```


<a name="subRepetition7"></a>
#### 無限ループ
様式：
様式：`while 0 == 0`  
`for`での無限ループはできそうになかった。  


<a name="subRepetition999"></a>
#### 繰り返しでの説明しない項目。

<details><summary>今回は勉強を見送る一覧</summary>

* [ ] 真偽条件での繰り返し  
  基本構造例：do〜while( 条件式 )  
  ないようだ。  

</details>

</details>


<a name="function関数"></a>
<details><summary>実際の関数の勉強</summary>

### 関数
vim9scriptに限定して説明したつもり。  

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

> Vim9 script の主な目的は劇的な性能の向上です。  
> パフォーマンスの向上は、100% の下位互換性を捨てることによってのみ達成しうるものです。  
> たとえば、関数の引数を辞書 "a:" から利用できるようにするためには、かなりのオーバーヘッドが必要になります。  
> そのため、Vim9 script では、この辞書が利用できなくなりました。  
> その他の違いは、エラーの処理方法など、より微細なものです。  
> Vim9 script は以下の場所で使用することができます:  
> - コマンド`:def`で定義された関数の中  
> - コマンド`vim9script`で始まるスクリプトファイルの中  
> - 上記のコンテキストで定義された自動コマンド  
> - コマンド修飾子`vim9cmd`が先頭に付いたコマンド  
>
> Vim9 スクリプトファイルの中でコマンド`:function`で関数を定義すると、その中では旧来の Vim script の記法が、最新の scriptversion とともに有効になります。  
> しかし、これは混乱を招く可能性があるため、推奨できません。  
>
> Vim9 script と旧来の Vim script は同時に利用できます。
> 古いスクリプトを書き換えなくとも、以前と同様に実行することが可能です。  
> 高速化が必要なコードには、`:def`で定義する関数を使ったほうが良いかもしれません。  

引用形式にしているが、`で括っているのは私が勝手にしている。  
また、パターンでの作用は、ユーザの設定に影響せず、かならず[マジック](https://vim-jp.org/vimdoc-ja/pattern.html#/magic)が有効になって動く。  


<a name="subFunction1"></a>
#### 関数
もしかして、引き数値を書き換えることは出来ない？  

様式(vim9script)：
```vim
def[!] [関数名]([引数])[: 戻り値型名]
	処理。
	[return 変数]
enddef
```
以下、上記を展開。  
`def! [関数名]()`
引数及び戻り値無し。  
`def! [関数名](): 戻り値型`
戻り値必須。  
`def! [関数名]([引数]: [デフォルト値])`
引数必須。  
`def! [関数名]([引数] = [デフォルト値])`
引数任意。  
`def! [関数名]([引数]: [型] = [デフォルト値])`
引数任意(型付けあり)。  


**注意事項1**
関数名は、先頭を大文字にしなければならない。  

**注意事項2**
スクリプトが複数回読み込まれることがあるため、`def`直後には`!`記号を付け、関数の再定義を行い、再読み込みに耐えうるようにすべき。  
※複数回の実行はエラーになる。  

**注意事項3**
関数名の後ろに戻り値型を未記入にするか、`void`にした場合、戻り値を返さないことになる。  

**注意事項4**
関数の作成は、呼び出すよりも先に作っておく必要がある。  

**注意事項5**
スクリプトが呼び出され、関数がコンパイルされた場合、その関数を削除もしくは変更することは出来ない。  
そして、スクリプト呼び出しごとに関数や変数は再作成する(今までのはなかったことになるようだ)。  

**注意事項6**
関数呼び出しの場合には、`call`を付けずに関数呼び出しができる。  

**注意事項7**
> 引数は "a:" のプリフィックス無しで使われる(vim9script)。  
> 型をケアしない場合や関数が多型で動くなら、"any" 型を使うことができます。  


以下、引数なしの戻り値あり。
```vim
def! hoge(): string
	var ret = 'hoge関数(引数無し)戻り値あり'

	return ret
enddef
echom hoge()
```

以下、引数必須の戻り値あり。
```vim
def! hoge( argg: string ): string
	var ret = argg .. '：hoge関数(引数あり: 必須)戻り値あり'

	return ret
enddef
echom hoge( '関数を呼ぶ' )
```

以下、引数任意の戻り値あり。
```vim
def! hoge( argg = '引数無し' ): string
	var ret = argg .. '：hoge関数(引数あり = 任意)戻り値あり'

	return ret
enddef
echom hoge( '関数引数' )
```

以下、引数任意の型付けあり、および戻り値あり。
```vim
def! hoge( argg: string = '引数無し(型付け)' ): string
	var ret = argg .. '：hoge関数(引数あり:型 = 任意)戻り値あり'

	return ret
enddef
echom hoge( '関数を呼ぶ(引数)' )
```

上記の関数は、全てローカル内で使える関数になる。  
グローバルスコープにするには、接頭辞の`g:`を付ける必要がある。  
例）
`def! g:hoge()`  
また、呼び出し側も接頭辞を付け、`g:hoge()と呼び出す。`  

オートロードも出来るようだ。  


<a name="subFunction2"></a>
#### スコープ
vim9scriptの場合、関数内で`a:`は付けられない。  

変数名に、接頭辞を置き、スコープ範囲を指定できる。
|接頭辞|意味|
|------|----|
|`g:`|グローバルスコープ(スコープが指定されていないときのデフォルト値:script8)|
|`v:`|Vimによって定義されたグローバルスコープ|
|`l:`|関数ローカルスコープ|
|`b:`|バッファローカルスコープ|
|`w:`|ウィンドウローカルスコープ|
|`t:`|タブローカルスコープ|
|`s:`|`:source`されたVim scriptに対してローカルスコープ|
|`a:`|関数の引数|
※vim9scriptの場合は、デフォルトがスクリプトローカルスコープになる。  
そして、ブロック`{}など`を抜けた場合、その変数は破棄される。  
vim9scriptでは`unlet`が使えないようだ。  
そもそも関数から抜け出た時点で破棄されるのだから使えなくて問題ないのか。  


<a name="subFunction999"></a>
#### 関数での説明しない項目。

<details><summary>今回は勉強を見送る一覧</summary>

* 標準的な関数  
  * [ ] クラス  
  * [ ] 可変長引数  
  * [ ] 再帰関数  
  * [ ] 高階関数  
    変数の応用部分で説明する？  
    そもそもない？  
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
勉強内容はPythonと基本は同じ。  
それをvimScript9用に移植するだけのこと。  

<details><summary>展開</summary>

* ルールもPythonと同じ。  
  * 点数を配列で定義する。  
    `var hogeList = [70, 98, 92, 88, 64]`  
  * `for`を用いる。  

```vim
def! Average(): list<number>
	" 数字を配列で用意する。
	var score = [70, 98, 92, 88, 64]
	" 合計値用の変数。
	var total = 0

	" 配列要素値を1つづつ取り出す。
	for value in score
		" それを合計する。
		total += value
	endfor
	" 合計値を配列要素数で割る。
	var average = total / len(score)

	" 合計値と平均値を呼び出し元に戻す。
	var retList = [total, average]
	return retList
enddef
let aveList = Average()
"echom Average()
"	出力結果：[412, 82]

" 以下、出力結果。
echom "合計値：" .. aveList[0]	" 合計値：412
echom "平均点：" .. aveList[1]	" 平均点：82
```
※不思議なことに、変数名の前に`l:`・`b:`・`s:`のどれを付けてもエラーになった。  
どういうこと!?  

</details>


<a name="addFrom1tonChapter2"></a>
#### 1からnまで足し合わせる。
勉強内容はPythonと基本は同じ。  
それをvimScript9用に移植するだけのこと。  

<details><summary>展開</summary>

* ルール1もPythonと同じ。  
  * `for`を用いる。  
  * 関数は定義しない・・・無理だよね。  
    関数で使い回すわけではないので、由としよう。  

```vim
def! Addup1(): number
	var total = 0
	for b:ii in range(1, 10)
		total += b:ii
	endfor

	return total
enddef
let b:total = Addup1()
echom b:total
"	出力結果：55
```

* ルール2もPythonと同じ。  
  * nまでの値を関数の引数で受け取る。  
  * 関数内で合算した結果をreturnで返す。  
    あぁルール1でやったことだよ・・・。  

```vim
def! Addup2( argnum = 0 ): number
	var total = 0
	for ii in range( 1, argnum )
		total += ii
	endfor

	return total
enddef
let total = Addup2(10)
echom total
"	出力結果：55
```
`argnum += 1`がエラーになった。  
何でだよ。  
文字などを引数に渡した場合エラーになる。  

* ルール3もPythonと同じ。  
  * 工夫して計算する。  
  * (初めの数+終わりの数)*(足し合わせる個数/2)  

```vim
def! Addup3( argnum = 0 ): number
	var num = argnum
	var total = (1 + num) * num / 2

	return total
enddef
let total = Addup3(10)
echom total
"	出力結果：55
```

* その他  
```vim
def! AddupGauss( argnum1 = 0, argnum2 = 0 ): number
	var num1 = 0
	var num2 = 0
	if argnum2 <= 0
		num2 = argnum1
		num1 = 1
	else
		num1 = argnum1
		num2 = argnum2
	endif
	var count = num2 - num1 + 1.0

	var total = float2nr((num1 + num2) * count / 2.0)

	return total
enddef
echom AddupGauss(10)
"	出力結果：55
echom AddupGauss(1, 10)
"	出力結果：55
```

</details>


<a name="outputTheMultiplicationTableChapter2"></a>
#### 九九の式を出力する。
Pythonでやったように、九九の式を出すのではなく、九九表を出すことにする。  
ルールはPythonと同じ。  

<details><summary>展開</summary>

* 作業ルール。  
  * 二重ループを使う。  

以下、いつも通りの九九表出力。
```vim
def! KukuTable(): number
	for ii in range(1, 9)
		var outputkuku = ""
		for jj in range(1, 9)
			outputkuku = outputkuku .. printf("%3d", ii * jj)
		endfor
		outputkuku = outputkuku[2 :]
		echom outputkuku
	endfor

	return 0
enddef
call KukuTable()
```

以下、出力結果
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
いつもの九九表ができあがった。  

</details>


<a name="findAPrimeNumberChapter2"></a>
#### 素数を求める。
素数とは、1とその数以外に約数を持たない2以上の自然数のこと。  

<details><summary>展開</summary>

Pythonに倣い、試す数は**2〜2分のn**までの数で割ることを調べる方法をとる。  
例えば、10を調べる場合、その半分より大きい数(**6**・**7**・**8**・**9**)では、10を割ることが出来ない。  
そのことを利用した方法で素数を求める。  

* 素数を求めるルール  
  * 二重ループを使う。  
  * 2から2分のnまでの数で割る。  
    ※それらの数で割り切れなければ素数。  

以下、素数を求めるプログラム。
```vim
def! Prime(): number
	var outputprime = ""
	for ii in range(2, 100)
		var hh = ii / 2
		var ff = v:true
		for jj in range(2, hh)
			if ii % jj == 0
				ff = v:false
				break
			endif
		endfor
		if ff == v:true
			outputprime = outputprime .. printf("%d,", ii)
		endif
	endfor
	echom outputprime

	return 0
enddef
call Prime()
```

出力結果
```text
2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,
```

</details>


<a name="findTheFactorialOfNChapter2"></a>
#### nの階乗を求める。
**階乗とは**
1からnまでの全ての整数の積をnの階乗という。  

<details><summary>展開</summary>

**再帰関数**
関数内から自身の関数を呼び出すことを再帰処理という。
また、その呼び出す仕組みの関数を再帰関数という。  
[Vim script の再帰回数について](https://github.com/vim-jp/issues/issues/270)200回が限界値に設定されている。  

以下、再帰関数例）
```vim
def! Factorial( args = '0' ): number
	var num = len(args) - 1
	if num > 0
		echom printf("再帰関数%d回目の実行及び出力内容：%s", num, args)
		num -= 1
		Factorial(args[0 : num])
	endif
	if len(args) <= 1
		echom printf("再帰関数%d回目の実行及び出力内容：%s", num, args)
	endif

	return num
enddef
call Factorial("hoge")
```
無理矢理再帰関数を作ったが、意図した動きをしてくれない(Python・Perlの挙動と異なる)。  

以下、実行結果
```terminal
再帰関数3回目の実行及び出力内容：hoge
再帰関数2回目の実行及び出力内容：hog
再帰関数1回目の実行及び出力内容：ho
再帰関数0回目の実行及び出力内容：h
```

* ルール  
  再帰関数を使う。  
  * 再帰関数の定義ルール  
    * `n = 0`
      **n! = 1**  
    * `n > 0`
      **n! = n * (n-1) * (n-2) * ・・・ * 2 * 1**
      nから1引いた数を掛け、さらに1づつ引き続けながらnが1にまるまで続ける。  

以下、20の階乗の結果のみを求めている。
```vim
def! Factorial3( arg = 0): number
	var ret = 0
	if arg == 0
		ret = 1
	else
		ret = arg * Factorial3(arg - 1)
	endif

	return ret
enddef
echom Factorial3(20)
```

以下、実行結果
```terminal
2432902008176640000
```
桁が大きいため、本当に合っているのかいつも不安になる。  

</details>


<a name="eratosthenesSieveChapter2"></a>
#### エラトステネスの篩
効率よく素数を求めることができるアルゴリズムのこと。  

<details><summary>vim9scriptプログラム</summary>

```vim
def! Main()
	var eratosthenes = []
	for ii in range( 100 )
		add(eratosthenes, true)
	endfor
	eratosthenes[0] = false
	eratosthenes[1] = false

	var notprime = 2
	Show(eratosthenes)

	while notprime < 10
		var retfurui = Eratosthenes(notprime, eratosthenes)
		# 1つ目の要素は、ふるいにかける値
		notprime = retfurui[0]
		# 2つ目の要素は、表の中身(2次元配列になっているのを取り出す)
		eratosthenes = retfurui[1]
	endwhile
enddef

def! Show( eratosthenes: list<bool> ): list<bool>
	var output = ""
	for ii in range(100)
		if eratosthenes[ii] == true
			output = printf("%s %2d,", output, ii)
		else
			output ..= "  /,"
		endif

		if ii % 10 == 9
			echom output
			output = ""
		endif
	endfor

	return eratosthenes
enddef

def! Eratosthenes(notprime: number, eratosthenes: list<bool>): any
	var argnotprime = notprime
	for ii in range( (argnotprime * 2), 100, argnotprime)
		eratosthenes[ii] = false
		ii += argnotprime
	endfor

	echom ""
	echom argnotprime .. "の倍数をふるい落とした。"
	Show(eratosthenes)

	while argnotprime < 100	# 次にふるい落とす数。
		argnotprime += 1
		if eratosthenes[argnotprime] == true
			break
		endif
	endwhile

	# 複数の戻り値が出来ないため、1つのリストにまとめた。
	return [argnotprime, eratosthenes, ]
enddef

call Main()
```

</details>

<details><summary>vim9scriptプログラムの出力結果</summary>

以下、出力結果。
```text
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

2の倍数をふるい落とした。
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

3の倍数をふるい落とした。
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

5の倍数をふるい落とした。
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

7の倍数をふるい落とした。
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

残念ながらアルゴリズムを理解せずに構築したため、本当にこれが最適解なのか分からない。  
しかし、まずは1冊読破することを優先する。  


<a name="understandnAryNotationChapter2"></a>
#### n進法を理解する。
アルゴリズムの1つとして勉強することではない。  
普通の一般説明。  

<details><summary>展開</summary>

```vim
def! Main()
	echom "2進数表記"
	echom 0b11111111 .. ", " .. 0b0 .. ", " .. 0b10101010 .. ", " .. -0b1 .. ", " .. 0b1 .. ", " .. 0b1001101000110010011101110
				# 255, 0, 170, -1, 1, 20210926
	echom 0B11111111 .. ", " .. 0B0 .. ", " .. 0B10101010 .. ", " .. -0B1 .. ", " .. 0B1 .. ", " .. 0B1001101000110010011101110
				# 255, 0, 170, -1, 1, 20210926

	#echom "マイナス記号を付けた場合、引き算が行われる。" .. 0b1 - 0b1
				# E1036: - requires number or float arguments
	echom "マイナス記号を付けた場合、引き算が行われる。" .. (0b1 - 0b1)
				# マイナス記号を付けた場合、引き算が行われる。0

	echom "8進数表記"
	echom 0o377 .. ", " .. 0o0 .. ", " .. 0o252 .. ", " .. -0o1 .. ", " .. 0o1 .. ", " .. 0o115062356
				# 255, 0, 170, -1, 1, 20210926

	echom "10進数表記"
	echom 255 .. ", " .. 0 .. ", " .. 170 .. ", " .. -1 .. ", " .. 1 .. ", " .. 20210926
				# 255, 0, 170, -1, 1, 20210926

	echom "16進数表記"
	echom 0xff .. ", " .. 0x00 .. ", " .. 0xAA .. ", " .. -0x1 .. ", " .. 0x1 .. ", " .. 0x13464EE
				# 255, 0, 170, -1, 1, 20210926

enddef

call Main()
```

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
