let g:asakuno='朝来野智博'

def! Tomohiro(): string
	# 以下は、vim9script限定。
	var ii = 1
	while ii == ii
		echom ii .. '回目の実行'
		ii += 1
	endwhile

	return g:asakuno
enddef
echom Tomohiro()
"	出力結果：
"			1回目の実行
"			2回目の実行
"			3回目の実行
"				・
"				・
"				・
"			2045576回目の実行
"			2045577回目の実行
"			2045578回目の実行
"				・
"				・
"				・

" vim:set ts=4 sw=4 tw=0 fenc=utf-8:
