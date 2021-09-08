" vim:set ts=4 sw=4 tw=0 fenc=utf-8:
"
" vim script9以降の書き方？
"
def! HelloWorld(): string
	# Vim Script 9 対応の"Hello World."出力。
	return 'hello world(By.vim script 9).'
enddef

echo HelloWorld()
