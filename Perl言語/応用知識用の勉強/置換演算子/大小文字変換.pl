use v5.24;

sub asakuno{
	my $asakuno = shift;
	say "大文字変換前：$asakuno";	# AsaKuNo
	say "大文字変換後：\U$asakuno";	# ASAKUNO

	say "小文字変換前：$asakuno";	# AsaKuNo
	say "小文字変換後：\L$asakuno";	# asakuno

	say "先頭大文字の残り小文字：\u\L$asakuno";	# Asakuno
	say "先頭大文字の残り小文字：\L\u$asakuno";	# Asakuno

	say "先頭大文字の残り小文字(指定方法間違い)：\U\l$asakuno";	# aSAKUNO

	say "以下、関数利用。";
	say lc( $asakuno );			# asakuno	←☆全て小文字化。
	say uc( $asakuno );			# ASAKUNO	←☆全て大文字化。
	say fc( $asakuno );			# asakuno	←☆Unicodeの大小文字の扱いに従う。
	$asakuno = 'aSaKuNo';
	say ucfirst( $asakuno );	# ASaKuNo	←☆先頭大文字化。
}
&asakuno("AsaKuNo");


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
