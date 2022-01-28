use v5.24;

sub asakunoErectiledysfunction{
	my $asakuno = shift;
	say "置換前：$asakuno";
	my $tomohiro = $asakuno =~ s{(KU)}<\L$1>r;
	say "置換後：$tomohiro";
}
&asakunoErectiledysfunction("ASAKUNO");
#			置換前：asakuno
#			置換後：


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
