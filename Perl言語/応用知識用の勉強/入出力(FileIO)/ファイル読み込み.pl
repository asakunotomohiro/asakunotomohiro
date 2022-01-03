package perlStudyInputOutput;
$VERSION = "0.002";
use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "ファイル読み込み。";

sub asakunoInputOutput() {
	if( ! open FILE, '<', $_[0]) {
		die "存在するファイルを引数に渡すこと($!)。"
	}
	while( <FILE> ) {
		chomp;
		say $_;
	}
}
&asakunoInputOutput(@ARGV);

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
