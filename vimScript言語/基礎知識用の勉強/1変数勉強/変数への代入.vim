let asakuno = "asakunoの文字列を変数に代入"
echom asakuno
"	出力結果：asakunoの文字列を変数に代入

let asakuno = "asakunoの\"文字列\"を変数に代入"
echom asakuno
"	出力結果：asakunoの"文字列"を変数に代入

let asakuno = 'asakunoの"文字列"を変数に代入'
echom asakuno
"	出力結果：asakunoの"文字列"を変数に代入


" 以下、特殊記号の使用例。

let asakuno = 'asakunoの''文字列''を変数に代入'
echom asakuno
"	出力結果：asakunoの'文字列'を変数に代入

let asakuno = "asakunoの''文字列''を変数に代入"
echom asakuno
"	出力結果：asakunoの''文字列''を変数に代入

let asakuno = "asakunoの\t文字列\tを変数に代入"
echom asakuno
"	出力結果：asakunoの^I文字列^Iを変数に代入
" 実際はタブ記号で出力されるのだが・・・。

let asakuno = "asakunoの\n文字列\nを変数に代入"
echom asakuno
"	出力結果：asakunoの^@文字列^@を変数に代入
" 実際は、改行されて出力されるのだが・・・。

let asakuno = "asakunoの\r文字列\rを変数に代入"
echom asakuno
"	出力結果：asakunoの^M文字列^Mを変数に代入
" 実際は、改行されて出力されるのだが・・・。

let asakuno = "asakunoの\e文字列\eを変数に代入"
echom asakuno
"	出力結果：asakunoの^[文字列^[を変数に代入
" 実際は、Escが出力されるのだが・・・。

let asakuno = "asakunoの\b文字列\bを変数に代入"
echom asakuno
"	出力結果：asakunoの^H文字列^Hを変数に代入
" 実際は、一文字削除(backspace)されて出力されるのだが・・・。

let asakuno = "asakunoの\文字列\を変数に代入"
echom asakuno
"	出力結果：asakunoの文字列を変数に代入

let asakuno = "asakunoの\\文字列\\を変数に代入"
echom asakuno
"	出力結果：asakunoの\文字列\を変数に代入

let asakuno = "asakunoの\<ESC>文字列\<ESC>を変数に代入"
echom asakuno
"	出力結果：asakunoの^[文字列^[を変数に代入
" 実際は、Escされるのだが・・・。

let asakuno = "asakunoの\<C-W>\<C-W>文字列\<C-W>\<C-W>を変数に代入"
echom asakuno
"	出力結果：asakunoの^W^W文字列^W^Wを変数に代入
" 実際は、されて出力されるのだが・・・。

" vim:set ts=4 sw=4 tw=0 fenc=utf-8:
