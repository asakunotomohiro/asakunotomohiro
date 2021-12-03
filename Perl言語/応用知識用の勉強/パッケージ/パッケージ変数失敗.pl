use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "パッケージ変数・・・利用不可";
say "main::'$asakuno'->$asakuno";
#	出力結果：main::'朝来野智博'->朝来野智博

say "-" x 30;
package Subasakuno;
my $tomohiro = "asakuno";

say $tomohiro;
#	出力結果：asakuno

say $asakuno;
#	出力結果：朝来野智博

say "-" x 30;
package Subtomohiro;
my @tomohiro = ("asakuno", "tomohiro");

say $tomohiro;
#	出力結果：asakuno
say $tomohiro[1];
#	出力結果：tomohiro

say "-" x 30;
package main;

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
