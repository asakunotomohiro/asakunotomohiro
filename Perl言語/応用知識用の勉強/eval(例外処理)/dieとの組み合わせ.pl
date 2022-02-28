package perlStudyEval;
$VERSION = "0.002";
use v5.24;


my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "エラートラップ-die";

sub asakunoEval() {
	my $asakuno = eval{
		my $tomohiro = '朝来野智博';
		die 'I do not want to die' if "$tomohiro" eq "朝来野智博";
		say '処理はまだまだ続くよ、どこまでも。';
	};
	say "<$asakuno>";	# <>
	if ( $@ =~/I/ ) {
		print "私は死にたくない$@";	# 私は死にたくないI do not want to die at dieとの組み合わせ.pl line 14.
	}
}
&asakunoEval(@ARGV);


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
