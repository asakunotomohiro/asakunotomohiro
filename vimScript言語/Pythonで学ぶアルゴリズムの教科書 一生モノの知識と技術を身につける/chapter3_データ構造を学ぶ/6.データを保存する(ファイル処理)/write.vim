let asakunoList=['asakuno', 'tomohiro', ]

echon "アルゴリズム-ファイル書き出し。\n"

def! Write()
	redir! > asakuno.txt
		echon "テスト書き込み1行目"
		silent! echo "テスト書き込み2行目"
		echo "テスト書き込み3行目\n"
		var data = 1	# べき乗演算子が無いため、自前計算用変数用意。
		for ii in range(10)
			data *= 2	# べき乗計算。
			echon data .. ','
		endfor
	redir END
enddef

call Write()
"	以下、出力結果。

" vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=vim noexpandtab:
