use v5.24;

my @asakuno = (20210903, 20210904, );

while( ( my $index, my $value ) = each @asakuno ) {
	say "$index, $value";	# 0, 20210903
							# 1, 20210904
}

# each演算子を使わない同じ結果を出す方法
foreach my $index ( 0..$#asakuno ) {
	say "$index, $asakuno[$index]";	# 0, 20210903
									# 1, 20210904
}

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
