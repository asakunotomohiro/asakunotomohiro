use v5.24;

my @asakuno = ("朝来野", "智博", );

sub asakuno {
	# 基本的に、受け取る引数はすべて参照渡しとして扱うことになる。
	$_[0] = $_[0]+1;
}

my $sum = 1;
say $sum;			# 1
say asakuno $sum;	# 2
say asakuno $sum;	# 3
say $sum;			# 3	←☆完全に参照渡しになっているのが分かる。

#say asakuno 7;	# Modification of a read-only value attempted at 関数(引数の参照渡し).pl line 7.

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
