use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "パッケージを入れ子にする";

package Subasakuno::tomohiro::asakunotomohiro;
sub sample(){
	say "Subasakuno入れ子パッケージasakunotomohiro";
}
&sample("asakuno");
#	出力結果：Subパッケージasakunotomohiro

package Subasakuno::tomohiro::tomohiroasakuno;
sub sample(){
	say "Subasakuno入れ子パッケージtomohiroasakuno";
}
&sample("asakuno");
#	出力結果：Subasakuno入れ子パッケージtomohiroasakuno

package Subasakuno;
sub sample(){
	say "Subasakuno単体パッケージ";
}

package Subasakuno::tomohiro::asakunotomohiro;
sub sample(){
	say "Subパッケージasakunotomohiro";
}
Subasakuno::tomohiro::asakunotomohiro::sample();
#	出力結果：Subパッケージasakunotomohiro

package Subtomohiro;
#&sample("asakuno");
#	出力結果：Undefined subroutine &Subtomohiro::sample called at パッケージの重ね掛け.pl line 35.

Subasakuno::sample();
#	出力結果：Subasakuno単体パッケージ

Subasakuno::tomohiro::asakunotomohiro::sample();
#	出力結果：Subパッケージasakunotomohiro

Subasakuno::tomohiro::tomohiroasakuno::sample();
#	出力結果：Subasakuno入れ子パッケージtomohiroasakuno


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
