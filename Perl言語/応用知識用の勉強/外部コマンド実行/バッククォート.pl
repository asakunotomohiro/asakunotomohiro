package perlStudyExecProgramming;
$VERSION = "0.001";
use v5.24;

package backquote::sample;
sub main() {
	`date`;	# これだけでも標準出力はない。
	say `date`;	# これならば、標準出力するが、改行が含まれるため、変数に一旦入れた方が良い。
	my $date = `date`;	# 結果は、変数に代入される。

	say "$date";
			# 2022年 3月11日 金曜日 18時17分28秒 JST
			# 	←☆改行されている。
	chomp $date;
	say "$date";
			# 2022年 3月11日 金曜日 18時17分28秒 JST	←☆改行が取り除かれている。

	my $pwd = 'pwd';
	my $ret = `$pwd`;
	chomp $ret;
	say "<$ret>";
}
&main();


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
