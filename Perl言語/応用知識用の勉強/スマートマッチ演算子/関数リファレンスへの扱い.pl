use v5.10.1;
no warnings 'experimental::smartmatch';	# 警告抑止(スマートマッチ演算子~~のために必要)。

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "スマートマッチ演算子の無名関数リファレンス";
my @arrayChar = ("朝来野智博", "朝来野", "智博", "asakuno", );
my %matchChar = ("朝来野智博"=>20211221, 4774135046=>"オブジェクト指向", asakuno=>"智博", );

package mainSmartMatch::main;
say "以下、" . __PACKAGE__;
sub asakunoSmart {
	my $val = shift;
	my $asakuno = sub {
			say "無名関数リファレンス";
			1;
		};
	my $tomohiro = sub {
			say "無名関数リファレンス";
			0;
		};

	say "無名関数リファレンス呼び出し。";
	$asakuno->();	# 無名関数リファレンス

	if( $val ~~ $asakuno ) {
	#if( $asakuno ) {	←☆これも普通に真になる。何より、関数呼び出しが発生しなくなる。
		# 無名関数リファレンス	が出力されている。
		# if文で比較のために無名関数リファレンスを用いただけで呼び出しが発生する。
		say "無名関数リファレンスに引数($val)を渡せる。";
	}
	if( $val ~~ $tomohiro ) {
	#if( $tomohiro ) {	←☆これだけの場合は、if文が真になる。
		# 無名関数リファレンス	が出力されている。
		# 関数の戻り値が0であるため、if文に入ってこれない。
		say "無名関数リファレンスの戻り値が0であるため、このメッセージは出力されない。";
	}
}
say "以下、実行。";
&asakunoSmart("asakuno");
#	出力結果：無名関数リファレンスに引数(asakuno)を渡せる。


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
