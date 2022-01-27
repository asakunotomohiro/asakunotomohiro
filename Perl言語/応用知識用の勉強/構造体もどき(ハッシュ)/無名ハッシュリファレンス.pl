package perlStudyTypedef;
$VERSION = "0.001";
use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "無名ハッシュリファレンスを用いた構造体もどき";

sub asakunoHashTypedef() {
	say "以下、無名ハッシュリファレンス";
	my $tomohiro = {
				1=>1,
				key=>'key',
				value=>'智博',
			};
	say $$tomohiro{1};		# 1
	say $$tomohiro{value};	# 智博
	say $tomohiro->{key};	# key
	say $tomohiro->{value};	# 智博

	$tomohiro->{asakuno} = "$asakuno";	# 値代入
	say $tomohiro->{asakuno};			# 朝来野智博

	say "-" x 30;
	my $asakuno;
	$asakuno->{asakuno} = $asakuno[0];
	# Can't use string ("朝来野智博") as a HASH ref while "strict refs" in use at 無名ハッシュリファレンス.pl line 26.
	say $asakuno->{asakuno};	# 朝来野
	# エラーになったはずなのに・・・なぜ普通に使える？

	say "以下、仕切り直し。";
	my $asakuno = {};
	$asakuno->{asakuno} = $asakuno[0];
	say $asakuno->{asakuno};	# 朝来野

	say "以下、仕切り直し。";
	my $asakuno->{asakuno} = $asakuno[1];
	say $asakuno->{asakuno};	# 智博
}
&asakunoHashTypedef();

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
