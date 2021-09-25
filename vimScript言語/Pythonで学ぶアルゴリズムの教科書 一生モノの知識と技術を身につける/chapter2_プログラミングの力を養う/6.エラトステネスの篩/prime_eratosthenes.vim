let asakunoList=['asakuno', 'tomohiro', ]

echo "エラトステネスのふるい"

def! Main()
	var eratosthenes = []
	for ii in range( 100 )
		add(eratosthenes, true)
	endfor
	eratosthenes[0] = false
	eratosthenes[1] = false

	var notprime = 2
	#echom len(eratosthenes)	# 100
	Hyou(eratosthenes)

	while notprime < 10		# √99まで行う。
		var retfurui = Furui(notprime, eratosthenes)
		notprime = retfurui[0]
		eratosthenes = retfurui[1]
	endwhile
enddef

def! Hyou( eratosthenes: list<bool> ): list<bool>
	var output = ""
	for ii in range(100)
		if eratosthenes[ii] == true
			#output = output .. printf("%2d", ii)
			output = printf("%s %2d,", output, ii)
		else
			#output = output .. " /, "	失敗。
			#output = printf("%s  /,", output)
			output ..= "  /,"
		endif

		if ii % 10 == 9
			#output .= "\n"
			#output = output .. "\n"
			#output = printf("%s\n", output)
			echom output
			output = ""
		endif
	endfor
	#echom output

	return eratosthenes
enddef

"def Furui(notprime: number, eratosthenes: list<bool>): list<any>	" E1012: Type mismatch; expected number but got list<any>
def Furui(notprime: number, eratosthenes: list<bool>): any
	var argnotprime = notprime
	#var forii = argnotprime * 2
	for ii in range( (argnotprime + argnotprime), 100, argnotprime)
		eratosthenes[ii] = false
		ii += argnotprime
		#forii = ii + argnotprime
	endfor
	#echom eratosthenes[3]
	#echom eratosthenes[4]
	#echom eratosthenes[5]

	echom ""
	echom argnotprime .. "の倍数をふるい落とした。"
	Hyou(eratosthenes)

	while argnotprime < 100	# 次にふるい落とす数。
		argnotprime += 1
		if eratosthenes[argnotprime] == true
			break
		endif
	endwhile

	#var retlist = [argnotprime, eratosthenes, ]
	#var retlist = [1234, 123]
	#return retlist
	return [argnotprime, eratosthenes, ]
enddef

call Main()
" 出力結果：
"			エラトステネスのふるい
"			  /,  /,  2,  3,  4,  5,  6,  7,  8,  9,
"			 10, 11, 12, 13, 14, 15, 16, 17, 18, 19,
"			 20, 21, 22, 23, 24, 25, 26, 27, 28, 29,
"			 30, 31, 32, 33, 34, 35, 36, 37, 38, 39,
"			 40, 41, 42, 43, 44, 45, 46, 47, 48, 49,
"			 50, 51, 52, 53, 54, 55, 56, 57, 58, 59,
"			 60, 61, 62, 63, 64, 65, 66, 67, 68, 69,
"			 70, 71, 72, 73, 74, 75, 76, 77, 78, 79,
"			 80, 81, 82, 83, 84, 85, 86, 87, 88, 89,
"			 90, 91, 92, 93, 94, 95, 96, 97, 98, 99,
"			
"			2の倍数をふるい落とした。
"			  /,  /,  2,  3,  /,  5,  /,  7,  /,  9,
"			  /, 11,  /, 13,  /, 15,  /, 17,  /, 19,
"			  /, 21,  /, 23,  /, 25,  /, 27,  /, 29,
"			  /, 31,  /, 33,  /, 35,  /, 37,  /, 39,
"			  /, 41,  /, 43,  /, 45,  /, 47,  /, 49,
"			  /, 51,  /, 53,  /, 55,  /, 57,  /, 59,
"			  /, 61,  /, 63,  /, 65,  /, 67,  /, 69,
"			  /, 71,  /, 73,  /, 75,  /, 77,  /, 79,
"			  /, 81,  /, 83,  /, 85,  /, 87,  /, 89,
"			  /, 91,  /, 93,  /, 95,  /, 97,  /, 99,
"			
"			3の倍数をふるい落とした。
"			  /,  /,  2,  3,  /,  5,  /,  7,  /,  /,
"			  /, 11,  /, 13,  /,  /,  /, 17,  /, 19,
"			  /,  /,  /, 23,  /, 25,  /,  /,  /, 29,
"			  /, 31,  /,  /,  /, 35,  /, 37,  /,  /,
"			  /, 41,  /, 43,  /,  /,  /, 47,  /, 49,
"			  /,  /,  /, 53,  /, 55,  /,  /,  /, 59,
"			  /, 61,  /,  /,  /, 65,  /, 67,  /,  /,
"			  /, 71,  /, 73,  /,  /,  /, 77,  /, 79,
"			  /,  /,  /, 83,  /, 85,  /,  /,  /, 89,
"			  /, 91,  /,  /,  /, 95,  /, 97,  /,  /,
"			
"			5の倍数をふるい落とした。
"			  /,  /,  2,  3,  /,  5,  /,  7,  /,  /,
"			  /, 11,  /, 13,  /,  /,  /, 17,  /, 19,
"			  /,  /,  /, 23,  /,  /,  /,  /,  /, 29,
"			  /, 31,  /,  /,  /,  /,  /, 37,  /,  /,
"			  /, 41,  /, 43,  /,  /,  /, 47,  /, 49,
"			  /,  /,  /, 53,  /,  /,  /,  /,  /, 59,
"			  /, 61,  /,  /,  /,  /,  /, 67,  /,  /,
"			  /, 71,  /, 73,  /,  /,  /, 77,  /, 79,
"			  /,  /,  /, 83,  /,  /,  /,  /,  /, 89,
"			  /, 91,  /,  /,  /,  /,  /, 97,  /,  /,
"			
"			7の倍数をふるい落とした。
"			  /,  /,  2,  3,  /,  5,  /,  7,  /,  /,
"			  /, 11,  /, 13,  /,  /,  /, 17,  /, 19,
"			  /,  /,  /, 23,  /,  /,  /,  /,  /, 29,
"			  /, 31,  /,  /,  /,  /,  /, 37,  /,  /,
"			  /, 41,  /, 43,  /,  /,  /, 47,  /,  /,
"			  /,  /,  /, 53,  /,  /,  /,  /,  /, 59,
"			  /, 61,  /,  /,  /,  /,  /, 67,  /,  /,
"			  /, 71,  /, 73,  /,  /,  /,  /,  /, 79,
"			  /,  /,  /, 83,  /,  /,  /,  /,  /, 89,
"			  /,  /,  /,  /,  /,  /,  /, 97,  /,  /,




echom "以上。"
" vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=vim noexpandtab:
