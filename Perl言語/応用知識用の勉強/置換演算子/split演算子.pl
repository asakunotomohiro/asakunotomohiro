use v5.24;

sub asakunoSplit {
	$_ = shift;
	say "分割前：$_";
	my @asakuno = split / /, $_;
	foreach my $value ( @asakuno ) {
		say $value;
	}
}
&asakunoSplit("asakuno tomohiro 朝来野 智博");
#	出力結果：
#			分割前：asakuno tomohiro 朝来野 智博
#			asakuno
#			tomohiro
#			朝来野
#			智博


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
