use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "クロージャと無名関数の正しい関係";

sub closure
{
	my $asakunotomohiro = 20211211;
	sub {
		#	無名関数定義
		return $asakunotomohiro * $_[0];
	};
}
say &closure();
#	出力結果：CODE(0x7fbfc8803610)

say "-" x 30;

say &closure->();
#	出力結果：0

say "-" x 30;

say &closure->(2);
#	出力結果：40422422

say "-" x 30;

say &closure->(-1);
#	出力結果：-20211211

say "-" x 30;

say &closure->(-2);
#	出力結果：-40422422


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
