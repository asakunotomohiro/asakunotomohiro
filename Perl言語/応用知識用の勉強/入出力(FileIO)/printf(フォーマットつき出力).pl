package perlStudyInputOutput;
$VERSION = "0.002";
use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "フォーマット付き出力printf";

sub asakunoInputOutput() {
	say "以下、%gによる都合良く整形してくれる。";
	printf "%g %g %g\n", 5/2, 51/17, 51 ** 17;	# 2.5 3 1.0683e+29

	say "以下、%dによる10進数出力(小数点以下切り捨て)";
	printf "%d %d %d %d\n", 10, 20220102, 2022.0102, -20220102;	# 10 20220102 2022 -20220102

	say "以下、%xによる16進数出力";
	printf "%x %x %x %x\n", 10, 20220102, 2022.0102, -20220102;	# a 13488c6 7e6 fffffffffecb773a

	say "以下、%oによる8進数出力";
	printf "%o %o %o %o\n", 10, 20220102, 2022.0102, -20220102;	# 12 115104306 3746 1777777777777662673472

	say "以下、%fによる小数点出力";
	printf "%f %f %f %f\n", 10, 20220102, 2022.0102, -20220102;	# 10.000000 20220102.000000 2022.010200 -20220102.000000
	printf "%.3f %.3f %.3f %.3f\n", 10, 20220102, 2022.0102, -20220102;	# 10.000 20220102.000 2022.010 -20220102.000

	say "以下、%記号の出力";
	printf "%%\n";	# %	←☆こっちが正しい。
	printf "\%\n";	# %	←☆間違った使い方。

	say "以下、カラム幅を揃える。";
	printf "%8d\n%8d\n%8d\n%8d\n", 10, 20220102, 2022.0102, -20220102;
#			      10
#			20220102
#			    2022
#			-20220102

	say "以下、文字列出力。";
	printf "[%s]\n[%-10s]\n[%10s]\n", 'asakuno', 'asakuno', 'asakuno';
#			[asakuno]
#			[asakuno   ]
#			[   asakuno]
	printf "[%*s]\n[%*s]\n[%*s]\n", 0, 'asakuno', -10, 'asakuno', 10, 'asakuno';
#			[asakuno]
#			[asakuno   ]
#			[   asakuno]
}
&asakunoInputOutput();

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
