package perlStudyEval;
$VERSION = "0.001";
use v5.24;


my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "エラートラップ";

sub asakunoEval() {
	#say 5/0;	Illegal division by zero at eval.pl line 12.
	my $asakuno = eval{
		say 20220228/0;	# 何も出力されない。
	};
	say "<$asakuno>";	# <>	←☆例外が発生したことにより、結果が空文字列(undef)になっている。
	my $tomohiro = eval{
		say 20220228/1;	# 20220228
	};
	say "[$tomohiro]";	# [1]	←☆正常に実行できたと言うことで、1が返ってきたのだろう。

	my $asakuno = eval{ say 44016164327 / 0} // '0除算';	# defined-or演算子による代替代入。
	say $asakuno;	# 0除算
}
&asakunoEval(@ARGV);


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
