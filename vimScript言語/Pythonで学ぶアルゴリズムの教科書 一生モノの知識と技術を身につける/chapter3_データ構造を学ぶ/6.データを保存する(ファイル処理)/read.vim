let asakunoList=['asakuno', 'tomohiro', ]

echon "アルゴリズム-ファイル読み込み。\n"

def! Write()
	# こちらは書き込み用関数なので気にしないこと。
	redir! > asakuno.txt
		var data = 1	# べき乗演算子が無いため、自前計算用変数用意。
		for ii in range(10)
			data *= 2	# べき乗計算。
			# メッセージ出力を抑止しているつもりなのだが、echonを使っている以上、出てしまうのだろうか。
			silent! echon data .. ','
		endfor
	redir END
enddef

def! Read()
	# 今回は、ここの読み込み関数が大事になる。
	for line in readfile('asakuno.txt')
		echo line
	endfor
enddef

def! Main()
	silent! Write()	# 出力が消えない。
	Read()
	delete("asakuno.txt")	# ファイル削除。
enddef

call Main()
"	以下、出力結果。
"		2,4,8,16,32,64,128,256,512,1024,	←☆ファイル書き込み時の出力。
"		2,4,8,16,32,64,128,256,512,1024,	←☆ファイル読み込み時の出力。

" vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=vim noexpandtab:
