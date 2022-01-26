let asakunoList=['asakuno', 'tomohiro', ]

echo "アルゴリズム-キュー"
const t:MAX = 6	" 0〜5までの配列を使うが、実装しやすいように6つ目を区切りにしている。

def! Enqueue( argHEAD: number, argTAIL: number, data: number, queue: list<number>): list<any>
	# データ投入関数
	var head = argHEAD
	var tail = argTAIL
	var nt   = (tail + 1) % t:MAX

	if nt == head
		echo "これ以上データ追加不可。"
	else
		queue[tail] = data
		tail = nt
		echo "データ(" .. data .. ")を追加。"
	endif

	return [tail, queue]
enddef

def! Dequeue(argHEAD: number, argTAIL: number, queue: list<number>): list<any>
	# データ取り出し関数
	var head = argHEAD
	var tail = argTAIL
	var nt   = (tail + 1) % t:MAX
	var data = 0

	if head == tail
		echo "取り出すデータが存在しない。"
	else
		head += 1
		#data = remove(queue, -1)
		# E476: Invalid command: data = remove(queue, -1)
		data = remove(queue, 0)
	endif

	return [head, data, queue]
enddef

def! Asakuno()
	var queue = [0]
	var data = 0
	var head = 0	# 取り出し位置。
	var tail = 0	# 投入位置。

	for ii in range(6)	# 0〜5
		[tail, queue] = Enqueue(head, tail, ii, queue)
	endfor

	for ii in range(6)	# 0〜5
		[head, data, queue] = Dequeue(head, tail, queue)
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
"			これ以上データ追加不可。
"			取り出しデータ：0
"			取り出しデータ：1
"			取り出しデータ：2
"			取り出しデータ：3
"			取り出しデータ：4
"			取り出すデータが存在しない。
"			取り出しデータ：0
unlet! t:MAX

" vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=vim noexpandtab:
