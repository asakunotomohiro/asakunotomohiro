use v5.24;

sub asakunoRegex {
	my $asakuno = shift;
	# 以下のパターンを任意の変数で検索する。
	if( $asakuno =~ /asakuno/ ) {
		say "asakunoにマッチした(大小文字区別あり)。";
	}
	elsif( $asakuno =~ m,asakuno,i ) {
		say "asakunoにマッチした(大小文字区別なし)。";
	}
	else{
		say "検索に掛からず($_)。";
	}
}
&asakunoRegex("asakuno");
#	出力結果：asakunoにマッチした(大小文字区別あり)。

&asakunoRegex("Asakuno");
#	出力結果：asakunoにマッチした(大小文字区別なし)。

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
