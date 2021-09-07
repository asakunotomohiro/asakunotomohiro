" vim:set ts=4 sw=4 tw=0 fenc=utf-8:
"
" vim script8以前の書き方？
"
" 以下、改行ありのメッセージ出力。
echo 'hello World.'
" 以下、改行なしのメッセージ出力。
echon 'hello World.'
" 以下、警告ハイライト付きのメッセージ(及び、同セッションメッセージの記録あり:echom)。
echohl WarningMsg
echom '警告：hello World.'
echohl None
" 以下、エラーハイライト付きのメッセージ(及び、同セッションメッセージの記録あり:echom)。
echohl ErrorMsg
echom 'エラー：hello World.'
echohl None
