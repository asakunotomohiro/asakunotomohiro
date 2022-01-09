package perlStudyInputOutput;
$VERSION = "0.002";
use v5.24;
no warnings 'experimental::smartmatch';	# 警告抑止(スマートマッチ演算子~~のために必要)。
use Cwd;	# カレントディレクトリ呼び出しモジュール。

my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "ファイル名変更";

sub asakunoInputOutput() {
	rename 'asakuno.txt', 'tomohiro.md';	# 名前が変わった。
#			$ ll
#			total 16
#			-rwxr-xr-x  1 asakunotomohiro  staff  570  1  9 11:42 asakuno.txt*
#			-rwxr-xr-x  1 asakunotomohiro  staff  570  1  9 11:42 ファイル名変更.pl*
#			$ perl ファイル名変更.pl
#			ファイル名変更
#			以上。
#			$ ll
#			total 16
#			-rwxr-xr-x  1 asakunotomohiro  staff  570  1  9 11:42 tomohiro.md*
#			-rwxr-xr-x  1 asakunotomohiro  staff  570  1  9 11:42 ファイル名変更.pl*
#			$
}
&asakunoInputOutput(@ARGV);

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
