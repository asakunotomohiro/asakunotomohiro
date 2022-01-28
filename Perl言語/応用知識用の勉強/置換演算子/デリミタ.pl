use v5.24;

sub asakunoDelimiter {
	$_ = shift;
	say "置換前：$_";
	if( s{asakuno}<tomohiro> ) {
		say "置換結果：$_";
	}
	else{
		say "検索に掛からず($_)。";
	}
}
&asakunoDelimiter("asakuno");
#	出力結果：asakunoにマッチした。

&asakunoDelimiter("Asakuno");
#	出力結果：検索に掛からず(Asakuno)。

say "-" x 30;

my $asakuno = 'asakuno';
say "置換前：$asakuno";
$asakuno =~ s!asakuno!tomohiro!;
say "置換後：$asakuno";
#$asakuno =~ s_asakuno_tomohiro_;	# Bareword "s_asakuno_tomohiro_" not allowed while "strict subs" in use at デリミタ.pl line 25.
#	なぜか、アンダーバーは使えないようだ。

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
