let asakunoList=['asakuno', 'tomohiro', ]

echo "スタック(組み込み関数利用)"

def! Push( data: number, stack: list<number>): list<number>
	# 積み上げる関数
	add(stack, data)

	return stack
enddef


def! Pop( stack: list<number> ): list<any>
	# 取り出す関数

	var data = remove(stack, -1)
	if len(stack) <= 0
#	if len(stack) > 0
#	else
		echo "取り出すデータが存在しない。"
	endif

	return [data, stack]
enddef


def! MainFunc()
	var stack = [0]
	var data = 0

	for ii in range(5)
		stack = Push( ii, stack)
	endfor

	for ii in range(6)
		[data, stack] = Pop(stack)
		if len(stack) > 0
			echo "取り出しデータ：" .. data
		endif
	endfor

	return
enddef

" 関数呼び出し。
call MainFunc()

" vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=vim noexpandtab:
