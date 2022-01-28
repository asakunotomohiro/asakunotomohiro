use v5.24;

sub asakunoNondestructiveorg {
	my $asakuno = shift;
	say "置換前：$asakuno";
	# 以下、代入が先に行われ、その後代入後の変数で置換が行われる。
	(my $tomohiro = $asakuno) =~ s{asakuno}<tomohiro>;
	say "置換後：$tomohiro";
}
&asakunoNondestructiveorg("asakuno");
#			置換前：asakuno
#			置換後：tomohiro

say "-" x 30;

sub asakunoNondestructive{
	my $asakuno = shift;
	say "置換前：$asakuno";
	# 以下、置換が行われた結果を新しい変数に代入する。
	my $tomohiro = $asakuno =~ s{asakuno}<tomohiro>r;
	say "置換後：$tomohiro";
}
&asakunoNondestructive("asakuno");
#			置換前：asakuno
#			置換後：tomohiro


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
