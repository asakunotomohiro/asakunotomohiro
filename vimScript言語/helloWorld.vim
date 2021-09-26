
" 以下、Vim Script 9 対応の"Hello World."出力プログラム。
def! HelloWorld(): string
	# 以下、改行ありのメッセージ出力。
	echo 'hello World(改行あり).'
	# 以下、改行なしのメッセージ出力。
	echon 'hello World(改行なし).'

	return 'hello world(By.vim script 9).'
enddef
echo HelloWorld()

" 以下、警告ハイライト付きのメッセージ(及び、同セッションメッセージの記録あり:echom)。
echohl WarningMsg
echom '警告：hello World.'
echohl None
" 以下、エラーハイライト付きのメッセージ(及び、同セッションメッセージの記録あり:echom)。
echohl ErrorMsg
echom 'エラー：hello World.'
echohl None

" vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=markdown expandtab:
