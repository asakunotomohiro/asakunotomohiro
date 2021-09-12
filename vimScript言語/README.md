# vimScript言語
ここは、プログラミング言語のvimScript言語を勉強するブランチになる。  
※Vimの操作は別とする。  

## ブランチの利用方法
ここのブランチは、書籍からのアルゴリズム勉強に使う。  
また、具体的なアルゴリズムの種類は、下記書籍の目次チャプターに限定する。  

## 勉強方法
本格的な勉強ではないが、[公式ページ](https://vim-jp.org)だけで話を進めることはない。  
そして、[Vim日本語ドキュメント](https://vim-jp.org/vimdoc-ja/)の[Vim9 script](https://vim-jp.org/vimdoc-ja/vim9.html)は参照する(script8では古いからな)。  
vim script 8以前の[Vim script 書法](https://vim-jp.org/vimdoc-ja/usr_41.html)と最新版では書き方が異なる。  
困る。  

> Vim9 script の主な目的は劇的な性能の向上です。これは、コマンドをより効率よく実行できる命令にコンパイルすることで実現しています。  
> これにより、10倍から100倍の実行速度の向上が期待できます。  
>
> 第2の目的は、Vim script 特有の文法を回避し、より一般的に使われる JavaScript や TypeScript、Java のようなプログラミング言語に近づけることです。  

以下の書籍を購入済み。  
[マスタリングVim](https://gihyo.jp/book/2020/978-4-297-11169-4)  
この**第8章**からスクリプトを勉強していくことにする。  
※当書籍はVer8だが、世の中に出回っている最新版は9だ。  
※[ViIMproved](https://gihyo.jp/book)の **27章 式と関数** に、スクリプトが掲載されていた(どちらにしても最新版には未対応)。  

## 開発環境
当たり前のように、`MacVim`を使う。  
vimScriptなのに、他のIDEを使う人はいるのだろうか!?  

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
  * [x] [条件分岐](#Conditional条件分岐)  
  * [x] [繰り返し](#repetition繰り返し)  
  * [x] [関数](#function関数)  

</details>

* [アルゴリズム勉強目次](#algorithmTextbookLearnedinPython)  
  * [x] Chapter 1 プログラミングの基礎知識  
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

<details><summary>基礎知識5種類の作業手順</summary>


### 具体的な基礎知識
何はともあれ、まずは、"Hello World"を表示するプログラムを作る。  
そのため、以下の手順で勉強を進めることにする。  

[x] 手順1. 勉強用のブランチに移動する。  
[x] 手順2. ルートディレクトリのひな形ディレクトリをコピーしてくる。  
[x] 手順3. コピーしてきたディレクトリ名を"基礎知識用の勉強"に変更する。  
[x] 手順3-1. `helloWorld.[言語用の拡張子]`のファイルを作り、おなじみ"Hello World."プログラムを作る。  
[x] 手順3-2. main関数不要であれば、"**実行済み**"ディレクトリ不要になるはず、削除すること。  
[x] 手順3-3. コミットする。  
[x] 手順4. 各ディレクトリで、5種類(変数・配列・条件分岐・繰り返し・関数)の"絶対的に勉強する一覧"を勉強する。  
[x] 手順4-1. 箇条書きごとに勉強を進める。  
[x] 手順4-2. 箇条書きごとに勉強を終えることで、コミット実施する。  
[x] 手順4-3. 次の箇条書きに移り、勉強を継続(再開)する。  
[x] 手順5. 1つのプログラミング言語で、手順4の勉強1種類を終えた時に、次のプログラミング言語に移る。  
[x] 手順6. 上記、5種類の基礎知識を終わるまで繰り返す。  
[x] 手順7. 5種類の基礎知識終了にて、"study2programming"ブランチにマージする。  

勉強環境のコンパイルバージョン：Ver8.0(違うぞ？)  
```terminal
$ vim --version
VIM - Vi IMproved 8.0 (2016 Sep 12, compiled Jan 14 2021 20:35:46)
Included patches: 1-503, 505-680, 682-1283, 1365
Compiled by root@apple.com
Normal version without GUI.  Features included (+) or not (-):
+acl             +file_in_path    -mouse_sgr       +tag_old_static
-arabic          +find_in_path    -mouse_sysmouse  -tag_any_white
+autocmd         +float           -mouse_urxvt     -tcl
-balloon_eval    +folding         +mouse_xterm     -termguicolors
-browse          -footer          +multi_byte      -terminal
+builtin_terms   +fork()          +multi_lang      +terminfo
+byte_offset     -gettext         -mzscheme        +termresponse
+channel         -hangul_input    +netbeans_intg   +textobjects
+cindent         +iconv           +num64           +timers
-clientserver    +insert_expand   +packages        +title
-clipboard       +job             +path_extra      -toolbar
+cmdline_compl   +jumplist        -perl            +user_commands
+cmdline_hist    -keymap          +persistent_undo +vertsplit
+cmdline_info    +lambda          +postscript      +virtualedit
+comments        -langmap         +printer         +visual
-conceal         +libcall         -profile         +visualextra
+cryptv          +linebreak       +python/dyn      +viminfo
+cscope          +lispindent      -python3         +vreplace
+cursorbind      +listcmds        +quickfix        +wildignore
+cursorshape     +localmap        +reltime         +wildmenu
+dialog_con      -lua             -rightleft       +windows
+diff            +menu            +ruby/dyn        +writebackup
+digraphs        +mksession       +scrollbind      -X11
-dnd             +modify_fname    +signs           -xfontset
-ebcdic          +mouse           +smartindent     -xim
-emacs_tags      -mouseshape      +startuptime     -xpm
+eval            -mouse_dec       +statusline      -xsmp
+ex_extra        -mouse_gpm       -sun_workshop    -xterm_clipboard
+extra_search    -mouse_jsbterm   +syntax          -xterm_save
-farsi           -mouse_netterm   +tag_binary
   system vimrc file: "$VIM/vimrc"
     user vimrc file: "$HOME/.vimrc"
 2nd user vimrc file: "~/.vim/vimrc"
      user exrc file: "$HOME/.exrc"
       defaults file: "$VIMRUNTIME/defaults.vim"
  fall-back for $VIM: "/usr/share/vim"
Compilation: gcc -c -I. -Iproto -DHAVE_CONFIG_H   -DMACOS_X_UNIX  -g -O2 -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1
Linking: gcc   -L/usr/local/lib -o vim        -lm -lncurses  -liconv -framework Cocoa
$
```
コンソール上とGUIではバージョンが合わない。  
MacVimバージョン：8.2.2164  

プログラムファイルの拡張子：`*.vim`  
実行方法：(vimエディタを起動した状態で)`:source ファイル名`  
標準の文字コード(プログラムファイル)：UTF-8？  
文字区切り(行末記号)：改行  
インデント：フリーフォーマット  
　　if文などの処理部分は、インデントを付けるかどうかをユーザが任意で決める。  
標準の出力関数：`echo`・`echon`・`echom`  
コメント方法：`"`  
　　※プログラムの仕様上プログラム処理より右側にコメントを付けられない場合がある。  
コメント方法：`#`  
　　※vimScript9の場合のコメント方式。逆に`"`は使えない。  

</details>

#### ※注意事項
アルゴリズムを勉強することが目的であるため、理解すること。  
しかし、やる気を維持するためにも1冊分を読了させることも目的として、深掘りせずに進めることも考慮すること。  
要は、深く踏み込むか、流し読み程度に抑えるかどうかはそのときに決める。  

何より、書籍記載のアルゴリズムは、サンプルとして公式ページからダウンロードできる。  
そのため、書籍通りに進めるわけには行かず、自分なりに理解できるやり方で勉強した場合、当然ながら時間が掛かり、踏み込む必要が発生するだろう。  
それでも読了も達成したいため、なかなか両立は、難しい・・・と思い込んでいるが、実際は流し読み程度に抑え、サクサク勧めていこうと思う。

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

<details><summary>アルゴリズム問題解決の作業手順</summary>

### 具体的なアルゴリズム問題解決前手順
基礎知識5種類を勉強するのと同じように、アルゴリズムの勉強にも以下の手順で進める。  

* 以下、手順。  
  * [x] 手順1. 勉強用のブランチに移動する(上記目次の1チャプター分専用ブランチとする)。  
  * [x] 手順2. ルートディレクトリのひな形ディレクトリ配下の必要なディレクトリをコピーする。  
    **Pythonで学ぶアルゴリズムの教科書 一生モノの知識と技術を身につける** ディレクトリ配下の必要なチャプター用ディレクトリ。  
  * [x] 手順3. 当ファイル(`README.md`)の書き換えを行う。  
  * [x] 手順3-1. 勉強対象のチャプター子部分にチェックリストを付ける。  
        ※ **上位ディレクトリにある"README.md"** は触らない。  
  * [x] 手順3-2. 目次部分を修正する。  
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

<a name="variable変数sub"></a>
<details><summary>実際の変数の勉強</summary>

### 変数
値の格納方法と言える。  
複雑な説明はしない。  

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
      * [ ] 累乗(`**`)  
        ない？(`pow()`を使う？)  
      * [ ] 割り算の商(`//`)  
        ない？(`/`で十分？)  
      * [x] 割り算の余り(`%`)  
  * [型変換(キャスト)方法](#subVariable6)  
    * [ ] 明示変換  
      ない？  


<a name="subVariable1"></a>
#### 変数
ここで言う変数とは、プログラマが普通にプログラミングに使う変数を指す。  
と言うのも、内部オプション変数というのがVimにあり、これはVimエディタの設定を変更するのに使う変数だからだ(例：`set background=dark`)。  

[Vim script 言語 の変数41.2](https://vim-jp.org/vimdoc-ja/usr_41.html#41.2)  
> 変数名にはアルファベット、数字、アンダースコアが使えます。変数名を数字で開始することはできません。


<a name="subVariable2"></a>
#### 変数への代入方法及び変数の利用
変数の宣言：
`let [変数名]`  

vim9script：
`var [変数名]`  
代入式：
`var [変数名] = [値]`  
script8と異なり、イコール記号の前後に半角スペースが必要。  

変数の代入：
他のプログラミング言語のように、型が決められているのではない。  
代入時に変化する。  
しかし、それは、文字列型と数値型の話であり、他のデータ型はエラーになるようだ。  
そして、関数の戻り値を設定する場合は、型付けを厳格に決める必要がある。  


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
変数を宣言した場合、メモリを消費する(スクリプト実行後も変数は宣言された状態を維持する)。  
そのため、使い終わった変数は自前で破棄した方が良いようだ。  
様式：
`unlet [変数名]`  
`unlet [接頭辞][変数名]`  

変数が存在しない時に破棄した場合、エラーになる。  
そのエラーを抑止することもできる(感嘆符`!`を`unlet`の後ろに付ける)。  
様式：
`unlet! [変数名]`  
`unlet! [接頭辞][変数名]`  

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

#### const定数(vim9script)
変数宣言の`var`の代わりに`const`を付けることで、定数になる。  
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


#### final定数(vim9script)
代入した値そのものは変えられない(変数の変更不可だ)が、中の値だけならば変更できる。  

```vim9
final hogeList = [1, 2]
# hogeList = [3, 4]	# E1018: Cannot assign to a constant: hogeList
hogeList[0] = 99
```

上記の変更後の出力結果：
`[99, 2]`  
2行目でエラーになっているのは、変数の変更を試みたため。  

<a name="subVariable3"></a>
#### 変数値の出力方法

以下、script8のプログラム。
```vim
let g:ver = v:version
echo g:ver
" 出力結果：802
```

<a name="subVariable4"></a>
#### データ型
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
#### 演算子

算術演算子
|演算子|意味|
|------|----|
|`+`|加算|
|`-`|減算|
|`*`|乗算|
|`/`|整数除算(端数切り捨て)|
|`%`|剰余演算|
|`-[int値]`|否定演算子|
四則演算の優先順位は、一般的な数学の優先順位と同じ。  
また、括弧`()`で囲むことにより、演算を優先させることもできる。  

`:echo 10 + 5 * 2`は、`20`  
`:echo (10 + 5) * 2`は、`30`  

文字列は ".." で連結する。  
`:echo "foo" .. "bar"`の出力結果：`foobar`  


<a name="subVariable6"></a>
#### 型変換(キャスト)方法
ない？  


#### ファイル名入力
todo: これなんだっけ？  

* ファイル名指定特殊文字  
* ファイル名修飾子  

<a name="subVariable999"></a>
#### 変数での説明しない項目。

<details><summary>今回は勉強を見送る一覧</summary>

* [x] 定数  
* [ ] データ型  
  * [ ] 整数(`long`など)  
    これも[歴史](https://github.com/vim-jp/issues/issues/161)がある。  
  * [ ] 浮動小数点型(`double`など)  
    [float](https://vim-jp.org/vimdoc-ja/eval.html#variables)のみある。  
  * [ ] 型推論  
    ない？(あるとは思うが・・・)  
  * [ ] 複素数型  
    そもそもコレ何？  
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
    ない？  

* 関数を変数に代入  
* 関数を引数に使う  

</details>

</details>


<a name="arrangement配列sub"></a>
<details><summary>実際の配列の勉強</summary>

### 配列
Pythonと同じように、リストを配列として扱う。  
そして、Pythonでも扱わない辞書は、今回の勉強で扱わないことにする(機会があればね・・・)。  

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
#### 一次元配列
様式：
`let [配列名] = ['要素1', '要素2', '要素3']`  
具体例）
`let hogeList = ['boo1', 'bar2', 'Array3']`  
`let ListHoge = []`  

vim9script用の書式：
変数と同じく、イコール記号の前後に半角スペースが必要。  
script8でスライスをする場合は、`hogeList[0:1]`のように、コロン`:`の前後を詰めることができる。  
しかし、9になった場合、スペースが必要になる(`[0 : 1]`・`[0 :]`・`[: 1]`・`[:]`)。
`var hogeList = ['hogeList1', 'hogeList2', ]`  

また、script8とは異なり、9の場合に指定する添え字は、文字単位での指定になる(注意事項2)。  
要は、見た目通りに指定できる(script8はバイト単位のため、多バイトを相手する場合意図しない結果が出てくる)。  

<a name="subArrangement2"></a>
#### 一次元配列への追加。
コマンド：
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
#### 多次元配列
見にくく扱いにくいので使わないかな(理由、以下)。  

配列の中に配列を入れることを言うならば、多次元配列と言えるだろう。  

```vim
let hogeList = ['boo1', 'bar2', 'Array3', ]
let barList  = ['hoge1', 'boo2', ]

call add(hogeList, barList)
```
出力結果：`['boo1', 'bar2', 'Array3', ['hoge1', 'boo2']]`

```vim
var booList = ['hoge1', 'hoge2', ['boo1', 'boo2', ], ['bar1', 'bar2', ], ]
echom booList[3][0]
```
出力結果：`bar1`

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
    これ何？  
  * [ ] Map  
  * [ ] フィルタ  
  * [ ] Queue  
    これ何？  

</details>

</details>

<a name="Conditional条件分岐sub"></a>
<details><summary>実際の条件分岐の勉強</summary>

### 条件分岐
一応、三項演算子も使えるが、使わないだろうコトを想定して、説明を省く。  

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
#### 単純分岐-"もし"1つ。
`if`文の条件式は、条件が0でない場合に実行される。 　

様式：
```vim
if [条件式]
	処理。
endif
```

様式：
```vim
if [条件式]
	処理A。
else
	処理B。
endif
```

比較演算子([演算子](#subConditional3reg)からの引用)
|演算子|意味|
|------|----|
|`==`|文字列比較|
|`=~`|右辺の式にマッチしているかどうか比較|
|`!~`|右辺の式にマッチしていないかどうか比較|
※これら3種類は、大小文字区別は設定次第となっており、`ignorecase`に依存する。  
ただし、これはscript8に限ることであり、vim9scriptでは設定の影響を受けない。  

<a name="subConditional1two"></a>
#### 多岐分岐-"もし"2つ以上。

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


##### 多岐分岐-条件にて複数から選ぶ。
ない。  
強いて言うならば、`if〜elseif`を多用すること。  

<a name="subConditional2"></a>
#### 論理演算子(ド・モルガンの法則)

|演算子|意味|備考|
|------|----|----|
|`&&`|論理積|
|`||`|論理和|

<a name="subConditional3"></a>
#### 比較演算子

論理演算子(両方が値である必要がある)
|演算子|意味|
|------|----|
|`==`|等しい|
|`!=`|等しくない|
|`>`|より大きい|
|`<`|より小さい|
|`>=`|より大きいかまたは等しい|
|`<=`|より小さいかまたは等しい|
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
比較演算子
|演算子|意味|
|------|----|
|`文字列=~正規表現`|正規表現が一致する|
|`文字列!~正規表現`|正規表現が一致しない|
例）
`"word" =~ "\w*"`  


<a name="subConditional999"></a>
#### 条件分岐での説明しない項目。

<details><summary>今回は勉強を見送る一覧</summary>

* 多岐分岐-条件にて複数から選ぶ。  
  基本構造例：switch  
  **vim script**にはないようだな。  
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


<a name="repetition繰り返しsub"></a>
<details><summary>実際の繰り返しの勉強</summary>

### 繰り返し

* 絶対的に勉強する一覧  
  * [x] [指定回数条件での繰り返し](#subRepetition1)  
    [ ] 基本構造例：for( 条件式 )  
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
#### 指定回数条件での繰り返し
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
1回目の処理では、`hoge`の値として、`hoge1`だけが代入されており、`boo`の値として`boo1`が代入されている。  
2回目以降でも同様に次々1つずつ値が代入されて処理されていく。  


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
```vim:while.vim
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
```vim:while.vim
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
#### 真偽条件での繰り返し
[様式](https://vim-jp.org/vimdoc-ja/eval.html#:while)：
```vim
while [条件式]
	処理。
endwhile
```
条件式が真である間、処理が実行される。  

例）
```vim:while.vim
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
様式：`while 0 == 0`  
`for`での無限ループはできそうになかった。  

<a name="subRepetition999"></a>
#### 繰り返しでの説明しない項目。

<details><summary>今回は勉強を見送る一覧</summary>

* [ ] 真偽条件での繰り返し  
  基本構造例：do〜while( 条件式 )  
  ないようだな。  

</details>

</details>

<a name="function関数sub"></a>
<details><summary>実際の関数の勉強</summary>

### 関数
vim9scriptに限定して説明したつもり。  

* 絶対的に勉強する一覧  
  * [ ] 使い回せるようにまとめること。  
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
関数の作成は、呼び出しするよりも先に作っておく必要がある。  

**注意事項5**
スクリプトが呼び出され、関数がコンパイルされた場合、その関数を削除もしくは変更することは出来ない。  
そして、スクリプト呼び出しごとに関数や変数は再作成する(今までのはなかったことになるようだ)。  

**注意事項6**
関数呼び出しの場合には、`call`を付けずに関数呼び出しができる。  

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
vim9scriptでも`unlet`は使えるようだ。  

<a name="subFunction999"></a>
#### 関数での説明しない項目。

<details><summary>今回は勉強を見送る一覧</summary>

そもそもPythonは、普通に必要？  
しかし、アルゴリズムの勉強には不要なのだろう。  

* 標準的な関数  
  * [ ] クラス  
  * [ ] 可変長引数  
    ない？  
  * [ ] 再帰関数  
    ない？  
  * [ ] 高階関数  
    変数の応用部分で説明する？  
    そもそもない？  
* オブジェクト指向  
  * [ ] クラスの定義  
    ない？  
  * [ ] フィールド  
    ない？  
  * [ ] メソッド  
    ない？  
  * [ ] コンストラクタ  
    ない？  
* オブジェクト指向  
  * [ ] カプセル化  
    ない？  
  * [ ] 継承  
    ない？  
  * [ ] ポリモーフィズム  
    ない？  
* オブジェクト指向  
  * [ ] 例外処理  
    ない？  
  * [ ] 列挙型  
    ない？  
  * [ ] 入れ子クラス  
    ない？  
  * [ ] ジェネリクス  
    ない？  
  * [ ] ラムダ式(無名関数？)  

</details>

</details>

### ☆アルゴリズムの勉強チャプタ概要☆
<a name="algorithmTextbookLearnedinPython"></a>
<a name="algorithmTextbookLearnedinPythonChapter2"></a>
* [Chapter2 プログラミングの力を養う](#developProgrammingSkillsOverviewChapter2)  
  基礎的なプログラミングの力を養っていく。  
  例えば、配列利用の関数定義・繰り返し・再帰関数・条件分岐など。  
  以下、各項目(目次)。  
  [x] [平均値を求める。](#findTheAverageValueChapter2)  
  [x] [1からnまで足し合わせる。](#addFrom1tonChapter2)  
  [x] [九九の式を出力する。](#outputTheMultiplicationTableChapter2)  
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
#### プログラミングの力を養う
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
##### 平均値を求める。
勉強内容はPythonと基本は同じ。  
それをvimScript9用に移植するだけのこと。  

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


<a name="addFrom1tonChapter2"></a>
##### 1からnまで足し合わせる。
勉強内容はPythonと基本は同じ。  
それをvimScript9用に移植するだけのこと。  

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


<a name="outputTheMultiplicationTableChapter2"></a>
##### 九九の式を出力する。
Pythonでやったように、九九の式を出すのではなく、九九表を出すことにする。  
ルールはPythonと同じ。  

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
きれいに収まった。  

<a name="findAPrimeNumberChapter2"></a>
##### 素数を求める。

<a name="findTheFactorialOfNChapter2"></a>
##### nの階乗を求める。

<a name="eratosthenesSieveChapter2"></a>
##### エラトステネスの篩

<a name="understandnAryNotationChapter2"></a>
##### n進法を理解する。

<a name="learnDataStructuresOverviewChapter3"></a>
#### データ構造を学ぶ

* 各項目。  
  * [スタック](#stackChapter3)  
  * [キュー](#queueChapter3)  
  * [リスト](#listChapter3)  
  * [木](#woodChapter3)  
  * [グラフ](#graphChapter3)  
  * [データを保存する。](#saveTheDataChapter3)  

<a name="stackChapter3"></a>
##### スタック

<a name="queueChapter3"></a>
##### キュー

<a name="listChapter3"></a>
##### リスト

<a name="woodChapter3"></a>
##### 木

<a name="graphChapter3"></a>
##### グラフ

<a name="saveTheDataChapter3"></a>
##### データを保存する。

<a name="searchOverviewChapter4"></a>
#### サーチ

* 各項目。  
  * [線形探索](#linearSearchChapter4)  
  * [二分探索](#binarySearchChapter4)  
  * [木探索](#treeExplorationChapter4)  
  * [計算量について知る](#knowAboutComputationalComplexityChapter4)  
  * [ランダウの記号](#landauSignChapter4)  
  * [数当てゲーム](#numberGuessingGameChapter4)  
  * [ビット演算を学ぶ](#learnBitwiseOperationsChapter4)  

<a name="linearSearchChapter4"></a>
##### 線形探索

<a name="binarySearchChapter4"></a>
##### 二分探索

<a name="treeExplorationChapter4"></a>
##### 木探索

<a name="knowAboutComputationalComplexityChapter4"></a>
##### 計算量について知る

<a name="landauSignChapter4"></a>
##### ランダウの記号

<a name="numberGuessingGameChapter4"></a>
##### 数当てゲーム

<a name="learnBitwiseOperationsChapter4"></a>
##### ビット演算を学ぶ

<a name="sortOverviewChapter5"></a>
#### ソート

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
##### 選択ソート

<a name="bubbleSortChapter5"></a>
##### バブルソート

<a name="insertionSortChapter5"></a>
##### 挿入ソート

<a name="quickSortChapter5"></a>
##### クイックソート

<a name="mergeSortChapter5"></a>
##### マージソート

<a name="heapsortChapter5"></a>
##### ヒープソート

<a name="outputTheProcessOfQuicksortRecurrenceChapter5"></a>
##### クイックソートの再起の過程を出力する。

<a name="mergeSortUsingARecursiveFunctionChapter5"></a>
##### 再帰関数を用いたマージソート。

<a name="howToUsePythonSortInstructionsAndHeapqModuleChapter5"></a>
##### プログラミング言語用のソート・ヒープ・キュー関数の使い方。
Python限定にしたくなかったが、他のプログラミング言語にはない可能性がある。  
[ヒープ](https://docs.microsoft.com/ja-jp/windows/win32/memory/heap-functions)と言うのはアルゴリズムより、コンピュータでの概念のほうが一般的なのかな。  
[C言語](https://code-reference.com/c/stdlib.h)ですら[クイックソート](https://ja.cppreference.com/w/c/algorithm)があるのだから他のプログラミング言語にはあってしかるべき。  

<a name="sortCalculationComplexityAndCalculationTimeChapter5"></a>
##### ソートの計算量と計算時間。

<a name="hashOverviewChapter6"></a>
#### ハッシュ

* 各項目。  
  * [ハッシュとは。](#whatIsAHashChapter6)  
  * [ハッシュ関数](#hashFunctionChapter6)  
  * [ハッシュテーブル](#hashTableChapter6)  
  * [衝突を回避する。](#avoidCollisionsChapter6)  
  * [暗号学的ハッシュ関数](#cryptographicHashFunctionChapter6)  

<a name="whatIsAHashChapter6"></a>
##### ハッシュとは。
調べればすぐに出てくる。  
そもそもプログラマーがハッシュを知らないというのはあり得ない。  
[Git](https://git-scm.com/book/ja/v2/使い始める-Gitの基本)でも[履歴閲覧](https://docs.github.com/ja/github/searching-for-information-on-github/searching-on-github/searching-commits)に[コミットハッシュ値](https://git-scm.com/book/ja/v2/Git-の基本-コミット履歴の閲覧)を使う。  

<a name="hashFunctionChapter6"></a>
##### ハッシュ関数

<a name="hashTableChapter6"></a>
##### ハッシュテーブル

<a name="avoidCollisionsChapter6"></a>
##### 衝突を回避する。

<a name="cryptographicHashFunctionChapter6"></a>
##### 暗号学的ハッシュ関数

<a name="learnVariousAlgorithmsOverviewChapter7"></a>
#### さまざまなアルゴリズムを学ぶ

* 各項目。  
  * [ユークリッドの互除法](#euclideanAlgorithmChapter7)  
  * [文字列探索](#stringSearchChapter7)  
  * [アルゴリズムを理解するヒント(処理の過程の出力)。](#tipsForUnderstandingTheAlgorithmChapter7)  

<a name="euclideanAlgorithmChapter7"></a>
##### ユークリッドの互除法

<a name="stringSearchChapter7"></a>
##### 文字列探索

<a name="tipsForUnderstandingTheAlgorithmChapter7"></a>
##### アルゴリズムを理解するヒント(処理の過程の出力)。

<a name="visualizeTheAlgorithmOverviewChapter8"></a>
#### アルゴリズムを見える化する

* 各項目。  
  * [n次関数の曲線を描く。](#drawACurveOfTheNthOrderFunctionChapter8)  
  * [フラクタル図形を描く。](#drawAFractalFigureChapter8)  
  * [迷路を解く過程を描く。](#drawTheProcessOfSolvingTheMazeChapter8)  
  * [アルゴリズムを使い分ける。](#useDifferentAlgorithmsChapter8)  
  * [マンデルブロー集合を描こう。](#letsDrawTheMandelbrotSetChapter8)  

<a name="drawACurveOfTheNthOrderFunctionChapter8"></a>
##### n次関数の曲線を描く。

<a name="drawAFractalFigureChapter8"></a>
##### フラクタル図形を描く。

<a name="drawTheProcessOfSolvingTheMazeChapter8"></a>
##### 迷路を解く過程を描く。

<a name="useDifferentAlgorithmsChapter8"></a>
##### アルゴリズムを使い分ける。

<a name="letsDrawTheMandelbrotSetChapter8"></a>
##### マンデルブロー集合を描こう。


## Gitのマージルール
個々の言語ごとにブランチをそれぞれ作成し、そこで作業している。  
以下、流れとして、、、

* ブランチ作成などの初期作業。  
  1. [x] 対象言語のブランチ作成  
  1. [x] そのブランチで勉強する。  
  1. [ ] 切りの良い場所でコミット実施。  

  * 上記作業再開。  
    1. [ ] 前回の勉強を再開する。  
    1. [ ] 1章分の勉強終了後、"study2programming"にマージする。  
       ある程度の切りが良いところでマージしたい。  
    1. [ ] 誤字脱字程度のコミットはスカッシュしたい。  
    1. [ ] "study2programming"をPushする。  
       ※masterにマージすることはない。  
    1. [ ] 章ごとにタグ付けをする(Push実施)。  

study2programmingに取り込むときのマージは、3方向マージ(`--no-ff`)を使う。  
例外作業として、masterに取り込む場合はチェリーピッキングでピンポイントに必要最小限のコミットのみを取り込む(しつこいが、masterに取り込むことはしたくない)。  


以上。
<!-- vim:set ts=4 sts=4 sw=4 tw=0:expandtabs -->
