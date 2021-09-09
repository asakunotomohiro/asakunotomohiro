let asakunoList=['asakuno', 'tomohiro', ]

def! Average(): list<number>
	var score = [70, 98, 92, 88, 64]
	var total = 0

	for value in score
		total += value
	endfor
	var average = total / len(score)

	var retList = [total, average]
	return retList
enddef
let aveList = Average()
"echom Average()
"	出力結果：[412, 82]

echom "合計値：" .. aveList[0]
	" 合計値：412
echom "平均点：" .. aveList[1]
	" 平均点：82

" vim:set ts=4 sw=4 tw=0 fenc=utf-8:
