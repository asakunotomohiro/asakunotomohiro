use v5.10.1;
no warnings 'experimental::smartmatch';	# 警告抑止(スマートマッチ演算子~~のために必要)。

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "スマートマッチ演算子の変数編";

package mainSmartMatch::main;
say "以下、" . __PACKAGE__;
sub asakunoSmart {
	my $val = shift;
	my $matchChar = "朝来野智博";

#	if( $val ~~ $matchChar ) {
	if( $matchChar ~~ $val ) {
		say "$matchCharに$valが含まれている。";
	}
}
say "以下、実行。";
&asakunoSmart(1);
#	出力結果：空文字列(undef)

say "以下、実行。";
&asakunoSmart('朝');
#	出力結果：空文字列(undef)

say "以下、実行。";
&asakunoSmart('朝来野智博');
#	出力結果：朝来野智博に朝来野智博が含まれている。

say "以下、実行。";
&asakunoSmart('朝来野 智博');
#	出力結果：空文字列(undef)


package mainSmartMatch::regex;
say "以下、" . __PACKAGE__;
sub asakunoSmart {
	my $val = shift;
	my $matchChar = "朝来野智博";

	if( $matchChar ~~ /$val/ ) {
		say "$matchCharに$valが含まれている。";
	}
}
say "以下、実行。";
&asakunoSmart(1);
#	出力結果：空文字列(undef)

say "以下、実行。";
&asakunoSmart('朝');
#	出力結果：朝来野智博に朝が含まれている。

say "以下、実行。";
&asakunoSmart('朝来野智博');
#	出力結果：朝来野智博に朝来野智博が含まれている。

say "以下、実行。";
&asakunoSmart('朝来野 智博');
#	出力結果：空文字列(undef)

say "以下、実行。";
&asakunoSmart('智博');
#	出力結果：朝来野智博に智博が含まれている。


package subPackage::Function;
say "以下、" . __PACKAGE__;
sub asakunoSmart {
	my $val = shift;
	my $asakuno = "朝来野智博";

	if( $asakuno =~ /$val/ ) {
		say "$asakunoに$valが含まれている。";
	}
}
say "以下、実行。";
&asakunoSmart(1);
#	出力結果：出力なし。

say "以下、実行。";
&asakunoSmart('朝');
#	出力結果：朝来野智博に朝が含まれている。

say "以下、実行。";
&asakunoSmart('朝来野智博');
#	出力結果：朝来野智博に朝来野智博が含まれている。

say "以下、実行。";
&asakunoSmart('朝来野 智博');
#	出力結果：出力なし。

say "以下、実行。";
&asakunoSmart('智博');
#	出力結果：朝来野智博に智博が含まれている。


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
