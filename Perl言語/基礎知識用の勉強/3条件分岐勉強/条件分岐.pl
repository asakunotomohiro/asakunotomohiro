use v5.24;

my @asakuno = (20210901, 20210902, );
my $tomohiro = 20210901;

if ( $asakuno[0] == $tomohiro ) {
	say "等しい。";
}
#	出力結果：等しい。

my @asakunoString = ("20210901", "20210902", );
my $tomohiroString = "20210901";

if ( $asakunoString[0] == $tomohiroString ) {
	say "数値として等しい。";
} elsif ( $asakunoString[0] eq $tomohiroString ) {
	say "文字列として等しい。";
}
#	出力結果：数値として等しい。

if ( $asakunoString[0] eq $tomohiroString ) {
	say "文字列として等しい。";
}
#	出力結果：文字列として等しい。

if ( '35' eq '35.0' ) {
	# ここの比較は、文字列として比較しているため、偽になる。
	say "文字列として等しい。";
} elsif (  '35' == '35.0' ) {
	# 数値として比較している。
	say "数値として等しい。";
}
#	出力結果：数値として等しい。

# 上記の文字列比較を否定する。
if (! ('35' eq '35.0') ) {
	# ここの比較は、文字列として比較しているため、偽になる。
	say "文字列として等しい。";
} elsif (  '35' == '35.0' ) {
	# 数値として比較している。
	say "数値として等しい。";
}
#	出力結果：文字列として等しい。

# 文字列の否定をしたかったが、意図していない結果になった。
my $asakuno = "朝来野智博";
say $asakuno;	# 朝来野智博
say ! $asakuno;	# [空文字]　なぜ？
say !! $asakuno;	# 1
my $asakunoTrue = !! $asakuno;
say $asakunoTrue;	# 1
	# どういうこと？
	# 変数に値があるため、真(1)となる。

my $asakuno;
say "空文字列：", $asakuno;	# 偽と判断される。
if ($asakuno) {
	say "真の場合実行。", $asakuno;
}
else {
	say "偽の場合実行。", $asakuno;
}
#	実行結果：偽の場合実行。

# 上記の判定を否定している。
if (!$asakuno) {
	say "真の場合実行。", $asakuno;
}
else {
	say "偽の場合実行。", $asakuno;
}
#	実行結果：真の場合実行。

$asakuno = 0;
if ($asakuno) {
	say "真の場合実行。", $asakuno;
}
else {
	say "偽の場合実行。", $asakuno;
}
#	実行結果：偽の場合実行。0

$asakuno = 1;
if ($asakuno) {
	say "真の場合実行。", $asakuno;
}
else {
	say "偽の場合実行。", $asakuno;
}
#	実行結果：真の場合実行。1

$asakuno = 2;
if ($asakuno) {
	say "真の場合実行。", $asakuno;
}
else {
	say "偽の場合実行。", $asakuno;
}
#	実行結果：真の場合実行。2

$asakuno = -1;
if ($asakuno) {
	say "真の場合実行。", $asakuno;
}
else {
	say "偽の場合実行。", $asakuno;
}
#	実行結果：真の場合実行。-1

# 以下、短絡演算子
@asakuno = (20210901, 20210902, );
my $tomohiro = $asakuno[99] || "空値";
say $tomohiro;	# 空値


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
