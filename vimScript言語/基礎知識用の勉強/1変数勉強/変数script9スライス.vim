
let asakuno = 'asakuno(vimScript8)'
echom asakuno
	" 出力結果：asakuno(vimScript8)

"
" vim script9以降の書き方。
"

def! Tomohiro(): string
	var tomohiro = 'tomohiro(vimScript9)'
	var asakuno9 = 'asakuno(vimScript9)'

	var asakuno = '朝来野智博'
	echom len(asakuno)	# 15

	asakuno = 'asakuno'
	echom len(asakuno)	# 7

	var length = asakuno9[0 : 1]
	echom "asakuno9のスライス：" .. length	# 出力結果：as

	length = asakuno9[0 : 0]
	echom "asakuno9のスライス：" .. length	# 出力結果：a

	length = asakuno9[0 : -1]
	echom "asakuno9のスライス：" .. length	# 出力結果：asakuno9のスライス：asakuno(vimScript9)

	length = asakuno9[0 : 7]
	echom "asakuno9のスライス：" .. length	# 出力結果：asakuno9のスライス：asakuno(



	length = asakuno[0 : 10]
	echom "asakunoのスライス：" .. length	# 出力結果：asakunoのスライス：asakuno
			# 範囲を超えても問題ないのか・・・困る。

	return tomohiro
enddef

echom Tomohiro()
	" 出力結果：tomohiro(vimScript9)


" vim:set ts=4 sw=4 tw=0 fenc=utf-8:
