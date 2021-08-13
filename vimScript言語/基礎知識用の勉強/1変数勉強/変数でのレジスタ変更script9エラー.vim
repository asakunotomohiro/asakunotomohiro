" どうやってvim9scriptでレジスタを変更すれば良い？

:def! Tomohiro()
	var @a = "aasakunoの文字列をレジスタaに代入"
	"	確認方法：`@a`キータイプにより、文字列がVimエディタ上に展開される。
enddef
echo Tomohiro()
"	E1066: Cannot declare a register: @a

" vim:set ts=4 sw=4 tw=0 fenc=utf-8:
