# vimScript言語
ここは、プログラミング言語のvimScript言語を勉強するブランチになる。  
※Vimの操作は別とする。  

## ブランチの利用方法

### 勉強方法
今のところ本格的に勉強する気は無いが、[公式ページ](https://vim-jp.org)からだけで話を進めることはない。  
一応[Vim日本語ドキュメント](https://vim-jp.org/vimdoc-ja/)の[Vim9 script](https://vim-jp.org/vimdoc-ja/vim9.html)は参照するが、それでも本格的に勉強することはないため、チラ見する程度だろう。  

> Vim9 script の主な目的は劇的な性能の向上です。これは、コマンドをより効率よく実  
> 行できる命令にコンパイルすることで実現しています。これにより、10倍から100倍の  
> 実行速度の向上が期待できます。  
>  
> 第2の目的は、Vim script 特有の文法を回避し、より一般的に使われる JavaScript や  
> TypeScript、Java のようなプログラミング言語に近づけることです。  

以下の書籍を購入済み。  
[マスタリングVim](https://gihyo.jp/book/2020/978-4-297-11169-4)  
この **第8章Vim scriptで平凡を超越する** からスクリプトを勉強していくことにする。  
※当書籍はVer8だが、最新版は9だ。それでも基本的な構造化プログラミング程度で完結させるため、特別に古いバージョン出ない限りは問題ないだろう。  
バージョンが10以降になっても気にすることはないはず・・・拡張して使いやすくはなったとしても廃止されることはないはず。  
※[ViIMproved](https://gihyo.jp/book)の **27章式と関数** に、スクリプトが掲載されていた(数年ぶりに持ち出した本だから中身を忘れていたよ)。  

### 開発環境
当たり前のように、`MacVim`を使う。  
vimScriptなのに、他のIDEを使う人はいるのだろうか!?  

### Pythonで学ぶアルゴリズムの教科書
簡単なプログラミングに使う基礎知識を統一する。  

* 基礎知識5種類  
  * [ ] [変数](#variable変数)  
  * [ ] [配列](#arrangement配列)  
  * [ ] [条件分岐](#Conditional条件分岐)  
  * [ ] [繰り返し](#repetition繰り返し)  
  * [ ] [関数](#function関数)  

### 具体的な基礎知識
何はともあれ、まずは、"Hello World"を表示するプログラムを作る。  
そのため、以下の手順で勉強を進めることにする。  

[x] 手順1. 勉強用のブランチに移動する。  
[x] 手順2. ルートディレクトリのひな形ディレクトリをコピーしてくる。  
[x] 手順3. コピーしてきたディレクトリ名を"基礎知識用の勉強"に変更する。  
[x] 手順3-1. `helloWorld.[言語用の拡張子]`のファイルを作り、おなじみ"Hello World."プログラムを作る。  
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
実行方法：(vimエディタを起動した状態で)`:source <ファイル名>`  
標準の文字コード(プログラムファイル)：  
　　例）UTF-8(今時はこれに統一されている？)。  
文字区切り(行末記号)：改行  
インデント：フリーフォーマット？  
標準の出力関数：`echo`・`echon`・`echom`  

#### <a name="variable変数"></a>変数
値の格納方法と言える。  
複雑な説明はしない。  
そのため、簡単に話を終えるつもりだが、それ故に、他の話題を取り込むことにして、話題を広げる。  

* 絶対的に勉強する一覧  
  * [ ] 1種類の入れ物  

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

##### 定数


##### データ型


##### リテラル


##### キャスト


##### 演算子



#### <a name="arrangement配列"></a>配列
変数を連ならせる格納方法。  

* 絶対的に勉強する一覧  
  * [ ] 一次元配列  
  * [ ] 多次元配列  
     * [ ] 二次元配列  
     * [ ] 三次元配列  
     * ※複雑さに応じて対応する。  

##### 一次元配列



##### 多次元配列



#### <a name="Conditional条件分岐"></a>条件分岐

* 絶対的に勉強する一覧  
  * [ ] 単純分岐-"もし"1つ。  
    基本構造例：if  
  * [ ] 多岐分岐-"もし"2つ以上。  
    基本構造例：if〜else if  
  * [ ] 多岐分岐-条件にて複数から選ぶ。  
    基本構造例：switch  

##### 単純分岐-"もし"1つ。


##### 多岐分岐-"もし"2つ以上。


##### 多岐分岐-条件にて複数から選ぶ。



#### <a name="repetition繰り返し"></a>繰り返し

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

##### 真偽条件での繰り返し


##### 指定回数条件での繰り返し


##### ジャンプ処理




#### <a name="function関数"></a>関数

* 絶対的に勉強する一覧  
  * [ ] 使い回せるようにまとめること。  
    * [ ] 引数  
    * [ ] 戻り値  

> Vim9 script の主な目的は劇的な性能の向上です。  
> パフォーマンスの向上は、100% の下位互換性を捨てることによってのみ達成しうるも  
> のです。たとえば、関数の引数を辞書 "a:" から利用できるようにするためには、かな  
> りのオーバーヘッドが必要になります。そのため、Vim9 script では、この辞書が利用  
> できなくなりました。その他の違いは、エラーの処理方法など、より微細なものです。  
>  
> Vim9 script は以下の場所で使用することができます:  
> - コマンド :def で定義された関数の中  
> - コマンド vim9script で始まるスクリプトファイルの中  
> - 上記のコンテキストで定義された自動コマンド  
> - コマンド修飾子 vim9cmd が先頭に付いたコマンド  
>  
> Vim9 スクリプトファイルの中でコマンド :function で関数を定義すると、その中で  
> は旧来の Vim script の記法が、最新の scriptversion とともに有効になります。  
> しかし、これは混乱を招く可能性があるため、推奨できません。  
>  
> Vim9 script と旧来の Vim script は同時に利用できます。古いスクリプトを書き換え  
> なくとも、以前と同様に実行することが可能です。高速化が必要なコードには、:def  
> で定義する関数を使ったほうが良いかもしれません。  


##### 使い回せるようにまとめること。


### Gitのマージルール
個々の言語ごとにブランチをそれぞれ作成する。  
そのブランチで作業する。  
以下、流れとして、、、

* 当ブランチ）  
  1. [ ] 当ブランチで勉強する。  
  1. [ ] 切りの良い場所でコミット実施。  

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
