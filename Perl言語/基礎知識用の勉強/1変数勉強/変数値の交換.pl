use v5.24;

my $asakuno = "朝来野";
my $tomohiro = "智博";

say $asakuno;	# 朝来野
say $tomohiro;	# 智博

# 以下、変数値を入れ替えている。
($asakuno, $tomohiro) = ($tomohiro, $asakuno);
say $asakuno;	# 智博
say $tomohiro;	# 朝来野

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
