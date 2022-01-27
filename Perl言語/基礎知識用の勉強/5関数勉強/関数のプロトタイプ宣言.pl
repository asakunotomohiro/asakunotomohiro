use v5.24;

my @asakuno = ("朝来野", "智博", );
my @tomohiro = ("asakuno", "tomohiro", );

# プロトタイプ宣言というのは、引数指定を強制するようだ。
#	しかし、&記号を付けて関数呼び出しをした場合は、強制がなくなる。

sub asakuno($$) {
	return lc($_[0]) lt lc($_[1]);
}

sub asakuno($$) {
	say "関数：@_";

	return 999;
}

my ($asakuno) = &asakuno("asakuno");	# 関数：asakuno
say $asakuno;	# 999

say "-" x 30;

my ($asakuno, $tomohiro) = &asakuno("asakuno");	# 関数：asakuno
say $asakuno;	# 999
say $tomohiro;	# 空文字列(undef)

say "-" x 30;

my ($asakuno, $tomohiro) = &asakuno(@asakuno, @tomohiro);	# 関数：朝来野 智博 asakuno tomohiro
say $asakuno;	# 999
say $tomohiro;	# 空文字列(undef)

say "-" x 30;

# &記号を付けずに関数を呼び出した場合、結果が異なる。
my ($asakuno, $tomohiro) = asakuno(@asakuno, @tomohiro);	# 関数：2 2
say $asakuno;	# 999
say $tomohiro;	# 空文字列(undef)

say "-" x 30;

# &記号を付けずに関数を呼び出した場合、エラーになる。
#my ($asakuno, $tomohiro) = asakuno("asakuno");	# Not enough arguments for main::asakuno at 関数のプロトタイプ宣言.pl line 39, near ""asakuno")"
#say $asakuno;	#
#say $tomohiro;	#

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
