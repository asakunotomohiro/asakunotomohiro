package perlStudyForkProgramming;
$VERSION = "0.001";
use v5.24;

package fork::sample;
sub main() {
	my $date = system 'date';	# 2022年 3月16日 水曜日 08時24分56秒 JST
	say "<$date>";				# <0>

	defined(my $pid = fork) or die "フォーク失敗：$?";
	unless( $pid ) {
		# 子プロセス
		exec 'date';	# 2022年 3月16日 水曜日 08時24分56秒 JST
		die "失敗(exec date)";	# 上記処理をコメントアウトした場合、ここが実行された。
								# 失敗(exec date) at fork.pl line 14.
	}

	# 親プロセス
	waitpid($pid, 0);
}
&main();


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
