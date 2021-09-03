#use v5.24;
#use v5.10;	# 普通に問題なく動く。
use v5.11;	# エラーになる(aborted due to compilation errors.)。

# 変数にmyを付けていないのが原因だろう。
#	Global symbol "$asakuno" requires explicit package name (did you forget to declare "my $asakuno"?)
$asakuno = $^V;

# 上記の変数宣言でmyを付けた場合はv5.34.0が表示される。
print $asakuno . "\n";
