let asakuno = 'asakuno(vimScript8)'
echom asakuno
" 出力結果：asakuno(vimScript8)

let asaASA = 'asa'
let asa123 = 123
echom asaASA .. asa123
" 出力結果：asa123

echom asaASA .. v:true
" 出力結果：asav:true

"
" vim script9以降の書き方。
"

def Tomohiro(): string
	var tomoABC = 'asa'
	var tomo123 = 123
	echom tomoABC .. tomo123
	# 出力結果：asa123

	echom tomoABC .. v:true
	# 出力結果：asatrue
	#		script8とは出力結果が異なる。

	var tomohiro = 'tomohiro'
	var vimscript = '(vimScript9)'
	return tomohiro .. vimscript
enddef
echom Tomohiro()
	" 出力結果：tomohiro(vimScript9)

" vim:set ts=4 sw=4 tw=0 fenc=utf-8:
