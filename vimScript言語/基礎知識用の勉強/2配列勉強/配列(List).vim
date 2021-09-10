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

let tomohiro = [1, 2]
echom tomohiro
"	出力結果：[1, 2]

let tomohiro = [1 .. 2]
echom tomohiro
"	出力結果：['12']

"let tomohiro = (1, 2)
"echom tomohiro
"	出力結果：エラー

" そもそも下記の書き方は何？
let tomohiro = (1 .. 2)
echom tomohiro
"	出力結果：12

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
