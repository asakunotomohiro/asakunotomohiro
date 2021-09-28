use v5.24;

$_ = "朝来野智博";	# myを付けてはならない。
say;	# 朝来野智博

my @asakuno = ("朝来野", "智博");
foreach ( @asakuno ) {
	# $_に配列要素が代入され、以下、$_変数が出力される。
	say;	# 朝来野
			# 智博
}

# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
