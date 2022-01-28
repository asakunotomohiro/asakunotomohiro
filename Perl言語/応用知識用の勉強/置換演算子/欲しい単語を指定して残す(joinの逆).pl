use v5.24;

sub asakunoListcontext {
	$_ = shift;
	say "$_";
	my ($asakuno1, $tomohiro1, $asakuno2, $tomohiro2, ) = /(\S+), (\S+) (\S+), (\S+)/;
	say $asakuno1;
	say $asakuno2;
#			asakuno, tomohiro 朝来野, 智博,
#			asakuno
#			朝来野

	my @asakuno = /(\S+), (\S+) (\S+), (\S+)/;
	say "@asakuno";
#			asakuno tomohiro 朝来野 智博,
}
&asakunoListcontext("asakuno, tomohiro 朝来野, 智博,");

sub listcontext {
	$_ = shift;
	my @asakuno = /([a-z]+)/igs;

	say "@asakuno";	# asakuno tomohiro
}
&listcontext("asakuno, tomohiro 朝来野, 智博,");



say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
