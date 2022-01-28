use v5.24;

sub asakunoListcontext {
	$_ = shift;
	say "結合前：$_";
	my ($asakuno1, $tomohiro1, $asakuno2, $tomohiro2, ) = /(\S+), (\S+) (\S+), (\S+)/;
	say $asakuno1;	# asakuno	←☆末尾のカンマがない。
	say $asakuno2;	# 朝来野	←☆末尾のカンマがない。

	my @asakuno = /(\S+), (\S+) (\S+), (\S+)/;
	say "@asakuno";	# asakuno tomohiro 朝来野 智博	←☆末尾のカンマがない。
}
&asakunoListcontext("asakuno, tomohiro 朝来野, 智博");
#	出力結果：
#			asakuno
#			朝来野
#			asakuno tomohiro 朝来野 智博

sub listcontext {
	$_ = shift;
	say "結合前：$_";
	my $asakuno = quotemeta($_);
	#my @asakuno = $asakuno =~ /(\D+)/igs;
	#	asakuno\,\  \.\ \[ \/ \/ \]\/\ tomohiro\ �\�\��\�\��\�\�\,\ �\���\�\�
	my @asakuno = $asakuno =~ /([a-z]+)/igs;
	say "@asakuno";	# asakuno happy tomohiro today
}
&listcontext("asakuno, {happy}, 20220128. [2022/01/28]/ tomohiro <today> 朝来野, 智博");
#	出力結果：


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
