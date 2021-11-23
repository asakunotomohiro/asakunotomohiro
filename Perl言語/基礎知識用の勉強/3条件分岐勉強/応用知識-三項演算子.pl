use v5.24;

my @asakuno = (20211123, 20211124, );
my $tomohiro = 20211123;

# 以下は、左の数字と変数内容を比較し、真であれば"数字代入"が$hogeに代入される。
my $hoge = 20211123 == $tomohiro ? "数字代入" : "文字列代入";
say $hoge;	# 数字代入

# 以下は、左の数字と変数内容を比較し、偽であれば"文字列代入"が$hogeに代入される。
my $hoge = 20211123 == $asakuno[1] ? "数字代入" : "文字列代入";
say $hoge;	# 文字列代入

say "-" x 30;

say "以下、計算が意図しない結果になっているため、本来であれば括弧を付けなければならない。";
say $tomohiro;	# 20211123
say $tomohiro % 2;	# 1　要は、真。
$tomohiro % 2 ? $tomohiro += 10 : $tomohiro += 2;
	# 以下、10を加算し、その後に2も加算されている。
say $tomohiro;	# 20211135

say "-" x 30;

say $asakuno[1];	# 20211124
$asakuno[1] += ($asakuno[1] % 2) ? 10 : 2;
	# 以下、2を加算しているだけ(上記とは違い、10の加算なし)。
	# 意図通り。
say $asakuno[1];	# 20211126

say "-" x 30;

say "当たり前だが、0は偽になるため、以下の処理は2が返る。";
$asakuno[0] = 0;
say $asakuno[0];	# 0
$asakuno[0] += $asakuno[0] ? 10 : 2;
say $asakuno[0];	# 2

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
