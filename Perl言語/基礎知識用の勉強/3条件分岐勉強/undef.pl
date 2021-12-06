use v5.24;

my @asakuno = (20211205, 20211206, );
my $tomohiro = 20211205;

if ( 0 == undef ) {
	say 'undefと0の比較, $asakuno[1]';
}
#	出力結果：undefと0の比較, $asakuno[1]	←☆出力されたら失敗。

if ( defined 0 ) {
	say 'undefと0の比較, 出力されたら成功';
}
#	出力結果：undefと0の比較, 出力されたら成功	←☆出力されたら失敗。

if ( $asakuno[1] == undef ) {
	say 'undefとの比較成功, $asakuno[1]';
}
#	出力結果：	←☆出力されない(undefではないため、当然のこと)。

if ( $asakuno[2] == undef ) {
	say 'undefとの比較成功, $asakuno[2]';
}
#	出力結果：undefとの比較成功, $asakuno[2]	←☆文字列ではないが、気にせずundef

if ( "$asakuno[2]" == undef ) {
	say 'undefとの比較成功, $asakuno[2]';
}
#	出力結果：undefとの比較成功, $asakuno[2]	←☆文字列だが、気にせずundef

if ( "$asakuno[0]" eq undef ) {
	say 'undefとの比較成功, $asakuno[0] eq';
}
#	出力結果：	←☆出力されない(文字列があるのだから当たり前)。

if ( $asakuno[0] eq undef ) {
	say 'undefとの比較成功, $asakuno[0] eq';
}
#	出力結果：	←☆出力されない(文字列があるのだから当たり前)。

if ( $asakuno[2] eq undef ) {
	say 'undefとの比較成功, $asakuno[2] eq';
}
#	出力結果：undefとの比較成功, $asakuno[2] eq	←☆文字列だが、気にせずundef

if ( "$asakuno[2]" eq undef ) {
	say 'undefとの比較成功, $asakuno[2] eq';
}
#	出力結果：undefとの比較成功, $asakuno[2] eq	←☆文字列だが、気にせずundef

if ( defined "$asakuno[2]" ) {
	say "ここが出力されたら失敗";
}
#	出力結果：ここが出力されたら失敗	←☆文字列として定義されている認識をされた。
#		いわば、この比較方法は失敗。

if ( defined $asakuno[2] ) {
	say "出力されないため、成功。";
}
#	出力結果：	←☆出力されない。

unless ( defined $asakuno[2] ) {
	say "出力されるため、成功。";
}
#	出力結果：	←☆出力されない。

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
