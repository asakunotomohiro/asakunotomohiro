
const asakuno = 'asakuno(vimScript8)'
echom asakuno
" 出力結果：asakuno(vimScript8)
"	このスクリプトを続けて実行した場合エラーになる。
"	エラー内容：E995: 既存の変数を変更できません

"
" vim script9以降の書き方。
"

def Tomohiro(): string
	const tomohiro = 'tomohiro(vimScript9)'
#	tomohiro = 'asakuno'	# E1018: Cannot assign to a constant: tomohiro
	return tomohiro
enddef
echom Tomohiro()
	" 出力結果：tomohiro(vimScript9)

"def Asakuno(): string
def Asakuno(): list<number>
	final tomohiro = 'final tomohiro(vimScript9)'
#	tomohiro = 'asakuno'	# E1018: Cannot assign to a constant: tomohiro
	final tomohiroList = [1, 2]
#	tomohiroList = [3, 4]	# E1018: Cannot assign to a constant: tomohiroList
	tomohiroList[0] = 99
#	return tomohiro
	# 出力結果：final tomohiro(vimScript9)
	return tomohiroList
enddef
echom Asakuno()
	" 出力結果：[99, 2]

" 関数内で宣言された変数は、関数外で参照できない。

" vim:set ts=4 sw=4 tw=0 fenc=utf-8:
