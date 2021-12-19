package asakunotomohiro;
$VERSION = 1.00;

use v5.24;
say "呼ぶ側のプログラムになる。";

use Exporter;
our @ISA = qw(Exporter);
our @EXPORT = qw(asakuno);

sub asakuno {
	say "関数ライブラリ：@_";
}

say "ライブラリ読み込み完了"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
