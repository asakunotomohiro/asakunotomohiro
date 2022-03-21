package perlStudySignalProgramming;
$VERSION = "0.001";
use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "ここではプロセスの存在確認だけを行い、実行はしない。";

package signal::sample;
sub main() {
	defined(my $pid = fork) or die "フォーク失敗：$?";
	unless( $pid ) {
		# 子プロセス
		exec 'date';	# 2022年 3月17日 木曜日 22時18分23秒 JST
		die "失敗(exec date)";
	}

	if( kill 0, $pid ) {
	#if( kill 'ZERO', $pid ) {	←☆こっちでも同じ結果になる。
	#if( kill ZERO => $pid ) {	←☆こっちでも同じ結果になる。
		say "プロセスが存在する。";	# こっちが実行される。
	}
	else{
		say "ポア済み。";
	}

	# 親プロセス
	waitpid($pid, 0);
}
&main();


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
