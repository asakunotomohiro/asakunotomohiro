let g:asakuno='朝来野智博'
let g:asakunoList=['asakuno', 'tomohiro', 'a sa ku no to mo hi ro']
let g:tomo = 'hoge'

def! Tomohiro()
	var funcEcho = 'Tomohiro関数(引数無し)戻り値無し'
	echom funcEcho
enddef
call Tomohiro()
"	出力結果：Tomohiro関数(引数無し)

def! AsaTomohiro(): void
	var funcEcho = 'AsaTomohiro関数(引数無し)戻り値無し'
	echom funcEcho
enddef
call AsaTomohiro()
"	出力結果：AsaTomohiro関数(引数無し)戻り値無し

def! TomohiroRet(): string
	var funcEcho = 'Tomohiro関数(引数無し)戻り値あり'

	return funcEcho
enddef
echom TomohiroRet()
"	出力結果：Tomohiro関数(引数無し)戻り値あり

def! TomohiroRet( tomoarg = '引数無し' ): void
	echom tomoarg
enddef
call TomohiroRet( 'Tomohiro関数(引数あり)戻り値なし' )
"	出力結果：Tomohiro関数(引数あり)戻り値なし

def! TomohiroMandatoryArgRet( tomoArg: string ): string
	var funcEcho = tomoArg .. '：Tomohiro関数(引数あり: 必須)戻り値あり'

	return funcEcho
enddef
echom TomohiroMandatoryArgRet( '関数を呼ぶ' )
"	出力結果：関数を呼ぶ：Tomohiro関数(引数あり: 必須)戻り値あり
"echom TomohiroMandatoryArgRet()
"	出力結果：E119: 関数の引数が足りません: TomohiroMandatoryArgRet

def! TomohiroAnyArgRet( tomoArg = '引数無し' ): string
	var funcEcho = tomoArg .. '：Tomohiro関数(引数あり = 任意)戻り値あり'

	return funcEcho
enddef
echom TomohiroAnyArgRet( '関数引数' )
"	出力結果：関数引数：Tomohiro関数(引数あり = 任意)戻り値あり
echom TomohiroAnyArgRet()
"	出力結果：引数無し：Tomohiro関数(引数あり = 任意)戻り値あり

def! TomohiroAnyArgTypeRet( tomoArg: string = '引数無し(型付け)' ): string
	var funcEcho = tomoArg .. '：Tomohiro関数(引数あり:型 = 任意)戻り値あり'

	return funcEcho
enddef
echom TomohiroAnyArgTypeRet( '関数を呼ぶ(引数)' )
"	出力結果：関数を呼ぶ(引数)：Tomohiro関数(引数あり:型 = 任意)戻り値あり
echom TomohiroAnyArgTypeRet()
"	出力結果：引数無し(型付け)：Tomohiro関数(引数あり:型 = 任意)戻り値あり

" vim:set ts=4 sw=4 tw=0 fenc=utf-8:
