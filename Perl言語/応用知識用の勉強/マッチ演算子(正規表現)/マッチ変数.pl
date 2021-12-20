use v5.24;

sub asakunoRegex {
	my $asakuno = shift;
	# 括弧で囲んだ文字列をキャプチャ機能で記録し、$[数字]で呼び出す。
	if( $asakuno =~ /asaku(no)/ ) {
		say "asakunoにマッチした(大小文字区別あり)。$1";
	}
	elsif( $asakuno =~ m,as(aku)no,i ) {
		say "asakunoにマッチした(大小文字区別なし)。$1";
		say '$0：' . $0;
			# $0：マッチ変数.pl
	}
	else{
		say "検索に掛からず($asakuno)。";
	}
}
&asakunoRegex("asakuno");
#	出力結果：asakunoにマッチした(大小文字区別あり)。no

&asakunoRegex("Asakuno");
#	出力結果：asakunoにマッチした(大小文字区別なし)。aku

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
