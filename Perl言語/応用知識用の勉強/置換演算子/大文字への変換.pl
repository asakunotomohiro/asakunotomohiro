use v5.24;

sub asakunoBiggenitals{
	my $asakuno = shift;
	say "置換前：$asakuno";
	my $tomohiro = $asakuno =~ s{(ku)}<\U$1>r;
	say "置換後：$tomohiro";
}
&asakunoBiggenitals("asakuno");
#			置換前：asakuno
#			置換後：asaKUno


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
