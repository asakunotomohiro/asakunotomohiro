use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "再帰関数";

sub factorial() {
	my $word = shift @_;
	my $num = length($word);
	if ( $num > 0 ) {
		factorial(substr($word, 0, $num-1));
	}
	printf("再帰関数%d回目の実行及び出力内容：%s\n", $num, $word);
	return 0
}
#&factorial("朝来野智博");	普通にバイト文字を扱うのは辛い(これだからPerl言語は嫌われるのだよ)。
&factorial("asakuno");
# 出力結果：
#			再帰関数0回目の実行及び出力内容：
#			再帰関数1回目の実行及び出力内容：a
#			再帰関数2回目の実行及び出力内容：as
#			再帰関数3回目の実行及び出力内容：asa
#			再帰関数4回目の実行及び出力内容：asak
#			再帰関数5回目の実行及び出力内容：asaku
#			再帰関数6回目の実行及び出力内容：asakun
#			再帰関数7回目の実行及び出力内容：asakuno

say "-*" x 30 . "-";
say "10の階乗を求める(固定)。";
sub factorial1() {
	my $sum = 10;
	for ( my $ii = 9; $ii > 0; $ii-- ) {
		$sum = $sum * $ii;
	}
	say "10! =" . $sum;
}

&factorial1();
# 実行結果：
#			10! =3628800

say "-*" x 30 . "-";
say "再帰処理を使わずに階乗を求める。";
sub factorial2() {
	my $arg = shift @_;
	my $sum = 1;
	if ( $arg == 0 ) {
		$arg = 0;
	}
	for ( my $ii = $arg; $ii > 0; $ii-- ) {
		$sum = $sum * $ii;
	}
	say "${arg}! =" . $sum;
}

&factorial2(10);
# 実行結果：
#			10! =3628800


say "-*" x 30 . "-";
say "再帰関数での階乗を求める。";
sub factorial3() {
	my $arg = shift @_;
	my $ret;
	if ( $arg == 0 ) {
		$ret = 1;
	}
	else {
		$ret = $arg * &factorial3($arg-1);
	}

	return $ret
}

say &factorial3(5);	# 120
say &factorial3(10);
# 実行結果：
#			3628800
say &factorial3(20);
#			2432902008176640000

say "20の階乗までを出力する。";
sub call_factorial() {
	for my $ii ( 0..20 ) {
		say sprintf("%2d! = %d", $ii, &factorial3($ii));
	}
}
&call_factorial();
# 出力結果：
#			 0! = 1
#			 1! = 1
#			 2! = 2
#			 3! = 6
#			 4! = 24
#			 5! = 120
#			 6! = 720
#			 7! = 5040
#			 8! = 40320
#			 9! = 362880
#			10! = 3628800
#			11! = 39916800
#			12! = 479001600
#			13! = 6227020800
#			14! = 87178291200
#			15! = 1307674368000
#			16! = 20922789888000
#			17! = 355687428096000
#			18! = 6402373705728000
#			19! = 121645100408832000
#			20! = 2432902008176640000







say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
