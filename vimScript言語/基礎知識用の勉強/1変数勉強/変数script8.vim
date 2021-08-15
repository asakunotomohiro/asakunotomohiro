"
" vim script8以前の書き方。
"
let asakuno = 'asakuno'
echom asakuno

" let l:tomohiro_l = 'l:tomohiro(vimScript8)'	" E461: 不正な変数名です: l:tomohiro_l
function! Tomohiro() abort
	let g:asakunotomohiro = 'g:asakuno(vimScript8)'
"	let v:asakuno_v = 'v:asakuno(vimScript8)'	" E461: 不正な変数名です: v:asakuno_v
	let l:asakuno_l = 'l:asakuno(vimScript8)'
	let b:asakuno_b = 'b:asakuno(vimScript8)'
	let w:asakuno_w = 'w:asakuno(vimScript8)'
	let t:asakuno_t = 't:asakuno(vimScript8)'
	let s:asakuno_s = 's:asakuno(vimScript8)'
"	let a:asakuno_a = 'a:asakuno(vimScript8)'	" E461: 不正な変数名です: a:asakuno_a
	let tomohiro = 'asakuno(vimScript8)'
	let asakuno8 = 'asakuno8'
	echom asakuno8
	unlet asakuno8
"	echom asakuno8	" E121: 未定義の変数です: asakuno8
	return g:asakunotomohiro
endfunction
echom Tomohiro() . "関数呼び出し"
echom g:asakunotomohiro . "関数外"

"echom l:asakuno_l . "関数外"	" E121: 未定義の変数です: l:asakuno_l
echom b:asakuno_b . "関数外"
echom w:asakuno_w . "関数外"
echom t:asakuno_t . "関数外"
echom s:asakuno_s . "関数外"
"echom tomohiro . "関数外"	" E121: 未定義の変数です: tomohiro
"echom l:tomohiro_l . "関数外"	" E121: 未定義の変数です: l:tomohiro_l

if exists("s:asakuno_s")
	" 動いている。
	echom "変数存在する。asakuno_s"
endif

if exists(s:asakuno_s)
	" この書き方の場合、引数の変数の値を引数としてexists関数に渡している(日本語がおかしいな)。
	" この書き方では、この変数名をexists関数に渡していないと言うこと。必ず、ダブルクォーテーションで括る必要がある。
	echom "s:asakuno_s_変数存在する。"
endif

if exists("l:tomohiro_l")
	echom "変数存在する。tomohiro_l"
else
	echom "変数存在しない。tomohiro_l"
endif


" vim:set ts=4 sw=4 tw=0 fenc=utf-8:
