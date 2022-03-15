package perlStudyProcessInputOutput;
$VERSION = "0.002";
use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "プロセス読み込み(findコマンドを用いた)。";

sub asakunoInputOutput() {
	my $find_fh;
	#open $find_fh, '-|', 'find', '. -type f -name *md' or die "findコマンド実行失敗($!)";	←☆find: . -type f -name *md: No such file or directory
	my $pwd = `pwd`;
	chomp $pwd;
	say $pwd;
	open $find_fh, '-|', 'find', qw(. -type f -name *md) or die "findコマンド実行失敗($!)";
	while( <$find_fh> ) {
		chomp;
		say $_;
			# ./README.md
			# ./環境構築(インストール).md
	}
	close $find_fh;
	die "閉鎖失敗 $?" if $?;
}
&asakunoInputOutput(@ARGV);

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
