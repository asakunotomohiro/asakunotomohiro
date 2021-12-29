use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "変数リファレンス";

sub scalarReference() {
	# 以下、無名変数リファレンス作成。
	my $tomohiroRef = \"智博";
	say $tomohiroRef;	# SCALAR(0x7fb4fd8064c8)
	say $$tomohiroRef;	# 智博
	#	※無名変数リファレンスは活用方法がない。

	#$tomohiroRef = "上書き";	←☆リファレンスの上書きになっていなかった。
	#say $$tomohiroRef;
	#	Can't use string ("上書き") as a SCALAR ref while "strict refs" in use at 変数のリファレンス.pl line 16.

	#$$tomohiroRef = "上書き";
	#	Modification of a read-only value attempted at 変数のリファレンス.pl line 19.
}
&scalarReference($asakuno, \@asakuno);

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
