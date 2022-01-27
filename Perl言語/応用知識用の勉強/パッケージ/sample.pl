use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "パッケージ";

sub sample() {
	say __PACKAGE__ . "パッケージ";
}
#&sample("asakuno");
#	出力結果：mainパッケージ

package Subasakuno;
sub sample(){
	say __PACKAGE__ . "パッケージ";
}
&sample("asakuno");
#	出力結果：Subasakunoパッケージ

# 以下、突然パッケージの変数を用いたが、そもそもこのパッケージはどこにも宣言していない(こんな突拍子もない使い方ができるのがPerl)。
$Subtomohiroasakuno::asakuno = "tomohiro asakuno";

main::sample();
#	出力結果：mainパッケージ

Subtomohiro::sample();
#	出力結果：Subtomohiroパッケージ->別パッケージの変数：tomohiro asakuno

package Subtomohiro;
sub sample(){
	say __PACKAGE__ . "パッケージ->別パッケージの変数：" . $Subtomohiroasakuno::asakuno;
}
#&sample("asakuno");
#	出力結果：Subtomohiroパッケージ

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
