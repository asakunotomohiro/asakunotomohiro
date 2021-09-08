let g:asakuno='朝来野智博'
let g:asakunoList=['asakuno', 'tomohiro', 'a sa ku no to mo hi ro']
let g:tomo = 'hoge'

def! Tomohiro(): string
	for tomo in g:asakunoList
		echom tomo
	endfor

	return g:asakuno
enddef
echom Tomohiro()
"	出力結果：
"			asakuno
"			tomohiro
"			a sa ku no to mo hi ro

" 以下、多次元配列を1つの配列として取り出す。
def! TomohiroList(): string
	var tomohiroList = [[1, 'ASAKUNO'], [2, 'TOMOHIRO'], [3, 'A SA KU NO TO MO HI RO']]
	for tomo in tomohiroList
		echom tomo
	endfor

	return g:asakuno
enddef
echom TomohiroList()
"	出力結果：
"			[1, 'ASAKUNO']
"			[2, 'TOMOHIRO']
"			[3, 'A SA KU NO TO MO HI RO']

" 以下、多次元配列から1つ1つ値を取り出す。
def! TomohiroListArray(): string
	var tomohiroList = [[1, 'ASAKUNO'], [2, 'TOMOHIRO'], [3, 'A SA KU NO TO MO HI RO']]
	for [tomo, asa] in tomohiroList
		echom 'tomo：[' .. tomo .. "]\tasa：[" .. asa .. ']'
	endfor

	return g:asakuno
enddef
echom TomohiroListArray()
"	出力結果：
"			tomo：[1]	asa：[ASAKUNO]
"			tomo：[2]	asa：[TOMOHIRO]
"			tomo：[3]	asa：[A SA KU NO TO MO HI RO]

" 以下、指定回数分のループ
def! TomohiroRange(): string
	for ii in range(3)
		echom ii .. '回目の実行'
	endfor

	return g:asakuno
enddef
echom TomohiroRange()
"	出力結果：
"			0回目の実行
"			1回目の実行
"			2回目の実行

" 以下、ステップ実行の逆方向
def! TomohiroReverseRange(): string
	for ii in range(19, 7, -3)
		echom ii .. '回目の実行'
	endfor

	return g:asakuno
enddef
echom TomohiroReverseRange()
"	出力結果：
"			19回目の実行
"			16回目の実行
"			13回目の実行
"			10回目の実行
"			7回目の実行

" 当ファイルの1行目から3行目を取り出し、変数名部分のみ表示する。
def! TomohiroGetLine(): string
	for ii in getline(1, 3)
		if ii =~ '.*:.*='
			echom matchstr(ii, 'g:\(\zs\(\w*\)\ze\)\=')
		endif
	endfor

	return g:asakuno
enddef
echom TomohiroGetLine()
"	出力結果：
"			asakuno
"			asakunoList
"			tomo


" 以下、ブレーク文追加にて、4回目で処理を抜け出る。
def! TomohiroBreak(): string
	for ii in range(100)
		echom ii .. '回目の実行'
		if ii == 3
			break
		endif
	endfor

	return g:asakuno
enddef
echom TomohiroBreak()
"	出力結果：
"			0回目の実行
"			1回目の実行
"			2回目の実行
"			3回目の実行

" 以下、コンテニュー文追加にて、、、、
"	検証断念。
def! TomohiroContinue(): string
	var jj = 0
	for ii in range(100)
		echom ii .. '回目の実行'
#		if [条件式]
#			continue
#		endif
	endfor

	return g:asakuno
enddef
#echom TomohiroContinue()
"	出力結果：
"			
" 必ずii変数がインクリメントされるため、whileのような単純なコンティニュさせるだけでは検証にならない。
" 困った。
" コンテニュー？
" コンティニュー？
" コンティニュウ？
" どれにしても長音記号はいらないよね。


" vim:set ts=4 sw=4 tw=0 fenc=utf-8:
