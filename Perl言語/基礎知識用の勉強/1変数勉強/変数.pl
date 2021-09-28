use v5.24;
use utf8;

my $朝来野智博 = "ASAKUNOTOMOHIRO";
my $asakuno;
my $asakunotomohiro = "朝来野智博";

print $asakunotomohiro . "\n";	# 朝来野智博
print $朝来野智博;	# ASAKUNOTOMOHIRO
	# 改行させていないため、次に出力させた場合、1行に繋がってしまう。

say "\n" . "-*" x 30 . "-";

say length($asakunotomohiro);		# 5
say substr($asakunotomohiro, 0, 1);	# 朝

# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
