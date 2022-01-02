let asakunoList=['asakuno', 'tomohiro', ]

echon "アルゴリズム-グラフ"

def! UndirectedGraph( data: list<list<number>>, node: list<string> )
	echo "無向グラフ"

	for yy in range(4)
		for xx in range(yy, 4)
			if data[yy][xx] == 1 && data[xx][yy] == 1
				echom node[yy] .. '<--->' .. node[xx]
			endif
		endfor
	endfor
enddef

def! DirectedGraph( data: list<list<number>>, node: list<string>, arrow: list<string> )
	echo "有向グラフ"

	for yy in range(4)
		for xx in range(yy, 4)
			var e1 = data[yy][xx]
			var e2 = data[xx][yy]
			var aa = e1 + e2 * 2
			if aa > 0
				echom node[yy] .. arrow[aa] .. node[xx]
			endif
		endfor
	endfor
enddef

def! Main()
	var node = [
				'(0)',
				'(1)',
				'(2)',
				'(3)',
				'(4)',
			]

	var undirectedData = [	# 2次元配列。
				[0, 1, 1, 0, 0],
				[1, 0, 1, 1, 0],
				[1, 1, 0, 0, 1],
				[0, 1, 0, 0, 1],
				[0, 0, 1, 1, 0],
			]
	UndirectedGraph(undirectedData, node)

	var directedData = [	# 二次元配列。
				[0, 1, 1, 0, 0],
				[0, 0, 1, 1, 0],
				[0, 0, 0, 0, 0],
				[0, 0, 0, 0, 1],
				[0, 0, 1, 1, 0],
			]
	var directedArrow = [
				'',
				'-->',
				'<--',
				'<->',
			]
	DirectedGraph(directedData, node, directedArrow)
enddef
call Main()
"	以下、出力結果。
" 以下、無向グラフ。
"			(0)<--->(1)
"			(0)<--->(2)
"			(1)<--->(2)
"			(1)<--->(3)
"			(2)<--->(4)
"			(3)<--->(4)

" 以下、有向グラフ。
"			(0)-->(1)
"			(0)-->(2)
"			(1)-->(2)
"			(1)-->(3)
"			(2)<--(4)
"			(3)<->(4)

" vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=vim noexpandtab:
