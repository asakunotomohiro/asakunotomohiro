use v5.24;

sub asakunoRegex {
	$_ = shift;
	if( /asakuno/ ) {
		say "asakunoにマッチした。";
	}
	else{
		say "検索に掛からず($_)。";
	}
}
&asakunoRegex("asakuno");
#	出力結果：asakunoにマッチした。

&asakunoRegex("Asakuno");
#	出力結果：検索に掛からず(Asakuno)。


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
