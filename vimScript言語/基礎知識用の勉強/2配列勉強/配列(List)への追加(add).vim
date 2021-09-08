let asakunoList = ['asakuno', 'tomohiro', ]
call add(asakunoList, 'asakunotomohiro')
echom asakunoList
"	出力結果：['asakuno', 'tomohiro', 'asakunotomohiro']

call insert(asakunoList, 'asakuno tomohiro')
echom asakunoList
"	出力結果：['asakuno tomohiro', 'asakuno', 'tomohiro', 'asakunotomohiro']

call insert(asakunoList, 'tomohiro asakuno', 2)
echom asakunoList
"	出力結果：['asakuno tomohiro', 'asakuno', 'tomohiro asakuno', 'tomohiro', 'asakunotomohiro']

unlet asakunoList[3]
echom asakunoList
"	出力結果：['asakuno tomohiro', 'asakuno', 'tomohiro asakuno', 'asakunotomohiro']

let tomoasa=remove(asakunoList, -1)
echom asakunoList
"	出力結果：['asakuno tomohiro', 'asakuno', 'tomohiro asakuno']
echom tomoasa
"	出力結果：asakunotomohiro

let asa=['asaList1', ]
let asaList=asakunoList + asa
echom asaList
"	出力結果：['asakuno tomohiro', 'asakuno', 'tomohiro asakuno', 'asaList1']

let asa=['asaList2', ]
call extend(asakunoList, asa)
echom asakunoList
"	出力結果：['asakuno tomohiro', 'asakuno', 'tomohiro asakuno', 'asaList2']

"	以下のリストへの追加方法は意図していないだろう。
let asa=['asaList3', ]
call add(asakunoList, asa)
echom asakunoList
"	出力結果：['asakuno tomohiro', 'asakuno', 'tomohiro asakuno', 'asaList2', ['asaList3']]

let japanList = ['朝来野', '智博']
echom japanList[0][2]
"	出力結果：<9d>
"		多バイト文字の参照は信頼できない。

def! Tomohiro(): list<string>
	var tomohiroList = ['tomohiroList1', 'tomohiroList2', ]

	# 以下のリスト末尾に追加する。
	add(tomohiroList, 'tomohiroList3')
	#	出力結果：['tomohiroList1', 'tomohiroList2', 'tomohiroList3']

	# 以下のリスト先頭に追加する。
	insert(tomohiroList, 'tomohiroList4')
	#	出力結果：['tomohiroList4', 'tomohiroList1', 'tomohiroList2', 'tomohiroList3']

	# 以下のリスト先頭から3番目[配列要素2番目]に追加する。
	insert(tomohiroList, 'tomohiroList5', 2)
	#	出力結果：['tomohiroList4', 'tomohiroList1', 'tomohiroList5', 'tomohiroList2', 'tomohiroList3']

	# 以下のリスト先頭から4番目[配列要素3番目]を削除する('tomohiroList2')。
	unlet tomohiroList[3]
	#	出力結果：['tomohiroList4', 'tomohiroList1', 'tomohiroList5', 'tomohiroList3']

	# 以下のリスト末尾を削除する('tomohiroList3')。
	var tomoL3 = remove(tomohiroList, -1)
	#	出力結果：['tomohiroList4', 'tomohiroList1', 'tomohiroList5']
	echom tomoL3
	#	出力結果：tomohiroList3

	# 以下、リストへの追加方法。
	var tomoList = ['tomoList1', 'tomoList2', ]
	#	出力結果：['tomoList1', 'tomoList2']
	var asatomoList = tomohiroList + tomoList
	echo asatomoList
	#	出力結果：['tomohiroList4', 'tomohiroList1', 'tomohiroList5', 'tomoList1', 'tomoList2']

	# 以下、別の方法でのリストへの追加。
	extend(tomohiroList, ['ListTomohiro'])
	echo tomohiroList
	#	出力結果：['tomohiroList4', 'tomohiroList1', 'tomohiroList5', 'ListTomohiro']

	# 以下のリストへの追加は(script9では)間違い。
	#	というか、エラーになり、出来なかった。
	#var tomoAddList = ['add']
	#add(tomohiroList, tomoAddList)
	#echom tomohiroList
	#add(tomohiroList, ['add'])
	#echom tomohiroList
	#	出力結果：E1012: Type mismatch; expected string but got list<string>

	# 以下、リスト内での並び替え。
	#	並び替え前：['tomohiroList4', 'tomohiroList1', 'tomohiroList5', 'ListTomohiro']
	sort(tomohiroList)
	#	並び替え後：['ListTomohiro', 'tomohiroList1', 'tomohiroList4', 'tomohiroList5']

	# 以下、スライス関数を使う。
	var tomoSlice = slice(tomohiroList, 2)
	echom tomoSlice
	#	出力結果：['tomohiroList4', 'tomohiroList5']
	#		どういう意味？

	# 以下、リスト内の要素のインデックスを調べる。
	#	リスト内容：['ListTomohiro', 'tomohiroList1', 'tomohiroList4', 'tomohiroList5']
	var ListIndex = index(tomohiroList, 'tomohiroList4')
	echom ListIndex
	# 出力結果：2	←配列は0番目から数えるため、2番目にある。

	var listEmpty = []
	if empty(listEmpty)
		echom 'リストが空'
	endif
	# 出力結果：リストが空

	# 以下、リストの要素数を数える。
	#	リスト内容：['ListTomohiro', 'tomohiroList1', 'tomohiroList4', 'tomohiroList5']
	var lengs = len(tomohiroList)
	echom lengs
	# 出力結果：4

	# 以下、多バイト文字を含む配列
	var japList = ['朝来野', '智博']
	echom japList[0][2]
	#	出力結果：野

	return tomohiroList
enddef
echom Tomohiro()
"	出力結果：

" vim:set ts=4 sw=4 tw=0 fenc=utf-8:
