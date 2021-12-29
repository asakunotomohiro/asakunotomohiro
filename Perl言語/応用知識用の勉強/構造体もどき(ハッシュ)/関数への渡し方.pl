package perlStudyTypedef;
$VERSION = "0.001";
use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "無名ハッシュリファレンスを用いた構造体もどき";

sub asakunoHashTypedef() {
	# この関数内での処理は間違っている。
	my (%asakuno, %tomohiro) = @_;

	say $asakuno{20211229};	# asakuno
	say $asakuno{asakuno};	# 朝来野	←☆呼び出し側のハッシュが1つ目のハッシュに代入されている。

	say $tomohiro{20211230};	# 空文字列(undef)	←☆このハッシュには何も代入されていない。
	say $tomohiro{tomohiro};	# 空文字列(undef)
}

my %asakuno  = (20211229=>'asakuno', 20211230=>'tomohiro',);
my %tomohiro = (asakuno=>'朝来野', tomohiro=>'智博',);
&asakunoHashTypedef(%asakuno, %tomohiro);

say "以下、改めた処理。";
sub tomohiroHashTypedef() {
	# とりあえず、問題なく使える(無名ハッシュリファレンス)。
	my ($asakuno, $tomohiro) = @_;

	say $asakuno->{20211229};	# asakuno
	say $asakuno->{asakuno};	# 空文字列(undef)	←☆上記関数と違い、適切に渡されている証拠だろう。

	say $tomohiro->{20211230};	# 空文字列(undef)	←☆このkeyには何も代入されていない。
	say $tomohiro->{tomohiro};	# 智博	←☆このハッシュのこのキーに紐付いた値が出力された。
}

my %asakuno  = (20211229=>'asakuno', 20211230=>'tomohiro',);	# 普通のハッシュ。
my $tomohiro = {asakuno=>'朝来野', tomohiro=>'智博',};			# 無名ハッシュ
&tomohiroHashTypedef(\%asakuno, $tomohiro);	# 1つ目の引数はリファレンスとして渡し、2つ目の引数は普通に配列として渡す(名前なしハッシュなので)。

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
