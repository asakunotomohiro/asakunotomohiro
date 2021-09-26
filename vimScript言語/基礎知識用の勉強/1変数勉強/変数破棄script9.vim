
let asakuno = 'asakuno(vimScript8)'
echom asakuno
	" 出力結果：asakuno(vimScript8)

"
" 以下、vim script9以降の書き方。
"

def! Tomohiro(): string
	var asakuno9 = 'asakuno(vimScript9)'
	echom asakuno9
		# asakuno(vimScript9)

	#unlet asakuno9
		# E1081: Cannot unlet asakuno9

	#unvar asakuno9
		# E476: Invalid command: unvar asakuno9

	return '破棄確認関数'
enddef
echom Tomohiro()
	" 出力結果：tomohiro(vimScript9)


" vim:set ts=4 sw=4 tw=0 fenc=utf-8:
