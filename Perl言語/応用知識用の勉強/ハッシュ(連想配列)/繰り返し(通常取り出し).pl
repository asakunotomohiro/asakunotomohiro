use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "ハッシュ";

sub associativearray() {
	my %asakuno = (
		asakuno => 20210922,
		tomohiro => 4873118247,
		asakunotomohiro => "朝来野智博",
	);

	foreach my $key ( keys %asakuno ){
		say $key;	# ←☆キーのみを出力。
#				asakuno
#				tomohiro
#				asakunotomohiro
#		say %asakuno{$key};	←☆求めていない形式で出てきた(なぜキーと値が一緒になる？)。
#				tomohiro4873118247
#				asakuno20210922
#				asakunotomohiro朝来野智博
#		say "%asakuno{$key}";	←☆全然求めていない結果が出てきた。
#				%asakuno{asakuno}
#				%asakuno{tomohiro}
#				%asakuno{asakunotomohiro}
		say "$asakuno{$key}";	# ←☆値のみが得られた。
#				20210922
#				朝来野智博
#				4873118247
	}

	say "-" x 30;

	foreach my $value ( values %asakuno ) {
		say $value;
#				4873118247
#				20210922
#				朝来野智博
#		say %asakuno{$value};	# ←☆想定では空文字かと思ったのだが・・・。
#				20210922
#				朝来野智博
#				4873118247
		say $asakuno{$value};	# ←☆想定通りに空文字だった(当然3行分空文字として出力されている)。
	}
}
&associativearray();


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
