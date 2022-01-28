use v5.24;

sub asakunoJoin {
	$_ = shift;
	say "分割前：$_";
	my @asakuno = split;
	foreach my $value ( @asakuno ) {
	#	say $value;
	}

	my $asakuno = join ',', @asakuno;
	say "結合後：$asakuno";
}
&asakunoJoin("asakuno, tomohiro, 朝来野, 智博,");
#	出力結果：
#			分割前：asakuno, tomohiro, 朝来野, 智博,
#			結合後：asakuno,,tomohiro,,朝来野,,智博,


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
