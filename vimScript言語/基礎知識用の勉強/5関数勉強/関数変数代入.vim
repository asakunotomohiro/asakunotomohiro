let g:asakuno='朝来野智博'
let g:asakunoList=['asakuno', 'tomohiro', 'a sa ku no to mo hi ro']
let g:tomo = 'hoge'

def! Tomohiro(): string
	var sret = 'Tomohiro関数'
	return sret
enddef
"echom Tomohiro()

" 以下、関数を変数に代入し、その変数を使い、もとの関数を呼び出した(C言語やGo言語でも利用される使い方)。
def! AsakunoFunc( tomoArg: string = '引数無し(型付け)' ): string
	var RetFunc = Tomohiro
	var funcEcho = tomoArg .. 'から' .. RetFunc() .. 'を呼び出す。'

	return funcEcho
enddef
echom AsakunoFunc( 'asakuno関数' )
"	出力結果：asakuno関数からTomohiro関数を呼び出す。

" vim:set ts=4 sw=4 tw=0 fenc=utf-8:
