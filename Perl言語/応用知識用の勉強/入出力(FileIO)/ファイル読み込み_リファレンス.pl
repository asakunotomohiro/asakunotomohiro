package perlStudyInputOutput;
$VERSION = "0.002";
use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "ファイル読み込み。";

sub asakunoInputOutput() {
#	say $_[0];
	#local *FILE = $_[0];
	#open   (FH, $path)          or  return undef;
	#open FILE, $_[0] or die "ファイルオープン失敗($!)";
	open (*FILE, $_[0]) or die "ファイルオープン失敗($!)";
	while( <FILE> ) {
	# while( FILE ) {
		chomp;
		say $_;
	}
#	say FILE @_;
}
&asakunoInputOutput(@ARGV);

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
