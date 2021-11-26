use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "リファレンスサンプル";

sub refFunc(){
	say "ハンドラー関数";
}

sub sample() {
	my $foo  = 20211126;
	my @ARGV = (20211126, 20211127);
	my %ENV  = (20211126=>"朝来野智博", 20211127=>"asakunotomohiro");

	my $scalarref = \$foo;     # 配列
	my $arrayref  = \@ARGV;    # 配列
	my $hashref   = \%ENV;     # ハッシュ
	my $coderef   = \&refFunc;
#	my $globref   = \*foo;

	say $scalarref;	# SCALAR(0x7fcfa201c728)
	say $arrayref;	# ARRAY(0x7fcfa201c758)
	say $hashref;	# HASH(0x7fcfa201c7b8)
	say $coderef;	# CODE(0x7fcfa201c680)

	say "-" x 30;

	say $$scalarref;			# 20211126
	say @$arrayref;				# 2021112620211127
	say @{$arrayref}[0];		# 20211126
	say @{$arrayref}[1];		# 20211127
	say %$hashref;				# 20211127asakunotomohiro20211126朝来野智博
	say ${$hashref}{20211126};	# 朝来野智博
	say ${$hashref}{20211127};	# asakunotomohiro
	say &$coderef;				# ハンドラー関数
	# 1	←☆これ何？

	say "-" x 30;

# 以下、配列リファレンスをスカラーリファレント扱いしたため、エラーになった。
#	say $$arrayref;	Not a SCALAR reference at sample.pl line 42.

	say "-" x 30;
	say "以下、アロー演算子";
	# 配列。
	say $arrayref->[0];		# 20211126
	say $arrayref->[1];		# 20211127
	# ハッシュ
	say $hashref->{20211126};	# 朝来野智博
	say $hashref->{20211127};	# asakunotomohiro
	say $coderef->();			# ハンドラー関数
								# 1
}
&sample("asakuno");

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
