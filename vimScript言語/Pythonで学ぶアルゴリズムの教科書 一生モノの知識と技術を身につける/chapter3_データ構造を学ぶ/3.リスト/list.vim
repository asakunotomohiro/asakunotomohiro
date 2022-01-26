let asakunoList=['asakuno', 'tomohiro', ]

echo "アルゴリズム-リスト"
" const t:MAX = (5-1)	" 0〜4までの配列を使う。
const t:MAX = 5	" 0〜4までの配列を使う。

" def! Add_list( argHEAD: string, dataLIST: list<any>,  pointerLIST: list<any>, data: number): list<any>
def! Add_list( argHEAD: string, dataLIST: list<any>,  pointerLIST: list<number>, data: number): list<any>
	# データ投入関数
	var head = argHEAD
	var datalist = dataLIST
	var pointer = pointerLIST
	var n = -1

	# var loopcount = len(datalist)
	for ii in range( t:MAX )	# 0〜4
	# for ii in range(loopcount)	# 0〜4
		#if empty( datalist[ii] ) && datalist[ii] != 0
		#if datalist[ii] != 0
		#if empty( datalist[ii] )
		#if datalist[ii] !=? ""
		#if strlen( datalist[ii] .. "" )
		var strcast = datalist[ii] .. ""
#		if empty( strcast )
#		if len( strcast )
		if ! len( strcast )
#echom "add：" .. ii .. " --> " .. datalist[ii]
			n = ii
			break
		endif
	endfor

	if n  == -1
		echo "データ追加不可。"
		return [ "", datalist, pointer ]
	endif

	# loopcount = len(datalist)
	for ii in range( t:MAX )
	# for ii in range(loopcount)
#		if ! empty( datalist[ii] ) && empty( pointer[ii] )
#		if ! empty( datalist[ii] ) || empty( pointer[ii] )
		var strdata = datalist[ii] .. ""
		if ! empty( strdata )
			pointer[ii] = n
echom "<pointer[ii]：" .. pointer[ii] .. " -- ii：" .. ii .. " >"
			break
		endif
	endfor

	datalist[n] = data
	# pointer[n] = null	# E1012: Type mismatch; expected number but got special
	# pointer[n] = '\0'	# Type mismatch; expected number but got string
	#pointer[n] = 0
#	pointer[n] = null
	pointer[n] = 0

	echom "データ(" .. data .. ")追加。"
#echom "追加後の添え字0番目：" .. datalist[0]
#echom "追加後の添え字1番目：" .. datalist[1]
#echom "追加後の添え字2番目：" .. datalist[2]
	return [ head, datalist, pointer ]
enddef

" def! Del_list( argHEAD: string, dataLIST: list<any>,  pointerLIST: list<any>, data: number ): list<any>
def! Del_list( argHEAD: string, dataLIST: list<any>,  pointerLIST: list<number>, data: number ): list<any>
	# データ削除関数
	var head: string = argHEAD
	var datalist: list<any> = dataLIST
	#var pointer: list<any> = pointerLIST
	var pointer = pointerLIST
	var n: any = -1

	#var loopcount = len(datalist)
	for ii in range( t:MAX )
	# for ii in range(loopcount)
		if datalist[ii] == data
			n = ii
			break
		endif
	endfor

	if n == -1
		echo "削除データ(" .. data .. ")なし。"
		return [ "", datalist, pointer ]
	endif

	# if n != head	# E1138: Using a Bool as a Number
					# E611: Using a Special as a Number
	#if n !=? head
	#if n: any != head: any
	var testN = n .. ""
	var testHead = head .. ""
	if testN != testHead
		# loopcount = len(datalist)
		for ii in range( t:MAX )
		# for ii in range(loopcount)
			#if pointer[ii] == n	# E611: Using a Special as a Number
			var testPointerII = pointer[ii] .. ""
			#if pointer[ii] == testN
			if testPointerII == testN
				pointer[ii] = pointer[n]
			endif
		endfor
	else
		head = pointer[n] .. ""
		if empty( head )
			#head = 0
			head = ""
		endif
	endif

	datalist[n] = null	# E1012: Type mismatch; expected number but got special
#	pointer[n] = null
	pointer[n] = 0
	echom "データ(" .. data .. ")削除。"

#echom "削除後の添え字0番目：" .. datalist[0]
	return [ head, datalist, pointer ]
enddef

def! Put_list( argHEAD: string, dataLIST: list<any>,  pointerLIST: list<any> )
#	var p = argHEAD
	var testP = str2nr(argHEAD, 10)
#	var testP: string = argHEAD .. ""
	var datalist = dataLIST
	var pointer = pointerLIST

	# while 0 == 0
	echom ""
	var ii = 0
#	var countMax = len(dataLIST)
	while true
#	for data in range( datalist )
#	var data: any
#	for data in range( dataLIST )
#	for data in range( pointerLIST )
#	for ii in range(0, 1, countMax)
		#var testP: number = p
		#unlet testP
#		var testP = str2nr(p, 10)
		#var testData = datalist[p] .. ""
		#echon datalist[p] .. "--->"
		#echon testData .. "--->"
		echon datalist[testP] .. "--->"
		# if empty( pointer[p] )
		if len(dataLIST) <= ii
			echon "EOF"
			break
		endif
#echom "putlist：" .. ii .. " len(datalist)" .. len(dataLIST) .. " testP：" .. testP
		var strcast: string = datalist[ii] .. ""
		if empty( strcast )
		#if empty( data )
			echon "EOF"
			break
		endif
		#p = pointer[p]
		#unlet! p
		#var p = pointer[testP]
#echom "表示：" .. pointer[testP]
		#var tmpP = str2nr(testP, 10)
		#testP = pointer[tmpP]
		testP = pointer[testP]
		ii += 1
	endwhile
#	endfor
enddef

def! Asakuno()
#	var datalist: list<any> = [ null, null, null, null, null ]
#	var pointerlist: list<any> = [ null, null, null, null, null ]
	var datalist: list<any> = [ "", "", "", "", "" ]
#	var pointerlist: list<any> = [ "", "", "", "", "" ]
#	var pointerlist: list<int> = [ null, null, null, null, null ]
#	var pointerlist: list<int> = [ v:null, v:null, v:null, v:null, v:null ]
#	var pointerlist: list<int> = [ 0, 0, 0, 0, 0 ]
	var pointerlist: list<number> = [ 0, 0, 0, 0, 0 ]
#	var pointerlist: list<number> = [ null, null, null, null, null ]
#	var pointerlist: list<special> = [ null, null, null, null, null ]
	#var head: string = null	# 取り出し位置。
	#var head: string = none	# 取り出し位置。
	var head: string = ""	# 取り出し位置。
	var data = 0	# データ

echom datalist[0]
	# 値の追加。
	# for ii in range(6)	# 0〜5
	for ii in range(5)	# 0〜5
#echom "main：" .. ii
		[ head, datalist, pointerlist ] = Add_list(head, datalist, pointerlist, ii)
	endfor
#echom datalist[0]
#echom datalist[1]
#echom pointerlist[0]
#echom pointerlist[1]


	Put_list( head, datalist, pointerlist )	# 値の表示。

	# 値の削除。
#echom datalist[0]
	[ head, datalist, pointerlist ] = Del_list(head, datalist, pointerlist, 3)
#echom datalist[0]
#	Put_list( head, datalist, pointerlist )

	# 値の削除。
#	[ head, datalist, pointerlist ] = Del_list(head, datalist, pointerlist, 0)
#	Put_list( head, datalist, pointerlist )

	return
enddef
call Asakuno()

unlet! t:MAX

" vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=vim noexpandtab:
