use v5.24;

sub asakunoReplace {
	$_ = shift;
	say "置換前：$_";
	if( s/asakuno/tomohiro/ ) {
		say "置換結果：$_";
	}
	else{
		say "検索に掛からず($_)。";
	}
}
&asakunoReplace("asakuno");
#	出力結果：asakunoにマッチした。

&asakunoReplace("Asakuno");
#	出力結果：検索に掛からず(Asakuno)。


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
