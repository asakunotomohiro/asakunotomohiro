let asakunoList=['asakuno', 'tomohiro', ]

echo "以下、再帰処理例"
def! Factorial( args = '0' ): number
	# 全体文字数から1引いた値がスライスから抜き出せる限界値。
	var num = len(args) - 1
	if num > 0
		#	さらにそこから1つ減らした値を今回使う。

		echom printf("再帰関数%d回目の実行及び出力内容：%s", num, args)
		num -= 1
		Factorial(args[0 : num])
	endif
#	num += 2
#	if num == 0 && len(args) == 1
	if len(args) <= 1
		echom printf("再帰関数%d回目の実行及び出力内容：%s", num, args)
	endif
#	num += 1

	return num
enddef
"call Factorial("朝来野智博")
call Factorial("asakuno")
"	出力結果：
"			再帰関数6回目の実行及び出力内容：asakuno
"			再帰関数5回目の実行及び出力内容：asakun
"			再帰関数4回目の実行及び出力内容：asaku
"			再帰関数3回目の実行及び出力内容：asak
"			再帰関数2回目の実行及び出力内容：asa
"			再帰関数1回目の実行及び出力内容：as
"			再帰関数0回目の実行及び出力内容：a

echom "----------------------------------------------------------"

echom "以下、10の階乗を求める(ルール1)。"
def! Factorial1(): number
	var num = 1
	for ii in range(10, 1, -1)
		num *= ii
	endfor

	return num
enddef
echom Factorial1()
"	出力結果：
"			3628800


echom "----------------------------------------------------------"

echom "以下、指定した階乗を求める(再帰処理なし)。"
def! Factorial2( arg = 0): number
	var num = 1
	for ii in range(arg, 1, -1)
		num *= ii
	endfor

	return num
enddef
echom Factorial2()
"	出力結果：1

echom Factorial2(10)
"	出力結果：
"			3628800

echom Factorial2(5)
"	出力結果：
"			120


echom "----------------------------------------------------------"

echom "以下、10の階乗を求める(ルール2)。"
def! Factorial3( arg = 0): number
	var ret = 0
	if arg == 0
		ret = 1
	else
		ret = arg * Factorial3(arg - 1)
	endif

	return ret
enddef
echom Factorial3()
"	出力結果：1
echom Factorial3(10)
"	出力結果：3628800
echom Factorial3(5)
"	出力結果：120


echom "----------------------------------------------------------"

echom "以下、10の階乗を求める(ルール2)。"
def! Factorial3( arg = 0): number
	var ret = 0
	if arg == 0
		ret = 1
	else
		ret = arg * Factorial3(arg - 1)
	endif

	return ret
enddef
echom Factorial3()
"	出力結果：1
echom Factorial3(10)
"	出力結果：3628800
echom Factorial3(5)
"	出力結果：120
echom Factorial3(20)
"	出力結果：2432902008176640000

def! Call_factorial(num = 1)
	for ii in range( 21 )
		echom printf("%2d! = %d", ii, Factorial3(ii))
	endfor
enddef
call Call_factorial()
" 出力結果：
"			 0! = 1
"			 1! = 1
"			 2! = 2
"			 3! = 6
"			 4! = 24
"			 5! = 120
"			 6! = 720
"			 7! = 5040
"			 8! = 40320
"			 9! = 362880
"			10! = 3628800
"			11! = 39916800
"			12! = 479001600
"			13! = 6227020800
"			14! = 87178291200
"			15! = 1307674368000
"			16! = 20922789888000
"			17! = 355687428096000
"			18! = 6402373705728000
"			19! = 121645100408832000
"			20! = 2432902008176640000




echom "以上。"
" vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=vim noexpandtab:
