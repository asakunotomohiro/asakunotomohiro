package perlStudylocaltime;
$VERSION = "0.002";
use v5.24;


my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "ビット演算子";

sub asakuno() {
	say 10 & 12;	# ビットAND演算子。
				# 出力結果：8
	say 10 | 12;	# ビットOR演算子。
				# 出力結果：14
	say 10 ^ 12;	# ビットXOR演算子。
				# 出力結果：6
	say 6 << 2;	# 左シフト演算子。
				# 出力結果：24
}
&asakuno(@ARGV);

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
