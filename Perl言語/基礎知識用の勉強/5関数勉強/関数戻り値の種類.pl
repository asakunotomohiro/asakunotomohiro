use v5.24;

my @asakuno = ("朝来野", "智博", );

sub asakuno {
	@asakuno = ("朝", "来", "野", "智", "博");

	return @asakuno;
}

# 以下、戻り値の種類がスカラコンテクスト。
my $tomohiro = asakuno();
say $tomohiro;	# 5

# 以下、戻り値の種類がリストコンテクスト。
my ($tomohiro) = asakuno();
say $tomohiro;	# 朝

# 以下、戻り値の種類がリストコンテクスト。
my ($tomohiro, @asakuno) = asakuno();
say $tomohiro;	# 朝
say "@asakuno";	# 来 野 智 博

# 以下、戻り値の種類がリストコンテクスト。
my ($a, $s, $k, $u, $n, $o) = asakuno();
#my ($a, $s, $k, $u, $n, $o, $t, $m, $h, $r) = asakuno();
say $a;	# 朝
say $s;	# 来
say $k;	# 野
say $u;	# 智
say $n;	# 博
say $o;	# [空文字undef]

# 以下、戻り値の種類がリストコンテクスト。
my @tomohiro = asakuno();
say "@tomohiro";	# 朝 来 野 智 博
say "$tomohiro[0]";	# 朝
say "$tomohiro[4]";	# 博
say "$tomohiro[5]";	# undef

say "-" x 30;

# 以下、サブルーチン
sub func
{
	my $asakuno = "朝来野智博";
	my @tomohiro = ("asakuno", "tomohiro",);

	return @tomohiro if wantarray();
	return $asakuno  if defined(wantarray());
}

# 以下、戻り値なし。
func();	# 何もしない(正確な表現⇒何も戻ってこない)。

# 以下、戻り値の種類がスカラコンテクスト。
my $scalar = func();
say $scalar;	# 朝来野智博

# 以下、戻り値の種類がリストコンテクスト。
my @list = func();
say "@list";	# asakuno tomohiro
say $list[0];	# asakuno
say $list[1];	# tomohiro


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
