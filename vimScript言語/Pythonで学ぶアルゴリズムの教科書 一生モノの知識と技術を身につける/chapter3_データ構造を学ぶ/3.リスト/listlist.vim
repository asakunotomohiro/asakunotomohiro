let asakunoList=['asakuno', 'tomohiro', ]

echo "アルゴリズム-リスト"

" def! Add_list( dataLIST: list<any>, data: any ): list<any>
" def! Add_list( dataLIST: list, data: any ): list<any>	# E1008: Missing <type>
" def! Add_list( dataLIST: list<any>, data: any ): list<any>
" def! Add_list( dataLIST: list<number>, data: any ): list<any>	# E1163: Variable 1: type mismatch, expected list<any> but got number
" def! Add_list( dataLIST: any, data: any ): list<any>
def! Add_list( dataLIST: list<any>, data: any ): list<any>
	# データ投入関数
	var datalist = dataLIST

	add(datalist, data)

	return datalist
enddef

" def! Del_list( argHEAD: string, dataLIST: list<any>,  pointerLIST: list<any>, data: number ): list<any>
def! Del_list( dataLIST: list<any>, data: any ): list<any>
	# データ削除関数
	var datalist = dataLIST

	var ii = 0
	for value in ( datalist )
		var strlist = value .. ""
		var strdata = data .. ""
		if strlist ==? strdata
			remove( datalist, ii )
			break
		endif
		ii += 1
	endfor

	return datalist
enddef

def! Put_list( dataLIST: list<any> )
	echom ""
	for value in ( dataLIST )
		echon value .. "--->"
	endfor
	echon "EOF"
enddef

def! Asakuno()
#	var datalist: list<any> = []	# E1163: Variable 1: type mismatch, expected list<any> but got number
#	var datalist: list = []	# E1008: Missing <type>
#	var datalist = []	# E1163: Variable 1: type mismatch, expected list<any> but got number
#	var datalist = ["", 0]	# E1017: Variable already declared: datalist
#	var datalist: list<any> = ["", 0]	# E1017: Variable already declared: datalist
	var datalist: list<any> = []

	# 値の追加。
	for ii in range(5)	# 0〜5
#		[ datalist ] = Add_list( datalist, ii .. "")
		# E1163: Variable 1: type mismatch, expected list<any> but got number
		#	このエラーは何だ？
		datalist = Add_list( datalist, ii)
#		[ datalist ] = Add_list( datalist, "hoge")
	endfor
	Put_list( datalist )	# 値の表示。

	# 値の削除。
	datalist = Del_list( datalist, 3)

	# 値の追加。
	datalist = Add_list( datalist, "asakuno")
	Put_list( datalist )

	# 値の削除。
	datalist = Del_list( datalist, 0)
	Put_list( datalist )

	# 値の追加。
	datalist = Add_list( datalist, "tomohiro")
	Put_list( datalist )

	# 値の削除。
	datalist = Del_list( datalist, "asakuno")
	Put_list( datalist )

	return
enddef
call Asakuno()

unlet! t:MAX

" vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=vim noexpandtab:
