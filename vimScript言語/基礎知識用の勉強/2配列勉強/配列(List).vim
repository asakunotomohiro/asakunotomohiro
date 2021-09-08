let asakunoList=['asakuno', 'tomohiro', ]
echom asakunoList
"	出力結果：['asakuno', 'tomohiro']

" script8でのスライス。
let asaList =asakunoList[1:]
echom asaList
"	出力結果：['tomohiro']

let asaList= asakunoList[:0]
echom asaList
"	出力結果：['asakuno']

let asaList = asakunoList[:]
echom asaList
"	出力結果：['asakuno', 'tomohiro']

def! Tomohiro(): list<string>
#	var tomohiroList=['asakuno', 'tomohiro', ]	# E1004: White space required before and after '=' at "=['asakuno', 'tomohiro', ]"
	var tomohiroList = ['tomohiroList1', 'tomohiroList2', ]

	# スライス
#	var tomoList = tomohiroList[1:]
	# 出力結果：E1004: White space required before and after ':' at ":]"
	var tomoList = tomohiroList[1 :]
	# 出力結果：['tomohiroList2']
	tomoList = tomohiroList[: 0]
	# 出力結果：['tomohiroList1']
	tomoList = tomohiroList[:]
	# 出力結果：['tomohiroList1', 'tomohiroList2']
	echom tomoList

	return tomohiroList
enddef
echom Tomohiro()
"	出力結果：['tomohiroList1', 'tomohiroList2']

" vim:set ts=4 sw=4 tw=0 fenc=utf-8:
