let asakunoList=['asakuno', 'tomohiro', ]

echon "アルゴリズム-木"
const s:LEFT = 0	" 左ノード番号用定数
const s:RIGHT = 1	" 右ノード番号用定数
const s:DATA = 2	" データ値用定数
	" s:の接頭辞は、:sourceされたVim scriptにローカルの意味がある。

def! Tree( argNode: list<any>, argMAX: number )
	echo "指定番号のノード調査開始。"
	echo "入力なしのEnter押下にて、プログラム終了。"
	# var inputString = input("ユーザ入力：", "1")
	var inputString = ""

	while 0 == 0
#		var inputString = "0"
#		var inputString = input("ユーザ入力：", "1")
		inputString = input("ユーザ入力：")
		#var inputString = input("ユーザ入力：")
#		var inputString = inputdialog("ユーザ入力：")
		# E1072: Cannot compare number with string
		#	このエラーは、下記のif文での文字列と数値の比較が原因。
		#var inputNumber = list2str(inputString)
		#var inputNumber = nr2char(inputString)
		# 以下、文字列を数値に変換する。
		var inputNumber = str2nr(inputString)
#		if list2str(inputString) == 0
#		if len(inputString) == 0
#		if inputNumber == 0
		# echo "入力値の長さ：" .. nr2char(len(inputString)) "->入力値" .. inputString
		# echo "入力値の長さ：" .. len(inputString) "->入力値" .. inputString
		#if inputString ==? 0	←☆完全に駄目。
		#if strchars(inputString) == 0
		#if strlen(inputString) == 0
		#if strlen(inputString)	←☆完全に駄目。
		#if inputString ==? ""
		#if inputString != ""
		if inputString == ""
			# E611: Using a Special as a Number
			break
#			return
		endif
#		# var inputNumber = キャスト不要と判断した。
#		#if 0 <= inputString && inputString < s:MAX	←☆上記のエラーはここが原因。
		if 0 <= inputNumber && inputNumber < argMAX
			echom "node" .. inputString .. "の値は" .. argNode[inputNumber][s:DATA]
			#var leftNodedata = argNode[inputNumber][s:LEFT]
			var leftNodedata = printf("%s", argNode[inputNumber][s:LEFT])
			#echo leftNodedata .. "←文字列に変換した。"
			#if leftNodedata != null
			#if "" != ""
			#if "" == ""
			if leftNodedata ==? "null"
			#if leftNodedata != ""
			#if leftNodedata !=? ""
			#if len(leftNodedata) == 0 && leftNodedata == null
			#if leftNodedata == null && len(leftNodedata) == 0
			#if len(leftNodedata) != 0
			#if strlen(leftNodedata) != 0
				#echom "左の葉は" .. argNode[leftNodedata][s:DATA]
				echom "左の葉は存在しない。"
			else
				# E1012: Type mismatch; expected number but got string
				#echom "左の葉は存在しない。"
				#var leftdata = printf("[%s]", argNode[leftNodedata][s:DATA])
				var leftNumber = str2nr(leftNodedata)
				var leftdata = printf("左の葉は[%s]", argNode[leftNumber][s:DATA])
				#echom "" .. leftdata
				echom leftdata
				#echom "左の葉は" .. 123
				#echom "左の葉は" .. argNode[leftNodedata][s:DATA]
			endif
			var rightNodedata = printf("%s", argNode[inputNumber][s:RIGHT])
			#echo rightNodedata .. "←文字列に変換した。"
			#if rightNodedata != null
			if rightNodedata ==? "null"
				echom "右の葉は存在しない。"
			else
				var rightNumber = str2nr(rightNodedata)
				var rightdata = printf("右の葉は[%s]", argNode[rightNumber][s:DATA])
				#echom "右の葉は" .. argNode[rightNumber][s:DATA]
				echom rightdata
			endif
		else
			echom "0から" .. (argMAX - 1) .. "の範囲入力必須。"
		endif
	endwhile

enddef

def! Main()
	var node = [
			[1,	2,	10],
			[3,	4,	20],
			[5,	null,	30],
			[null,	null,	40],
			[6,	7,	50],
			[null,	null,	60],
			[null,	null,	70],
			[null,	null,	80],
		]
	var MAX = len(node)

	Tree(node, MAX)

	return
enddef
call Main()
"	以下、出力結果。
"			指定番号のノード調査開始。
"			入力なしのEnter押下にて、プログラム終了。
"			node0の値は10
"			左の葉は[20]
"			右の葉は[30]
"			node1の値は20
"			左の葉は[40]
"			右の葉は[50]
"			node2の値は30
"			左の葉は[60]
"			右の葉は存在しない。
"			node3の値は40
"			左の葉は存在しない。
"			右の葉は存在しない。
"			node4の値は50
"			左の葉は[70]
"			右の葉は[80]
"			node5の値は60
"			左の葉は存在しない。
"			右の葉は存在しない。
"			node6の値は70
"			左の葉は存在しない。
"			右の葉は存在しない。
"			node7の値は80
"			左の葉は存在しない。
"			右の葉は存在しない。
"			0から7の範囲入力必須。

unlet! s:LEFT
unlet! s:RIGHT
unlet! s:DATA

" vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=vim noexpandtab:
