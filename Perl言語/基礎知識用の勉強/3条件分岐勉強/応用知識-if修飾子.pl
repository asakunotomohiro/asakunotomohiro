use v5.24;

my @asakuno = (20211124, 20211125, );
my $tomohiro = 20211124;

say $tomohiro if $tomohiro == 20211124;	# 20211124

if ( $tomohiro == 20211124 ) {
	say $tomohiro;	# 20211124
}

# 以下、値が変数に入っている場合に出力する。
say $asakuno[1]				if $asakuno[1];	# 20211125

say "-" x 30;

my $asakuno;
say $asakuno				if $asakuno;	# 出力なし(undef)。

say $asakuno				// $asakuno;	# 空文字列(undef)出力。
say $asakuno				// "hoge";		# hoge出力。
say $asakuno;	# 空文字列(undef)出力。

$asakuno = 0;
say $asakuno				if $asakuno;	# 出力なし。
say $asakuno				// $asakuno;	# 0出力。
say $asakuno				// "boo";		# 0出力。
say $asakuno;	# 0出力。

say "-" x 30;

say "以下、ifの逆の判定をする。";
unless ( $asakuno[1] == 20211124 ) {
	# 20211124と20211125が異なる場合に処理をする。
	say $tomohiro;	# 20211124
}
unless ( $asakuno[0] != 20211124 ) {
	# 20211124と20211124が異なる場合に処理をする。
	say $tomohiro;	# 20211124
}
unless ( $asakuno[0] == 20211124 ) {
	# 以下、実行されない。
	say $tomohiro;
}




say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
