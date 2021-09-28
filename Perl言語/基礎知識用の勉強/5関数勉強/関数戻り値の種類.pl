use v5.24;

my @asakuno = ("朝来野", "智博", );

sub asakuno {
	@asakuno = ("朝", "来", "野", "智", "博");

	return @asakuno;
}

my $tomohiro = asakuno();
say $tomohiro;	# 5

my ($tomohiro) = asakuno();
say $tomohiro;	# 朝

my ($tomohiro, @asakuno) = asakuno();
say $tomohiro;	# 朝
say "@asakuno";	# 来 野 智 博

my ($a, $s, $k, $u, $n, $o) = asakuno();
#my ($a, $s, $k, $u, $n, $o, $t, $m, $h, $r) = asakuno();
say $a;	# 朝
say $s;	# 来
say $k;	# 野
say $u;	# 智
say $n;	# 博
say $o;	# [空文字undef]

my @tomohiro = asakuno();
say "@tomohiro";	# 朝 来 野 智 博

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
