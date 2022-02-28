package perlStudyEval;
$VERSION = "0.002";
use v5.24;


my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "エラートラップ-特殊変数";

sub asakunoEval() {
	my $asakuno = eval{
		say 20220228/0;	# 何も出力されない。
	};
	say "<$asakuno>[$@]";	# <>[Illegal division by zero at 特殊変数の利用.pl line 13.
							# ]
	say '0除算' if $@;	# 0除算

	say '-' x 30;
	unless( defined eval{ 20220228/0 } ){
		say 'if文内での文字列出力。' if $@;	# if文内での文字列出力。
	}

	say '-' x 30;
	unless( eval{ 20220228/0; 1 } ){	# 上記とどう違う？definedの有無か？
		say 'if文内での文字列出力。' if $@;	# if文内での文字列出力。
	}

	say '-' x 30;
	my $asakuno = eval{
		say 20220228/1;
	};
	say "<$asakuno>[$@]";	# <1>[]
	say '0除算' if $@;	# 何も出力されない($@がundefになっているため、say処理は発生しない)。
}
&asakunoEval(@ARGV);


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
