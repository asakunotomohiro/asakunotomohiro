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

	my $pid = qx(echo $$);
	chomp $pid;
	say $pid;	# 54515	←☆PIDなので、実行毎に数字が変わる。

	#`date -a`;
		# date: illegal option -- a
		# usage: date [-jnRu] [-d dst] [-r seconds] [-t west] [-v[+|-]val[ymwdHMS]] ... 
		#             [-f fmt date | [[[mm]dd]HH]MM[[cc]yy][.ss]] [+format]
	my $date = `date -a`;	# 上記のエラーが発生する(変数には収まらない)。
	#chomp $date;
	#say $date;	←☆空文字列(undef)

	my $date = `date < /dev/null`;
	chomp $date;
	say $date;	# 2022年 3月13日 日曜日 21時21分43秒 JST

	my $who = `who`;
	say $who;

	say '-' x 30;

	my @who = `who`;
	foreach my $value ( @who ) {
		chomp $value;
		say $value;
	}
}
&main();


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
