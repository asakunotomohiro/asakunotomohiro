package perlStudyMapoperatorProgramming;
$VERSION = "0.001";
use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "map演算子";

sub asakunoMap() {
	# 以下、リストの文字列を<>記号で挟む。
	say "@asakuno";
	my @tomohiro = map { "<$_>" } @asakuno;
	say "@tomohiro";
}
&asakunoMap();


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
