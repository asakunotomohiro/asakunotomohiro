package perlStudyInputOutput;
$VERSION = "0.002";
use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "ファイル読み込み。";

sub asakunoInputOutput() {
	my $file_fh;
	open $file_fh, '<', $_[0] or die "$_[0]のファイルオープン失敗($!)";
	while( <$file_fh> ) {
		chomp;
		say $_;
	}
}
&asakunoInputOutput(@ARGV);

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
