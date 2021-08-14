let asakuno='朝来野智博'
let asakunoList=['asakuno', 'tomohiro', ]

" 以下、単純な比較。
if 10 == 0
	echom '10 == 0が等しい'
else
	echom '10 == 0が等しくない'
endif
"	実行結果：10 == 0が等しくない

" 以下、単純な比較。
if 10 == 10
	echom '10 == 10が等しい'
else
	echom '10 != 10が等しい'
endif
"	実行結果：10 == 10が等しい

" 以下、単純な比較。
if 10 == 0
	echom '10 == 0が等しい'
elseif 10 == 10
	echom '10 == 0が等しくない代わりに、10 == 10が等しい'
else
	echom '10 == 10ではない'
endif
"	実行結果：10 == 0が等しくない代わりに、10 == 10が等しい

def! Tomohiro(): string
	# 以下は、vim9script限定で、論理演算子(5種類、イコールは上記)を順に実行していく。

	if 10 != 0
		echom '10と0は等しくない。'
	endif
	# 実行結果：10と0は等しくない。

	if 10 < 11
		echom '11より10が小さい'
	endif
	# 実行結果：11より10が小さい

	if 10 <= 10
		echom '10と10が等しい。'
	endif
	# 実行結果：10と10が等しい。

	if 9 > 8
		echom '9より8が小さい'
	endif
	# 実行結果：9より8が小さい

	if 8 >= 8
		echom '8と8が等しい'
	endif
	# 実行結果：8と8が等しい

	#
	# 以下、比較演算子(2種類)。
	#
	if '朝来野智博' =~ '.*野.*'
		echom '朝来野智博の文字列に"野"が含まれている。'
	endif
	# 実行結果：朝来野智博の文字列に"野"が含まれている。

	if '朝来野' !~ '.*智.*'
		echom '朝来野の文字列の中に"智"が含まれていない。'
	endif
	# 実行結果：朝来野の文字列の中に"智"が含まれていない。

	#
	# 以下、文字列比較演算子(13種類)。
	#
	if 'asakuno' ==? 'aSaKuNo'
		echom 'asakunoは、aSaKuNoに等しい(==?)。'
	endif
	# 実行結果：asakunoは、aSaKuNoに等しい(==?)。

	if 'asakuno' ==# 'aSaKuNo'
		echom 'asakunoは、aSaKuNoに等しくない(==#)。'
	elseif 'asakuno' ==# 'asakuno'
		echom 'asakunoは、asakunoに等しい(==#)。'
	endif
	# 実行結果：asakunoは、asakunoに等しい(==#)。

	if 'asakuno' !=? 'asakunO'
		echom 'asakunoは、asakunoOと等しい(!=?)。'
	elseif 'asakuno' !=? 'asakunI'
		echom 'asakunoは、asakunoIと等しくない(!=?)。'
	endif
	# 実行結果：asakunoは、asakunoIと等しくない(!=?)。

	if 'asakuno' !=# 'asakuno'
		echom 'asakunoは、asakunoに等しい(!=#)。'
	elseif 'asakuno' !=# 'asakunO'
		echom 'asakunoは、asakunoOと等しくない(!=#)。'
	endif
	# 実行結果：asakunoは、asakunoOと等しくない(!=#)。

	#
	# ※小文字のほうが文字コードとして大きい。
	#

	if 'aaa' <? 'AAb'
		echom 'aaaよりAAbのほうが大きい(<?)。'
	endif
	# 実行結果：aaaよりAAbのほうが大きい(<?)。

	if 'AAb' <# 'AAa'
		echom 'AAbよりAAaのほうが小さい(<#)。'
	elseif 'aab' <# 'aac'
		echom 'aabよりaacのほうが大きい(<#)。'
	endif
	# 実行結果：aabよりaacのほうが大きい(<#)。

	#
	# 等しいか大きい(小さい)かの区別は、めんどくさいのでイコールの場合に限定して動かす(それもめんどくさいのでやめた)。
	#	どうしても暇で暇で仕方なくなったときに検証しよう。
	#	イコールの場合に動かすのは上記で検証済みであり、大小比較もすでに検証済みだ。
	#

	if 'AAC' >? 'aad'
		echom 'AACよりaadのほうが大きい(>?)。'
	elseif 'AAD' >? 'aac'
		echom 'AADよりaacのほうが小さい(>?)。'
	endif
	# 実行結果：AADよりaacのほうが小さい(>?)。

	if 'aac' ># 'aad'
		echom 'aacよりaadのほうが大きい(>#)。'
	elseif 'aac' ># 'aab'
		echom 'aacよりaabのほうが小さい(>#)。'
	endif
	# 実行結果：aacよりaabのほうが小さい(>#)。

	return '朝来野 智博'
enddef
echom Tomohiro()
"	出力結果：

" vim:set ts=4 sw=4 tw=0 fenc=utf-8:
