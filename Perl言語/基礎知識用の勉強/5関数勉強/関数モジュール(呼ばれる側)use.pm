#package asakunotomohiro;
$VERSION = "1.01";	# ←☆パッケージ直後・use v5.xx直前に記述するのが吉。

use v5.24;
#$VERSION = 1.00;	←☆ここに記述した場合、宣言なしで変数を用いることになり、エラーが発生する(ourが必須)。
say "呼ぶ側のプログラムになる。";

#require Exporter;
use Exporter;
our @ISA = qw(Exporter);
#our @EXPORT = qw(asakuno $VERSION);
our @EXPORT = qw(asakuno);

sub asakuno {
	say "関数ライブラリ：@_";
}

say "ライブラリ読み込み完了"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
