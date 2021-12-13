use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "パッケージ";

sub sample() {
	say "mainパッケージ";
}
#&sample("asakuno");
#	出力結果：mainパッケージ

package Subasakuno;
sub sample(){
	say "Subasakunoパッケージ";
}
&sample("asakuno");
#	出力結果：Subasakunoパッケージ

main::sample();
#	出力結果：mainパッケージ

Subtomohiro::sample();
#	出力結果：Subtomohiroパッケージ

package Subtomohiro;
sub sample(){
	say "Subtomohiroパッケージ";
}
#&sample("asakuno");
#	出力結果：Subtomohiroパッケージ

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
