let asakunoList=['asakuno', 'tomohiro', ]

" ルール1に法った作業(関数作成なしには従えないが・・・)。
def! Addup1(): number
	var total = 0
	for b:ii in range(1, 10)
		total += b:ii
	endfor

	return total
enddef
let b:total = Addup1()
echom b:total
"	出力結果：55
"	関数内のtotal変数の接頭辞としてb:を付けたらエラーになるが、なぜかfor用のiiではエラーにならない。
"	なぜ？

"
" -------------------------------------
"

" ルール2に法った作業。
def! Addup2( argnum = 0 ): number
	var total = 0
	#	argnum += 1	E1090: Cannot assign to argument argnum
	for ii in range( 1, argnum )
		total += ii
	endfor

	return total
enddef
"let b:total = Addup2(a)	function quickrun#command#execute[10]..quickrun#run[10]..578[10]..573[3]..<SNR>228_execute[9]..script addup.vim, 行 31
"let b:total = Addup2('a')	E1013: Argument 1: type mismatch, expected number but got string
"let b:total = Addup2('10')	E1013: Argument 1: type mismatch, expected number but got string
let total = Addup2(10)
echom total
"	出力結果：55


"
" -------------------------------------
"

" ルール3に法った作業。
def! Addup3( argnum = 0 ): number
	var num = argnum
	var total = (1 + num) * num / 2

	return total
enddef
let total = Addup3(10)
echom total
"	出力結果：55

"
" -------------------------------------
"

" 開始と終了を指定する。
def! AddupGauss( argnum1 = 0, argnum2 = 0 ): number
	var num1 = 0
	var num2 = 0
	if argnum2 <= 0
		# 引数が1つだけの場合を想定している。
		num2 = argnum1
		num1 = 1
	else
		# 引数をそのまま使う。
		num1 = argnum1
		num2 = argnum2
	endif
	var count = num2 - num1 + 1.0

	var total = float2nr((num1 + num2) * count / 2.0)

	return total
enddef
let total = AddupGauss(10)
echom total
"	出力結果：55
echom AddupGauss(1, 10)
"	出力結果：55
echom AddupGauss(-1, 10)
"	出力結果：54
echom AddupGauss(0, 10)
"	出力結果：55
echom AddupGauss(0, 10)
"	出力結果：55
echom AddupGauss(10, 1)
"	出力結果：-44

" vim:set ts=4 sw=4 tw=0 fenc=utf-8:
