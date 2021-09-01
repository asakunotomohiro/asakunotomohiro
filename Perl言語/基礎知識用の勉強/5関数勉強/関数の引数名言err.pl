use v5.24;

my @asakuno = ("朝来野", "智博", );

# 以下の引数で引数チェックなどできるはずだが、エラーになる。
#	書籍情報が間違っている？P76
#	v5.20ではあったが、最新版では破棄されている？
sub asakuno ( $speak ) {
#	"関数1つ目：$_[0], $_[1]<-ここまで($speak)。";	# エラーになる(aborted due to compilation errors.)。
	"関数1つ目：$_[0], $_[1]<-ここまで。";
}
my $ret = &asakuno("関数呼び出し");	# 関数1つ目：関数呼び出し, <-ここまで。
say $ret;

$ret = &asakuno("abc", "def");	# 関数1つ目：abc, def<-ここまで。
say $ret;

# 以上。
