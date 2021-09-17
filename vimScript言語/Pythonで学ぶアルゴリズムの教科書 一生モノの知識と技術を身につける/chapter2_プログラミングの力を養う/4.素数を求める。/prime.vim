let asakunoList=['asakuno', 'tomohiro', ]

echo "2から100までの素数を出力する。"
def! Prime(): number
	var outputprime = ""
	for ii in range(2, 100)
#		hh = ii / 2	" E476: Invalid command: hh = ii / 2
		var hh = ii / 2
		var ff = v:true
#		for jj in range(2, hh + 1)
		for jj in range(2, hh)
#		for jj in range(3, hh + 1)
#		for jj in range(3, hh)
#		for jj in range(2, 2)
#		for jj in range(1, execute(hh))
#		for jj in range(1, eval(hh))
#		for jj in range(1, eval hh)
#		for jj in range(1, execute hh)
#		for jj in range(1, exe hh)
#		for jj in range(1, exe(hh))
#		for jj in range(1, execute("" .. hh))
	#	for jj in range(1, execute(hh))
#		for jj in range(1, execute hh)
#		for jj in range(1, expand(hh))
#		for jj in range(1, str2nr(expand(hh)))
#		for jj in range(1, str2nr(hh))
#		for jj in range(1, expand hh)
#		for jj in range(1, str2nr(expand(hh)))
#		for jj in range(1, str2nr(execute(hh)))
#		for jj in range(1, str2nr(eval(hh)))
#		for jj in range(1, str2nr(expand(hh)))	# 変数展開する。
#			echom '無条件表示hh' .. hh .. ' jj:' .. jj .. ' ii:' .. ii .. ' ii%jj:' .. ii % jj
			if ii % jj == 0
				ff = v:false
				break
			endif
		endfor
		if ff == v:true
#			echom ii .. ','
			outputprime = outputprime .. printf("%d,", ii)
		endif
	endfor
	echom outputprime

	return 0
enddef
call Prime()
"	出力結果：
"			2,3,4,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,

echom "以上。"
" vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=vim noexpandtab:
