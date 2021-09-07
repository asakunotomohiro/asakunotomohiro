let g:asakuno='朝来野智博'
let g:asakunoList=['asakuno', 'tomohiro', 'a sa ku no to mo hi ro']
let g:tomo = 'hoge'

def! Tomohiro(): bool
	for b:tomo in g:asakunoList
		for ii in range(3)
			echom ii .. ":" .. b:tomo
		endfor
	endfor

	return v:true
enddef
echom Tomohiro()
"	出力結果：
"			0:asakuno
"			1:asakuno
"			2:asakuno
"			0:tomohiro
"			1:tomohiro
"			2:tomohiro
"			0:a sa ku no to mo hi ro
"			1:a sa ku no to mo hi ro
"			2:a sa ku no to mo hi ro
"			v:true


" vim:set ts=4 sw=4 tw=0 fenc=utf-8:
