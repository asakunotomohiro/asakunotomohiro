use v5.24;

my @asakuno = ("朝来野", "智博", );

sub asakuno {
	say "関数：@_";
}

# 以下2つの関数は、関数2つ目の実装前に実行した結果。
&asakuno();	# 関数：
&asakuno("関数呼び出し");	# 関数：関数呼び出し
#	2つ目の関数を実装後に実行した場合、2つ目の関数を実行する。
#	この理由は、ファイル後方にある関数が、ファイル先頭にある関数を上書きするため。
#	そのため、同名関数は作るべからず。

say "-" x 30;

sub asakuno {
	"関数2つ目：@_";
}
say &asakuno();	# 関数2つ目：
my $ret = &asakuno("関数呼び出し");	# 関数2つ目：関数呼び出し
say $ret;

# 上記の関数は、最後の処理が戻り値になるため、その戻り値を呼び出し側で出力(say)している。


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
