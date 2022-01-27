use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "クロージャと無名関数";

sub closure
{
	my $asakunotomohiro = "asakunotomohiro" . $_[0];
	my $func = sub {
		#	無名関数定義
		return "$asakunotomohiro";
	};
	say $func->();
}
&closure();
#	出力結果：asakunotomohiro


say "-" x 30;

&closure("関数呼び出し。");
#	出力結果：asakunotomohiro関数呼び出し。

say "-" x 30;

&closure("2回目呼び出し。");
#	出力結果：asakunotomohiro2回目呼び出し。

say "-" x 30;

#&closure->("無名サブルーチン呼び出し。");
#	出力結果：Can't use string ("1") as a subroutine ref while "strict refs" in use at クロージャと無名関数.pl line 33.

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
