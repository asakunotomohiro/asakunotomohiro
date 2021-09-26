let asakunoList=['asakuno', 'tomohiro', ]

" ルール1。
echo "作業1回目。"
def! Kuku1(): number
	for ii in range(1, 9)
		for jj in range(1, 9)
			echom ii .. 'x' .. jj .. '=' .. ii * jj
		endfor
	endfor

	return 0
enddef
let b:retkuku = Kuku1()
echom b:retkuku
"	出力結果：
"			1x1=1
"			1x2=2
"			1x3=3
"			1x4=4
"			1x5=5
"			1x6=6
"			1x7=7
"			1x8=8
"			1x9=9
"			2x1=2
"			2x2=4
"			2x3=6
"			2x4=8
"			2x5=10
"			2x6=12
"			2x7=14
"			2x8=16
"			2x9=18
"			3x1=3
"			3x2=6
"			3x3=9
"			3x4=12
"			3x5=15
"			3x6=18
"			3x7=21
"			3x8=24
"			3x9=27
"			4x1=4
"			4x2=8
"			4x3=12
"			4x4=16
"			4x5=20
"			4x6=24
"			4x7=28
"			4x8=32
"			4x9=36
"			5x1=5
"			5x2=10
"			5x3=15
"			5x4=20
"			5x5=25
"			5x6=30
"			5x7=35
"			5x8=40
"			5x9=45
"			6x1=6
"			6x2=12
"			6x3=18
"			6x4=24
"			6x5=30
"			6x6=36
"			6x7=42
"			6x8=48
"			6x9=54
"			7x1=7
"			7x2=14
"			7x3=21
"			7x4=28
"			7x5=35
"			7x6=42
"			7x7=49
"			7x8=56
"			7x9=63
"			8x1=8
"			8x2=16
"			8x3=24
"			8x4=32
"			8x5=40
"			8x6=48
"			8x7=56
"			8x8=64
"			8x9=72
"			9x1=9
"			9x2=18
"			9x3=27
"			9x4=36
"			9x5=45
"			9x6=54
"			9x7=63
"			9x8=72
"			9x9=81

"
" -------------------------------------
"

echo "作業2回目。"
def! Kuku2(): number
	for ii in range(1, 9)
		for jj in range(1, 9)
			echom jj .. 'x' .. ii .. '=' .. ii * jj
		endfor
	endfor

	return 0
enddef
echom Kuku2()
"	出力結果：
"			1x1=1
"			2x1=2
"			3x1=3
"			4x1=4
"			5x1=5
"			6x1=6
"			7x1=7
"			8x1=8
"			9x1=9
"			1x2=2
"			2x2=4
"			3x2=6
"			4x2=8
"			5x2=10
"			6x2=12
"			7x2=14
"			8x2=16
"			9x2=18
"			1x3=3
"			2x3=6
"			3x3=9
"			4x3=12
"			5x3=15
"			6x3=18
"			7x3=21
"			8x3=24
"			9x3=27
"			1x4=4
"			2x4=8
"			3x4=12
"			4x4=16
"			5x4=20
"			6x4=24
"			7x4=28
"			8x4=32
"			9x4=36
"			1x5=5
"			2x5=10
"			3x5=15
"			4x5=20
"			5x5=25
"			6x5=30
"			7x5=35
"			8x5=40
"			9x5=45
"			1x6=6
"			2x6=12
"			3x6=18
"			4x6=24
"			5x6=30
"			6x6=36
"			7x6=42
"			8x6=48
"			9x6=54
"			1x7=7
"			2x7=14
"			3x7=21
"			4x7=28
"			5x7=35
"			6x7=42
"			7x7=49
"			8x7=56
"			9x7=63
"			1x8=8
"			2x8=16
"			3x8=24
"			4x8=32
"			5x8=40
"			6x8=48
"			7x8=56
"			8x8=64
"			9x8=72
"			1x9=9
"			2x9=18
"			3x9=27
"			4x9=36
"			5x9=45
"			6x9=54
"			7x9=63
"			8x9=72
"			9x9=81
"			0


"
" -------------------------------------
"

echo "作業3回目。"
def! Kuku3(): number
	for ii in range(1, 9)
		var outputkuku = ""
		for jj in range(1, 9)
			outputkuku = outputkuku .. printf("%2dx%1d=%2d", ii, jj, ii * jj)
		endfor
		outputkuku = outputkuku[1 :]
		echom outputkuku
	endfor

	return 0
enddef
call Kuku3()
"	出力結果：
"			1x1= 1 1x2= 2 1x3= 3 1x4= 4 1x5= 5 1x6= 6 1x7= 7 1x8= 8 1x9= 9
"			2x1= 2 2x2= 4 2x3= 6 2x4= 8 2x5=10 2x6=12 2x7=14 2x8=16 2x9=18
"			3x1= 3 3x2= 6 3x3= 9 3x4=12 3x5=15 3x6=18 3x7=21 3x8=24 3x9=27
"			4x1= 4 4x2= 8 4x3=12 4x4=16 4x5=20 4x6=24 4x7=28 4x8=32 4x9=36
"			5x1= 5 5x2=10 5x3=15 5x4=20 5x5=25 5x6=30 5x7=35 5x8=40 5x9=45
"			6x1= 6 6x2=12 6x3=18 6x4=24 6x5=30 6x6=36 6x7=42 6x8=48 6x9=54
"			7x1= 7 7x2=14 7x3=21 7x4=28 7x5=35 7x6=42 7x7=49 7x8=56 7x9=63
"			8x1= 8 8x2=16 8x3=24 8x4=32 8x5=40 8x6=48 8x7=56 8x8=64 8x9=72
"			9x1= 9 9x2=18 9x3=27 9x4=36 9x5=45 9x6=54 9x7=63 9x8=72 9x9=81

"
" -------------------------------------
"

echo "作業4回目。"
def! KukuTable(): number
	for ii in range(1, 9)
		var outputkuku = ""
		for jj in range(1, 9)
			outputkuku = outputkuku .. printf("%3d", ii * jj)
		endfor
		outputkuku = outputkuku[2 :]
		echom outputkuku
	endfor

	return 0
enddef
call KukuTable()
"	出力結果：
"			1  2  3  4  5  6  7  8  9
"			2  4  6  8 10 12 14 16 18
"			3  6  9 12 15 18 21 24 27
"			4  8 12 16 20 24 28 32 36
"			5 10 15 20 25 30 35 40 45
"			6 12 18 24 30 36 42 48 54
"			7 14 21 28 35 42 49 56 63
"			8 16 24 32 40 48 56 64 72
"			9 18 27 36 45 54 63 72 81

echom "以上。"
" vim:set ts=4 sw=4 tw=0 fenc=utf-8:
