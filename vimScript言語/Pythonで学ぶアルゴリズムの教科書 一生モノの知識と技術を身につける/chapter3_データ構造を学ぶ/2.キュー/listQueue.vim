let asakunoList=['asakuno', 'tomohiro', ]

echo "キュー(組み込み関数利用)"

def! Enqueue( data: number, queue: list<number> ): list<any>
	# データ積み上げ関数
	insert(queue, data)	# 先頭追加。
						# 要は、末尾から取り出す必要がある。
	echo "データ(" .. data .. ")を追加。"

	return queue
enddef

def! Dequeue( queue: list<number> ): list<any>
	# データ取り出し関数
	var data = 0

	if len(queue) <= 0
		echo "取り出すデータが存在しない。"
	else
		data = remove(queue, -1)
	endif

	return [data, queue]
enddef

def! Asakuno()
	var queue = [0]
	remove(queue, -1)
	var data = 0

	for ii in range(6)	# 0〜5
		queue = Enqueue( ii, queue )
	endfor

	for ii in range(7)	# 0〜6
		[data, queue] = Dequeue(queue)
		echo "取り出しデータ：" .. data
	endfor

	return
enddef
call Asakuno()
"			データ(0)を追加。
"			データ(1)を追加。
"			データ(2)を追加。
"			データ(3)を追加。
"			データ(4)を追加。
"			データ(5)を追加。
"			取り出しデータ：0
"			取り出しデータ：1
"			取り出しデータ：2
"			取り出しデータ：3
"			取り出しデータ：4
"			取り出しデータ：5
"			取り出すデータが存在しない。
"			取り出しデータ：0

" vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=vim noexpandtab:
