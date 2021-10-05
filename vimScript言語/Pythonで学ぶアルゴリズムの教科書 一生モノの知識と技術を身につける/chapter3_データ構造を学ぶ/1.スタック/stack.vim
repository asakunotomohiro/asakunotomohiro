let asakunoList=['asakuno', 'tomohiro', ]

echo "アルゴリズム-スタック"
" const MAX = 5
	" E995: 既存の変数を変更できません
" let MAX = 5
	" E741: 値がロックされています: MAX
let g:MAX = 5

"def! Push( sp: number, data: number, stack: list<number>): number, list<number>
"def! Push( argsp: number, data: number, stack: list<number>): void
"def! Push( argsp: number, data: number, stack: list<number>): number
def! Push( argsp: number, data: number, stack: list<number>): list<any>
	var sp = argsp
	#const MAX = 5
	# 積み上げる関数
	if sp < g:MAX
		stack[sp] = data
		sp += 1
		echo "データ" .. data .. "を追加。"
	else
		echo "これ以上データ追加不可。"
	endif

	return [sp, stack]
enddef

"def! Pop(argsp: number, stack: list<number>): number
def! Pop(argsp: number, stack: list<number>): list<any>
	var sp = argsp
	var data = 0
	if sp > 0
		sp -= 1
		data = remove(stack, -1)
		#return stack[sp]
	else
		echo "取り出すデータが存在しない。"
	endif

	return [sp, data, stack]
enddef

def! Asakuno()
	#var stack = [0, 0, 0, 0, 0, ]
	var stack = [0]	# どういうこと？
	var data = 0
	var sp = 0	# スタックポインタ

	for ii in range(6)
		[sp, stack] = Push(sp, ii, stack)
	endfor

	for ii in range(6)
		[sp, data, stack] = Pop(sp, stack)
		echo "取り出しデータ：" .. data
	endfor

	return
enddef
call Asakuno()
unlet! g:MAX

" vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=vim noexpandtab:
