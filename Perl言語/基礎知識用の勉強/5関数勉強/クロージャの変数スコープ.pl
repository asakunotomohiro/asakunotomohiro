use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "クロージャ";

sub closure
{
	my $asakunotomohiro = "asakunotomohiro" . $_[0];
	sub sample(){
		# この関数名がクロージャになる。
		#	呼び出されているわけでは無いため、定義だけの状態。
		say "$asakunotomohiro";
	}
	&sample();
#	say $asakunotomohiro;
}
&sample();
#	出力結果：空文字列(undef)

say "-" x 30;

#&closure();
#	出力結果：asakunotomohiro

say "-" x 30;

&closure("関数呼び出し。");
#	出力結果：asakunotomohiro	←☆想像と違う結果が出てきた(何を間違えた？)。
#				⇒呼び出し方法を間違えたようだ。
#				上記の1つ前の関数呼び出しをコメントアウトすることで、想定通りの出力結果が出ていた。
#				出力結果：asakunotomohiro関数呼び出し。
#				なぜ異なる!?
#				変数が生きていると言うことになるのだが、そんなことあり得るのか!?
#				⇒結論。
#				あり得る。
#				変数を外部から参照できないと言うだけであり、存在は継続している。
#				そのため、最初の呼び出し時に変数が作成され、2回目以降の呼び出しは、新規に作られず、前回呼び出された状態を使い回す。

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
