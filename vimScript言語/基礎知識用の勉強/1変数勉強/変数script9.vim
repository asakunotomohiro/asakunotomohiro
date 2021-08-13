
let asakuno = 'asakuno(vimScript8)'
echom asakuno
	" 出力結果：asakuno(vimScript8)

"
" vim script9以降の書き方。
"

" let l:tomohiro_l = 'l:tomohiro(vimScript8)'	" E461: 不正な変数名です: l:tomohiro_l
def! Tomohiro(): string
#	var g:asakunotomohiro = 'g:asakuno(vimScript9)'	" E1016: Cannot declare a global variable: g:asakunotomohiro
#	var v:asakuno_v = 'v:asakuno(vimScript9)'	" E1001: Variable not found: v:asakuno_v
#	var l:asakuno_l = 'l_asakuno(vimScript9)'	" E1069: White space required after ':': :asakuno_l = 'l_asakuno(vimScript8)'
#	var b:asakuno_b = 'b:asakuno(vimScript9)'	" E1016: Cannot declare a buffer variable: b:asakuno_b
#	var w:asakuno_w = 'w:asakuno(vimScript9)'	" E1016: Cannot declare a window variable: w:asakuno_w
#	var t:asakuno_t = 't:asakuno(vimScript9)'	" E1016: Cannot declare a tab variable: t:asakuno_t
#	var s:asakuno_s = 's:asakuno(vimScript9)'	" E1101: Cannot declare a script variable in a function: s:asakuno_s
#	var a:asakuno_a = 'a:asakuno(vimScript9)'	" E1069: White space required after ':': :asakuno_a = 'a:asakuno(vimScript8)'
	var tomohiro = 'tomohiro(vimScript9)'
	var asakuno9 = 'asakuno(vimScript9)'
#	echom asakuno9
#	unlet asakuno9	" E1081: Cannot unlet asakuno9
#	echom asakuno9
	return tomohiro
enddef
echom Tomohiro()
	" 出力結果：tomohiro(vimScript9)
"echom g:asakunotomohiro . "関数外"

" 上記関数内で宣言された変数は、関数外で参照できない。


" vim:set ts=4 sw=4 tw=0 fenc=utf-8:
