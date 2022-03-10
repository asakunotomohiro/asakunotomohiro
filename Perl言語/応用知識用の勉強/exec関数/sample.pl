package perlStudyExecProgramming;
$VERSION = "0.001";
use v5.24;

package exec::sample;
sub main() {
	my $date = exec 'date';	# 2022年 3月10日 木曜日 21時47分39秒 JST
							# このプログラムが起動後、このPerlプログラムがdateコマンドに置き換わっているため、ここ以降処理が走らない。

	say 'この処理は走らない。';
}
&main();


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
