package perlStudyInputOutput;
$VERSION = "0.002";
use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "無効なファイルハンドル";

sub asakunoInputOutput() {
	my $success = open LOG, '<', 'logfile';
	if ( ! $success ) {
		say "open失敗。";
	}
}
&asakunoInputOutput();

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
