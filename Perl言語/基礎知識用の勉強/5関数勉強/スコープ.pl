use v5.24;

my @asakuno = ("朝来野", "智博", );

my $number;
sub asakuno {
	state $num;	# 値が関数内で永続的に保持される。
	my $tomohiro;	# 関数が呼び出されるたびに新規作成される。
	$tomohiro++;
	$number++;
	$num++;
	return "関数内：@_,$tomohiro,$number,$num";
}
say &asakuno();	# 関数内：,1,1,1
say &asakuno(@asakuno);	# 関数内：朝来野 智博,1,2,2
#say $tomohiro;	# aborted due to compilation errors.
$number++;
#$num++;	# aborted due to compilation errors.
say $number;	# 3
say &asakuno(@asakuno);	# 関数内：朝来野 智博,1,4,3


{
my $blockAsakuno = "朝来野智博";
my @blockAsakuno = ("朝来野", "智博", );
#local $asakuno = "智博.朝来野";	# aborted due to compilation errors.
state $stateAsakuno = "朝来野智博";
state $stateAsakuno = ("朝来野", "智博", );
state @stateAsakuno = ("朝来野", "智博", );
}
#say $blockAsakuno;	# aborted due to compilation errors.
#say @blockAsakuno;	# aborted due to compilation errors.
#say $stateAsakuno;	# Execution of スコープ.pl aborted due to compilation errors.
	# ブロック内での変数や配列宣言は、そのブロックから出た場合、破棄される。

#local $tomohiro = "智博";
	# Global symbol "$tomohiro" requires explicit package name (did you forget to declare "my $tomohiro"?) at スコープ.pl line 36.
	# Execution of スコープ.pl aborted due to compilation errors.


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
