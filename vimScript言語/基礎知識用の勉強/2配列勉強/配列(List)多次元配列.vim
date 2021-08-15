let asakunoList=['asakuno', 'tomohiro', ['asa1', 'tomo1', ], ['asa2', 'tomo2', ], ]
echom asakunoList
"	出力結果：['asakuno', 'tomohiro', ['asa1', 'tomo1'], ['asa2', 'tomo2']]

echom asakunoList[2][1]
"	出力結果：tomo1

def! Tomohiro(): list<any>
	var tomohiroList = ['tomohiroList1', 'tomohiroList2', ['tomo1', 'tomo2', ], ['tomo10', 'tomo20', ], ]

	echom tomohiroList[3][0]
	#	出力結果：tomo10

	return tomohiroList
enddef
echom Tomohiro()
"	出力結果：['tomohiroList1', 'tomohiroList2', ['tomo1', 'tomo2'], ['tomo10', 'tomo20']]

" vim:set ts=4 sw=4 tw=0 fenc=utf-8:
