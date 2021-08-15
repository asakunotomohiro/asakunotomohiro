# vimScript言語
ここは、プログラミング言語のvimScript言語を勉強するブランチになる。  
※Vimの操作は別とする。  

## ブランチの利用方法

### 勉強方法
今のところ本格的に勉強する気は無いが、[公式ページ](https://vim-jp.org)からだけで話を進めることはない。  
一応[Vim日本語ドキュメント](https://vim-jp.org/vimdoc-ja/)の[Vim9 script](https://vim-jp.org/vimdoc-ja/vim9.html)は参照するが、それでも本格的に勉強することはないため、チラ見する程度だろう。  
vim script 8以前の[Vim script 書法](https://vim-jp.org/vimdoc-ja/usr_41.html)と最新版では書き方が異なる。  
困る。  

> Vim9 script の主な目的は劇的な性能の向上です。これは、コマンドをより効率よく実  
> 行できる命令にコンパイルすることで実現しています。これにより、10倍から100倍の  
> 実行速度の向上が期待できます。  
>  
> 第2の目的は、Vim script 特有の文法を回避し、より一般的に使われる JavaScript や  
> TypeScript、Java のようなプログラミング言語に近づけることです。  

以下の書籍を購入済み。  
[マスタリングVim](https://gihyo.jp/book/2020/978-4-297-11169-4)  
この **第8章Vim scriptで平凡を超越する** からスクリプトを勉強していくことにする。  
※当書籍はVer8だが、最新版は9だ。それでも基本的な構造化プログラミング程度で完結させる~~ため、特別に古いバージョン出ない限りは問題ないだろう~~。  
~~バージョンが10以降になっても気にすることはないはず・・・拡張して使いやすくはなったとしても廃止されることはないはず~~。  
※[ViIMproved](https://gihyo.jp/book)の **27章式と関数** に、スクリプトが掲載されていた(数年ぶりに持ち出した本だから中身を忘れていたよ)。  

### 開発環境
当たり前のように、`MacVim`を使う。  
vimScriptなのに、他のIDEを使う人はいるのだろうか!?  

### Pythonで学ぶアルゴリズムの教科書
簡単なプログラミングに使う基礎知識を統一する。  

* 基礎知識5種類  
  * [x] [変数](#variable変数)  
  * [x] [配列](#arrangement配列)  
  * [x] [条件分岐](#Conditional条件分岐)  
  * [x] [繰り返し](#repetition繰り返し)  
  * [x] [関数](#function関数)  

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
[ ] 手順5. 1つのプログラミング言語で、手順4の勉強1種類を終えた時に、次のプログラミング言語に移る。  
[x] 手順6. 上記、5種類の基礎知識を終わるまで繰り返す。  
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
インデント：フリーフォーマット  
　　if文などの処理部分は、インデントを付けるかどうかをユーザが任意で決める。  
標準の出力関数：`echo`・`echon`・`echom`  

#### <a name="variable変数"></a>変数
値の格納方法と言える。  
複雑な説明はしない。  
そのため、簡単に話を終えるつもりだが、それ故に、他の話題を取り込むことにして、話題を広げる。  

* 絶対的に勉強する一覧  
  * [x] 1種類の入れ物  

* 他の話題例  
  * [x] 定数  
  * [ ] データ型  
        データ型はあるようだが、意識する必要は無い？  
        * [ ] 整数  
        * [ ] 浮動小数点型  
        * [ ] 文字型  
        * [ ] 真偽型  
        * [ ] 型推論  
  * [x] リテラル  
        * [x] 整数リテラル  
        * [ ] 浮動小数点リテラル  
              ない？  
        * [x] 文字リテラル  
        * [x] 文字列リテラル  
  * [ ] キャスト  
        ない？  
        * [ ] 暗黙変換  
        * [ ] 明示変換  
  * [x] 演算子  
        * [x] 算術演算子  
        * [x] 優先順位  

##### 変数
ここで言う変数とは、プログラマが普通にプログラミングに使う変数を指す。  
と言うのも、内部オプション変数というのがVimにあり、これはVimエディタの設定を変更するのに使う変数だからだ(例：`set background=dark`)。  

[Vim script 言語 の変数41.2](https://vim-jp.org/vimdoc-ja/usr_41.html#41.2)  
> 変数名にはアルファベット、数字、アンダースコアが使えます。変数名を数字で開始することはできません。


変数の宣言：
`let [変数名]`  

vim9script：
`var [変数名]`  
代入式：
`var [変数名] = [値]`  
script8と異なり、イコール記号の前後に半角スペースが必要。  

変数名
|名前|意味|
|----|----|
|全て大文字・数字・アンダースコア|**viminfo**オプションに!フラグが含まれる場合に、viminfoファイルへ格納できる変数|
|1文字目が大文字もしくは、どこかに小文字を含む|makeセッション(`:mksession`)コマンドで保存される変数|
|`let Save_this_option = 1`|セッションで保存されるオプション|
|`let forget_this = yes`|セッション間で破棄される|
|全て小文字・数字・アンダースコア|保存ファイルに格納されない変数|


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


特殊変数
|名前|意味|
|----|----|
|`$環境変数名`|環境変数|
|`@レジスタ名`|テキストレジスタ|
|`&オプション名`|オプション名|

変数の代入：
他のプログラミング言語のように、型が決められているのではない。  
代入時に変化する。  


* ダブルクォーテーション  
リテラルではない文字列を表す。  
* シングルクォーテーション  
リテラル文字列を表す。  

* 文字の結合(vim9script)  
`'abc' .. 123`  
`'def' .. v:true`  

[文字列定数(ダブルクォーテーションで括る)](https://vim-jp.org/vimdoc-ja/eval.html#expr-quote)  

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

##### 変数の一覧
宣言した変数を一覧化する方法があるにはある・・・。  
コマンド：
`:let`  

これを使う場合、作成しているスクリプトファイル内だけでなく、Vimエディタが動かしている変数を全て網羅させて表示させるようで、本当に自分が宣言した変数だけの確認は出来ない。  
どうすれば絞り込み表示が出来るのか分からない。  


##### 変数の宣言確認
スクリプトファイル内で宣言した変数を個別に確認することはできる。  
様式：
`if exists("[接頭辞][変数名]")`  

変数が宣言されていた場合、if文が実行される。  


##### 変数の破棄
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

##### レジスタ変更
script8では以下の通りだが、vim9scriptではどのように定義すれば良いのか分からない。  

```vim
let @a = "aasakunoの文字列をレジスタaに代入"
"	確認方法：'@a'キータイプにより、文字列がVimエディタ上に展開される。
```

##### Setオプション変更
`set`で変更するVimオプションの場合は、変数名の前に`&`記号を付ける。  

例）
`let &ignorecase = 0`  

##### const定数(vim9script)
変数宣言の`var`の代わりに`const`を付けることで、定数になる。  
※script8は未対応のようだ。  

様式：
`const [変数名] = [何かしらの値]`  

定数に、スコープ(接頭辞のこと)を指定するのは不可能？  

##### final定数(vim9script)
代入した値そのものは変えられない(変数の変更不可だ)が、中の値だけならば変更できる。  

```vim9
final tomohiroList = [1, 2]
# tomohiroList = [3, 4]	# E1018: Cannot assign to a constant: tomohiroList
tomohiroList[0] = 99
```

上記の変更後の出力結果：
`[99, 2]`  
2行目でエラーになっているのは、変数の変更を試みたため。  


##### データ型
結局分からずじまい。  

|データ型|Vimの定義済変数|
|--------|---------------|
|bool|v:t_bool|
|number|v:t_number|
|float|v:t_float|
|string|v:t_string|
|blob|v:t_blob|
|list|v:t_list|
|dictionary|v:t_dict|
|func|v:t_func|
|special|
|job|v:t_job|
|channel|v:t_channel|
|class|
|object|
||v:t_none|
結局、どうやって使い分ければ良いの？  

比較演算子として扱うってこと？  
しかし、`v:`になっている以上、どうしようもないような・・・。  


##### 整数リテラル

整数値
|  例  |種類|
|------|----|
|123|10進数|
|0123|8進数|
|0xAC|16進数|

##### 文字リテラル
2種類ある？  

* string  
単純文字列(simple string)  
* 'string'  
リテラル文字列(literal string)  


##### キャスト
ない？  


##### 演算子

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

<a name="arrangementからのConditionalでの演算子参照"></a>
論理演算子(両方が値である必要がある)
|演算子|意味|
|------|----|
|`==`|等しい|
|`!=`|等しくない|
|`<`|より小さい|
|`<=`|より小さいかまたは等しい|
|`>`|より大きい|
|`>=`|より大きいかまたは等しい|
※普段は文字列扱いだが、この演算子を用いた場合、文字列が整数に自動変換される。  

比較演算子
|演算子|意味|
|------|----|
|`文字列=~正規表現`|正規表現が一致する|
|`文字列!~正規表現`|正規表現が一致しない|
例）
`"word" =~ "\w*"`  

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

三項演算子  
`a ? b : c`  
`a`が真ならば`b`を使い、
そうでなければ`c`を使う。  

##### ファイル名入力
todo: これなんだっけ？  

* ファイル名指定特殊文字  
* ファイル名修飾子  


#### <a name="arrangement配列"></a>配列
Pythonと同じように、リストを配列として扱う。  
そして、Pythonでも扱わない辞書は、今回の勉強で扱わないことにする(機会があればね・・・)。  

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

* 絶対的に勉強する一覧  
  * [x] 一次元配列  
  * [x] 多次元配列  
     * [x] 二次元配列  

ViIMproved本は、配列の説明がなかったぞ!?  
やはり、Python2を無視して、Python3を勉強するのが有益なように、vim9scriptを優先した方が良いようだな。  

##### 説明しない。
配列に関連しているが、当分説明しない。  

* その一覧  
  * マップ  
  * フィルタ

これらは、関数に影響する勉強範囲だが、まだ調べない。  
todo: いずれ辞書・マップ・フィルタを調べる。  

##### 一次元配列
様式：
`let [配列名] = ['要素1', '要素2', '要素3']`  
具体例）
`let hogeList = ['boo1', 'bar2', 'Array3']`  
`let ListHoge = []`  

vim9script用の書式：
変数と同じく、イコール記号の前後に半角スペースが必要。  
script8でスライスをする場合は、`hogeList[0:1]`のように、コロン`:`の前後を詰めることができる。  
しかし、9になった場合、スペースが必要になる(`[0 : 1]`・`[0 :]`・`[: 1]`・`[:]`)。

また、script8とは異なり、9の場合に指定する添え字は、文字単位での指定になる(注意事項2)。  
要は、見た目通りに指定できる(script8はバイト単位のため、多バイトを相手する場合意図しない結果が出てくる)。  

###### 一次元配列への追加。
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

###### 一次元配列からの削除。
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

###### 一次元配列での並び替え。
コマンド：
`sort([配列名])`  

```vim
#	並び替え前：['b', 'a', 'd', 'c']
sort(hogeList)
#	並び替え後：['a', 'b', 'c', 'd']
```

###### 一次元配列の空(empty)確認。  
コマンド：
`empty([配列名])`  

例）
`if empty(hogeList)`  
`hogeList`が空の場合、if文はtrueになり、if文に入る。  

###### 一次元配列要素の要素番目(index)取得
コマンド：
`index([配列名], [要素])`  

例）
`var hogeIndex = index(hogeList, 'hoge1')`  
`hogeIndex`に、index関数の戻り値として、`hoge1`の要素番号が格納される。  

###### 一次元配列要素の要素数(Length)取得。
コマンド：
`var retLen = len([配列名])`  

例）
`var hogeLen = len(hogeList)`  
`hogeLen`に、hogeListの要素数が格納される。  

##### 多次元配列
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

#### <a name="Conditional条件分岐"></a>条件分岐
一応、三項演算子も使えるが、使わないだろうコトを想定して、説明を省く。  

* 絶対的に勉強する一覧  
  * [x] 単純分岐-"もし"1つ。  
    基本構造例：if  
  * [x] 多岐分岐-"もし"2つ以上。  
    基本構造例：if〜else if  
  * [ ] 多岐分岐-条件にて複数から選ぶ。  
    基本構造例：switch  
    **vim script**にはないようだな。  


##### 単純分岐-"もし"1つ。
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

比較演算子([演算子](#arrangementからのConditionalでの演算子参照)からの引用)
|演算子|意味|
|------|----|
|`==`|文字列比較|
|`=~`|右辺の式にマッチしているかどうか比較|
|`!~`|右辺の式にマッチしていないかどうか比較|
※これら3種類は、大小文字区別は設定次第となっており、`ignorecase`に依存する。  
ただし、これはscript8に限ることであり、vim9scriptでは設定の影響を受けない。  

##### 多岐分岐-"もし"2つ以上。

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


#### <a name="repetition繰り返し"></a>繰り返し

* 絶対的に勉強する一覧  
  * [x] 真偽条件での繰り返し  
    基本構造例：while( 条件式 )  
    基本構造例：do〜while( 条件式 )  
                `do`はないようだ。  
  * [x] 指定回数条件での繰り返し  
    基本構造例：for( 条件式 )  
    基本構造例：拡張for命令  
  * [x] ジャンプ処理  
    * [x] break  
    * [x] continue  

##### 真偽条件での繰り返し
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

##### 指定回数条件での繰り返し
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

別様式：指定回数繰り返す。
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

##### ジャンプ処理
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


#### <a name="function関数"></a>関数
vim9scriptに限定して説明したつもり。  

* 絶対的に勉強する一覧  
  * [x] 関数  
    * [x] 引数  
    * [x] 戻り値  

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

##### 説明しない。
関数に関連しているが、当分説明しない。  

* その一覧  
  * クラス  
  * ラムダ式  

##### 関数
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


以上。
