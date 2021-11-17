use v5.24;

my @asakuno;

print @asakuno;	# 出力なし。
@asakuno = (20210831, 20210901, );
print @asakuno;	# 2021083120210901

# 要素指定の取り出し。
say;
say "-" x 30;
say $asakuno[0];	# 20210831
say $asakuno[1];	# 20210901
say "-" x 30;

# 最後の要素取り出し。
say $asakuno[-1];	# 20210901
say $asakuno[-2];	# 20210831	←☆最後から2番目の要素。

my $count_asakuno = @asakuno;
say $count_asakuno;	# 2

say "-" x 30;
# 計算結果の代入。
say "以下、計算結果の代入。";
$asakuno[9] = $asakuno[1] + 9;
say $asakuno[8];	# 空
say $asakuno[9];	# 20210910

say "-" x 30;

# 最後の要素取り出し。
say $asakuno[-1];	# 20210910
say $#asakuno;	# 9
say $asakuno[$#asakuno];	# 20210910
say $asakuno[10];	# 空undef

say "-" x 30;


# 1つづつ取り出し。
foreach my $tomohiro (@asakuno) {
	say $tomohiro;	# 20210831
					# 20210901
					#
					#
					#
					#
					#
					#
					#
					# 20210910
}
say @asakuno;	# 202108312021090120210910

# 存在しない配列番号の要素出力。
say "-";
say $asakuno[99];	# 空行が出力されるようだ。
say "-";

@asakuno[999] = (20210901 + 9, );
say $asakuno[999];	# 20210910
@asakuno[999] = 20210901 + 9;
say $asakuno[999];	# 20210910
$asakuno[8] = 'asakuno';
$asakuno[7] = "tomohiro";
say $asakuno[8];	# asakuno
say $asakuno[7];	# tomohiro

# qw関数による代入。
my @asakuno = qw(a s a k u n o , );
say @asakuno;	# asakuno

foreach (@asakuno) {
	say $_;	# a
			# s
			# a
			# k
			# u
			# n
			# o
}

# ダブル(シングル)クォーテーションで括る。
say "@asakuno";	# a s a k u n o
say '@asakuno';	# @asakuno

# 文字列の@記号出力
#say "asakuno@tomohiro";	# Execution of 配列.pl aborted due to compilation errors.
say "asakuno\@tomohiro";	# asakuno@tomohiro
say 'asakuno\@tomohiro';	# asakuno\@tomohiro

# 要素数
my $len = @asakuno;
say $len;	# 8

say scalar(@asakuno); # 8

# 配列要素の空確認。
if (@asakuno > 0) {
	say "空でない。"
}
# 別の方法。
if (@asakuno) {
	say "空でない。"
}

my @asakuno;
if (@asakuno > 0) {
	say "空でない。";
}
else {
	say "空。";
	say scalar(@asakuno);	# 0		要素数がないため、0になる。
	say $#asakuno;	# -1		要素数がないため、最後の添え字は-1になる。
}

# 小数点以下のリストからの添え字利用。
@asakuno = (20210831, 20210901, );
my $tomohiro = 1.1234;
say $asakuno[$tomohiro];	# 20210901
#	これは、小数点数が切り捨てられて添え字として利用されているため、2つ目の要素(添え字1)が取り出された。
say $asakuno[$#asakuno];	# 20210901
say $#asakuno;	# 1

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
