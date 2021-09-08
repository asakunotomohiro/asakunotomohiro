let g:asakuno='朝来野智博'
let g:asakunoList=['asakuno', 'tomohiro', 'a sa ku no to mo hi ro']

def! Tomohiro(): string
	# 以下は、vim9script限定。
	var tomo = 'hoge'
	var ii = 1
	while ii < 5
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
"			4回目の実行

def! TomohiroBreak(): string
	# 以下は、vim9script限定。
	var tomo = 'hoge'
	var ii = 1
	while ii < 5
		echom ii .. '回目の実行'
		if ii == 2
			break
		endif
		ii += 1
	endwhile

	return g:asakuno
enddef
echom TomohiroBreak()
"	出力結果：
"			1回目の実行
"			2回目の実行

def! TomohiroContinue(): string
	# 以下は、vim9script限定。
	var tomo = 'hoge'
	var ii = 1
	var jj = 0
	while ii < 5
		echom ii .. '回目の実行(jj値：' .. jj .. ')'
		if jj > 10
			break
		endif
		jj += 1
		if ii == 2
			continue
		endif
		ii += 1
	endwhile

	return g:asakuno
enddef
echom TomohiroContinue()
"	出力結果：
"			1回目の実行(jj値：0)
"			2回目の実行(jj値：1)
"			2回目の実行(jj値：2)
"			2回目の実行(jj値：3)
"			2回目の実行(jj値：4)
"			2回目の実行(jj値：5)
"			2回目の実行(jj値：6)
"			2回目の実行(jj値：7)
"			2回目の実行(jj値：8)
"			2回目の実行(jj値：9)
"			2回目の実行(jj値：10)
"			2回目の実行(jj値：11)

" vim:set ts=4 sw=4 tw=0 fenc=utf-8:
