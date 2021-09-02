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

# 以上。
