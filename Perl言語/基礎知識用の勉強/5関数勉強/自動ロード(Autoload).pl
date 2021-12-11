use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "自動ロード(AUTOLOAD)";

package main;

sub sample(){
	say "mainパッケージ内のサンプル関数";
}
Subasakuno::tomohiro::asakunotomohiro::sample();
#	出力結果：Subasakuno入れ子パッケージasakunotomohiro

#	以下、キャッチオールサブルーチン未定義での呼び出し結果。
#Subasakuno::tomohiro::asakunotomohiro::testFunc();
#	出力結果：Undefined subroutine &Subasakuno::tomohiro::asakunotomohiro::testFunc called at 自動ロード(Autoload).pl line 16.

#	以下、キャッチオールサブルーチン定義実施後の呼び出し結果。
Subasakuno::tomohiro::asakunotomohiro::testFunc();
#	出力結果：未定義関数(Subasakuno::tomohiro::asakunotomohiro::testFunc)呼び出し。

#	以下、キャッチオールサブルーチン定義実施後の呼び出し結果(v5.11以降)。
#Subasakuno::tomohiro::asakunotomohiro::testFunc();
#	出力結果：Global symbol "$AUTOLOAD" requires explicit package name (did you forget to declare "my $AUTOLOAD"?) at 自動ロード(Autoload).pl line 36.

#	以下、キャッチオールサブルーチン定義実施後の呼び出し結果(v5.11以降)。
#		my $AUTOLOAD;
#Subasakuno::tomohiro::asakunotomohiro::testFunc();
#	出力結果：未定義関数()呼び出し。




use v5.10;

package Subasakuno::tomohiro::asakunotomohiro;
sub AUTOLOAD{
	say "未定義関数($AUTOLOAD)呼び出し。";
}

sub sample(){
	say "Subasakuno入れ子パッケージasakunotomohiro";
}
#&sample("asakuno");
#	出力結果：

#main::sample();
#	出力結果：mainパッケージ内のサンプル関数


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
