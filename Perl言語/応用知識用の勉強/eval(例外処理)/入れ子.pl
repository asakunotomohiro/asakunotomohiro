package perlStudyEval;
$VERSION = "0.002";
use v5.24;


my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "エラートラップ-入れ子";

sub asakunoEval() {
	my $asakuno = eval{
		say 20220228/0;	# ここで例外が発生するため、ここ以降処理が進まず、ブロックを抜け出る。
		say '入れ子開始';
		my $tomohiro = eval{
				unless( eval{ 20220228/0; 1 } ){
					say 'if文内での文字列出力。' if $@;
				}
			};
		say '入れ子終了($tomohiro)';
	};
	say "<$asakuno>";	# <>	←☆例外が発生したことにより、結果が空文字列(undef)になっている。
	say '-' x 30;

	my $asakuno = eval{
		say '入れ子開始';
		my $tomohiro = eval{
				unless( eval{ 20220228/0; 1 } ){
					say 'if文内での文字列出力。' if $@;	# if文内での文字列出力。
				}
			};
		say "入れ子終了($tomohiro)";	# 入れ子終了(1)
	};
	say "<$asakuno>";	# <1>
}
&asakunoEval(@ARGV);


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
